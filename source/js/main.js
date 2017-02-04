$(function(){
    // set back to top
    $('#btn-back-to-top').click(function(e){
        e.preventDefault();
        $('html,body').animate({
            scrollTop: 0
        }, 700);
    });
    $(window).scroll(function() {
        if ( $(window).scrollTop() > 300 ) {
            $('#btn-back-to-top').fadeIn(100);
        } else {
            $('#btn-back-to-top').fadeOut(100);
        }
    });

    // set pagination
    $('.pagination').addClass('ui menu');
    $('.pagination>a').addClass('item');
    $('.pagination>span').addClass('item active');

    // format post body
    // $('#post-body>blockquote').addClass('ui piled segment');
    // $('#post-body>p>img').addClass('ui rounded centered image');
    // $('#post-body>table').addClass('ui celled table');
    // $('#post-body>ol,ul').addClass('ui list');
    $('#page-body').css('min-height',
        window.innerHeight - $('#page-header').height() - $('#page-footer').height() - 20);
});
