<?php
namespace Vokuro\Models;

use Phalcon\Mvc\Model;
use Phalcon\Validation;
use Phalcon\Mvc\Model\Validator\Email as EmailValidator;
use Phalcon\Db\RawValue;

class Contact extends Model
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
     * @Column(type="string", length=255, nullable=false)
     */
    public $name;

    /**
     *
     * @var string
     * @Column(type="string", length=255, nullable=false)
     */
    public $email;

    /**
     *
     * @var string
     * @Column(type="string", length=255, nullable=false)
     */
    public $subject;

    /**
     *
     * @var string
     * @Column(type="string", length=255, nullable=false)
     */
    public $body;

    public $created_at;

    public $upddate_at;

    /**
     * Validations and business logic
     *
     * @return boolean
     */

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
        return 'contact';
    }
    
    public function afterSave()
    {
        // Only send the confirmation email if emails are turned on in the config
        $this->getDI()
            ->getMail()
            ->send([$this->email => $this->$name],"$this->subject", 'contact', [ 'emailBody'=> "$this->body"]);
    }

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
     * Allows to query a set of records that match the specified conditions
     *
     * @param mixed $parameters
     * @return Contact[]|Contact
     */
    public static function find($parameters = null)
    {
        return parent::find($parameters);
    }

    /**
     * Allows to query the first record that match the specified conditions
     *
     * @param mixed $parameters
     * @return Contact
     */
    public static function findFirst($parameters = null)
    {
        return parent::findFirst($parameters);
    }



}
