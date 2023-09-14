import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array,
    marker: Object,
  };

  connect() {
    mapboxgl.accessToken = this.apiKeyValue;
    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v12",
    });

    if (this.hasMarkerValue) {
      this.addMarkerToMap(this.markerValue);
      this.fitMapToMarker(this.markerValue);
    } else {
      this.addMarkersToMap(this.markersValue);
      this.fitMapToMarkers(this.markersValue);
    }
  }

  fitMapToMarkers(markers) {
    const bounds = new mapboxgl.LngLatBounds();
    markers.forEach((marker) => {
      bounds.extend([marker.lng, marker.lat]);
    });
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
  }

  fitMapToMarker(marker) {
    this.map.setCenter([marker.lng, marker.lat]);
    this.map.setZoom(15);
  }

  addMarkersToMap(markers) {
    markers.forEach((marker) => {
      new mapboxgl.Marker().setLngLat([marker.lng, marker.lat]).addTo(this.map);
    });
  }

  addMarkerToMap(marker) {
    new mapboxgl.Marker().setLngLat([marker.lng, marker.lat]).addTo(this.map);
  }
}
