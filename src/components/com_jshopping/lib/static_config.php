<?php

$config->path = JPATH_ROOT . "/components/com_jshopping/";
$config->admin_path = JPATH_ROOT . '/administrator/components/com_jshopping/';

$config->live_path = JURI::root() . 'components/com_jshopping/';
$config->live_admin_path = JURI::root() . 'administrator/components/com_jshopping/';

$config->log_path = JPATH_ROOT . "/components/com_jshopping/log/";

$config->importexport_live_path = $config->live_path . "files/importexport/";
$config->importexport_path = $config->path . "files/importexport/";

$config->image_category_live_path = $config->live_path . "files/img_categories";
$config->image_category_path = $config->path . "files/img_categories";

$config->image_product_live_path = $config->live_path . "files/img_products";
$config->image_product_path = $config->path . "files/img_products";

$config->image_manufs_live_path = $config->live_path . "files/img_manufs";
$config->image_manufs_path = $config->path . "files/img_manufs";

$config->video_product_live_path = $config->live_path . "files/video_products";
$config->video_product_path = $config->path . "files/video_products";
            
$config->demo_product_live_path = $config->live_path. "files/demo_products";
$config->demo_product_path = $config->path . "files/demo_products";

$config->files_product_live_path = $config->live_path. "files/files_products";
$config->files_product_path = $config->path . "files/files_products";

$config->pdf_orders_live_path = $config->live_path . "files/pdf_orders";
$config->pdf_orders_path = $config->path . "files/pdf_orders";

$config->image_attributes_live_path = $config->live_path . "files/img_attributes";
$config->image_attributes_path = $config->path . "files/img_attributes";

$config->image_labels_live_path = $config->live_path . "files/img_labels";
$config->image_labels_path = $config->path . "files/img_labels";

$config->image_vendors_live_path = $config->live_path . "files/img_vendors";
$config->image_vendors_path = $config->path . "files/img_vendors";

$config->user_field_client_type = array(0=>_JSHOP_REG_SELECT, 1=>_JSHOP_PRIVAT_CLIENT, 2=>_JSHOP_FIRMA_CLIENT);
$config->arr['title'] = array(0=>_JSHOP_REG_SELECT, 1=>_JSHOP_MR, 2=>_JSHOP_MS);
$config->sorting_products_field_select =   array(1 => 'name',           2=>'prod.product_price',        3=>'prod.product_date_added', 5=>'prod.average_rating', 6=>'prod.hits',         4=>'pr_cat.product_ordering');
$config->sorting_products_name_select =    array(1=>_JSHOP_SORT_ALPH,   2=>_JSHOP_SORT_PRICE,           3=>_JSHOP_SORT_DATE,          5=>_JSHOP_SORT_RATING,    6=>_JSHOP_SORT_POPULAR, 4=>_JSHOP_SORT_MANUAL);
$config->sorting_products_field_s_select = array(1 => 'name',         2=>'prod.product_price',        3=>'prod.product_date_added', 5=>'prod.average_rating', 6=>'prod.hits');
$config->sorting_products_name_s_select =  array(1=>_JSHOP_SORT_ALPH, 2=>_JSHOP_SORT_PRICE,           3=>_JSHOP_SORT_DATE,          5=>_JSHOP_SORT_RATING,    6=>_JSHOP_SORT_POPULAR);
$config->format_currency = array('1' => '00Symb', '00 Symb', 'Symb00', 'Symb 00');
$config->count_product_select = array('5'=>5, '10' => 10, '15' => 15, '20' => 20, '25' => 25, '50' => 50);                                    
$config->payment_status_enable_download_sale_file = array(5, 6, 7);
$config->payment_status_return_product_in_stock = array(3, 4);
$config->max_number_download_sale_file = 3;
$config->payment_status_for_cancel_client = 3;
$config->payment_status_disable_cancel_client = array(7);
$config->cart_back_to_shop = "list"; //product, list, shop
$config->product_button_back_use_end_list = 0;
$config->display_tax_id_in_pdf = 0;
$config->image_quality = 100;
$config->image_fill_color = 0xffffff;
$config->product_price_qty_discount = 2; // (1 - price, 2 - percent)
$config->rating_starparts = 2; //star is divided to {2} part
$config->use_simple_sef = 0;
$config->show_list_price_shipping_weight = 0;
$config->product_price_precision = 2;
$config->cart_decimal_qty_precision = 2;
$config->product_add_price_default_unit = 3;
$config->default_frontend_currency = 0;
$config->product_file_upload_via_ftp = 0; //0 - upload file, 1- set name file, 2- {0,1}
$config->product_file_upload_count = 1;
$config->product_image_upload_count = 10;
$config->product_video_upload_count = 3;

$fields_client_sys = array();
$fields_client_sys['register'][] = "f_name";
$fields_client_sys['register'][] = "email";
$fields_client_sys['register'][] = "u_name";
$fields_client_sys['register'][] = "password";
$fields_client_sys['register'][] = "password_2";

