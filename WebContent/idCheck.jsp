<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복체크</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"
></script>
<style>
#wrap h2 {
	text-align: center;
	color: #d33b33;
}

.w50p {
	width: 50%;
	height: 30px;
	text-align: center;
}

#chk {
	display: flex;
	justify-content: center;
	align-items: center;
}

.form {
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.btn_bbs {
	display: inline-block;
	width: 70px;
	text-align: center;
	height: 35px;
	font-size: 14px;
	line-height: 35px;
	vertical-align: middle;
	background: #d33b33;
	color: #fff !important;
	border: none;
}

.msg {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}

#checkMsg {
	margin: 20px 0;
}
</style>
<script>

	function pValue() {
		document.getElementById("id").value = opener.document.form.id.value;
	}
	
	function changeValue() {
		console.log(opener.document.form.id.value);
		opener.document.form.id.value = document.getElementById("id").value;
		console.log(opener.document.form.id.value);
	}
	
	function idCheck() {
		const id = document.getElementById("id").value;
		
		if(!id) {
			alert("아이디를 입력하세요");
			return false;
		} else if((id < "0" || id > "9") && (id < "A" || id > "Z") && (id < "a" || id > "z")) {
			alert("한글 및 특수문자는 아이디로 사용할 수 없습니다");
			return false;
		} else {
			location.href = "idCheck.do?id=" + id;
		}
	}
	
	function sendCheckValue() {
		opener.document.form.idCheck.value = "checked";
		opener.document.form.id.value = document.getElementById("id").value;
		
		self.close();
	}
</script>
</head>
<body onload="pValue()">
	<div id="wrap">
		<h2>아이디 중복체크</h2>
		<hr size="1" width="460">
		<div id="chk">
			<form action="idCheck.do" method="post" class="form">
				<label for="id"> 아이디 </label>
				<input type="text" class="w50p" placeholder="아이디를 입력하세요" name="id" id="id" onchange="changeValue()">
				<input type="button" id="clickBtn" value="중복체크" class="btn_bbs" onclick="idCheck()">
			</form>
		</div>
		<div class="msg">
			<div id="checkMsg"></div>
			<input id="useBtn" type="button" value="사용하기" class="btn_bbs center" onclick="sendCheckValue()">
		</div>
	</div>
</body>
</html>