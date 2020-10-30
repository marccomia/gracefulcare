<footer class="footer call-to-action bg-style">
  <div class="container">
    <div class="footer-upper">

      <div class="row">
        <div class="item col-md-3 col-sm-6">
          <div class="footer-widget about-widget">
            <% loop $OurStory %>
                <h3 class="title">{$Title}</h3>
                {$Content.ContextSummary(300)}
            <% end_loop %>
            <div class="link_btn">
              <% loop getFAQ %>
                 <a href="$Link" class="button-style-one">FAQ</a>
              <% end_loop %>
            </div>
          </div>
        </div>

        <div class="item col-md-3 col-sm-6">
          <div class="footer-widget our-service">
            <% loop $CareSupports %>
            <h3 class="title">{$TItle}</h3>
            <% end_loop %>
            <ul>
              <% if $CareSupportsDetails %>
                <% loop $CareSupportsDetails %>
                  <li class="$LinkingMode">
                    <a href="$link" title="$Title.XML">{$Title}</a>
                  </li>
                <% end_loop %>
              <% end_if %>
            </ul>
          </div>
        </div>

        <div class="item col-md-3 col-sm-6">
          <div class="footer-widget our-service">
            <% loop $OurFacilities %>
                  <h3 class="title">{$Title}</h3>
            <% end_loop %>
            <ul>
              <% if $OurFacilitiesDetailsOne %>
                <% loop $OurFacilitiesDetailsOne %>
                    <li class="$LinkingMode"><a href="$Link">{$Title}</a></li>
                <% end_loop %>
              <% end_if %>
              <% if $OurFacilitiesDetails  %>
                <% loop $OurFacilitiesDetails %>
                    <li class="$LinkingMode"><a href="$Link">{$Title}</a></li>
                <% end_loop %>
              <% end_if %>
            </ul>
          </div>
        </div>

        <div class="item col-md-3 col-sm-6">

        <div class="footer-widget gallery-widget">
          <h3 class="title">gallery</h3>
          <div class="thumbs-outer clearfix">

                <%-- <% loop $HomePageGalleries %> --%>
                  <% loop $GetGalleriesPhoto %>
                    <figure class="image">
                      {$GalleryPhoto.CroppedImage(80,80)}
                      <%-- <img src="{$GalleryPhoto.URL}" with="80" height="80" alt=""> --%>
                      <a href="{$GalleryPhoto.URL}" target="_blank" class="link-image">
                        <span class="fa fa-link"></span>
                      </a>
                    </figure>
                  <% end_loop %>


              <%-- <% end_loop %> --%>
              </div>
          </div>

        </div>
      </div>
    </div>
    <!--Footer Bottom-->
    <div class="footer-bottom">
      <div class="pull-left"><div class="copyright-text">Copyright @ {$SiteConfig.Title} {$Now.Year}. All Rights Reserved </div></div>
      <div class="pull-right">
        <div class="social-links pull-right">
          <% with $SiteConfig %>
            <% if $Facebook %>
              <a href="$Facebook"><span class="fa fa-facebook-f"></span></a>
            <% end_if %>
          <% end_with %>
        </div>
      </div>
    </div>

  </div>
</footer>
