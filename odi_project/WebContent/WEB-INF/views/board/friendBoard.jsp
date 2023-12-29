<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>마이페이지_채팅방</title>

    <!-- 파비콘 -->
    <link rel="shortcut icon" href="./images/tomorrow1.gif">

    <!--브라우저 스타일 초기화-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" />
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

    <!-- Travel Luggage And Bags icon -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <!-- keyboard_backspace icon -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <!-- lock icon -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <!-- location_on icon  -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <!-- calendar_month icon -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <!-- Person icon -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />


    <!-- basic css -->
    <link rel="stylesheet" href="./css/basicTool.css">
    <!-- Board css -->
    <link rel="stylesheet" href="./css/friendBoard.css">

    <!--Google Fonts - 나눔고딕-->
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap" rel="stylesheet" />

    <!-- Delete icon -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
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
            <a href="javascript:void(0)"><span class="material-symbols-outlined">
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


  <main>

    <a href="#" >
      <span class="material-symbols-outlined backspace"> keyboard_backspace </span>
    </a>

    <div class="friendPage"><a href="#">동행게시판</a></div>

    <!-- 글제목 -->
    <section class="title">
      <span class="material-symbols-outlined"> travel_luggage_and_bags </span><!-- 여행가방아이콘 -->
      <p>12/25 푸바오 보러 에버랜드 동행하실 분 구합니다.</p>
    </section>

    <!-- 글내용 -->
    <section class="contentSection">

      <div class="content">
        <p>크리스마스 당일 푸바오 보러 갈 에버랜드 동행 구합니다. 
          일행이 구해지지 않으면 둘이 다녀도 상관없지만 일행이 더 구해져서 세 명 이상 다녀도 좋아요!

          푸바오 좋아하시는 분만 동행해주세요.
        </p>
      </div>

      <div class="content-outer">

        <div class="information">
          <p class="content-title">♥ 자세한 여행 정보</p>
          <span class="material-symbols-outlined"> location_on </span> 위치
          <p class="content-info">경기도 용인시 에버랜드</p>

          <span class="material-symbols-outlined"> calendar_month </span> 날짜
          <p  class="content-info">12.19~12.25</p>
        </div>
        
        <div class="companion">
          <p class="content-title">♥ 함께하는 동행</p>
          <span class="material-symbols-outlined"> person </span> 동행
          <p  class="content-info">익명</p>
        </div>

      </div>
        
    </section>

    <!-- 댓글 -->
    <section class="reply">

      <!-- 댓글 등록 -->
      <div>
        <input type="text" placeholder="댓글 내용을 입력하세요.">
        <button>댓글등록</button>
      </div>
      
      <div class="secret-Button">
        <span class="material-symbols-outlined lock"> lock </span> 
        <span>글 작성자만 보기</span>
      </div>

      <!-- 댓글 표시 -->
      <div class="reply-comments">
        <table>
          <tr>
            <th>No.</th>
            <th>작성자</th>
            <th>댓글내용</th>
            <th><span class="material-symbols-outlined"> lock </span></th>
          </tr>
          <tr>
            <td>3</td>
            <td>홍길동</td>
            <td>25일에 동행 희망합니다!</td>
            <td></td>
          </tr>
          <tr>
            <td>2</td>
            <td>장현진</td>
            <td>10초 내로 답변주세요.</td>
            <td>●</td>
          </tr>
          <tr>
            <td>1</td>
            <td>장현진</td>
            <td>안녕하세요. 저도 보러 가고 싶습니다.</td>
            <td>●</td>
          </tr>
    
      </table>
    </div>

  </section>

</main>



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

    
</body>
</html>