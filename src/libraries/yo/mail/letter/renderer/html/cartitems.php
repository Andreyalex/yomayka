<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Bee
 * Date: 21.11.13
 * Time: 0:58
 * To change this template use File | Settings | File Templates.
 */

class YoMailLetterRendererHtmlCartitems extends YoMailLetterRenderer
{
    public function render($name)
    {
        $products = (array) $this->getData($name);

        $defaults = array(
            'img' => '',
            'name' => '',
            'link' => '#',
            'price' => ''
        );

        $items = '';

        /** @var YoModelCartitem $product */
        foreach($products as $product) {

            $data = array(
                'img' => $product->product->media[0]->getPreview(),
                'link' => Juri::root() . trim($product->product->link, '/'),
                'price' => $product->getTotalPrice(),
                'name' => $product->product->name
            );

            $items .= parent::render(
                '<tr><td style="border:1px solid #dddddd;padding:10px"><a href="{link}"><img src="{img}" style="max-width:150px" /></a></td><td style="border:1px solid #dddddd;padding:10px"><a href="{link}">{name}</a></td><td style="border:1px solid #dddddd;padding:10px">{price}</td></tr>',
                $data,
                $defaults
            );
        }

        return
            '<table style="border:1px solid #dddddd;border-collapse:collapse;">'.
                '<thead><tr><th style="border:1px solid #dddddd;padding:10px">Товар</th><th style="border:1px solid #dddddd;padding:10px">Название</th><th style="border:1px solid #dddddd;padding:10px">Цена</th></tr></thead>'.
                '<tbody>'.$items.'</tbody>'.
            '</table>';
    }
}