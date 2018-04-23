<?php
namespace Vokuro\Models;

use Phalcon\Mvc\Model;
use Phalcon\Validation;
use Phalcon\Validation\Validator\Uniqueness;

use Phalcon\Mvc\Model\Behavior\Timestampable;
use Phalcon\Db\RawValue;

/**
 * Vokuro\Models\Users
 * All the users registered in the application
 */
class Hargaprod extends Model
{
  public $harga;

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
      return 'tbl_hargaprod';
  }

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

}
