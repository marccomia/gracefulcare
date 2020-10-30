<?php

/**
 * Description
 *
 * @package silverstripe
 * @subpackage mysite
 */
class Carousel extends DataObject
{
   /**
   * Database fields
   * @var array
   */
  private static $db = array(
    'HeadingOne' => 'Varchar',
    'HeadingTwo' => 'Varchar',
    'Script'  => 'Text',
    'Url'     => 'Varchar',
  );

  /**
   * Has_one relationship
   * @var array
   */
  private static $has_one = array(
    'Photo' => 'Image',
    'HomePage' => 'HomePage',
  );

  /**
   * Defines summary fields commonly used in table columns
   * as a quick overview of the data for this dataobject
   * @var array
   */
  private static $summary_fields = array(
    'gridThumbnail' => '',
    'HeadingOne'=> 'Heading',
    'Script' => 'Script',
  );


  public function getGridThumbnail(){
    if($this->Photo()->exists()) {
            return $this->Photo()->SetWidth(100);
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
        TextField::create('HeadingOne','Head One'),
        TextField::create('HeadingTwo', 'Head Two'),
        TextField::create('Url')->setAttribute('placeholder', 'Http://link-to-website.co.nz'),
        $uploader = UploadField::create('Photo')->setDescription('Please upload the correct size of the photo 1920x650'),
        TextareaField::create('Script','Banner Text')->setDescription('Make it single line and short.')

        );

        $uploader->setFolderName('carousel-img');
        $uploader->getValidator()->setAllowedExtensions(array('png','jpg','jpeg'));
    return $fields;
  }











}
