      <!-- START CONTENT INNER -->
    {% if mode == 'horizontal_menu' %}
      <div class="container relative">
    {% endif %}
      <div class="map-controls">
        <div class="pull-left">
          <div class="btn-group btn-group-vertical" data-toggle="buttons-radio">
            <button id="map-zoom-in" class="btn btn-success btn-xs"><i class="fa fa-plus"></i>
            </button>
            <button id="map-zoom-out" class="btn btn-success btn-xs"><i class="fa fa-minus"></i>
            </button>
          </div>
        </div>
      </div>
  {% if mode == 'horizontal_menu' %}
    </div>
  {% endif %}
      <!-- Map -->
      <div class="map-container full-width full-height">
        <div id="google-map" class="full-width full-height"></div>
      </div>
      <!-- END CONTENT INNER -->