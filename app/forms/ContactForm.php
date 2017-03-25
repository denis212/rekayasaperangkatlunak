<?php
namespace Vokuro\Forms;

use Phalcon\Forms\Form;
use Phalcon\Forms\Element\Text;
use Phalcon\Forms\Element\TextArea;
use Phalcon\Forms\Element\Hidden;
use Phalcon\Forms\Element\Select;
use Phalcon\Validation\Validator\PresenceOf;
use Phalcon\Validation\Validator\Email;
use Vokuro\Models\Profiles;
use Phalcon\Forms\Element\Submit;

class ContactForm extends Form
{

    public function initialize($entity = null, $options = null)
    {


        $name = new Text('name', [
            'placeholder' => 'Full Name'
        ]);
        $name->setLabel('Name');
        $name->addValidators([
            new PresenceOf([
                'message' => 'The first name is required'
            ])
        ]);

        $this->add($name);

        // Email
        $email = new Text('email', [
            'placeholder' => 'sample@gamanads.com'
        ]);

        $email->setLabel('E-Mail');

        $email->addValidators([
            new PresenceOf([
                'message' => 'The e-mail is required'
            ]),
            new Email([
                'message' => 'The e-mail is not valid'
            ])
        ]);

        $this->add($email);

        $subject = new Text('subject', [
            'placeholder' => 'Subject'
        ]);

        $subject->setLabel('Subject');

        $subject->addValidators([
            new PresenceOf([
                'message' => 'Subject is required'
            ])
        ]);

        $this->add($subject);

        //company address
        $body = new TextArea('body');
        $body->setLabel('Body');
        $body->addValidators([
            new PresenceOf([
                'message' => 'Body is required'
            ])
        ]);
        $this->add($body);

        // Sign Up
        $this->add(new Submit('Send Message', [
            'class' => 'btn btn-success'
        ]));

    }

    public function messages($name)
    {
        if ($this->hasMessagesFor($name)) {
            foreach ($this->getMessagesFor($name) as $message) {
                $this->flash->error($message);
            }
        }
    }
}
