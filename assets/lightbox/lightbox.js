$(document).ready(function () {
    var head = document.getElementsByTagName('head')[0];
    $(head).append($('<link>').attr('rel', 'stylesheet').attr('type', 'text/css').attr('href', 'lightbox.css'));

    $('.lightbox').each(function () {
        $(this).click(function (e) {
            var classes = $(this).attr('class').split(/\s+/);
            if(classes.includes('open'))
            {
                $(this).removeClass('open');
            }
            else
            {
                $(this).addClass('open');
            }
        });
    });
});