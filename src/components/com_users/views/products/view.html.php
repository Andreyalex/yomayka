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
     *
     * @param   string  $tpl  The name of the template file to parse; automatically searches through the template paths.
     *
     * @return  mixed   A string if successful, otherwise a Error object.
     *
     * @since   1.6
     */
    public function display($tpl = null)
    {
        // Get the view data.
        $this->form   = $this->get('Form');
        $this->state  = $this->get('State');
        $this->params = $this->state->params;

        $di = YoDi::getInstance('Yoshop');

        /** @var YoshopModelProducts $productsModel */
        $productsModel = $di->createModel('products');
        $this->products = $productsModel->getItems();

        // Check for errors.
        if (count($errors = $this->get('Errors')))
        {
            JError::raiseError(500, implode('<br />', $errors));
            return false;
        }

        $this->prepareDocument();

        return parent::display($tpl);
    }

    /**
     * Prepares the document
     *
     * @since   1.6
     */
    protected function prepareDocument()
    {
        $app   = JFactory::getApplication();
        $menus = $app->getMenu();
        $user  = JFactory::getUser();
        $title = null;

        // Because the application sets a default page title,
        // we need to get it from the menu item itself
        $menu = $menus->getActive();

        if ($menu)
        {
            $this->params->def('page_heading', $this->params->get('page_title', $user->name));
        }
        else
        {
            $this->params->def('page_heading', JText::_('COM_USERS_PRODUCTS'));
        }

        $title = $this->params->get('page_title', '');

        if (empty($title))
        {
            $title = $app->get('sitename');
        }
        elseif ($app->get('sitename_pagetitles', 0) == 1)
        {
            $title = JText::sprintf('JPAGETITLE', $app->get('sitename'), $title);
        }
        elseif ($app->get('sitename_pagetitles', 0) == 2)
        {
            $title = JText::sprintf('JPAGETITLE', $title, $app->get('sitename'));
        }

        $this->document->setTitle($title);

        if ($this->params->get('menu-meta_description'))
        {
            $this->document->setDescription($this->params->get('menu-meta_description'));
        }

        if ($this->params->get('menu-meta_keywords'))
        {
            $this->document->setMetadata('keywords', $this->params->get('menu-meta_keywords'));
        }

        if ($this->params->get('robots'))
        {
            $this->document->setMetadata('robots', $this->params->get('robots'));
        }
    }
}
