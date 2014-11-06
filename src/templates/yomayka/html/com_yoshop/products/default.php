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

$listOrdering = $this->model->getState('list.direction');
$filterSearch = $this->model->getState('filter.search');

YoshopHelperHtml::addStylesheet('products.css');
YoViewHelperHtml::initJsApp('/templates/yomayka/html/com_yoshop/products/default.js');
?>

<div id="filter-panel" class="cpanel panel panel-default">
    <div class="panel-body">
        <form id="products-form">
        <div class="col-xs-3 pull-left">
            <input
                name="filter[search]"
                class="form-control"
                type="search"
                placeholder="<?php echo JText::_("Поиск"); ?>"
                value="<?php echo $filterSearch; ?>"
                >
        </div>
        <div class="col-xs-3 pull-left">
            <select name="filter[category_id]" class="form-control" data-event="change:fields.update">
                <option value="*"><?= JText::_('Все категории')?></option>
                <?= YoViewHelperHtml::renderCategoryList(array(
                    'extension' => 'com_yoshop',
                    'optionsOnly' => true
                )); ?>
            </select>
        </div>
        <div id="fields" class="col-xs-9"></div>
        <div class="pull-right">
            <button
                class="btn btn-default glyphicon glyphicon-sort"
                data-event="click:ordering"
                data-behavior="toggle:asc,desc:<?=$listOrdering?>"
                onclick="return false"
            >
            </button>
            <button
                class="btn btn-info glyphicon glyphicon-th"
                onclick="return false"
            >
            </button>
        </div>
        <input type="hidden" name="filtering" value="1">
        </form>
        <button class="btn btn-success" data-event="click:filter">
            <span class="glyphicon glyphicon-search"></span>
            <span><?= JText::_('Искать');?></span>
        </button>
    </div>
</div>

<div class="clearfix"></div>

<div id="yoshop-products-list" class="items tiles">
    <?php include 'list.php'; ?>
</div>

<?php if (count($this->items) > 0) { ?>
<div class="pagination">
    <p class="counter">
        <?php echo $this->pagination->getPagesCounter(); ?>
    </p>
    <?php echo $this->pagination->getPagesLinks(); ?>
</div>
<?php } else {
    echo JText::_('COM_YOSHOP_NO_ITEMS');
}
?>

<script>
    window.requireJsAppInit = function(){
        require(['jquery', 'yo', 'messenger', 'preloader'], function($, yo, Messenger, Preloader) {

            /* Set common event system */

            yo.enableEvents()

            var preloader = new Preloader;
            preloader.initDefaultBehavior();

            var messenger = new Messenger;
            messenger.initDefaultBehavior();

            yo.on('fields.update', function(event){
                yo.request(
                    'post html|yoshop:products:fields:partial',
                    { data: { categoryId: event.params.value } },
                    $('#fields')
                )
            })

            yo.on('ordering', function(event){
                yo.request(
                    'post html|yoshop:products:list:partial',
                    {data:{'filter_order_Dir': event.params.value}},
                    jQuery('#yoshop-products-list')
                )
            })

            yo.on('filter', function(event){

                // grab all fields from search panel
                var formData = $('#products-form').serializeArray();
                var assoc = {};
                $(formData).each(function(idx){
                    var item = formData[idx]
                    assoc[item.name] = item.value
                })

                yo.request(
                    'post html|yoshop:products:list:partial',
                    {data: assoc},
                    jQuery('#yoshop-products-list')
                )
            })
        })
    }
</script>
