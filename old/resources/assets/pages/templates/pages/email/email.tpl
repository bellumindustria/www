
  <div class="split-view">
    <!-- START SPLIT LIST VIEW -->
    <div class="split-list">
      <a class="list-refresh" href="#"><i class="fa fa-refresh"></i></a>
      <div data-email="list" class=" {# LIST_EMAIL_CLASS #}">
        <!-- START EMAIL LIST SORTED BY DATE -->
        <!-- END EMAIL LIST SORTED BY DATE -->
      </div>
    </div>
    <!-- END SPLIT LIST VIEW -->
    <!-- START SPLIT DETAILS -->
    <div data-email="opened" class="split-details">
      <div class="no-result">
        <h1>No email has been selected</h1>
      </div>
      <div class="email-content-wrapper" style="display:none">
        <div class="actions-wrapper menuclipper bg-master-lightest">
          <ul class="actions menuclipper-menu no-margin p-l-20 ">
            <li class="d-lg-none d-xl-none sm-no-padding">
              <a href="#" class="split-list-toggle"><i class="fa fa-angle-left"></i> All Inboxes</a>
            </li>
            <li class="no-padding "><a href="#" class="text-info">Reply</a>
            </li>
            <li class="no-padding "><a href="#">Reply all</a>
            </li>
            <li class="no-padding "><a href="#">Forward</a>
            </li>
            <li class="no-padding "><a href="#">Mark as read</a>
            </li>
            <li class="no-padding "><a href="#" class="text-danger">Delete</a>
            </li>
          </ul>
          <div class="clearfix"></div>
        </div>
        <div class="email-content">
          <div class="email-content-header">
            <div class="thumbnail-wrapper d48 circular bordered">
              <img width="40" height="40" alt="" data-src-retina="assets/img/profiles/avatar2x.jpg" data-src="assets/img/profiles/avatar.jpg" src="assets/img/profiles/avatar2x.jpg">
            </div>
            <div class="sender inline m-l-10">
              <p class="name no-margin bold">
              </p>
              <p class="datetime no-margin"></p>
            </div>
            <div class="clearfix"></div>
            <div class="subject m-t-20 m-b-20 semi-bold">
            </div>
            <div class="fromto">
              <div class="pull-left">
                <div class="btn-group dropdown-default">
                  <a class="btn dropdown-toggle btn-small btn-rounded" data-toggle="dropdown" href="#">
                                  David Nester
                                  </a>
                  <div class="dropdown-menu">
                    <a class="dropdown-item" href="#">Action</a>
                    <a class="dropdown-item" href="#">Friend</a>
                    <a class="dropdown-item" href="#">Report</a>
                  </div>
                </div>
                <label class="inline">
                  <span class="muted">&nbsp;&nbsp;to</span>
                  <span class=" small-text">johnsmith@skyace.com</span>
                </label>
              </div>
            </div>
          </div>
          <div class="clearfix"></div>
          <div class="email-content-body m-t-20">
          </div>
          <div class="wysiwyg5-wrapper b-a b-grey m-t-30">
            <textarea class="email-reply" placeholder="Reply"></textarea>
          </div>
        </div>
      </div>
    </div>
    <!-- END SPLIT DETAILS -->
    <!-- START COMPOSE BUTTON FOR TABS -->
    <div class="compose-wrapper d-md-none">
      <a class="compose-email text-info pull-right m-r-10 m-t-10" href="email_compose.html"><i class="fa fa-pencil-square-o"></i></a>
    </div>
    <!-- END COMPOSE BUTTON -->
  </div>
