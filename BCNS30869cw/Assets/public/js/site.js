// HappyPaws site-wide script.
// Based on Eduleb's scripts.js, keeping only the parts HappyPaws uses.
$(function () {
    // Turns the <ul class="mobile_menu"> into a slide-out menu on small screens
    $(".mobile_menu").simpleMobileMenu({ "menuStyle": "slide" });

    // Starts the fade-in animations on elements that have the class "wow"
    new WOW().init();
});