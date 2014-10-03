<?php
/**
 * @version     0.5
 * @package     com_yoshop
 * @copyright   © 2013. Все права защищены.
 * @license     GNU General Public License версии 2 или более поздней; Смотрите LICENSE.txt
 * @author      Andreyalek <andreyalek@gmail.com> - http://
 */

defined('_JEXEC') or die;

try {

    require_once JPATH_ADMINISTRATOR . '/components/com_yoshop/bootstrap.php';
    YoshopBootstrap::init();

    // Execute the task.
    $di = YoDi::getInstance('Yoshop');
    jimport('joomla.application.component.controller');
    $controller	= JControllerLegacy::getInstance('Yoshop');
    $controller->di = $di;
    $controller->execute($di->app->input->get('task'));
    $controller->redirect();

} catch (Exception $e) {
    JFactory::getDocument()->applicationError = $e;
}

