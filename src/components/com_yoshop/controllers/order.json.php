<?php
/**
 * @version     0.5
 * @package     com_yoshop
 * @copyright   © 2013. Все права защищены.
 * @license     GNU General Public License версии 2 или более поздней; Смотрите LICENSE.txt
 * @author      Andreyalek <andreyalek@gmail.com> - http://
 */

// No direct access
defined('_JEXEC') or die;

/**
 * Order controller class.
 */
class YoshopControllerOrder extends YoshopControllerJson
{
    public function create()
    {
        if (!$this->di->session->checkToken()) {
            throw new InvalidArgumentException('Invalid token');
        }

        /** @var YoshopModelCart $cart */
        $cart = $this->createModel('cart');

        /** @var YoshopModelOrder $order */
        $order = $this->createModel('order');

        $details = $this->input->post->get('jform', array(), 'array');

        $orderData = array(
            'details' => $details,
            'items' => array()
        );
        /** @var YoshopModelCartitem $cartItem */
        foreach($cart->getProducts() as $cartItem) {

            $orderData['items'][] = array(
                'productId' => $cartItem->product->id,
                'count' => $cartItem->count
            );
        }

        if(!$order->create($orderData)) {
            throw new Exception(JText::_('COM_YOSHOP_CANNOT_CREATE_ORDER'));
        }

        $this->setMessages('Order created successfully', true);
        $this->setData(array('id' => $order->id));

        $config = $this->di->config;

        /** @var YoshopMail $mailer */
        $mailer = $this->di->get('mail');
        $mailer->setupWithDefaults();
        /** @var YoshopMailLetter $mail */
        $mail = $mailer->createLetter('Order created');
        $mail->addRecipient($details['email'], $details['name']);
        $mail->setSender($config->get('mailfrom'), $config->get('fromname'));

        foreach($cart->getProducts() as $product) {
            $mail->addData('products', $product);
        }

        $mail->addData('total price', $cart->getPrice());
        $mail->addData('order number', $order->id);
        $mailer->send($mail);

        $cart->clear();

        $this->setMessages('Cart cleared', true);
    }
}