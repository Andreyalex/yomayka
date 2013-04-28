<?php
class jShopCategoriesHelper{
    
    function getTreeCats($order, $ordering, $category_id, $categories_id, &$categories, $level=0){
        if ($category_id){
            if (isset($categories_id[$level])){
                $cat = &JTable::getInstance('category', 'jshop');        
                $cat->load($categories_id[$level]);

                $cats = $cat->getSisterCategories($order, $ordering);
                foreach ($cats as $key=>$value){
                    $value->level = $level;
//                    if (in_array($value->category_id, $categories_id)){
                        $categories[] = $value;
                        // get Children cats 
                        if ($value->category_id == $category_id){
                            $cat = &JTable::getInstance('category', 'jshop');        
                            $cat->load($categories_id[$level]);
                            $cat->category_id = $category_id; 
                            $childs = $cat->getChildCategories($order, $ordering);
                            foreach ($childs as $key2=>$value2){
                                $value2->level = $level + 1;
                                $categories[] = $value2;
                            }
                        }
                        jShopCategoriesHelper::getTreeCats($order, $ordering, $category_id,$categories_id, $categories, ++$level);
                        $level--;
//                    } else {
//                        $categories[] = $value;    
//                    }
                }
            }
        } else {
            $cat = &JTable::getInstance('category', 'jshop');
            $cat->category_parent_id = 0;
            $cats = $cat->getSisterCategories($order, $ordering);
            foreach($cats as $key=>$value){
                $cats[$key]->level = 0;
            }
            $categories = $cats;    
        }

    }
    
//    function getCatsArray($order, $ordering, $category_id, $categories_id = array()){
//
//        $cat = &JTable::getInstance('category', 'jshop');
//        $cat->category_parent_id = 0;
//        $cats = $cat->getSisterCategories($order, $ordering);
//
//        foreach($cats as $cat) {
//          $res_arr[] = self::getTree($cat->category_id);
//        }
//        $res_arr = array();
//       jShopCategoriesHelper::getTreeCats($order, $ordering, $category_id, $categories_id, $res_arr, 0);
//       return $res_arr;
//    }

    static public function getCatsArray($order, $ordering, $category_id, $categories_id = array()){

        $cat = &JTable::getInstance('category', 'jshop');        
        $cat->category_id = 0; 
        $roots = $cat->getChildCategories($order, $ordering);
        
        $result = array();
        
        foreach($roots as &$item) {
            $item->level = 0;
            $result[] = $item;
            self::_walker($collection, $item, $result);
        }
        
        return $result;
    }

    static protected function _walker(&$collection, &$node, &$result) {
        //var_dump($node);
        $cat = &JTable::getInstance('category', 'jshop');        
        $cat->load($node->category_id);
        $cat->category_id = $node->category_id; 
        $children = $cat->getChildCategories($order, $ordering);
        foreach($children as &$item) {
            $item->level = $node->level + 1;
            $result[] = $item;
            self::_walker($collection, $item, $result);
        }
    }
    
    
}
?>