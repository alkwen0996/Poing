$.popup = function (p, o, e, t) {
	$("#popup>.guide").load("/popup/" + p, o, function () {
		$("body").addClass("popup_state"),
		$("#popup").css("display", "table").css("opacity", 1),
		$("#popup>.shadow, #popup *[data-close]").one("click", function () {
			$.popup.interval && (clearTimeout($.popup.interval), $("#popup .accept").click(), $.popup.interval = null),
			$("#popup").stop().hide(),
			$("body").removeClass("popup_state")
		}), e && $("#popup .accept").one("click", e), t && $("#popup .deny").one("click", t), $("#popup").trigger("loaded")
	})
}