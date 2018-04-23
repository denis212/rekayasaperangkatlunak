<?php
namespace Vokuro\Models;

use Phalcon\Mvc\Model;
use Phalcon\Mvc\Model\Behavior\Timestampable;
use Phalcon\Db\RawValue;

class Accesspoint extends Model
{


    public $id;
    public $id_reseller;
    // public $nama_agen;
    public $merk;
    public $serial_number;
    public $lokasi;
    public $alamat;
    public $created;
    public $updates;

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
        return 'access_point';
    }

    public function beforeCreate()
    {
        $this->created =  new RawValue('now()');
        $this->updated =  new RawValue('now()');
    }

    public function beforeUpdate()
    {
        $this->updated =  new RawValue('now()');
    }
    /**
     * Allows to query a set of records that match the specified conditions
     *
     * @param mixed $parameters
     * @return Adspace[]|Adspace
     */
    public static function find($parameters = null)
    {
        return parent::find($parameters);
    }

    /**
     * Allows to query the first record that match the specified conditions
     *
     * @param mixed $parameters
     * @return Adspace
     */
    public static function findFirst($parameters = null)
    {
        return parent::findFirst($parameters);
    }



}
