<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 파비콘 -->
  <link rel="shortcut icon" href="./images/tomorrow1.gif">
  <title>Odigaji</title>

  <!-- <link rel="stylesheet" href="./"> -->
  <!--브라우저 스타일 초기화-->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" />
  <!--Google Fonts - 나눔고딕-->
  <link rel="preconnect" href="https://fonts.gstatic.com" />
  <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap" rel="stylesheet" />
  <!--Google Material Icons-->
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
  <!-- sidebar open/close Icon -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
  <!-- login icon -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
  <!-- my page icon -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
  <!-- heart icon -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
  <!-- chat icon -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
  
  
  <!--Swiper-->
  <link rel="stylesheet" href="https://unpkg.com/swiper@6.8.4/swiper-bundle.min.css" />
  <script src="https://unpkg.com/swiper@6.8.4/swiper-bundle.min.js"></script>


  <!-- css -->
  <link rel="stylesheet" href="./css/main.css">
  <!-- <link rel="stylesheet" href="./css/basicTool.css"> -->
  <!-- js -->
  <script defer src="./js/common.js"></script>
    <!-- jquery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
</head>
<body>
<!--HEADER-->
  <header>
    <div class="inner">
      <a href="/" class="logo">
        <img src="./images/odigaji_logo.png" alt="ODIGAJI" />
      </a>

      <div class="sub-menu"> <!-- 로그인 마이페이지 찜 채팅-->
        <ul class="menu">  
          <li>
            <a href="/signin/index.html"><span class="material-symbols-outlined">login</span>로그인</a>
          </li>
          <li>
            <a href="javascript:void(0)"><span class="material-symbols-outlined">
              person</span>마이페이지</a>
          </li>
          <li>
            <a href="javascript:void(0)"><span class="material-symbols-outlined">
              favorite</span>찜</a>
          </li>
          <li>
            <a href="./liveChat.html"><span class="material-symbols-outlined">
              chat</span>채팅</a>
          </li>
        </ul>
      </div>

      <ul class="main-menu"> <!-- 여행지&축제 맛집&카페 게시판-->                        <!--html 변경 부분-->
        <li class="item">                                                               
          <div class="item__name">여행지&축제</div>
          <div class="item__contents">
            <div class="contents__menu">                         
              <ul class="inner">         
                <li>                         
                  <h4>지역</h4>
                  <ul>
                    <li>서울&경기</li>
                    <li>전라도</li>
                    <li>경상도</li>
                  </ul>
                </li>
                <li>
                  <ul>
                    <li>충청도</li>
                    <li>강원도</li>
                    <li>제주도</li>
                  </ul>
                </li>
                <li>
                 <h4>계절</h4>
                  <ul>
                    <li>봄</li>
                    <li>여름</li>
                    <li>가을</li>
                    <li>겨울</li>
                  </ul>
                </li>
                <li>
                  <h4>테마</h4>
                  <ul>
                    <li>생태</li>
                    <li>전통</li>
                    <li>공연퍼레이드</li>
                    <li>놀이공원</li>
                  </ul>
                </li>
              </ul>
            </div>
          </div>
        </li>                                                                  
        <li class="item">
          <div class="item__name">맛집&카페</div>
          <div class="item__contents">
            <div class="contents__menu">
              <ul class="inner">
                <li>
                  <h4>지역</h4>
                  <ul>
                    <li>서울&경기</li>
                    <li>전라도</li>
                    <li>경상도</li>
                  </ul>
                </li>
                <li>
                  <ul>
                    <li>충청도</li>
                    <li>강원도</li>
                    <li>제주도</li>
                  </ul>
                </li>
                <li>
                  <h4>맛집</h4>
                  <ul>
                    <li>일식</li>
                    <li>양식</li>
                    <li>중식</li>
                  </ul>
                </li>
                <li>
                  <ul>
                    <li>한식</li>
                    <li>분식</li>
                    <li>기타</li>
                  </ul>
                </li>
                <li>
                  <h4>카페</h4>
                  <ul><li>Coffee shop</li></ul>
                </li>
              </ul>
            </div>
          </div>
        </li>                                                           
        <li class="item">
          <div class="item__name">게시판</div>
          <div class="item__contents">
            <div class="contents__menu">
              <ul class="inner">
                <li>
                  <h4>게시판</h4>
                  <ul>
                    <li>동행 게시판</li>
                    <li>공지사항 게시판</li>
                    <li>자유 게시판</li>
                  </ul>
                </li>  
              </ul>
            </div>
          </div>
        </li>
      </ul>                                                                             <!--html 변경 부분-->

    </div>
  </header>
  <!-- TOP SECTION (프로모션 스와이퍼)-->

  
    <div class="inner">

      
      <div class="promotion">
        <div class="text1">낭만이 가득한 <br>겨울 여행으로 떠나요</div>
        <div class="text2">마음의 온도를높이는<br>겨울 여행지 추천!</div>
        <div class="swiper-container">
          <div class="swiper-wrapper">
            <div class="swiper-slide">
              <img src="./images/promotion_slide1.jpg" alt="" />   <!-- 스와이퍼 이미지 넣는곳, 광고 넣는 곳-->
              <a href="javascript:void(0)"></a>
            </div>
            <div class="swiper-slide">
              <img src="./images/promotion_slide2.jpg" alt="" /> <!-- 스와이퍼 이미지 넣는곳, 광고 넣는 곳-->
              <a href="javascript:void(0)"></a>
            </div>
            <div class="swiper-slide">
              <img src="./images/promotion_slide3.jpg" alt="" /> <!-- 스와이퍼 이미지 넣는곳, 광고 넣는 곳-->
              <a href="javascript:void(0)"></a>
            </div>
          </div>
        </div>
  
        <div class="swiper-pagination"></div>
  
        <div class="swiper-prev">
          <span class="material-icons">arrow_back</span>
        </div>
        <div class="swiper-next">
          <span class="material-icons">arrow_forward</span>
        </div>
  
      </div>
      <div class="line1"></div>
    </div>



  <!--LEFT SIDEBAR 채팅창-->
  
  <div class="left-sidebar"></div>

  <!--RIGHT SIDEBARA 회원별 여행지 추천-->
  <div class="inner">
    <button type="button" class="material-symbols-outlined" onclick="right_sidebar_close()"  style="display: block">
      arrow_drop_up
    </button>
    <div class="right-sidebar" id="right-sidebar" >
      <div class="suggestion"></div>
      <p>회원별 추천 여행</p>
    </div>
  </div>

  <!-- MIDDLE SECTION 오늘의 여행지 추천 -->


    <div class="inner">

      
      <div class="tomorrow-suggestion">
        <div class="text3">오늘의 여행지 추천!</div>
        <div class="swiper-container">
          <div class="swiper-wrapper">
            <div class="swiper-slide">
              <img src="./images/tomorrow1.gif" alt="tomorrow-suggestion" />
            </div>
            <div class="swiper-slide">
              <img src="./images/tomorrow2.gif" alt="tomorrow-suggestion" />
            </div>
            <div class="swiper-slide">
              <img src="./images/tomorrow3.gif" alt="tomorrow-suggestion" />
            </div>
            <div class="swiper-slide">
              <img src="./images/tomorrow4.gif" alt="tomorrow-suggestion" />
            </div>
          </div>
        </div>
      </div>

    <div class="line2"></div>
    </div>
    


  <!-- BOTTOM SECTION 20~30대 HOT 여행지 TOP-->


    <div class="inner">

      
      <div class="hot5-suggestion">
        <div class="text3">20~30대 HOT 여행지 Top 5</div>
        <div class="swiper-container">
          <div class="swiper-wrapper">
            <div class="swiper-slide">
              <img src="./images/tomorrow1.gif" alt="tomorrow-suggestion" />
            </div>
            <div class="swiper-slide">
              <img src="./images/tomorrow2.gif" alt="tomorrow-suggestion" />
            </div>
            <div class="swiper-slide">
              <img src="./images/tomorrow3.gif" alt="tomorrow-suggestion" />
            </div>
            <div class="swiper-slide">
              <img src="./images/tomorrow4.gif" alt="tomorrow-suggestion" />
            </div>
          </div>
        </div>
      </div>

    </div>
    
  <!--FOOTER-->
  <footer>
    <div class="inner">
      <div class="items">
        <div class="item"> <!--회사 설명-->
          <p>회사 설명</p>
          <p>asdsad</p>
          <p>asdad</p>
        </div>
        <div class="item"> <!--회사 정보-->
          <p>회사 정보</p>
          <p>asda</p>
          <p>sadsadasdsada</p>
        </div>
        <div class="item">
          <p>근무 시간 정보</p> <!--근무시간 정보-->
          <p>sada</p>
          <p>adssad</p>
          <p>asdsad</p>
        </div>
      </div>
    

    </div>
  </footer>

  <!--TO TOP BUTTON-->
  <div id="to-top">
    <a href="#"><div class="material-icons">arrow_upward</div></a>
    
  </div>
</body>
</html>