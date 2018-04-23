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



class InputadminForm extends Form
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

        // Nama Client
        $nama_klien = new Text('nama_klien');

        $nama_klien->setLabel('Nama Klien *');

        $nama_klien->addValidators([
          new PresenceOf([
              'message' => 'Nama Klien is required'
          ])
        ]);

        $this->add($nama_klien);

        // Title Iklan
        $title_iklan = new Text('title_iklan');

        $title_iklan->setLabel('Title *');

        $title_iklan->addValidators([
          new PresenceOf([
              'message' => 'Title is required'
          ])
        ]);

        $this->add($title_iklan);


        // Url klik
        $url_klik = new Text('url_klik', [
            'placeholder' => 'http://www.mobiwin.com'
        ]);

        $url_klik->setLabel('Url Click *');

        $url_klik->addValidators([
          new PresenceOf([
              'message' => 'Url Click is required'
          ])
        ]);

        $this->add($url_klik);

        //Start Date
        $start_date = new Text('start_date', [
            'placeholder' => 'ex: mm/dd/yyyy'
        ]);

        $start_date->setLabel('Start Date *');

        $start_date->addValidators([
            new PresenceOf([
                'message' => 'Start Date is required'
            ])
        ]);

        $this->add($start_date);

        //End date
        $end_date = new Text('end_date', [
            'placeholder' => 'ex: mm/dd/yyyy',
        ]);

        $end_date->setLabel('End Date *');

        $end_date->addValidators([
            new PresenceOf([
                'message' => 'End Date is required'
            ])
        ]);

        $this->add($end_date);

        //Page iklan
        $page_iklan = new Text('page_iklan', [
            'placeholder' => 'ex: page 3'
        ]);

        $page_iklan->setLabel('Page Iklan');

        $page_iklan->addValidators([
            new PresenceOf([
                'message' => 'Page Iklan is required'
            ])
        ]);

        $this->add($page_iklan);

        //Iklan Aktif
        $iklan_aktif = new Check('iklan_aktif', [
            'value' => 'yes'
        ]);

        $iklan_aktif->setLabel('Iklan aktif seketika setelah disimpan');

        $this->add($iklan_aktif);

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
