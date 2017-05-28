<?php
/*
 * Define custom routes. File gets included in the router service definition.
 */
$router = new Phalcon\Mvc\Router();

$router->add('/confirm/{code}/{email}', [
    'controller' => 'user_control',
    'action' => 'confirmEmail'
]);

$router->add('/reset-password/{code}/{email}', [
    'controller' => 'user_control',
    'action' => 'resetPassword'
]);

$router->add('/hit', [
    'controller' => 'hit',
    'action' => 'hitAds'
]);

$router->add('/hittest', [
    'controller' => 'hit',
    'action' => 'hitTest'
])->setName('hitTest');

return $router;
