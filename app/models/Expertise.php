<?php
namespace Vokuro\Models;

use Phalcon\Mvc\Model;
use Phalcon\Mvc\Model\Behavior\Timestampable;
use Phalcon\Db\RawValue;

class Expertise extends Model
{


    public $id;
    public $dest;

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
        return 'expertise';
    }

    public function afterCreate()
    {
        // Only send the confirmation email if emails are turned on in the config
        // $this->getDI()
        //     ->getMail()
        //     ->send(["admin@gamanads.com" => "Admin GamanAds"],"New Adspace", 'newadspace',
        //         [ 'emailBody'=> "New Adspace : <b>$this->ad_url</b> from Client Id : <b>$this->client_id</b> Client Name: <b>$this->client_name</b>"]);
    }

    public function afterUpdate()
    {
        // Only send the confirmation email if emails are turned on in the config
        // $this->getDI()
        //     ->getMail()
        //     ->send(["admin@gamanads.com" => "Admin GamanAds"],"Update Adspace", 'updateadspace',
        //         [ 'emailBody'=> "Update Adspace : <b>$this->ad_url</b> from Client Id : <b>$this->client_id</b> Client Name: <b>$this->client_name</b>"]);
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
