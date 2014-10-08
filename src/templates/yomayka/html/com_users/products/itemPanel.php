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

$acive = $productData->state == 1? 1:0;

?>
<div class="inner">
    <a class="image" href="<?php echo 'component/users/product/'. $productData->id; ?>">
        <img src="<?php print YOSHOP_PRODUCT_MEDIA_BASEURL . '/' . $media; ?>" alt="<?php print htmlspecialchars($productData->name); ?>" />
    </a>

    <div class="cpanel">
        <a class="nonlink title" href="<?php echo 'component/users/product/'.$productData->id; ?>">
            <?php print $productData->name; ?>
        </a>

        <br/>

        <a class="btn btn-default glyphicon glyphicon-zoom-in" href="<?php echo 'component/users/product/'.$productData->id; ?>"></a>
        <a class="btn btn-default glyphicon glyphicon-edit" href="<?php echo 'component/users/product/'.$productData->id.'?layout=edit'; ?>"></a>
        <a class="btn btn-danger glyphicon glyphicon-trash" href="<?php echo 'component/users/product/'.$productData->id.'?task=product.remove'; ?>"></a>

        <div style="position:absolute;bottom:0;right:0">
            <a class="btn btn-default glyphicon glyphicon-arrow-up" href="<?php echo 'component/users/product/'.$productData->id; ?>"></a>
            <button
                type="button"
                class="btn btn-default glyphicon glyphicon-off <?=$acive?'active':''?>"
                data-state="<?=$acive?>"
                data-toggle="button"
                data-event="click:publish.product:toggle:<?php echo $productData->id ;?>">
            </button>
        </div>

    </div>
</div>



<!--    <div class="btn-group" data-toggle="buttons" data-event="change:publish.product:radio:--><?php //echo $productData->id ;?><!--">-->
<!--        <label class="btn btn-warning btn-small --><?php //echo $productData->state != 1? 'active':'' ?><!--">-->
<!--            <input type="radio" name="publish---><?php //echo $productData->id ;?><!--" value="0">O-->
<!--        </label>-->
<!--        <label class="btn btn-warning btn-small --><?php //echo $productData->state == 1? 'active':'' ?><!--">-->
<!--            <input type="radio" name="publish---><?php //echo $productData->id ;?><!--" value="1">I-->
<!--        </label>-->
<!--    </div>-->
