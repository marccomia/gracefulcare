<?php


/**
 * Description
 *
 * @package silverstripe
 * @subpackage mysite
 */
class FAQPage extends Page
{
  /**
   * Database fields
   * @var array
   */
  private static $db = array(
    'BannerHeader' => 'Varchar(25)',
    'BannerText' => 'Text',
  );


  /**
   * Has_one relationship
   * @var array
   */
  private static $has_one = array(
    'BannerPhoto' => 'Image',
  );


  /**
   * Has_many relationship
   * @var array
   */
  private static $has_many = array(
    'Faqs' => 'Faq',
  );

  /**
   * CMS Fields
   * @return FieldList
   */
  public function getCMSFields()
  {
    $fields = parent::getCMSFields();
    $fields->addFieldsToTab(
      'Root.Banner', array(
          $uploader = UploadField::create('BannerPhoto','Photo'),
          TextField::create('BannerHeader','Header'),
          TextareaField::create('BannerText','Text')
      ));

    $fields->addFieldsToTab(
      'Root.Frequently Ask Question', GridField::create('Faqs','Faqs', $this->Faqs(), GridFieldConfig_RecordEditor::create()));

      $uploader->setFolderName('faq-banner');
      $uploader->getValidator()->setAllowedExtensions(array('jpg', 'jpeg', 'png'));

    return $fields;
  }

}
class FAQPage_Controller extends Page_Controller
{
  public function init()
  {
    parent::init();
  }
}