$fields_client = array();        
$fields_client['register'][] = "title";
$fields_client['register'][] = "f_name";
$fields_client['register'][] = "l_name";
$fields_client['register'][] = "client_type";
$fields_client['register'][] = "firma_name";
$fields_client['register'][] = "firma_code";
$fields_client['register'][] = "tax_number";
$fields_client['register'][] = "email";
$fields_client['register'][] = "email2";
$fields_client['register'][] = "home";
$fields_client['register'][] = "apartment";
$fields_client['register'][] = "street";
$fields_client['register'][] = "zip";
$fields_client['register'][] = "city";
$fields_client['register'][] = "state";
$fields_client['register'][] = "country";
$fields_client['register'][] = "phone";
$fields_client['register'][] = "mobil_phone";
$fields_client['register'][] = "fax";
$fields_client['register'][] = "ext_field_1";
$fields_client['register'][] = "ext_field_2";
$fields_client['register'][] = "ext_field_3";
$fields_client['register'][] = "u_name";
$fields_client['register'][] = "password";
$fields_client['register'][] = "password_2";

$fields_client_sys['address'][] = "f_name";
$fields_client_sys['address'][] = "email";
       
$fields_client['address'][] = "title";
$fields_client['address'][] = "f_name";
$fields_client['address'][] = "l_name";
$fields_client['address'][] = "client_type";
$fields_client['address'][] = "firma_name";
$fields_client['address'][] = "firma_code";
$fields_client['address'][] = "tax_number";
$fields_client['address'][] = "email";
$fields_client['address'][] = "home";
$fields_client['address'][] = "apartment";
$fields_client['address'][] = "street";
$fields_client['address'][] = "zip";
$fields_client['address'][] = "city";
$fields_client['address'][] = "state";
$fields_client['address'][] = "country";
$fields_client['address'][] = "phone";
$fields_client['address'][] = "mobil_phone";
$fields_client['address'][] = "fax";
$fields_client['address'][] = "ext_field_1";
$fields_client['address'][] = "ext_field_2";
$fields_client['address'][] = "ext_field_3";

$fields_client['address'][] = "d_title";
$fields_client['address'][] = "d_f_name";
$fields_client['address'][] = "d_l_name";
$fields_client['address'][] = "d_firma_name";
$fields_client['address'][] = "d_email";
$fields_client['address'][] = "d_home";
$fields_client['address'][] = "d_apartment";
$fields_client['address'][] = "d_street";
$fields_client['address'][] = "d_zip";
$fields_client['address'][] = "d_city";
$fields_client['address'][] = "d_state";
$fields_client['address'][] = "d_country";
$fields_client['address'][] = "d_phone";
$fields_client['address'][] = "d_mobil_phone";
$fields_client['address'][] = "d_fax";
$fields_client['address'][] = "d_ext_field_1";
$fields_client['address'][] = "d_ext_field_2";
$fields_client['address'][] = "d_ext_field_3";

$fields_client_sys['editaccount'][] = "f_name";
$fields_client_sys['editaccount'][] = "email";
       
$fields_client['editaccount'][] = "title";
$fields_client['editaccount'][] = "f_name";
$fields_client['editaccount'][] = "l_name";
$fields_client['editaccount'][] = "client_type";
$fields_client['editaccount'][] = "firma_name";
$fields_client['editaccount'][] = "firma_code";
$fields_client['editaccount'][] = "tax_number";
$fields_client['editaccount'][] = "email";
$fields_client['editaccount'][] = "home";
$fields_client['editaccount'][] = "apartment";
$fields_client['editaccount'][] = "street";
$fields_client['editaccount'][] = "zip";
$fields_client['editaccount'][] = "city";
$fields_client['editaccount'][] = "state";
$fields_client['editaccount'][] = "country";
$fields_client['editaccount'][] = "phone";
$fields_client['editaccount'][] = "mobil_phone";
$fields_client['editaccount'][] = "fax";
$fields_client['editaccount'][] = "ext_field_1";
$fields_client['editaccount'][] = "ext_field_2";
$fields_client['editaccount'][] = "ext_field_3";

$fields_client['editaccount'][] = "d_title";
$fields_client['editaccount'][] = "d_f_name";
$fields_client['editaccount'][] = "d_l_name";
$fields_client['editaccount'][] = "d_firma_name";
$fields_client['editaccount'][] = "d_email";
$fields_client['editaccount'][] = "d_home";
$fields_client['editaccount'][] = "d_apartment";
$fields_client['editaccount'][] = "d_street";
$fields_client['editaccount'][] = "d_zip";
$fields_client['editaccount'][] = "d_city";
$fields_client['editaccount'][] = "d_state";
$fields_client['editaccount'][] = "d_country";
$fields_client['editaccount'][] = "d_phone";
$fields_client['editaccount'][] = "d_mobil_phone";
$fields_client['editaccount'][] = "d_fax";
$fields_client['editaccount'][] = "d_ext_field_1";
$fields_client['editaccount'][] = "d_ext_field_2";
$fields_client['editaccount'][] = "d_ext_field_3";

?>