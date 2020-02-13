{% if not graphTitleFlat_bg%}
{% set graphTitleFlat_bg ='success'%}
{% endif %}
	<div class="widget-8 card no-border bg-{# graphTitleFlat_bg #} no-margin widget-loader-bar">
		<div class="container-xs-height full-height">
			<div class="row-xs-height">
				<div class="col-xs-height col-top">
					<div class="card-header  top-left top-right">
						<div class="card-title text-black hint-text">
                                <span class="font-montserrat fs-11 all-caps">Weekly Sales <i
		                                class="fa fa-chevron-right"></i>
                                                    </span>
						</div>
						<div class="card-controls">
							<ul>
								<li>
									<a data-toggle="refresh" class="card-refresh text-black"
									   href="#"><i
											class="card-icon card-icon-refresh"></i></a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="row-xs-height ">
				<div class="col-xs-height col-top relative">
					<div class="row">
						<div class="col-sm-6">
							<div class="p-l-20">
								<h3 class="no-margin p-b-5 text-white">$14,000</h3>

								<p class="small hint-text m-t-5">
									<span class="label  font-montserrat m-r-5">60%</span>Higher
								</p>
							</div>
						</div>
						<div class="col-sm-6">
						</div>
					</div>
					<div class='widget-8-chart line-chart' data-line-color="black"
					     data-points="true" data-point-color="{# graphTitleFlat_bg #}" data-stroke-width="2">
						<svg></svg>
					</div>
				</div>
			</div>
		</div>
	</div>