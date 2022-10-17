//@prepros-prepend plugin/swiper-bundle.min.js
//@prepros-prepend template/top_menu.js

$(function () {

    $('.main_box li').on('click', function () {
        if ($(this).hasClass('active')) {
            $('.main_box li').removeClass('active')
            $('.main_box li').removeClass('out')
        } else {
            $(this).addClass('active')
            $(this).siblings().removeClass('active')
            $(this).siblings().addClass('out')
        }
    })

    // $('.header_list li:first-child').on('click', function () {
    //     $(this).toggleClass('active')
    // })
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


    var swiper = new Swiper(".mySwiper", {
        slidesPerView: 3.3,
        spaceBetween: 25,
        centeredSlides: true,
        loop: true,
        autoplay: {
            delay: 3000,
            disableOnInteraction: false,
        },
        navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
        },
    });

    $('.swiper-slide').on('mouseenter', function () {
        swiper.autoplay.stop();
        $(this).addClass('life_active');
    });
    $('.swiper-slide').on('mouseleave', function () {
        swiper.autoplay.start();
        $('.swiper-slide').removeClass('life_active');
    });


});