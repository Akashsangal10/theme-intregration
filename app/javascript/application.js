// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

import * as bootstrap from "bootstrap"
 
      
 $(document).ready(function(){
 	setTimeout(function(){
 		$('.alert .alert-success ').fadeOut("slow", function(){
 			$(this).remove();
 		})
 	}, 4500);
 });



 
     