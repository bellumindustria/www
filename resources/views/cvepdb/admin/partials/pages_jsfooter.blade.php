<!-- BEGIN VENDOR JS -->
<script src="/assets/plugins/pace/pace.min.js"></script>
<script src="/assets/plugins/jquery/jquery-1.11.1.min.js"></script>
<script src="/assets/plugins/modernizr.custom.js"></script>
<script src="/assets/plugins/jquery-ui/jquery-ui.min.js"></script>
<script src="/assets/plugins/boostrapv3/js/bootstrap.min.js"></script>
<script src="/assets/plugins/jquery/jquery-easy.js"></script>
<script src="/assets/plugins/jquery-unveil/jquery.unveil.min.js"></script>
<script src="/assets/plugins/jquery-bez/jquery.bez.min.js"></script>
<script src="/assets/plugins/jquery-ios-list/jquery.ioslist.min.js"></script>
<script src="/assets/plugins/jquery-actual/jquery.actual.min.js"></script>
<script src="/assets/plugins/jquery-scrollbar/jquery.scrollbar.min.js"></script>
<script src="/assets/plugins/bootstrap-select2/select2.min.js" ></script>
<script src="/assets/plugins/classie/classie.js"></script>
<script src="/assets/plugins/switchery/js/switchery.min.js"></script>
<script src="/assets/plugins/summernote/js/summernote.min.js"></script>
<script src="/assets/plugins/jquery-validation/js/jquery.validate.min.js"></script>
<script src="/assets/plugins/jquery-datatable/media/js/jquery.dataTables.min.js"></script>
<script src="/assets/plugins/jquery-datatable/extensions/TableTools/js/dataTables.tableTools.min.js"></script>
<script src="/assets/plugins/jquery-datatable/media/js/dataTables.bootstrap.js"></script>
<script src="/assets/plugins/jquery-datatable/extensions/Bootstrap/jquery-datatable-bootstrap.js"></script>
<script src="/assets/plugins/datatables-responsive/js/datatables.responsive.js"></script>
<script src="/assets/plugins/datatables-responsive/js/lodash.min.js"></script>
<script src="/assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script src="/assets/plugins/bootstrap-daterangepicker/daterangepicker.js"></script>
<script src="/assets/plugins/bootstrap-timepicker/bootstrap-timepicker.min.js"></script>
<script src="/assets/plugins/jquery-inputmask/jquery.inputmask.min.js"></script>
<script src="/assets/plugins/bootstrap3-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<script src="/assets/plugins/jquery-autonumeric/autoNumeric.js"></script>
<script src="/assets/plugins/dropzone/dropzone.min.js"></script>
<script src="/assets/plugins/bootstrap-tag/bootstrap-tagsinput.min.js"></script>

<!-- END VENDOR JS -->
<script src="/assets/js/pages.min.js"></script>

<script src="/assets/js/pages/tables.js"></script>
<script src="/assets/js/pages/form_elements.js"></script>
<script src="/assets/js/pages/scripts.js"></script>

<script>
    $(function(){
        $('#form-login').validate();

        $('#summernote').summernote({
            height: 200,
            onfocus: function(e) {
                $('body').addClass('overlay-disabled');
            },
            onblur: function(e) {
                $('body').removeClass('overlay-disabled');
            }
        });
    });
</script>