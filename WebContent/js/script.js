//회원정보 수정 입력검사

function memberModify(){

	if(regForm.id.value == "") {

		alert("id를 입력하시오.");

		regForm.id.focus();

		return;
	} 

	

	if(regForm.pw.value == "") {

		alert("pw 를 입력하시오.");

		regForm.pw.focus();

		return;

	}

	

	if(regForm.pass.value !== regForm.repass.value) {

		alert("비밀번호 불일치!");

		regForm.pass.focus();

		return;

	} 

	// 이름, 이메일, 전화번호 - 정규표현식

	regForm.submit();

}



//회원정보 수정 취소

function memberModifyCancel(){

	location.href = "../index.jsp";

}

function memberDelete(id){

	var deletepass = prompt("비밀번호를 입력하세요");

	post_to_url("delete_member_form.jsp",{'id':id,'pass':deletepass});

}



//javascript에서 post방식으로 데이터 전송 (id/pw 확인용)

function post_to_url(path,params,method){

	method = method||"post";

	

  var form = document.createElement("form");

  form.setAttribute("method", method);

  form.setAttribute("action", path);



  //히든으로 값을 주입시킨다.

  for(var key in params) {

      var hiddenField = document.createElement("input");

      hiddenField.setAttribute("type", "hidden");

      hiddenField.setAttribute("name", key);

      hiddenField.setAttribute("value", params[key]);



      form.appendChild(hiddenField);

  }



  document.body.appendChild(form);

  form.submit();

}





