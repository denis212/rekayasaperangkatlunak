<?php
namespace Vokuro\Forms;

use Phalcon\Forms\Form;
use Phalcon\Forms\Element\Text;
use Phalcon\Forms\Element\TextArea;
use Phalcon\Forms\Element\Hidden;
use Phalcon\Forms\Element\Password;
use Phalcon\Forms\Element\Submit;
use Phalcon\Forms\Element\Check;
use Phalcon\Forms\Element\Select;
use Phalcon\Validation\Validator\PresenceOf;
use Phalcon\Validation\Validator\Email;
use Phalcon\Validation\Validator\Identical;
use Phalcon\Validation\Validator\StringLength;
use Phalcon\Validation\Validator\Confirmation;

class SignUpForm extends Form
{

    public function initialize($entity = null, $options = null)
    {
        $name = new Text('name', [
            'placeholder' => 'First Name'
        ]);

        $name->setLabel('First Name');

        $name->addValidators([
            new PresenceOf([
                'message' => 'The name is required'
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

        // Password
        $password = new Password('password');

        $password->setLabel('Password');

        $password->addValidators([
            new PresenceOf([
                'message' => 'The password is required'
            ]),
            new StringLength([
                'min' => 8,
                'messageMinimum' => 'Password is too short. Minimum 8 characters'
            ]),
            new Confirmation([
                'message' => 'Password doesn\'t match confirmation',
                'with' => 'confirmPassword'
            ])
        ]);

        $this->add($password);

        // Confirm Password
        $confirmPassword = new Password('confirmPassword');

        $confirmPassword->setLabel('Confirm Password');

        $confirmPassword->addValidators([
            new PresenceOf([
                'message' => 'The confirmation password is required'
            ])
        ]);

        $this->add($confirmPassword);

        // Remember
        $terms = new Check('terms', [
            'value' => 'yes'
        ]);

        $terms->setLabel('Accept terms and conditions');

        $terms->addValidator(new Identical([
            'value' => 'yes',
            'message' => 'Terms and conditions must be accepted'
        ]));

        $this->add($terms);

        // CSRF
        // $csrf = new Hidden('csrf');
        //
        // $csrf->addValidator(new Identical([
        //     'value' => $this->security->getSessionToken(),
        //     'message' => 'CSRF validation failed'
        // ]));
        //
        // $csrf->clear();
        //
        // $this->add($csrf);

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
        $country = new select('country',
        ['AFGHANISTAN' => 'AFGHANISTAN','ALAND ISLANDS' => 'ALAND ISLANDS', 'ALBANIA' => 'ALBANIA','ALGERIA'=>'ALGERIA',
          'AMERICAN SAMOA' => 'AMERICAN SAMOA', 'ANDORRA' => 'ANDORRA', 'ANGOLA'=>'ANGOLA', 'ANGUILLA' => 'ANGUILLA',
          'ANTARCTICA' => 'ANTARCTICA', 'ANTIGUA AND BARBUDA' => 'ANTIGUA AND BARBUDA', 'ARGENTINA' => 'ARGENTINA','ARMENIA'=>'ARMENIA',
          'ARUBA' => 'ARUBA', 'AUSTRALIA' => 'AUSTRALIA', 'AUSTRIA' => 'AUSTRIA', 'AZERBAIJAN' => 'AZERBAIJAN', 'BAHAMAS' => 'BAHAMAS',
          'BAHRAIN' => 'BAHRAIN', 'BANGLADESH' => 'BANGLADESH', 'BARBADOS' => 'BARBADOS', 'BELARUS' => 'BELARUS', 'BELGIUM' => 'BELGIUM',
          'BELIZE' => 'BELIZE', 'BENIN' => 'BENIN','BERMUDA' => 'BERMUDA','BHUTAN'=>'BHUTAN','BOLIVIA'=>'BOLIVIA','BONAIRE, SINT EUSTATIUS AND SABA' => 'BONAIRE, SINT EUSTATIUS AND SABA',
          'BOSNIA AND HERZEGOVINA' => 'BOSNIA AND HERZEGOVINA', 'BOTSWANA' => 'BOTSWANA','BOUVET ISLAND' => 'BOUVET ISLAND', 'BRAZIL' => 'BRAZIL',
          'BRITISH INDIAN OCEAN TERRITORY' => 'BRITISH INDIAN OCEAN TERRITORY', 'BRUNEI DARUSSALAM' => 'BRUNEI DARUSSALAM', 'BULGARIA' => 'BULGARIA',
          'BURKINA FASO' => 'BURKINA FASO', 'BURUNDI' => 'BURUNDI','CABO VERDE' => 'CABO VERDE', 'CAMBODIA' => 'CAMBODIA', 'CAMEROON'=>'CAMEROON',
          'CANADA' => 'CANADA', 'CAPE VERDE' => 'CAPE VERDE', 'CAYMAN ISLANDS' => 'CAYMAN ISLANDS', 'CENTRAL AFRICAN REPUBLIC' => 'CENTRAL AFRICAN REPUBLIC',
          'CHAD' => 'CHAD', 'CHILE' => 'CHILE', 'CHINA'=>'CHINA', 'CHRISTMAS ISLAND' => 'CHRISTMAS ISLAND', 'COCOS (KEELING) ISLANDS' =>'COCOS (KEELING) ISLANDS',
          'COLOMBIA' => 'COLOMBIA', 'COMOROS'=>'COMOROS', 'CONGO'=>'CONGO', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE' => 'CONGO, THE DEMOCRATIC REPUBLIC OF THE',
          'COOK ISLANDS' => 'COOK ISLANDS', 'COSTA RICA' => 'COSTA RICA', 'COTE D"IVOIRE' => 'COTE D"IVOIRE', 'CROATIA' => 'CROATIA',
          'CUBA' => 'CUBA','CURACAO' => 'CURACAO','CURAÃƒÂ‡AO' => 'CURAÃƒÂ‡AO', 'CYPRUS' => 'CYPRUS', 'CZECH REPUBLIC' => 'CZECH REPUBLIC',
          'DENMARK' =>'DENMARK', 'DJIBOUTI' => 'DJIBOUTI', 'DOMINICA'=>'DOMINICA', 'DOMINICAN REPUBLIC' =>'DOMINICAN REPUBLIC', 'ECUADOR'=>'ECUADOR',
          'EGYPT'=>'EGYPT', 'EL SALVADOR' =>'EL SALVADOR', 'EQUATORIAL GUINEA' => 'EQUATORIAL GUINEA', 'ERITREA' =>'ERITREA', 'ESTONIA' => 'ESTONIA',
          'ETHIOPIA' => 'ETHIOPIA', 'FALKLAND ISLANDS (MALVINAS)' => 'FALKLAND ISLANDS (MALVINAS)', 'FAROE ISLANDS' =>'FAROE ISLANDS','FIJI' => 'FIJI',
          'FINLAND' => 'FINLAND', 'FRANCE' => 'FRANCE', 'FRENCH GUIANA' => 'FRENCH GUIANA', 'FRENCH POLYNESIA' =>'FRENCH POLYNESIA', 'FRENCH SOUTHERN TERRITORIES' =>'FRENCH SOUTHERN TERRITORIES',
          'GABON' => 'GABON', 'GAMBIA' => 'GAMBIA', 'GEORGIA' => 'GEORGIA', 'GERMANY'=>'GERMANY','GHANA'=>'GHANA','GIBRALTAR' =>'GIBRALTAR','GREECE'=>'GREECE',
          'GREENLAND' => 'GREENLAND','GRENADA'=>'GRENADA', 'GUADELOUPE' => 'GUADELOUPE', 'GUAM'=>'GUAM', 'GUATEMALA' =>'GUATEMALA', 'GUERNSEY' =>'GUERNSEY',
          'GUINEA'=>'GUINEA','GUINEA BISSAU'=>'GUINEA BISSAU','GUYANA'=>'GUYANA','HAITI'=>'HAITI','HEARD ISLAND AND MCDONALD ISLANDS'=>'HEARD ISLAND AND MCDONALD ISLANDS',
          'HOLY SEE' => 'HOLY SEE', 'HOLY SEE (VATICAN CITY STATE)' => 'HOLY SEE (VATICAN CITY STATE)', 'HONDURAS' => 'HONDURAS', 'HONG KONG'=>'HONG KONG','HUNGARY'=>'HUNGARY',
          'ICELAND' => 'ICELAND', 'INDIA'=>'INDIA', 'INDONESIA'=>'INDONESIA','IRAN'=>'IRAN','IRAQ'=>'IRAQ', 'IRELAND' => 'IRELAND','ISLE OF MAN' =>'ISLE OF MAN','ISRAEL'=>'ISRAEL',
          'ITALY' => 'ITALY', 'JAMAICA'=>'JAMAICA','JAPAN'=>'JAPAN','JERSEY'=>'JERSEY','JORDAN'=>'JORDAN','KAZAKHSTAN'=>'KAZAKHSTAN','KENYA'=>'KENYA',
          'KIRIBATI'=> 'KIRIBATI','KOREA' => 'KOREA', 'KOSOVO'=>'KOSOVO','KUWAIT'=>'KUWAIT','KYRGYZSTAN'=>'KYRGYZSTAN','LAOS'=>'LAOS','LATVIA'=>'LATVIA',
          'LEBANON' =>'LEBANON','LESOTHO'=>'LESOTHO','LIBERIA' => 'LIBERIA','LIBYA'=>'LIBYA','LIECHTENSTEIN' =>'LIECHTENSTEIN','LITHUANIA'=>'LITHUANIA',
          'LUXEMBOURG'=>'LUXEMBOURG','MACAO'=>'MACAO','MACEDONIA'=>'MACEDONIA','MADAGASCAR'=>'MADAGASCAR','MALAWI'=>'MALAWI',
          'MALAYSIA'=>'MALAYSIA','MALDIVES'=>'MALDIVES','MALI'=>'MALI','MALTA'=>'MALTA','MARSHALL ISLANDS'=>'MARSHALL ISLANDS','MARTINIQUE'=>'MARTINIQUE',
          'MAURITANIA' =>'MAURITANIA','MAURITIUS'=>'MAURITIUS','MAYOTTE'=>'MAYOTTE','MEXICO'=>'MEXICO','MICRONESIA'=>'MICRONESIA','MOLDOVA'=>'MOLDOVA',
          'MONACO'=>'MONACO','MONGOLIA'=>'MONGOLIA','MONTENEGRO'=>'MONTENEGRO','MONTSERRAT'=>'MONTSERRAT','MOROCCO'=>'MOROCCO',
          'MOZAMBIQUE'=>'MOZAMBIQUE','MYANMAR'=>'MYANMAR','NAMIBIA'=>'NAMIBIA','NAURU'=>'NAURU','NEPAL'=>'NEPAL','NETHERLANDS'=>'NETHERLANDS','NETHERLANDS ANTILLES'=>'NETHERLANDS ANTILLES',
          'NEW CALEDONIA'=>'NEW CALEDONIA','NEW ZEALAND'=>'NEW ZEALAND','NICARAGUA'=>'NICARAGUA','NIGER'=>'NIGER','NIGERIA'=>'NIGERIA',
          'NIUE'=>'NIUE','NORFOLK ISLAND'=>'NORFOLK ISLAND','NORTHERN MARIANA ISLANDS'=>'NORTHERN MARIANA ISLANDS','NORWAY'=>'NORWAY','OMAN'=>'OMAN',
          'PAKISTAN'=>'PAKISTAN','PALAU'=>'PALAU','PALESTINE'=>'PALESTINE','PANAMA'=>'PANAMA','PAPUA NEW GUINEA'=>'PAPUA NEW GUINEA','PARAGUAY'=>'PARAGUAY',
          'PERU'=>'PERU','PHILIPPINES'=>'PHILIPPINES','PITCAIRN'=>'PITCAIRN','POLAND'=>'POLAND','PORTUGAL'=>'PORTUGAL','PUERTO RICO'=>'PUERTO RICO',
          'QATAR'=>'QATAR','REUNION'=>'REUNION','ROMANIA'=>'ROMANIA','RUSSIAN FEDERATION'=>'RUSSIAN FEDERATION','RWANDA'=>'RWANDA','SAINT BARTHELEMY'=>'SAINT BARTHELEMY',
          'SAINT HELENA'=>'SAINT HELENA','SAINT KITTS AND NEVIS'=>'SAINT KITTS AND NEVIS','SAINT LUCIA'=>'SAINT LUCIA','SAINT MARTIN'=>'SAINT MARTIN',
          'SAINT PIERRE AND MIQUELON'=>'SAINT PIERRE AND MIQUELON','SAINT VINCENT AND THE GRENADINES'=>'SAINT VINCENT AND THE GRENADINES',
          'SAMOA'=>'SAMOA','SAN MARINO'=>'SAN MARINO','SAO TOME AND PRINCIPE'=>'SAO TOME AND PRINCIPE','SAUDI ARABIA'=>'SAUDI ARABIA','SEARCHBOT'=>'SEARCHBOT',
          'SENEGAL'=>'SENEGAL','SERBIA'=>'SERBIA','SEYCHELLES'=>'SEYCHELLES','SIERRA LEONE'=>'SIERRA LEONE','SINGAPORE'=>'SINGAPORE','SINT MAARTEN'=>'SINT MAARTEN',
          'SLOVAKIA'=>'SLOVAKIA','SLOVENIA'=>'SLOVENIA','SOLOMON ISLANDS'=>'SOLOMON ISLANDS','SOMALIA'=>'SOMALIA','SOUTH AFRICA'=>'SOUTH AFRICA','SOUTH SUDAN'=>'SOUTH SUDAN',
          'SPAIN'=>'SPAIN','SRI LANKA'=>'SRI LANKA','SUDAN'=>'SUDAN','SURINAME'=>'SURINAME','SVALBARD AND JAN MAYEN'=>'SVALBARD AND JAN MAYEN','SWAZILAND'=>'SWAZILAND',
          'SWEDEN'=>'SWEDEN','SWITZERLAND'=>'SWITZERLAND','SYRIAN ARAB REPUBLIC'=>'SYRIAN ARAB REPUBLIC','TAIWAN'=>'TAIWAN','TAJIKISTAN'=>'TAJIKISTAN','TANZANIA'=>'TANZANIA',
          'THAILAND'=>'THAILAND','TIMOR LESTE'=>'TIMOR LESTE','TOGO'=>'TOGO','TOKELAU'=>'TOKELAU','TONGA'=>'TONGA','TRINIDAD AND TOBAGO'=>'TRINIDAD AND TOBAGO',
          'TUNISIA'=>'TUNISIA','TURKEY'=>'TURKEY','TURKMENISTAN'=>'TURKMENISTAN','TURKS AND CAICOS ISLANDS'=>'TURKS AND CAICOS ISLANDS','TUVALU'=>'TUVALU',
          'UGANDA'=>'UGANDA','UKRAINE'=>'UKRAINE','UNITED ARAB EMIRATES'=>'UNITED ARAB EMIRATES','UNITED KINGDOM'=>'UNITED KINGDOM','UNITED STATES'=>'UNITED STATES',
          'URUGUAY'=>'URUGUAY','UZBEKISTAN'=>'UZBEKISTAN','VANUATU'=>'VANUATU','VENEZUELA'=>'VENEZUELA','VENEZUELA'=>'VENEZUELA',
          'VIET NAM' =>'VIET NAM','VIRGIN ISLANDS'=>'VIRGIN ISLANDS','WALLIS AND FUTUNA'=>'WALLIS AND FUTUNA','WEBYPASS'=>'WEBYPASS',
          'WESTERN SAHARA'=>'WESTERN SAHARA','YEMEN'=>'YEMEN','ZAMBIA'=>'ZAMBIA','ZIMBABWE'=>'ZIMBABWE',
        ],
        [
            'placeholder' => 'Country Name',
            'style' =>'width:350px',
        ]
      );
        $country->setLabel('Country');
        $this->add($country);


        // Sign Up
        $this->add(new Submit('Sign Up', [
            'class' => 'btn btn-success'
        ]));
    }

    /**
     * Prints messages for a specific element
     */
    public function messages($name)
    {
        if ($this->hasMessagesFor($name)) {
            foreach ($this->getMessagesFor($name) as $message) {
                $this->flash->error($message);
            }
        }
    }
}
