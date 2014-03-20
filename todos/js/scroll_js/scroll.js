// G - The overlay should trigger on every page
// H - Only use the libraries available on the site

$(document).ready(function(){
    $("<span>please</span>").insertAfter("body");
})


// This tracks is trigger has been activated yet. 
var onePopUp = false 


$(document).ready(function() {
// D - capture scroll any percentage
	$(window).scroll(function(e){
		var scrollTop = $(window).scrollTop();
		var docHeight = $(document).height();
		var winHeight = $(window).height();
		var scrollPercent = (scrollTop) / (docHeight - winHeight);
		var scrollPercentRounded = Math.round(scrollPercent*100)/100;

		// Changes the displayed number in the <span> on html
	    $('#scrollPercentLabel>span').html(scrollPercentRounded);

	    // check center of label
	    repositionLabel();

	    // check if 90 or over 
	    check90percent();

// C - Set up a trigger that activates when the user scrolls to the bottom 10% of the page. 
			// check if user is within bottom 10% of the page & our trigger was not used yet
			function check90percent() {
				if ((scrollPercentRounded >= .9) && !onePopUp)
					{
						// Now that our trigger has been used once, it won't be again unless the page is reloaded.  
						onePopUp = true 

// A - Extract the number of of items in cart and cart total. Store that in javascript variables. 
// B - The overlay/scraping should work even if the cart is empty.
//		In the case of zero items, we get "0"
						var cartItems = $(".cart-total-qty").text();

					$(function() {



// !!!! for both F & E add the html to the document and then go to town so its just snippet 

// F - Behind the overlay add a semi-transparent black background obscuring the site
				        $('#overlay').fadeIn('fast',function(){

// E - The trigger should show a centered overlay on top of the site that displays the number of items in cart and the cart total in large letters.  Design matters. 
				            $('#box').animate({'top':'160px'},500);

				        });
					    $('#boxclose').click(function(){
					        $('#box').animate({'top':'-200px'},500,function(){
					            $('#overlay').fadeOut('fast');
					        });
					    });
					 
					});

			

					};

			};


	});

// 	// Code in a resize handler should never rely on the number of times the handler is called. Depending on implementation, resize events can be sent continuously as the resizing is in progress (the typical behavior in Internet Explorer and WebKit-based browsers such as Safari and Chrome), or only once at the end of the resize operation (the typical behavior in some other browsers such as Opera). !! likely for certain browsers !!

	// recenter label after window is resized 
	$(window).resize(function(){
		repositionLabel();
	});

	// centers label
	function repositionLabel() {
		$('#scrollPercentLabel').css({
			position:'fixed',
			left: ($(window).width() - $('#scrollPercentLabel').outerWidth()) / 2,
			top: (($(window).height() - $('#scrollPercentLabel').outerHeight()) / 2) - $('#scrollPercentLabel').height()
		});
	}

	// sets label to center of screen
	repositionLabel();

});

 

