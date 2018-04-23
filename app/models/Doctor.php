<?php
namespace Vokuro\Models;

use Phalcon\Mvc\Model;
use Phalcon\Mvc\Model\Behavior\Timestampable;
use Phalcon\Db\RawValue;

class Doctor extends Model
{


    public $doctor_id;
    public $doctor_email;
    public $doctor_msisdn;
    public $doctor_name;
    public $doctor_address;
    public $doctor_salt;
    public $doctor_pass;
    public $doctor_status;
    public $doctor_created;
    public $doctor_updated;
    public $doctor_photo;
    public $doctor_ktp;
    public $doctor_sim;
    public $doctor_kk;

    public function initialize()
    {
        $this->setSchema("dokter");
    }

    /**
     * Returns table name mapped in the model.
     *
     * @return string
     */
    public function getSource()
    {
        return 'doctor_account';
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
