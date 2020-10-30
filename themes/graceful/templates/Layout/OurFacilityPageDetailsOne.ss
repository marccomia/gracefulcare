<% include BannerPage %>

 <!--Sidebar Page-->
<div class="sidebar-page">
  <div class="container">
    <div class="row clearfix">
      <!--Content Side-->
      <div class="col-md-12 col-sm-12 col-xs-12">
        <section class="blog-container">
          <article class="blog-post style-two">
            <div class="post-inner">
              <div class="post-header">
                <h2><strong>{$MTitle}</strong></h2>
              </div>
              <div class="row">
                <div class="col-md-6 col-sm-12 col-xs-12">
                    <div class="post-desc">
                      <div class="text text-justify">
                        {$Content}
                      </div>
                    </div>
                    <% if $BlackQoute %>
                      <blockquote>
                        {$BlackQoute}
                        <div class="quate"><i class="fa fa-quote-right" aria-hidden="true"></i></div>
                      </blockquote>
                    <% end_if %>

                </div>
                <div class="col-md-6">
                  <% if $OHphoto %>
                      {$Photo.CroppedImage(570,380)}
                  <% else %>
                    <img src="http://via.placeholder.com/600x400"  style="width:570px;height:380px;"/>
                  <% end_if %>
                </div>
              </div>
            </div>
          </article>
        </section>

        <% if $OHheader %>
          <!-- Our Home -->
          <section class="blog-container">
            <article class="blog-post style-two">
              <div class="post-inner">
                <div class="post-header">
                  <h2><strong>{$OHheader}</strong></h2>
                </div>
                <div class="row">
                  <div class="col-md-6 col-sm-12 col-xs-12">
                      <div class="post-desc">
                          <% if $OHcontent %>
                            <div class="text text-justify">
                              {$OHcontent}
                            </div>
                          <% end_if %>

                      </div>
                  </div>
                  <div class="col-md-6">
                    <% if $OHphoto %>
                        {$OHphoto.CroppedImage(570,380)}
                    <% else %>
                      <img src="http://via.placeholder.com/600x400"  style="width:570px;height:380px;"/>
                    <% end_if %>
                  </div>
                </div>
              </div>
            </article>
          </section>
        <% end_if %>

        <% if $OSheader %>
          <!-- Our Services -->
          <section class="blog-container">
            <article class="blog-post style-two">
              <div class="post-inner">
                <div class="post-header">
                  <h2><strong>{$OSheader}</strong></h2>
                </div>
                <div class="row">
                  <div class="col-md-6 col-sm-12 col-xs-12">
                    <div class="post-desc">
                      <% if $OScontent  %>
                        <div class="text text-justify">
                          {$OScontent}
                        </div>
                      <% end_if %>
                    </div>

                  </div>
                  <div class="col-md-6">
                    <% if $OSphoto %>
                        {$OSphoto.CroppedImage(570,380)}
                    <% else %>
                      <img src="http://via.placeholder.com/570x380"  style="width:570px;height:380px;"/>
                    <% end_if %>
                  </div>
                </div>
              </div>
            </article>
          </section>
        <% end_if %>

        <% if $OWTheader %>
          <!-- Wonderful Team -->
          <section class="blog-container">
            <article class="blog-post style-two">
              <div class="post-inner">
                <div class="post-header">
                  <h2><strong>{$OWTheader}</strong></h2>
                </div>
                <div class="row">
                  <div class="col-md-6 col-sm-12 col-xs-12">
                    <div class="post-desc">
                      <% if $OWTcontent %>
                      <div class="text text-justify">
                        {$OWTcontent}
                      </div>
                      <% end_if %>

                    </div>
                </div>
                <div class="col-md-6 col-sm-12 col-xs-12">
                  <% if $OHphoto %>
                    <% with $OWTphoto.SetWidth(570) %>
                      <img src="{$URL}" style="width:570px;height:380px;margin-left:15px;" class="pull-right owt-resize"/>
                    <% end_with %>
                  <% else %>
                    <img src="http://via.placeholder.com/570x380" style="width:570px;height:380px; margin-left:15px;" class="pull-right"/>
                  <% end_if %>
              </div>
              </div>
            </article>
          </section>
        <% end_if %>

      </div> <!--Content Side-->
    </div>
  </div>
</div>

<% include Linktocontact %>


<% include Location %>
