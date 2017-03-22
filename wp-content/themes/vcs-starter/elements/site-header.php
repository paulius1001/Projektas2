<header id="header">
<div class="header">
<div class="header-inner">
<div class="header-body">


    <div class="logo-image">


        <a href="http://localhost/kprojektas-wp/" ><img src="<?php the_post_thumbnail_url('full');?>"  alt="Page logo" ></a>

    </div>

    <nav class="header-nav">
        <?php main_menu('primary-navigation', 'classes'); ?>



    </nav>

    <div class="burger-container">

            <div class="burger1"></div>

            <div class="burger2"></div>

        </div>

    <div class="header-a">

         <div class="burger-container2">

            <div class="burger1"></div>

            <div class="burger2"></div>

        </div>



        <a href="#searchasss" class="header-si"></a>

        <a href="http://localhost/kprojektas-wp/wp-admin/" class="header-h2">

            <h2><?php echo __('Login','vcs-starter');?> </h2>

        </a>
    </div>

    <?php main_menu('primary-navigation', 'main-nav'); ?>

    



</div>
</div>

</div>    

</header>