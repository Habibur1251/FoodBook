 /*-----------------------------------------------------------------------------------

 	Custom JavaScript - All front-end jQuery
 
-----------------------------------------------------------------------------------*/
 /* FlexSlider */
 $(window).load(function () {

     // The slider being synced must be initialized first
     $('#carousel').flexslider({
         animation: "slide",
         controlNav: false,
         animationLoop: true,
         slideshow: false,
         itemWidth: 120,
         asNavFor: '#slider',
         directionNav: false
     });


     $('#slider').flexslider({
         animation: "fade",
         controlNav: false,
         animationLoop: true,
         slideshow: true,
         sync: "#carousel",
         directionNav: true

     });
     $('#recipe-carousel').flexslider({
         animation: "slide",
         controlNav: false,
         animationLoop: false,
         slideshow: false,
         directionNav: true,
         itemWidth: 300,
         itemMargin: 20
     });

 });

 /* Magnific Popup */
 $(document).ready(function () {
     // Initialize popup as usual
     $('.image-link').magnificPopup({
         type: 'image',
         mainClass: 'mfp-with-zoom',
         // this class is for CSS animation below
         zoom: {
             enabled: true,
             // By default it's false, so don't forget to enable it
             duration: 300,
             // duration of the effect, in milliseconds
             easing: 'ease-in-out',
             // CSS transition easing function 
             // The "opener" function should return the element from which popup will be zoomed in
             // and to which popup will be scaled down
             // By defailt it looks for an image tag:
             opener: function (openerElement) {
                 // openerElement is the element on which popup was initialized, in this case its <a> tag
                 // you don't need to add "opener" option if this code matches your needs, it's defailt one.
                 return openerElement.is('img') ? openerElement : openerElement.find('img');
             }
         }

     });
 });


 /* Instagram Feed */
 var feed = new Instafeed({
     get: 'tagged',
     tagName: 'food',
     limit: 6,
     clientId: 'e7661456ccb5467495d5ee3ea8d7d887',
     template: '<div class="instagram_thumbnail"><a href="{{link}}"><img src="{{image}}" /></a></div>'


 });
 feed.run();

 /* Touchscreen JS */
 $('.post-meta-item div').live('touchstart', function (e) {
     $(this).addClass('hover-effect');
     //alert('alert');
 });

 $('.post-meta-item div').live('touchend', function (e) {
     $('.post-meta-item div').removeClass('hover-effect');
     //alert('alert');
 })