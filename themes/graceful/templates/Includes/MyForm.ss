

<form $FormAttributes class="default-form">
  <div class="row clearfix">
    <% if $Message %>
        <p id="{$FormName}_error" class="message $MessageType">$Message</p>
    <% else %>
        <p id="{$FormName}_error" class="message $MessageType" style="display: none"></p>
    <% end_if %>

    <fieldset>
      <div class="col-md-6 col-sm-6 col-xs-12">

        <div class="form-group style-two">
            $Fields.dataFieldByName(Name)
        </div>
      </div>
      <div class="col-md-6 col-sm-6 col-xs-12">
        <div class="form-group style-two">
          $Fields.dataFieldByName(Email)
        </div>
      </div>
      <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="form-group style-two">
            $Fields.dataFieldByName(Message)
        </div>
      </div>
        $Fields.dataFieldByName(SecurityID)
    </fieldset>
    <% if $Actions %>
      <div class="contact-section-btn text-center">
        <div class="form-group style-two">
          <% loop $Actions %>$Field<% end_loop %>
        </div>
      </div>
    <% end_if %>
</form>
