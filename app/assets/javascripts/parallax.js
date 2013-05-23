
(function( $ ){
	var $window = $(window);
	var windowWidth = $window.width();

	$window.resize(function () {
		windowWidth = $window.width();
	});

	$.fn.parallax = function(xpos, speedFactor, outerHeight) {
		var $this = $(this);
		var getWidth;
		var firstTop;
		var paddingTop = 0;
		
		//get the starting position of each element to have parallax applied to it		
		$this.each(function(){
		    firstTop = $this.offset().top;
		});

		if (outerWidth) {
			getWidth = function(jqo) {
				return jqo.outerWidth(true);
			};
		} else {
			getWidth = function(jqo) {
				return jqo.Width();
			};
		}
			
		// setup defaults if arguments aren't specified
		if (arguments.length < 1 || xpos === null) xpos = "50%";
		if (arguments.length < 2 || speedFactor === null) speedFactor = 0.1;
		if (arguments.length < 3 || outerHeight === null) outerHeight = true;
		
		// function to be called whenever the window is scrolled or resized
		function update(){
			var pos = $window.scrollTop();				

			$this.each(function(){
				var $element = $(this);
				var left = $element.offset().left;
				var width = getWidth($element);

				// Check if totally above or totally below viewport
				if (left + width < pos || left > pos + windowWidth) {
					return;
				}

				$this.css('backgroundPosition', xpos + " " + Math.round((firstTop - pos) * speedFactor) + "px");
			});
		}		

		$window.bind('scroll', update).resize(update);
		update();
	};
})(jQuery);