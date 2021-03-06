<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>SsookSsook - Sign Up</title>
	
    <!-- Bootstrap CSS -->
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
      crossorigin="anonymous"
    />
    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500&family=Roboto:wght@500;700;900&display=swap"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/login_join.css" />

    <!-- ScoreDream 폰트 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font.css" />
    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico" />
    
    <!-- JQuery -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    
    <style>
    .id_ok, .email_ok{
	color:#008000;
	display: none;
	}
	
	.id_already, .email_already{
	color:#6A82FB; 
	display: none;
	}
    </style>
  </head>

  <body>
    <div class="container">
      <div class="input-form-backgroud row">
        <div class="input-form col-md-12">
          <a href="main">
            <img src="${pageContext.request.contextPath}/resources/img/core-img/SSSSlogo.png" class="logo" />
          </a>
          <!-- 폼에 method, action 채워야 함! -->
          <form
            class="validation-form ScoreDream400"
            style="align-items: center"
            novalidate
            method='post'
            action='Join'
          >
            <div class="col-md-8 mb-3 margin_center">
              <label for="name">이름</label>
              <input
                type="text"
                class="form-control"
                name="name"
                id="mem_name"
                required
                maxlength="30/"
              />
              <div class="invalid-feedback">이름을 입력해주세요.</div>
            </div>
            <div class="col-md-8 mb-3 margin_center">
              <label for="id">아이디</label>
              <input
                type="text"
                class="form-control"
                name="id"
                id="id"
                required
                maxlength="30"
                oninput = "checkId()"
              />
              <div class="invalid-feedback">아이디를 입력해주세요.</div>
	            <!-- id ajax 중복체크 -->
	  			<span class="id_ok">사용 가능한 아이디입니다.</span>
				<span class="id_already">누군가 이 아이디를 사용하고 있어요.</span>
            </div>
            <div class="col-md-8 mb-3 margin_center">
              <label for="pw">비밀번호</label>
              <input
                type="password"
                class="form-control"
                name="pw"
                id="pw"
                required
                maxlength="30"
              />
            </div>

            <div class="col-md-8 mb-3 margin_center">
              <label for="pwcheck">비밀번호 확인</label>
              <input
                type="password"
                class="form-control"
                name="pwcheck"
                id="pwcheck"
                required
                maxlength="30"
              />
              <div class="invalid-feedback">비밀번호를 입력해주세요.</div>
            </div>

            <div class="col-md-8 mb-3 margin_center">
              <label for="email">이메일</label>
              <input
                type="text"
                class="form-control"
                name="email"
                id="email"
                required
                maxlength="20"
                oninput="checkEmail()"
              />
              <div class="invalid-feedback">이메일을 입력해주세요.</div>
              
              <!-- email ajax 중복체크 -->
              	<font id="checkId" size="2"></font>
				<span class="email_ok">사용가능한 이메일 입니다.</span>
				<span class="email_already">누군가 이 이메일을 사용하고 있어요.</span>
            </div>

            <div class="col-md-8 mb-3 margin_center">
              <label for="tel">연락처</label>
              <input
                type="text"
                class="form-control"
                name="phone"
                id="tel"
                onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"
                required
                maxlength="11"
              />
              <div class="invalid-feedback">연락처를 입력해주세요.</div>
            </div>

            <div class="col-md-8 mb-3 margin_center">
              <label for="address">주소</label>
              <input
                type="text"
                class="form-control , col-3"
                id="sample6_postcode"
                placeholder="우편번호"
                style="margin-bottom: 10px"
                name="Postalcode"
                readonly
              />
              <input
                type="text"
                class="form-control , col-12"
                id="sample6_address"
                placeholder="주소"
                name="addr1"
                readonly
                style="margin-bottom: 10px"
              />
              <input
                type="text"
                class="form-control , col-12"
                id="sample6_detailAddress"
                placeholder="상세주소"
                name="addr2"
                style="margin-bottom: 10px"
              />
              <div class="addr__container">
                <input
                  type="button"
                  class="daumBtn , btn btn-warning"
                  value="우편번호 찾기"
                  onclick="openDaumPostCode()"
                />
              </div>
            </div>
            <hr class="mb-4" style="margin: 20px 0" />
            <div class="custom-control custom-checkbox">
              <input
                type="checkbox"
                class="custom-control-input"
                id="aggrement"
                required
              />
              <label
                class="custom-control-label"
                for="aggrement"
                style="margin-left: 130px; font-size: 13px"
                >개인정보 수집 및 이용에 동의합니다.</label
              >
            </div>
            <div class="mb-4"></div>
            <button
              class="join joinBtn btn btn-warning btn-lg"
              type="submit"
              style="margin: 0 auto"
            >
              가입하기
            </button>
          </form>
        </div>
      </div>
      <footer class="my-3 text-center text-small"></footer>
    </div>
    <script src="${pageContext.request.contextPath}/resources/assets/js/join.js"></script>
    <script>
      window.addEventListener(
        "load",
        () => {
          const forms = document.getElementsByClassName("validation-form");

          Array.prototype.filter.call(forms, (form) => {
            form.addEventListener(
              "submit",
              function (event) {
                if (form.checkValidity() === false) {
                  event.preventDefault();
                  event.stopPropagation();
                }

                form.classList.add("was-validated");
              },
              false
            );
          });
        },
        false
      );
    </script>
    <script>
      function openDaumPostCode() {
        new daum.Postcode({
          oncomplete: function (data) {
            var addr = "";
            var extraAddr = "";
            if (data.userSelectedType === "R") {
              addr = data.roadAddress;
            } else {
              addr = data.jibunAddress;
            }
            if (data.userSelectedType === "R") {
              if (data.bname !== "" && /[동|로|가]$/g.test(data.bname)) {
                extraAddr += data.bname;
              }
              if (data.buildingName !== "" && data.apartment === "Y") {
                extraAddr +=
                  extraAddr !== ""
                    ? ", " + data.buildingName
                    : data.buildingName;
              }
              if (extraAddr !== "") {
                extraAddr = " (" + extraAddr + ")";
              }
              document.getElementById("sample6_detailAddress").value =
                extraAddr;
            } else {
              document.getElementById("sample6_detailAddress").value = "";
            }
            document.getElementById("sample6_postcode").value = data.zonecode;
            document.getElementById("sample6_address").value = addr;
            document.getElementById("sample6_detailAddress").focus();
          },
        }).open();
      }
      
         
      <!-- 아이디 중복체크 -->
      function checkId(){
          var id = $('#id').val(); //id값이 "id"인 입력란의 값을 저장
          $.ajax({
              url:'idCheck', //Controller에서 요청 받을 주소
              type:'post', //POST 방식으로 전달
              data:{id:id},
              success:function(cnt){ //컨트롤러에서 넘어온 cnt값을 받는다 
                  if(cnt == 0){ //cnt가 1이 아니면(=0일 경우) -> 사용 가능한 아이디 
                      $('.id_ok').css("display","inline-block"); 
                      $('.id_already').css("display", "none");
                  } else { // cnt가 1일 경우 -> 이미 존재하는 아이디
                      $('.id_already').css("display","inline-block");
                      $('.id_ok').css("display", "none");
                      alert("아이디를 다시 입력해주세요");
                      $('#id').val('');
                  }
              },
              error:function(){
                  alert("에러입니다");
              }
          });
          };

          
  <!-- 이메일 정규식 체크 --> 
  function EmailCheck(str){                                                 
  	var reg_email = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
  	
  	if(!reg_email.test(str)) {                            
  	return false;         
  	}else {                       
  	return true;         
    }                            
  }

  <!--  이메일 실시간 중복체크 (Ajax) -->
      function checkEmail(){
          var email = $('#email').val(); //email값이 "email"인 입력란의 값을 저장
          
          if(email==""){
    		$('#checkId').html('이메일을 입력 해 주세요.');
  			$("#checkId").attr('color', 'red');
  			$('.email_ok').css("display", "none");
  			$('.email_already').css("display", "none");
  			
    		}else if(!EmailCheck(email)){
    			$('#checkId').html('Example@naver.com 형식에 맞게 입력해 주세요.');
  			$("#checkId").attr('color', 'red');
  			$('.email_ok').css("display", "none");
  			$('.email_already').css("display", "none");
    		
    		
    		}else{
    			$('#checkId').html('');
    		
          $.ajax({
              url:'emailCheck', //Controller에서 요청 받을 주소
              type:'post', //POST 방식으로 전달
              data:{email:email},
              success:function(cnt){ //컨트롤러에서 넘어온 cnt값을 받는다 
                  if(cnt == 0){ //cnt가 1이 아니면(=0일 경우) -> 사용 가능한 아이디 
                      $('.email_ok').css("display","inline-block"); 
                      $('.email_already').css("display", "none");
                  } else { // cnt가 1일 경우 -> 이미 존재하는 아이디
                      $('.email_already').css("display","inline-block");
                      $('.email_ok').css("display", "none");
                      alert("이메일을 다시 입력해주세요");
                      $('#email').val('');
                      
                  }
              },
              error:function(){
                  alert("에러입니다");
              }
          });
    		}
          };
    </script>
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  </body>
</html>
