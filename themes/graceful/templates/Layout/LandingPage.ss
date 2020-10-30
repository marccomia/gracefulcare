<% include BannerPage %>

<!--Start know about area-->
<section class="know-about-area">
    <div class="container">

          <div class="sec-title">
           <h2>{$Title} </h2>
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