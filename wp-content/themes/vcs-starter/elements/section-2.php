<?php $section2 = get_field( 't_hps_section_1' ); 

$post_data = get_post( 73 );
global $post;
$post = $post_data;
setup_postdata($post);  ?>

<div id="main-offer1" class="main-offer">

    <div class="offer-inner">

        <div class="offer-body">

            <div class="offer-p1">

                <h2><?php the_title(); ?></h2>


                <?php the_content(); ?>

            </div>

            <div class="offer-image"></div>

            <div class="offer-p2"></div>

            <div class="offer-icomoon">
                
                <?php main_menu('fourth-navigation', 'offer-icomoon')?>

                </div>
            <?php $section3 = get_field( 't_fi_property' ); ?>
                
            <div class="hidden" ><?php echo $section3 ?></div>
                
            
            <?php $section2 = get_field( 't_s_2_reality' );?>
            
            <h2 class="offer-h2"><?php echo $section2; ?></h2>
            

            <div class="offer-p3">

                <ul>
                    <li class="offer-p3-li">    
                        <a  class="offer-p3-a1"></a>
                        <?php $section2 = get_field( 't_s_2_paragraph_1' ); ?>
                         <p><?php echo $section2; ?></p>
                    </li>
                    <li class="offer-p3-li">
                        <a  class="offer-p3-a2"></a>
                         <?php $section2 = get_field( 't_s_2_paragraph_2' ); ?>
                         <p><?php echo $section2; ?></p>
                    </li>
                </ul>
                
                
            </div>

        </div>

    </div>  

</div>    
<?php wp_reset_postdata(); ?>