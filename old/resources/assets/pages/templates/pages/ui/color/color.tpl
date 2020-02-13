        {% if breadcrumb == 'breadcrumb-alt' %}
<div class="bg-white">
  <div class="container">
    <ol class="breadcrumb breadcrumb-alt">
      <li class="breadcrumb-item"><a href="#">UI Elements</a></li>
      <li class="breadcrumb-item active">Color</li>
    </ol>
  </div>
</div>
{% endif %} <!-- START JUMBOTRON -->
          <div class="jumbotron" data-pages="parallax" {% if mode =='horizontal_menu' %} data-scroll-element=".page-container" {% endif %}>
            <div class="{% if mode =='horizontal_menu' %} container p-l-0 p-r-0 {% else %} container-fluid {% endif %}  container-fixed-lg sm-p-l-0 sm-p-r-0">
              <div class="inner">
                <!-- START BREADCRUMB -->
                {% if breadcrumb != 'breadcrumb-alt' %} <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="#">UI Elements</a></li>
                  <li class="breadcrumb-item active">Color</li>
                </ol>
                <!-- END BREADCRUMB --> {% endif %}
                <div class="container-md-height m-b-20">
                  <div class="row m-lg-0">
                    <div class="col-xl-7 col-lg-6 bg-white">
                      <!-- START card -->
                      <div class="full-height">
                        <div class="card-body text-center">
                          <img class="image-responsive-height demo-mw-350" src="{# ASSETS #}/img/demo/colors_hero.gif" alt="">
                        </div>
                      </div>
                      <!-- END card -->
                    </div>
                    <div class="col-xl-5 col-lg-6 col-top">
                      <!-- START card -->
                      <div class="card card-transparent">
                        <div class="card-header ">
                          <div class="card-title">Getting started
                          </div>
                        </div>
                        <div class="card-body">
                          <h3>Paint it the way you Like it.</h3>
                          <p>Color is a wonderful tool for making your dashboard more interesting with a significant positive impact on your mood. </p>
                          <br>
                          <div>
                            <div class="profile-img-wrapper m-t-5 inline">
                              <img width="35" height="35" src="{# ASSETS #}/img/profiles/avatar_small.jpg" alt="" data-src="{# ASSETS #}/img/profiles/avatar_small.jpg" data-src-retina="{# ASSETS #}/img/profiles/avatar_small2x.jpg">
                              <div class="chat-status available">
                              </div>
                            </div>
                            <div class="inline m-l-10">
                              <p class="small hint-text m-t-5">VIA senior product manage
                                <br>for UI/UX at REVOX</p>
                            </div>
                          </div>
                        </div>
                      </div>
                      <!-- END card -->
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- END JUMBOTRON -->
          <!-- START CONTAINER FLUID -->
          <div class="{% if mode =='horizontal_menu' %} container  {% else %} container-fluid {% endif %}  container-fixed-lg">
            <div class="row">
              <div class="col-lg-4">
                <!-- START card -->
                <div class="card card-transparent">
                  <div class="card-header ">
                    <div class="card-title">Eight base color pallete
                    </div>
                  </div>
                  <div class="card-body">
                    <p>The dashboard will synergize with the colour selection made by the user and appropriately amend. Similarly, all other elements will sync according to the base colours. </p>
                    <br>
                    <div>
                      <i class="pg-download pull-left fs-14 m-t-5"></i>
                      <p class="no-margin p-l-30">
                        <a href="http://pages.revox.io/swatches.zip">Download full color pallete (swatches)</a>
                      </p>
                      <p class="no-margin p-l-30 small">0.31MB</p>
                    </div>
                  </div>
                </div>
                <!-- END card -->
              </div>
              <div class="col-lg-8">
                <!-- START card -->
                <div class="card card-transparent">
                  <div class="card-body">
                    <div class="row">
                      <div class="col-lg-3 col-md-6">
                        <div class="bg-master b-a b-grey m-b-15">
                          <div class="bg-white m-t-45 padding-10">
                            <p class=" no-margin pull-left">Master color</p>
                            <p class=" no-margin pull-right">100%</p>
                            <div class="clearfix"></div>
                          </div>
                        </div>
                      </div>
                      <div class="col-lg-3 col-md-6">
                        <div class="bg-primary b-a b-grey m-b-15">
                          <div class="bg-white m-t-45 padding-10 text-master">
                            <p class=" no-margin pull-left">Primary color</p>
                            <p class=" no-margin pull-right">100%</p>
                            <div class="clearfix"></div>
                          </div>
                        </div>
                      </div>
                      <div class="col-lg-3 col-md-6">
                        <div class="bg-complete b-a b-grey m-b-15">
                          <div class="bg-white m-t-45 padding-10">
                            <p class=" no-margin pull-left">Complete</p>
                            <p class=" no-margin pull-right">100%</p>
                            <div class="clearfix"></div>
                          </div>
                        </div>
                      </div>
                      <div class="col-lg-3 col-md-6">
                        <div class="bg-success b-a b-grey m-b-15">
                          <div class="bg-white m-t-45 padding-10">
                            <p class=" no-margin pull-left">Success color</p>
                            <p class=" no-margin pull-right">100%</p>
                            <div class="clearfix"></div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-lg-3 col-md-6">
                        <div class="bg-menu b-a b-grey m-b-15">
                          <div class="bg-white m-t-45 padding-10">
                            <p class=" no-margin pull-left">Menu color</p>
                            <p class=" no-margin pull-right">100%</p>
                            <div class="clearfix"></div>
                          </div>
                        </div>
                      </div>
                      <div class="col-lg-3 col-md-6">
                        <div class="bg-info b-a b-grey m-b-15">
                          <div class="bg-white m-t-45 padding-10">
                            <p class=" no-margin pull-left">Info color</p>
                            <p class=" no-margin pull-right">100%</p>
                            <div class="clearfix"></div>
                          </div>
                        </div>
                      </div>
                      <div class="col-lg-3 col-md-6">
                        <div class="bg-danger b-a b-grey m-b-15">
                          <div class="bg-white m-t-45 padding-10">
                            <p class=" no-margin pull-left">Danger color</p>
                            <p class=" no-margin pull-right">100%</p>
                            <div class="clearfix"></div>
                          </div>
                        </div>
                      </div>
                      <div class="col-lg-3 col-md-6">
                        <div class="bg-warning b-a b-grey m-b-15">
                          <div class="bg-white m-t-45 padding-10">
                            <p class=" no-margin pull-left">Warning color</p>
                            <p class=" no-margin pull-right">100%</p>
                            <div class="clearfix"></div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- END card -->
              </div>
            </div>
          </div>
          <!-- END CONTAINER FLUID -->
          <!-- START CONTAINER FLUID -->
          <div class="{% if mode =='horizontal_menu' %} no-padding  {% else %} container-fluid {% endif %}  container-fixed-lg bg-white">
            {% if mode =='horizontal_menu' %} 
              <div class="container">
            {% endif %}
              <div class="row">
                <div class="col-md-6">
                  <!-- START card -->
                  <div class="card card-transparent">
                    <div class="card-body">
                      <div class="row">
                        <div class="col-4 col-xl-3">
                          <p class="no-margin">Menu options</p>
                          <p class="small hint-text"><span class="bold">HEX</span> : #0a0a0a</p>
                        </div>
                        <div class="col-8 col-xl-9 bg-master-darkest text-white m-b-10">
                          <p class="pull-left no-margin p-t-10 p-b-10 font-montserrat all-caps semi-bold small">@color-master-darkest</p>
                          <p class="pull-right no-margin p-t-10 p-b-10">0%</p>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-4 col-xl-3">
                          <p class="no-margin">Menu</p>
                          <p class="small hint-text"><span class="bold">HEX</span> : #1A1A1A</p>
                        </div>
                        <div class="col-8 col-xl-9 bg-master-darker text-white m-b-10">
                          <p class="pull-left no-margin p-t-10 p-b-10 font-montserrat all-caps semi-bold small">@color-master-darker</p>
                          <p class="pull-right no-margin p-t-10 p-b-10">27%</p>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-4 col-xl-3">
                          <p class="no-margin">Text heading</p>
                          <p class="small hint-text"><span class="bold">HEX</span> : #2C2C2C</p>
                        </div>
                        <div class="col-8 col-xl-9 bg-master-dark text-white m-b-10">
                          <p class="pull-left no-margin p-t-10 p-b-10 font-montserrat all-caps semi-bold small">@color-master-dark</p>
                          <p class="pull-right no-margin p-t-10 p-b-10">45%</p>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-4 col-xl-3">
                          <p class="no-margin">Default text (base)</p>
                          <p class="small hint-text"><span class="bold">HEX</span> : #626262</p>
                        </div>
                        <div class="col-8 col-xl-9 bg-master b-a b-grey no-padding">
                          <div class="bg-white m-t-45 p-t-5 p-l-15 p-b-5 p-r-15">
                            <p class="font-montserrat all-caps no-margin small">@color-master</p>
                            <p class="small no-margin pull-left">#626262</p>
                            <p class="small no-margin pull-right">100%</p>
                            <div class="clearfix"></div>
                          </div>
                        </div>
                      </div>
                      <div class="row m-t-10">
                        <div class="col-4 col-xl-3">
                          <p class="no-margin">Dividers</p>
                          <p class="small hint-text"><span class="bold">HEX</span> : #E6E6E6</p>
                        </div>
                        <div class="col-8 col-xl-9 bg-master-light m-b-10">
                          <p class="pull-left no-margin p-t-10 p-b-10 font-montserrat all-caps semi-bold small">@color-master-light</p>
                          <p class="pull-right no-margin p-t-10 p-b-10">16%</p>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-4 col-xl-3">
                          <p class="no-margin">Cover page</p>
                          <p class="small hint-text"><span class="bold">HEX</span> : #F0F0F0</p>
                        </div>
                        <div class="col-8 col-xl-9 bg-master-lighter m-b-10">
                          <p class="pull-left no-margin p-t-10 p-b-10 font-montserrat all-caps semi-bold small">@color-master-lighter</p>
                          <p class="pull-right no-margin p-t-10 p-b-10">9.5%</p>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-4 col-xl-3">
                          <p class="no-margin">Background</p>
                          <p class="small hint-text"><span class="bold">HEX</span> : #FAFAFA</p>
                        </div>
                        <div class="col-8 col-xl-9 bg-master-lightest m-b-10">
                          <p class="pull-left no-margin p-t-10 p-b-10 font-montserrat all-caps semi-bold small">@color-master-lightest</p>
                          <p class="pull-right no-margin p-t-10 p-b-10">3%</p>
                        </div>
                      </div>
                    </div>
                  </div>
                  <!-- END card -->
                </div>
                <div class="col-md-5 offset-md-1">
                  <!-- START card -->
                  <div class="card card-transparent">
                    <div class="card-body">
                      <h5 class="m-t-0">Master color shades</h5>
                      <div class="padding-15 bg-master pull-left"></div>
                      <p class="m-l-45 small hint-text m-b-0">RGB : 0 65 73</p>
                      <p class="m-l-45 small hint-text m-b-0">Pantone cool gray 10c</p>
                      <div class="clearfix"></div>
                      <br>
                      <p>With a coterie of features based on zero- saturation resulting in mutilple colour adaptability, this colour is the essential Master colour which affects the fonts, background and content. The upper dark shades are made having the master base color on top of a black (#000000) with certain opacity. Thus the lower light shades are made with a white (#ffffff) color .</p>
                      <br>
                      <p class="small">NOTE: Changing the base color will change the other shades of the relative base.</p>
                    </div>
                  </div>
                  <!-- END card -->
                </div>
              </div>
              {% if mode =='horizontal_menu' %} 
                </div>
              {% endif %}
          </div>
          <!-- END CONTAINER FLUID -->
          <!-- START CONTAINER FLUID -->
          <div class="{% if mode =='horizontal_menu' %} container  {% else %} container-fluid {% endif %}  container-fixed-lg m-t-20">
            <div class="row">
              <div class="col-md-4">
                <!-- START card -->
                <div class="card card-transparent">
                  <div class="card-header ">
                    <div class="card-title">Chroma base colors
                    </div>
                  </div>
                  <div class="card-body">
                    <h5>Stress free colors</h5>
                    <p>The monochrome base color is made by having a zero saturation percentage which will adapat to any color placed near it.</p>
                    <h5>Easy code</h5>
                    <p>Changing the following base colors will change the other base colors.</p>
                  </div>
                </div>
                <!-- END card -->
              </div>
              <div class="col-md-8">
                <!-- START card -->
                <div class="card card-transparent">
                  <div class="card-body">
                    <div class="row">
                      <div class="col-xl-4 col-md-6 sm-m-b-15">
                        <div class="bg-primary b-a b-grey">
                          <div class="bg-white m-t-45 padding-10 text-master">
                            <p class="font-montserrat all-caps small m-b-5">@color-primary</p>
                            <p class="small no-margin pull-left">#6D5CAE</p>
                            <p class="small no-margin pull-right">100%</p>
                            <div class="clearfix"></div>
                          </div>
                        </div>
                      </div>
                      <div class="col-xl-4 col-md-6 sm-m-b-15">
                        <div class="bg-complete b-a b-grey">
                          <div class="bg-white m-t-45 padding-10">
                            <p class="font-montserrat all-caps small m-b-5">@color-complete</p>
                            <p class="small no-margin pull-left">#48B0F7</p>
                            <p class="small no-margin pull-right">100%</p>
                            <div class="clearfix"></div>
                          </div>
                        </div>
                      </div>
                      <div class="col-xl-4 col-md-6">
                        <div class="bg-success b-a b-grey">
                          <div class="bg-white m-t-45 padding-10">
                            <p class="font-montserrat all-caps small m-b-5">@color-success</p>
                            <p class="small no-margin pull-left">#10CFBD</p>
                            <p class="small no-margin pull-right">100%</p>
                            <div class="clearfix"></div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <br>
                    <div class="row">
                      <div class="col-xl-4 col-md-6 sm-m-b-15">
                        <div class="bg-warning b-a b-grey">
                          <div class="bg-white m-t-45 padding-10">
                            <p class="font-montserrat all-caps small m-b-5">@color-warning</p>
                            <p class="small no-margin pull-left">#F8D053</p>
                            <p class="small no-margin pull-right">100%</p>
                            <div class="clearfix"></div>
                          </div>
                        </div>
                      </div>
                      <div class="col-xl-4 col-md-6 sm-m-b-15">
                        <div class="bg-danger b-a b-grey">
                          <div class="bg-white m-t-45 padding-10">
                            <p class="font-montserrat all-caps small m-b-5">@color-danger</p>
                            <p class="small no-margin pull-left">#F55753</p>
                            <p class="small no-margin pull-right">100%</p>
                            <div class="clearfix"></div>
                          </div>
                        </div>
                      </div>
                      <div class="col-xl-4 col-md-6">
                        <div class="bg-info b-a b-grey">
                          <div class="bg-white m-t-45 padding-10">
                            <p class="font-montserrat all-caps small m-b-5">@color-info</p>
                            <p class="small no-margin pull-left">#3B4752</p>
                            <p class="small no-margin pull-right">100%</p>
                            <div class="clearfix"></div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- END card -->
              </div>
            </div>
          </div>
          <!-- END CONTAINER FLUID -->
          <!-- START CONTAINER FLUID -->
          <div class="{% if mode =='horizontal_menu' %} container  {% else %} container-fluid {% endif %}  container-fixed-lg m-t-20">
            <div class="row">
              <div class="col-md-6">
                <!-- START card -->
                <div class="card card-transparent">
                  <div class="card-body">
                    <div class="row">
                      <div class="col-4 col-xl-3">
                        <p class="no-margin">Notifications text</p>
                        <p class="small hint-text"><span class="bold">HEX</span> : #413768</p>
                      </div>
                      <div class="col-8 col-xl-9 bg-primary-darker text-white m-b-10">
                        <p class="pull-left no-margin p-t-10 p-b-10 font-montserrat all-caps semi-bold small">@color-primary-darker</p>
                        <p class="pull-right no-margin p-t-10 p-b-10">60%</p>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-4 col-xl-3">
                        <p class="no-margin">Text color</p>
                        <p class="small hint-text"><span class="bold">HEX</span> : #5B4D91</p>
                      </div>
                      <div class="col-8 col-xl-9 bg-primary-dark text-white m-b-10">
                        <p class="pull-left no-margin p-t-10 p-b-10 font-montserrat all-caps semi-bold small">@color-primary-dark</p>
                        <p class="pull-right no-margin p-t-10 p-b-10">83.5%</p>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-4 col-xl-3">
                        <p class="no-margin">Base color</p>
                        <p class="small hint-text"><span class="bold">HEX</span> : #6D5CAE</p>
                      </div>
                      <div class="col-8 col-xl-9 bg-primary no-padding b-a b-grey text-master">
                        <div class="bg-white m-t-45 p-t-5 p-l-15 p-b-5 p-r-15">
                          <p class="font-montserrat all-caps no-margin small">@color-primary</p>
                          <p class="small no-margin pull-left">#6D5CAE</p>
                          <p class="small no-margin pull-right">100%</p>
                          <div class="clearfix"></div>
                        </div>
                      </div>
                    </div>
                    <div class="row m-t-10">
                      <div class="col-4 col-xl-3">
                        <p class="no-margin">Button overlay</p>
                        <p class="small hint-text"><span class="bold">HEX</span> : #8A7DBE</p>
                      </div>
                      <div class="col-8 col-xl-9 bg-primary-light text-white m-b-10">
                        <p class="pull-left no-margin p-t-10 p-b-10 font-montserrat all-caps semi-bold small">@color-primary-light</p>
                        <p class="pull-right no-margin p-t-10 p-b-10">80%</p>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-4 col-xl-3">
                        <p class="no-margin">Background opt.</p>
                        <p class="small hint-text"><span class="bold">HEX</span> : #E2DEEF</p>
                      </div>
                      <div class="col-8 col-xl-9 bg-primary-lighter text-white m-b-10">
                        <p class="pull-left no-margin p-t-10 p-b-10 font-montserrat all-caps semi-bold small">@color-primary-lighter</p>
                        <p class="pull-right no-margin p-t-10 p-b-10">20%</p>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- END card -->
              </div>
              <div class="col-md-6">
                <!-- START card -->
                <div class="card card-transparent">
                  <div class="card-body">
                    <div class="row">
                      <div class="col-4 col-xl-3">
                        <p class="no-margin">Notifications text</p>
                        <p class="small hint-text"><span class="bold">HEX</span> : #2B6A94</p>
                      </div>
                      <div class="col-8 col-xl-9 bg-complete-darker text-white m-b-10">
                        <p class="pull-left no-margin p-t-10 p-b-10 font-montserrat all-caps semi-bold small">@color-complete-darker</p>
                        <p class="pull-right no-margin p-t-10 p-b-10">60%</p>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-4 col-xl-3">
                        <p class="no-margin">Text color</p>
                        <p class="small hint-text"><span class="bold">HEX</span> : #3C93CE</p>
                      </div>
                      <div class="col-8 col-xl-9 bg-complete-dark text-white m-b-10">
                        <p class="pull-left no-margin p-t-10 p-b-10 font-montserrat all-caps semi-bold small">@color-complete-dark</p>
                        <p class="pull-right no-margin p-t-10 p-b-10">83.5%</p>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-4 col-xl-3">
                        <p class="no-margin">Base color</p>
                        <p class="small hint-text"><span class="bold">HEX</span> : #48B0F7</p>
                      </div>
                      <div class="col-8 col-xl-9 bg-complete no-padding b-a b-grey text-master">
                        <div class="bg-white m-t-45 p-t-5 p-l-15 p-b-5 p-r-15">
                          <p class="font-montserrat all-caps no-margin small">@color-complete</p>
                          <p class="small no-margin pull-left">#48B0F7</p>
                          <p class="small no-margin pull-right">100%</p>
                          <div class="clearfix"></div>
                        </div>
                      </div>
                    </div>
                    <div class="row m-t-10">
                      <div class="col-4 col-xl-3">
                        <p class="no-margin">Button overlay</p>
                        <p class="small hint-text"><span class="bold">HEX</span> : #6DC0F9</p>
                      </div>
                      <div class="col-8 col-xl-9 bg-complete-light text-white m-b-10">
                        <p class="pull-left no-margin p-t-10 p-b-10 font-montserrat all-caps semi-bold small">@color-complete-light</p>
                        <p class="pull-right no-margin p-t-10 p-b-10">80%</p>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-4 col-xl-3">
                        <p class="no-margin">Background opt.</p>
                        <p class="small hint-text"><span class="bold">HEX</span> : #DAEFFD</p>
                      </div>
                      <div class="col-8 col-xl-9 bg-complete-lighter text-white m-b-10">
                        <p class="pull-left no-margin p-t-10 p-b-10 font-montserrat all-caps semi-bold small">@color-complete-lighter</p>
                        <p class="pull-right no-margin p-t-10 p-b-10">20%</p>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- END card -->
              </div>
            </div>
            <div class="row">
              <div class="col-md-6">
                <!-- START card -->
                <div class="card card-transparent">
                  <div class="card-body">
                    <div class="row">
                      <div class="col-4 col-xl-3">
                        <p class="no-margin">Notifications text</p>
                        <p class="small hint-text"><span class="bold">HEX</span> : #0A7C71</p>
                      </div>
                      <div class="col-8 col-xl-9 bg-success-darker text-white m-b-10">
                        <p class="pull-left no-margin p-t-10 p-b-10 font-montserrat all-caps semi-bold small">@color-success-darker</p>
                        <p class="pull-right no-margin p-t-10 p-b-10">60%</p>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-4 col-xl-3">
                        <p class="no-margin">Text color</p>
                        <p class="small hint-text"><span class="bold">HEX</span> : #0DAD9E</p>
                      </div>
                      <div class="col-8 col-xl-9 bg-success-dark text-white m-b-10">
                        <p class="pull-left no-margin p-t-10 p-b-10 font-montserrat all-caps semi-bold small">@color-success-dark</p>
                        <p class="pull-right no-margin p-t-10 p-b-10">83.5%</p>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-4 col-xl-3">
                        <p class="no-margin">Base color</p>
                        <p class="small hint-text"><span class="bold">HEX</span> : #10CFBD</p>
                      </div>
                      <div class="col-8 col-xl-9 bg-success no-padding b-a b-grey text-master">
                        <div class="bg-white m-t-45 p-t-5 p-l-15 p-b-5 p-r-15">
                          <p class="font-montserrat all-caps no-margin small">@color-success</p>
                          <p class="small no-margin pull-left">#10CFBD</p>
                          <p class="small no-margin pull-right">100%</p>
                          <div class="clearfix"></div>
                        </div>
                      </div>
                    </div>
                    <div class="row m-t-10">
                      <div class="col-4 col-xl-3">
                        <p class="no-margin">Button overlay</p>
                        <p class="small hint-text"><span class="bold">HEX</span> : #40D9CA</p>
                      </div>
                      <div class="col-8 col-xl-9 bg-success-light text-white m-b-10">
                        <p class="pull-left no-margin p-t-10 p-b-10 font-montserrat all-caps semi-bold small">@color-success-light</p>
                        <p class="pull-right no-margin p-t-10 p-b-10">80%</p>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-4 col-xl-3">
                        <p class="no-margin">Background opt.</p>
                        <p class="small hint-text"><span class="bold">HEX</span> : #CFF5F2</p>
                      </div>
                      <div class="col-8 col-xl-9 bg-success-lighter text-white m-b-10">
                        <p class="pull-left no-margin p-t-10 p-b-10 font-montserrat all-caps semi-bold small">@color-success-lighter</p>
                        <p class="pull-right no-margin p-t-10 p-b-10">20%</p>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- END card -->
              </div>
              <div class="col-md-6">
                <!-- START card -->
                <div class="card card-transparent">
                  <div class="card-body">
                    <div class="row">
                      <div class="col-4 col-xl-3">
                        <p class="no-margin">Notifications text</p>
                        <p class="small hint-text"><span class="bold">HEX</span> : #957D32</p>
                      </div>
                      <div class="col-8 col-xl-9 bg-warning-darker text-white m-b-10">
                        <p class="pull-left no-margin p-t-10 p-b-10 font-montserrat all-caps semi-bold small">@color-warning-darker</p>
                        <p class="pull-right no-margin p-t-10 p-b-10">60%</p>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-4 col-xl-3">
                        <p class="no-margin">Text color</p>
                        <p class="small hint-text"><span class="bold">HEX</span> : #CFAE45</p>
                      </div>
                      <div class="col-8 col-xl-9 bg-warning-dark text-white m-b-10">
                        <p class="pull-left no-margin p-t-10 p-b-10 font-montserrat all-caps semi-bold small">@color-warning-dark</p>
                        <p class="pull-right no-margin p-t-10 p-b-10">83.5%</p>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-4 col-xl-3">
                        <p class="no-margin">Base color</p>
                        <p class="small hint-text"><span class="bold">HEX</span> : #F8D053</p>
                      </div>
                      <div class="col-8 col-xl-9 bg-warning no-padding b-a b-grey text-master">
                        <div class="bg-white m-t-45 p-t-5 p-l-15 p-b-5 p-r-15">
                          <p class="font-montserrat all-caps no-margin small">@color-warning</p>
                          <p class="small no-margin pull-left">#F8D053</p>
                          <p class="small no-margin pull-right">100%</p>
                          <div class="clearfix"></div>
                        </div>
                      </div>
                    </div>
                    <div class="row m-t-10">
                      <div class="col-4 col-xl-3">
                        <p class="no-margin">Button overlay</p>
                        <p class="small hint-text"><span class="bold">HEX</span> : #F9D975</p>
                      </div>
                      <div class="col-8 col-xl-9 bg-warning-light text-white m-b-10">
                        <p class="pull-left no-margin p-t-10 p-b-10 font-montserrat all-caps semi-bold small">@color-warning-light</p>
                        <p class="pull-right no-margin p-t-10 p-b-10">80%</p>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-4 col-xl-3">
                        <p class="no-margin">Background opt.</p>
                        <p class="small hint-text"><span class="bold">HEX</span> : #FEF6DD</p>
                      </div>
                      <div class="col-8 col-xl-9 bg-warning-lighter text-white m-b-10">
                        <p class="pull-left no-margin p-t-10 p-b-10 font-montserrat all-caps semi-bold small">@color-warning-lighter</p>
                        <p class="pull-right no-margin p-t-10 p-b-10">20%</p>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- END card -->
              </div>
            </div>
            <div class="row">
              <div class="col-md-6">
                <!-- START card -->
                <div class="card card-transparent">
                  <div class="card-body">
                    <div class="row">
                      <div class="col-4 col-xl-3">
                        <p class="no-margin">Notifications text</p>
                        <p class="small hint-text"><span class="bold">HEX</span> : #933432</p>
                      </div>
                      <div class="col-8 col-xl-9 bg-danger-darker text-white m-b-10">
                        <p class="pull-left no-margin p-t-10 p-b-10 font-montserrat all-caps semi-bold small">@color-danger-darker</p>
                        <p class="pull-right no-margin p-t-10 p-b-10">60%</p>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-4 col-xl-3">
                        <p class="no-margin">Text color</p>
                        <p class="small hint-text"><span class="bold">HEX</span> : #CD4945</p>
                      </div>
                      <div class="col-8 col-xl-9 bg-danger-dark text-white m-b-10">
                        <p class="pull-left no-margin p-t-10 p-b-10 font-montserrat all-caps semi-bold small">@color-danger-dark</p>
                        <p class="pull-right no-margin p-t-10 p-b-10">83.5%</p>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-4 col-xl-3">
                        <p class="no-margin">Base color</p>
                        <p class="small hint-text"><span class="bold">HEX</span> : #F55753</p>
                      </div>
                      <div class="col-8 col-xl-9 bg-danger no-padding b-a b-grey text-master">
                        <div class="bg-white m-t-45 p-t-5 p-l-15 p-b-5 p-r-15">
                          <p class="font-montserrat all-caps no-margin small">@color-danger</p>
                          <p class="small no-margin pull-left">#F55753</p>
                          <p class="small no-margin pull-right">100%</p>
                          <div class="clearfix"></div>
                        </div>
                      </div>
                    </div>
                    <div class="row m-t-10">
                      <div class="col-4 col-xl-3">
                        <p class="no-margin">Button overlay</p>
                        <p class="small hint-text"><span class="bold">HEX</span> : #F77975</p>
                      </div>
                      <div class="col-8 col-xl-9 bg-danger-light text-white m-b-10">
                        <p class="pull-left no-margin p-t-10 p-b-10 font-montserrat all-caps semi-bold small">@color-danger-light</p>
                        <p class="pull-right no-margin p-t-10 p-b-10">80%</p>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-4 col-xl-3">
                        <p class="no-margin">Background opt.</p>
                        <p class="small hint-text"><span class="bold">HEX</span> : #FDDDDD</p>
                      </div>
                      <div class="col-8 col-xl-9 bg-danger-lighter text-white m-b-10">
                        <p class="pull-left no-margin p-t-10 p-b-10 font-montserrat all-caps semi-bold small">@color-danger-lighter</p>
                        <p class="pull-right no-margin p-t-10 p-b-10">20%</p>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- END card -->
              </div>
              <div class="col-md-6">
                <!-- START card -->
                <div class="card card-transparent">
                  <div class="card-body">
                    <div class="row">
                      <div class="col-4 col-xl-3">
                        <p class="no-margin">Notifications text</p>
                        <p class="small hint-text"><span class="bold">HEX</span> : #232B31</p>
                      </div>
                      <div class="col-8 col-xl-9 bg-info-darker text-white m-b-10">
                        <p class="pull-left no-margin p-t-10 p-b-10 font-montserrat all-caps semi-bold small">@color-info-darker</p>
                        <p class="pull-right no-margin p-t-10 p-b-10">60%</p>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-4 col-xl-3">
                        <p class="no-margin">Text color</p>
                        <p class="small hint-text"><span class="bold">HEX</span> : #313B44</p>
                      </div>
                      <div class="col-8 col-xl-9 bg-info-dark text-white m-b-10">
                        <p class="pull-left no-margin p-t-10 p-b-10 font-montserrat all-caps semi-bold small">@color-info-dark</p>
                        <p class="pull-right no-margin p-t-10 p-b-10">83.5%</p>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-4 col-xl-3">
                        <p class="no-margin">Base color</p>
                        <p class="small hint-text"><span class="bold">HEX</span> : #3B4752</p>
                      </div>
                      <div class="col-8 col-xl-9 bg-info no-padding b-a b-grey text-master">
                        <div class="bg-white m-t-45 p-t-5 p-l-15 p-b-5 p-r-15">
                          <p class="font-montserrat all-caps no-margin small">@color-info</p>
                          <p class="small no-margin pull-left">#3B4752</p>
                          <p class="small no-margin pull-right">100%</p>
                          <div class="clearfix"></div>
                        </div>
                      </div>
                    </div>
                    <div class="row m-t-10">
                      <div class="col-4 col-xl-3">
                        <p class="no-margin">Button overlay</p>
                        <p class="small hint-text"><span class="bold">HEX</span> : #626C75</p>
                      </div>
                      <div class="col-8 col-xl-9 bg-info-light text-white m-b-10">
                        <p class="pull-left no-margin p-t-10 p-b-10 font-montserrat all-caps semi-bold small">@color-info-light</p>
                        <p class="pull-right no-margin p-t-10 p-b-10">80%</p>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-4 col-xl-3">
                        <p class="no-margin">Background opt.</p>
                        <p class="small hint-text"><span class="bold">HEX</span> : #D8DADC</p>
                      </div>
                      <div class="col-8 col-xl-9 bg-info-lighter text-white m-b-10">
                        <p class="pull-left no-margin p-t-10 p-b-10 font-montserrat all-caps semi-bold small">@color-info-ligher</p>
                        <p class="pull-right no-margin p-t-10 p-b-10">20%</p>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- END card -->
              </div>
            </div>
            <div class="row">
              <div class="col-md-6">
                <!-- START card -->
                <div class="card card-transparent">
                  <div class="card-header ">
                    <div class="card-title">Menu base color
                    </div>
                  </div>
                  <div class="card-body">
                    <div class="row">
                      <div class="col-4 col-xl-3">
                        <p class="no-margin">Menu open color</p>
                        <p class="small hint-text"><span class="bold">HEX</span> : #191B1F</p>
                      </div>
                      <div class="col-8 col-xl-9 bg-menu-dark text-white m-b-10">
                        <p class="pull-left no-margin p-t-10 p-b-10 font-montserrat all-caps semi-bold small">@color-menu-dark</p>
                        <p class="pull-right no-margin p-t-10 p-b-10">77%</p>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-4 col-xl-3">
                        <p class="no-margin">Base color</p>
                        <p class="small hint-text"><span class="bold">HEX</span> : #202328</p>
                      </div>
                      <div class="col-8 col-xl-9 bg-menu no-padding b-a b-grey text-master">
                        <div class="bg-white m-t-45 p-t-5 p-l-15 p-b-5 p-r-15">
                          <p class="font-montserrat all-caps no-margin small">@color-menu</p>
                          <p class="small no-margin pull-left">#202328</p>
                          <p class="small no-margin pull-right">100%</p>
                          <div class="clearfix"></div>
                        </div>
                      </div>
                    </div>
                    <div class="row m-t-10">
                      <div class="col-4 col-xl-3">
                        <p class="no-margin">Text/icon color</p>
                        <p class="small hint-text"><span class="bold">HEX</span> : #646972</p>
                      </div>
                      <div class="col-8 col-xl-9 bg-menu-light text-white m-b-10">
                        <p class="pull-left no-margin p-t-10 p-b-10 font-montserrat all-caps semi-bold small">@color-menu-light</p>
                        <p class="pull-right no-margin p-t-10 p-b-10">92%</p>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- END card -->
              </div>
            </div>
          </div>
          <!-- END CONTAINER FLUID -->
