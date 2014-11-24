function City(id){
  this.id = id;
  this.fetchCoordinates();
}

City.prototype.fetchCoordinates = function() {
  $.getJSON("/cities/" + this.id + "/random").success($.proxy(this.coordinatesValid, this));
}

City.prototype.coordinatesValid = function(coordinates){
  var sv = new google.maps.StreetViewService();
  var point = new google.maps.LatLng(coordinates.lat, coordinates.long);
  sv.getPanoramaByLocation(point, 50, $.proxy(this.handleStuff, this));
}

City.prototype.handleStuff = function(data, status){
  if(status === google.maps.StreetViewStatus.OK){
    this.saveCoordinates(data);
    this.loadView();
  }
  else {
    this.fetchCoordinates();
  }
}

City.prototype.saveCoordinates = function(data) {
  var longitude = data.location.latLng.B;
  var latitude = data.location.latLng.k;
  $("#pano-" + this.id).attr("long", longitude);
  $("#pano-" + this.id).attr("lat", latitude);

  $("#view-" + this.id)

  // console.log("done with " + this.id);
}

City.prototype.loadView = function() {
  // debugger;

  var lat = parseFloat($("#pano-" + this.id).attr("lat"));
  var long = parseFloat($("#pano-" + this.id).attr("long"));

  var point = new google.maps.LatLng(lat, long);
  var mapOptions = {
    center: point,
    zoom: 14
  };

  var map = new google.maps.Map(
      $('#map-canvas-' + this.id)[0], mapOptions);

  var panoramaOptions = {
    position: point,
    pov: {
      heading: 34,
      pitch: 10
    }
  };

  var panorama = new google.maps.StreetViewPanorama($('#pano-' + this.id)[0], panoramaOptions);

  map.setStreetView(panorama);

}


$(function() {
  new City($("#city-1").attr("city-id"));
  new City($("#city-2").attr("city-id"));
})
