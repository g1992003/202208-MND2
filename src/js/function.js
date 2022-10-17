
$(function () {

    //@prepros-prepend plugin/jquery_min.js
    //@prepros-prepend template/topbtn.js
    //@prepros-prepend template/header.js


    $('body').addClass('loading')


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
