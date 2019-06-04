<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


$("#photo_slider").parent().on("selectstart", function () {
  return false;
});

var photo_slider = PoingSlider.Create({
  selector: "#photo_slider",
  startSlice: 0,

  afterCreate: function () {
    $("#content.detail.photo>.body>.section>.count>span").html("1");
    $("#content.detail.photo>.body>.section>.nav_wrap").on("selectstart", function () {
      return false;
    });
    $("#content.detail.photo>.body>.section>.nav_wrap>.nav>.slice>.i_wrap[data-index=0]").addClass(
    "selected");
    $("#content.detail.photo>.body>.section>.nav_wrap>.nav>.slice").css("left", "-" + (parseInt(0 / 5) *
      395) + "px");

    $("#content.detail.photo>.body>.section>.nav_wrap>.nav>.slice>.i_wrap").on("click", function () {
      var index = $(this).data("index");
      $("#content.detail.photo>.body>.section>.count>span").html(index + 1);
      photo_slider.slideTo(index);
      $("#content.detail.photo>.body>.section>.nav_wrap>.nav>.slice>.i_wrap.selected").removeClass(
        "selected");
      $(this).addClass("selected");
    });

    $("#content.detail.photo>.body>.section>.origin>a[data-index=0]").show();
  },
  afterSlide: function () {
    var index = photo_slider.getCurrentSliceIndex();
    $("#content.detail.photo>.body>.section>.origin>a").hide();
    $("#content.detail.photo>.body>.section>.origin>a[data-index=" + index + "]").show();
    $("#content.detail.photo>.body>.section>.count>span").html(index + 1);
    $("#content.detail.photo>.body>.section>.nav_wrap>.nav>.slice>.i_wrap.selected").removeClass("selected");
    $("#content.detail.photo>.body>.section>.nav_wrap>.nav>.slice>.i_wrap[data-index=" + index + "]")
      .addClass("selected");
    $("#content.detail.photo>.body>.section>.nav_wrap>.nav>.slice").animate({
      left: -(parseInt(index / 5) * 395)
    }, 300);
  }
});

$("#photo_slider~.prev").on("click", function () {
  photo_slider.slideToPrev();
});

$("#photo_slider~.next").on("click", function () {
  photo_slider.slideToNext();
});

$("#content.detail.photo>.body>.section>.nav_wrap>.prev").on("click", function () {
  photo_slider.slideToPrev();
});

$("#content.detail.photo>.body>.section>.nav_wrap>.next").on("click", function () {
  photo_slider.slideToNext();
});

function photoPaging(page) {
  location.search = "photo&page=" + page;
}

