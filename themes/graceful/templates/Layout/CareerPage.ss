
<!--Sidebar Page-->
<div class="sidebar-page">
 <div class="container contact_us">
   <div class="row clearfix">
     <div class="col-md-12 col-sm-12 col-xs-12">
       <section class="blog-container">
         <div class=" sec-title text-center">
             <h2><span>{$Title}</span></h2>
         </div>
         <% if $Careers %>
           <% loop $Careers %>
             <article class="blog-post style-two">
               <div class="post-inner">
                 <div class="post-header">
                   <h2>{$Title}</h2>
                   <ul class="post-info">
                     <li><span class="flaticon-quality"></span>&ensp; {$ODate.Format('d F Y')}</li>
                     <% if CDate %><span class="flaticon-quality"></span>&ensp; {$CDate.Format('d F Y')}</li><% end_if %>
                   </ul>
                 </div>
                 <div class="post-desc">
                   <div class="text">
                     {$Content}
                   </div>

               </div>
               </div>
             </article>

             <hr />
           <% end_loop %>
         <% end_if %>
       </section>
     </div>
   </div>
 </div>
</div>
<% include Location %>
