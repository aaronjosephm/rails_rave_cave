//= require rails-ujs
//= require_tree .
//= require jquery
//= require snackbar

$.each( flashMessages, function(key, value){
  $.snackbar({content: value, style: key, timeout: 10000});
});
