// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.

//= require jquery
//= require jquery_ujs
//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require Chart.bundle
//= require chartkick
$(function(){
  $('.matching').slideDown(2000);
});
$(function(){
  $('.matching_percent,.matching_80percent').fadeIn(7000);
});
$(function(){
  $('.ranking').fadeIn(3000);
});
$(function(){
  $('.title').fadeIn(8000);
});
$(function(){
  $('.p1').fadeIn(3000);
});
$(function(){
  $('.p2,.p5').fadeIn(5000);
});
$(function(){
  $('.p3').fadeIn(9000);
});
$(function(){
  $('.p4').fadeIn(7000);
});
$(function(){
  $('.p6').fadeIn(11000);
});