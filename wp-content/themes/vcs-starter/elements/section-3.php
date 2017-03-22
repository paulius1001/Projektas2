<div  class="main-post">
            
    <div id="main-post" class="post-inner">
                
<?php 

$page = (get_query_var('paged')) ? get_query_var('paged') : 1;

$my_query = new WP_Query(array(
	'post_type' => 'Posts1',
	'posts_per_page' => -1,
	'orderby' => 'date',
	'order' => 'DESC',
	'paged' => $page,
));

if ( $my_query->have_posts() ) : ?>

                
         <div class="post-body">

<?php $i = 1; while ($my_query->have_posts()) : $my_query->the_post(); ?>
             
             <?php $id = get_the_category( $post->ID ); ?> 
             
             <?php $city = get_field( 'p_city' ); ?>
             <?php $reco = get_field( 'p_recommended' ); ?>

             <?php if(($id[0]->slug) !='comment'){?> 
             
<!-- ================= Posts  =========================  -->
             
            <div  class="postai1 pst <?php echo $id[0]->slug; ?> <?php echo $city; ?> <?php echo $reco ?>" value="<?php the_permalink(); ?>">

                            <div class="body">

                                <div class="post-price">

                                    <img src="<?php the_post_thumbnail_url('protfolio-small');?>"  alt="Post picture.">
                                    
                                    
                                    <div>
                                        
                                        <h3 >$2,990</h3>
                                    
                                        <a class="logo"></a>
                                        
                                    </div>
                                    <div class="post-hover">
                                    
                                        <a  class="post-hover-a">Search</a>
                                        <h6 class="post-hover-h6"></h6>
                                    
                                    </div>

                                </div>                                                                    
                                

                                <p class="post-p"><?php the_content(); ?></p>

                                <h3 class="post-vision"><?php the_title()  ?></h3>

                                <h4>(<?php echo $city; ?>)</h4>

                            </div>   

                        </div>
                
             <?php } else { ?>
            
             
<!-- ================= Comments  =========================  -->
                        <?php $idField = get_field(p_pc_comment_type); ?>
                         <?php $commentator= get_field(p_pc_commentator); ?>
             
             <div  class="postai2 pst <?php echo $id[0]->slug; ?> <?php echo $city; ?> <?php echo $idField;?> <?php echo $reco ?>" value="<?php the_permalink(); ?>">
                            
                            
                           
                            <div class="post-comment-body">
                                
                                <div class="comment-body">

                                    <img class="img1 <?php echo $idField;?>" src="<?php the_post_thumbnail_url('protfolio-comment-big');?>" alt="Post picture.">   
                                    
                                    <?php $image = get_field('p_pc_image');?>
                                    <img class="img2" src="<?php echo $image['url']; ?>" alt="Person picture.">
                                    
                                    <div>
                                        <a class="comment-logo"></a>
                                        
                                        <div class="stars">
                                           
                                            <h3 class="post-vision"><?php the_title(); ?></h3>

                                            <h4>(365)</h4>
                                           
                                        </div>
                                        
                                        <div class="post-hover-comment <?php echo $idField; ?>">
                                    
                                            <a class="post-hover-a">Search</a>
                                            <h6 class="post-hover-h6"></h6>
                                    
                                        </div>
                                    </div>
                                </div>
                                 <div class="post-main-div">

                                    <div class="post-p2">
                                        
                                        <div class="big-stars"></div>
                                        
                                            <h5><?php echo $commentator ?></h5>  

                                        <?php the_content(); ?>

                                    </div>

                                </div>
                            </div>
                        </div> 
             

             <?php } ?>
             
              <div class="hidden postai11  <?php echo $id[0]->slug; ?> <?php echo $city; ?> <?php echo $reco ?>" value="<?php the_permalink(); ?>"> 
                        <div class="body">
                            <img class="imgm" src="<?php the_post_thumbnail_url('protfolio-comment');?>" alt="Post picture.">
                            <div class="ex-button">
                                <div class="d1"></div>
                                <div class="d2"></div>
                            </div>
                            <h3 ><?php the_title(); ?></h3>
                            <div>
                                <div class="paragraph">
                                    <?php the_content(); ?>
                                    <h3> <?php echo $city; ?></h3>
                                </div>

                            </div>

                        </div>

                 </div>
              <div class="hidden <?php echo $id[0]->slug; ?>1 <?php echo $city; ?> <?php echo $idField;?> <?php echo $reco ?>" value="<?php the_permalink(); ?>"> 
                        <div class="body">
                            <img class="imgm" src="<?php the_post_thumbnail_url('protfolio-comment-big');?>" alt="Post picture.">
                            <div class="ex-button">
                                <div class="d1"></div>
                                <div class="d2"></div>
                            </div>
                            <h3 class="post-vision"><?php the_title(); ?></h3>
                            <div class="main-par">
                                <div class="commentator">
                                    <img src="<?php echo $image['url']; ?>" alt="Commentator picture.">
                                    <h3><?php echo $commentator ?></h3>
                                </div>
                                
                                <div class="paragraph">
                                    <?php the_content(); ?>
                                </div>
                                     
                            </div>
                            <h4> <?php echo $city; ?></h4>
                        </div>

                 </div>

<?php $i++; endwhile; ?>
          <h2 class="error hidden">We don't have post with this filter!! Sorry!! :)</h2>  
  
<?php wp_reset_postdata(); unset($my_query); ?>

<?php endif;  ?>
                    

</div>                        
