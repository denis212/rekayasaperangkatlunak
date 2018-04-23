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

class InsresellerForm extends Form
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

        $nama = new Text('nama', [
            'placeholder' => 'Nama Calon Reseller'
        ]);
        $nama->setLabel('Nama Reseller');
        $nama->addValidators([
            new PresenceOf([
                'message' => 'Nama Calon Reseller is required'
            ])
        ]);

        $this->add($nama);

        $tlp = new Text('no_hp', [
            'placeholder' => 'Nomor Hp Reseller'
        ]);
        $tlp->setLabel('No HP Reseller');
        $tlp->addValidators([
            new PresenceOf([
                'message' => 'No Hp Reseller is required'
            ])
        ]);

        $this->add($tlp);

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
