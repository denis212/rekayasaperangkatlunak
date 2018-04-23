<?php
namespace Vokuro\Forms;

use Phalcon\Forms\Form;
use Phalcon\Forms\Element\Text;
use Phalcon\Forms\Element\Hidden;
use Phalcon\Forms\Element\File;
use Phalcon\Forms\Element\Check;
// use Phalcon\Forms\Element\InputTag;
use Phalcon\Forms\Element\Select;
use Phalcon\Forms\Element\Numeric;
use Phalcon\Validation\Validator\PresenceOf;
use Phalcon\Validation\Validator\Email;
use Vokuro\Models\Profiles;
use Phalcon\Validation\Validator\Identical;
use Phalcon\Forms\Element\Submit;
use Phalcon\Validation\Validator\Numericality;
use Vokuro\Models\Users;
use Vokuro\Models\Daftarbank;


class RequestDepositForm extends Form
{

    public function initialize($entity = null, $options = null)
    {

        $userid = new hidden('user_id',[
            'value' =>  $this->auth->getId()
        ]);
        $this->add($userid);

        $username = new Text('username', [
            'value' => $this->auth->getName(),
            'readonly' => true,
        ]);
        $username->setLabel('Username');
        $username->addValidators([
            new PresenceOf([
                'message' => 'The Username is required'
            ])
        ]);

        $this->add($username);

        // Email
        $email = new Text('email', [
            'placeholder' => 'youremail@email.com'
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

        //Nominal
        $nominal = new Text('nominal', [
            'placeholder' => 'Min. IDR 50.000'
        ]);

        $nominal->setLabel('Nominal');

        $nominal->addValidators([
            new PresenceOf([
                'message' => 'Nominal is required'
            ]),
        ]);

        $this->add($nominal);

        //Currency
        $currency = new Select('currency', [
            'Rp.' => 'Rp.',
        ]);

        $currency->setLabel('Currency');

        $currency->addValidators([
            new PresenceOf([
                'message' => 'Currency is required'
            ])
        ]);

        $this->add($currency);

        //BANK
        $bank = Daftarbank::find(['nama'=>'nama']);
        $accbank = new Select('accbank', $bank,[
          'using' => [
            'nama','nama'
          ],
          'useEmpty' => true,
          'emptyText' => 'SELECT BANK',
          'emptyValue' => '',

        ]);

        $accbank->setLabel('BANK');

        $accbank->addValidators([
            new PresenceOf([
                'message' => 'BANK is required'
            ])
        ]);

        $this->add($accbank);


        // submit
        $this->add(new Submit('Confirm', [
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
