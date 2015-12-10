// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require_tree .
//= require best_in_place
//= require bootstrap-sprockets
//= require best_in_place.jquery-ui
//= require_tree .


$(function(){
  jQuery(".best_in_place").best_in_place();  
});

$(document).ready(function() {
	var setUrl = function() {
		var fullUrl = window.location.href;
		var endUrl = fullUrl.substr(fullUrl.lastIndexOf("/")+1).substr(0,4);
		console.log(endUrl);

		var ids = ['#home', '#matt-link', '#eddie-link', '#buck-link'];
		var hrefs = ['#slide-1', '#matt', '#eddie', '#buck'];

		if ( (endUrl == "home") || (endUrl == "") || (endUrl == "index") ) {
			for (i = 0; i < ids.length; i++) {
				$(ids[i] + ' a').attr('href', hrefs[i]);
			};
		} else {
			for (j = 0; j < ids.length; j++) {
				$(ids[j] + ' a').attr('href', '/home' + hrefs[j]);
			};
		};
	};
	setUrl();
});

// $(function() {
//   $('a[href*=#]:not([href=#])').click(function() {
//     if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
//       var target = $(this.hash);
//       target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
//       if (target.length) {
//         $('html,body').animate({
//           scrollTop: target.offset().top - 50
//         }, 500);
//         return false;
//       }
//     }
//   });
// });

// ( function( $ ) {
//     // Init Skrollr
//     var s = skrollr.init({
//         render: function(data) {
//             //Debugging - Log the current scroll position.
//             //console.log(data.curTop);
//         }
//     });
// } )( jQuery );