@extends('frontend.layouts.errors')
@section('title', trans('errors.500_title'))

@section('content')

	<section class="error-404" style="background-image: url(img/content/404.jpg);">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="title">
						<h4><i class="fa fa-bug"></i> {{ trans('errors.500_title') }}</h4>
					</div>
					<p>{{ trans('errors.500_description') }}</p>
					@include('frontend.partials.errors.embeded_video')
					@include('frontend.partials.errors.search')
					<a href="{{ route('frontend.home') }}" class="btn btn-primary btn-lg margin-top-20 btn-shadow btn-rounded">Accueil</a>
				</div>
			</div>
		</div>
	</section>

@endsection