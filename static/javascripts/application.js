$(document).ready(function() {
    $(".hoverable").click(function() {
      if($(this).children(".hide").length > 0) {
        $(this).children(".hideable").removeClass("hide").slideDown("slow");
      }
      else {
        $(this).children(".hideable").addClass("hide").slideUp("slow"); 
      }
    });
    $("#header").click(function() {
      $("img.fancy").addClass("rotate");
    });
});
