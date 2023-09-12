import { Controller } from "@hotwired/stimulus"


// Connects to data-controller="map"
export default class extends Controller {
  static values = {
     apiKey: String,
    markers: Array
    }
  connect() {
    console.log("test",this.markersValue)
    mapboxgl.accessToken = this.apiKeyValue
this.map = new mapboxgl.Map({
container: this.element,
style: 'mapbox://styles/mapbox/streets-v12', // style URL

});

this.#addMarkersToMap()
}

#addMarkersToMap() {
  console.log(this.markersValue)
  this.markersValue.forEach((marker) => {

    new mapboxgl.Marker()
      .setLngLat([ marker.lng, marker.lat ])
      .addTo(this.map)
  })
}
}
