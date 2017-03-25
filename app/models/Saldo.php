<?php
namespace Vokuro\Models;

use Phalcon\Mvc\Model;
use Phalcon\Mvc\Model\Behavior\Timestampable;
use Phalcon\Db\RawValue;

class Saldo extends Model
{

    /**
     *
     * @var integer
     * @Primary
     * @Identity
     * @Column(type="integer", length=11, nullable=false)
     */
    public $id;

    /**
     *
     * @var integer
     * @Column(type="integer", length=11, nullable=false)
     */
    public $user_id;

    /**
     *
     * @var double
     * @Column(type="double", length=25, nullable=false)
     */
    public $cur_saldo;

    public $created_at;

    /**
     *
     * @var string
     * @Column(type="string", nullable=false)
     */
    public $upddate_at;

    /**
     * Validations and business logic
     *
     * @return boolean
     */
     public function beforeCreate()
     {
         $this->created_at =  new RawValue('now()');
         $this->upddate_at =  new RawValue('now()');
     }

     public function beforeUpdate()
     {
         $this->upddate_at =  new RawValue('now()');
     }
    /**
     * Initialize method for model.
     */
    public function initialize()
    {
        $this->setSchema("vokuro");
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
