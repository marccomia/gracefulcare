<?php

class HomePage extends Page
{
  /**
   * Database fields
   * @var array
   */
  private static $db = array(
    'Slogan' => 'HTMLText',
  );
    /**
     * Has_many relationship
     * @var array
     */
    private static $has_many = array(
      'Carousels' => 'Carousel',
      'GalleriesPhoto' => 'Gallery',
    );

    /**
     * Has_one relationship
     * @var array
     */
    private static $has_one = array(
      'ParallaxOne' => 'Image',
    );

    /**
     * CMS Fields
     * @return FieldList
     */
    public function getCMSFields()
    {
      $fields = parent::getCMSFields();
      $fields->addFieldToTab(
        'Root.Carousel',GridField::create(
          'Carousels',
          'Carousels on this page',
          $this->Carousels(),
          GridFieldConfig_RecordEditor::create()
        ));

      $fields->addFieldToTab(
        'Root.Gallery Photo', GridField::create(
          'GalleriesPhoto',
          'GalleriesPhoto',
          $this->GalleriesPhoto(),
          GridFieldConfig_RecordEditor::create()
        ));


      $fields->addFieldsToTab(
        'Root.Parallax Image',
        array(
          $parallaxOne = UploadField::create('ParallaxOne','Parallax One'),
          HtmlEditorField::create('Slogan','Slogan')
        ));




      $parallaxOne->setFolderName('parallax-image');
      $parallaxOne->getValidator()->setAllowedExtensions(array('jpeg','png','jpg'));

      return $fields;
    }
}

class HomePage_Controller extends Page_Controller
{

}
