/*$(document).ready(function(){
	$('#map').live('pageshow', function(){
		var mapOptions = {
			zoom: 15,
			center: new google.maps.LatLng(35.71688, 139.770611),
			mapTypeId: google.maps.MapTypeId.ROADMAP
		}

		var map = new google.maps.Map(document.getElementById('map'), mapOptions);
	});
});*/

$(document).ready(function(){
	google.maps.event.addDomListener(window, 'load', function(){
		var mapOptions = {
			zoom: 15,
			center: new google.maps.LatLng(35.71688, 139.770611),
			mapTypeId: google.maps.MapTypeId.ROADMAP
		}

		var map = new google.maps.Map(document.getElementById('map'), mapOptions);
	});
});