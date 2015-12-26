<!-- Begin White Wrapper -->
<div class="layout__body-wrapper__content-wrapper layout__body-wrapper__content-wrapper--odd">
    <!-- Begin Inner -->
    <div class="layout__body-wrapper__content-wrapper__inner">
        <div class="alignleft">
            <span class="current"> Home </span>
        </div>
        <div class="menu alignright">
            <div id="language_switcher" class="dropdown">
                <script type="text/javascript">
                    function switchLanguage(sel) {
                        var url = sel[sel.selectedIndex].value;
                        window.location = "{{ url('/') }}/?lang="+url;
                    }
                </script>
                <img alt="en" src="http://cavaencoreparlerdebits.fr/assets/language/img/png/en.png">
                <select name="language_switcher" class="" onchange="switchLanguage(this);">
                    <option value="en" selected="selected">en</option>
                    <option value="fr">fr</option>
                </select>
            </div>
            <div style="clear:both"></div>
        </div>
        <div class="clear"></div>
    </div>
    <!-- Begin Inner -->
</div>
<!-- End White Wrapper -->