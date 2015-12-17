<!DOCTYPE html>
<html lang="en" data-ng-app="app" ng-controller="AppCtrl">
    <head>

        <meta http-equiv="content-type" content="text/html;charset=UTF-8"/>
        <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="apple-touch-fullscreen" content="yes">
        <meta name="apple-mobile-web-app-status-bar-style" content="default">
        <meta content="{{app.description}}" name="description"/>
        <meta content="{{app.author}}" name="author"/>

        <title>{{app.name}}</title>

        <link rel="apple-touch-icon" href="pages/ico/60.png">
        <link rel="apple-touch-icon" sizes="76x76" href="pages/ico/76.png">
        <link rel="apple-touch-icon" sizes="120x120" href="pages/ico/120.png">
        <link rel="apple-touch-icon" sizes="152x152" href="pages/ico/152.png">

        <!-- BEGIN Vendor CSS-->
        <link href="assets/plugins/pace/pace-theme-flash.css" rel="stylesheet" type="text/css"/>
        <link href="assets/plugins/boostrapv3/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="assets/plugins/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css"/>
        <link href="assets/plugins/jquery-scrollbar/jquery.scrollbar.css" rel="stylesheet" type="text/css" media="screen"/>
        <link id="lazyload_placeholder">
        <!-- BEGIN Pages CSS-->
        <link href="pages/css/pages-icons.css" rel="stylesheet" type="text/css">
        <link class="main-stylesheet" ng-href="{{app.layout.theme}}" rel="stylesheet" type="text/css"/>

        <!--[if lte IE 9]>
        <link href="pages/css/ie9.css" rel="stylesheet" type="text/css"/>
        <![endif]-->

        <!--[if lt IE 9]>
        <link href="assets/plugins/mapplic/css/mapplic-ie.css" rel="stylesheet" type="text/css"/>
        <![endif]-->

        <script type="text/javascript">
            window.onload = function () {
                // fix for windows 8
                if (navigator.appVersion.indexOf("Windows NT 6.2") != -1)
                    document.head.innerHTML += '<link rel="stylesheet" type="text/css" href="pages/css/windows.chrome.fix.css" />'
            }
        </script>
    </head>
    <body class="fixed-header" ng-class="{'bg-master-lighter': is('app.extra.timeline'),
        'no-header': is('app.social') || is('app.calendar') || is('app.maps.vector') || is('app.maps.google'),
        'menu-pin' : app.layout.menuPin, 'menu-behind' : app.layout.menuBehind}">

        <div class="full-height" ui-view></div>

        <!-- BEGIN VENDOR JS -->
        <!-- JQUERY -->
        <script src="assets/plugins/pace/pace.min.js" type="text/javascript"></script>
        <script src="assets/plugins/jquery/jquery-1.11.1.min.js" type="text/javascript"></script>
        <script src="assets/plugins/modernizr.custom.js" type="text/javascript"></script>
        <script src="assets/plugins/jquery-ui/jquery-ui.min.js" type="text/javascript"></script>
        <script src="assets/plugins/boostrapv3/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="assets/plugins/jquery/jquery-easy.js" type="text/javascript"></script>
        <script src="assets/plugins/jquery-unveil/jquery.unveil.min.js" type="text/javascript"></script>
        <script src="assets/plugins/jquery-bez/jquery.bez.min.js"></script>
        <script src="assets/plugins/jquery-ios-list/jquery.ioslist.min.js" type="text/javascript"></script>
        <script src="assets/plugins/jquery-actual/jquery.actual.min.js"></script>
        <script src="assets/plugins/jquery-scrollbar/jquery.scrollbar.min.js"></script>
        <script type="text/javascript" src="assets/plugins/classie/classie.js"></script>
        <!-- ANGULAR -->
        <script src="assets/plugins/angular/angular.js" type="text/javascript"></script>
        <script src="assets/plugins/angular-ui-router/angular-ui-router.min.js" type="text/javascript"></script>
        <script src="assets/plugins/angular-ui-util/ui-utils.min.js" type="text/javascript"></script>
        <script src="assets/plugins/angular-sanitize/angular-sanitize.min.js" type="text/javascript"></script>
        <script src="assets/plugins/angular-oc-lazyload/ocLazyLoad.min.js" type="text/javascript"></script>
        <!-- END VENDOR JS -->
        <!-- BEGIN CORE TEMPLATE JS -->
        <script src="pages/js/pages.js" type="text/javascript"></script>
        <script src="assets/js/app.js" type="text/javascript"></script>
        <script src="assets/js/config.js" type="text/javascript"></script>
        <script src="assets/js/config.lazyload.js" type="text/javascript"></script>
        <script src="assets/js/main.js" type="text/javascript"></script>
        <script src="assets/js/directives/pg-sidebar.js" type="text/javascript"></script>
        <script src="assets/js/directives/cs-select.js" type="text/javascript"></script>
        <script src="assets/js/directives/pg-dropdown.js" type="text/javascript"></script>
        <script src="assets/js/directives/pg-form-group.js" type="text/javascript"></script>
        <script src="assets/js/directives/pg-navigate.js" type="text/javascript"></script>
        <script src="assets/js/directives/pg-portlet.js" type="text/javascript"></script>
        <script src="assets/js/directives/pg-tab.js" type="text/javascript"></script>
        <script src="assets/js/directives/pg-search.js" type="text/javascript"></script>
        <script src="assets/js/directives/skycons.js" type="text/javascript"></script>
        <script src="assets/js/controllers/search.js" type="text/javascript"></script>
        <!-- END CORE TEMPLATE JS -->
    </body>
</html>