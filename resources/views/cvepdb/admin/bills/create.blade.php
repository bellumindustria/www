@extends('cvepdb.admin.layouts.default')

@section('content')

    {!! Form::open(['route' => 'admin.bills.store', 'role' => 'form']) !!}

    <div class="row">
        <div class="col-md-6">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="panel-title">
                        Vendeur
                    </div>
                </div>
                <div class="panel-body">
                    <h5>
                        Informations sur le vendeur
                    </h5>

                    <div class="form-group form-group-default form-group-default-select2 required">
                        <label class="">Vendeur</label>
                        <input type="hidden" id="js-select-vendor" class="full-width" data-placeholder="Select vendor"
                               name="entite_vendor_id">
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="panel-title">
                        Acheteur
                    </div>
                </div>
                <div class="panel-body">
                    <h5>
                        Informations sur l'acheteur
                    </h5>

                    <div class="form-group form-group-default form-group-default-select2 required">
                        <label class="">Client</label>
                        <input type="hidden" id="js-select-client" class="full-width" data-placeholder="Select client"
                               name="entite_client_id">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="panel-title">
                        Facture
                    </div>
                </div>
                <div class="panel-body">
                    <h5>
                        Informations sur la facture
                    </h5>

                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group form-group-default required">
                                <label>Numéro de facture</label>
                                <input type="text" class="form-control" name="reference" required=""
                                       value="{{ date('Ym') }}-">
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group form-group-default required">
                                <label>Date d'emission</label>
                                <input type="text" class="form-control" name="date_emission" required=""
                                       value="{{ date('Y-m-d') }}">
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group form-group-default required">
                                <label>Unité monétaire</label>
                                <input type="text" class="form-control" name="currency" required="" value="EUR">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="panel-title">
                        Prestation
                    </div>
                </div>
                <div class="panel-body">
                    <h5>
                        Informations sur la prestation
                    </h5>

                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group form-group-default required">
                                <label>Quantité / Unité</label>
                                <input type="text" class="form-control" name="quantity" required="" value="1">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group form-group-default required">
                                <label>Prix unitaire HT</label>
                                <input type="text" class="form-control" name="unit_price_without_vat" required=""
                                       value="450">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group form-group-default required">
                                <label>montant HT</label>
                                <input type="text" class="form-control" name="price_without_vat" required=""
                                       value="450">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group form-group-default required">
                                <label>TVA</label>
                                <input type="text" class="form-control" name="amount_vat" required="" value="20">
                            </div>
                        </div>
                    </div>
                    <div class="form-group form-group-default required">
                        <label>Description</label>
                        <textarea class="form-control" id="designation" name="designation"></textarea>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-body">
                    <button class="btn btn-primary" type="submit">Générer!</button>
                    <a href="{{ url('admin/bills') }}" class="btn" type="submit">Anuler</a>
                </div>
            </div>
        </div>
    </div>
    {!! Form::close() !!}
@endsection

@section('jsfooter')

    <script>

        $('#js-select-vendor').select2({
            ajax: {
                url: "{{ url('admin/entites/ajax/getvendors') }}",
                dataType: 'json',
                type: "GET",
                delay: 250,
                data: function (params) {
                    return {
                        token: '{{csrf_token()}}'
                    };
                },
                results: function (data) {
                    return data;
                },
                cache: true
            },
            escapeMarkup: function (markup) {
                return markup;
            },
            formatResult: function (item) {
                return '<div class="row">'
                        + '<div class="col-sm-12"><b>'
                        + item.name
                        + '</b>&nbsp;&nbsp;<small>' + item.siret + '</small></div>'
                        + '</div><div class="row">'
                        + '<div class="col-sm-12">&nbsp;&nbsp;'
                        + item.address
                        + '</div>'
                        + '</div><div class="row">'
                        + '<div class="col-sm-12">&nbsp;&nbsp;' + item.zipcode + ' ' + item.city + ' ' + item.country + '</div>'
                        + '</div>';
            },
            formatSelection: function (item) {
                return '<div class="row">'
                        + '<div class="col-sm-12"><b>'
                        + item.name
                        + '</b>&nbsp;&nbsp;<small>' + item.siret + '</small></div></div>'
            }
        }).on("change", function (e) {
        });

        $('#js-select-client').select2({
            ajax: {
                url: "{{ url('admin/entites/ajax/getclients') }}",
                dataType: 'json',
                type: "GET",
                delay: 250,
                data: function (params) {
                    return {
                        token: '{{csrf_token()}}'
                    };
                },
                results: function (data) {
                    return data;
                },
                cache: true
            },
            escapeMarkup: function (markup) {
                return markup;
            },
            formatResult: function (item) {
                return '<div class="row">'
                        + '<div class="col-sm-12"><b>'
                        + item.name
                        + '</b>&nbsp;&nbsp;<small>' + item.siret + '</small></div>'
                        + '</div><div class="row">'
                        + '<div class="col-sm-12">&nbsp;&nbsp;'
                        + item.address
                        + '</div>'
                        + '</div><div class="row">'
                        + '<div class="col-sm-12">&nbsp;&nbsp;' + item.zipcode + ' ' + item.city + ' ' + item.country + '</div>'
                        + '</div>';
            },
            formatSelection: function (item) {
                return '<div class="row">'
                        + '<div class="col-sm-12"><b>'
                        + item.name
                        + '</b>&nbsp;&nbsp;<small>' + item.siret + '</small></div></div>'
            }
        }).on("change", function (e) {
        });

    </script>

@endsection