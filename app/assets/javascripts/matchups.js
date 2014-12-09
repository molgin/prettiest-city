function City(id, which){
  this.id = id;
  this.which = which;
  this.other = ( which === 1 ? 2 : 1 );
  this.counter = 0;

  this.fetchCoordinates();
}

City.prototype.fetchCoordinates = function() {
  $.getJSON("/cities/" + this.id + "/random").success($.proxy(this.coordinatesValid, this));
}

City.prototype.coordinatesValid = function(coordinates){
  var sv = new google.maps.StreetViewService();
  var point = new google.maps.LatLng(coordinates.lat, coordinates.long);
  sv.getPanoramaByLocation(point, 100, $.proxy(this.checkStatus, this));
}

City.prototype.checkStatus = function(data, status){
  if(status === google.maps.StreetViewStatus.OK){
    this.saveCoordinates(data);
    this.loadView();
  }
  else {
    this.counter += 1;
    if (this.counter > 1000) {
      alert("Sorry, something went horribly wrong.");
    }
    else {
      this.fetchCoordinates();
    }
  }
}

City.prototype.saveCoordinates = function(data) {
  var longitude = data.location.latLng.B;
  var latitude = data.location.latLng.k;
  $("#pano-" + this.which).attr("long", longitude);
  $("#pano-" + this.which).attr("lat", latitude);

  $("#view-" + this.which + " input#matchup_winning_coords_lat").val(latitude);
  $("#view-" + this.which + " input#matchup_winning_coords_long").val(longitude);

  $("#view-" + this.other + " input#matchup_losing_coords_lat").val(latitude);
  $("#view-" + this.other + " input#matchup_losing_coords_long").val(longitude);
}

City.prototype.loadView = function() {

  var lat = parseFloat($("#pano-" + this.which).attr("lat"));
  var long = parseFloat($("#pano-" + this.which).attr("long"));

  var point = new google.maps.LatLng(lat, long);
  var mapOptions = {
    center: point,
    zoom: 14
  };

  var map = new google.maps.Map(
      $('#map-canvas-' + this.which)[0], mapOptions);

  var panoramaOptions = {
    position: point,
    pov: {
      heading: 34,
      pitch: 10
    },
    addressControl: false,
    linksControl: false,
    panControl: false,
    zoomControlOptions: {
      style: google.maps.ZoomControlStyle.SMALL
    },
    enableCloseButton: false
  };

  var panorama = new google.maps.StreetViewPanorama($('#pano-' + this.which)[0], panoramaOptions);

  map.setStreetView(panorama);

}


$(function() {
  $("div.city-name").hide();
  enhanceMatchupChooser();
  maybeSwapViews();
  addVoteListener();
  new City($("select#city-1").attr("city-id"), 1);
  new City($("select#city-2").attr("city-id"), 2);
})

function maybeSwapViews() {
  if (Math.floor(Math.random() * 2)) {
    $("section#view-1").before($("section#view-2"));
  }
}

function enhanceMatchupChooser() {
  var $chooser = $("form#matchup-chooser")
  $chooser.find("input.submit").hide();
  var $citySelect = $chooser.find("select");
  $citySelect.change(function(){
    $chooser.submit();
  });
}


function addVoteListener() {
  $("input.btn-primary").click(function(){
    $("div.city-name").show();
  })
}
