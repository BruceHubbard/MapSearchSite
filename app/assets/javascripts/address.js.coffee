# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
	mapOptions = {
		center: new google.maps.LatLng(39,-94),
		zoom: 4,
		mapTypeId: google.maps.MapTypeId.ROADMAP
	}
  
	map = new google.maps.Map(document.getElementById("map"),mapOptions)

	mapSearch = new GoogleMapSearch({
		map: map,
		search: (north, south, east, west) ->
			#Instead of just outputting it do something with it here!
			$.ajax({
				url: '/address/search',
				data: {north: north, south: south, east: east, west: west},
				success: (data) ->
					console.log(data)
			})
			
	})

