<?php

/**
 * Description
 *
 * @package silverstripe
 * @subpackage mysite
 */
class CareSupportPage extends Page
{
  /**
   * Database fields
   * @var array
   */
  private static $db = array(
    'CStitle' => 'Varchar(50)',
    'BannerHeader' => 'Varchar(50)',
    'BannerText' => 'Text',
  );
  /**
   * Has_one relationship
   * @var array
   */
  private static $has_one = array(
    'Photo' => 'Image',
    'BannerPhoto' => 'Image'
  );

/**
 * Defines the allowed child page types
 * @var array
 */
private static $allowed_children = array(
  'CareSupportPageDetails',
);

/**
 * CMS Fields
 * @return FieldList
 */
public function getCMSFields()
{
  $fields = parent::getCMSFields();
  $fields->addFieldToTab('Root.Main', TextField::create('CStitle','Title'),'Content');
  $fields->addFieldToTab('Root.Main', $uploader = UploadField::create('Photo'), 'Content');
  $fields->addFieldsToTab(
    'Root.Banner',array(
      $bphoto = UploadField::create('BannerPhoto','Photo Banner')
      ->setDescription('Image size should be 1920x505'),
      TextField::create('BannerHeader','Header'),
      TextField::create('BannerText','Text')
    ));

    $uploader->getValidator()->setAllowedExtensions(array('jpg','jpeg','png'));
    $bphoto->getValidator()->setAllowedExtensions(array('jpg','jpeg','png'));

  return $fields;
}


}
class CareSupportPage_Controller extends Page_Controller
{
  public function CareSupportPageDetails(){
    $csp = CareSupportPageDetails::get();
    return $csp;
  }
}
