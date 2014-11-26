$(function() {
  var coords = gon.coords;
  var point = new google.maps.LatLng(coords[0], coords[1]);
  console.log(coords);

  var mapOptions = {
    center: point,
    zoom: 14
  };

  var map = new google.maps.Map(
      $('#map-canvas')[0], mapOptions);

  var panoramaOptions = {
    position: point,
    pov: {
      heading: 34,
      pitch: 10
    }
  };

  var panorama = new google.maps.StreetViewPanorama($('#pano')[0], panoramaOptions);

  map.setStreetView(panorama);
})