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
use Phalcon\Validation\Validator\PresenceOf;
use Phalcon\Validation\Validator\Email;
use Vokuro\Models\Inputadmin;
use Phalcon\Validation\Validator\Identical;
use Phalcon\Forms\Element\Submit;
use Phalcon\Validation\Validator\Numericality;
use Phalcon\Validation;
use Phalcon\Validation\Validator\StringLength as StringLength;




class HospitalForm extends Form
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

        //kode_rs

        $kode_rs = new Text('kode_rs',[
            'maxlength'   => 6,
            'placeholder' => 'Hospital Code',
        ]);

        $kode_rs->setLabel('Kode Rumah Sakit *');

        $kode_rs->addValidators([
          new PresenceOf([
              'message' => 'Kode Rumah Sakit is required'
          ]),
          new StringLength(
              [
                  "max"            => 6,
                  "min"            => 2,
                  "messageMaximum" => "Code Hospital Too Long",
                  "messageMinimum" => "Code Hospital Too Short",
              ]
          )
        ]);

        $this->add($kode_rs);

        //$kode_rs

        // nama_rs
        $nama_rs = new Text('nama_rs');

        $nama_rs->setLabel('Nama RS *');

        $nama_rs->addValidators([
          new PresenceOf([
              'message' => 'Nama RS is required'
          ])
        ]);

        $this->add($nama_rs);
        // $nama_rs

        //alamat_rs
        $alamat_rs = new TextArea('alamat_rs');
        $alamat_rs->setLabel('Alamat RS');
        $alamat_rs->addValidators([
            new PresenceOf([
                'message' => 'Alamat RS is required'
            ])
        ]);
        $this->add($alamat_rs);
        // alamat_rs

        //telp_rs
        $telp_rs = new Text('telp_rs');

        $telp_rs->setLabel('No. Telepon');

        $this->add($telp_rs);
        // telp_rs

        // email rs
        $email_rs = new Text('email_rs', [
            'placeholder' => 'sample@yourmail.com'
        ]);

        $email_rs->setLabel('E-Mail RS');

        $email_rs->addValidators([
            new Email([
                'message' => 'The e-mail is not valid'
            ])
        ]);

        $this->add($email_rs);

        // email rs

        //status_rs
        $status_rs = new select('status_rs', ['1'=>'Active','0'=>'InActive']);
        $status_rs->setLabel('Status RS *');
        $status_rs->addValidators([
            new PresenceOf([
                'message' => 'Status RS is required'
            ])
        ]);
        $this->add($status_rs);
        //status_rs

        //photo RS
        $pic_rs= new Text('pic_rs');
        $this->add($pic_rs);
        //photo RS

        //lat_rs
        $lat_rs = new Text('lat_rs');

        $lat_rs->setLabel('Latitude RS *');

        $this->add($lat_rs);
        // lat_rs

        //$lon_rs
        $lon_rs = new Text('lon_rs');

        $lon_rs->setLabel('Longitude RS *');

        $this->add($lon_rs);
        // $lon_rs

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
