<!--===================WHAT ARE YOU LOOKING FOR?===================-->
<?php $section1 = get_field( 't_hps_section_1' ); 
        
$post_data = get_post( 37 );

global $post;

$post = $post_data;

setup_postdata($post);  ?>
        
<div id="searchasss" class="searchasss" style="background-image: url(<?php the_post_thumbnail_url('full');?>);  " >

    <div class="search-inner">

        <div class="search-body">
            
            <h1 class="search-h1"><?php the_title();?></h1>
            
               <fieldset class="search-select-element">
                    <?php $select1 = get_field('t_s_city_select');  ?>
                    <?php $select2 = get_field('t_s_activity_select');  ?>
                    

                   
                    <select class="select1">
                       
                            <?php if( $select1  ){
                                    
                                $split1 = explode(",", $select1);
                                $splCaunt = count($split1);
    
                                ?> <option value="City" ><?php echo $split1[0];?>  </option><?php 
    
                                for($i = 1; $i < $splCaunt; $i++){ 
                                 ?> <option value="City" ><?php echo $split1[$i];?> </option><?php
                               }  
    
                            }?>
                        </select>


                    <select class="select2">
                            <?php if( $select2  ){

                                    $split2 = explode(",", $select2);
                                    $splCaunt = count($split2);

                                    ?> <option value="Activity" ><?php echo $split2[0];?>  </option><?php 

                                    for($i = 1; $i < $splCaunt; $i++){ 
                                     ?> <option value="Activity" ><?php echo $split2[$i];?> </option><?php
                                   }  

                                }?>

                    </select>

                </fieldset>
            

                <input type="search" placeholder="Keyword, name, date, ..." >
            
                
            <?php 

            // The number of all posts for a given query
            $posts_found = $GLOBALS['wp_query']->found_posts;
            // The number of posts for just the page
            $posts_count = $GLOBALS['wp_query']->post_count;

            if(have_posts()): ?>

                <?php while (have_posts()) : the_post(); ?>
                    
                    <div class="search-button">
                    
                    <?php 
                    $text = get_field('t_fl_link_text');
                    $link = get_field('t_fl_link_url');
                    
                    if((isset($text) && $text) && (isset($link) && $link)): ?>

                    <a href="<?php echo $link ;?>"><h2><?php echo $text ?></h2></a>
                    <?php endif; ?>   

                <?php endwhile; ?>

            <?php endif; ?>

                

            </div>

        </div>    

    </div>   

</div>

<!--==========WHAT ARE YOU LOOKING FOR? FINISHED===================-->
<!--=====================FILTER SECTION============================-->
<div class="filter">

    <div class="filter-inner">

        <div class="filter-body">

            <nav >

                <?php main_menu('second-navigation', 'filter-list') ?>

            </nav>

             <div class="media-filter-sg">  



            <div class="filter-sg">

                <div class="filter-select">

                    <select id="filter-select" >
                            <?php if( $select1  ){
                                    
                                $split1 = explode(",", $select1);
                                $splCaunt = count($split1);
    
                                ?> <option value="<?php echo $split1[0];?>" >All</option><?php 
    
                                for($i = 1; $i < $splCaunt; $i++){ 
                                 ?> <option   data-filter="<?php echo $split1[$i];?>" value="<?php echo $split1[$i];?>"><?php echo $split1[$i];?></option><?php
                               }  
    
                            }?>
                        
                    </select>
                    

                </div>

                <div><a class="filter-map" href="index1.php" >SHOW MAP</a></div>

            </div>
            </div>     

            <div class="filter-group">

                <h3 >Filter:</h3>

                <div class="filter-icomoon">
                    
                    <?php main_menu('third-navigation', 'filter-icomoon') ?>

                </div>
            </div>    

        </div>

    </div>
   

</div>

<?php wp_reset_postdata(); ?>
<!--=================FILTER SECTION FINISHED=======================-->