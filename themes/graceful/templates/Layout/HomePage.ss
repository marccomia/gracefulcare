<% include Carousel %>
	<!--Start call to action area-->
<section class="call-to-action-area">
    <div class="container">
	    <div class="row">
			    <!--Start single item-->
				<% if $OurFacilitiesDetailsOne %>
					<% loop OurFacilitiesDetailsOne %>
							<div class="col-md-3 ">
									<div class="single-item text-center">
											<a href="$Link">
													<h5>{$Title}</h5>
											</a>
											<div class="img-holder">
												$Photo.CroppedImage(370,200)
												<div class="overlay">
														<div class="box">
																<div class="content">
																		<a href="$Link"><i class="fa fa-link" aria-hidden="true"></i></a>
																</div>
														</div>
												</div>
											</div>
											<div class="text-holder">
													{$Content.ContextSummary(100)}
											</div>
									</div>
							</div>
					<% end_loop %>
				<% end_if %>
				<% if $OurFacilitiesDetails %>
					<% loop OurFacilitiesDetails %>
						<div class="col-md-3 ">
							<div class="single-item text-center">
									<a href="$Link">
											<h5>{$Title}</h5>
									</a>
									<div class="img-holder">
											$Photo.CroppedImage(370,200)
											<div class="overlay">
													<div class="box">
															<div class="content">
																	<a href="$Link"><i class="fa fa-link" aria-hidden="true"></i></a>
															</div>
													</div>
											</div>
									</div>
									<div class="text-holder">
											{$Content.ContextSummary(100)}
									</div>
							</div>
						</div>
					<% end_loop %>
				<% end_if %>
         <!--End single item-->
      </div>
    </div>
	</section>
	<!--End call to action area-->

<section class="content">
	<div class="container" style="padding-bottom:40px;">
<div style="text-align: center; color: #222222; font-size: large;">
<h1><strong>Compassionate Aged Care in Auckland &amp; Surrounds</strong></h1>
<p>&nbsp;</p>
<p style="font-size: large;">Do you have a loved one who is suffering from dementia? Maybe you’re considering a retirement home or looking into assisted living for your own future? Whatever the case may be, Graceful Care Group are here to help. We’re an independent, family owned and oriented business supplying care to clients of Auckland, <a href="http://gracefulcare.co.nz/care-and-support/dementia-care/herne-bay">Herne Bay</a> and surrounding areas on the North Shore. Whether you’re interested in rest home, dementia or <a href="http://gracefulcare.co.nz/care-and-support/help-at-home/">in-home aged care,</a> we have a variety of options to suit people of all kinds of needs from all walks of life. Get in touch with us to discuss our options, and see how our Auckland retirement villages can suit your needs today.</p>
<p>&nbsp;</p>
<h2><strong>Providing dementia retirement homes & in-home assisted living in Auckland</strong></h2>
<p>&nbsp;</p>
<p style="font-size: large;">At Graceful Care Group, we’re a family. We’re committed to providing our clients with compassionate, dignified aged care facilities. We also understand that no two situations are alike and ensure we tailor our care to the individual, creating a comfortable assisted living environment for Auckland and beyond.</p>
<p style="font-size: large;">Some of the assisted living services we provide include:</p>
<p>&nbsp;</p>
<h3 style="font-size: xx-large;"><strong><a href="http://gracefulcare.co.nz/care-and-support/dementia-care">Dementia Care</a></strong></h3>
<p>&nbsp;</p>
<p style="font-size: large;">We offer dementia and rest homes to clients in Auckland who need around-the-clock support and need to be in a safe, secure environment surrounded by people who will make them feel comfortable. Shelly Beach in Central Auckland and Shoal Bay on the <a href="http://gracefulcare.co.nz/care-and-support/dementia-care/north-shore">North Shore</a> are our specialist dementia homes. All of the staff are committed and passionate to ensuring a caring environment.</p>
<p>&nbsp;</p>
<h3 style="font-size: xx-large;"><strong><a href="http://gracefulcare.co.nz/care-and-support/long-term-care">Long-Term Care</a></strong></h3>
<p>&nbsp;</p>
<p style="font-size: large;">We also offer long-term care for clients who may not be suffering from dementia but still need a high level of assistance. Our team at these facilities provide residents with nutritious, home-cooked meals, personalised rooms and enjoyable activities that everyone can partake in. All of our plans are fully customisable for each individual to ensure everyone is receiving the appropriate level of care.</p>
<p>&nbsp;</p>
<h3 style="font-size: xx-large;"><strong><a href="http://gracefulcare.co.nz/care-and-support/short-term-respite-care">Short-Term Respite</a></strong></h3>
<p>&nbsp;</p>
<p style="font-size: large;">If you take care of your family member and need a helping hand, the team at Graceful Care Group can help. We provide short-term respite for families in need. Whether your attentions are focused on something else or you&rsquo;re in need of some personal self-care, we can step in. We offer a wide range of services and are completely flexible in our approach.</p>
<p>&nbsp;</p>
<h3 style="font-size: xx-large;"><strong><a href="http://gracefulcare.co.nz/care-and-support/help-at-home">Help at Home</a></strong></p>
<p>&nbsp;</p>
<p style="font-size: large;">Do you live at home and need some extra help? Or do you have a family member you&rsquo;re worried about? If they&rsquo;re comfortable living in their own space, there&rsquo;s no need to upheave them. Our friendly team can come to them, providing in home care and assisted living services, ranging from cooking, cleaning and grooming to outings, shopping and errands.</p>
<p>&nbsp;</p>
<h2><strong>Contact us for aged care in Auckland today</strong></h2>
<p>&nbsp;</p>
<p style="font-size: large;">Whether you’re interested in discussing rest home options for a family member or would like to enquire about assisted living in Auckland for yourself, Graceful Care Group look forward to assisting you with your inquiry. Simply give us a call on 0800 767 343 today and we’ll be happy to help you find the care you and your family members require.</p>
</div>
	</div>
