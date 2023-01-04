//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree.
$(document).ready(function(){
        setTimeout(function(){
          $('.alert-success').fadeOut("slow", function(){
            $(this).remove();
          });
        }, 4500);
});