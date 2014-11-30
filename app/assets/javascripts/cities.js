$(function() {
  initialize();
})

function initialize() {
  var center_coords = gon.center_coords
  var mapOptions = {
    zoom: 11,
    center: new google.maps.LatLng(center_coords[0], center_coords[1])
  };

  var map = new google.maps.Map($('#map-canvas')[0],
      mapOptions);

  var min_x = gon.min_x
  var max_x = gon.max_x
  var min_y = gon.min_y
  var max_y = gon.max_y

  if (min_x != max_x) {
    var sw = new google.maps.LatLng(min_y, min_x)
    var ne = new google.maps.LatLng(max_y, max_x)
    var mapBounds = new google.maps.LatLngBounds(sw, ne)
    map.fitBounds(mapBounds);
  }

  var winning_points = gon.winning_points
  var losing_points = gon.losing_points

  var greenPinImage = new google.maps.MarkerImage("http://www.googlemapsmarkers.com/v1/009900/");
  var redPinImage = new google.maps.MarkerImage("http://www.googlemapsmarkers.com/v1/FF0000/");

  var infowindow = new google.maps.InfoWindow();

  for (point in winning_points) {
    point = winning_points[point];
    var latLong = new google.maps.LatLng(point.lat, point.long)
    var marker = new google.maps.Marker({
        position: latLong,
        icon: greenPinImage,
        map: map,
        infowindow: point.info_window
    });
    var infowindow = new google.maps.InfoWindow({
      content: point.info_window
    });
    google.maps.event.addListener(marker, 'click', (function(marker, i) {
      return function() {
        infowindow.setContent(this.infowindow);
        infowindow.open(map, this);
      }
    })(marker));
    marker.setMap(map);
  }

  for (point in losing_points) {
    point = losing_points[point];
    var latLong = new google.maps.LatLng(point.lat, point.long)
    var marker = new google.maps.Marker({
        position: latLong,
        icon: redPinImage,
        map: map,
        infowindow: point.info_window
    });
    var infowindow = new google.maps.InfoWindow({
      content: point.info_window
    });
    google.maps.event.addListener(marker, 'click', (function(marker, i) {
      return function() {
        infowindow.setContent(this.infowindow);
        infowindow.open(map, this);
      }
    })(marker));
    marker.setMap(map);
  }

}