
  <section class="contact_details sec-padd">

			<div class="home-google-map">
				<div
					class="google-map"
					id="contact-google-map"
					data-map-lat="-36.8625448"
					data-map-lng="174.7740738"
					data-icon-path="images/logo/map-marker.png"
					data-map-title="Auckland"
					data-map-zoom="10.75" >
				</div>
			</div>

	</section>


<section class="contact_us">
  <div class="container">
    <% if ContactFormSuccess %>
        <div class="status alert alert-success">Thank you for sending your message! I'll get back to you shortly.</div>
    <% end_if %>
    <div class="sec-title text-center">
        <h2>Get In <span>Touch</span></h2>
        <p>
          If you need more info, have queries you need answered or would like to chat to someone about your needs,
          feel free to fill in the contact form below and we will get back to you as soon as possible.
        </p>
    </div>
    <div class="default-form-area">

      {$send}
<%-- 
      <script type="text/javascript">
          $('#contactForm').parsley();
      </script> --%>
    </div>
  </div>
</section>


<% include MapSection %>
