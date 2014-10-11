<?php
/**
 * @package     Joomla.Site
 * @subpackage  com_users
 *
 * @copyright   Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

/**
 * Products view class for Users.
 *
 * @package     Joomla.Site
 * @subpackage  com_users
 * @since       1.6
 */
class UsersViewProducts extends JViewLegacy
{
    protected $data;

    protected $form;

    protected $params;

    protected $state;

    /**
     * Execute and display a template script.
     * @param   string  $tpl  The name of the template file to parse; automatically searches through the template paths.
     * @return  mixed   A string if successful, otherwise a Error object.
     * @since   1.6
     */
    public function display($tpl = null)
    {
        YoDi::getInstance('Yoshop');

        /** @var YoshopModelProducts $this->model */
        $this->model = new YoshopModelProducts;
        $this->products = $this->model->getItems();
        $this->pagination = $this->model->getPagination();

        return parent::display($tpl);
    }
}
