
<section class="call-to-action subscribe-intro">
  <div class="container">
    <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12 text-center">
        <% loop getContact %>
          <a href="$Link" class="bigfont-size-link">{$LinkToContact}</a>
        <% end_loop %>
      </div>
    </div>
  </div>
</section>
