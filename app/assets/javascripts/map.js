function initialize() {
  var city_1_id = $("#city-1").attr("city-id");
  var city_2_id = $("#city-2").attr("city-id");

  var success = false;
  // while (!success)
  for (var i = 0; i < 25; i++) {
    var coords;
    $.ajax( "/cities/" + city_1_id + "/random", {
      dataType: "json",
      async: false,
      success: function(response) { coords = response }
    } );

    // var coords = response;
    var sv = new google.maps.StreetViewService();
    var point = new google.maps.LatLng(coords["lat"], coords["long"]);
    sv.getPanoramaByLocation(point, 50, function(data, status){
      console.log(coords);
      if (status == google.maps.StreetViewStatus.OK) {
        var longitude = data.location.latLng.B
        var latitude = data.location.latLng.k
        console.log(latitude + ", " + longitude);
        // success = true;
        // break;
      }
      else {
        console.log("fuck");
      }
    });
  }

  // console.log(coords);

  // var sv = new google.maps.StreetViewService();

  // console.log(coords)





  // var lat1 = parseFloat($("#pano-1").attr("lat"))
  // var long1 = parseFloat($("#pano-1").attr("long"))

  // var fenway = new google.maps.LatLng(lat1, long1);
  // var mapOptions = {
  //   center: fenway,
  //   zoom: 14
  // };
  // var map = new google.maps.Map(
      // document.getElementById('map-canvas'), mapOptions);
  // var panoramaOptions = {
  //   position: fenway,
  //   pov: {
  //     heading: 34,
  //     pitch: 10
  //   }
  // };
  // var panorama = new google.maps.StreetViewPanorama(document.getElementById('pano-1'), panoramaOptions);
  // map.setStreetView(panorama);
}

google.maps.event.addDomListener(window, 'load', initialize);


// test random coords until valid street view
// save as point object
// shovel into matchup
// repeat for city 2

// on document ready, use jquery to add the shit