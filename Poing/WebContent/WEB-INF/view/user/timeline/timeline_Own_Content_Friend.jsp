<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="friends" class="body">
	<div class="search">
		<div class="box">
			<input id="user_search" type="text" class="border_radius soft">
			<i class="icon glass"></i>
			<ul id="user_auto_complete" class="border_radius soft">
				<li class="empty">
					<p>검색 결과가 없습니다.</p>
				</li>
			</ul>
		</div>
		<p>
			친구들과 함께 하면 더 즐거운 포잉!<br>
			맛있는 일상을 공유할 친구들을 찾아보세요!
		</p>
	</div>
</div>

<script>
$(document).ready(function(){
	// select user
	$("#user_search").focus(function() {
		$("#user_auto_complete").show();
	});
	$("#user_search").blur(function(e) {
		$("#user_auto_complete").hide();
	});
	$("#user_auto_complete").on("mousedown", "li:not(.empty)", function(e) {
		$("#user_search").val($(this).children(".name").text());
		location.href = "/timeline/"+$(this).data('id');
	});
	// auto complete
	var prev_request = null;
	$("#user_search").on("keyup", function(){
		if(prev_request) {
			prev_request.abort();
			prev_request = null;
		}
	    
        if($(this).val().length > 0) {    
            prev_request = $.ajax({url: "/user/search/"+$(this).val(),
                    type: "GET",
                    success: function(res) {
                        res = $.parseJSON(res);

                        if(res.meta.keyword == $("#user_search").val())
                        {
                            if(res && res.data && res.data.users) res = res.data.users;
                            else res = [];

                            var list = $("#user_auto_complete").empty().removeClass('scroll');
                            if(res.length > 5) // 5개 이상이면 스크롤 바가 생김
                                list.addClass('scroll');

                            if(res.length > 0) {
                                var el = '';
                                for(var i=0; i<res.length; ++i) {
                                    var e = res[i];
                                    var profile_image = "http://c1.poing.co.kr/original/images/common/default_profile_162.png";
                                    if(e.profile_image && e.profile_image.original.url) profile_image = e.profile_image.original.url;
                                    e.profile_image = profile_image;
                                    e.name = $("<temp>").text(e.web_name).html();
                                    
                                    el += new EJS({url: '/template/friend.ejs'}).render(e);
                                }
                                list.append(el);
                            } else {
                                var li = $("<li>", {'class':'empty'})
                                            .append( $("<p>", {'text':'검색 결과가 없습니다.' }) );
                                list.append(li);
                            }
                        }
                    }
            });
        } else {
            var list = $("#user_auto_complete").empty().removeClass('scroll');
            var li = $("<li>", {'class':'empty'})
                        .append( $("<p>", {'text':'검색 결과가 없습니다.' }) );
            list.append(li); 
        }
	});

	// 친구 찾기
	$("#friends>.link>button").click(function(){
		FB.login(
			function(fbauth)
			{
				FB.api(
					'/v2.4/me/friends?fields=id',
				    function(friends) {
				    	var ids = [];
				    	for(var i=0; i<friends.data.length; ++i) 
		    				ids.push(friends.data[i].id);

				    	function get_friends(result, store) {
				    		if(result && result.paging && result.paging.next) { 
                                $.ajax({'url': result.paging.next,
                                        'context': store,
                                        'async': false,
                                        'success': function(res){
                                            for(var i=0; i<res.data.length; ++i) 
                                                this.push(res.data[i].id);

                                            if(res && res.paging && res.paging.next)
                                                get_friends(res, store);
                                        }
                                    }
                                );
                            }
				    	}
				    	get_friends(friends, ids);
                        
                        if(ids.length > 0) {
                            ids = ids.join(',');
                            $.ajax({
                                'url':'/user/FBfriends',
                                'type':'POST',
                                'data': {'ids':ids},
                                'success':function(res) {
                                    $("#content>.body.facebook").html(res).show();
                                }
                            });
                        } else 
                            noticePopupInit({message:"포잉을 이용하는 페이스북 친구가 없습니다!"});
					}
				);
			},
			{
				scope: 'user_friends'
			}
		);
	});
});
</script>