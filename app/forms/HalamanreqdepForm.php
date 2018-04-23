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
use Vokuro\Models\Profiles;
use Phalcon\Validation\Validator\Identical;
use Phalcon\Forms\Element\Submit;
use Phalcon\Validation\Validator\Numericality;
use Vokuro\Models\Users;
use Vokuro\Models\Daftarbank;


class HalamanreqdepForm extends Form
{

    public function initialize($entity = null, $options = null)
    {

        $nominal = new Text('nominal');
        $nominal->setLabel('Nominal');
        $this->add($nominal);


        $namaakun = new Text('namaakun');
        $namaakun->setLabel('Nama Akun');
        $this->add($namaakun);

        $uid = new Text('uid'); //userid
        $uid->setLabel('User ID');
        $this->add($uid);

        $bankname = new Text('bankname');
        $bankname->setLabel('Nama Bank');
        $this->add($bankname);

        $rekening = new Text('rekening');
        $rekening->setLabel('Rekening');
        $this->add($rekening);

        $cabang = new Text('cabang');
        $cabang->setLabel('Cabang');
        $this->add($cabang);

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
