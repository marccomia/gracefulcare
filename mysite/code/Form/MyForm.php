<?php

/**
 * Custom Form
 */
class MyForm extends Form
{
  public function __construct($controller, $name) {
        $fields = new FieldList(
          TextField::create("Name")
            ->setAttribute('placeholder', 'Name*')
            ->addExtraClass('form-control'),
          EmailField::create('Email')
            ->setAttribute('placeholder', 'Email*')
            ->addExtraClass('form-control'),
          TextareaField::create('Message')
            ->setAttribute('placeholder', 'Message*')
            ->addExtraClass('form-control')
        );
        $actions = new FieldList(FormAction::create("SubmitForm")->setTitle("Submit")
       ->addExtraClass('thm-btn thm-color'));
       // the fields 'Name' and 'Email' are required.
      $required = new RequiredFields(array(
          'Name', 'Email', 'Message'
      ));

      parent::__construct($controller, $name, $fields, $actions, $required);

    }

    public function SubmitForm(array $data, Form $form) {
        // Do something with $data
        $config = SiteConfig::current_site_config();
        $emailData = array(
          'Name' => $data['Name'],
          'Email' => $data['Email'],
          'Message' => $data['Message'],
          'Subject' => $config->Title
        );
        $email = new Email();
        $email
            ->setFrom($emailData['Email'])
            ->setTo($config->EmailAdd)
            ->setSubject($config->Title)
            ->setTemplate('MyCustomEmail')
            ->populateTemplate(new ArrayData(array(
                'Data' => $emailData
            )));

        $email->send();
        Controller::curr()->redirect(Controller::curr()->Link('?success=1'));
    }
    public function forTemplate() {
        return $this->renderWith(array($this->class, 'Form'));
    }
}
