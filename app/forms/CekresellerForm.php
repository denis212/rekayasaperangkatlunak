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

class CekresellerForm extends Form
{

    public function initialize($entity = null, $options = null)
    {


        $name = new Text('name', [
            'placeholder' => 'Nama'
        ]);
        $name->setLabel('Nama');
        $name->addValidators([
            new PresenceOf([
                'message' => 'Name is required'
            ])
        ]);

        $this->add($name);

        $phone = new Text('phone', [
            'placeholder' => 'Nomor HP Anda'
        ]);
        $phone->setLabel('Nomor HP');
        $phone->addValidators([
            new PresenceOf([
                'message' => 'Phone Number is required'
            ])
        ]);

        $this->add($phone);

        $coderef = new Text('coderef', [
            'placeholder' => 'Code REFERAL Anda'
        ]);
        $coderef->setLabel('Code Referal');
        $coderef->addValidators([
            new PresenceOf([
                'message' => 'Code Referal is required'
            ])
        ]);

        $this->add($coderef);

        // Sign Up
        $this->add(new Submit('Submit', [
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
