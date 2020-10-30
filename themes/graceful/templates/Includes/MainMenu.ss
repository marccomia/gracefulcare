<section class="mainmenu-area stricky" <% if $Title == "Contact Us" || $Title == "Careers" %> style="background:rgb(101, 29, 50);" <% end_if %>>
    <div class="container">
      <div class="row">
        <div class="col-md-4 col-sm-6">
          <div class="main-logo">
            <a href="$AbsoluteURL">{$SiteConfig.Logo.SetWidth(250)}</a>
          </div>
        </div>
        <div class="col-md-6 menu-column">
          <nav class="main-menu">
              <div class="navbar-header">
                  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                      <span class="icon-bar"></span>
                      <span class="icon-bar"></span>
                      <span class="icon-bar"></span>
                      <span class="icon-bar"></span>
                  </button>
              </div>
              <div class="navbar-collapse collapse clearfix">
                  <ul class="navigation clearfix">
                    <% control  $Menu(1) %>
                        <% if Children %>
                          <li class="dropdown"><a href="$Link" title="$Title.XML">$Title</a>
                           <ul>
                             <% control Children %>
                                 <li class="$LinkingMode"><a href="$Link" title="$Title.XML">$Title</a></li>
                             <% end_control %>
                           </ul>
                        <% else %>
                          <li class="$LinkingMode"><a href="$Link" title="$Title.XML">$Title</a></li>
                        <% end_if %>

                     <% end_control %>

   									</li>
                  </ul>

                  <ul class="mobile-menu clearfix">
                      <% loop $Menu(1) %>
                           <li class="$LinkingMode"><a href="$Link" title="$Title">$Title</a></li>
                      <% end_loop %>
                  </ul>
              </div>
          </nav>
        </div>
        <div class="col-md-2 col-sm-6">
          <div class="right-area">
             <div class="link_btn float_right">
               <% loop  $getContact %>
                <a href="$Link" class="thm-btn box-btn">{$Title}</a>
               <% end_loop %>
             </div>
          </div>
        </div>
      </div>

    </div>
</section>
