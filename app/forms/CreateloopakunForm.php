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

class CreateloopakunForm extends Form
{

    public function initialize($entity = null, $options = null)
    {

        $jmlakun = new Text('jmlakun', [
            'placeholder' => 'Masukkan Jumlah Akun yang Ingin di Generate'
        ]);
        $jmlakun->setLabel('Jumlah Akun');
        $jmlakun->addValidators([
            new PresenceOf([
                'message' => 'Jumlah Akun is required'
            ])
        ]);

        $this->add($jmlakun);

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
