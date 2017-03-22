$(document).ready(function(){
    $(".burger-container").on('click', function(){
    $(this).toggleClass("open"),
    $(".main-nav").toggleClass("open");
    });
    $(".main-nav .posts").on('click', function(){
    $(".burger-container").removeClass("open"),
    $(".main-nav").removeClass("open");
    });
    $(".main-nav .about").on('click', function(){
    $(".burger-container").removeClass("open"),
    $(".main-nav").removeClass("open");
    });
    $(".main-nav .contacts").on('click', function(){
    $(".burger-container").removeClass("open"),
    $(".main-nav").removeClass("open");
    });



    

    $('ul.filter-icomoon li').click(function() {
    $(this).css('outline','none');
    $('ul.filter-icomoon .current').removeClass('current');
    $(this).addClass('current');

    var filterVal = $(this).text().toLowerCase().replace(' ','-');
    //      console.log(filterVal);

    if(filterVal == 'all') {
      $('div.post-body > div.hidden').fadeIn('slow').removeClass('hidden');
    } else {
          $('div.post-body > .pst').each(function() {
            if(!$(this).hasClass(filterVal)) {
              $(this).addClass('hidden');
            } else {
              $(this).removeClass('hidden');
            }
          });
    }

    return false;
    });

    $('div.filter-select').click(function() {
    $('div.filter-select option:selected').ready(function() {
    $(this).css('outline','none');
    //    $('div.filter-select .current').removeClass('current');
    //    $(this).addClass('current');
    var filterVal =$('div.filter-select option:selected').text().replace(' ','-').toLowerCase();
    if(filterVal == 'all') {
      $('div.post-body > .pst').removeClass('hidden');
    } else {
          $('div.post-body > .pst').each(function() {
            if(!$(this).hasClass(filterVal)) {
              $(this).addClass('hidden');
            } else {
              $(this).removeClass('hidden');
            }
          });
    }
    });

    return false;
    });

    $('div.search-button').click(function() {
        $('.search-select-element  option:selected').ready(function() {
            $(this).css('outline','none');
            var filterVal1 =$('.select1  option:selected').text().replace(' ','').toLowerCase(); 
            var filterVal2 =$('.select2  option:selected').text().replace(' ','').toLowerCase();
            filterVal1=filterVal1.replace(' ','');
            filterVal2=filterVal2.replace(' ','');
            var a = '-activity-';
            var c = '-city-';
            
            $('div.post-body > .pst').addClass('hidden');

            if(filterVal1 == c && filterVal2 == a){
                 
                   
                   $('div.post-body > .pst').removeClass('hidden');

               
            }
             else {
                 console.log('2');
                 $('div.post-body > .pst').each(function() {

                     

                    if($(this).hasClass(filterVal1)) {
                        if($(this).hasClass(filterVal2)){
                            $(this).removeClass('hidden');

                        } else { 

                                if(!$(this).hasClass(filterVal2)&& filterVal2 == a){
                                    $(this).removeClass('hidden');

                            }
                           
                        }    
                    }
                     if($(this).hasClass(filterVal2)){

                         
                        if(!$(this).hasClass(filterVal1)&& filterVal1 == c){

                            $(this).removeClass('hidden');

                        }    

                     }


                });

              }

        });

        return false;
    });

    $('.menu-item-60').click(function(){
        
        var rec = $(this).text().toLowerCase();
        
        $(this).css('outline','none');
        
        $('div.post-body > .pst').addClass('hidden');
        
        $('div.post-body > .pst').each(function(){
           
            if($(this).hasClass(rec)){
                
                $(this).removeClass('hidden');
                
            }
            
        });
        
        
        
        
        
    });
    $('.menu-item-61').click(function(){
        
        var rec = $(this).text().toLowerCase();
        
        $(this).css('outline','none');
        
        $('div.post-body > .pst').removeClass('hidden');
         
    });
    
    $('.postai2').click(function(){
        
            var category = $(this).attr("value");
            
            $('.comment1').each(function(){
                
                var cat = $(this).attr("value");
                
                if(category == cat){
                    
                    $(this).removeClass('hidden');
                    
                }
       
            });

    });
    
    $('.ex-button').click(function(){
        
        $('.comment1').addClass('hidden');

    });
    
       $('.ex-button').click(function(){
        
        $('.postai11').addClass('hidden');

    });
    
     $('.postai1').click(function(){
         
         var category = $(this).attr("value");
           
            
          $('.postai11').each(function(){
              
              var cat = $(this).attr("value");
              if(category == cat){
                  
                  $(this).removeClass('hidden');
              }
              
          });
     });
    
    
});

 
           