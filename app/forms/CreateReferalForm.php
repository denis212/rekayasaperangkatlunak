<?php
namespace Vokuro\Forms;

use Phalcon\Forms\Form;
use Phalcon\Forms\Element\Text;
use Phalcon\Forms\Element\TextArea;
use Phalcon\Forms\Element\Hidden;
use Phalcon\Forms\Element\Password;
use Phalcon\Forms\Element\Submit;
use Phalcon\Forms\Element\Check;
use Phalcon\Forms\Element\Select;
use Phalcon\Validation;
use Phalcon\Validation\Validator\PresenceOf;
use Phalcon\Validation\Validator\Email;
use Phalcon\Validation\Validator\Identical;
use Phalcon\Validation\Validator\StringLength;
use Phalcon\Validation\Validator\Confirmation;
use Vokuro\Models\Users;

class CreateReferalForm extends Form
{

    public function initialize($entity = null, $options = null)
    {

        if (isset($options['edit']) && $options['edit']) {
            $id = new Hidden('id');
        } else {
            $id = new Text('id');
        }

        $name = new Text('name', [
            'placeholder' => 'Your Name'
        ]);

        $name->setLabel('Name');

        $name->addValidators([
            new PresenceOf([
                'message' => 'The name is required'
            ])
        ]);

        $this->add($name);


        // Email
        $email = new Text('email', [
            'placeholder' => 'sample@youremail.com'
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

        $phone = new Text('phone', [
            'placeholder' => '08XXXXXXXXX'
        ]);
        $phone->setLabel('Phone Number');
        $phone->addValidators([
            new PresenceOf([
                'message' => 'Phone Number is required'
            ])
        ]);

        $this->add($phone);

        //no ktp
        $ktp = new Text('no_ktp', [
            'placeholder' => 'NO. IDENTITAS ANDA SIM/KTP'
        ]);
        $ktp->setLabel('Nomor KTP/SIM');
        $ktp->addValidators([
            new PresenceOf([
                'message' => 'Nomor KTP/SIM is required'
            ])
        ]);

        $this->add($ktp);


        //coderef
        $coderef = new Text('coderef', [
            'placeholder' => 'DI ISI DENGAN NO HP REFERAL'
        ]);
        $coderef->setLabel('Code Ref');
        $this->add($coderef);

        //commision
        $commision = new Text('commision', [
            'placeholder' => 'KOMISI UNTUK REFERAL'
        ]);
        $commision->setLabel('Commision');
        $this->add($commision);


        // Sign Up
        $this->add(new Submit('Sign Up', [
            'class' => 'btn btn-success'
        ]));

        //select box user REFERAL

        $level1 = Users::find(['order'=>'id']);
        $level1_search = new Select('level1', $level1, [
            'using' => [
                'id',
                'name'
            ],
            'useEmpty' => true,
            'emptyText' => '-- Upper Referal --',
            'emptyValue' => ''
        ]);
        $level1_search->setLabel('Upper Referal');
        $this->add($level1_search);

        // $level2_search = new Select('level2', [null => '-- Referal Level 2 --']);
        // $level2_search->setLabel("Level2");
        // $this->add($level2_search);
        //
        // $level3_search = new Select('level3', [null => '-- Referal Level 3 --']);
        // $level3_search->setLabel("level3");
        // $this->add($level3_search);
        //
        // $level4_search = new Select('level4', [null => '-- Referal Level 4 --']);
        // $level4_search->setLabel("level4");
        // $this->add($level4_search);
    }

    /**
     * Prints messages for a specific element
     */
    public function messages($name)
    {
        if ($this->hasMessagesFor($name)) {
            foreach ($this->getMessagesFor($name) as $message) {
                $this->flash->error($message);
            }
        }
    }
}
