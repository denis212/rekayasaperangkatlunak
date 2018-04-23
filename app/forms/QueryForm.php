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
use Vokuro\Models\Users;
use Vokuro\Models\Users as Userbaru;
use Phalcon\Forms\Element\Submit;

class QueryForm extends Form
{

    public function initialize($entity = null, $options = null)
    {

        $startdate = new Text('startdate');
        $startdate->setLabel('Start Date');
        $this->add($startdate);

        $enddate = new Text('enddate');
        $enddate->setLabel('End Date');
        $this->add($enddate);
        // Sign Up
        $this->add(new Submit('Submit', [
            'class' => 'btn btn-success'
        ]));

        $referal = Users::find([
          "profilesId in ('1','4')",
          'order'=>'id'
        ]);
        $referalsrc = new Select('referal', $referal, [
            'using' => [
                'id',
                'name'
            ],
            'useEmpty' => true,
            'emptyText' => '---- List Referal ----',
            'emptyValue' => ''
        ]);
        $referalsrc->setLabel('Referal');
        $this->add($referalsrc);

        $reseller = Users::find([
          "profilesId = '5'",
          'order'=>'id',
        ]);
        $$resellersrc = new Select('reseller', $reseller, [
            'using' => [
                'id',
                'name'
            ],
            'useEmpty' => true,
            'emptyText' => '---- List Reseller ----',
            'emptyValue' => ''
        ]);
        $$resellersrc->setLabel('Reseller');
        $this->add($$resellersrc);

        $nohp = new Text('nohp');
        $nohp->setLabel('No HP');
        $this->add($nohp);

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
