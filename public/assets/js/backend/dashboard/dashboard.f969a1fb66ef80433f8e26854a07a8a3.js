!function(e,t,a){"use strict";Highcharts.chart("google-analytics-container",{credits:{enabled:!1},chart:{type:"line"},title:{text:"Traffic analyses"},subtitle:{text:"Source: Google Analytics"},xAxis:{categories:google_analytics_dates},yAxis:{title:{text:""}},plotOptions:{line:{dataLabels:{enabled:!1},enableMouseTracking:!0}},series:[{name:"Visitors",data:google_analytics_visitors},{name:"Page views",data:google_analytics_pageViews}]})}(window.jQuery,window,document);