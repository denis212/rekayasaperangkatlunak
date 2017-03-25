<?php
namespace Vokuro\Models;

use Phalcon\Mvc\Model;
use Phalcon\Mvc\Model\Behavior\Timestampable;
use Phalcon\Db\RawValue;

class Adspace extends Model
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
     * @Column(type="integer", length=11, nullable=false)
     */
    public $client_id;

    /**
     *
     * @var string
     * @Column(type="string", length=55, nullable=false)
     */
    public $client_name;

    /**
     *
     * @var string
     * @Column(type="string", length=255, nullable=false)
     */
    public $ad_url;

    /**
     *
     * @var string
     * @Column(type="string", length=8, nullable=false)
     */
    public $ad_type;

    /**
     *
     * @var string
     * @Column(type="string", length=1, nullable=false)
     */
    public $ad_guarantee;

    /**
     *
     * @var string
     * @Column(type="string", length=1, nullable=false)
     */
    public $ad_status;

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
    public $updated_at;

    public $status;

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
        return 'adspace';
    }

    public function afterCreate()
    {
        // Only send the confirmation email if emails are turned on in the config
        $this->getDI()
            ->getMail()
            ->send(["admin@gamanads.com" => "Admin GamanAds"],"New Adspace", 'newadspace',
                [ 'emailBody'=> "New Adspace : <b>$this->ad_url</b> from Client Id : <b>$this->client_id</b> Client Name: <b>$this->client_name</b>"]);
    }

    public function afterUpdate()
    {
        // Only send the confirmation email if emails are turned on in the config
        $this->getDI()
            ->getMail()
            ->send(["admin@gamanads.com" => "Admin GamanAds"],"Update Adspace", 'updateadspace',
                [ 'emailBody'=> "Update Adspace : <b>$this->ad_url</b> from Client Id : <b>$this->client_id</b> Client Name: <b>$this->client_name</b>"]);
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
        $this->created_at =  new RawValue('now()');
        $this->updated_at =  new RawValue('now()');
    }

    public function beforeUpdate()
    {
        $this->updated_at =  new RawValue('now()');
    }

}
