<?php
namespace Vokuro\Models;

use Phalcon\Mvc\Model;
use Phalcon\Mvc\Model\Behavior\Timestampable;
use Phalcon\Db\RawValue;

class Confirmation extends Model
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
     * @var string
     * @Column(type="string", length=10, nullable=false)
     */
    public $user_id;

    /**
     *
     * @var string
     * @Column(type="string", length=25, nullable=false)
     */
    public $username;

    /**
     *
     * @var string
     * @Column(type="string", length=100, nullable=false)
     */
    public $bankname;

    /**
     *
     * @var string
     * @Column(type="string", length=100, nullable=false)
     */
    public $branch;

    /**
     *
     * @var string
     * @Column(type="string", length=25, nullable=false)
     */
    public $accountnumber;

    /**
     *
     * @var string
     * @Column(type="string", length=50, nullable=false)
     */
    public $accountname;

    /**
     *
     * @var string
     * @Column(type="string", length=12, nullable=false)
     */
    public $phone;

    /**
     *
     * @var string
     * @Column(type="string", length=255, nullable=false)
     */
    public $email;

    /**
     *
     * @var string
     * @Column(type="string", length=30, nullable=false)
     */
    public $nominal;

    /**
     *
     * @var string
     * @Column(type="string", length=25, nullable=false)
     */
    public $currency;

    /**
     *
     * @var string
     * @Column(type="string", nullable=false)
     */
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

     public function afterCreate()
     {
         // Only send the confirmation email if emails are turned on in the config
         $this->getDI()
             ->getMail()
             ->send(["admin@gamanads.com" => "Admin GamanAds"],"New Confirmation Payment", 'confirmpayment',
                 [ 'emailBody'=> "Payment from Client Id : <b>$this->user_id</b><br>
                  Client Name: <b>$this->username</b><br>
                  Bank Name : $this->bankname <br>
                  Branch : $this->branch <br>
                  Account Number : $this->accountnumber <br>
                  Account Name : $this->accountname <br>
                  Nominal : $this->nominal <br>
                  Currency : $this->currency <br>

                 "]);
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
        return 'confirmation';
    }

    /**
     * Allows to query a set of records that match the specified conditions
     *
     * @param mixed $parameters
     * @return Confirmation[]|Confirmation
     */
    public static function find($parameters = null)
    {
        return parent::find($parameters);
    }

    /**
     * Allows to query the first record that match the specified conditions
     *
     * @param mixed $parameters
     * @return Confirmation
     */
    public static function findFirst($parameters = null)
    {
        return parent::findFirst($parameters);
    }

}
