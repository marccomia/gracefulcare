<!--Page Title-->
<section class="page-title hidden-sm hidden-xs" style="background: url(<% if $BannerPhoto %>{$BannerPhoto.URL})no-repeat;
  <% else %>
    http://via.placeholder.com/1920x505
  <% end_if %>)no-repeat;">
  <div class="container">
      <div class="row clearfix">
        <div class="col-md-6 col-sm-6 col-xs-12 pull-left">
          <h1><stron>{$BannerHeader}</strong></h1>
          <p><em>{$BannerText}</em></p>
        </div>

        <div class="overlay"></div>
        </div>
    </div>
</section>
<!--Page Title Ends-->
