$(document).ready(function(){
   var map = new GMaps({
    div: '#map',
    lat: 20,
    lng: 20,
    zoom: 2,
    panControl: false,
    zoomControl: false,
    mapTypeControl: true,
    scaleControl: false,
    streetViewControl: false,
    overviewMapControl: false,
    navigationControl: false,
    scrollwheel: false,
  });

map.addMarker({
    lat: 37.774929,
    lng: -122.419416,
    title: 'San Francisco',
    icon: '/assets/traveler.png',
    click: function(e) {

    },
    infoWindow: {
      content: '<a href="/cities/1">San Francisco, CA, USA</a>'
    
    }
    });

map.addMarker({
    lat: 43.299428,
    lng: -74.217933,
    title: 'New York',
    icon: '/assets/traveler.png',
    infoWindow: {
      content: '<a href="/cities/2">New York, NY, USA</a>'
    
    }
    });

map.addMarker({
    lat: 34.052234,
    lng: -118.243685,
    title: 'Los Angeles',
    icon: '/assets/traveler.png',
    infoWindow: {
      content: '<a href="/cities/3">Los Angeles, CA, USA</a>'
    
    }
    });

map.addMarker({
    lat: 25.761680,
    lng: -80.19179,
    title: 'Miami',
    icon: '/assets/traveler.png',
    infoWindow: {
      content: '<a href="/cities/4">Miami, FL, USA</a>'
    
    }
    });

map.addMarker({
    lat: 47.606209,
    lng: -122.332071,
    title: 'Seattle',
    icon: '/assets/traveler.png',
    infoWindow: {
      content: '<a href="/cities/5">Seattle, WA, USA</a>'
    
    }
    });

map.addMarker({
    lat: 36.169941,
    lng: -115.139830,
    title: 'Las Vegas',
    icon: '/assets/traveler.png',
    infoWindow: {
      content: '<a href="/cities/6">Las Vegas, NV, USA</a>'
    
    }
    });

map.addMarker({
    lat: 52.520007,
    lng: 13.404954,
    title: 'Berlin',
    icon: '/assets/traveler.png',
    infoWindow: {
      content: '<a href="/cities/7">Berlin, Germany</a>'
    
    }
    });

map.addMarker({
    lat: 22.396428,
    lng: 114.109497,
    title: 'Hong Kong',
    icon: '/assets/traveler.png',
    infoWindow: {
      content: '<a href="/cities/8">Hong Kong, China</a>'
    
    }
    });

map.addMarker({
    lat: 35.709026,
    lng: 139.731992,
    title: 'Tokyo',
    icon: '/assets/traveler.png',
    infoWindow: {
      content: '<a href="/cities/9">Tokyo, Japan</a>'
    
    }
    });

map.addMarker({
    lat: -33.917410,
    lng: 151.231307,
    title: 'Sydney',
    icon: '/assets/traveler.png',
    infoWindow: {
      content: '<a href="/cities/10">Sydney, NSW, Australia</a>'
    
    }
    });

map.addMarker({
    lat: 10.818463,
    lng: 106.658825,
    title: 'Ho Chi Minh City',
    icon: '/assets/traveler.png',
    infoWindow: {
      content: '<a href="/cities/11">Ho Chi Minh City, Vietnam</a>'
    
    }
    });

map.addMarker({
    lat: 37.566535,
    lng: 126.977969,
    title: 'Seoul',
    icon: '/assets/traveler.png',
    infoWindow: {
      content: '<a href="/cities/12">Seoul, South Korea</a>'
    
    }
    });





});