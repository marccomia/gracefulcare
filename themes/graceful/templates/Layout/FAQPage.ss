<% include BannerPage %>

<!--Featured Section-->
<section class="bg-color-black featured-inner">
  <div class="container">
    <div class="sec-title">
      <h2>Frequently Asked  <span>Questions</span></h2>

    </div>
    <div class="row clearfix">
      <!--Accordion Column-->
      <article class="col-md-12 column">

        <!--Accordion Box-->
        <ul class="accordion-box style-two">
            <% loop $Faqs %>

              <li class="block">
                <div class="acc-btn">
                  <div class="icon-outer">
                    <span class="icon fa icon-minus flaticon-minus-sign2"></span>
                    <span class="icon icon-plus flaticon-plussign22"></span>
                  </div>{$Header}</div>
                <div class="acc-content">
                    <div class="content">
                      {$Message}
                    </div>
                </div>
              </li>

            <% end_loop %>
        </ul>
      </article>

    </div>
  </div>
</section>
