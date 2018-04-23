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

class SignUpForm extends Form
{

    public function initialize($entity = null, $options = null)
    {
        $idref = new Hidden('idref');
        $this->add($idref);

        $name = new Text('name', [
            'placeholder' => 'First Name'
        ]);

        $name->setLabel('First Name');

        $name->addValidators([
            new PresenceOf([
                'message' => 'The name is required'
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

        // Password
        $password = new Password('password');

        $password->setLabel('Password');

        $password->addValidators([
            new PresenceOf([
                'message' => 'The password is required'
            ]),
            new StringLength([
                'min' => 8,
                'messageMinimum' => 'Password is too short. Minimum 8 characters'
            ]),
            new Confirmation([
                'message' => 'Password doesn\'t match confirmation',
                'with' => 'confirmPassword'
            ])
        ]);

        $this->add($password);

        // Confirm Password
        $confirmPassword = new Password('confirmPassword');

        $confirmPassword->setLabel('Confirm Password');

        $confirmPassword->addValidators([
            new PresenceOf([
                'message' => 'The confirmation password is required'
            ])
        ]);

        $this->add($confirmPassword);

        // Remember
        $terms = new Check('terms', [
            'value' => 'yes'
        ]);

        $terms->setLabel('Accept terms and conditions');

        $terms->addValidator(new Identical([
            'value' => 'yes',
            'message' => 'Terms and conditions must be accepted'
        ]));

        $this->add($terms);

        // // CSRF
        // $csrf = new Hidden('csrf');
        //
        // $csrf->addValidator(new Identical([
        //     'value' => $this->security->getSessionToken(),
        //     'message' => 'CSRF validation failed'
        // ]));
        //
        // $csrf->clear();
        //
        // $this->add($csrf);

        $phone = new Text('phone', [
            'placeholder' => '+6288888'
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
            'placeholder' => 'Code Ref'
        ]);
        $coderef->setLabel('Code Ref');
        $this->add($coderef);

        //commision
        $commision = new Text('commision', [
            'placeholder' => 'Commision'
        ]);
        $commision->setLabel('Commision');
        $this->add($commision);


        // Sign Up
        $this->add(new Submit('Sign Up', [
            'class' => 'btn btn-success'
        ]));
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
