

//@prepros-prepend plugin/jquery.dataTables.min.js

$(function () {
    
    if($('.top_menu_2 li').length < 2){
        $('.top_menu_2').css('display', 'none')
    }
    
    $(".list_item").on('click', function (e, row, $element) {
        parent.window.location = $(".list_item").data('href');
    });
    
    $('#newsList').DataTable({
        "ordering": false,
        "info": false,
        "language": {
            "paginate": {
                "first": "",
                "previous": "<i class='prev_btn'></i>",
                "next": "<i class='next_btn'></i>",
                "last": ""
            },
            "search": "_INPUT_",
            "searchPlaceholder": "搜尋",
        }
    });

});