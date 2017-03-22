<footer>

<div id="footer-inner" class="footer-inner">

    <div class="footer-body">
        
        <h2 class="footer-h2"><?php echo  the_content();?></h2>
        
        <?php 
            $form = get_field('t_f_form'); 
             
            echo do_shortcode('[contact-form-7 id="33" title="Contact form"]');
        
//            var_dump($form);exit;
        ?>

        
        <div class="footer-li">

<?php if (function_exists('dynamic_sidebar') && dynamic_sidebar('Footer Widgets')):?>

<?php endif; ?>

        </div>

    </div>

</div> 

</footer>