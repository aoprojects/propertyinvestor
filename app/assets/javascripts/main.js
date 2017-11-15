$(document).ready(function() {
  console.log('adding handler');
  var $xs_hamburger = $( "#xs_hamburger" );
  var $nav_elements = $( "#nav_elements" );
  $(document).on('click', '#xs_hamburger', function() {
  	console.log('clicked');
    $("#nav_elements").toggle( "fast" );
		$xs_hamburger.toggleClass("hamburger_clicked");
		$("main").toggleClass("adjusted_down");
		$("footer").toggleClass("adjusted_down");
	});
});