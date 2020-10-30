<% include BannerPage %>

<!--Start know about area-->
<section class="know-about-area">
    <div class="container">

          <div class="sec-title">
           <h2><span>{$SubTitle}</span> </h2>
         </div>
         <div class="row">
             <div class="col-lg-6 col-md-12">
                 <div class="img-holder">
                     <div class="row">
                         <!--Start single item-->
                         <div class="col-md-12 col-sm-12 col-xs-12">
                             <div class="singel-item">
                               $OurStoryPhoto.SetSize(570,444)
                             </div>
                         </div>
                         <!--End single item-->
                     </div>
                 </div>
             </div>
             <div class="col-lg-6 col-md-12">
                 <div class="text-holder">
                     <div class="top-text">
                         {$Content}
                     </div>
                 </div>
             </div>
         </div>
      </div>
</section>

<!--Paralax Style One-->
<section class="parallax-style-one" style="background-image:url($ParallaxOne.URL);">
  <div class="container">

      <div class="row">
        <section class="padding-10">
          <div class="qoute-section-post">
            {$Slogan}
          </div>
        </section>
      </div>
  </div>
</section>

<%-- Why Choose Us --%>
<section class="know-about-area">
  <div class="container">
    <div class="sec-title">
        <h2>Why <span>Choose Us?</span> </h2>

    </div>
    <div class="row">
      <div class="col-md-12 col-xs-12">
        <ul class="media-list">
          <li class="media">
            <div class="media-left">
                <img src="$ThemeDir/images/icons/GGIcon_Heart_Maroon.png" style="width:100px;height:100px;" alt="heart"/>
              </a>
            </div>
            <div class="media-body">
              <h2 class="media-heading"><strong>We care about you!</strong></h2>
              <p class="lead text-justify">
                Here at Graceful Care we value you, your time and what ‘s happening in your
                life right now. As your first point of contact, you will speak directly to the
                Founder and Director of the Graceful Care Group, Rose Cooper. She will guide you
                through a full range or options, either over the phone, by email or by visiting
                you in your home. Her knowledge, expertise and kind, compassionate
                nature will ensure you are well informed and feel confident in your decision making.
              </p>
          </li>
          <hr>
          <li class="media">
            <div class="media-left">
              <img src="$ThemeDir/images/icons/GGIcon_ThumbsUp_Maroon.png" style="width:100px;height:100px;" alt="thumbsup"/>

            </div>
            <div class="media-body">
              <h2 class="media-heading"><strong>A great reputation</strong></h2>
              <p class="lead text-justify">
                From the inception of Graceful Care In-home in 2005, we have built an outstanding
                name for ourselves in providing care that is both thoughtful and thorough,
                remaining steadfast in our core values of Trust, Respect, Dignity & Integrity.
                Our clients and their families are what matter to us! See what some of them have
                to say about us in the testimonial section below.
              </p>
          </li>
		  <hr>
		  <li class="media">
            <div class="media-left">
              <img src="$ThemeDir/images/icons/GGIcon_Star_Maroon.png" style="width:100px;height:100px;" alt="thumbsup"/>

            </div>
            <div class="media-body">
              <h2 class="media-heading"><strong>A full range of services</strong></h2>
              <p class="lead text-justify">
                As your needs may change we offer a range of services to help you,
                from in-home care to dementia specialised care. After building a positive relationship with
                you and your family, Rose is able to offer relevant advice on what may suit
                your situation best. You won’t have the worry of talking to various people across
                different agencies – dealing with just one genuine person will make the process easy.
              </p>
          </li>	  
          <hr>
          <li class="media">
            <div class="media-left">
              <img src="$ThemeDir/images/icons/GGIcon_Trophy_Maroon.png" style="width:100px; height:100px;" alt="trophy"/>
            </div>
            <div class="media-body">
              <h2 class="media-heading"><strong>An exceptional team</strong></h2>
              <p class="lead text-justify">
                Quality care comes from quality people; we pride ourselves on our exceptional team. Police vetted
                and hand-picked by Rose, they exhibit the same kind, empathetic compassion for
                the aged community. Each of our staff contribute to our thriving Graceful community,
                bringing with them experience and expertise in their fields, as well as their own
                individual life experiences. <br>
                Our team are a dedicated bunch, most of whom have been with us for many years.
                Familiar faces provide stability and continuity of care, building confidence,
                trust and strengthening relationships with our clients.
              </p>
          </li>
        </ul>

      </div>
    </div> <!--row -->
  </div>
</section>

<!-- testimonials -->
<section class="testimonials-section sec-padd">
    <div class="container">
        <div class="sec-title center">
            <h2>Testimonials</h2>
        </div>

        <!--Slider-->
        <div class="testimonials-slider column-carousel three-column">
            <!--Slide-->
            <% loop $Testimonials %>
              <% if $Name && $Position %>
                <article class="slide-item">
                    <div class="quote"><span class="icon-left"></span></div>
                    <div class="author">
                        <div class="img-box">
                            <a href="{$Link}">
                              <% if $Tphoto %>
                                <% with $Tphoto.SetWidth(80) %>
                                  <img class="img-rounded" src="$URL" alt="" width="$Width" height="$Height" style="max-width:80px" alt="$Title"/>
                                <% end_with %>
                              <% else %>
                                <img style="max-width:80px;"
                                  src="http://www.ffpcoalition.com/wp-content/uploads/2014/04/blank-profile.jpg" alt="no-image">
                              <% end_if %>
                            </a>
                        </div>
                        <h4>{$Name}</h4>
                        <a href="{$Link}"><p>{$Position}</p></a>
                    </div>
                    <div class="slide-text">
                        <p>{$Message.ContextSummary(300)}</p>
                    </div>
                </article>
              <% end_if %>
            <% end_loop %>
        </div>
    </div>
</section>






<% include MapSection %>
