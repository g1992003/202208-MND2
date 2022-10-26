//@prepros-prepend plugin/swiper-bundle.min.js
//@prepros-prepend template/top_menu.js

$(function () {
    let moveTop = $('.move_top')
    let topHary = []

    moveTop.each((idx,i) => { 
        let topH = $('.move_top').eq(idx).offset().top
        topHary.push(topH)
    });


     $(window).on('mousewheel', function (e) {
        let scrollT = $(window).scrollTop()
        for(let i=0; i <3; i++){
            if (e.deltaY < 0) { 
                if(scrollT > winH / 2 && scrollT < winH){
                    $('html,body').stop(true).animate({
                        scrollTop: topHary[0]
                    }, 500);
                }else if(scrollT > $('.move_top').eq(i).outerHeight() / 3 + topHary[i] && scrollT < $('.move_top').eq(i).outerHeight() + topHary[i] - 140){
                    $('html,body').stop(true).animate({
                        scrollTop: topHary[i+1] - 140
                    }, 500);
                }
            }
        }
     });
    

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