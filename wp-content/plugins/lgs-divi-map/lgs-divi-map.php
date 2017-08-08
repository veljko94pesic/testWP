<?php
/**
 * Plugin Name: lgs-divi-map
 * Plugin URI: https://www.blablabla.com/
 * Description: A custom divi map component
 * Version: 1.0
 * Author: lgs
 * Author URI: http://www.blablablablabla.com/
 */




function DS_Custom_Mapa(){
    if(class_exists("ET_Builder_Module")){
        include("lgs-modul-map.php");
        wp_enqueue_script( 'lgs-divi-map-javascript', plugin_dir_url( __FILE__ ) . '/lgs-divi-map-javascript.js' ,$deps=array(),$ver=false,$in_footer=true);
    }
}


function Prep_Mapa(){
    global $pagenow;

    $is_admin = is_admin();
    $action_hook = $is_admin ? 'wp_loaded' : 'wp';
    $required_admin_pages = array( 'edit.php', 'post.php', 'post-new.php', 'admin.php', 'customize.php', 'edit-tags.php', 'admin-ajax.php', 'export.php' ); // list of admin pages where we need to load builder files
    $specific_filter_pages = array( 'edit.php', 'admin.php', 'edit-tags.php' );
    $is_edit_library_page = 'edit.php' === $pagenow && isset( $_GET['post_type'] ) && 'et_pb_layout' === $_GET['post_type'];
    $is_role_editor_page = 'admin.php' === $pagenow && isset( $_GET['page'] ) && 'et_divi_role_editor' === $_GET['page'];
    $is_import_page = 'admin.php' === $pagenow && isset( $_GET['import'] ) && 'wordpress' === $_GET['import'];
    $is_edit_layout_category_page = 'edit-tags.php' === $pagenow && isset( $_GET['taxonomy'] ) && 'layout_category' === $_GET['taxonomy'];

    if ( ! $is_admin || ( $is_admin && in_array( $pagenow, $required_admin_pages ) && ( ! in_array( $pagenow, $specific_filter_pages ) || $is_edit_library_page || $is_role_editor_page || $is_edit_layout_category_page || $is_import_page ) ) ) {
        add_action($action_hook, 'DS_Custom_Mapa', 9789);
    }
}

//add_action($action_hook,Prep_Mapa());
Prep_Mapa();