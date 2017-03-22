<!doctype html>
<html <?php language_attributes(); ?>> 
<head>
    <meta charset="<?php bloginfo('charset'); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title><?php wp_title( '|', true, 'right' ); ?></title>
    
    
    <link rel="shortcut icon" href="<?php echo get_template_directory_uri() . "/assets/image/favicon.ico" ?>">
    <link rel="stylesheet" href="https://unpkg.com/purecss@0.6.2/build/pure-min.css" integrity="sha384-UQiGfs9ICog+LwheBSRCt1o5cbyKIHbwjWscjemyBMT9YCUMZffs6UqUTd0hObXD" crossorigin="anonymous">
    
    <?php 
    wp_head();
    ?>
	
</head>
<body>
    <?php  get_template_part('elements/site-header'); ?>