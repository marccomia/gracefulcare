<?php

class Page_Controller extends ContentController
{
    /**
     * An array of actions that can be accessed via a request. Each array element should be an action name, and the
     * permissions or conditions required to allow the user to access it.
     *
     * <code>
     * array (
     *     'action', // anyone can access this action
     *     'action' => true, // same as above
     *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
     *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
     * );
     * </code>
     *
     * @var array
     */
    private static $allowed_actions = array(
    );

    public function init()
    {
        parent::init();
        // You can include any CSS or JS required by your project here.
        // See: http://doc.silverstripe.org/framework/en/reference/requirements
    }

    public function GetGalleriesPhoto(){
      $ggp = Gallery::get();
      return $ggp;
    }


    public function HomePageGalleries(){
      $galPhoto = HomePage::get();
      return $galPhoto;
    }
    public function OurFacilitiesDetails(){
      $facilities = OurFacilityPageDetailsTwo::get();
      return $facilities;
    }

    public function OurFacilitiesDetailsOne(){
      $facilitiesOne = OurFacilityPageDetailsOne::get();
      return $facilitiesOne;
    }

    public function OurFacilities(){
      $facilities = OurFacilityPage::get();
      return $facilities;
    }

    public function OurStory(){
      $ourstories = OurStoryPage::get();
      return $ourstories;
    }

    public function CareSupportsDetails(){
      $cs = CareSupportPageDetails::get();
      return $cs;
    }

    public function CareSupports(){
      $cs = CareSupportPage::get();
      return $cs;
    }

    public function getFAQ(){
      $faq = FAQPage::get();
      return $faq;
    }

    public function getContact(){
      $con = ContactPage::get();
      return $con;
    }

    public function getCareers(){
      $con = CareerPage::get();
      return $con;
    }
}
