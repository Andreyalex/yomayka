<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Bee
 * Date: 30.10.13
 * Time: 23:03
 * To change this template use File | Settings | File Templates.
 */

class YoshopView extends JViewLegacy
{
    public function __construct($config = array())
    {
        parent::__construct($config);

        if (!empty($config['di'])) {
            $this->di = $config['di'];
        }
    }

    public function display($tpl = null)
    {
        $app = $this->di->app;

        // Check for errors.
        if (count($errors = $this->get('Errors'))) {
            throw new Exception(implode("\n", $errors));
        }

        if($app->input->get('tmpl') == 'modal') {
            $tpl = 'modal';
        }

        parent::display($tpl);
    }


    /**
     * Prepares the document
     */
    protected function _prepareDocument()
    {
        $app	= $this->di->app;
        $menus	= $app->getMenu();
        $title	= null;

        if (!$this->params) {
            $this->params = new JObject();
        }

        // Because the application sets a default page title,
        // we need to get it from the menu item itself
        $menu = $menus->getActive();
        if($menu)
        {
            $this->params->def('page_heading', $this->params->get('page_title', $menu->title));
        } else {
            $this->params->def('page_heading', JText::_('COM_YOSHOP_DEFAULT_PAGE_TITLE'));
        }
        $title = $this->params->get('page_title', '');
        if (empty($title)) {
            $title = $app->getCfg('sitename');
        }
        elseif ($app->getCfg('sitename_pagetitles', 0) == 1) {
            $title = JText::sprintf('JPAGETITLE', $app->getCfg('sitename'), $title);
        }
        elseif ($app->getCfg('sitename_pagetitles', 0) == 2) {
            $title = JText::sprintf('JPAGETITLE', $title, $app->getCfg('sitename'));
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