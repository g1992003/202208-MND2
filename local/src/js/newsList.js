

//@prepros-prepend plugin/jquery.dataTables.min.js

$(function () {
    
    if($('.top_menu_2 li').length < 2){
        $('.top_menu_2').css('display', 'none')
    }
    
    $(".list_item").on('click', function (e, row, $element) {
        let newlink = $(".list_item").data('href');
        window.open(newlink)
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