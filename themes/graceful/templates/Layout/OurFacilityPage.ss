<% include BannerPage %>


	<section class=our-services>
			<div class="container">
		        <div class="sec-title">
		            <h2>{$Title} </h2>
		        </div>
		       	<div class="item-list">
		       		<div class="row">
			            <!--Start single item-->
									<% if  $Children %>
										<% loop $Children %>
											<div class="col-md-4">
												<div class="single-item text-center" style="min-height: 335px;">
														<div class="img-holder">
																$Photo.CroppedImage(370,200)
																<div class="overlay">
																		<div class="box">
																				<div class="content">
																						<a href="{$Link}"><i class="fa fa-link" aria-hidden="true"></i></a>
																				</div>
																		</div>
																</div>
														</div>
														<div class="text-holder">
															<a href="#">
																	<h5>{$Title}</h5>
															</a>
																<p>{$Content.ContextSummary(80)}</p>
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
