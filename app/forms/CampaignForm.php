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

class CampaignForm extends Form
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


        // $coba = new InputTag('coba');
        // $this->add($coba);

        //client Id & Role (profilesID)
        $client_id = new Hidden('client_id', [
            'value' =>  $this->auth->getId()
        ]);

        $this->add($client_id);

        $role = new Hidden('role', [
            'value' =>  $this->auth->getProfilesId()
        ]);

        $this->add($role);

        $client_name = new Text('client_name', [
            'value' => $this->auth->getName(),
            'readonly' => true,
        ]);
        $client_name ->setLabel('Client Name *');
        $client_name->addValidators([
            new PresenceOf([
                'message' => 'Client Name is required'
            ])
        ]);

        $this->add($client_name);

        //campaign Name
        $cp_name = new Text('cp_name', [
            'placeholder' => 'Campaign Name'
        ]);

        $cp_name->setLabel('Campaign Name');

        $cp_name->addValidators([
            new PresenceOf([
                'message' => 'Campaign Name is required'
            ])
        ]);

        $this->add($cp_name);

        //price model
        $cp_pricemodel = new select('cp_pricemodel', ['CPA'=>'CPA','CPM'=>'CPM']);
        $cp_pricemodel->setLabel('Price Model *');
        $cp_pricemodel->addValidators([
            new PresenceOf([
                'message' => 'Price Model is required'
            ])
        ]);
        $this->add($cp_pricemodel);

        //target url
        $cp_targeturl= new Text('cp_targeturl', [
            'placeholder' => 'Target Url'
        ]);

        $cp_targeturl->setLabel('Target Url *');

        $cp_targeturl->addValidators([
            new PresenceOf([
                'message' => 'Target Url is required'
            ])
        ]);

        $this->add($cp_targeturl);

        //cp startdateenddate
        $cp_startenddate= new Text('cp_startdate', [
            'placeholder' => 'ex: 01-01-2017',
            'style' =>'width:250px',
        ]);

        $cp_startenddate->setLabel('Start - End Date *');

        $cp_startenddate->addValidators([
            new PresenceOf([
                'message' => 'Start Date is required'
            ])
        ]);

        $this->add($cp_startenddate);

        //cp startdateenddate
        $cp_enddate= new Text('cp_enddate', [
            'placeholder' => 'ex: 01-01-2017',
            'style' =>'width:250px',
        ]);

        $cp_enddate->setLabel('End Date');

        $cp_enddate->addValidators([
            new PresenceOf([
                'message' => 'End Date is required'
            ])
        ]);

        $this->add($cp_enddate);


        //cp country
        $cp_country = new select('cp_country',
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
            'data-placeholder' => 'Country Name',
            'multiple' => 'multiple',
        ]
      );

        $cp_country->setLabel('Country *');

        $cp_country->addValidators([
            new PresenceOf([
                'message' => 'Country is required'
            ])
        ]);

        $this->add($cp_country);

        $hd_country = new Hidden('hd_country');
        $this->add($hd_country);

        //cp daily budget
        $cp_dailybudget = new Numeric('cp_dailybudget', [
            'placeholder' => 'Min. $10',
            'min' => 10.0,
            'step' => 0.01,
        ]);

        $cp_dailybudget->setLabel('Daily Budget *');

        $cp_dailybudget->addValidators([
            new PresenceOf([
                'message' => 'Daily Budget is required'
            ]),
            new Numericality([
             'message' => 'Daily Budget is not numeric'
           ]),
        ]);

        $this->add($cp_dailybudget);

        //cp Total Budget
        $cp_totalbudget = new Numeric('cp_totalbudget', [
            'placeholder' => 'Min. $100',
            'min' => 100.0,
            'step' => 0.01,
        ]);

        $cp_totalbudget->setLabel('Total Budget *');

        $cp_totalbudget->addValidators([
            new PresenceOf([
                'message' => 'Total Budget is required'
            ]),
            new Numericality([
             'message' => 'Total Budget is not numeric'
           ]),
        ]);

        $this->add($cp_totalbudget);

        //cp Schedule
        $cp_schedule = new Select('cp_schedule', [
            'All Day' => 'All Day',
            'Working Day' =>'Working Day',
            'Weekend' => 'Weekend',
        ],
        [
            'data-placeholder' => 'Schedule'
        ]);

        $cp_schedule->setLabel('Schedule *');

        $cp_schedule->addValidators([
            new PresenceOf([
                'message' => 'Schedule is required'
            ])
        ]);

        $this->add($cp_schedule);

        //cp Ad Delivery Method
        $cp_delivmethod = new select('cp_delivmethod', ['Standard'=>'Standard','Distributed'=>'Distributed']);
        $cp_delivmethod->setLabel('Ad Delivery Method *');
        $cp_delivmethod->addValidators([
            new PresenceOf([
                'message' => 'Delivery Method is required'
            ])
        ]);
        $this->add($cp_delivmethod);

        //cp Target
        $cp_target = new select('cp_target', ['All Mobile'=>'All Mobile','All Android'=>'All Android',
          'Android Phone' => 'Android Phone', 'Android Tablet' => 'Android Tablet',
          'All IOS' => 'All IOS', 'iPhone' => 'iPhone', 'iPad' => 'iPad', 'Win Mobile' => 'Win Mobile',
          'Other Mobile' => 'Other Mobile', 'All Desktop' => 'All Desktop', 'Windows' => 'Windows',
          'Mac OS' => 'Mac OS', 'Linux' => 'Linux', 'All' => 'All']);
        $cp_target->setLabel('Targeting *');
        $cp_target->addValidators([
            new PresenceOf([
                'message' => 'Targeting is required'
            ])
        ]);
        $this->add($cp_target);

        // //cp Adult
        // $cp_adult = new select('cp_adult', ['Adult'=>'Adult','Non-Adult'=>'Non-Adult']);
        // $cp_adult->setLabel('Adult/Non-Adult');
        // $cp_adult->addValidators([
        //     new PresenceOf([
        //         'message' => 'Category is required'
        //     ])
        // ]);
        // $this->add($cp_adult);

        //cp Tag
        $cp_tag = new select('cp_tag', ['All'=>'All','Music'=>'Music','Movie'=>'Movie','Games'=>'Games']);
        $cp_tag->setLabel('Tag *');
        $cp_tag->addValidators([
            new PresenceOf([
                'message' => 'Tag is required'
            ])
        ]);
        $this->add($cp_tag);

        //cp Zone
        $cp_zone = new Text('cp_zone', [
            'placeholder' => 'Zone',
        ]);

        $cp_zone->setLabel('Zone');

        // $cp_zone->addValidators([
        //     new PresenceOf([
        //         'message' => 'Zone is required'
        //     ])
        // ]);

        $this->add($cp_zone);

        //cp Get Traffic
        $cp_gettraffic = new Check('cp_gettraffic', [
            'value' => 'yes'
        ]);

        $cp_gettraffic->setLabel('I want to get traffic from Anti-AdBlock Zones');

        // $cp_gettraffic->addValidator(new Identical([
        //     'value' => 'yes',
        //     'message' => 'get traffic from Anti-AdBlock Zones must be accepted'
        // ]));

        $this->add($cp_gettraffic);

        //cp Declare guarantees
        $cp_guarantee = new Check('cp_guarantee', [
            'value' => 'yes'
        ]);

        $cp_guarantee->setLabel('* I declare and gurantee that my campaign meets the Quality Guidelines');

        $cp_guarantee->addValidator(new Identical([
            'value' => 'yes',
            'message' => 'gurantee the campaign meets the Quality Guidelines must be accepted'
        ]));

        $this->add($cp_guarantee);

        //cp Test Budget
        $cp_testbudget = new Numeric('cp_testbudget', [
            'placeholder' => 'Min. $50',
            'min' => 50.0,
            'step' => 0.01,
        ]);

        $cp_testbudget->setLabel('Test Budget ($) *');

        $cp_testbudget->addValidators([
            new PresenceOf([
                'message' => 'Test Budget is required'
            ]),
            new Numericality([
             'message' => 'Test Budget is not numeric'
           ]),
        ]);

        $this->add($cp_testbudget);

        //cp Slice Limits
        $cp_mblimit = new Text('cp_mblimit', [
            'placeholder' => 'ex. 2000'
        ]);
        $cp_mblimit->setLabel('Mobile Limit Per Slice');
        $this->add($cp_mblimit);

        $cp_dsktplimit = new Text('cp_dsktplimit', [
            'placeholder' => 'ex. 1000'
        ]);
        $cp_dsktplimit->setLabel('Desktop Limit Per Slice');
        $this->add($cp_dsktplimit);

        // CSRF
        $csrf = new Hidden('csrf');

        $csrf->addValidator(new Identical([
            'value' => $this->security->getSessionToken(),
            'message' => 'CSRF validation failed'
        ]));

        $csrf->clear();

        $this->add($csrf);

        //cp cpm cpa
        $cp_cpmcpa = new Numeric('cp_cpmcpa', [
            'placeholder' => 'Min. $0.05',
            'min' => 0.5,
            'step' => 0.01,
        ]);

        $cp_cpmcpa->setLabel('Conversion Price ($) *');

        $cp_cpmcpa->addValidators([
            new PresenceOf([
                'message' => 'Conversion Price is required'
            ]),
            new Numericality([
             'message' => 'Conversion Price is not numeric'
           ]),
        ]);

        $this->add($cp_cpmcpa);

        $gbr120x600 = new Text('gbr120x600');
        $this->add($gbr120x600);

        $gbr160x600 = new Text('gbr160x600');
        $this->add($gbr160x600);

        $gbr250x250 = new Text('gbr250x250');
        $this->add($gbr250x250);

        $gbr300x50 = new Text('gbr300x50');
        $this->add($gbr300x50);

        $gbr300x250 = new Text('gbr300x250');
        $this->add($gbr300x250);

        $gbr300x100= new Text('gbr300x100');
        $this->add($gbr300x100);

        $gbr300x600 = new Text('gbr300x600');
        $this->add($gbr300x600);

        $gbr305x99 = new Text('gbr305x99');
        $this->add($gbr305x99);

        $gbr315x300 = new Text('gbr315x300');
        $this->add($gbr315x300);

        $gbr320x50 = new Text('gbr320x50');
        $this->add($gbr320x50);

        $gbr320x100 = new Text('gbr320x100');
        $this->add($gbr320x100);

        $gbr320x250 = new Text('gbr320x250');
        $this->add($gbr320x250);

        $gbr320x416 = new Text('gbr320x416');
        $this->add($gbr320x416);

        $gbr320x480 = new Text('gbr320x480');
        $this->add($gbr320x480);

        $gbr336x280 = new Text('gbr336x280');
        $this->add($gbr336x280);

        $gbr468x60 = new Text('gbr468x60');
        $this->add($gbr468x60);

        $gbr640x960 = new Text('gbr640x960');
        $this->add($gbr640x960);

        $gbr728x90 = new Text('gbr728x90');
        $this->add($gbr728x90);

        $gbr800x440 = new Text('gbr800x440');
        $this->add($gbr800x440);

        $gbr1024x768 = new Text('gbr1024x768');
        $this->add($gbr1024x768);

        $hijau = new Hidden('green');
        $this->add($hijau);

        $tampcount = new Text('tampcount');
        $this->add($tampcount);

        $coba = new Text('coba');
        $this->add($coba);

        // Save
        $this->add(new Submit('Save', [
            'class' => 'btn btn-success',
            'id'=> 'submit'
        ]));

        // Search
        $this->add(new Submit('Search', [
            'class' => 'btn',
            'id'=> 'submit',
        ]));

        //Status
        $cp_status = new select('cp_status', ['A'=>'Active','N'=>'Inactive'],[
          'useEmpty' => true,
          'emptyText' => 'All',
          'emptyValue' => '']
        );
        $cp_status->setLabel('Status');
        $this->add($cp_status);

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

        //campaign Name
        $cp_namesearch = new Text('cp_namesearch', [
            'placeholder' => 'Campaign Name',
        ]);

        $cp_namesearch->setLabel('Campaign Name');

        $cp_namesearch->addValidators([
            new PresenceOf([
                'message' => 'Campaign Name is required'
            ])
        ]);

        $this->add($cp_namesearch);

        //type hari
        $typedashboard = new select('period', ['today'=>'Today','yesterday'=>'Yesterday','last_7d' => 'Last 7 days',
            'last_1m' => 'Last 30 days'],
            ['onchange' => 'this.form.submit()']);
        $this->add($typedashboard);

        //report daily startdate, enddate, campaignname

        $rpt_daily_startdate = new Text('rpt_startdate', [
            'placeholder' => 'ex: 01-01-2017',
            'style' =>'width:250px',
        ]);
        $rpt_daily_startdate->setLabel('Start Date');
        $this->add($rpt_daily_startdate);

        $rpt_daily_enddate = new Text('rpt_enddate', [
            'placeholder' => 'ex: 01-01-2017',
            'style' =>'width:250px',
        ]);
        $rpt_daily_enddate->setLabel('End Date');
        $this->add($rpt_daily_enddate);

        $rpt_cp_name = new Text('rpt_cp_name', [
            'placeholder' => 'Campaign Name'
        ]);
        $rpt_cp_name->setLabel('Campaign Name');
        $this->add($rpt_cp_name);


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
