$(document).ready(function() {
    $(".hoverable").click(function() {
      if($(this).children(".hide").length > 0) {
        $(this).children(".hideable").hide();
        $(this).children(".hideable").removeClass("hide");
        $(this).children(".hideable").slideDown("fast");
      }
      else {
        $(this).children(".hideable").slideUp("fast"); 
        $(this).children(".hideable").addClass("hide");
      }
    });
    $("#header").click(function() {
      $("img.fancy").addClass("rotate");
    });
    $("#whereami").click(function() {
      get_position_data();
    });
    function get_position_data() {
      position = navigator.geolocation.getCurrentPosition(position_manipulation);
    }
    function position_manipulation(position) {
      var url = "http://maps.google.com/maps/api/staticmap?center="+position.coords.latitude+","+position.coords.longitude+"&zoom=15&size=275x200&maptype=roadmap&sensor=true";
      if($("#position").hasClass("hide")) {
        $("#position").hide();
        $("#position").removeClass("hide");
        $("#position").append("<img src='"+url+"' alt='Your position'>");
        $("#position").slideDown("fast");
      }
      else {
      }
    }
});
