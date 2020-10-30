<?php

/**
 * Description
 *
 * @package silverstripe
 * @subpackage mysite
 */
class Testimonial extends DataObject
{
  /**
   * Database fields
   * @var array
   */
  private static $db = array(
    'Name' => 'Varchar(50)',
    'Position' => 'Varchar(50)',
    'Message' => 'HTMLText'
  );

  /**
   * Has_one relationship
   * @var array
   */
  private static $has_one = array(
    'Tphoto' => 'Image',
    'OurStoryPage' => 'OurStoryPage'
  );

  /**
   * Defines summary fields commonly used in table columns
   * as a quick overview of the data for this dataobject
   * @var array
   */
  private static $summary_fields = array(
    'gridThumbnail' => '',
    'Name'=> 'Name',
    'Position' => 'Position',
    'Message' => 'Message',
  );

  public function getGridThumbnail(){
    if($this->Tphoto()->exists()) {
            return $this->Tphoto()->SetWidth(100);
        }
        return "(no image)";
  }


  /**
   * CMS Fields
   * @return FieldList
   */
  public function getCMSFields()
  {
    $fields = FieldList::create(
        $uploader = UploadField::create('Tphoto'),
        TextField::create('Name')->setDescription('Please dont forget to write the name'),
        TextField::create('Position')->setDescription('Please dont forget to write the position')
        ->setAttribute('placeholder', 'eg Son, Daughter, Father, Mother'),
        HtmlEditorField::create('Message'));

        $uploader->setFolderName('testimonial-img');
        $uploader->getValidator()->setAllowedExtensions(array('png','jpg','jpeg'));

    return $fields;
  }

  public function Link(){
    return $this->OurStoryPage()->Link('testimonial/'.$this->ID);
  }
  public function LinkingMode() {
        return Controller::curr()->getRequest()->param('ID') == $this->ID ? 'current' : 'link';
    }

}
