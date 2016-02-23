<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no, shrink-to-fit=no" />
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-touch-fullscreen" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="default">
<meta content="" name="description" />
<meta content="Antoine Benevaut" name="author" />

<base href="{{ url() }}"/>

<title>Panel admin | #CVEPDB.fr</title>

<link href="/assets/images/cvepdb/favicon.ico" rel="shortcut icon" type="image/x-icon" />
<link href="/assets/images/cvepdb/apple-touch-icon.png" rel="apple-touch-icon" type="image/x-icon" />
<link href="/assets/images/cvepdb/apple-touch-icon-precomposed.png" rel="apple-touch-icon" type="image/x-icon" />
<link href="/assets/images/cvepdb/apple-touch-icon-57x57-precomposed.png" rel="apple-touch-icon" type="image/x-icon" />
<link href="/assets/images/cvepdb/apple-touch-icon-72x72-precomposed.png" rel="apple-touch-icon" type="image/x-icon" />
<link href="/assets/images/cvepdb/apple-touch-icon-114x114-precomposed.png" rel="apple-touch-icon" type="image/x-icon" />

<link href="/assets/plugins/pace/pace-theme-flash.css" rel="stylesheet" type="text/css" />
<link href="/assets/plugins/boostrapv3/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="/assets/plugins/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css" />
<link href="/assets/plugins/jquery-scrollbar/jquery.scrollbar.css" rel="stylesheet" type="text/css" media="screen" />

<link href="/assets/plugins/bootstrap-select2/select2.css" rel="stylesheet" type="text/css" media="screen" />
<link href="/assets/plugins/switchery/css/switchery.min.css" rel="stylesheet" type="text/css" media="screen" />
<link href="/assets/plugins/jquery-datatable/media/css/dataTables.bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="/assets/plugins/jquery-datatable/extensions/FixedColumns/css/dataTables.fixedColumns.min.css" rel="stylesheet" type="text/css"/>
<link href="/assets/plugins/datatables-responsive/css/datatables.responsive.css" rel="stylesheet" type="text/css" media="screen"/>
<link href="/assets/plugins/summernote/css/summernote.css" rel="stylesheet" type="text/css" media="screen"/>
<link href="/assets/plugins/bootstrap3-wysihtml5/bootstrap3-wysihtml5.min.css" rel="stylesheet" type="text/css" />
<link href="/assets/plugins/bootstrap-tag/bootstrap-tagsinput.css" rel="stylesheet" type="text/css" />
<link href="/assets/plugins/dropzone/css/dropzone.css" rel="stylesheet" type="text/css" />
<link href="/assets/plugins/bootstrap-datepicker/css/datepicker3.css" rel="stylesheet" type="text/css" media="screen">

@yield('metadatas')

<link href="/assets/css/pages-icons.css" rel="stylesheet" type="text/css">

<link class="main-stylesheet" href="/assets/css/admin/default.css" rel="stylesheet" type="text/css" />

<!--[if lte IE 9]>
<link href="/assets/css/ie9.css" rel="stylesheet" type="text/css" />
<![endif]-->

<script type="text/javascript">
    window.onload = function()
    {
        // fix for windows 8
        if (navigator.appVersion.indexOf("Windows NT 6.2") != -1)
            document.head.innerHTML += '<link rel="stylesheet" type="text/css" href="/assets/css/windows.chrome.fix.css" />'
    }
</script>

<script>
    var cvepdb_config = {
        ENV: '{{ config('app.debug') ? 'development' : 'production' }}',
        ENV_REF: '{{ config('app.debug') ? 'development' : 'production' }}',
        ENV_THEME: '',
        IDUSER: 0,
        LANG: '{{ Session::get('lang') }}',
        URI_BASE: '',
        URL_BASE: '',
        URL_SITE: '',
        URL_THEME: '../',
        BASE_PATH: 'assets/cvepdbjs/',
        LIVEREALOAD: {
            //			url: '',
            //			port: '',
            project: '0'
        },
        UA: {
            MOBILE: false,
            BROWSER: true
        },
        SENTRY: {
            /**
             *
             */
            development: {
                key: "cdfb1217505e4c21a06abccf407711d8",
                url: "sentry.cvepdb.fr",
                project: 8
            },
            /**
             *
             */
            staging: {
                key: "d8e3d03a69514f92a7b3007a14fc4620",
                url: "sentry.cvepdb.fr",
                project: 7
            },
            /**
             *
             */
            production: {
                key: "5a4240a22c75445c93d8aeab837cfd67",
                url: "sentry.cvepdb.fr",
                project: 3
            }
        }
    };
</script>