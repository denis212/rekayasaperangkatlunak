<?php

use Phalcon\Config;
use Phalcon\Logger;

return new Config([
    'privateResources' => [
        'doctor' => [
            'index',
            'search',
            'edit',
            'create',
            'delete',
            'view',
            'searchdwn',
        ],
        'accesspoint' => [
            'search',
            'edit',
            'create',
            'delete',
            'view',
        ],
        'expertise' => [
            'index',
            'search',
            'edit',
            'create',
            'delete',
            'view',
        ],
        'hospital' => [
            'index',
            'search',
            'edit',
            'create',
            'delete',
            'view',
        ],
        'schedule' => [
            'index',
            'search',
            'edit',
            'create',
            'delete',
            'view',
        ],
        'users' => [
            'index',
            'search',
            'edit',
            'create',
            'delete',
            'changePassword',
            'accountInfo',
            'listactive',
            "aktivasi",
            "verifmanual",
            "cekreferal",
            "insreseller",
            "listverif",
            "listtempreseller",
            "edittempres",
            "deletetempres",
            "createref",
            "listref",
            "viewres",
            "dashref",
            "dashres",
            "welcome",
            "grablevel2",
            "grablevel3",
            "grablevel4",
            "grabcoderef",
            "editref",
            "deleteref",
            "experia"
        ],
        'profiles' => [
            'index',
            'search',
            'edit',
            'create',
            'delete'
        ],
        'permissions' => [
            'index'
        ],
        'campaign' => [
          'index',
          'search',
          'edit',
          'create',
          'delete',
          'new',
          'save',
          'view',
          'activateout',
          'activateview',
          'viewdownload',
          'dailyreport',
          'dashboardcamp',
          'dailyrptdw',
        ],
        'adspace'=> [
          'index',
          'search',
          'edit',
          'create',
          'delete',
          'new',
          'save',
          'view',
          'activate',
        ],
        'confirm'=> [
          'index',
          'create',
          'search',
          'approve',
          'unapprove',
          'reqdeposit',
          'loopakun',
          "listorder",
          "orderakun",
          "beli",
          "orderlistdwn",
          "uploadexc",
          "halamanreqdep",
          "createloopakun",
          "rptreferal",
          "rptreseller",
          "cbhit",
        ],
        'inputadmin'=> [
          'index',
          'search',
          'edit',
          'create',
          'delete',
          'new',
          'save',
          'view',
          'activate',
          'deletegambar',
        ],
    ]
]);
