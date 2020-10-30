<?php

/**
 * Description
 *
 * @package silverstripe
 * @subpackage mysite
 */
class Gallery extends DataObject
{
  /**
   * Has_one relationship
   * @var array
   */
  private static $has_one = array(
    'GalleryPhoto' => 'Image',
    'HomePage' => 'HomePage'
  );


  /**
   * Defines summary fields commonly used in table columns
   * as a quick overview of the data for this dataobject
   * @var array
   */
  private static $summary_fields = array(
    'gridThumbnail' => '',
  );


  public function getGridThumbnail(){
    if($this->GalleryPhoto()->exists()) {
            return $this->GalleryPhoto()->SetWidth(100);
        }
        return "(no image)";
  }

  /**
   * CMS Fields
   * @return FieldList
   */
  public function getCMSFields(){
    $fields = FieldList::create($uploader = UploadField::create('GalleryPhoto'));
    $uploader->setFolderName('gallery-img');
    $uploader->getValidator()->setAllowedExtensions(array('png','jpg','jpeg'));

    return $fields;
  }
}