new Pagination({
  selector: '#photo_pagination',
  current_page: 1,
  per_page: 10,
  total_page: 0,
  event: photoPaging
});
$(function () {
  $("#banner *").on("selectstart", function () {
    return false;
  });
  $("#banner>.inner_wrap>.inner>.body>.slider_wrap i").on("click", function () {
    var index = $(this).data("index");
    location.search = "photo&slice=" + index;
  });
  $("#banner.product>.inner_wrap>.inner>.header>.favorite>i").click(function () {
    if (poing.account.checkLoginState() == true) {
      var type = 'add';

      if ($(this).hasClass("on"))
        type = "delete";

      $.ajax({
        'url': "/product/favorite",
        'method': 'post',
        'dataType': 'json',
        'data': {
          "id": $(this).parent().data("id"),
          "type": type
        },
        'success': function (res) {
          if (type === "add")
            $.popup("confirm", {
              'text': "티켓을 찜하셨습니다.",
              'alert': true
            });
          else if (type === "delete")
            $.popup("confirm", {
              'text': "찜을 취소하셨습니다.",
              'alert': true
            });
          $("#banner.product>.inner_wrap>.inner>.header>.favorite>i").toggleClass('on');
        }
      });
    }
  });
  $("#banner.product>.inner_wrap>.inner>.body>.dropbox>.items").on("mousewheel", function (e) {
    var dir = (e.originalEvent.detail < 0 || e.originalEvent.wheelDelta > 0) ? '-=' : '+=';
    var dist = 15;

    $(this).scrollTo(dir + dist);

    return false;
  });
  $("#banner.product>.inner_wrap>.inner>.body>.dropbox>.items>li").on("click", function () {
    if ($(this).hasClass('soldout'))
      return;

    $(this).parents(".dropbox").children(".label").children(".text").html($(this).children(".option")
    .text());

    var id = $(this).data('id');
    var min = $(this).data('min');
    var limit = $(this).data('limit');
    var list = $("#banner>.inner_wrap>.inner>.body>.selected");
    var selected = list.children("li");
    for (var i = 0; i < selected.length; ++i) {
      if (selected.eq(i).data('id') == id) {
        i = -1;
        break;
      }
    }
    if (i != -1) {
      var el =
        $("<li>", {
          'data-id': id,
          'data-min': min,
          'data-limit': limit
        })
        .append($("<span>", {
          'class': 'name',
          'text': $(this).find(">.option>span").text()
        }))
        .append($("<span>", {
          'class': 'price',
          'text': $(this).find(">.price").text()
        }))
        .append($("<div>", {
            'class': 'count_box'
          })
          .append($("<input>", {
            'type': 'text',
            'value': min
          }).prop('disabled', true))
          .append($("<button>", {
            'type': 'button',
            'class': 'increase'
          }).append($("<i>")))
          .append($("<button>", {
            'type': 'button',
            'class': 'decrease'
          }).append($("<i>"))))
        .append($("<span>", {
          'class': 'total',
          'text': $(this).find(">.price").text()
        }))
        .append($("<button>", {
          'type': 'button',
          'class': 'delete'
        }))

      list.append(el);

      $.proxy(changeCount, el.find("input"))(0);
    }

    $(this).parent().hide();
    calcOption();
  });
  $("#banner.product .selected").on("click", "li>button", function () {
    $(this).parent().remove();
    calcOption();
  });

  // 수량 컨트롤
  function changeCount(add) {
    var target = $(this).siblings("input");
    var value = Number(target.val());
    var li = $(this).closest("li");

    if (li.data('min') <= value + add && value + add <= li.data('limit'))
      value += add;
    else if (value + add > li.data('limit'))
      noticePopupInit({
        message: '구매 가능한 최대 수량입니다.'
      });

    target.val(value);

    calcOption(li);
  }
  $("#banner.product .selected").on("click", "button.increase", function () {
    $.proxy(changeCount, this)(1);
  });
  $("#banner.product .selected").on("click", "button.decrease", function () {
    $.proxy(changeCount, this)(-1);
  });

  function getNumber(str) {
    return Number(str.replace(/[^0-9]/g, ""));
  }

  function calcOption(e) {
    var list, sum = 0;
    if (e) {
      var count = e.find(".count_box>input").val();
      var price = getNumber(e.children(".price").text());

      sum = count * price;
      e.children(".total").text(sum.toLocaleString() + "원");

      list = e.siblings();
    } else
      list = $("#banner.product>.inner_wrap>.inner>.body>ul>li");

    for (var i = 0; i < list.length; ++i)
      sum += getNumber(list.eq(i).children(".total").text());

    $("#banner.product .summary>.value").text(sum.toLocaleString());
  }
});
$(document).ready(function () {
  var slider = PoingSlider.Create({
    'selector': "#banner #slider",
    'autoSlide': true,
    'slideDuration': 2000,
    'animationDuration': 700
  });
});
(function () {
  var target = $("#left_time>span");
  var end = moment('2019-08-31 18:00:00');

  var calc_time = function (start, end) {
    var diff = end.diff(start, 'seconds');

    var result = {};
    result['days'] = parseInt(diff / 86400);
    diff %= 86400;
    result['hours'] = parseInt(diff / 3600);
    diff %= 3600;
    result['minutes'] = parseInt(diff / 60);
    diff %= 60;
    result['seconds'] = parseInt(diff);

    result['hours'] = result['hours'] < 10 ? '0' + result['hours'] : result['hours'];
    result['minutes'] = result['minutes'] < 10 ? '0' + result['minutes'] : result['minutes'];
    result['seconds'] = result['seconds'] < 10 ? '0' + result['seconds'] : result['seconds'];

    return result;
  };

  setInterval(function () {
    var time = calc_time(moment(), end);
    target.text(time.days + "일 " + time.hours + ":" + time.minutes + ":" + time.seconds);
  }, 1000);
})();
