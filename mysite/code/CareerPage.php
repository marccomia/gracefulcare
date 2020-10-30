<?php

class CareerPage extends Page
{
  /**
   * Has_many relationship
   * @var array
   */
  private static $has_many = array(
    'Careers' => 'Career',
  );

  /**
   * CMS Fields
   * @return FieldList
   */
  public function getCMSFields()
  {
    $fields = parent::getCMSFields();
    $fields->addFieldsToTab(
      'Root.List of Vacancy', GridField::create(
        'Careers',
        'Careers',
        $this->Careers(),
        GridFieldConfig_RecordEditor::create()
      ));

    return $fields;
  }
}

class CareerPage_Controller extends Page_Controller
{

}
