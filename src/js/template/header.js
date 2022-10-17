
let winscroll = $(window).scrollTop();
let winH = $(window).height();
let winW = $(window).width();


//--------------HEADER & HAMBUR選單----------
$(window).on('scroll resize', function () {
    winscroll = $(window).scrollTop();
    $('body').removeClass('openMenu');
    $('.menu-ham').removeClass('hamActive');
});

//-------------------HAMBUR 開合--------------------
$('.menu-ham').on('click', function () {
    $(this).toggleClass('hamActive');
    $('body').toggleClass('openMenu');
});