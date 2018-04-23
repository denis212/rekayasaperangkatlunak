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
use Vokuro\Models\Profiles;
use Vokuro\Models\Users;
use Phalcon\Validation\Validator\Identical;
use Phalcon\Forms\Element\Submit;
use Phalcon\Validation\Validator\Numericality;



class DoctorForm extends Form
{

    public function initialize($entity = null, $options = null)
    {

        // In edition the id is hidden
        if (isset($options['edit']) && $options['edit']) {
            $doctor_id = new Hidden('doctor_id');
        } else {
            $doctor_id = new Text('doctor_id');
        }

        $this->add($doctor_id);


        //doctor email
        $doctor_email = new Text('doctor_email', [
            'placeholder' => 'sample@yourmail.com'
        ]);

        $doctor_email->setLabel('E-Mail *');

        $doctor_email->addValidators([
            new PresenceOf([
                'message' => 'The e-mail is required'
            ]),
            new Email([
                'message' => 'The e-mail is not valid'
            ])
        ]);

        $this->add($doctor_email);

        //doctor email
        //
        //doctor msisdn

        $doctor_msisdn = new Text('doctor_msisdn');

        $doctor_msisdn->setLabel('Nomor HP *');

        $doctor_msisdn->addValidators([
          new PresenceOf([
              'message' => 'Nomor HP is required'
          ])
        ]);

        $this->add($doctor_msisdn);

        //doctor msisdn
        //
        // Nama Doctor
        $doctor_name = new Text('doctor_name');

        $doctor_name->setLabel('Nama Dokter *');

        $doctor_name->addValidators([
          new PresenceOf([
              'message' => 'Nama Dokter is required'
          ])
        ]);

        $this->add($doctor_name);
        //nama dokter
        //
        //doctor address
        $doctor_address = new TextArea('doctor_address');
        $doctor_address->setLabel('Alamat Dokter');
        $doctor_address->addValidators([
            new PresenceOf([
                'message' => 'Alamat Dokter is required'
            ])
        ]);
        $this->add($doctor_address);
        // doctor address
        //
        //Doctor salt
        $doctor_salt = new Text('doctor_salt');

        $doctor_salt->setLabel('Doctor Salt');

        $this->add($doctor_salt);
        // dokter salt
        //
        //Doctor Status
        $doctor_status = new select('doctor_status', ['1'=>'Active','0'=>'InActive']);
        $doctor_status->setLabel('Doctor Status *');
        $doctor_status->addValidators([
            new PresenceOf([
                'message' => 'Doctor Status is required'
            ])
        ]);
        $this->add($doctor_status);
        //doctor status
        //
        //photo dokter
        $doctor_photo = new Text('doctor_photo');
        $this->add($doctor_photo);
        //photo dokter
        //
        //ktp dokter
        $doctor_ktp = new Text('doctor_ktp');
        $this->add($doctor_ktp);
        //ktp dokter

        //sim dokter
        $doctor_sim = new Text('doctor_sim');
        $this->add($doctor_sim);
        //sim dokter

        //kk dokter
        $doctor_kk = new Text('doctor_kk');
        $this->add($doctor_kk);
        //kk dokter

        $hijau = new Hidden('green');
        $this->add($hijau);

        $tampcount = new Text('tampcount');
        $this->add($tampcount);

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
