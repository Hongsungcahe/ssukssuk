<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="description" content="" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>SsookSsook - Customer Service</title>

    <!-- Favicon -->
    <link rel="icon" href="${pageContext.request.contextPath}/resources/img/core-img/favicon.ico" />

    <!-- Core Stylesheet -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/style.css" />
    
  </head>

  <body>
    <!-- Preloader -->
    <div class="preloader d-flex align-items-center justify-content-center">
      <div class="preloader-circle"></div>
      <div class="preloader-img">
        <img src="${pageContext.request.contextPath}/resources/img/core-img/leaf.png" alt="" />
      </div>
    </div>

    <!-- ##### Header Area Start ##### -->
    <header class="header-area">
      <!-- ***** Top Header Area ***** -->
      <div class="top-header-area">
        <div class="container">
          <div class="row">
            <div class="col-12">
              <div
                class="top-header-content d-flex align-items-center justify-content-end"
              >
                <!-- Top Header Content -->
                <div class="top-header-meta d-flex" style="float: left">
                  <!-- Language Dropdown -->
                  <div class="language-dropdown">
                    <div class="dropdown">
                      <button
                        class="btn btn-secondary dropdown-toggle mr-30"
                        type="button"
                        id="dropdownMenuButton"
                        data-toggle="dropdown"
                        aria-haspopup="true"
                        aria-expanded="false"
                      >
                        Language
                      </button>
                      <div
                        class="dropdown-menu"
                        aria-labelledby="dropdownMenuButton"
                      >
                        <a class="dropdown-item" href="#">?????????</a>
                        <a class="dropdown-item" href="#">?????????</a>
                        <a class="dropdown-item" href="#">?????????</a>
                      </div>
                    </div>
                  </div>
                  <!-- Login -->
                  <div class="login">
                    <a href="LoginForm"
                      ><i class="fa fa-user" aria-hidden="true"></i>
                      <span>Log in</span></a
                    >
                  </div>
                  <!-- Sign Up -->
                  <div class="Sign Up">
                    <a href="JoinForm"
                      ><i class="fa fa-sign-in" aria-hidden="true"></i>
                      <span>Sign Up</span></a
                    >
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- ***** Navbar Area ***** -->
      <div class="alazea-main-menu">
        <div class="classy-nav-container breakpoint-off">
          <div class="container">
            <!-- Menu -->
            <nav class="classy-navbar justify-content-between" id="alazeaNav">
              <!-- Nav Brand -->
              <a href="main" class="nav-brand"
                ><img src="${pageContext.request.contextPath}/resources/img/core-img/SSSSlogo.png" alt=""
              /></a>

              <!-- Navbar Toggler -->
              <div class="classy-navbar-toggler">
                <span class="navbarToggler"
                  ><span></span><span></span><span></span
                ></span>
              </div>

              <!-- Menu -->
              <div class="classy-menu">
                <!-- Close Button -->
                <div class="classycloseIcon">
                  <div class="cross-wrap">
                    <span class="top"></span><span class="bottom"></span>
                  </div>
                </div>

                <!-- Navbar Start -->
                <div class="classynav">
                  <ul style="font-family: SBAggroL">
                    <li><a href="main">Home</a></li>
                    <li><a href="About">?????? ??????</a></li>
                    <li><a href="Purchase">?????? ??????</a></li>
                    <li><a href="Service">????????????</a></li>
                    <li><a href="Contact">A/S</a></li>
                  </ul>

                  <!-- Search Icon -->
                  <div id="searchIcon">
                    <i class="fa fa-search" aria-hidden="true"></i>
                  </div>
                </div>
                <!-- Navbar End -->
              </div>
            </nav>

            <!-- Search Form -->
            <div class="search-form">
              <form action="#" method="get">
                <input
                  type="search"
                  name="search"
                  id="search"
                  placeholder="Type keywords &amp; press enter..."
                />
                <button type="submit" class="d-none"></button>
              </form>
              <!-- Close Icon -->
              <div class="closeIcon">
                <i class="fa fa-times" aria-hidden="true"></i>
              </div>
            </div>
          </div>
        </div>
      </div>
    </header>
    <!-- ##### Header Area End ##### -->

    <div class="breadcrumb-area">
      <!-- Top Breadcrumb Area -->
      <div
        class="top-breadcrumb-area bg-img bg-overlay d-flex align-items-center justify-content-center"
        style="background-image: url(${pageContext.request.contextPath}/resources/img/bg-img/main4.png)"
      >
        <h2>?????? ??????</h2>
      </div>

      <div class="container">
        <div class="row">
          <div class="col-12">
            <nav aria-label="breadcrumb">
              <ol class="breadcrumb">
                <li class="breadcrumb-item">
                  <a href="#"><i class="fa fa-home"></i> Home</a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">
                  ?????? ??????
                </li>
                
              </ol>
            </nav>
          </div>
        </div>
      </div>
    </div>
    <!-- ##### Breadcrumb Area End ##### -->
    <div class="container" style="margin-bottom: 50px;">
           <!-- Write Main -->
           <section class="checkout spad">
            <div class="container">
              <div class="checkout__form ">
                <form name="insertform" action="" method="post">
                  <input type="hidden" name="command" value="qnaInsert"> 
                  <input type="hidden" name="writer" value="">

                  
                  <div class="row" ">
                    <div class="col-lg-12 col-md-6">
                     <br><br>
                      <div class="board-view row">
                        
                        <div class="col-lg-12">
                          <div class="checkout__input">
                            <header class="view_main" >
                              <h2>${Qna_Content.title } </h2>
                              <p>????????? : ${Qna_Content.writer } </p>
                            </header>

                          <hr style="margin-top:0;">
                              <div class="board-content">${Qna_Content.content }</div>
                          <hr/>
                          </div> 
                        </div>
                                    
                      <div id="board-view-list"class="col-12 input-div" style = "padding: 20px 0px 0px 10px;">
                        <div class="checkout__input_2" >
                          <section class="main accent2" style="padding:3%">
                            <header class="board-reply">
                                <h2>Comments</h2>
                                
                            </header>
                            
                            <!-- ????????? ?????? ????????? ????????? ?????? ???????????? -->
                            <c:if test="${ReplyCount == '0'}">
                            <!-- ?????? ???????????? -->
                            <form id="commentInsertForm" method="post" action="#" class="combined" style="width:100%;">
                                <textarea name="content" id=r_content placeholder="???????????? ??? ?????? ??????????????????." class="col-12 invert text-area-style" rows="5" style="border-radius:0; resize:none;"></textarea>
                                <div style="display: flex;">
                                  <button type="button" id="btnReply" class="btn btn-write btn-outline-success" style="margin: 0 auto;">
                                    ?????? ??????
                                  </button>
                            </form>
                            </c:if>
                            
                            <!-- ?????? ???????????? -->
                            <form id="commentListForm" name="commentListForm" class="combined" style="flex-direction:column; margin:0; display:contents;">
                            	<div id="commentList">
                            	
                            	</div>
                            </form>
                        </section>
                      </div>
                          </div>
                          <div class="col-12">
                            <ul class="actions" style="display:flex; justify-content:flex-end;">
                            		<li><input type="button" value="??????" class="btn btn-write btn-outline-success" onclick="location.href='helpQnA'"/></li>
                                    <li><input type="button" value="??????" class="btn btn-write btn-outline-success" onclick="location.href='QnaUpdateForm?idx=${Qna_Content.idx}'"/></li>
                                    <li><input type="button" value="??????" class="btn btn-write btn-outline-success" onclick="location.href='QnaDelete?idx=${Qna_Content.idx}'"/></li>
                                
                            </ul>
                        </div>
                        </div>
                      <br>
                                       
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </section>
    </div>
  </div>
    <!-- ##### Footer Area Start ##### -->
    <footer class="footer-area bg-img" style="background-color: #313b2b">
      <!-- Main Footer Area -->
      <div class="main-footer-area">
        <div class="container">
          <div class="row">
            <!-- Single Footer Widget -->
            <div class="col-12 col-sm-6 col-lg-3">
              <div class="single-footer-widget">
                <div class="footer-logo mb-30">
                  <a href="#"
                    ><img src="${pageContext.request.contextPath}/resources/img/core-img/SSSSlogo.png" alt=""
                  /></a>
                </div>
                <p>
                  Lorem ipsum dolor sit samet, consectetur adipiscing elit.
                  India situs atione mantor
                </p>
                <div class="social-info">
                  <a href="#"
                    ><i class="fa fa-facebook" aria-hidden="true"></i
                  ></a>
                  <a href="#"
                    ><i class="fa fa-twitter" aria-hidden="true"></i
                  ></a>
                  <a href="#"
                    ><i class="fa fa-google-plus" aria-hidden="true"></i
                  ></a>
                  <a href="#"
                    ><i class="fa fa-instagram" aria-hidden="true"></i
                  ></a>
                  <a href="#"
                    ><i class="fa fa-linkedin" aria-hidden="true"></i
                  ></a>
                </div>
              </div>
            </div>

            <!-- Single Footer Widget -->
            <div class="col-12 col-sm-6 col-lg-3">
              <div class="single-footer-widget">
                <div class="widget-title">
                  <h5>QUICK LINK</h5>
                </div>
                <nav class="widget-nav">
                  <ul>
                    <li><a href="#">Purchase</a></li>
                    <li><a href="#">FAQs</a></li>
                    <li><a href="#">Payment</a></li>
                    <li><a href="#">Review</a></li>
                    <li><a href="#">Return</a></li>
                    <li><a href="#">Advertise</a></li>
                    <li><a href="#">BulkOrder</a></li>
                    <li><a href="#">About</a></li>
                    <li><a href="#">Application</a></li>
                    <li><a href="#">Contact</a></li>
                  </ul>
                </nav>
              </div>
            </div>

            <!-- Single Footer Widget -->
            <div class="col-12 col-sm-6 col-lg-3">
              <div class="single-footer-widget">
                <div class="widget-title">
                  <h5>STORE</h5>
                </div>

                <!-- Single Best Seller Products -->
                <div
                  class="single-best-seller-product d-flex align-items-center"
                >
                  <div class="product-thumbnail">
                    <a href="shop-details.html"
                      ><img src="${pageContext.request.contextPath}/resources/img/bg-img/apple1.png" alt=""
                    /></a>
                  </div>
                  <div class="product-info">
                    <a href="shop-details.html">???????????? 2??????</a>
                    <p>??????????????? ?????? ????????? <br />???????????? 43</p>
                  </div>
                </div>

                <!-- Single Best Seller Products -->
                <div
                  class="single-best-seller-product d-flex align-items-center"
                >
                  <div class="product-thumbnail">
                    <a href="shop-details.html"
                      ><img src="${pageContext.request.contextPath}/resources/img/bg-img/apple.png" alt=""
                    /></a>
                  </div>
                  <div class="product-info">
                    <a href="shop-details.html">?????? 3??????</a>
                    <p>
                      ?????? ?????? ???????????? 2??? 9-1<br />
                      ???????????????
                    </p>
                  </div>
                </div>
              </div>
            </div>

            <!-- Single Footer Widget -->
            <div class="col-12 col-sm-6 col-lg-3">
              <div class="single-footer-widget">
                <div class="widget-title">
                  <h5>CONTACT</h5>
                </div>

                <div class="contact-information">
                  <p><span>Address:</span> ??????????????? ?????? ????????? 31-15 4???</p>
                  <p><span>tel:</span> 062-655-3510</p>
                  <p><span>fax:</span> 062-655-3511</p>
                  <p><span>Email:</span> info.ssookssook@gmail.com</p>
                  <p><span>Open hours:</span> Mon - Sun: 8 AM to 9 PM</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Footer Bottom Area -->
      <div class="footer-bottom-area">
        <div class="container">
          <div class="row">
            <div class="col-12">
              <div class="border-line"></div>
            </div>
            <!-- Copywrite Text -->
            <div class="col-12 col-md-6">
              <div class="copywrite-text">
                <p>
                  &copy; Copyright &copy;
                  <script>
                    document.write(new Date().getFullYear());
                  </script>
                  All rights reserved |
                  <i class="fa fa-heart-o" aria-hidden="true"></i> by
                  <a href="#" target="_blank">SsookSsook</a>
                </p>
              </div>
            </div>
            <!-- Footer Nav -->
            <div class="col-12 col-md-6">
              <div class="footer-nav">
                <nav>
                  <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">About</a></li>
                    <li><a href="#">Purchase</a></li>
                    <li><a href="#"> Service center</a></li>
                    <li><a href="#">A/S</a></li>
                  </ul>
                </nav>
              </div>
            </div>
          </div>
        </div>
      </div>
    </footer>
    <!-- ##### Footer Area End ##### -->

    <!-- ##### All Javascript Files ##### -->
    <!-- jQuery-2.2.4 js -->
    
    <script src="${pageContext.request.contextPath}/resources/js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="${pageContext.request.contextPath}/resources/js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="${pageContext.request.contextPath}/resources/js/active.js"></script>
      
      
  
    <script>
    
    $(document).ready(function(){
    	getCommentList()
    	console.log('test')
 	})
 	
 	<!-- ????????? ???????????? --> 
    $("#btnReply").click(function(){
        
    var reply_content = $("#r_content").val();    //????????? ??????
    var qna_idx =  "${Qna_Content.idx}";   //?????? ??????
    var params = {"reply_content" : reply_content, "qna_idx" : qna_idx};
    
    
    $.ajax({
        type: "post", //???????????? ?????? ??????
        url: "Reply_Insert", //???????????? ?????? url
        dataType : "json",
        data: params, //?????? ?????????
        success: function(data){//???????????? ????????? ?????? ???????????? ??? ???????????? ?????????
        	
            alert("????????? ?????????????????????.");
        	location.reload();
            
        	} 
    	});
});
    
    <!-- ????????? ?????? ???????????? -->
    function getCommentList(){
    	
    	var qna_idx = "${Qna_Content.idx}";
    	console.log(qna_idx);
        
        $.ajax({
            type:'post',
            url : "Reply_Select",
            dataType : "json",
            data: {"qna_idx" : qna_idx},
            contentType: "application/x-www-form-urlencoded; charset=UTF-8", 
            success : function(data){
                
                var html = "";
                
                /* ????????? ????????? */
                console.log(data)
                if(data != null){
                       html+=data.reply_content
                       console.log(html)
                    }
                    
                $("#commentList").html(html);
            },
            error:function(request,status,error){
                
           }
            
        });
    }
    
    
    
      </script>
      
  </body>
</html>
