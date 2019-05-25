<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

var uploader = PoingUploader.Create({
	afterAddFile: function (file) {
		$.ajax({
			url: "/user/uploadprofileimage",
			method: "post",
			dataType: "json",
			data: {
				"image_type": file.file_type,
				"image_data": file.file_data
			},
			success: function (res) {
				if (res.status == true) {
					$("i.profile_image").css("background-image", "url(" + "'data:" + file.file_type + ";base64," +
						file.file_data + "')");
					if (ie < 9) {
						$("i.profile_image").css("filter",
							"progid:DXImageTransform.Microsoft.AlphaImageLoader(src=" + "data:" + file.file_type +
							";base64," + file.file_data + ", sizingMethod='scale')");
						location.reload(true);
					}
					noticePopupInit({
						message: "프로필 이미지가 변경되었습니다."
					});
				} else {
					noticePopupInit({
						message: "프로필 이미지가 업로드가 실패했습니다. 다시 시도해주세요."
					});
				}
			}
		});
	}
});

$("#change_user_image").on("click", function () {
	uploader.addFile();
});
$("#banner.user .level_qna").click(function () {
	$.popup("level_qna");
});
$("#banner.user .name>.point, #banner.user .name>i").click(function () {
	$.popup("point_history");
});
$("#banner .info>button.item").click(function () {
	$.popup("follow", {
		id: '1517256',
		'er': 3,
		'ed': 8
	});
});
