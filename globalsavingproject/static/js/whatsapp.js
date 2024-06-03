$(".whatsapp-chat-icon a").hover(function() {
    $(".whatsapp-tooltip").toggleClass("show");
});
$(document).on('click', '.whatsapp-chat-icon a', function () {
    $('.whatsapp-widget-box').addClass('show');
});
$(document).on('click', '.widget-close', function () {
    $('.whatsapp-widget-box').removeClass('show');
});
$(window).scroll(function() {
 $('.whatsapp-widget-box').removeClass('show');
});





