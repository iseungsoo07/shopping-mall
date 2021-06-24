<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="custom" %>
<!DOCTYPE html>
<html lang="en">
<!-- Basic -->

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- Mobile Metas -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Site Metas -->
<title>ThewayShop - Ecommerce Bootstrap 4 HTML Template</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">

<!-- Site Icons -->
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon" href="images/apple-touch-icon.png">

<!-- fontawesome -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- Site CSS -->
<link rel="stylesheet" href="css/style.css">
<!-- Responsive CSS -->
<link rel="stylesheet" href="css/responsive.css">
<!-- Custom CSS -->
<link rel="stylesheet" href="css/custom.css">

<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

   <!-- Start Main Top -->
   <div class="main-top">
      <div class="container-fluid">
         <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
               <div class="text-slid-box">
                  <div id="offer-box" class="carouselTicker">
                     <ul class="offer-box">
                        <li><i class="fab fa-opencart"></i> Off 10%! Shop Now Man</li>
                        <li><i class="fab fa-opencart"></i> 50% - 80% off on Fashion</li>
                        <li><i class="fab fa-opencart"></i> 20% off Entire Purchase Promo code: offT20</li>
                        <li><i class="fab fa-opencart"></i> Off 50%! Shop Now</li>
                        <li><i class="fab fa-opencart"></i> Off 10%! Shop Now Man</li>
                        <li><i class="fab fa-opencart"></i> 50% - 80% off on Fashion</li>
                        <li><i class="fab fa-opencart"></i> 20% off Entire Purchase Promo code: offT20</li>
                        <li><i class="fab fa-opencart"></i> Off 50%! Shop Now</li>
                     </ul>
                  </div>
               </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
               <div class="custom-select-box">
                  <select id="basic" class="selectpicker show-tick form-control" data-placeholder="$ USD">
                     <option>¥ JPY</option>
                     <option>$ USD</option>
                     <option>€ EUR</option>
                  </select>
               </div>
               <div class="right-phone-box">
                  <p>
                     Call US :- <a href="#"> +11 900 800 100</a>
                  </p>
               </div>
               <div class="our-link">
                  <ul>
                    <li class="dropdown"><custom:logined /></li>
                  </ul>
               </div>
            </div>
         </div>
      </div>
   </div>
   <!-- End Main Top -->

   <!-- Start Main Top -->
   <header class="main-header">
      <!-- Start Navigation -->
      <nav class="navbar navbar-expand-lg navbar-light bg-light navbar-default bootsnav">
         <div class="container">
            <!-- Start Header Navigation -->
            <div class="navbar-header">
               <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-menu" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
                  <i class="fa fa-bars"></i>
               </button>
               <a class="navbar-brand" href="home.jsp"><img src="images/logo.png" class="logo" alt=""></a>
            </div>
            <!-- End Header Navigation -->

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="navbar-menu">
               <ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp">
                  <li class="nav-item"><a class="nav-link" href="home.jsp">Home</a></li>
                  <li class="nav-item"><a class="nav-link" href="about.jsp">About Us</a></li>
                  <li class="dropdown megamenu-fw"><a href="#" class="nav-link dropdown-toggle arrow" data-toggle="dropdown">Product</a>
                     <ul class="dropdown-menu megamenu-content" role="menu">
                        <li>
                           <div class="row">
                              <div class="col-menu col-md-3">
                                 <h6 class="title">Top</h6>
                                 <div class="content">
                                    <ul class="menu-col">
                                       <li><a href="shop.jsp">Jackets</a></li>
                                       <li><a href="shop.jsp">Shirts</a></li>
                                       <li><a href="shop.jsp">Sweaters & Cardigans</a></li>
                                       <li><a href="shop.jsp">T-shirts</a></li>
                                    </ul>
                                 </div>
                              </div>
                              <!-- end col-3 -->
                              <div class="col-menu col-md-3">
                                 <h6 class="title">Bottom</h6>
                                 <div class="content">
                                    <ul class="menu-col">
                                       <li><a href="shop.jsp">Swimwear</a></li>
                                       <li><a href="shop.jsp">Skirts</a></li>
                                       <li><a href="shop.jsp">Jeans</a></li>
                                       <li><a href="shop.jsp">Trousers</a></li>
                                    </ul>
                                 </div>
                              </div>
                              <!-- end col-3 -->
                              <div class="col-menu col-md-3">
                                 <h6 class="title">Clothing</h6>
                                 <div class="content">
                                    <ul class="menu-col">
                                       <li><a href="shop.jsp">Top Wear</a></li>
                                       <li><a href="shop.jsp">Party wear</a></li>
                                       <li><a href="shop.jsp">Bottom Wear</a></li>
                                       <li><a href="shop.jsp">Indian Wear</a></li>
                                    </ul>
                                 </div>
                              </div>
                              <div class="col-menu col-md-3">
                                 <h6 class="title">Accessories</h6>
                                 <div class="content">
                                    <ul class="menu-col">
                                       <li><a href="shop.jsp">Bags</a></li>
                                       <li><a href="shop.jsp">Sunglasses</a></li>
                                       <li><a href="shop.jsp">Fragrances</a></li>
                                       <li><a href="shop.jsp">Wallets</a></li>
                                    </ul>
                                 </div>
                              </div>
                              <!-- end col-3 -->
                           </div> <!-- end row -->
                        </li>
                     </ul></li>
                  <li class="dropdown active">         
                        <a href="#" class="nav-link dropdown-toggle arrow" data-toggle="dropdown">쇼핑</a>
                     <ul class="dropdown-menu">
                        <li>
                           <a href="cart.jsp">카트</a>
                        </li>
                        <li>
                           <a href="checkout.jsp">주문</a>
                        </li>
                        <li>
                           <a href="my-account.jsp">결제</a>
                        </li>
                        <li>
                           <a href="wishlist.jsp">위시리스트</a>
                        </li>
                        <li>
                           <a href="shop-detail.jsp">shop detail</a> 
                        </li>
                     </ul></li>
                  <li class="dropdown">
                     <custom:isLogined />
                  </li>
                  <li class="dropdown">
                     <a href="#" class="nav-link dropdown-toggle arrow" data-toggle="dropdown">고객센터</a>
                     <ul class="dropdown-menu">
                        <li>
                           <a href="./showN.do">공지사항</a>
                        </li>
                        <li>
                           <a href="./showQ.do">QnA</a>
                        </li>

                     </ul>
                  </li>
               </ul>
            </div>
            <!-- /.navbar-collapse -->

            <!-- Start Atribute Navigation -->
            <div class="attr-nav">
               <ul>
                  <li class="search"><a href="#"><i class="fa fa-search"></i></a></li>
                  <li class="side-menu"><a href="#"> <i class="fa fa-shopping-bag"></i> <span class="badge">3</span>
                  </a></li>
               </ul>
            </div>
            <!-- End Atribute Navigation -->
         </div>
         <!-- Start Side Menu -->
         <div class="side">
            <a href="#" class="close-side"><i class="fa fa-times"></i></a>
            <li class="cart-box">
               <ul class="cart-list">
                  <li><a href="#" class="photo"><img src="images/img-pro-01.jpg" class="cart-thumb" alt="" /></a>
                     <h6>
                        <a href="#">Delica omtantur </a>
                     </h6>
                     <p>
                        1x - <span class="price">$80.00</span>
                     </p></li>
                  <li><a href="#" class="photo"><img src="images/img-pro-02.jpg" class="cart-thumb" alt="" /></a>
                     <h6>
                        <a href="#">Omnes ocurreret</a>
                     </h6>
                     <p>
                        1x - <span class="price">$60.00</span>
                     </p></li>
                  <li><a href="#" class="photo"><img src="images/img-pro-03.jpg" class="cart-thumb" alt="" /></a>
                     <h6>
                        <a href="#">Agam facilisis</a>
                     </h6>
                     <p>
                        1x - <span class="price">$40.00</span>
                     </p></li>
                  <li class="total"><a href="#" class="btn btn-default hvr-hover btn-cart">VIEW CART</a> <span class="float-right"><strong>Total</strong>: $180.00</span></li>
               </ul>
            </li>
         </div>
         <!-- End Side Menu -->
      </nav>
      <!-- End Navigation -->
   </header>
   <!-- End Main Top -->

   <!-- Start Top Search -->
   <div class="top-search">
      <div class="container">
         <div class="input-group">
            <span class="input-group-addon"><i class="fa fa-search"></i></span> <input type="text" class="form-control" placeholder="Search"> <span class="input-group-addon close-search"><i class="fa fa-times"></i></span>
         </div>
      </div>
   </div>
   <!-- End Top Search -->

   <!-- Start All Title Box -->
   <div class="all-title-box">
      <div class="container">
         <div class="row">
            <div class="col-lg-12">
               <h2>주문</h2>
               <ul class="breadcrumb">
                  <li class="breadcrumb-item"><a href="#">쇼핑</a></li>
                  <li class="breadcrumb-item active">주문</li>
               </ul>
            </div>
         </div>
      </div>
   </div>
   <!-- End All Title Box -->

   <!-- Start Cart  -->
   <div class="cart-box-main">
      <div class="container">
         <div class="row new-account-login">
            <div class="col-sm-6 col-lg-6 mb-3">
               <div class="title-left">
                  <h3>계정 로그인</h3>
               </div>
               <h5>
                  <a data-toggle="collapse" href="#formLogin" role="button" aria-expanded="false">로그인하려면 여기를 클릭하십시오</a>
               </h5>
               <form class="mt-3 collapse review-form-box" id="formLogin">
                  <div class="form-row">
                     <div class="form-group col-md-6">
                        <label for="InputEmail" class="mb-0">이메일주소</label> <input type="email" class="form-control" id="InputEmail" placeholder="이메일을 입력하세요">
                     </div>
                     <div class="form-group col-md-6">
                        <label for="InputPassword" class="mb-0">비밀번호</label> <input type="password" class="form-control" id="InputPassword" placeholder="비밀번호를 입력하세요">
                     </div>
                  </div>
                  <button type="submit" class="btn hvr-hover">로그인</button>
               </form>
            </div>
            <div class="col-sm-6 col-lg-6 mb-3">
               <div class="title-left">
                  <h3>아이디가 없으신가요?</h3>
               </div>
               <h5>
                  <a  href="regist.jsp" role="button" aria-expanded="false">회원가입 하러가기</a>
               </h5>
            </div>
         </div>
         <div class="row">
            <div class="col-sm-6 col-lg-6 mb-3">
               <div class="checkout-address">
                  <div class="title-left">
                     <h3>청구 및 주소</h3>
                  </div>
                  <form class="needs-validation" novalidate>
                     <div class="row">
                                             <div class="col-md-6 mb-3">
                           <label for="lastName">성 *</label> <input type="text" class="form-control" id="lastName" placeholder="" value="" required>
                           <div class="invalid-feedback">Valid last name is required.</div>
                        </div>
                        <div class="col-md-6 mb-3">
                           <label for="firstName">이름 *</label> <input type="text" class="form-control" id="firstName" placeholder="" value="" required>
                           <div class="invalid-feedback">Valid first name is required.</div>
                        </div>

                     </div>
                     <div class="mb-3">
                        <label for="username">사용자이름 *</label>
                        <div class="input-group">
                           <input type="text" class="form-control" id="username" placeholder="" required>
                           <div class="invalid-feedback" style="width: 100%;">사용자 이름이 필요합니다.</div>
                        </div>
                     </div>
                     <div class="mb-3">
                        <label for="email">이메일주소 *</label> <input type="email" class="form-control" id="email" placeholder="">
                        <div class="invalid-feedback">올바른 이메일 주소를 입력하세요</div>
                     </div>
                     <div class="mb-3">
                        <label for="address">주소 *</label> <input type="text" class="form-control" id="address" placeholder="" required>
                        <div class="invalid-feedback">Please enter your shipping address.</div>
                     </div>
                     <div class="mb-3">
                        <label for="address2">상세주소 *</label> <input type="text" class="form-control" id="address2" placeholder="">
                     </div>
                     <div class="row">
                        <div class="col-md-5 mb-3">
                           <label for="country">국가 *</label> <select class="wide w-100" id="country">
                              <option value="Choose..." data-display="Select">선택하세요</option>
                              <option value="United States">대한민국</option>
                           </select>
                           <div class="invalid-feedback">올바른 국를 선택하세요</div>
                        </div>
                        <div class="col-md-4 mb-3">
                           <label for="state">시 *</label> <select class="wide w-100" id="state">
                              <option data-display="Select">선택하세요</option>
                              <option>서울시</option>
                           </select>
                           <div class="invalid-feedback">올바른 거주지를 선택하세요</div>
                        </div>
                        <div class="col-md-3 mb-3">
                           <label for="zip">우편번호 *</label> <input type="text" class="form-control" id="zip" placeholder="" required>
                           <div class="invalid-feedback">우편번호를 입력하세요.</div>
                        </div>
                     </div>
                     <hr class="mb-4">
                     <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="same-address"> <label class="custom-control-label" for="same-address">배송지 주소가 청구지 주소와 동일합니다.</label>
                     </div>
                     <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="save-info">입력한 정보를 다음에 사용할 수 있도록 저장합니다. <label class="custom-control-label" for="save-info"></label>
                     </div>
                     <hr class="mb-4">
                     <div class="title">
                        <span>결제방법</span>
                     </div>
                     <div class="d-block my-3">
                        <div class="custom-control custom-radio">
                           <input id="credit" name="paymentMethod" type="radio" class="custom-control-input" checked required> <label class="custom-control-label" for="credit">신용카드</label>
                        </div>
                        <div class="custom-control custom-radio">
                           <input id="debit" name="paymentMethod" type="radio" class="custom-control-input" required> <label class="custom-control-label" for="debit">직불 카드</label>
                        </div>
                        <div class="custom-control custom-radio">
                           <input id="paypal" name="paymentMethod" type="radio" class="custom-control-input" required> <label class="custom-control-label" for="paypal">페이팔결제</label>
                        </div>
                     </div>
                     <div class="row">
                        <div class="col-md-6 mb-3">
                           <label for="cc-name">카드 상의 이름</label> <input type="text" class="form-control" id="cc-name" placeholder="" required> <small class="text-muted">카드에 표시된 이름</small>
                           <div class="invalid-feedback">사용자의 이름을 입력하세요</div>
                        </div>
                        <div class="col-md-6 mb-3">
                           <label for="cc-number">신용 카드 번호</label> <input type="text" class="form-control" id="cc-number" placeholder="" required>
                           <div class="invalid-feedback">카드 번호를 입력하세요</div>
                        </div>
                     </div>
                     <div class="row">
                        <div class="col-md-3 mb-3">
                           <label for="cc-expiration">만료</label> <input type="text" class="form-control" id="cc-expiration" placeholder="" required>
                           <div class="invalid-feedback">만료기간을 입력하세요</div>
                        </div>
                        <div class="col-md-3 mb-3">
                           <label for="cc-expiration">CVV</label> <input type="text" class="form-control" id="cc-cvv" placeholder="" required>
                           <div class="invalid-feedback">CVV를 입력하세요</div>
                        </div>
                        <div class="col-md-6 mb-3">
                           <div class="payment-icon">
                              <ul>
                                 <li><img class="img-fluid" src="images/payment-icon/1.png" alt=""></li>
                                 <li><img class="img-fluid" src="images/payment-icon/2.png" alt=""></li>
                                 <li><img class="img-fluid" src="images/payment-icon/3.png" alt=""></li>
                                 <li><img class="img-fluid" src="images/payment-icon/5.png" alt=""></li>
                                 <li><img class="img-fluid" src="images/payment-icon/7.png" alt=""></li>
                              </ul>
                           </div>
                        </div>
                     </div>
                     <hr class="mb-1">
                  </form>
               </div>
            </div>
            <div class="col-sm-6 col-lg-6 mb-3">
               <div class="row">
                  <div class="col-md-12 col-lg-12">
                     <div class="shipping-method-box">
                        <div class="title-left">
                           <h3>상품 배송</h3>
                        </div>
                        <div class="mb-4">
                           <div class="custom-control custom-radio">
                              <input id="shippingOption1" name="shipping-option" class="custom-control-input" checked="checked" type="radio"> <label class="custom-control-label" for="shippingOption1">택배</label> <span class="float-right font-weight-bold">무료배송</span>
                           </div>
                           <div class="ml-4 mb-2 small">(영업일 기준 2~5일)</div>
                           <div class="custom-control custom-radio">
                              <input id="shippingOption2" name="shipping-option" class="custom-control-input" type="radio"> <label class="custom-control-label" for="shippingOption2">당일 배송</label> <span class="float-right font-weight-bold">5000원</span>
                           </div>
                           <div class="ml-4 mb-2 small">(다음날 배송 도착 보장)</div>
                           <div class="custom-control custom-radio">
                              <input id="shippingOption3" name="shipping-option" class="custom-control-input" type="radio"> <label class="custom-control-label" for="shippingOption3">당일 퀵 배송</label> <span class="float-right font-weight-bold">15,000원</span>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-md-12 col-lg-12">
                     <div class="odr-box">
                        <div class="title-left">
                           <h3>쇼핑 카트</h3>
                        </div>
                        <div class="rounded p-2 bg-light">
                           <div class="media mb-2 border-bottom">
                              <div class="media-body">
                                 <a href="detail.html"> Lorem ipsum dolor sit amet</a>
                                 <div class="small text-muted">
                                    Price: $80.00 <span class="mx-2">|</span> Qty: 1 <span class="mx-2">|</span> Subtotal: $80.00
                                 </div>
                              </div>
                           </div>
                           <div class="media mb-2 border-bottom">
                              <div class="media-body">
                                 <a href="detail.html"> Lorem ipsum dolor sit amet</a>
                                 <div class="small text-muted">
                                    Price: $60.00 <span class="mx-2">|</span> Qty: 1 <span class="mx-2">|</span> Subtotal: $60.00
                                 </div>
                              </div>
                           </div>
                           <div class="media mb-2">
                              <div class="media-body">
                                 <a href="detail.html"> Lorem ipsum dolor sit amet</a>
                                 <div class="small text-muted">
                                    Price: $40.00 <span class="mx-2">|</span> Qty: 1 <span class="mx-2">|</span> Subtotal: $40.00
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-md-12 col-lg-12">
                     <div class="order-box">
                        <div class="title-left">
                           <h3>주문 확인</h3>
                        </div>
                        <div class="d-flex">
                           <div class="font-weight-bold">내용</div>
                           <div class="ml-auto font-weight-bold">가격</div>
                        </div>
                        <hr class="my-1">
                        <div class="d-flex">
                           <h4>전체 가격</h4>
                           <div class="ml-auto font-weight-bold">$ 440</div>
                        </div>
                        <div class="d-flex">
                           <h4>할인</h4>
                           <div class="ml-auto font-weight-bold">$ 40</div>
                        </div>
                        <hr class="my-1">
                        <div class="d-flex">
                           <h4>쿠폰 할인</h4>
                           <div class="ml-auto font-weight-bold">$ 10</div>
                        </div>
                        <div class="d-flex">
                           <h4>부가세</h4>
                           <div class="ml-auto font-weight-bold">$ 2</div>
                        </div>
                        <div class="d-flex">
                           <h4>Shipping Cost</h4>
                           <div class="ml-auto font-weight-bold">Free</div>
                        </div>
                        <hr>
                        <div class="d-flex gr-total">
                           <h5>총 결제 금액</h5>
                           <div class="ml-auto h5">$ 388</div>
                        </div>
                        <hr>
                     </div>
                  </div>
                  <div class="col-12 d-flex shopping-box">
                     <a href="checkout.jsp" class="ml-auto btn hvr-hover">주문하기</a>
                  </div>
               </div>
            </div>
         </div>

      </div>
   </div>
   <!-- End Cart -->

   <!-- Start Instagram Feed  -->
   <div class="instagram-box">
      <div class="main-instagram owl-carousel owl-theme">
         <div class="item">
            <div class="ins-inner-box">
               <img src="images/instagram-img-01.jpg" alt="" />
               <div class="hov-in">
                  <a href="#"><i class="fab fa-instagram"></i></a>
               </div>
            </div>
         </div>
         <div class="item">
            <div class="ins-inner-box">
               <img src="images/instagram-img-02.jpg" alt="" />
               <div class="hov-in">
                  <a href="#"><i class="fab fa-instagram"></i></a>
               </div>
            </div>
         </div>
         <div class="item">
            <div class="ins-inner-box">
               <img src="images/instagram-img-03.jpg" alt="" />
               <div class="hov-in">
                  <a href="#"><i class="fab fa-instagram"></i></a>
               </div>
            </div>
         </div>
         <div class="item">
            <div class="ins-inner-box">
               <img src="images/instagram-img-04.jpg" alt="" />
               <div class="hov-in">
                  <a href="#"><i class="fab fa-instagram"></i></a>
               </div>
            </div>
         </div>
         <div class="item">
            <div class="ins-inner-box">
               <img src="images/instagram-img-05.jpg" alt="" />
               <div class="hov-in">
                  <a href="#"><i class="fab fa-instagram"></i></a>
               </div>
            </div>
         </div>
         <div class="item">
            <div class="ins-inner-box">
               <img src="images/instagram-img-06.jpg" alt="" />
               <div class="hov-in">
                  <a href="#"><i class="fab fa-instagram"></i></a>
               </div>
            </div>
         </div>
         <div class="item">
            <div class="ins-inner-box">
               <img src="images/instagram-img-07.jpg" alt="" />
               <div class="hov-in">
                  <a href="#"><i class="fab fa-instagram"></i></a>
               </div>
            </div>
         </div>
         <div class="item">
            <div class="ins-inner-box">
               <img src="images/instagram-img-08.jpg" alt="" />
               <div class="hov-in">
                  <a href="#"><i class="fab fa-instagram"></i></a>
               </div>
            </div>
         </div>
         <div class="item">
            <div class="ins-inner-box">
               <img src="images/instagram-img-09.jpg" alt="" />
               <div class="hov-in">
                  <a href="#"><i class="fab fa-instagram"></i></a>
               </div>
            </div>
         </div>
         <div class="item">
            <div class="ins-inner-box">
               <img src="images/instagram-img-05.jpg" alt="" />
               <div class="hov-in">
                  <a href="#"><i class="fab fa-instagram"></i></a>
               </div>
            </div>
         </div>
      </div>
   </div>
   <!-- End Instagram Feed  -->


   <!-- Start Footer  -->
   <footer>
      <div class="footer-main">
         <div class="container">
            <div class="row">
               <div class="col-lg-4 col-md-12 col-sm-12">
                  <div class="footer-widget">
                     <h4>About ThewayShop</h4>
                     <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                     <ul>
                        <li><a href="#"><i class="fab fa-facebook" aria-hidden="true"></i></a></li>
                        <li><a href="#"><i class="fab fa-twitter" aria-hidden="true"></i></a></li>
                        <li><a href="#"><i class="fab fa-linkedin" aria-hidden="true"></i></a></li>
                        <li><a href="#"><i class="fab fa-google-plus" aria-hidden="true"></i></a></li>
                        <li><a href="#"><i class="fa fa-rss" aria-hidden="true"></i></a></li>
                        <li><a href="#"><i class="fab fa-pinterest-p" aria-hidden="true"></i></a></li>
                        <li><a href="#"><i class="fab fa-whatsapp" aria-hidden="true"></i></a></li>
                     </ul>
                  </div>
               </div>
               <div class="col-lg-4 col-md-12 col-sm-12">
                  <div class="footer-link">
                     <h4>Information</h4>
                     <ul>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Customer Service</a></li>
                        <li><a href="#">Our Sitemap</a></li>
                        <li><a href="#">Terms &amp; Conditions</a></li>
                        <li><a href="#">Privacy Policy</a></li>
                        <li><a href="#">Delivery Information</a></li>
                     </ul>
                  </div>
               </div>
               <div class="col-lg-4 col-md-12 col-sm-12">
                  <div class="footer-link-contact">
                     <h4>Contact Us</h4>
                     <ul>
                        <li>
                           <p>
                              <i class="fas fa-map-marker-alt"></i>Address: Michael I. Days 3756 <br>Preston Street Wichita,<br> KS 67213
                           </p>
                        </li>
                        <li>
                           <p>
                              <i class="fas fa-phone-square"></i>Phone: <a href="tel:+1-888705770">+1-888 705 770</a>
                           </p>
                        </li>
                        <li>
                           <p>
                              <i class="fas fa-envelope"></i>Email: <a href="mailto:contactinfo@gmail.com">contactinfo@gmail.com</a>
                           </p>
                        </li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </footer>
   <!-- End Footer  -->

   <!-- Start copyright  -->
   <div class="footer-copyright">
      <p class="footer-company">
         All Rights Reserved. &copy; 2018 <a href="#">ThewayShop</a> Design By : <a href="https://html.design/">html design</a>
      </p>
   </div>
   <!-- End copyright  -->

   <a href="#" id="back-to-top" title="Back to top" style="display: none;">&uarr;</a>

   <!-- ALL JS FILES -->
   <script src="js/jquery-3.2.1.min.js"></script>
   <script src="js/popper.min.js"></script>
   <script src="js/bootstrap.min.js"></script>
   <!-- ALL PLUGINS -->
   <script src="js/jquery.superslides.min.js"></script>
   <script src="js/bootstrap-select.js"></script>
   <script src="js/inewsticker.js"></script>
   <script src="js/bootsnav.js"></script>
   <script src="js/images-loded.min.js"></script>
   <script src="js/isotope.min.js"></script>
   <script src="js/owl.carousel.min.js"></script>
   <script src="js/baguetteBox.min.js"></script>
   <script src="js/form-validator.min.js"></script>
   <script src="js/contact-form-script.js"></script>
   <script src="js/custom.js"></script>
</body>

</html>