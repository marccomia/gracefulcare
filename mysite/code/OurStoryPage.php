<?php

class OurStoryPage extends Page
{
    /**
     * Database fields
     * @var array
     */
    private static $db = array(
      'SubTitle' => 'Varchar',
      'Slogan' => 'HTMLText',
      'BannerHeaders' => 'Varchar(25)',
      'BannerText'    => 'Text',
    );

    /**
     * Has_one relationship
     * @var array
     */
    private static $has_one = array(
      'OurStoryPhoto' => 'Image',
      'ExtPhoto'  => 'Image',
      'ParallaxOne' => 'Image',
      'BannerPhoto' => 'Image'
    );

  /**
   * Has_many relationship
   * @var array
   */
  private static $has_many = array(
      'Testimonials' => 'Testimonial',
  );
    /**
     * CMS Fields
     * @return FieldList
     */
    public function getCMSFields()
    {

      $fields = parent::getCMSFields();
      $fields->addFieldsToTab('Root.Main',array(
          TextField::create('SubTitle', 'Title'),
          $uploader = UploadField::create('OurStoryPhoto','Photo')->setDescription('Photo size 570 x 444'),
          $extPhoto = UploadField::create('ExtPhoto','Extension Photo')->setDescription('Photo size 1920 x 1320'),
        ), 'Content');

        $fields->addFieldsToTab('Root.Banner', array(
            $banner = UploadField::create('BannerPhoto','Photo'),
            TextField::create('BannerHeaders', 'Header'),
            TextareaField::create('BannerText', 'Text')
          ));

        $fields->addFieldsToTab('Root.Parallax Image',array(
            $parallaxOne = UploadField::create('ParallaxOne','Parallax One'),
            HtmlEditorField::create('Slogan','Slogan')
          ));

        $fields->addFieldToTab(
            'Root.Testimonial', GridField::create(
            'Testimonials',
            'Testimonials',
            $this->Testimonials(),
            GridFieldConfig_RecordEditor::create()
          ));

        $uploader->setFolderName('ourstory');
        $banner->setFolderName('ourstory');
        $extPhoto->setFolderName('ourstory');
        $parallaxOne->setFolderName('ourstory');

        $uploader->getValidator()->setAllowedExtensions(array('jpg','png','jpeg'));
        $extPhoto->getValidator()->setAllowedExtensions(array('jpg','png','jpeg'));
        $banner->getValidator()->setAllowedExtensions(array('jpg','png','jpeg'));
        $parallaxOne->getValidator()->setAllowedExtensions(array('jpg','png','jpeg'));


      return $fields;
    }
}

class OurStoryPage_Controller extends Page_Controller{
  /**
   * Defines methods that can be called directly
   * @var array
   */
  private static $allowed_actions = array(
    'testimonial'
  );

  public function testimonial(SS_HTTPRequest $request) {
    $testimonial = Testimonial::get()->byID($request->param('ID'));
    if (!$testimonial) {
      return $this->httpError(404,'The Testimonial could not be found.' );
    }

    return  array(
      'Testimonial' => $testimonial,
      'Title' => $testimonial->Title,
    );
  }


}
