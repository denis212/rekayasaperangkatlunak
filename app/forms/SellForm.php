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

class SellForm extends Form
{

    public function initialize($entity = null, $options = null)
    {

        // In edition the id is hidden
        $id = new Hidden('id');
        $this->add($id);

        // In edition the id is hidden
        $id_reseller = new Hidden('id_reseller');
        $this->add($id_reseller);

        $msisdn = new Text('msisdn', [
            'placeholder' => 'NO HP Pembeli'
        ]);
        $msisdn->setLabel('NO HP Pembeli');
        $msisdn->addValidators([
            new PresenceOf([
                'message' => 'NO HP Pembeli is required'
            ])
        ]);

        $this->add($msisdn);


        $username = new Text('username', [
            'placeholder' => 'USERNAME'
        ]);
        $username->setLabel('USERNAME WIFI.ID');
        $username->addValidators([
            new PresenceOf([
                'message' => 'USERNAME is required'
            ])
        ]);

        $this->add($username);

        $pass = new Text('pass', [
            'placeholder' => 'PASSWORD WIFI.ID'
        ]);
        $pass->setLabel('PASSWORD WIFI.ID');
            new PresenceOf([
              $pass->addValidators([
                'message' => 'PASSWORD is required'
            ])
        ]);

        $this->add($pass);

        $pass = new Text('pass', [
            'placeholder' => 'PASSWORD WIFI.ID'
        ]);
        $pass->setLabel('PASSWORD WIFI.ID');
            new PresenceOf([
              $pass->addValidators([
                'message' => 'PASSWORD is required'
            ])
        ]);

        $this->add($pass);


        // Sign Up
        $this->add(new Submit('Beli', [
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
