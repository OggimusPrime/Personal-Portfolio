// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap
//= require scrollMonitor
//= require_tree .

$(function() {
  var navMenu = $('#nav_menu');

  var elementWatcher = scrollMonitor.create(navMenu);

  elementWatcher.lock();
  // elementWatcher.visibilityChange(function() {
  //   console.log(elementWatcher.isFullyInViewport)
  // });

  elementWatcher.exitViewport(function() {
    navMenu.addClass('fixed');
  });
  elementWatcher.enterViewport(function() {
    navMenu.removeClass('fixed');
  });
  // elementWatcher.stateChange(function() {
  //   if(elementWatcher.isFullyInViewport) {
  //     navMenu.removeClass('fixed');
  //     console.log("remove fixed");
  //   } else {
  //     navMenu.addClass('fixed');
  //     console.log("added fixed");
  //   }
  // });
});
