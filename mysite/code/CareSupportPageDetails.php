<?php

/**
 * Description
 *
 * @package silverstripe
 * @subpackage mysite
 */
class CareSupportPageDetails extends Page
{
  /**
   * Database fields
   * @var array
   */
  private static $db = array(
    'BlackQoutes' => 'Text',
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

  private static $can_be_root = false;

/**
 * CMS Fields
 * @return FieldList
 */
public function getCMSFields()
{
  $fields = parent::getCMSFields();
  $fields->addFieldsToTab('Root.Main',[$uploader =  UploadField::create('Photo','Photo'),
  TextareaField::create('BlackQoutes','Balckqoute')],'Content');

  $fields->addFieldsToTab('Root.Banner',[
    $banner = UploadField::create('BannerPhoto','Photo')
    ->setDescription('The image should be 1920x505 to be fit in the banner'),
    TextField::create('BannerHeader','Header'),
    TextField::create('BannerText','Text')]
  );

  $uploader->setFolderName('caresupport-img');
  $banner->setFolderName('caresupport-img');

  $uploader->getValidator()->setAllowedExtensions(array('jpeg','jpg','png'));
  $banner->getValidator()->setAllowedExtensions(array('jpeg','jpg','png'));

  return $fields;
}

}
class CareSupportPageDetails_Controller extends Page_Controller
{
  public function init()
  {
    parent::init();
  }
}
