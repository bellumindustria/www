<?php

namespace Tests\Feature\Http\Controllers\Auth;

use Tests\TestCase;
use Illuminate\Foundation\Testing\WithoutMiddleware;
use Illuminate\Foundation\Testing\DatabaseMigrations;
use Illuminate\Foundation\Testing\DatabaseTransactions;
use Illuminate\Support\Facades\{
    Hash,
    Password
};
use template\Domain\Users\Users\User;

class ResetPasswordControllerTest extends TestCase
{
    use DatabaseMigrations;

    /**
     * Testing showing the reset password page.
     */
    public function testShowPasswordResetPage()
    {
        $user = factory(User::class)->create();
        $token = Password::broker()->createToken($user);
        $this
            ->get(route('password.reset', ['token' => $token]))
            ->assertSuccessful()
            ->assertSee('Changer votre mot de passe')
            ->assertSee('Courriel')
            ->assertSee('Mot de passe')
            ->assertSee('Confirmer le mot de passe');
    }

    /**
     * Testing submitting the password reset page with an invalid
     * email address.
     */
    public function testSubmitPasswordResetInvalidEmail()
    {
        $newPassword = $this->faker->password(8);
        $user = factory(User::class)->create([
            'role' => User::ROLE_CUSTOMER,
            'password' => $this->getDefaultPasswordBcrypted(),
        ]);
        $token = Password::broker()->createToken($user);
        $this
            ->followingRedirects()
            ->from(route('password.reset', ['token' => $token]))
            ->post('password/reset', [
                'token' => $token,
                'email' => $this->faker->word,
                'password' => $newPassword,
                'password_confirmation' => $newPassword,
            ])
            ->assertSuccessful()
            ->assertSee('Le champ courriel doit être une adresse email valide.');
        $user->refresh();
        $this->assertFalse(Hash::check($newPassword, $user->password));
        $this->assertTrue(Hash::check($this->getDefaultPassword(), $user->password));
    }

    /**
     * Testing submitting the password reset page with an email
     * address not in the database.
     */
    public function testSubmitPasswordResetEmailNotFound()
    {
        $newPassword = $this->faker->password(8);
        $user = factory(User::class)->create([
            'role' => User::ROLE_CUSTOMER,
            'password' => $this->getDefaultPasswordBcrypted(),
        ]);
        $token = Password::broker()->createToken($user);
        $this
            ->followingRedirects()
            ->from(route('password.reset', ['token' => $token]))
            ->post('password/reset', [
                'token' => $token,
                'email' => $this->faker->unique()->safeEmail,
                'password' => $newPassword,
                'password_confirmation' => $newPassword,
            ])
            ->assertSuccessful()
            ->assertSee(e('Aucun utilisateur n\'a été trouvé avec ce courriel.'));
        $user->refresh();
        $this->assertFalse(Hash::check($newPassword, $user->password));
        $this->assertTrue(Hash::check($this->getDefaultPassword(), $user->password));
    }

    /**
     * Testing submitting the password reset page with a password
     * that doesn't match the password confirmation.
     */
    public function testSubmitPasswordResetPasswordMismatch()
    {
        $newPassword = $this->faker->password(8);
        $user = factory(User::class)->create([
            'role' => User::ROLE_CUSTOMER,
            'password' => $this->getDefaultPasswordBcrypted(),
        ]);
        $token = Password::broker()->createToken($user);
        $this
            ->followingRedirects()
            ->from(route('password.reset', ['token' => $token]))
            ->post('password/reset', [
                'token' => $token,
                'email' => $user->email,
                'password' => $newPassword,
                'password_confirmation' => $this->faker->password(10),
            ])
            ->assertSuccessful()
            ->assertSee('Le champ de confirmation mot de passe ne correspond pas.');
        $user->refresh();
        $this->assertFalse(Hash::check($newPassword, $user->password));
        $this->assertTrue(Hash::check($this->getDefaultPassword(), $user->password));
    }

    /**
     * Testing submitting the password reset page with a password
     * that is not long enough.
     */
    public function testSubmitPasswordResetPasswordTooShort()
    {
        $newPassword = $this->faker->password(3, 5);
        $user = factory(User::class)->create([
            'role' => User::ROLE_CUSTOMER,
            'password' => $this->getDefaultPasswordBcrypted(),
        ]);
        $token = Password::broker()->createToken($user);
        $this
            ->followingRedirects()
            ->from(route('password.reset', ['token' => $token]))
            ->post('password/reset', [
                'token' => $token,
                'email' => $user->email,
                'password' => $newPassword,
                'password_confirmation' => $newPassword,
            ])
            ->assertSuccessful()
            ->assertSee(e('Le texte mot de passe doit contenir au moins 6 caractères.'));
        $user->refresh();
        $this->assertFalse(Hash::check($newPassword, $user->password));
        $this->assertTrue(Hash::check($this->getDefaultPassword(), $user->password));
    }

    /**
     * Testing submitting the password reset page.
     */
    public function testSubmitPasswordReset()
    {
        $newPassword = $this->faker->password(8);
        $user = factory(User::class)->create([
            'role' => User::ROLE_CUSTOMER,
            'password' => $this->getDefaultPasswordBcrypted(),
        ]);
        $token = Password::broker()->createToken($user);
        $this
            ->from(route('password.reset', ['token' => $token]))
            ->post('password/reset', [
                'token' => $token,
                'email' => $user->email,
                'password' => $newPassword,
                'password_confirmation' => $newPassword,
            ])
            ->assertRedirect('users/dashboard');
        $user->refresh();
        $this->assertFalse(Hash::check($this->getDefaultPassword(), $user->password));
        $this->assertTrue(Hash::check($newPassword, $user->password));
    }
}
