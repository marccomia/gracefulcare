<?php

/**
 * Description
 *
 * @package silverstripe
 * @subpackage mysite
 */
class SiteConfigExtension extends DataExtension
{
  /**
   * Database fields
   * @var array
   */
  private static $db = array(
    'Facebook' => 'Varchar(50)',
    'TelNum'   => 'Varchar(20)',
    'EmailAdd' => 'Varchar(50)',
    'Location' => 'Varchar(50)',
    'THE0800'  => 'Varchar(20)',
  );

  /**
   * Has_one relationship
   * @var array
   */
  private static $has_one = array(
    'Logo' => 'Image',
  );

  /**
   * Update Fields
   * @return FieldList
   */
  public function updateCMSFields(FieldList $fields)
  {
    $owner = $this->owner;

    $fields->addFieldsToTab(
      'Root.Main', [$logo = UploadField::create('Logo','Logo'),
       TextField::create('TelNum','Telephone')->setDescription('This show on the bottom of the page'),
       TextField::create('THE0800','Phone Number')->setDescription('This show on the bottom of the page')
       ->setAttribute('placeholder', '0800-GRACEFUL'),
       TextField::create('EmailAdd','EmailAddress')->setDescription('This show on the top and bottom of the page'),
       TextField::create('Location','Location')->setDescription('This show on the bottom of the page'),
    ]);

    $fields->addFieldToTab(
      'Root.Social Media',TextField::create('Facebook', 'Facebook URL')
      ->setAttribute('placeholder', 'http://facebook-url')
    );


    $logo->setFolderName('logo-img');
    $logo->getValidator()->setAllowedExtensions(array('jpg','jpeg','png'));

    return $fields;
  }
}
