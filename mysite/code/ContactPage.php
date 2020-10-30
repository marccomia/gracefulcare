<?php

/**
 * Description
 *
 * @package silverstripe
 * @subpackage mysite
 */
class ContactPage extends Page
{
  /**
   * Database fields
   * @var array
   */
  private static $db = array(
    'LinkToContact' => 'Varchar(50)',
  );

  /**
   * CMS Fields
   * @return FieldList
   */
  public function getCMSFields()
  {
    $fields = parent::getCMSFields();
    $fields->addFieldToTab(
      'Root.Main', TextField::create('LinkToContact','Link To Contact Us')
      ->setDescription('This Text Field Display on the bottom of the page'),'Content'
    );

    return $fields;
  }
}
class ContactPage_Controller extends Page_Controller
{
  /**
   * Defines methods that can be called directly
   * @var array
   */
    private static $allowed_actions = array('send');
    public function send() {

      $myForm = new MyForm($this, 'send');
      return $myForm;
    }

    public function getContactFormSuccess()
    {
        return isset($_REQUEST['success']) && $_REQUEST['success'] == "1";
    }

}
