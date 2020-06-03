/**
 *  ResponsiveVideos.js v0.3
 *  Responsive iframe embeded video from YouTube/Vimeo.
 
 *  Author URL: http://www.rewea.com
 */

(function($){

    var $getVideos = ["iframe[src^='http://player.vimeo.com']", "iframe[src^='//player.vimeo.com']", "iframe[src^='//www.youtube.com']"];
    
    $.fn.responsivevideos = function() {
        function update(){
           $.each($getVideos, function(index, value){
                $this = $(value);
				
                if($this.length != 0){
                    
                    wrapperWidth = $this.parent().width();
                    wrapperHeight = $this.parent().height();
					
                    currentHeight =  $this.height();
                    currentWidth =   $this.width();
                    
                    currentAspectRatio =  currentHeight / currentWidth;
					
					if(parseInt(currentAspectRatio * wrapperWidth) > wrapperHeight){
						futureHeigh = wrapperHeight;
						futureWidth = wrapperWidth;
					} else {
						futureHeigh = parseInt(currentAspectRatio * wrapperWidth);
						futureWidth = wrapperWidth;
					}
					
					
                    
                    $this.removeAttr('height').removeAttr('width');
                    $this.css("width", futureWidth).css("height", futureHeigh);
                }
            });
        };
                
        $(window).on('resize', update);
        
        $( document ).ajaxComplete(function() {
            update();
        });
        
        update();
    }
    
})(jQuery);