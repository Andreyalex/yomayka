<?php
/**
 * @version		$Id: default.php 22355 2011-11-07 05:11:58Z github_bot $
 * @package		Joomla.Site
 * @subpackage	mod_menu
 * @copyright	Copyright (C) 2005 - 2011 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// No direct access.
defined('_JEXEC') or die;

$templates = array();
$templates['itemSimple'] = <<<HTML
<li class="{li.class}"><a class="{a.class}" href="{link}">{title}</a></li>
HTML;

$templates['itemParent'] = <<<HTML
<li class="dropdown {li.class}">
    <a href="#" class="dropdown-toggle {a.class}" data-toggle="dropdown">{title}</a>
    <ul class="dropdown-menu {ul.class}">{items}</ul>
</li>
HTML;

$body = <<<HTML
<nav class="navbar navbar-default" role="navigation">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed btn-lg" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav">
            {items}
        </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

HTML;

//<div class="navbar">
//    <div class="navbar-inner">
//        <div class="container">
//            <a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-responsive-collapse">
//                <span class="icon-bar"></span>
//                <span class="icon-bar"></span>
//                <span class="icon-bar"></span>
//            </a>
//            <div class="nav-collapse navbar-responsive-collapse">
//                <ul class="nav">
//                    {items}
//                </ul>
//            </div><!-- /.nav-collapse -->
//        </div>
//    </div><!-- /navbar-inner -->
//</div>















/** @var stdClass $item */
$idList = array();
foreach ($list as &$node) {
    $node->children = array();
    $idList[$node->id] = $node;
}

$tree = array();
foreach ($idList as &$node) {

    //var_dump($node->id, $node);
    $container = &$tree;
    foreach($node->tree as $nodeId) {

        // If this is I'm
        if ($node->id == $nodeId) {
            $container[$node->id] = $node;
            break;
        }

        $container = &$container[$nodeId]->children;
    }
}

$startLevel = $params->get('startLevel', -1);
$endLevel   = $params->get('endLevel', 256);

$activeMenuItem = JFactory::getApplication()->getMenu()->getActive();
$path = !empty($activeMenuItem->tree)? $activeMenuItem->tree : (array) JFactory::getApplication()->getMenu()->getDefault();

$treeWalker = function ($nodeList) use ($templates, &$treeWalker, $startLevel, $endLevel, $path, $active_id)
{
    $html = '';

    foreach($nodeList as $node) {

        $isNodeActive  = ($node->id == $active_id)? 'active': null;
        $isNodeCurrent = (in_array($node->id, $path))? 'current': null;

        $reps = array(
            '{title}'    => $node->title,
            '{link}'     => $node->flink,
            '{a.class}'  => '',
            '{li.class}' => implode(' ', array("item-{$node->id}", $isNodeActive, $isNodeCurrent))
        );

        if (!( $node->active || ($node->level >= $startLevel && $node->level <= $endLevel) )) {
            continue;
        }

        if (count($node->children) > 0) {
            $reps['{items}'] = $treeWalker($node->children);
            $reps['{ul.class}'] = 'items-count-'.count($node->children);
            $tpl = $templates['itemParent'];
        } else {
            $tpl = $templates['itemSimple'];
        }

        $html .= "\n" . str_replace(array_keys($reps), array_values($reps), $tpl);
    }

    return $html;
};

echo str_replace('{items}', $treeWalker($tree), $body);
