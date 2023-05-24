
//@prepros-prepend plugin/jquery_min.js
//@prepros-prepend plugin/swiper-bundle.min.js

$(function () {

    //@prepros-prepend template/topbtn.js
    //@prepros-prepend template/header.js


    $('body').addClass('loading')


    $('.header_list .logBox').on('click', function () {
        if ($('body').hasClass('logIn')) {
            $('body').removeClass('logIn')
            $('body').addClass('logOut')
            $('.log').html("登出")
        } else {
            $('body').removeClass('logOut')
            $('body').addClass('logIn')
            $('.log').html("登入")
        }
    })


    // --------------------main min-height---------------------
    function minHeight() {
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

    var swiper1 = new Swiper(".mySwiper1", {
        spaceBetween: '36%',
        navigation: {
            nextEl: ".mySwiper1 .swiper-button-next",
            prevEl: ".mySwiper1 .swiper-button-prev",
        },
    });
    var swiper2 = new Swiper(".mySwiper2", {
        spaceBetween: '36%',
        navigation: {
            nextEl: ".mySwiper2 .swiper-button-next",
            prevEl: ".mySwiper2 .swiper-button-prev",
        },
    });
    var swiper3 = new Swiper(".mySwiper3", {
        spaceBetween: '36%',
        navigation: {
            nextEl: ".mySwiper3 .swiper-button-next",
            prevEl: ".mySwiper3 .swiper-button-prev",
        },
    });
    var swiper4 = new Swiper(".mySwiper4", {
        spaceBetween: '36%',
        navigation: {
            nextEl: ".mySwiper4 .swiper-button-next",
            prevEl: ".mySwiper4 .swiper-button-prev",
        },
    });
    var swiper5 = new Swiper(".mySwiper5", {
        spaceBetween: '36%',
        navigation: {
            nextEl: ".mySwiper5 .swiper-button-next",
            prevEl: ".mySwiper5 .swiper-button-prev",
        },
    });

});
