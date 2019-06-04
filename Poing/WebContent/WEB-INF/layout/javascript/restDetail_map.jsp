<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

(function () {
  /* init google map */
  var map_data = null;
  var container = document.getElementById('map');
  var map = new google.maps.Map(container, {
    center: {
      lat: 37.6687384885,
      lng: 126.7749782472
    },
    zoom: 17,

    mapTypeControl: false,
    streetViewControl: false
  });
  var marker = new google.maps.Marker({
    position: new google.maps.LatLng(37.6687384885, 126.7749782472),
    icon: 'http://c1.poing.co.kr/original/images/marker_default.png',
  });

  var infowindow = new google.maps.InfoWindow({
    content: "<div class='inner'>" +
      "<span class='image' style='background-image:url(http://c2.poing.co.kr/PIMAGE-original/MjAxNzAy/148756552458aa72d49aa12.jpeg)'></span>" +
      "<div>" +
      "코주방<br>" +
      "<span>경기도 고양시 일산동구 정발산동 682-7</span>" +
      "</div>" +
      "</div>"
  });

  marker.setMap(map);
  infowindow.open(map, marker);
})();

$("#detail_slider").parent().on("selectstart", function () {
  return false;
});

var detail_slider = PoingSlider.Create({
  selector: "#detail_slider",
  autoSlide: true
});

$("#detail_slider~.prev").on("click", function () {
  detail_slider.slideToPrev();
});

$("#detail_slider~.next").on("click", function () {
  detail_slider.slideToNext();
});

$("#detail_slider>.i_wrap>i").on("click", function () {
  var index = $(this).data("index");
  var query = QueryString();

  if (query["photo"] === "<undefined>") {
    photo_slider.slideTo(index);
  } else {
    location.search = "photo&slice=" + index;
  }
});