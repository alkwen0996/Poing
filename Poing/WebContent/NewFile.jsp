<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
$(document).ready(function () {

	  $("form").on("submit", function(event) {
		  $(this).children("input").each(function (index, element){
			  alert($(this).val());
			  if($(this).val()){
				  alert("입력하세요....");
				  event.preventDefault();
				  return false;
			  }
		  });
	});
});
	</script>
</head>
<body>

<form action="">

    <input type="text" />
    <input type="text" />
    <input type="text" />
    <input type="text" />
    <input type="text" />

    <button type="submit">submit</button>
</form>


</body>
</html>