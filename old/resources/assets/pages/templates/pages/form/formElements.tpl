{% if breadcrumb == 'breadcrumb-alt' %}
<div class="bg-white">
  <div class="container">
    <ol class="breadcrumb breadcrumb-alt">
      <li class="breadcrumb-item"><a href="#">Home</a></li>
      <li class="breadcrumb-item active">Form Elements</li>
    </ol>
  </div>
</div>
{% endif %} <!-- START JUMBOTRON -->
          <div class="jumbotron" data-pages="parallax" {% if mode =='horizontal_menu' %} data-scroll-element=".page-container" {% endif %}>
            <div class="{% if mode =='horizontal_menu' %} container p-l-0 p-r-0 {% else %} container-fluid {% endif %}  container-fixed-lg sm-p-l-0 sm-p-r-0">
              <div class="inner">
                <!-- START BREADCRUMB -->
                {% if breadcrumb != 'breadcrumb-alt' %} <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="#">Home</a></li>
                  <li class="breadcrumb-item active">Form Elements</li>
                </ol>
                <!-- END BREADCRUMB --> {% endif %}
                <div class="row">
                  <div class="col-xl-7 col-lg-6 ">
                    <!-- START card -->
                    <div class="card card-default">
                      <div class="card-body text-center">
                        <img class="image-responsive-height demo-mw-600" src="{# ASSETS #}/img/demo/form_hero.gif" alt="">
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
                        <h3>One of the most underestimated elements of design is typography. However, it’s
									critical in both print and web media. We Made it Perfect in both.</h3>
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
                <!-- START card -->
                <div class="card card-default">
                  <div class="card-header ">
                    <div class="card-title">
                      Option #one
                    </div>
                  </div>
                  <div class="card-body">
                    <h5>
							Pages default style
						</h5>
                    <form class="" role="form">
                      <div class="form-group form-group-default required ">
                        <label>Project</label>
                        <input type="email" class="form-control" required>
                      </div>
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group form-group-default required">
                            <label>First name</label>
                            <input type="text" class="form-control" required>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group form-group-default">
                            <label>Last name</label>
                            <input type="text" class="form-control">
                          </div>
                        </div>
                      </div>
                      <div class="form-group form-group-default required">
                        <label>Password</label>
                        <input type="password" class="form-control" required>
                      </div>
                      <div class="form-group  form-group-default required">
                        <label>Placeholder</label>
                        <input type="email" class="form-control" placeholder="ex: some@example.com" required>
                      </div>
                      <div class="form-group form-group-default disabled">
                        <label>Disabled</label>
                        <input type="email" class="form-control" value="You can put anything here" disabled>
                      </div>
                    </form>
                  </div>
                </div>
                <!-- END card -->
              </div>
              <div class="col-lg-6">
                <!-- START card -->
                <div class="card card-default">
                  <div class="card-header ">
                    <div class="card-title">
                      Option #two
                    </div>
                  </div>
                  <div class="card-body">
                    <h5>
							Traditional Standard Style
						</h5>
                    <form role="form">
                      <div class="form-group">
                        <label>Your name</label>
                        <span class="help">e.g. "Mona Lisa Portrait"</span>
                        <input type="email" class="form-control" required>
                      </div>
                      <div class="form-group">
                        <label>Password</label>
                        <span class="help">e.g. "Mona Lisa Portrait"</span>
                        <input type="password" class="form-control" required>
                      </div>
                      <div class="form-group">
                        <label>Email</label>
                        <span class="help">e.g. "some@example.com"</span>
                        <input type="email" class="form-control" placeholder="ex: some@example.com" required>
                      </div>
                      <div class="form-group">
                        <label>Placeholder</label>
                        <span class="help">e.g. "some@example.com"</span>
                        <input type="email" class="form-control" placeholder="ex: some@example.com" required>
                      </div>
                      <div class="form-group">
                        <label>Disabled</label>
                        <span class="help">e.g. "some@example.com"</span>
                        <input type="email" class="form-control" value="You can put anything here" disabled>
                      </div>
                    </form>
                  </div>
                </div>
                <!-- END card -->
              </div>
            </div>
          </div>
          <!-- END CONTAINER FLUID -->
          <!-- START CONTAINER FLUID -->
          <div class="{% if mode =='horizontal_menu' %} container  {% else %} container-fluid {% endif %}  container-fixed-lg">
            <div class="row">
              <div class="col-lg-4">
                <!-- START card -->
                <div class="card card-default">
                  <div class="card-header ">
                    <div class="card-title">Form Options
                    </div>
                    <div class="tools">
                      <a class="collapse" href="javascript:;"></a>
                      <a class="config" data-toggle="modal" href="#grid-config"></a>
                      <a class="reload" href="javascript:;"></a>
                      <a class="remove" href="javascript:;"></a>
                    </div>
                  </div>
                  <div class="card-body">
                    <h5>Form
                      <span class="semi-bold">Controls</span>
                    </h5>
                    <p>Adding on top of existing browser controls, Bootstrap includes other useful form components. Add text or buttons before or after any text-based input. Do note that select elements are not supported here.</p>
                    <br>
                    <div class="input-group transparent">
                      <div class="input-group-prepend">
                          <span class="input-group-text transparent"><i class="fa fa-instagram"></i>
                          </span>
                      </div>
                      <input type="text" placeholder="Username" class="form-control">
                    </div>
                    <br>
                    <div class="input-group">
                      <div class="input-group-prepend">
                          <span class="input-group-text primary"><i class="fa fa-align-justify"></i>
                          </span>
                      </div>
                      <input type="text" placeholder="Username" class="form-control">
                    </div>
                    <br>
                    <div class="input-group">
                      <input type="text" class="form-control">
                      <div class="input-group-append">
                          <span class="input-group-text primary"><i class="fa fa-align-justify"></i>
                          </span>
                      </div>
                    </div>
                    <br>
                    <form role="form">
                      <div class="form-group form-group-default input-group">
                        <div class="form-input-group">
                          <label>Project</label>
                          <input type="email" class="form-control">
                        </div>
                        <div class="input-group-append ">
                            <span class="input-group-text">Pages
                            </span>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
                <!-- END card -->
              </div>
              <div class="col-lg-8">
                <!-- START card -->
                <div class="card card-default">
                  <div class="card-header ">
                    <div class="card-title">Size options
                    </div>
                    <div class="tools">
                      <a class="collapse" href="javascript:;"></a>
                      <a class="config" data-toggle="modal" href="#grid-config"></a>
                      <a class="reload" href="javascript:;"></a>
                      <a class="remove" href="javascript:;"></a>
                    </div>
                  </div>
                  <div class="card-body">
                    <div class="row">
                      <div class="col-md-6">
                        <h5>Pages default control sizes
								</h5>
                        <p>Input form element sizes on defualt pages design, These are highly customizable. You can either chose the default or you can select Standard input elements</p>
                        <form role="form">
                          <div class="form-group form-group-default">
                            <label class="label-lg">Large</label>
                            <input type="text" placeholder=".input-lg" class="form-control input-lg">
                          </div>
                          <div class="form-group form-group-default">
                            <label>Medium</label>
                            <input type="text" placeholder="Default input" class="form-control">
                          </div>
                          <div class="form-group form-group-default">
                            <label class="label-sm">Small</label>
                            <input type="text" placeholder=".input-sm" class="form-control input-sm">
                          </div>
                        </form>
                      </div>
                      <div class="col-md-6">
                        <h5>Standard control sizes
								</h5>
                        <form role="form">
                          <div class="form-group m-b-10">
                            <input type="text" placeholder=".input-lg" class="form-control input-lg">
                          </div>
                          <div class="form-group m-b-10">
                            <input type="text" placeholder="Default input" class="form-control">
                          </div>
                          <div class="form-group m-b-10">
                            <input type="text" placeholder=".input-sm" class="form-control input-sm">
                          </div>
                        </form>
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
          <div class="{% if mode =='horizontal_menu' %} container  {% else %} container-fluid {% endif %}  container-fixed-lg">
            <!-- START card -->
            <div class="card card-default">
              <div class="card-header ">
                <div class="card-title">Checkbox controls
                </div>
                <div class="tools">
                  <a class="collapse" href="javascript:;"></a>
                  <a class="config" data-toggle="modal" href="#grid-config"></a>
                  <a class="reload" href="javascript:;"></a>
                  <a class="remove" href="javascript:;"></a>
                </div>
              </div>
              <div class="card-body">
                <div class="row">
                  <div class="col-lg-4">
                    <h5>Color
							<span class="semi-bold">Options</span>
						</h5>
                    <p>Our very own image-less pure CSS and retina compatible check box. These check boxes are customized and aviable in all boostrap color classes</p>
                    <br>
                    <div class="checkbox ">
                      <input type="checkbox" value="1" id="checkbox1">
                      <label for="checkbox1">Keep Me Signed in</label>
                    </div>
                    <div class="checkbox check-success  ">
                      <input type="checkbox" checked="checked" value="1" id="checkbox2">
                      <label for="checkbox2">I agree</label>
                    </div>
                    <div class="checkbox check-primary">
                      <input type="checkbox" value="1" id="checkbox3">
                      <label for="checkbox3">Mark</label>
                    </div>
                    <div class="checkbox check-info">
                      <input type="checkbox" value="1" id="checkbox4">
                      <label for="checkbox4">Steve Jobs</label>
                    </div>
                    <div class="checkbox check-warning">
                      <input type="checkbox" checked="checked" value="1" id="checkbox5">
                      <label for="checkbox5">Action</label>
                    </div>
                    <div class="checkbox check-danger">
                      <input type="checkbox" checked="checked" value="1" id="checkbox6">
                      <label for="checkbox6">Mark as read</label>
                    </div>
                  </div>
                  <div class="col-lg-4">
                    <h5>Shape
							<span class="semi-bold">Options</span>
						</h5>
                    <p>Bored with traditional boxed shape check boxes? Here is a circle one simply add the class
                      <code>.checkbox-circle</code>to change it</p>
                    <br>
                    <div class="checkbox  checkbox-circle">
                      <input type="checkbox" checked="checked" value="1" id="checkbox7">
                      <label for="checkbox7">Keep Me Signed in</label>
                    </div>
                    <div class="checkbox check-success checkbox-circle">
                      <input type="checkbox" value="1" id="checkbox8">
                      <label for="checkbox8">I agree</label>
                    </div>
                    <div class="checkbox check-primary checkbox-circle">
                      <input type="checkbox" checked="checked" value="1" id="checkbox9">
                      <label for="checkbox9">Mark</label>
                    </div>
                  </div>
                  <div class="col-lg-4">
                    <h5>State
							<span class="semi-bold">Options</span>
						</h5>
                    <p>These act the same way as normal HTML check boxes. Here are some states that</p>
                    <br>
                    <div class="checkbox check-success">
                      <input type="checkbox" disabled="disabled" value="check1" name="check" id="check1">
                      <label for="check1">Checkbox No. 1</label>
                      <br>
                      <input type="checkbox" disabled="disabled" checked="checked" value="check2" name="check" id="check2">
                      <label for="check2">Checkbox No. 2</label>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- END card -->
          </div>
          <!-- END CONTAINER FLUID -->
          <!-- START CONTAINER FLUID -->
          <div class="{% if mode =='horizontal_menu' %} container  {% else %} container-fluid {% endif %}  container-fixed-lg">
            <!-- START card -->
            <div class="card card-default">
              <div class="card-header ">
                <div class="card-title">Toggle controls
                </div>
                <div class="tools">
                  <a class="collapse" href="javascript:;"></a>
                  <a class="config" data-toggle="modal" href="#grid-config"></a>
                  <a class="reload" href="javascript:;"></a>
                  <a class="remove" href="javascript:;"></a>
                </div>
              </div>
              <div class="card-body">
                <div class="row">
                  <div class="col-lg-4">
                    <h5>Color
							<span class="semi-bold">Options</span>
						</h5>
                    <p>Pure CSS radio button with a cool animation. These are available in all primary colors in bootstrap
                    </p>
                    <br>
                    <div class="radio radio-success">
                      <input type="radio" value="yes" name="optionyes" id="yes">
                      <label for="yes">Agree</label>
                      <input type="radio" checked="checked" value="no" name="optionyes" id="no">
                      <label for="no">Disagree</label>
                    </div>
                  </div>
                  <div class="col-lg-4">
                    <h5>State
							<span class="semi-bold">Options</span>
						</h5>
                    <p>Use of different color opacity helps to destigues between different states such as disable
                    </p>
                    <br>
                    <div class="radio radio-primary">
                      <input type="radio" disabled="disabled" value="Disabled" name="Disabled" id="Disabled">
                      <label for="Disabled">Disabled</label>
                      <input type="radio" disabled="disabled" checked="checked" value="ADisabled" name="ADisabled" id="ADisabled">
                      <label for="ADisabled">Disabled</label>
                    </div>
                  </div>
                  <div class="col-lg-4">
                    <h5>Slide
							<span class="semi-bold">Toggle</span>
						</h5>
                    <p>A cool iOS slide toggle. These are cutomize for all boostrap colors</p>
                    <br>
                    <div class="row">
                      <div class="col-6">
                        <input type="checkbox" data-init-plugin="switchery" checked="checked" disabled="disabled" />
                        <input type="checkbox" data-init-plugin="switchery" checked="checked" />
                      </div>
                      <div class="col-6">
                        <input type="checkbox" data-init-plugin="switchery" data-size="small" data-color="primary" checked="checked" />
                        <input type="checkbox" data-init-plugin="switchery" data-size="large" data-color="primary" checked="checked" />
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- END card -->
          </div>
          <!-- END CONTAINER FLUID -->
          <!-- START CONTAINER FLUID -->
          <div class="{% if mode =='horizontal_menu' %} container  {% else %} container-fluid {% endif %}  container-fixed-lg">
            <!-- START card -->
            <div class="card card-default">
              <div class="card-header ">
                <div class="card-title">Dropdown Controls
                </div>
                <div class="tools">
                  <a href="javascript:;" class="collapse"></a>
                  <a href="#grid-config" data-toggle="modal" class="config"></a>
                  <a href="javascript:;" class="reload"></a>
                  <a href="javascript:;" class="remove"></a>
                </div>
              </div>
              <div class="card-body">
                <div class="row">
                  <div class="col-md-4">
                    <p>We've simplified our dropdown buttons by getting rid of the dedicated dropdown associated with them, this looks more clean and also available in all different colors</p>
                    <br>
                    <select class="cs-select cs-skin-slide" data-init-plugin="cs-select">
                      <option value="sightseeing">Web-safe</option>
                      <option value="business">Helvetica</option>
                      <option value="honeymoon">SegeoUI</option>
                    </select>
                    <br>
                    <br>
                    <p class="small">The button will be automatically sized according to the visible content size. Make sure there is enough room for the hidden content to show</p>
                  </div>
                  <div class="col-md-4">
                    <h5>
							Simple dropdowns
						</h5>
                    <p>These are highly customizable dropdowns that come with search option for use to search</p>
                    <form role="form">
                      <div class="form-group ">
                        <select class="full-width" data-init-plugin="select2">
                          <optgroup label="Alaskan/Hawaiian Time Zone">
                            <option value="AK">Alaska</option>
                            <option value="HI">Hawaii</option>
                          </optgroup>
                          <optgroup label="Pacific Time Zone">
                            <option value="CA">California</option>
                            <option value="NV">Nevada</option>
                            <option value="OR">Oregon</option>
                            <option value="WA">Washington</option>
                          </optgroup>
                          <optgroup label="Mountain Time Zone">
                            <option value="AZ">Arizona</option>
                            <option value="CO">Colorado</option>
                            <option value="ID">Idaho</option>
                            <option value="MT">Montana</option>
                            <option value="NE">Nebraska</option>
                            <option value="NM">New Mexico</option>
                            <option value="ND">North Dakota</option>
                            <option value="UT">Utah</option>
                            <option value="WY">Wyoming</option>
                          </optgroup>
                          <optgroup label="Central Time Zone">
                            <option value="AL">Alabama</option>
                            <option value="AR">Arkansas</option>
                            <option value="IL">Illinois</option>
                            <option value="IA">Iowa</option>
                            <option value="KS">Kansas</option>
                            <option value="KY">Kentucky</option>
                            <option value="LA">Louisiana</option>
                            <option value="MN">Minnesota</option>
                            <option value="MS">Mississippi</option>
                            <option value="MO">Missouri</option>
                            <option value="OK">Oklahoma</option>
                            <option value="SD">South Dakota</option>
                            <option value="TX">Texas</option>
                            <option value="TN">Tennessee</option>
                            <option value="WI">Wisconsin</option>
                          </optgroup>
                          <optgroup label="Eastern Time Zone">
                            <option value="CT">Connecticut</option>
                            <option value="DE">Delaware</option>
                            <option value="FL">Florida</option>
                            <option value="GA">Georgia</option>
                            <option value="IN">Indiana</option>
                            <option value="ME">Maine</option>
                            <option value="MD">Maryland</option>
                            <option value="MA">Massachusetts</option>
                            <option value="MI">Michigan</option>
                            <option value="NH">New Hampshire</option>
                            <option value="NJ">New Jersey</option>
                            <option value="NY">New York</option>
                            <option value="NC">North Carolina</option>
                            <option value="OH">Ohio</option>
                            <option value="PA">Pennsylvania</option>
                            <option value="RI">Rhode Island</option>
                            <option value="SC">South Carolina</option>
                            <option value="VT">Vermont</option>
                            <option value="VA">Virginia</option>
                            <option value="WV">West Virginia</option>
                          </optgroup>
                        </select>
                      </div>
                    </form>
                    <form class="m-t-10" role="form">
                      <div class="form-group form-group-default form-group-default-select2 required">
                        <label class="">Project</label>
                        <select class="full-width" data-placeholder="Select Country" data-init-plugin="select2">
                          <optgroup label="Alaskan/Hawaiian Time Zone">
                            <option value="AK">Alaska</option>
                            <option value="HI">Hawaii</option>
                          </optgroup>
                          <optgroup label="Pacific Time Zone">
                            <option value="CA">California</option>
                            <option value="NV">Nevada</option>
                            <option value="OR">Oregon</option>
                            <option value="WA">Washington</option>
                          </optgroup>
                        </select>
                      </div>
                    </form>
                  </div>
                  <div class="col-md-4">
                    <h5>
							Multi select
						</h5>
                    <p>Fancy multiselect option box. Customized for the anypreference</p>
                    <br>
                    <select id="multi" class="full-width" multiple>
                      <option value="Jim">Jim</option>
                      <option value="John">John</option>
                      <option value="Lucy">Lucy</option>
                    </select>
                    <form class="m-t-10" role="form">
                      <div class="form-group form-group-default form-group-default-select2">
                        <label>Project</label>
                        <select class=" full-width" data-init-plugin="select2" multiple>
                          <option value="Jim">Jim</option>
                          <option value="John">John</option>
                          <option value="Lucy">Lucy</option>
                        </select>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
            </div>
            <!-- END card -->
          </div>
          <!-- END CONTAINER FLUID -->
          <!-- START CONTAINER FLUID -->
          <div class="{% if mode =='horizontal_menu' %} container  {% else %} container-fluid {% endif %}  container-fixed-lg">
            <!-- START card -->
            <div class="card card-default">
              <div class="card-header ">
                <div class="card-title">Typehead
                </div>
                <div class="tools">
                  <a href="javascript:;" class="collapse"></a>
                  <a href="#grid-config" data-toggle="modal" class="config"></a>
                  <a href="javascript:;" class="reload"></a>
                  <a href="javascript:;" class="remove"></a>
                </div>
              </div>
              <div class="card-body">
                <div class="row">
                  <div class="col-md-4">
                    <p>You the following input will give suggestion as you type, you can fetch your list from an external data source.</p>
                    <br>
                    <div class="form-group">
                      <input class="typeahead form-control sample-typehead" type="text" placeholder="States of USA">
                    </div>
                    <br>
                    <br>
                    <p class="small">A useful feature in this typehead is autofill as you type</p>
                  </div>
                  <div class="col-md-4">
                    <h5>
							Supporting Different Styles
						</h5>
                    <p>Supports both attached form layouts and also traditional input text fields</p>
                    <div class="form-group">
                      <input class="typeahead form-control sample-typehead" type="text" placeholder="States of USA">
                    </div>
                    <form class="" role="form">
                      <div class="form-group form-group-default required typehead" id="sample-three">
                        <label>Countries</label>
                        <input class="typeahead form-control sample-typehead" type="text" placeholder="States of USA">
                      </div>
                    </form>
                  </div>
                  <div class="col-md-4">
                    <h5>
							Advance Options
						</h5>
                    <p>Want to customize how the data is display, you can do that too with tyephead custom templates</p>
                    <br>
                    <div class="form-group" id="custom-templates">
                      <input class="typeahead form-control" type="text" placeholder="Oscar winners for Best Picture">
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- END card -->
          </div>
          <!-- END CONTAINER FLUID -->
          <!-- START CONTAINER FLUID -->
          <div class="{% if mode =='horizontal_menu' %} container  {% else %} container-fluid {% endif %}  container-fixed-lg">
            <!-- START card -->
            <div class="card card-default">
              <div class="card-header ">
                <div class="card-title">Date Controls
                </div>
                <div class="tools">
                  <a class="collapse" href="javascript:;"></a>
                  <a class="config" data-toggle="modal" href="#grid-config"></a>
                  <a class="reload" href="javascript:;"></a>
                  <a class="remove" href="javascript:;"></a>
                </div>
              </div>
              <div class="card-body">
                <div class="row">
                  <div class="col-lg-4">
                    <h5>Simple Date
      							<span class="semi-bold">Picker</span>
      						</h5>
                    <p>Date picker is powered by boostrap date picker, this is customized in way that it suites our theme and design, Have a look!</p>
                    <br>
                    <div class="input-group date col-md-8 p-l-0">
                      <input type="text" class="form-control" id="datepicker-component">
                       <div class="input-group-append ">
                        <span class="input-group-text"><i class="fa fa-calendar"></i></span>
                      </div>
                    </div>
                    <br>
                    <div class="form-group form-group-default input-group col-md-10">
                      <div class="form-input-group">
                        <label>Check In</label>
                        <input type="email" class="form-control" placeholder="Pick a date" id="datepicker-component2">
                      </div>
                      <div class="input-group-append ">
                          <span class="input-group-text"><i class="fa fa-calendar"></i></span>
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-4">
                    <h5>Date
        							<span class="semi-bold">Range</span>
        						</h5>
                    <p>Date range can be set by the same plugin, this is use full when taking two dates at a time
                    </p>
                    <br>
                    <div class="input-daterange input-group" id="datepicker-range">
                      <input type="text" class="input-sm form-control" name="start" />
                      <div class="input-group-addon">to</div>
                      <input type="text" class="input-sm form-control" name="end" />
                    </div>
                    <br>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-calendar"></i></span>
                      </div>
                      <input type="text" name="reservation" id="daterangepicker" class="form-control" value="08/01/2013 1:00 PM - 08/01/2013 1:30 PM" />
                    </div>
                    <br>
                    <div class="row">
                      <div class="col-md-6">
                        <div class="input-group bootstrap-timepicker">
                          <input id="timepicker" type="text" class="form-control">
                          <div class="input-group-append">
                            <span class="input-group-text"><i class="pg-clock"></i></span>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-4">
                    <h5>Advance
          							<span class="semi-bold">Settings</span>
          						</h5>
                    <p>Some advance setting that you can do with this calender, like to start from years an disable sections of dates</p>
                    <br>
                    <div id="datepicker-embeded"></div>
                  </div>
                </div>
              </div>
            </div>
            <!-- END card -->
          </div>
          <!-- END CONTAINER FLUID -->
          <!-- START CONTAINER FLUID -->
          <div class="{% if mode =='horizontal_menu' %} container  {% else %} container-fluid {% endif %}  container-fixed-lg">
            <!-- START card -->
            <div class="card card-default">
              <div class="card-header ">
                <div class="card-title">Input helpers
                </div>
                <div class="tools">
                  <a href="javascript:;" class="collapse"></a>
                  <a href="#grid-config" data-toggle="modal" class="config"></a>
                  <a href="javascript:;" class="reload"></a>
                  <a href="javascript:;" class="remove"></a>
                </div>
              </div>
              <div class="card-body">
                <div class="row">
                  <div class="col-lg-6">
                    <h5>
							Input masks
						</h5>
                    <p>These assure the user will never enter invalid phone no, email or anything that has a pattern even without validations</p>
                    <br>
                    <div class="form-group">
                      <label>Date</label>
                      <span class="help">e.g. "25/12/2013"</span>
                      <input type="text" id="date" class="form-control">
                    </div>
                    <div class="form-group">
                      <label>Telephone</label>
                      <span class="help">e.g. "(324) 234-3243"</span>
                      <input type="text" id="phone" class="form-control">
                    </div>
                    <div class="form-group">
                      <label>Custom</label>
                      <span class="help">e.g. "23-4324324"</span>
                      <input type="text" id="tin" class="form-control">
                    </div>
                    <div class="form-group">
                      <label>Social Security Number</label>
                      <span class="help">e.g. "432-43-2432"</span>
                      <input type="text" id="ssn" class="form-control" placeholder="You can put anything here">
                    </div>
                  </div>
                  <div class="col-lg-6">
                    <h5>Input autonumeric
						</h5>
                    <p>Do you forget small things? here is something that helps to automatically placed forgotten dollar signs, decimal places and even comma separates and many more!</p>
                    <br>
                    <div class="form-group">
                      <label>Decimal place and comma separator</label>
                      <span class="help">e.g. "53,000.00"</span>
                      <input type="text" data-a-dec="." data-a-sep="," class="autonumeric form-control">
                    </div>
                    <div class="form-group">
                      <label>Weird way but works</label>
                      <span class="help">e.g. "45.000,00"</span>
                      <input type="text" data-a-dec="," data-a-sep="." class="autonumeric form-control">
                    </div>
                    <div class="form-group">
                      <label>Dollar prefix</label>
                      <span class="help">e.g. "$45.50"</span>
                      <input type="text" data-a-sign="$ " class="autonumeric form-control">
                    </div>
                    <div class="form-group">
                      <label>Range</label>
                      <span class="help">e.g. "0 - 9,999"</span>
                      <input type="text" data-v-min="0" data-v-max="9999" class="autonumeric form-control">
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- END card -->
          </div>
          <!-- END CONTAINER FLUID -->
          <!-- START CONTAINER FLUID -->
          <div class="{% if mode =='horizontal_menu' %} container  {% else %} container-fluid {% endif %}  container-fixed-lg">
            <!-- START card -->
            <div class="card card-default">
              <div class="card-header ">
                <div class="card-title">WYSIWYG editors
                </div>
                <div class="tools">
                  <a class="collapse" href="javascript:;"></a>
                  <a class="config" data-toggle="modal" href="#grid-config"></a>
                  <a class="reload" href="javascript:;"></a>
                  <a class="remove" href="javascript:;"></a>
                </div>
              </div>
              <div class="card-body no-scroll card-toolbar">
                <h5>Summernote</h5>
                <div class="summernote-wrapper">
                  <div id="summernote">Hello Summernote</div>
                </div>
              </div>
            </div>
            <!-- END card -->
          </div>
          <!-- END CONTAINER FLUID -->
          <!-- START CONTAINER FLUID -->
          <div class="{% if mode =='horizontal_menu' %} container  {% else %} container-fluid {% endif %}  container-fixed-lg m-t-20">
            <div class="row">
              <div class="col-lg-6">
                <!-- START card -->
                <div class="card card-default">
                  <div class="card-header ">
                    <div class="card-title">Tag Input
                    </div>
                    <div class="tools">
                      <a class="collapse" href="javascript:;"></a>
                      <a class="config" data-toggle="modal" href="#grid-config"></a>
                      <a class="reload" href="javascript:;"></a>
                      <a class="remove" href="javascript:;"></a>
                    </div>
                  </div>
                  <div class="card-body">
                    <p>Do you use tags to organize content on your site? This plugin will turn your boring tag list into a magical input that turns each tag into a style-able object with its own delete link.
                    </p>
                    <br>
                    <input class="tagsinput custom-tag-input" type="text" value="Amsterdam,Washington" />
                    <input class="tagsinput custom-tag-input" type="text" value="johnsmith@pages.io,janesmith@pages.io" />
                    <div class="form-group form-group-default required ">
                      <label>Tags</label>
                      <input class="tagsinput custom-tag-input" type="text" value="hello World, quotes, inspiration" />
                    </div>
                  </div>
                </div>
                <!-- END card -->
              </div>
              <div class="col-lg-6">
                <!-- START card -->
                <div class="card card-default">
                  <div class="card-header ">
                    <div class="card-title">
                      Drag n' drop uploader
                    </div>
                    <div class="tools">
                      <a class="collapse" href="javascript:;"></a>
                      <a class="config" data-toggle="modal" href="#grid-config"></a>
                      <a class="reload" href="javascript:;"></a>
                      <a class="remove" href="javascript:;"></a>
                    </div>
                  </div>
                  <div class="card-body no-scroll no-padding">
                    <form action="/file-upload" class="dropzone no-margin">
                      <div class="fallback">
                        <input name="file" type="file" multiple/>
                      </div>
                    </form>
                  </div>
                </div>
                <!-- END card -->
              </div>
            </div>
          </div>
          <!-- END CONTAINER FLUID -->
