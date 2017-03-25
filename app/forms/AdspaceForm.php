<?php
namespace Vokuro\Forms;

use Phalcon\Forms\Form;
use Phalcon\Forms\Element\Text;
use Phalcon\Forms\Element\Hidden;
use Phalcon\Forms\Element\File;
use Phalcon\Forms\Element\Check;
// use Phalcon\Forms\Element\InputTag;
use Phalcon\Forms\Element\Select;
use Phalcon\Forms\Element\Numeric;
use Phalcon\Validation\Validator\PresenceOf;
use Phalcon\Validation\Validator\Email;
use Vokuro\Models\Profiles;
use Phalcon\Validation\Validator\Identical;
use Phalcon\Forms\Element\Submit;
use Phalcon\Validation\Validator\Numericality;
use Vokuro\Models\Users;



class AdspaceForm extends Form
{

    public function initialize($entity = null, $options = null)
    {

        // In edition the id is hidden
        if (isset($options['edit']) && $options['edit']) {
            $id = new Hidden('id');
        } else {
            $id = new Text('id');
        }

        $this->add($id);

        //client Id & Role (profilesID)
        $client_id = new Hidden('client_id', [
            'value' =>  $this->auth->getId()
        ]);

        $this->add($client_id);

        $role = new Hidden('role', [
            'value' =>  $this->auth->getProfilesId()
        ]);

        $this->add($role);

        //client name

        $client_name = new Text('client_name', [
          'value' => $this->auth->getName(),
          'readonly' => true,
        ]);
        $client_name->setLabel('Client Name *');

        $client_name->addValidators([
            new PresenceOf([
                'message' => 'The Name is required'
            ])
        ]);

        $this->add($client_name);


        // Url
        $ad_url = new Text('ad_url', [
            'placeholder' => 'http://www.mobiwin.com'
        ]);

        $ad_url->setLabel('Ad Url *');

        $ad_url->addValidators([
          new PresenceOf([
              'message' => 'Ad Url is required'
          ])
        ]);

        $this->add($ad_url);

        //type ads
        $ad_type = new Select('ad_type', [
            'Text' => 'Text',
            'Image' => 'Image',
            'Both' => 'Both',
        ],[
            'useEmpty' => True,
            'emptyText' => 'Please Select',
            'emptyValue' => ''
        ]);

        $ad_type->addValidators([
            new PresenceOf([
                'message' => 'Ad Type is required'
            ])
        ]);

        $ad_type->setLabel('Ad Type');

        $this->add($ad_type);

        //cp Declare guarantees
        $ad_guarantee = new Check('ad_guarantee', [
            'value' => 'yes'
        ]);

        $ad_guarantee->setLabel('I declare and gurantee that my AdSpace meets the Quality Guidelines *');

        $ad_guarantee->addValidator(
            new PresenceOf([
                'message' => 'Ad guarantee is required',
                'value' => 'yes'
            ])
        );

        $this->add($ad_guarantee);

        //Status
        $ad_status = new Check('ad_status', [
            'value' => 'yes'
        ]);

        $ad_status->setLabel('Activate this ad space after creation');

        $this->add($ad_status);

        // CSRF
        $csrf = new Hidden('csrf');

        $csrf->addValidator(new Identical([
            'value' => $this->security->getSessionToken(),
            'message' => 'CSRF validation failed'
        ]));

        $csrf->clear();

        $this->add($csrf);

        // Save
        $this->add(new Submit('Save', [
            'class' => 'btn btn-success',
            'id'=> 'submit'
        ]));

        //client search
        $client = Users::find(['order'=>'id']);
        $client_search = new Select('client_search', $client, [
            'using' => [
                'id',
                'name'
            ],
            'useEmpty' => true,
            'emptyText' => 'All',
            'emptyValue' => ''
        ]);
        $client_search->setLabel('Client Name');
        $this->add($client_search);

        //Ad Type
        $ad_type = new select('ad_typesearch', ['Text'=>'Text','Image'=>'Image','Both'=>'Both'],[
          'useEmpty' => true,
          'emptyText' => 'All',
          'emptyValue' => '']
        );
        $ad_type->setLabel('Ad Type');
        $this->add($ad_type);

        //Status
        $cp_status = new select('cp_status', ['A'=>'Active','N'=>'Inactive'],[
          'useEmpty' => true,
          'emptyText' => 'All',
          'emptyValue' => '']
        );
        $cp_status->setLabel('Status');
        $this->add($cp_status);

        // Search
        $this->add(new Submit('Search', [
            'class' => 'btn',
            'id'=> 'submit',
        ]));

    }

    public function messages($name)
    {
        if ($this->hasMessagesFor($name)) {
            foreach ($this->getMessagesFor($name) as $message) {
                $this->flash->error($message);
            }
        }
    }
}
