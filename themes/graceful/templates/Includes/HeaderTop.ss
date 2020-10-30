<div class="header-top">
  <div class="container clearfix">
    <!--Top Left-->
    <div class="top-left pull-left">
      <ul class="links-nav clearfix">
        <li><a href="tel:{$SiteConfig.TelNum}"><span class="fa fa-phone"></span> Call: {$SiteConfig.TelNum} </a></li>
        <li><a href="mailto:{$SiteConfig.EmailAdd}"><span class="fa fa-envelope"></span>Email: {$SiteConfig.EmailAdd} </a></li>
      </ul>
    </div>
    <!--Top Right-->
    <div class="top-right pull-right">

      <div class="social-links clearfix">
        <% if getCareers %>
          <% loop getCareers %>
                 <a href="$Link" class="button-style-one">{$Title}</a>

          <% end_loop %>
        <% end_if %>
        <% with $SiteConfig %>
          <% if $Facebook %>
              <a href="{$Facebook}"><span class="fa fa-facebook-f"></span></a>
          <% end_if %>
        <% end_with %>
      </div>
    </div>
  </div>
</div>
