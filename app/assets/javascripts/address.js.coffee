# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
	addressTpl = Handlebars.compile($('#address-tmpl').html())

	mapOptions = {
		center: new google.maps.LatLng(39,-94),
		zoom: 4,
		mapTypeId: google.maps.MapTypeId.ROADMAP
	}
  
	map = new google.maps.Map(document.getElementById("map"),mapOptions)

	markers = new Array()

	mapSearch = new GoogleMapSearch({
		map: map,
		search: (north, south, east, west) ->
			#Instead of just outputting it do something with it here!
			$.ajax({
				url: '/address/search',
				data: {north: north, south: south, east: east, west: west},
				success: (data) ->
					console.log(data)

					showMarkers(data)

					html = addressTpl({addresses: data})
					$('#listing .addresses').html(html)
			})
	})

	showMarkers = (addresses) ->
		map.clearMarkers()
		markers = new Array()

		for address in addresses
			marker = new google.maps.Marker({
				map:map,
				position: new google.maps.LatLng(address.latitude,address.longitude)})
			markers.push(marker)


	google.maps.Map.prototype.clearMarkers = () ->
    	for marker in markers
        	marker.setMap(null);

