// G - The overlay should trigger on every page
// H - Only use the libraries available on the site

// This tracks if trigger has been activated once per page.
var onePopUp = false 

$(document).ready(function() {
// D - capture scroll any percentage
	$(window).scroll(function(e){
		var scrollTop = $(window).scrollTop();
		var documentHeight = document.body.clientHeight;
		var windowHeight = $(window).height();
		var rawScrollPercent = (scrollTop) / (documentHeight - windowHeight);
		var scrollPercentage = Math.round(rawScrollPercent*100)/100;

		// Changes the displayed number in the <span> on html
	    $('#scrollPercentLabel>span').html(scrollPercentage);

	    // check center of label
	    // repositionLabel();

	    // check if 90 or over 
	    check90percent();

// C - Set up a trigger that activates when the user scrolls to the bottom 10% of the page. 
			// check if user is within bottom 10% of the page & our trigger was not used yet
			function check90percent() {
				if ((scrollPercentage >= .9) && !onePopUp)
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
						var overlay = document.createElement('div');
						overlay.className = "overlay";
						overlay.setAttribute("id", "overlay");
						document.body.appendChild(overlay);  
						var overlaid = document.getElementById("overlay").style;
						overlaid.backgroundColor = "black";
						overlaid.position = "fixed";
						overlaid.opacity="0.7";
						overlaid.top="0px";
						overlaid.bottom="0px";
						overlaid.left="0px";
						overlaid.right="0px";
						overlaid.zIndex="100";

				        $('#overlay').fadeIn('fast',function(){

// E - The trigger should show a centered overlay on top of the site that displays the number of items in cart and the cart total in large letters.  Design matters. 
						var div = document.createElement('div'), 
						txt = document.createTextNode("You currently have " + cartItems + " items in your cart.  They would look better on you.");
						div.className = "box";
						div.setAttribute("id", "box");
						div.appendChild(txt);  
						div.style.cursor = 'pointer';
						document.body.appendChild(div); 

						var popUp = document.getElementById("box").style 
						popUp.textAlign="center";
						popUp.fontSize="x-large";
						popUp.borderRadius = "20px";
						popUp.position="fixed";
						popUp.top= "-200px";
						popUp.left= "30%";
						popUp.right= "30%";
						popUp.backgroundColor= "white";
						popUp.padding= "20px";
						popUp.border= "2px solid #ccc";
						popUp.zIndex="101";

				            $('#box').animate({'top':'300px'},500);
				        });
					    $('#box').click(function(){
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

 