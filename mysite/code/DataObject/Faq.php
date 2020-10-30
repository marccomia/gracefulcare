<?php

/**
 * Description
 *
 * @package silverstripe
 * @subpackage mysite
 */
class Faq extends DataObject
{
  /**
   * Database fields
   * @var array
   */
  private static $db = array(
    'Header' => 'Varchar',
    'Message' => 'HTMLText'
  );

  /**
   * Has_one relationship
   * @var array
   */
  private static $has_one = array(
    'FAQPage' => 'FAQPage',
  );

  /**
   * Defines summary fields commonly used in table columns
   * as a quick overview of the data for this dataobject
   * @var array
   */
  private static $summary_fields = array(
    'Header' => 'Header',
    'Message' => 'Message',
  );

  /**
   * CMS Fields
   * @return FieldList
   */
   public function getCMSFields()
   {
     $fields = FieldList::create(
         TextField::create('Header'),
         HtmlEditorField::create('Message'));
     return $fields;
   }
}
