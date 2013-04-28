<?php
defined( '_JEXEC' ) or die( 'Restricted access' );
jimport( 'joomla.application.component.view');

class JshoppingViewOrders extends JView
{
    function displayList($tpl = null){        
        JToolBarHelper::title( _JSHOP_ORDER_LIST, 'generic.png');
        JToolBarHelper::deleteList();
        parent::display($tpl);
	}
    function displayEdit($tpl = null){
        JToolBarHelper::title($this->order->order_number, 'generic.png');
        JToolBarHelper::save();
        JToolBarHelper::cancel();
        parent::display($tpl);
    }
    function displayShow($tpl = null){
        JToolBarHelper::title($this->order->order_number, 'generic.png');
        JToolBarHelper::back();
        parent::display($tpl);
    }
}
?>