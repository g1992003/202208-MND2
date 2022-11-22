
$(function () {

    //@prepros-prepend plugin/jquery_min.js
    //@prepros-prepend template/topbtn.js
    //@prepros-prepend template/header.js


    $('body').addClass('loading') 
    
    
    $('.header_list .logBox').on('click', function(){
        if($('body').hasClass('logIn')){
            $('body').removeClass('logIn')
            $('body').addClass('logOut')
            $('.log').html("登出")
        }else{
            $('body').removeClass('logOut')
            $('body').addClass('logIn')
            $('.log').html("登入")
        }
    })


    // --------------------main min-height---------------------
    function minHeight(){
        var windowHeight = $(window).height();
        var miniHeight = windowHeight - $('footer').outerHeight() + $('header').outerHeight();
        $('main').css({
            "min-height": miniHeight + "px"
        });
    }

    minHeight()

    $(window).on('resize', function (e) {
        minHeight()
    });

});
