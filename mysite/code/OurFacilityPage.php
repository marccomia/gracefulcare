<?php

class OurFacilityPage extends Page
{
  /**
   * Database fields
   * @var array
   */
  private static $db = array(
    'BannerHeaders' => 'Varchar(25)',
    'BannerText'    => 'Text',
    'OFtitle' => 'Varchar(25)',
  );

  /**
   * Has_one relationship
   * @var array
   */
  private static $has_one = array(
    'Photo' => 'Image',
    'BannerPhoto' => 'Image'
  );

  private static $allowed_children = array ('OurFacilityPageDetailsTwo', 'OurFacilityPageDetailsOne');

  /**
   * CMS Fields
   * @return FieldList
   */
  public function getCMSFields()
  {
    $fields = parent::getCMSFields();
    $fields->addFieldToTab('Root.Main', TextField::create('OFtitle','Title'),'Content');
    $fields->addFieldToTab('Root.Main', $uploader = UploadField::create('Photo'), 'Content');
    $fields->addFieldsToTab(
      'Root.Banner',array(
        $bphoto = UploadField::create('BannerPhoto','Photo Banner')->setDescription('Image size should be 1920x505'),
        TextField::create('BannerHeaders','Header'),
        TextareaField::create('BannerText','Text')
      ));

      $uploader->getValidator()->setAllowedExtensions(array('jpg','jpeg','png'));
      $bphoto->getValidator()->setAllowedExtensions(array('jpg','jpeg','png'));

    return $fields;
  }



}

class OurFacilityPage_Controller extends Page_Controller{

  // public function FacilitiesPageOne(){
  //     $facilities = OurFacilityPageDetailsOne::get();
  //     return $facilities;
  // }
  //
  // public function FacilitiesPageTwo(){
  //     $facilities = OurFacilityPageDetailsTwo::get();
  //     return $facilities;
  // }
}
