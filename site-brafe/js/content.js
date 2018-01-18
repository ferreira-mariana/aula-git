$(document).ready( function() {

$('.sobre-item h3').fadeOut();

	$(window).scroll( function() {
		var dist = $(window).scrollTop();

		if(dist > 100){
			$('.sobre-item h3').fadeIn();
		}
		else{
			$('.sobre-item h3').fadeOut();
		}
	
	});

	$('.back-to-top').click( function() {
		$('html body').animate({scrollTop: 0}, 250);
	});

	$('.produtos-item p').hover( function() {
		$(this).css('font-size','1.125em');
	});

});
