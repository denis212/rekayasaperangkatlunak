<?php
namespace Vokuro\Models;

use Phalcon\Mvc\Model;
use Phalcon\Mvc\Model\Behavior\Timestampable;
use Phalcon\Db\RawValue;

class Penjualan extends Model
{


    public $id;
    public $id_reseller;
    public $msisdn;
    public $username;
    public $pass;
    public $terjual;
    public $status;
    public $created;
    public $updated;

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
        // $d = "penjualan_akun_".date('Ym');
        return "penjualan_akun_".date('Ym');
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

    public function beforeCreate()
    {
        $this->doctor_created =  new RawValue('now()');
        $this->doctor_updated =  new RawValue('now()');
    }

    public function beforeUpdate()
    {
        $this->doctor_updated =  new RawValue('now()');
    }

}