</section>

	<!--Start know about area-->

<section class="know-about-area">
	    <div class="container">
        <% if $OurStory %>
          <% loop $OurStory %>
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
                               <% if $ExtPhoto %>
                                   $ExtPhoto.CroppedImage(1920,1320)
                               <% else %>
                                   <img src="http://via.placeholder.com/350x200" alt="no-mage">
                               <% end_if %>
                             </div>
                         </div>
                         <!--End single item-->
                     </div>
                 </div>
             </div>
             <div class="col-lg-6 col-md-12">
                 <div class="text-holder">
                     <div class="top-text text-justify text-overflow">
                         {$Content}
                     </div>
                     <br />
                     <div class="link_btn">
                         <a href="{$Link}" class="thm-btn style-2">read more</a>
                     </div>
                 </div>
             </div>
           </div>
          <% end_loop %>
        <% end_if %>
	    </div>
	</section>
		<!--End know about area-->


<% include HomePageParallax %>

<section class="our-services">
		<div class="container">
      <div class="sec-title">
          <h2>Care & Support<span> Options</span></h2>
      </div>
     	<div class="item-list">
     		<div class="row">
            <!--Start single item-->
            <% if $CareSupportsDetails %>
              <% loop $CareSupportsDetails %>
  							<div class="col-md-3">
  									<div class="single-item text-center">

  											<div class="img-holder">
  												<% with $Photo.SetWidth(370) %>
  													<img class="img-rounded" src="$URL" alt="" width="$Width" height="200" alt="$Title"/>
  												<% end_with %>

  													<div class="overlay">
  															<div class="box">
  																	<div class="content">
  																			<a href="$Link"><i class="fa fa-link" aria-hidden="true"></i></a>
  																	</div>
  															</div>
  													</div>
  											</div>
  											<div class="text-holder">
  												<a href="$Link">
  														<h5>{$Title}</h5>
  												</a>
  												<p>	{$Content.ContextSummary(200)}</p>
  											</div>
  									</div>
  							</div>
  						<% end_loop %>
            <% end_if %>
            <!--End single item-->

        </div>
     	</div>
		</div>
	</section>
<!--call-to-action section-->
<% include Linktocontact %>
<% include MapSection %>
