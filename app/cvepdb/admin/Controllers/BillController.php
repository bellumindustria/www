<?php

namespace App\CVEPDB\Admin\Controllers;

use Carbon\Carbon;

use App\CVEPDB\Admin\Controllers\Abs\AbsController as Controller;
use App\CVEPDB\Admin\Requests\BillFormRequest as BillFormRequest;
use App\CVEPDB\Admin\Models\Bill;
use App\CVEPDB\Admin\Models\BillPart;

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

    public function postAjaxGetBills()
    {
        return ['results' => Bill::all()];
    }
}