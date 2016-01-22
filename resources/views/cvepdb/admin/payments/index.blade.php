@extends('cvepdb.admin.layouts.default')

@section('content')


    <div class="container-fluid container-fixed-lg bg-white">
        <!-- START PANEL -->
        <div class="panel panel-transparent">
            <div class="panel-heading">


                <div class="panel-title">
                    Paiements
                </div>


                <div class="btn-group pull-right m-b-10">

                    <a class="btn btn-default" href="{{ url('admin/payments/create') }}">Add new</a>
                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                        <span class="caret"></span>
                    </button>

                    <ul class="dropdown-menu" role="menu">
                        <li><a href="#">Settings</a>
                        </li>
                        <li><a href="#">Help</a>
                        </li>
                    </ul>

                </div>


                <div class="clearfix"></div>
            </div>

            <div class="panel-body">
                <div class="table-responsive">
                    <div class="dataTables_wrapper form-inline no-footer">

                        <table class="table table-hover dataTable no-footer" role="grid">
                            <thead>
                            <tr role="row">

                                <th style="width: 50%;">
                                    Année
                                </th>

                                <th style="width: 50%;">
                                    Montant total (&euro; T.T.C.)
                                </th>

                            </tr>
                            </thead>
                            <tbody>


                            @foreach ($total_amount_per_year as $year => $total_amount_this_year)

                                <tr role="row" class="odd">

                                    <td class="v-align-middle">
                                        <p>{{ $year }}</p>
                                    </td>
                                    <td class="v-align-middle">
                                        <p>{{ $total_amount_this_year }} &euro;</p>
                                    </td>

                                </tr>

                            @endforeach


                            </tbody>
                        </table>
                    </div>
                </div>
            </div>


            <div class="panel-body">
                <div class="table-responsive">
                    <div id="basicTable_wrapper" class="dataTables_wrapper form-inline no-footer">

                        <table class="table table-hover dataTable no-footer" id="basicTable" role="grid">
                            <thead>
                            <tr role="row">

                                <th style="width:1%" class="sorting_disabled" rowspan="1" colspan="1" aria-label="">
                                    <button class="btn"><i class="pg-trash"></i></button>
                                </th>

                                <th style="width: 20%;" class="sorting_asc" tabindex="0" aria-controls="basicTable"
                                    rowspan="1" colspan="1" aria-sort="ascending"
                                    aria-label="Name: activate to sort column ascending">Reference de la facture
                                </th>

                                <th style="width: 20%;" class="sorting" tabindex="0" aria-controls="basicTable"
                                    rowspan="1" colspan="1" aria-label="Places: activate to sort column ascending">date de paiement
                                </th>

                                <th style="width: 20%;" class="sorting" tabindex="0" aria-controls="basicTable"
                                    rowspan="1" colspan="1" aria-label="Activities: activate to sort column ascending">
                                    Valeur (&euro; T.T.C.)
                                </th>

                                <th style="width: 24%;" rowspan="1" colspan="1">Actions</th>

                            </tr>
                            </thead>
                            <tbody>


                            @foreach ($payments as $payment)

                                <tr role="row" class="odd">
                                    <td class="v-align-middle">
                                        <div class="checkbox ">
                                            <input type="checkbox" value="{{ $payment->id }}"
                                                   id="checkbox{{ $payment->id }}">
                                            <label for="checkbox{{ $payment->id }}"></label>
                                        </div>
                                    </td>
                                    <td class="v-align-middle sorting_1">
                                        <p>{{ $payment->facture_reference }}</p>
                                    </td>
                                    <td class="v-align-middle">
                                        <p>{{ $payment->date }}</p>
                                    </td>
                                    <td class="v-align-middle">
                                        <p>{{ $payment->amount }} &euro;</p>
                                    </td>
                                    <td class="v-align-middle">
                                        <button class="btn btn-complete btn-cons">Edit</button>
                                        <button class="btn btn-complete btn-cons">Delete</button>
                                    </td>
                                </tr>

                            @endforeach


                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <!-- END PANEL -->
    </div>
{{--    {!! $payments->render() !!}--}}


@endsection

@section('overlay')

@endsection

@section('quickview')

@endsection