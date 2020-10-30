<!--Start rev slider wrapper-->
		<section class="rev_slider_wrapper">
			<div id="slider1" class="rev_slider"  data-version="5.0">
				<ul>
					<% loop $Carousels %>
							<li data-transition="fade">
								<% if  $Photo %>
									<% with $Photo.SetWidth(1920) %>
										<img src="$URL" alt="" width="$Width" height="$Height" data-bgposition="top center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="1" />
									<% end_with %>
									<% else %>
										<img src="$http://via.placeholder.com/1920x505" alt="" data-bgposition="top center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="1" />
								<% end_if %>

								<div class="tp-caption  tp-resizeme"
									data-x="left" data-hoffset="-5"
									data-y="top" data-voffset="310"
									data-transform_idle="o:1;"
									data-transform_in="x:[-175%];y:0px;z:0;rX:0;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0.01;s:3000;e:Power3.easeOut;"
									data-transform_out="s:1000;e:Power3.easeInOut;s:1000;e:Power3.easeInOut;"
									data-mask_in="x:[100%];y:0;s:inherit;e:inherit;"
									data-splitin="none"
									data-splitout="none"
									data-start="700">
									<div class="slide-content-box">
										<h1>$HeadingOne</h1>
									</div>
								</div>
								<% if $HeadingTwo %>
									<div class="tp-caption  tp-resizeme"
										data-x="left" data-hoffset="-5"
										data-y="top" data-voffset="380"
										data-transform_idle="o:1;"
										data-transform_in="x:[-175%];y:0px;z:0;rX:0;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0.01;s:3000;e:Power3.easeOut;"
										data-transform_out="s:1000;e:Power3.easeInOut;s:1000;e:Power3.easeInOut;"
										data-mask_in="x:[100%];y:0;s:inherit;e:inherit;"
										data-splitin="none"
										data-splitout="none"
										data-start="700">
										<div class="slide-content-box">
											<h1><span>$HeadingTwo</span></h1>
										</div>
									</div>
								<% end_if %>

								<div class="tp-caption  tp-resizeme"
									data-x="left" data-hoffset="25"
									data-y="top" data-voffset="470"
									data-transform_idle="o:1;"
									data-transform_in="x:[-175%];y:0px;z:0;rX:0;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0.01;s:3000;e:Power3.easeOut;"
									data-transform_out="s:1000;e:Power3.easeInOut;s:1000;e:Power3.easeInOut;"
									data-mask_in="x:[100%];y:0;s:inherit;e:inherit;"
									data-splitin="none"
									data-splitout="none"
									data-start="700">
									<div class="slide-content-box">
										<p>{$Script}</p>
									</div>
								</div>
							</li>
					<% end_loop %>
				</ul>
			</div>
		</section>
		<!--End rev slider wrapper-->
