<?php
namespace Vokuro\Models;

use Phalcon\Mvc\Model;
use Phalcon\Mvc\Model\Behavior\Timestampable;
use Phalcon\Db\RawValue;

class Daftarbank extends Model
{


    public $id;
    public $nama;
    public $norek;
    public $namaakun;
    public $cabang;

    public function initialize()
    {
        $this->setSchema("cmsjpu");
    }

    /**
     * Returns table name mapped in the model.
     *
     * @return string
     */
    public function getSource()
    {
        return 'daftar_bank';
    }

}
