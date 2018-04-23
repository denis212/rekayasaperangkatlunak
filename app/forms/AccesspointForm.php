<?php
namespace Vokuro\Forms;


use Phalcon\Forms\Form;
use Phalcon\Forms\Element\Text;
use Phalcon\Forms\Element\TextArea;
use Phalcon\Forms\Element\Hidden;
use Phalcon\Forms\Element\File;
use Phalcon\Forms\Element\Check;
// use Phalcon\Forms\Element\InputTag;
use Phalcon\Forms\Element\Select;
use Phalcon\Forms\Element\Numeric;
use Vokuro\Models\Profiles;
use Vokuro\Models\Users;
use Vokuro\Models\Expertise;
use Vokuro\Models\Accesspoint;
use Phalcon\Validation\Validator\Identical;
use Phalcon\Forms\Element\Submit;
use Phalcon\Validation\Validator\Numericality;
use Phalcon\Validation;
use Phalcon\Validation\Validator\PresenceOf;
use Phalcon\Validation\Validator\Email;
use Phalcon\Validation\Validator\StringLength;
use Phalcon\Validation\Validator\Confirmation;



class AccesspointForm extends Form
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

        // //id reseller
        // $id_reseller= new Text('id_reseller', [
        //     'placeholder' => 'Id Reseller'
        // ]);
        //
        // $id_reseller->setLabel('Reseller');
        //  // $id_reseller->addValidators([
        //  //    new PresenceOf([
        //  //        'message' => 'Id Reseller is required'
        //  //    ])
        //  // ]);
        // $this->add($id_reseller);

        //nama agen
        $nama_agen = new Text('nama_agen', [
            'placeholder' => 'Nama Agen'
        ]);

        $nama_agen->setLabel('Nama Agen');

        $nama_agen->addValidators([
            new PresenceOf([
                'message' => 'Nama Agen is required'
            ])
        ]);

        $this->add($nama_agen);


        //merk
         $merk = new Text('merk', [
            'placeholder' => 'Merk'
        ]);

        $merk->setLabel('Merk');
        $merk->addValidators([
            new PresenceOf([
                'message' => 'Merk is required'
            ])
        ]);

        $this->add($merk);


        //serial number
        $serial_number = new Text('serial_number', [
            'placeholder' => 'Serial Number'
        ]);

        $serial_number->setLabel('Serial Number');
        $serial_number->addValidators([
            new PresenceOf([
                'message' => 'Serial Number is required'
            ])
        ]);

        $this->add($serial_number);


        //lokasi
         $lokasi = new Text('lokasi', [
            'placeholder' => 'Lokasi'
        ]);

        $lokasi->setLabel('Lokasi');
        $lokasi->addValidators([
            new PresenceOf([
                'message' => 'Lokasi is required'
            ])
        ]);

        $this->add($lokasi);


        //alamat
        $alamat = new Text('alamat', [
            'placeholder' => 'Alamat'
        ]);

        $alamat->setLabel('Alamat');
        $alamat->addValidators([
            new PresenceOf([
                'message' => 'Alamat is required'
            ])
        ]);

        $this->add($alamat);

        // Save
        $this->add(new Submit('Save', [
            'class' => 'btn btn-success',
            'id'=> 'submit'
        ]));

        // Save
        $this->add(new Submit('Search', [
            'class' => 'btn btn-success',
            'id'=> 'submit'
        ]));

        //id_doctor
        $findreseller = Users::find(["profilesId = '5'"]);
        $id_reseller = new Select('id_reseller', $findreseller, [
            'using' => [
                'id',
                'name'
            ],
            'useEmpty' => true,
            'emptyText' => '----Select Reseller----',
            'emptyValue' => ''
        ]);
        $id_reseller->setLabel('Reseller *');
        $this->add($id_reseller);

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
