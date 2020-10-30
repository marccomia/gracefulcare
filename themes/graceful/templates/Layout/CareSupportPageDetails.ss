<% include BannerPage %>

<section class="service-single">
  <div class="container">
    <div class="row">
      <div class="col-md-4 col-sm-12 col-xs-12">
        <div class="service-sidebar">
          <ul class="service-catergory">
            <% loop $CareSupportsDetails %>
              <li class="$LinkingMode"><a href="$Link"><span class="icon-left fa fa-chevron-right"></span>{$Title}</a></li>
            <% end_loop %>
          </ul>
        </div>
      </div>
      <div class="col-md-8 col-sm-12 col-xs-12">
        <div class="outer-box">
          <div class="img-box">
            <% if $Photo %>
                {$Photo.SetWidth(770)}
              <% else %>
                <img src="http://via.placeholder.com/770x400" alt="no-image">
            <% end_if %>
          </div>
            <div class="content-box">
              <div class="sec-title">
                <h4>{$CStitle}</h4>
              </div>

              <div class="text">
                {$Content}
              </div>
            </div>
        </div>
      </div>
    </div>
  </div>
</section>
