<?php
    /**
     * @version     0.5
     * @package     com_yoshop
     * @copyright   © 2013. Все права защищены.
     * @license     GNU General Public License версии 2 или более поздней; Смотрите LICENSE.txt
     * @author      Andreyalek <andreyalek@gmail.com> - http://
     */


    // no direct access
    defined('_JEXEC') or die;

    // Access check.
    if (!JFactory::getUser()->authorise('core.manage', 'com_yoshop'))
    {
        throw new Exception(JText::_('JERROR_ALERTNOAUTHOR'));
    }

    require_once 'bootstrap.php';
    YoshopBootstrap::init();

    // Execute the task.
    $app = JFactory::getApplication();
    $di = YoDi::getInstance('Yoshop');
    jimport('joomla.application.component.controller');
    $controller	= JControllerLegacy::getInstance('Yoshop');
    $controller->di = $di;
    $controller->execute($app->input->get('task'));
    $controller->redirect();

