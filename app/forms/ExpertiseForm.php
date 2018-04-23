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
use Vokuro\Models\Inputadmin;
use Phalcon\Validation\Validator\Identical;
use Phalcon\Forms\Element\Submit;
use Phalcon\Validation\Validator\Numericality;



class ExpertiseForm extends Form
{

    public function initialize($entity = null, $options = null)
    {

        // In edition the id is hidden
        if (isset($options['edit']) && $options['edit']) {
            $id = new Hidden('id');
        } else {
            $id = new Text('id');
        }

        $this->add($id);

        //doctor msisdn

        $dest = new Text('dest');

        $dest->setLabel('Specialist *');

        $dest->addValidators([
          new PresenceOf([
              'message' => 'Specialist is required'
          ])
        ]);

        $this->add($dest);

        //doctor msisdn


        // CSRF
        $csrf = new Hidden('csrf');

        $csrf->addValidator(new Identical([
            'value' => $this->security->getSessionToken(),
            'message' => 'CSRF validation failed'
        ]));

        $csrf->clear();

        $this->add($csrf);

        // Save
        $this->add(new Submit('Save', [
            'class' => 'btn btn-success',
            'id'=> 'submit'
        ]));

        // Search
        $this->add(new Submit('Search', [
            'class' => 'btn',
            'id'=> 'submit',
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
