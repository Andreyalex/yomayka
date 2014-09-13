<?php

namespace YoTest;


class FixtureCart
{
    public function setUp()
    {

        /** @var JApplication $app */
        $app = YoTestFactory::getApplication();
        $session = $app->getSession();
        $session->set('yo.cart', array(
           array('product' => array(1), 'count' => 1),
           array('product' => array(2), 'count' => 4),
           array('product' => array(3), 'count' => 2),
        ));

    }

    public function tearDown()
    {
        /** @var JApplication $app */
        $app = YoTestFactory::getApplication();
        $session = $app->getSession();
        $session->set('yo.cart', null);
    }

}