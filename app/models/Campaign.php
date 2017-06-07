<?php

namespace Vokuro\Models;

use Phalcon\Mvc\Model;
use Phalcon\Mvc\Model\Behavior\Timestampable;
use Phalcon\Db\RawValue;

class Campaign extends Model
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
    public $client_id;

    /**
     *
     * @var string
     * @Column(type="string", length=50, nullable=false)
     */
    public $client_name;

    /**
     *
     * @var string
     * @Column(type="string", length=50, nullable=false)
     */
    public $cp_name;

    /**
     *
     * @var string
     * @Column(type="string", length=5, nullable=false)
     */
    public $cp_pricemodel;

    /**
     *
     * @var string
     * @Column(type="string", length=200, nullable=false)
     */
    public $cp_targeturl;

    /**
     *
     * @var string
     * @Column(type="string", length=50, nullable=false)
     */
    public $cp_startenddate;

    /**
     *
     * @var string
     * @Column(type="string", length=400, nullable=false)
     */
    public $cp_country;

    /**
     *
     * @var string
     * @Column(type="string", length=20, nullable=false)
     */
    public $cp_dailybudget;

    /**
     *
     * @var string
     * @Column(type="string", length=20, nullable=false)
     */
    public $cp_totalbudget;

    /**
     *
     * @var string
     * @Column(type="string", length=200, nullable=false)
     */
    public $cp_schedule;

    /**
     *
     * @var string
     * @Column(type="string", length=20, nullable=false)
     */
    public $cp_delivmethod;

    /**
     *
     * @var string
     * @Column(type="string", length=200, nullable=false)
     */
    public $cp_target;

    /**
     *
     * @var string
     * @Column(type="string", length=30, nullable=true)
     */
    public $cp_adult;

    /**
     *
     * @var string
     * @Column(type="string", length=30, nullable=false)
     */
    public $cp_tag;

    /**
     *
     * @var string
     * @Column(type="string", length=300, nullable=true)
     */
    public $cp_zone;

    /**
     *
     * @var string
     * @Column(type="string", length=5, nullable=true)
     */
    public $cp_gettraffic;

    /**
     *
     * @var string
     * @Column(type="string", length=5, nullable=false)
     */
    public $cp_guarantee;

    /**
     *
     * @var string
     * @Column(type="string", length=20, nullable=true)
     */
    public $cp_testbudget;

    /**
     *
     * @var string
     * @Column(type="string", length=10, nullable=true)
     */
    public $cp_mblimit;

    /**
     *
     * @var string
     * @Column(type="string", length=10, nullable=true)
     */
    public $cp_dsktplimit;

    /**
     *
     * @var string
     * @Column(type="string", length=50, nullable=false)
     */
    public $cp_cpmcpa;

    /**
     *
     * @var string
     * @Column(type="string", length=50, nullable=true)
     */
    public $gbr120x600 ;

    /**
     *
     * @var string
     * @Column(type="string", length=50, nullable=true)
     */
    public $gbr160x600;

    /**
     *
     * @var string
     * @Column(type="string", length=50, nullable=true)
     */
    public $gbr250x250 ;

    /**
     *
     * @var string
     * @Column(type="string", length=50, nullable=true)
     */
    public $gbr300x50;

    /**
     *
     * @var string
     * @Column(type="string", length=50, nullable=true)
     */
    public $gbr300x100;

    /**
     *
     * @var string
     * @Column(type="string", length=50, nullable=true)
     */
    public $gbr300x250;

    /**
     *
     * @var string
     * @Column(type="string", length=50, nullable=true)
     */
    public $gbr300x600;

    /**
     *
     * @var string
     * @Column(type="string", length=50, nullable=true)
     */
    public $gbr305x99;

    /**
     *
     * @var string
     * @Column(type="string", length=50, nullable=true)
     */
    public $gbr315x300;

    /**
     *
     * @var string
     * @Column(type="string", length=50, nullable=true)
     */
    public $gbr320x50;

    /**
     *
     * @var string
     * @Column(type="string", length=50, nullable=true)
     */
    public $gbr320x100;

    /**
     *
     * @var string
     * @Column(type="string", length=50, nullable=true)
     */
    public $gbr320x250;

    /**
     *
     * @var string
     * @Column(type="string", length=50, nullable=true)
     */
    public $gbr320x416;

    /**
     *
     * @var string
     * @Column(type="string", length=50, nullable=true)
     */
    public $gbr320x480;

    /**
     *
     * @var string
     * @Column(type="string", length=50, nullable=true)
     */
    public $gbr336x280;

    /**
     *
     * @var string
     * @Column(type="string", length=50, nullable=true)
     */
    public $gbr468x60;

    /**
     *
     * @var string
     * @Column(type="string", length=50, nullable=true)
     */
    public $gbr640x960;

    /**
     *
     * @var string
     * @Column(type="string", length=50, nullable=true)
     */
    public $gbr728x90;

    /**
     *
     * @var string
     * @Column(type="string", length=50, nullable=true)
     */
    public $gbr800x440;

    /**
     *
     * @var string
     * @Column(type="string", length=50, nullable=true)
     */
    public $gbr1024x768;

    public $created_at;
    public $upddate_at;
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
        return 'campaign';
    }

    /**
     * Allows to query a set of records that match the specified conditions
     *
     * @param mixed $parameters
     * @return Campaign[]|Campaign
     */
    public static function find($parameters = null)
    {
        return parent::find($parameters);
    }

    /**
     * Allows to query the first record that match the specified conditions
     *
     * @param mixed $parameters
     * @return Campaign
     */
    public static function findFirst($parameters = null)
    {
        return parent::findFirst($parameters);
    }

    public function afterCreate()
    {
        // Only send the confirmation email if emails are turned on in the config
        $this->getDI()
            ->getMail()
            ->send(["denis.setianto@gmail.com" => "Admin GamanAds"],"New Campaign", 'newcampaign',
                [ 'emailBody'=> "New Campaign : <b>$this->cp_name</b> from Client Id : <b>$this->client_id</b> Client Name: <b>$this->client_name</b>"]);
    }

    public function afterUpdate()
    {
        // Only send the confirmation email if emails are turned on in the config
        $this->getDI()
            ->getMail()
            ->send(["denis.setianto@gmail.com" => "Admin GamanAds"],"Update Campaign", 'updatecampaign',
                [ 'emailBody'=> "Update Campaign : <b>$this->cp_name</b> from Client Id : <b>$this->client_id</b> Client Name: <b>$this->client_name</b>"]);
    }

   public function beforeCreate()
   {
       $this->created_at = new RawValue('now()');
       $this->upddate_at = new RawValue('now()');
   }

   public function beforeUpdate()
   {
       $this->upddate_at = new RawValue('now()');
   }

}
