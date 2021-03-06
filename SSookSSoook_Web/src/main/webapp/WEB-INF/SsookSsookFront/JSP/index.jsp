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
    <title>SsookSsook</title>

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
        <img src="${pageContext.request.contextPath}/resources/img/core-img/SSSSlogo.png" alt="" />
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
                  
                 <div>
                 	<c:if test="${!empty LoginVo}">
              		<label class="label_name">${LoginVo.name }??? ???????????????.</label>&nbsp&nbsp
                 </div>
                
                 <!-- ???????????? ??????  -->
                  <div class="Sign Up">
                    <a href="EditProfile?id=${LoginVo.id }"
                      ><i class="fa fa-pencil-square" aria-hidden="true"></i>
                      <span>Edit Profile</span></a
                    >
                  </div>
					  
					  <div class="Sign Up">
		                    <a href="https://kauth.kakao.com/oauth/logout?client_id=e3eced6c366d05e611468e218fc8f42d&logout_redirect_uri=http://211.227.224.199:8081/SS/LogOut"
		                      ><i class="fa fa-sign-out" aria-hidden="true"></i>
		                      <span>Log out</span></a>
		               </div>
                 
                 </c:if>
                 
                 <c:if test="${empty LoginVo}">
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
                  
				 </c:if>

                 
                </div> <!-- TOP -->
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
                    <li><a href="helpQnA?id=${LoginVo.id }">????????????</a></li>
                    <li><a href="Contact">A/S </a></li>

                    <!--  ??????????????? ???????????? ????????? ?????? -->
	                <c:if test='${LoginVo.admin_yn == "Y"}'>

                    <li>
                      <a href="#">?????? ??????</a>
                      <ul class="dropdown">
                        <li><a href="member_Manage">?????? ??????</a></li>
                        <li><a href="Sales_Manage">?????? ??????</a></li>
                      </ul>
                    </li>
                  </ul>
                   </c:if>

                  <!-- Search Icon -->
	                  <li>
		                  <div id="searchIcon">
		                    <i class="fa fa-search" aria-hidden="true"></i>
		                  </div>
	                  </li>

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

    <!-- ##### Hero Area Start ##### -->
    <section class="hero-area">
      <div class="hero-post-slides owl-carousel">
        <!-- Single Hero Post -->
        <div class="single-hero-post bg-overlay">
          <!-- Post Image -->
          <div
            class="slide-img bg-img"
            style="background-image: url(${pageContext.request.contextPath}/resources/img/bg-img/img1.png)"
          ></div>
          <div class="container h-100">
            <div class="row h-100 align-items-center">
              <div class="col-12">
                <!-- Post Content -->
                <div class="hero-slides-content text-center">
                  <h1 id="title" style="font-size: 55px; text-align: left;">
                    ???????????? ?????? ?????????<br>
                    ????????? ?????? ?????? ????????????? 
                  </h1>
                  <p class="sub_title" style="font-size: 17px;">
                    ????????? ????????? ??? ?????? ????????? ???????????? ???????????? ???????????? ????????? ?????? ???????????? ???????????? ????????? ???????????????. <br>
                    ????????? ?????? ?????? ??????????????? ??????????????? ?????? ????????? ?????? ???????????? ????????? ???????????????. 
                  </p>
                  <div class="more welcome-btn-group">
                    <a href="#" class="btn alazea-btn active">??? ????????????</a>
                  </div>
                </div>
              </div>
            </div>
            <div class="sub-carousel">
              <ul>
                <li class="active"></li>
                <li class=""></li>
                <li class=""></li>
              </ul>
            </div>
          </div>
        </div>

        <!-- Single Hero Post -->
        <div class="single-hero-post bg-overlay">
          <!-- Post Image -->
          <div
            class="slide-img bg-img"
            style="background-image: url(${pageContext.request.contextPath}/resources/img/bg-img/img2.png)"
          ></div>
          <div class="container h-100">
            <div class="row h-100 align-items-center">
              <div class="col-12">
                <!-- Post Content -->
                <div class="hero-slides-content text-center">
                  <h1 id="title" style="font-size: 55px; text-align: left;">
                    ?????? ???????????? ??????<br>
                    ?????? ???????????? ?????????????
                  </h1>
                  <p class="sub_title" style="font-size: 17px;">
                    ?????? ?????? ????????? ?????? ????????? ?????? ?????? ?????? ????????? ?????? ?????? ???????????? ??????????????? ???????????????. <br> ????????? ?????? ?????? ????????? ???????????? ?????? ????????? ???????????? ??? ?????? ????????????.<br> ????????? ??????????????? ?????? ????????? ????????? ????????? ?????? ???????????? ?????? ???????????? ????????? ???????????????.
                  </p>
                  <div class="more welcome-btn-group">
                    <a href="#" class="btn alazea-btn active">??? ????????????</a>
                  </div>
                </div>
              </div>
            </div>
            <div class="sub-carousel">
              <ul>
                <li class=""></li>
                <li class="active"></li>
                <li class=""></li>
              </ul>
            </div>
          </div>
        </div>

        <!-- Single Hero Post -->
        <div class="single-hero-post bg-overlay">
          <!-- Post Image -->
          <div
            class="slide-img bg-img"
            style="background-image: url(${pageContext.request.contextPath}/resources/img/bg-img/img3.png)"
          ></div>
          <div class="container h-100">
            <div class="row h-100 align-items-center">
              <div class="col-12">
                <!-- Post Content -->
                <div class="hero-slides-content text-center">
                  <h2 id="title" style="font-size: 55px; text-align: left;">
                    ?????? ???????????? ???????????????, <br>
                    ????????? ?????? ???????????????
                  </h2>
                  <p class="sub_title" style="font-size: 17px;">
                    ?????? ?????? ????????? ????????? ?????? ????????? ????????? ??? ????????????. <br> ????????? ????????? ?????? ????????? ?????? ?????? ????????? ????????? ?????? ????????????.<br>
                    ????????? ?????? ????????? ?????? ?????? ?????? ???????????? ????????? ???????????? ???????????? ???????????????.
                  </p>
                  <div class="more welcome-btn-group">
                    <a href="#" class="btn alazea-btn active">??? ????????????</a>
                  </div>
                </div>
              </div>
              <div class="multiple-items"></div>
            </div>
          </div>
          <div class="sub-carousel">
            <ul>
              <li class=""></li>
              <li class=""></li>
              <li class="active"></li>
            </ul>
          </div>
        </div>
      </div>
    </section>
    <!-- ##### Hero Area End ##### -->

    <!-- ##### Service Area Start ##### -->
    <section class="our-services-area bg-gray section-padding-100-0">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <!-- Section Heading -->
            <div class="section-heading text-center">
              <h2>
                ????????? ?????? ??????
              </h2>
              <p style="font-size: small">????????? ?????? ???????????? ?????? ????????? ????????????</p>
            </div>
          </div>
        </div>

        <div class="row justify-content-between">
          <div class="col-12 col-lg-5">
            <div class="alazea-service-area mb-100">
              <!-- Single Service Area -->
              <div
                class="single-service-area d-flex align-items-center wow fadeInUp"
                data-wow-delay="100ms"
              >
                <!-- Icon -->
                <div class="service-icon mr-30">
                  <img src="${pageContext.request.contextPath}/resources/img/core-img/waterdrop.png" alt="" />
                </div>
                <!-- Content -->
                <div class="service-content">
                  <h5 class="explain_title">Automatic Watering</h5>
                  <p style="font-family: S-CoreDream-3Light;
                  font-size: 14px;">
                    ????????? ?????? ?????? ????????? ?????? ????????? ????????? ????????? ???????????? ?????? ??? ?????? ????????? ?????? ?????? ???????????????. ?????? ????????? ????????? ????????? ????????? ????????? ???????????????.
                  </p>
                </div>
              </div>

              <!-- Single Service Area -->
              <div
                class="single-service-area d-flex align-items-center wow fadeInUp"
                data-wow-delay="300ms"
              >
                <!-- Icon -->
                <div class="service-icon mr-30">
                  <img src="${pageContext.request.contextPath}/resources/img/core-img/check.png" alt="" />
                </div>
                <!-- Content -->
                <div class="service-content">
                  <h5 class="explain_title">Check Status</h5>
                  <p style="font-family: S-CoreDream-3Light;
                  font-size: 14px;">
                    ?????? ????????? ????????? ?????? ??? ??????! ????????? ????????? ????????? ?????? ????????? ????????? ????????? ?????? ???????????? ????????? ????????? ???????????????.
                  </p>
                </div>
              </div>

              <!-- Single Service Area -->
              <div
                class="single-service-area d-flex align-items-center wow fadeInUp"
                data-wow-delay="500ms"
              >
                <!-- Icon -->
                <div class="service-icon mr-30">
                  <img src="${pageContext.request.contextPath}/resources/img/core-img/talk.png" alt="" />
                </div>
                <!-- Content -->
                <div class="service-content">
                  <h5 class="explain_title">Communicate with other users</h5>
                  <p style="font-family: S-CoreDream-3Light;
                  font-size: 14px;">
                    ????????? '????????????'?????? ??????????????????. ????????? ???????????? ???????????? ????????? ?????? ?????? ??????????????? 5????????? ?????? ??? ?????? ????????????! ?????? ????????? ?????????? 
                  </p>
                </div>
              </div>
            </div>
          </div>

          <div class="col-12 col-lg-6">
            <div class="alazea-video-area bg-overlay mb-100">
              <img src="${pageContext.request.contextPath}/resources/img/bg-img/video.jpeg" alt="" >
              <a
                href="https://www.youtube.com/watch?v=OvioeS1ZZ7o"
                class="video-icon"
              >
                <i class="fa fa-play" aria-hidden="true"></i>
              </a>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- ##### Service Area End ##### -->

    <!-- ##### About Area Start ##### -->
    <section class="about-us-area section-padding-100-0">
      <div class="container">
        <div class="row justify-content-between">
          <div class="col-12 col-lg-5">
            <!-- Section Heading -->
            <div class="section-heading">
              <h2 style="margin-top: 40px;">ABOUT SsookSsook</h2>
              <p>????????? ????????? ????????? ?????? ????????? ???????????? <br>?????? ?????? ??????????????????.</p>
            </div>

            <!-- Progress Bar Content Area -->
            <div class="alazea-progress-bar mb-50" style="padding-top: 40px;">
              <!-- Single Progress Bar -->
              <div class="single_progress_bar">
                <p>????????????</p>
                <div id="bar1" class="barfiller">
                  <div class="tipWrap">
                    <span class="tip"></span>
                  </div>
                  <span class="fill" data-percentage="92"></span>
                </div>
              </div>
              <!-- Single Progress Bar -->
              <div class="single_progress_bar">
                <p>?????? ?????????</p>
                <div id="bar2" class="barfiller">
                  <div class="tipWrap">
                    <span class="tip"></span>
                  </div>
                  <span class="fill" data-percentage="78"></span>
                </div>
              </div>
              <!-- Single Progress Bar -->
              <div class="single_progress_bar">
                <p>?????? ?????????</p>
                <div id="bar3" class="barfiller">
                  <div class="tipWrap">
                    <span class="tip"></span>
                  </div>
                  <span class="fill" data-percentage="85"></span>
                </div>
              </div>
              <!-- Single Progress Bar -->
              <div class="single_progress_bar">
                <p>?????? ?????? ?????? ?????????</p>
                <div id="bar4" class="barfiller">
                  <div class="tipWrap">
                    <span class="tip"></span>
                  </div>
                  <span class="fill" data-percentage="96"></span>
                </div>
              </div>
            </div>
          </div>

          <div class="col-12 col-lg-6">
            <div class="alazea-benefits-area">
              <div class="row">
                <!-- Single Benefits Area -->
                <div class="col-12 col-sm-6">
                  <div class="single-benefits-area">
                    <img src="${pageContext.request.contextPath}/resources/img/core-img/deli.png" alt="" />
                    <h5 class="merit">?????? ??????</h5>
                    <p style="font-size: 13px;">
                      ?????? 4??? ????????? ??????????????? ?????? ????????? ?????? ????????? ????????? ?????? ?????? ????????? ?????? ????????? ????????? ????????? ????????????.
                    </p>
                  </div>
                </div>

                <!-- Single Benefits Area -->
                <div class="col-12 col-sm-6">
                  <div class="single-benefits-area">
                    <img src=" ${pageContext.request.contextPath}/resources/img/core-img/qna.png" alt="" />
                    <h5 class="merit">365??? ?????? ??????</h5>
                    <p style="font-size: 13px;">
                      ????????? ?????? ????????????. ???????????? ?????? 10????????? ?????? 6????????? ??????????????? ????????? ??????????????? ?????? ???????????? ????????????.
                    </p>
                  </div>
                </div>

                <!-- Single Benefits Area -->
                <div class="col-12 col-sm-6">
                  <div class="single-benefits-area">
                    <img src=" ${pageContext.request.contextPath}/resources/img/core-img/product.png" alt="" />
                    <h5 class="merit">100% ?????? ??????</h5>
                    <p style="font-size: 13px;">
                      ??????????????? ????????? ?????? ?????????????????? ?????? ????????? ???????????????. ???????????? ?????? ?????? ?????? ??? ?????? ????????? ??? ???????????????.
                    </p>
                  </div>
                </div>

                <!-- Single Benefits Area -->
                <div class="col-12 col-sm-6">
                  <div class="single-benefits-area">
                    <img src=" ${pageContext.request.contextPath}/resources/img/core-img/repair.png" alt="" />
                    <h5 class="merit">1??? ?????? ?????? A/S</h5>
                    <p style="font-size: 13px;">
                      ?????? ?????? ??? 1??? ?????? ?????? ?????? ??? ????????? ?????? A/S ???????????????. 
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="container">
        <div class="row">
          <div class="col-12">
            <div class="border-line"></div>
          </div>
        </div>
      </div>
    </section>
    <!-- ##### About Area End ##### -->



    <!-- ##### Product Area Start ##### --> 
    <section class="new-arrivals-products-area bg-gray section-padding-100">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <!-- Section Heading -->
            <div class="section-heading text-center">
              <h2>????????? ??????</h2>
              <p style="font-size: 14px;">????????? ?????????????????? ????????? ????????? ???????????? ??? ?????? ?????? ?????? ??????????????????.<br>
                (????????? ???????????? ?????? ??? ??? ????????????.)
              </p>
            </div>
          </div>
        </div>

        <div class="row">
          <!-- Single Product Area -->
          <div class="col-12 col-sm-6 col-lg-3">
            <div
              class="single-product-area mb-50 wow fadeInUp"
              data-wow-delay="100ms"
            >
              <!-- Product Image -->
              <div class="product-img">
                <a href="shop-details.html"
                  ><img src=" ${pageContext.request.contextPath}/resources/img/core-img/poster1.png" alt=""
                /></a>
                <!-- Product Tag -->
                <div class="product-tag">
                  <a href="#">Hot</a>
                </div>
                <div class="product-meta d-flex">
                  <a href="#" class="wishlist-btn"
                    ><i class="icon_heart_alt"></i
                  ></a>
                </div>
              </div>
              <!-- Product Info -->
              <div class="product-info mt-15 text-center">
                <a href="shop-details.html">
                  <p>2022.03.20 ~ 2022.03.22</p>
                </a>
                <h6>?????? ???????????? ?????????</h6>
              </div>
            </div>
          </div>

          <!-- Single Product Area -->
          <div class="col-12 col-sm-6 col-lg-3">
            <div
              class="single-product-area mb-50 wow fadeInUp"
              data-wow-delay="200ms"
            >
              <!-- Product Image -->
              <div class="product-img">
                <a href="shop-details.html"
                  ><img src=" ${pageContext.request.contextPath}/resources/img/core-img/poster2.png" alt=""
                /></a>
                <div class="product-meta d-flex">
                  <a href="#" class="wishlist-btn"
                    ><i class="icon_heart_alt"></i
                  ></a>
                </div>
              </div>
              <!-- Product Info -->
              <div class="product-info mt-15 text-center">
                <a href="shop-details.html">
                  <p>2022.03.25 ~ 2022.03.27</p>
                </a>
                <h6>?????????????????? ?????? ?????????</h6>
              </div>
            </div>
          </div>

          <!-- Single Product Area -->
          <div class="col-12 col-sm-6 col-lg-3">
            <div
              class="single-product-area mb-50 wow fadeInUp"
              data-wow-delay="300ms"
            >
              <!-- Product Image -->
              <div class="product-img">
                <a href="shop-details.html"
                  ><img src=" ${pageContext.request.contextPath}/resources/img/core-img/poster3.png" alt=""
                /></a>
                <div class="product-meta d-flex">
                  <a href="#" class="wishlist-btn"
                    ><i class="icon_heart_alt"></i
                  ></a>
                </div>
              </div>
              <!-- Product Info -->
              <div class="product-info mt-15 text-center">
                <a href="shop-details.html">
                  <p>2022.04.29 ~ 2022.05.01</p>
                </a>
                <h6>?????? ???????????? ?????????</h6>
              </div>
            </div>
          </div>

          <!-- Single Product Area -->
          <div class="col-12 col-sm-6 col-lg-3">
            <div
              class="single-product-area mb-50 wow fadeInUp"
              data-wow-delay="400ms"
            >
              <!-- Product Image -->
              <div class="product-img">
                <a href="shop-details.html"
                  ><img src=" ${pageContext.request.contextPath}/resources/img/core-img/poster4.png" alt=""
                /></a>
                <!-- Product Tag -->
                <div class="product-tag sale-tag">
                  <a href="#">Hot</a>
                </div>
                <div class="product-meta d-flex">
                  <a href="#" class="wishlist-btn"
                    ><i class="icon_heart_alt"></i
                  ></a>
              
                </div>
              </div>
              <!-- Product Info -->
              <div class="product-info mt-15 text-center">
                <a href="shop-details.html">
                  <p>2022.06.04 ~ 2022.06.07</p>
                </a>
                <h6>?????? ??? ?????????</h6>
              </div>
            </div>
          </div>

          <div class="col-12 text-center">
            <a href="#" class="btn alazea-btn">View All</a>
          </div>
        </div>
      </div>
    </section>
    <!-- ##### Product Area End ##### -->

    <!-- ##### Blog Area Start ##### -->
    <section class="alazea-blog-area section-padding-100-0">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <!-- Section Heading -->
            <div class="section-heading text-center">
              <h2>BEST REVIEW</h2>
              <p style="font-size: 14px;">??????????????? ????????? ????????? ?????? ???????????????.</p>
            </div>
          </div>
        </div>

        <div class="row justify-content-center">
          <!-- Single Blog Post Area -->
          <div class="col-12 col-md-6 col-lg-4">
            <div class="single-blog-post mb-100">
              <div class="post-thumbnail mb-30">
                <a href="single-post.html"
                  ><img src=" ${pageContext.request.contextPath}/resources/img/bg-img/review1.png" alt=""
                /></a>
              </div>
              <div class="post-content">
                <a href="single-post.html" class="post-title">
                  <h6>
                    ????????? ?????? ????????? ??????????????? ???????????????~ ?????? ?????????.
                  </h6>
                </a>
                <div class="post-meta">
                  <a href="#"
                    ><i class="fa fa-clock-o" aria-hidden="true"></i> 25 Oct
                    2022</a
                  >
                  <a href="#"
                    ><i class="fa fa-user" aria-hidden="true"></i> ?????????</a
                  >
                </div>
                <p class="post-excerpt">
                  ???????????? ????????? ????????? ?????? ????????? ???????????? ?????? ????????? ?????? ???????????? ?????? ????????? ?????????! ???????????? ????????? ??????????????? ?????? ??? ???????????????~
                </p>
              </div>
            </div>
          </div>

          <!-- Single Blog Post Area -->
          <div class="col-12 col-md-6 col-lg-4">
            <div class="single-blog-post mb-100">
              <div class="post-thumbnail mb-30">
                <a href="single-post.html"
                  ><img src="${pageContext.request.contextPath}/resources/img/bg-img/review2.png" alt=""
                /></a>
              </div>
              <div class="post-content">
                <a href="single-post.html" class="post-title">
                  <h6>
                    ?????? ?????? ????????? ????????? ?????? ???????????? ????????????!!!!!!
                  </h6>
                </a>
                <div class="post-meta">
                  <a href="#"
                    ><i class="fa fa-clock-o" aria-hidden="true"></i> 22 Sep
                    2022</a
                  >
                  <a href="#"
                    ><i class="fa fa-user" aria-hidden="true"></i> ?????????</a
                  >
                </div>
                <p class="post-excerpt">
                  ????????? ??????????????? ????????? ?????? ????????? ?????? ???????????????! ????????? ????????? ????????? ????????? ????????? ??????????????? ???????????? ?????????????????? ?????? ???????????????!! 
                </p>
              </div>
            </div>
          </div>

          <!-- Single Blog Post Area -->
          <div class="col-12 col-md-6 col-lg-4">
            <div class="single-blog-post mb-100">
              <div class="post-thumbnail mb-30">
                <a href="single-post.html"
                  ><img src="${pageContext.request.contextPath}/resources/img/bg-img/review3.png" alt=""
                /></a>
              </div>
              <div class="post-content">
                <a href="single-post.html" class="post-title">
                  <h6>
                    ?????????????????? ???????????? ?????? ??????????????? ???????????? ????????? ????????? ??????????????????
                  </h6>
                </a>
                <div class="post-meta">
                  <a href="#"
                    ><i class="fa fa-clock-o" aria-hidden="true"></i> 20 Mar
                    2022</a
                  >
                  <a href="#"
                    ><i class="fa fa-user" aria-hidden="true"></i> ?????????</a
                  >
                </div>
                <p class="post-excerpt">
                  ????????? ????????? ???????????? ???????????? ?????? ???????????? ????????? ????????? ?????? ??? ???????????? ????????? ??? ????????? ?????? ???????????? ????????? ?????????. ????????? ??? ?????????????????????.
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- ##### Blog Area End ##### -->

    <!-- ##### Subscribe Area Start ##### -->
    <section
      class="subscribe-newsletter-area"
    >
      <div class="container">
        <div class="row align-items-center justify-content-between">
          <div class="col-12 col-lg-5">
            <!-- Section Heading -->
            <div class="section-heading mb-0">
              <h2>??????????????? ?????? ???????????????!</h2>
              <p style="font-size: 12px;">
                ?????? ?????????????????? ?????? ??? ??????????????? '????????????'??? ????????? ???????????? ??? ????????????.
              </p>
            </div>
          </div>
          <div class="col-12 col-lg-6">
            <div class="subscribe-form">
              <form action="#" method="get">
                <input
                  type="email"
                  name="subscribe-email"
                  id="subscribeEmail"
                  placeholder="Enter your email"
                />
                <button type="submit" class="btn alazea-btn">SUBSCRIBE</button>
              </form>
            </div>
          </div>

        </div>       
      </div>

      <!-- Subscribe Side Thumbnail -->
     
    </section>
    <!-- ##### Subscribe Area End ##### -->

    <!-- ##### Contact Area Start ##### -->
    <section class="contact-area section-padding-100-0">
      <div class="container">
        <div class="row align-items-center justify-content-between">
          <div class="col-12 col-lg-5">
            <!-- Section Heading -->
            <div class="section-heading">
              <h2>A/S Service</h2>
              <p style="font-size: 14px;">????????? ??????????????? 24?????? ????????? ?????? ???????????? ?????? ??????????????????.</p>
            </div>
            <!-- Contact Form Area -->
            <div class="contact-form-area mb-100">
              <form action="#" method="post">
                <div class="row">
                  <div class="col-12 col-sm-6">
                    <div class="form-group">
                      <input
                        type="text"
                        class="form-control"
                        id="contact-name"
                        placeholder="Your Name"
                      />
                    </div>
                  </div>
                  <div class="col-12 col-sm-6">
                    <div class="form-group">
                      <input
                        type="email"
                        class="form-control"
                        id="contact-email"
                        placeholder="Your Email"
                      />
                    </div>
                  </div>
                  <div class="col-12">
                    <div class="form-group">
                      <input
                        type="text"
                        class="form-control"
                        id="contact-subject"
                        placeholder="Subject"
                      />
                    </div>
                  </div>
                  <div class="col-12">
                    <div class="form-group">
                      <textarea
                        class="form-control"
                        name="message"
                        id="message"
                        cols="30"
                        rows="10"
                        placeholder="Message"
                      ></textarea>
                    </div>
                  </div>
                  <div class="col-12">
                    <button type="submit" class="btn alazea-btn mt-15">
                      Send Message
                    </button>
                  </div>
                </div>
              </form>
            </div>
          </div>

          <div id="map" class="col-12 col-lg-6" style="height:400px;"></div>
          
          <!-- KAKAO MAPS-->
          <script type="text/javascript" src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=efe0b188069dca1c9271e0360dd0501f"></script>
          <script>
            var container = document.getElementById("map");
            var options = {
              center: new kakao.maps.LatLng(35.149828, 126.919959),
              level: 3,
            };

            var map = new kakao.maps.Map(container, options);
          </script>
          </div>
        </div>
      </div>
    </section>
    <!-- ##### Contact Area End ##### -->

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
                    <li><a href="main">Home</a></li>
                    <li><a href="About">About</a></li>
                    <li><a href="#">Purchase</a></li>
                    <li><a href="#"> Service center</a></li>
                    <li><a href="Contact">A/S</a></li>
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
    
    
  </body>
</html>
