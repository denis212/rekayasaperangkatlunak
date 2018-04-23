<?php
namespace Vokuro\Models;

use Phalcon\Mvc\Model;
use Phalcon\Mvc\Model\Behavior\Timestampable;
use Phalcon\Db\RawValue;

class Saldo extends Model
{


    public $id;
    public $user_id;
    public $quota;
    public $cur_saldo;
    public $created;
    public $updated;

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
     * Initialize method for model.
     */
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
        return 'saldo';
    }

    /**
     * Allows to query a set of records that match the specified conditions
     *
     * @param mixed $parameters
     * @return Saldo[]|Saldo
     */
    public static function find($parameters = null)
    {
        return parent::find($parameters);
    }

    /**
     * Allows to query the first record that match the specified conditions
     *
     * @param mixed $parameters
     * @return Saldo
     */
    public static function findFirst($parameters = null)
    {
        return parent::findFirst($parameters);
    }

}
