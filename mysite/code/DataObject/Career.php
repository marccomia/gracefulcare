<?php

/**
 * Description
 *
 * @package silverstripe
 * @subpackage mysite
 */
class Career extends DataObject
{
  /**
   * Database fields
   * @var array
   */
  private static $db = array(
    'Title' => 'Varchar(100)',
    'Content' => 'HTMLText',
    'ODate' => 'Date',
    'CDate' => 'Date'
  );


  /**
   * Has_one relationship
   * @var array
   */
  private static $has_one = array(
    'CareerPage' => 'CareerPage',
  );


  /**
   * CMS Fields
   * @return FieldList
   */
  public function getCMSFields()
  {
    $fields = FieldList::create(
        TextField::create('Title'),
        DateField::create('ODate', 'Opening')
        ->setConfig('showcalendar', true)
        ->setDescription('Date of posting'),
        DateField::create('CDate','Closing')
        ->setConfig('showcalendar', true)
        ->setDescription('Date of Closing'),
        HtmlEditorField::create('Content')

      );
    return $fields;
  }
}
