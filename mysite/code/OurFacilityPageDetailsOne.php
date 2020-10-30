<?php

/**
 * Description
 *
 * @package silverstripe
 * @subpackage mysite
 */
class OurFacilityPageDetailsOne extends Page
{
  /**
   * Database fields
   * @var array
   */
  private static $db = array(
    'BannerHeader' => 'Varchar(50)',
    'BannerText'   => 'Text',
    'BlackQoute'   => 'Text',
    'OHheader'     => 'Varchar(25)',
    'OHcontent'    => 'HTMLText',
    'OSheader'     => 'Varchar(25)',
    'OScontent'    => 'HTMLText',
    'OWTheader'     => 'Varchar(25)',
    'OWTcontent'    => 'HTMLText',
    'MTitle'      => 'Varchar(25)',
  );

  /**
   * Has_one relationship
   * @var array
   */
  private static $has_one = array(
    'Photo' => 'Image',
    'BannerPhoto' => 'Image',
    'OHphoto' => 'Image',
    'OSphoto' => 'Image',
    'OWTphoto' => 'Image'
  );

/**
 * Defines whether a page can be in the root of the site tree
 * @var boolean
 */
  private static $can_be_root = false;

  /**
   * CMS Fields
   * @return FieldList
   */
  public function getCMSFields()
  {
    $fields = parent::getCMSFields();

    $fields->addFieldsToTab('Root.Main', [
      TextField::create('MTitle','Header Title'),
      $mainPhoto = UploadField::create('Photo','Photo')
      ->setDescription('Image should be 1170x589 pixel'),
      TextareaField::create('BlackQoute','Blackqute')],'Content' );

    $fields->addFieldsToTab('Root.Banner', [$bannerPhoto = UploadField::create('BannerPhoto','Photo')
      ->setDescription('The image should be 1920x505 to be fit in the banner'),
      TextField::create('BannerHeader','Header'),
      TextareaField::create('BannerText','Text')]);

    $fields->addFieldsToTab('Root.Our Home', [$OHphoto = UploadField::create('OHphoto','Photo')
      ->setDescription('The image should be 570x380 pixel to be fit in the page'),
      TextField::create('OHheader','Header'),
      HtmlEditorField::create('OHcontent','Content')]);

    $fields->addFieldsToTab('Root.Our Services', [$OSphoto = UploadField::create('OSphoto','Photo')
    ->setDescription('The image should be 570x380 pixel to be fit in the page'),
      TextField::create('OSheader','Header'),
      HtmlEditorField::create('OScontent','Content')]);

    $fields->addFieldsToTab('Root.Our Wonderful Team', [$OWTphoto = UploadField::create('OWTphoto','Photo')
      ->setDescription('The image should be 570x380 pixel to be fit in the page'),
      TextField::create('OWTheader','Header'),
      HtmlEditorField::create('OWTcontent','Content')]);


    $mainPhoto->setFolderName('ourfacility-img');
    $bannerPhoto->setFolderName('ourfacility-img');
    $OHphoto->setFolderName('ourfacility-img');
    $OSphoto->setFolderName('ourfacility-img');
    $OWTphoto->setFolderName('ourfacility-img');

    $mainPhoto->getValidator()->setAllowedExtensions(array('jpg','jpeg','png'));
    $bannerPhoto->getValidator()->setAllowedExtensions(array('jpg','jpeg','png'));
    $OHphoto->getValidator()->setAllowedExtensions(array('jpg','jpeg','png'));
    $OSphoto->getValidator()->setAllowedExtensions(array('jpg','jpeg','png'));
    $OWTphoto->getValidator()->setAllowedExtensions(array('jpg','jpeg','png'));

    return $fields;
  }

}
class OurFacilityPageDetailsOne_Controller extends Page_Controller
{
  public function init()
  {
    parent::init();
  }
}
