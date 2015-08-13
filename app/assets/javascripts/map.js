$(document).ready(function(){
   var map = new GMaps({
    div: '#map',
    lat: 20,
    lng: 20,
    zoom: 2

  });

map.addMarker({
    lat: 37.774929,
    lng: -122.419416,
    title: 'San Francisco',
    icon: '',
    click: function(e) {
      ;
    },
    infoWindow: {
      content: 'San Francisco, CA, USA'
    
    }
    });

map.addMarker({
    lat: 43.299428,
    lng: -74.217933,
    title: 'New York',
    icon: '',
    infoWindow: {
      content: 'New York, NY, USA'
    
    }
    });

map.addMarker({
    lat: 34.052234,
    lng: -118.243685,
    title: 'Los Angeles',
    icon: '',
    infoWindow: {
      content: 'Los Angeles, CA, USA'
    
    }
    });

map.addMarker({
    lat: 25.761680,
    lng: -80.19179,
    title: 'Miami',
    icon: '',
    infoWindow: {
      content: 'Miami, FL, USA'
    
    }
    });

map.addMarker({
    lat: 47.606209,
    lng: -122.332071,
    title: 'Seattle',
    icon: '',
    infoWindow: {
      content: 'Seattle, WA, USA'
    
    }
    });

map.addMarker({
    lat: 36.169941,
    lng: -115.139830,
    title: 'Las Vegas',
    icon: '',
    infoWindow: {
      content: 'Las Vegas, NV, USA'
    
    }
    });

map.addMarker({
    lat: 52.520007,
    lng: 13.404954,
    title: 'Berlin',
    icon: '',
    infoWindow: {
      content: 'Berlin, Germany'
    
    }
    });

map.addMarker({
    lat: 22.396428,
    lng: 114.109497,
    title: 'Hong Kong',
    icon: '',
    infoWindow: {
      content: 'Hong Kong, China'
    
    }
    });

map.addMarker({
    lat: 35.709026,
    lng: 139.731992,
    title: 'Tokyo',
    icon: '',
    infoWindow: {
      content: 'Tokyo, Japan'
    
    }
    });

map.addMarker({
    lat: -33.917410,
    lng: 151.231307,
    title: 'Sydney',
    icon: '',
    infoWindow: {
      content: 'Sydney, NSW, Australia'
    
    }
    });

map.addMarker({
    lat: 10.818463,
    lng: 106.658825,
    title: 'Ho Chi Minh City',
    icon: '',
    infoWindow: {
      content: 'Ho Chi Minh City, Vietnam'
    
    }
    });

map.addMarker({
    lat: 37.566535,
    lng: 126.977969,
    title: 'Seoul',
    icon: '',
    infoWindow: {
      content: 'Seoul, South Korea'
    
    }
    });





});