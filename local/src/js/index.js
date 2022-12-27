//@prepros-prepend plugin/swiper-bundle.min.js
//@prepros-prepend template/top_menu.js
//@prepros-prepend plugin/jquery.mousewheel.min.js

$(function () {   

    let scrollT = $(window).scrollTop()
    let banner = $('.banner').outerHeight() * 0.75
    let section2 = $('.section_2').offset().top + ($('.section_2').outerHeight() * 0.75)
    let scrollCan = true
    $(window).bind('mousewheel', function(e){
        scrollT = $(window).scrollTop()
        if(scrollCan == true && e.deltaY == -1){
            console.log('通過')
            if (scrollT > 0 && scrollT <= banner) {
                $('html,body').stop(true).animate({
                    "scrollTop": $('.section_2').offset().top
                }, 500 );
                scrollCan = false
                scrollCanVal()
                console.log('通過第3層')
            }else if (scrollT >= $('.banner').outerHeight() && scrollT <= section2) {
                $('html,body').stop(true).animate({
                    "scrollTop": $('.news').offset().top - $('header').outerHeight()
                }, 500 );
                scrollCan = false
                scrollCanVal()
                console.log('通過第4層')
            }
        }
        // if (e.deltaY == -1 && scrollT > 0 && scrollT <= banner && scrollCan == true) {
        //     scrollCan = false
        //     $('html,body').stop(true).animate({
        //         "scrollTop": $('.section_2').offset().top
        //     }, 500 );
        //     console.log("scrollCan1",scrollCan);
        //     scrollCanVal()
        // }
        // if (e.deltaY == -1 && scrollT >= $('.banner').outerHeight() && scrollT <= section2 && scrollCan == true) {
        //     scrollCan = false
        //     $('html,body').stop(true).animate({
        //         "scrollTop": $('.news').offset().top - $('header').outerHeight()
        //     }, 500 );
        //     console.log("scrollCan2",scrollCan);
        //     scrollCanVal()
        // }
    })

    function scrollCanVal(){
        setTimeout(() => {
            scrollCan = true
            console.log("scrollCan2",scrollCan);
        }, "750")
    }
    

    // ------------section_2-------------
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

    $('.units ul li').on('click', function(){
        $('body').removeClass('openMenu');
        $('.menu-ham').removeClass('hamActive');
        $('html,body').stop(true).animate({
            scrollTop: $('.section_2').offset().top
        }, 750);
        let idx = $(this).index()
        $('.section_2 .main_box li').addClass('out')
        $('.section_2 .main_box li').removeClass('active')
        $('.section_2 .main_box li').eq(idx).removeClass('out')
        $('.section_2 .main_box li').eq(idx).addClass('active')
    })

    var url = location.href;
    if(url.indexOf('?')!=-1){
        var ary1 = url.split('?');
        var ary2 = ary1[1].split('=');
        var active = ary2[0];
        var activev = ary2[1];
        if(active == active){
            $('html,body').stop(true).animate({
                scrollTop: $('.section_2').offset().top
            }, 750);
            $('.section_2 .main_box li').addClass('out')
            $('.section_2 .main_box li').removeClass('active')
            $('.section_2 .main_box li').eq(activev).removeClass('out')
            $('.section_2 .main_box li').eq(activev).addClass('active')
        }
    }


    // ------------Swiper------------
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