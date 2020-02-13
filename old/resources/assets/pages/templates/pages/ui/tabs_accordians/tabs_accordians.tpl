        {% if breadcrumb == 'breadcrumb-alt' %}
<div class="bg-white">
  <div class="container">
    <ol class="breadcrumb breadcrumb-alt">
      <li class="breadcrumb-item"><a href="#">UI Elements</a></li>
      <li class="breadcrumb-item active">Tabs &amp; Accordians</li>
    </ol>
  </div>
</div>
{% endif %} <!-- START JUMBOTRON -->
          <div class="jumbotron" data-pages="parallax" {% if mode =='horizontal_menu' %} data-scroll-element=".page-container" {% endif %}>
            <div class="{% if mode =='horizontal_menu' %} container p-l-0 p-r-0 {% else %} container-fluid {% endif %}  container-fixed-lg">
              <div class="inner">
                <!-- START BREADCRUMB -->
                {% if breadcrumb != 'breadcrumb-alt' %} <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="#">UI Elements</a></li>
                  <li class="breadcrumb-item active">Tabs &amp; Accordians</li>
                </ol>
                <!-- END BREADCRUMB --> {% endif %}
                <div class="row">
                  <div class="col-xl-7 col-lg-6 ">
                    <!-- START card -->
                    <div class="full-height">
                      <div class="card-body text-center">
                        <img class="image-responsive-height demo-mw-600" src="{# ASSETS #}/img/demo/tab.png" alt="">
                      </div>
                    </div>
                    <!-- END card -->
                  </div>
                  <div class="col-xl-5 col-lg-6 ">
                    <!-- START card -->
                    <div class="card card-transparent">
                      <div class="card-header ">
                        <div class="card-title">Getting started
                        </div>
                      </div>
                      <div class="card-body">
                        <h3>Simply organized</h3>
                        <p>Seemingly unimportant but our range of simple and effective Tab choices, allows the user to select the manner in which to categorize, store and obtain content. All this can be done by clicking on the preferred type of tab. </p>
                        <br>
                        <div>
                          <div class="profile-img-wrapper m-t-5 inline">
                            <img width="35" height="35" src="{# ASSETS #}/img/profiles/avatar_small.jpg" alt="" data-src="{# ASSETS #}/img/profiles/avatar_small.jpg" data-src-retina="{# ASSETS #}/img/profiles/avatar_small2x.jpg">
                            <div class="chat-status available">
                            </div>
                          </div>
                          <div class="inline m-l-10">
                            <p class="small hint-text m-t-5">VIA senior product manage
                              <br> for UI/UX at REVOX</p>
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
          <!-- END JUMBOTRON -->
          <!-- START CONTAINER FLUID -->
          <div class="{% if mode =='horizontal_menu' %} container  {% else %} container-fluid {% endif %}  container-fixed-lg">
            <div class="row">
              <div class="col-lg-6">
                <div class="sm-m-l-5 sm-m-r-5">
                  <div class="card-group horizontal" id="accordion" role="tablist" aria-multiselectable="true">
                    <div class="card card-default m-b-0">
                      <div class="card-header " role="tab" id="headingOne">
                        <h4 class="card-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                             Collapsible Group Item
                            </a>
                          </h4>
                      </div>
                      <div id="collapseOne" class="collapse show" role="tabcard" aria-labelledby="headingOne">
                        <div class="card-body">
                          Click headers to expand/collapse content that is broken into logical sections, much like tabs. Optionally, toggle sections open/closed on mouseover.
                        </div>
                      </div>
                    </div>
                    <div class="card card-default m-b-0">
                      <div class="card-header " role="tab" id="headingTwo">
                        <h4 class="card-title">
                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                            Typography Variables
                            </a>
                          </h4>
                      </div>
                      <div id="collapseTwo" class="collapse" role="tabcard" aria-labelledby="headingTwo">
                        <div class="card-body">
                          <h1 class="light">
                            go explore the <span class="semi-bold">world</span>
                          </h1>
                          <h4>
                            small things in life matters the most
                          </h4>
                          <h2>
                            Big Heading <span class="semi-bold">Body</span>,
                            <i>Variations</i>
                          </h2>
                          <h4>
                            <span class="semi-bold">Open Me</span>, Light , <span class=
                            "semi-bold">Bold</span>, <i>Everything</i>
                          </h4>
                          <p>
                            is the art and technique of arranging type in order to make language visible. The arrangement of type involves the selection of typefaces, point size, line length, leading (line spacing), adjusting the spaces between groups of letters (tracking)
                          </p>
                          <p>
                            and adjusting the Case space between pairs of letters (kerning). Type design is a closely related craft, which some consider distinct and others a part of typography
                          </p>
                        </div>
                      </div>
                    </div>
                    <div class="card card-default m-b-0">
                      <div class="card-header " role="tab" id="headingThree">
                        <h4 class="card-title">
                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                              Easy Edit
                            </a>
                          </h4>
                      </div>
                      <div id="collapseThree" class="collapse" role="tabcard" aria-labelledby="headingThree">
                        <div class="card-body">
                          Click headers to expand/collapse content that is broken into logical sections, much like tabs. Optionally, toggle sections open/closed on mouseover.
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-lg-6">
                <div class="card card-borderless">
                  <ul class="nav nav-tabs nav-tabs-simple" role="tablist" data-init-reponsive-tabs="dropdownfx">
                    <li class="nav-item">
                      <a class="active" data-toggle="tab" role="tab" data-target="#tab2hellowWorld" href="#" >Hello World</a>
                    </li>
                    <li class="nav-item">
                      <a href="#" data-toggle="tab" role="tab" data-target="#tab2FollowUs">Hello Two</a>
                    </li>
                    <li class="nav-item">
                    <a href="#" data-toggle="tab" role="tab" data-target="#tab2Inspire">Hello Three</a>
                    </li>
                  </ul>
                  <div class="tab-content">
                    <div class="tab-pane active" id="tab2hellowWorld">
                      <div class="row column-seperation">
                        <div class="col-lg-6">
                          <h3>
                            <span class="semi-bold">Sometimes</span> Small things in life means the most
                          </h3>
                        </div>
                        <div class="col-lg-6">
                          <h3 class="semi-bold">great tabs</h3>
                          <p>Native boostrap tabs customized to Pages look and feel, simply changing class name you can change color as well as its animations</p>
                        </div>
                      </div>
                    </div>
                    <div class="tab-pane " id="tab2FollowUs">
                      <div class="row">
                        <div class="col-lg-12">
                          <h3>“ Nothing is
                            <span class="semi-bold">impossible</span>, the word itself says 'I'm
                            <span class="semi-bold">possible</span>'! ”
                          </h3>
                          <p>A style represents visual customizations on top of a layout. By editing a style, you can use Squarespace's visual interface to customize your...</p>
                          <br>
                          <p class="pull-right">
                            <button type="button" class="btn btn-default btn-cons">White</button>
                            <button type="button" class="btn btn-success btn-cons">Success</button>
                          </p>
                        </div>
                      </div>
                    </div>
                    <div class="tab-pane" id="tab2Inspire">
                      <div class="row">
                        <div class="col-lg-12">
                          <h3>Follow us &amp; get updated!</h3>
                          <p>Instantly connect to what's most important to you. Follow your friends, experts, favorite celebrities, and breaking news.</p>
                          <br>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- START card -->
            <div class="card card-transparent">
              <div class="card-header ">
                <div class="card-title">Tab Orientations
                </div>
              </div>
              <div class="card-body no-padding">
                <div class="row">
                  <div class="col-xl-6">
                    <div class="card card-transparent flex-row">
                      <ul class="nav nav-tabs nav-tabs-simple nav-tabs-left bg-white" id="tab-3">
                        <li class="nav-item">
                          <a href="#" class="active" data-toggle="tab" data-target="#tab3hellowWorld">One</a>
                        </li>
                        <li class="nav-item">
                          <a href="#" data-toggle="tab" data-target="#tab3FollowUs">Two</a>
                        </li>
                         <li class="nav-item">
                          <a href="#" data-toggle="tab" data-target="#tab3Inspire">Three</a>
                        </li>
                      </ul>
                      <div class="tab-content bg-white">
                        <div class="tab-pane" id="tab3hellowWorld">
                          <div class="row column-seperation">
                            <div class="col-lg-6">
                              <h3>
                              <span class="semi-bold">Sometimes </span>Small things in life
                              means the most
                              </h3>
                            </div>
                            <div class="col-lg-6">
                              <h3 class="semi-bold">
                                great tabs
                              </h3>
                              <p>Native boostrap tabs customized to Pages look and feel, simply changing class name you can change color as well as its animations</p>
                            </div>
                          </div>
                        </div>
                        <div class="tab-pane active" id="tab3FollowUs">
                          <h3>
                            “ Nothing is <span class="semi-bold">impossible</span>, the word
                            itself says 'I'm <span class="semi-bold">possible</span>'! ”
                          </h3>
                          <p>
                            A style represents visual customizations on top of a layout. By editing a style, you can use Squarespace's visual interface to customize your...
                          </p>
                          <br>
                          <p class="pull-right">
                            <button class="btn btn-default btn-cons" type="button">White</button>
                            <button class="btn btn-success btn-cons" type="button">Success</button>
                          </p>
                        </div>
                        <div class="tab-pane" id="tab3Inspire">
                          <h3>
                            Follow us &amp; get updated!
                          </h3>
                          <p>
                            Instantly connect to what's most important to you. Follow your friends, experts, favorite celebrities, and breaking news.
                          </p>
                          <br>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-xl-6">
                    <div class="card card-transparent flex-row-reverse">
                      <ul class="nav nav-tabs nav-tabs-simple nav-tabs-right bg-white" id="tab-4" role="tablist">
                        <li class="nav-item">
                          <a href="#" data-toggle="tab" role="tab" data-target="#tab4hellowWorld">One</a>
                        </li>
                        <li class="nav-item">
                          <a href="#" data-toggle="tab" role="tab" data-target="#tab4FollowUs">Two</a>
                        </li>
                       <li class="nav-item">
                          <a href="#" class="active" data-toggle="tab" role="tab" data-target="#tab4Inspire">Three</a>
                        </li>
                      </ul>
                      <div class="tab-content bg-white">
                        <div class="tab-pane" id="tab4hellowWorld">
                          <div class="row column-seperation">
                            <div class="col-lg-6">
                              <h3>
                                  <span class="semi-bold">Sometimes</span> Small things in life means the most
                              </h3>
                            </div>
                            <div class="col-lg-6">
                              <h3 class="semi-bold">great tabs</h3>
                              <p>Native boostrap tabs customized to Pages look and feel, simply changing class name you can change color as well as its animations</p>
                            </div>
                          </div>
                        </div>
                        <div class="tab-pane " id="tab4FollowUs">
                          <div class="row">
                            <div class="col-lg-12">
                              <h3>“ Nothing is
                                                    <span class="semi-bold">impossible</span>, the word itself says 'I'm
                                                    <span class="semi-bold">possible</span>'! ”</h3>
                              <p>A style represents visual customizations on top of a layout. By editing a style, you can use Squarespace's visual interface to customize your...</p>
                              <br>
                              <p class="pull-right">
                                <button type="button" class="btn btn-default btn-cons">White</button>
                                <button type="button" class="btn btn-success btn-cons">Success</button>
                              </p>
                            </div>
                          </div>
                        </div>
                        <div class="tab-pane active" id="tab4Inspire">
                          <div class="row">
                            <div class="col-lg-12">
                              <h3>Follow us &amp; get updated!</h3>
                              <p>Instantly connect to what's most important to you. Follow your friends, experts, favorite celebrities, and breaking news.</p>
                              <br>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- END card -->
            <!-- START card -->
            <div class="card card-transparent">
              <div class="card-header ">
                <div class="card-title">Tabs Styles
                </div>
              </div>
              <div class="card-body">
                <div class="alert alert-info d-lg-none d-xl-none d-md-none" role="alert">
                  <button class="close" data-dismiss="alert"></button>
                  <strong>Info: </strong> For mobile optimization the tab will become a Dropdown
                </div>
                <div class="row">
                  <div class="col-md-6">
                    <h5>Line Triangle Tabs</h5> Add the class
                    <code>nav-tabs-linetriangle</code> to the main wrapper of the tabs
                    <br>
                    <br>
                    <div class="card card-transparent">
                      <!-- Nav tabs -->
                      <ul class="nav nav-tabs nav-tabs-linetriangle" data-init-reponsive-tabs="dropdownfx">
                        <li class="nav-item">
                          <a class="active" data-toggle="tab" data-target="#home"  href="#"><span>Hello World</span></a>
                        </li>
                        <li class="nav-item">
                          <a data-toggle="tab" data-target="#profile" href="#"><span>Hello Two</span></a>
                        </li>
                        <li class="nav-item">
                          <a data-toggle="tab" data-target="#messages" href="#"><span>Hello Three</span></a>
                        </li>
                      </ul>
                      <!-- Tab panes -->
                      <div class="tab-content">
                        <div class="tab-pane active" id="home">
                          <div class="row column-seperation">
                            <div class="col-lg-6">
                              <h3>
                                  <span class="semi-bold">Sometimes</span> Small things in life means the most
                              </h3>
                            </div>
                            <div class="col-lg-6">
                              <h3 class="semi-bold">great tabs</h3>
                              <p>Native boostrap tabs customized to Pages look and feel, simply changing class name you can change color as well as its animations</p>
                            </div>
                          </div>
                        </div>
                        <div class="tab-pane" id="profile">
                          <div class="row">
                            <div class="col-lg-12">
                              <h3>“ Nothing is
                                                <span class="semi-bold">impossible</span>, the word itself says 'I'm
                                                <span class="semi-bold">possible</span>'! ”</h3>
                              <p>A style represents visual customizations on top of a layout. By editing a style, you can use Squarespace's visual interface to customize your...</p>
                              <br>
                              <p class="pull-right">
                                <button type="button" class="btn btn-default btn-cons">White</button>
                                <button type="button" class="btn btn-success btn-cons">Success</button>
                              </p>
                            </div>
                          </div>
                        </div>
                        <div class="tab-pane" id="messages">
                          <div class="row">
                            <div class="col-lg-12">
                              <h3>Follow us &amp; get updated!</h3>
                              <p>Instantly connect to what's most important to you. Follow your friends, experts, favorite celebrities, and breaking news.</p>
                              <br>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-6">
                    <h5>Fill In Tabs</h5> Add the class
                    <code>nav-tabs-fillup</code> to the main wrapper of the tabs
                    <br>
                    <br>
                    <div class="card card-transparent ">
                      <!-- Nav tabs -->
                      <ul class="nav nav-tabs nav-tabs-fillup" data-init-reponsive-tabs="dropdownfx">
                        <li class="nav-item">
                          <a href="#" class="active" data-toggle="tab" data-target="#tab-fillup1"><span>Home</span></a>
                        </li>
                        <li class="nav-item">
                          <a href="#" data-toggle="tab" data-target="#tab-fillup2"><span>Profile</span></a>
                        </li>
                        <li class="nav-item">
                          <a href="#" data-toggle="tab" data-target="#tab-fillup3"><span>Messages</span></a>
                        </li>
                      </ul>
                      <!-- Tab panes -->
                      <div class="tab-content">
                        <div class="tab-pane active" id="tab-fillup1">
                          <div class="row column-seperation">
                            <div class="col-lg-6">
                              <h3>
                                  <span class="semi-bold">Sometimes</span> Small things in life means the most
                              </h3>
                            </div>
                            <div class="col-lg-6">
                              <h3 class="semi-bold">great tabs</h3>
                              <p>Native boostrap tabs customized to Pages look and feel, simply changing class name you can change color as well as its animations</p>
                            </div>
                          </div>
                        </div>
                        <div class="tab-pane" id="tab-fillup2">
                          <div class="row">
                            <div class="col-lg-12">
                              <h3>“ Nothing is
                                <span class="semi-bold">impossible</span>, the word itself says 'I'm
                                <span class="semi-bold">possible</span>'! ”
                              </h3>
                              <p>A style represents visual customizations on top of a layout. By editing a style, you can use Squarespace's visual interface to customize your...</p>
                              <br>
                              <p class="pull-right">
                                <button type="button" class="btn btn-default btn-cons">White</button>
                                <button type="button" class="btn btn-success btn-cons">Success</button>
                              </p>
                            </div>
                          </div>
                        </div>
                        <div class="tab-pane" id="tab-fillup3">
                          <div class="row">
                            <div class="col-lg-12">
                              <h3>Follow us &amp; get updated!</h3>
                              <p>Instantly connect to what's most important to you. Follow your friends, experts, favorite celebrities, and breaking news.</p>
                              <br>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- END card -->
            <!-- START card -->
            <div class="card card-transparent">
              <div class="card-header ">
                <div class="card-title">Tabs Pane Transitions
                </div>
              </div>
              <div class="card-body">
                <div class="row">
                  <div class="col-md-6">
                    <h5>Fade effect</h5> Add the class
                    <code>fade</code> to the tab panes
                    <br>
                    <br>
                    <div class="card card-transparent">
                      <!-- Nav tabs -->
                      <ul class="nav nav-tabs nav-tabs-linetriangle" data-init-reponsive-tabs="dropdownfx">
                        <li class="nav-item">
                          <a href="#" class="active" data-toggle="tab" data-target="#fade1" ><span>Hello World</span></a>
                        </li>
                        <li class="nav-item">
                          <a href="#" data-toggle="tab" data-target="#fade2"><span>Hello Two</span></a>
                        </li>
                        <li class="nav-item">
                          <a href="#" data-toggle="tab" data-target="#fade3"><span>Hello Three</span></a>
                        </li>
                      </ul>
                      <!-- Tab panes -->
                      <div class="tab-content">
                        <div class="tab-pane fade show active" id="fade1">
                          <div class="row column-seperation">
                            <div class="col-lg-6">
                              <h3>
                                  <span class="semi-bold">Sometimes</span> Small things in life means the most
                              </h3>
                            </div>
                            <div class="col-lg-6">
                              <h3 class="semi-bold">great tabs</h3>
                              <p>Native boostrap tabs customized to Pages look and feel, simply changing class name you can change color as well as its animations</p>
                            </div>
                          </div>
                        </div>
                        <div class="tab-pane fade" id="fade2">
                          <div class="row">
                            <div class="col-lg-12">
                              <h3>“ Nothing is
                                <span class="semi-bold">impossible</span>, the word itself says 'I'm
                                <span class="semi-bold">possible</span>'! ”
                              </h3>
                              <p>A style represents visual customizations on top of a layout. By editing a style, you can use Squarespace's visual interface to customize your...</p>
                              <br>
                              <p class="pull-right">
                                <button type="button" class="btn btn-default btn-cons">White</button>
                                <button type="button" class="btn btn-success btn-cons">Success</button>
                              </p>
                            </div>
                          </div>
                        </div>
                        <div class="tab-pane fade" id="fade3">
                          <div class="row">
                            <div class="col-lg-12">
                              <h3>Follow us &amp; get updated!</h3>
                              <p>Instantly connect to what's most important to you. Follow your friends, experts, favorite celebrities, and breaking news.</p>
                              <br>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-6">
                    <h5>Slide effect</h5> Add the class
                    <code>slide-left</code> or <code>slide-right</code> to the tab panes
                    <br>
                    <br>
                    <div class="card card-transparent ">
                      <!-- Nav tabs -->
                      <ul class="nav nav-tabs nav-tabs-fillup" data-init-reponsive-tabs="dropdownfx">
                        <li class="nav-item">
                          <a href="#" class="active" data-toggle="tab" data-target="#slide1"><span>Home</span></a>
                        </li>
                        <li class="nav-item">
                          <a href="#" data-toggle="tab" data-target="#slide2"><span>Profile</span></a>
                        </li>
                        <li class="nav-item">
                          <a href="#" data-toggle="tab" data-target="#slide3"><span>Messages</span></a>
                        </li>
                      </ul>
                      <!-- Tab panes -->
                      <div class="tab-content">
                        <div class="tab-pane slide-left active" id="slide1">
                          <div class="row column-seperation">
                            <div class="col-lg-6">
                              <h3>
                                  <span class="semi-bold">Sometimes</span> Small things in life means the most
                              </h3>
                            </div>
                            <div class="col-lg-6">
                              <h3 class="semi-bold">great tabs</h3>
                              <p>Native boostrap tabs customized to Pages look and feel, simply changing class name you can change color as well as its animations</p>
                            </div>
                          </div>
                        </div>
                        <div class="tab-pane slide-left" id="slide2">
                          <div class="row">
                            <div class="col-lg-12">
                              <h3>“ Nothing is
                                <span class="semi-bold">impossible</span>, the word itself says 'I'm
                                <span class="semi-bold">possible</span>'! ”
                              </h3>
                              <p>A style represents visual customizations on top of a layout. By editing a style, you can use Squarespace's visual interface to customize your...</p>
                              <br>
                              <p class="pull-right">
                                <button type="button" class="btn btn-default btn-cons">White</button>
                                <button type="button" class="btn btn-success btn-cons">Success</button>
                              </p>
                            </div>
                          </div>
                        </div>
                        <div class="tab-pane slide-left" id="slide3">
                          <div class="row">
                            <div class="col-lg-12">
                              <h3>Follow us &amp; get updated!</h3>
                              <p>Instantly connect to what's most important to you. Follow your friends, experts, favorite celebrities, and breaking news.</p>
                              <br>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- END card -->
          </div>
          <!-- END CONTAINER FLUID -->
