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

class CekreferalForm extends Form
{

    public function initialize($entity = null, $options = null)
    {

        $coderef = new Text('coderef', [
            'placeholder' => 'Cari Code REFERAL Super Agen'
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
