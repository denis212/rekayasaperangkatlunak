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
use Vokuro\Models\Doctor;
use Vokuro\Models\Hospital;
use Vokuro\Models\Expertise;

use Phalcon\Validation;
use Phalcon\Validation\Validator\StringLength as StringLength;




class ScheduleForm extends Form
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

        //id_doctor
        $find_doctor = Doctor::find();
        $id_doctor = new Select('id_doctor', $find_doctor, [
            'using' => [
                'doctor_id',
                'doctor_name'
            ],
            'useEmpty' => true,
            'emptyText' => '----Select----',
            'emptyValue' => ''
        ]);
        $id_doctor->setLabel('Dokter *');
        $this->add($id_doctor);

        //id_rs
        $find_hospital = Hospital::find();
        $id_rs = new Select('id_rs', $find_hospital, [
            'using' => [
                'kode_rs',
                'nama_rs'
            ],
            'useEmpty' => true,
            'emptyText' => '----Select----',
            'emptyValue' => ''
        ]);
        $id_rs->setLabel('Kode RS *');
        $this->add($id_rs);

        //id_expertise
        $find_expertise = Expertise::find();
        $id_expertise= new Select('id_expertise', $find_expertise, [
            'using' => [
                'id',
                'dest'
            ],
            'useEmpty' => true,
            'emptyText' => '----Select----',
            'emptyValue' => ''
        ]);

        $id_expertise->setLabel('Kode Spesialis *');
        $this->add($id_expertise);

        //monday
        $monday = new Text('monday',[
            'placeholder' => '09:00-14:00'
        ]);
        $monday->setLabel('Monday');
        $this->add($monday);
        //monday

        //$tuesday
        $tuesday= new Text('tuesday',[
            'placeholder' => '09:00-14:00'
        ]);
        $tuesday->setLabel('Tuesday');
        $this->add($tuesday);
        //$tuesday

        //wednesday
        $wednesday= new Text('wednesday',[
            'placeholder' => '09:00-14:00'
        ]);
        $wednesday->setLabel('Wednesday');
        $this->add($wednesday);
        //wednesday

        //thurday
        $thurday= new Text('thurday',[
            'placeholder' => '09:00-14:00'
        ]);
        $thurday->setLabel('Thursday');
        $this->add($thurday);
        //thurday

        //$friday
        $friday= new Text('friday',[
            'placeholder' => '09:00-14:00'
        ]);
        $friday->setLabel('Friday');
        $this->add($friday);
        //thurday

        //$saturday
        $saturday= new Text('saturday',[
            'placeholder' => '09:00-14:00'
        ]);
        $saturday->setLabel('Saturday');
        $this->add($saturday);
        //$saturday

        //$saturday
        $sunday= new Text('sunday',[
            'placeholder' => '09:00-14:00'
        ]);
        $sunday->setLabel('Sunday');
        $this->add($sunday);
        //$saturday

        // Status
        $status = new select('status', ['1'=>'Active','0'=>'InActive']);
        $status->setLabel('Status');
        $this->add($status);
        // status

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

        //telp_rs
        $telp_rs = new Text('telp_rs');

        $telp_rs->setLabel('No. Telepon');

        $this->add($telp_rs);
        // telp_rs

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
