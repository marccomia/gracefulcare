<!--Page Title-->
    <section class="page-title">
      <div class="container">
          <div class="row clearfix">
            <div class="col-md-6 col-sm-6 col-xs-12 pull-left">
              <h1>Testimonial</h1>
              <p>Proud to be Graceful </p>
            </div>
            <div class="overlay"></div>
          </div>
        </div>
    </section>
<!--Page Title Ends-->

<% if $Testimonial %>
  <% with $Testimonial %>
    <!--Start know about area-->
    <section class="know-about-area">
        <div class="container">
              <div class="sec-title">
               <h2><span>{$Name}</span> </h2>
             </div>
             <div class="row">
				<% if $Tphoto %>
                 <div class="col-lg-6 col-md-12">
                     <div class="img-holder">
                         <div class="row">
                             <!--Start single item-->
                             <div class="col-md-12 col-sm-12 col-xs-12">
                                 <div class="singel-item">
                                   $Tphoto.CroppedImage(400,400)
                                 </div>
                             </div>
                             <!--End single item-->
                         </div>
                     </div>
                 </div>
                 <div class="col-lg-6 col-md-12">
                     <div class="text-holder">
                         <div class="top-text">
							 <p class="lead">{$Message}</p>
                         </div>
                     </div>
                 </div>
				<% else %>
					<div class="col-lg-12 col-md-12 col-sm-12">
                     <div class="text-holder">
                         <div class="top-text">
							 <p class="lead">{$Message}</p>
                         </div>
                     </div>
                 </div>
				<% end_if %>	
             </div>
          </div>
    </section>
  <% end_with %>
<% end_if %>
