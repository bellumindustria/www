<?php

namespace App\Admin\Controllers;

use Carbon\Carbon;

use CVEPDB\Controllers\Abs\AbsController as Controller;
use App\Admin\Requests\BillFormRequest as BillFormRequest;
use App\Admin\Models\Bill;
use App\Admin\Models\BillPart;

class BillController extends Controller
{
    public function index()
    {
        return view(
            'cvepdb.admin.bills.index',
            [
                'bills' => Bill::all()
            ]
        );
    }

    public function create()
    {
        return view('cvepdb.admin.bills.create');
    }

    public function store(BillFormRequest $request)
    {
        $bill = Bill::create([
            'entite_vendor_id' => $request->get('entite_vendor_id'),
            'entite_client_id' => $request->get('entite_client_id'),
            'description' => $request->get('description'),
            'reference' => $request->get('reference'),
            'currency' => $request->get('currency'),
            'date_emission' => $request->get('date_emission'),
        ]);

        BillPart::create([
            'bill_id' => $bill->id,
            'designation' => $request->get('designation'),
            'quantity' => $request->get('quantity'),
            'unit_price_without_vat' => $request->get('unit_price_without_vat'),
            'price_without_vat' => $request->get('price_without_vat'),
            'amount_vat' => $request->get('amount_vat'),
        ]);

        return redirect('admin/bills');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function show($id)
    {
        return view(
            'cvepdb.admin.bills.show',
            [
                'bill' => Bill::findOrFail($id)
            ]
        );
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function edit($id)
    {
        return view(
            'cvepdb.admin.bills.edit',
            [
                'bill' => Bill::findOrFail($id)
            ]
        );
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @param BillFormRequest $request
     * @return Response
     */
    public function update($id, BillFormRequest $request)
    {
        $bill = Bill::findOrFail($id);

        $bill->date_emission = $request->get('date_emission');
        $bill->description = $request->get('description');

        return redirect('admin/bills');
    }

    public function pdf($id)
    {
        $bill = Bill::findOrFail($id);
        return \PDF::loadView('cvepdb.admin.pdf.invoice', ['bill' => $bill])
            ->stream('facture_'.$bill->reference.'.pdf');
    }

    public function postAjaxGetBills()
    {
        return ['results' => Bill::all()];
    }
}