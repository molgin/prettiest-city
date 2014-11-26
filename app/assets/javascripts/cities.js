$(function() {
  initialize();
})

function initialize() {
  var center_coords = gon.center_coords
  var mapOptions = {
    zoom: 10,
    center: new google.maps.LatLng(center_coords[0], center_coords[1])
  };

  var map = new google.maps.Map($('#map-canvas')[0],
      mapOptions);


  var winning_point_coords = gon.winning_point_coords
  var losing_point_coords = gon.losing_point_coords

  var greenPinImage = new google.maps.MarkerImage("http://www.googlemapsmarkers.com/v1/009900/");
  var redPinImage = new google.maps.MarkerImage("http://www.googlemapsmarkers.com/v1/FF0000/");


  for (var i = 0; i < winning_point_coords.length; i++) {
    var latLong = new google.maps.LatLng(winning_point_coords[i][0], winning_point_coords[i][1])
    var marker = new google.maps.Marker({
        position: latLong,
        icon: greenPinImage,
        map: map
    });
    marker.setMap(map);
  }

  for (var i = 0; i < losing_point_coords.length; i++) {
    var latLong = new google.maps.LatLng(losing_point_coords[i][0], losing_point_coords[i][1])
    var marker = new google.maps.Marker({
        position: latLong,
        icon: redPinImage,
        map: map
    });
    marker.setMap(map);
  }

}