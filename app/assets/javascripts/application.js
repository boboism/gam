// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require bootstrap-datepicker
//= require_tree .

var hightlight_navlist = function() {
  var mainpath = "/" + window.location.pathname.split(/\//)[1];
  if(mainpath.length > 1) {
    $(".nav.nav-list li:has(a[href^='"+mainpath+"'])").addClass("active");
  }
}
var toggle_datepicker = function() {
  $('[data-behavior~=datepicker]').datepicker({format: "yyyy-mm-dd", weekStart: 1});
}

$(function(){
  toggle_datepicker();
  hightlight_navlist();
});
