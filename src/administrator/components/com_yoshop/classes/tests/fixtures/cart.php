<?php

namespace YoshopTest;


class FixtureCart
{
    public function setUp()
    {

        /** @var JApplication $app */
        $app = YoshopTestFactory::getApplication();
        $session = $app->getSession();
        $session->set('yoshop.cart', array(
           array('product' => array(1), 'count' => 1),
           array('product' => array(2), 'count' => 4),
           array('product' => array(3), 'count' => 2),
        ));

    }

    public function tearDown()
    {
        /** @var JApplication $app */
        $app = YoshopTestFactory::getApplication();
        $session = $app->getSession();
        $session->set('yoshop.cart', null);
    }

}