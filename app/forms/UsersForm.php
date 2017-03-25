<?php
namespace Vokuro\Forms;

use Phalcon\Forms\Form;
use Phalcon\Forms\Element\Text;
use Phalcon\Forms\Element\TextArea;
use Phalcon\Forms\Element\Hidden;
use Phalcon\Forms\Element\Select;
use Phalcon\Validation\Validator\PresenceOf;
use Phalcon\Validation\Validator\Email;
use Vokuro\Models\Profiles;

class UsersForm extends Form
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

        $name = new Text('name', [
            'placeholder' => 'First Name'
        ]);
        $name->setLabel('First Name');
        $name->addValidators([
            new PresenceOf([
                'message' => 'The first name is required'
            ])
        ]);

        $this->add($name);

        $name2 = new Text('lastname', [
            'placeholder' => 'Last Name'
        ]);
        $name2->setLabel('Last Name');

        $name2->addValidators([
            new PresenceOf([
                'message' => 'The last name is required'
            ])
        ]);

        $this->add($name2);


        // Email
        $email = new Text('email', [
            'placeholder' => 'sample@gamanads.com'
        ]);

        $email->setLabel('E-Mail');

        $email->addValidators([
            new PresenceOf([
                'message' => 'The e-mail is required'
            ]),
            new Email([
                'message' => 'The e-mail is not valid'
            ])
        ]);

        $this->add($email);

        $profiles = Profiles::find([
            'active = :active:',
            'bind' => [
                'active' => 'Y'
            ]
        ]);

        $this->add(new Select('profilesId', $profiles, [
            'using' => [
                'id',
                'name'
            ],
            'useEmpty' => true,
            'emptyText' => '...',
            'emptyValue' => ''
        ]));

        $this->add(new Select('banned', [
            'Y' => 'Yes',
            'N' => 'No'
        ]));

        $this->add(new Select('suspended', [
            'Y' => 'Yes',
            'N' => 'No'
        ]));

        $this->add(new Select('active', [
            'Y' => 'Yes',
            'N' => 'No'
        ]));

        //type akunnya
        $type = new Select('type', [
          'A' => 'Advertiser',
            'P' => 'Publisher'
        ]);

        $type->addValidators([
            new PresenceOf([
                'message' => 'Type Account is required'
            ])
        ]);

        $type->setLabel('Type Account');

        $this->add($type);

        $skype = new Text('skype', [
            'placeholder' => 'Skype Account'
        ]);

        $skype->setLabel('Skype Account');

        $skype->addValidators([
            new PresenceOf([
                'message' => 'Skype Account is required'
            ])
        ]);

        $this->add($skype);

        $phone = new Text('phone', [
            'placeholder' => '+6288888'
        ]);
        $phone->setLabel('Phone Number');
        $phone->addValidators([
            new PresenceOf([
                'message' => 'Phone Number is required'
            ])
        ]);

        $this->add($phone);

        //company
        $company = new Text('company', [
            'placeholder' => 'Company Name'
        ]);
        $company->setLabel('Company');
        $this->add($company);

        //company address
        $address = new TextArea('address', [
            'placeholder' => 'Company Address'
        ]);
        $address->setLabel('Company Address');
        $this->add($address);

        //company address
        $city = new Text('city', [
            'placeholder' => 'City'
        ]);
        $city->setLabel('City');
        $this->add($city);

        //company address
        $country = new Text('country', [
            'placeholder' => 'Country'
        ]);
        $country->setLabel('Country');
        $this->add($country);
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
