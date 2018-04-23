<?php
namespace Vokuro\Models;

use Phalcon\Mvc\Model;
use Phalcon\Mvc\Model\Behavior\Timestampable;
use Phalcon\Db\RawValue;

class Inputadmin extends Model
{


    public $id;

    public $nama_klien;

    public $title_iklan;

    public $url_klik;

    public $start_date;

    public $end_date;

    public $iklan_aktif;

    public $url_gambar;

    public $page_iklan;

    public $created_at;

    public $updated_at;

    public function initialize()
    {
        $this->setSchema("cms_lock");
    }

    /**
     * Returns table name mapped in the model.
     *
     * @return string
     */
    public function getSource()
    {
        return 'input';
    }

    public static function find($parameters = null)
    {
        return parent::find($parameters);
    }

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
