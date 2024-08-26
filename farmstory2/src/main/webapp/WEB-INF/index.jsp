<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>index.html</title>
   <!--
        날짜 : 2024/08/01
        이름 : 황수빈
        내용 : 헤더 푸터를 제외한 메인페이지  HTML + CSS 완성
    -->
    <style>
    
    * {
            margin: 0;
            padding: 0;
            font: normal 12px '고딕';
        }
        ul, ol {list-style: none;}
        a {text-decoration: none; color: #111;}
        input, textarea {outline: none;}
        
        #wrapper {
            width : 100%;
            height : 100%;
            margin : 0 auto;
        }

        /***********/
        /* header */
        header{
            width: 980px;
            height: 150px;
            margin : 0 auto;
        }

        /*top line*/
        header .htop{
            position: absolute;
            width: 980px;
            height: 14px;
            top: 1px;
            background-repeat: repeat;
            height: 10px;
            background-image: url('./image/head_top_line.png')
        }
        header .top {
            position : relative;
            height : 14px;
        }
        header .top > p{
            position : absolute;
            height: 14px;
            right : 0;
            top: 15px;
            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 12px;
            line-height: 15px;
            display: flex;
            align-items: center;
            color: #111111;
            z-index : 2;
        }
        header .top > p{
            position: absolute;
            width: 237.15px;
     
        }
        
        /*logospace 는 로고, 사이드로고, 로그인| 담고있음*/
        .logospace {
            width : 980px;
            height : 80px;
            position : relative;
        } 

        .headlog {
            position : absolute;
            left : 40%;
            top : 15px;
        }
        .headlog2 {
            position : absolute;
            right : 0px;
            top : 45px;
        }

        /**nav**/
        header nav {
            width : 100%;
            height : 50px;
            position :relative;
        }
        .navfont> li a {
            font-size :15px;
            font-weight: bolder;
        }
       header nav > ul {
            width :100%;
            height : 50px;
            display: inline-block;
            justify-content: space-around;
            padding: 10px 0;
        }
        
       header nav > ul > li {
        margin-left : 5px;
        float : left;
        min-width : 190px;
        height: 30px;
        margin-top :5px;
        border-top: 5px solid rgb(145, 142, 142);
        /*안의 글자 a들을 중앙으로 배치하는 방법*/
        position : flex;
        text-align: center;
        }
        /*장보기 뱃지*/
        .badge {
            position : absolute;
            margin-top :-10px;
            margin-left  : 310px;
        }


        /**********************/
        /*font 설정*/
        .shopping .price::after {
            content : '원';
            color : black; font-size : 15px;
        }
        .shopping .category {
            font-size : 15px;
        }
        .shopping .itemname {
            font-size : 15px;
        }
        .shopping .price {
            font-size : 15px;
            font-weight : bold;
        }
        
        /**할인 전 가격 10%↓ 앞 뒤 다르게 설정**/
        .shopping article > .originprice {
            bottom : 37px;
            left :28%;
            font-size : 12px;
        }

        .originprice::before {
            content: '4,000'; /* 4000 표시 */
            color: black; /* 검은색 */
            text-decoration: line-through; /* 4000 위에 줄 긋기 */
            margin-right: 5px; /* 10%↓와의 간격 */
        }

        .originprice::after {
            content: '10%↓'; /* 10%↓ 표시 */
            color: red; /* 빨간색 */
        }

        /*각 구역 크기 정하기*/
    
        main{
            width :100%;
            height : auto;

        }
        main > .main {
            width : 980px;
            height : auto;
            margin : 0 auto;
            height: auto;
      

        }
        main > section {
            width : 980px;
            height : auto;
            overflow : hidden;

        }

        /******main*********/
        /******************/
        /*banner section*/

        .banner {
            position : relative;
            width : 980px;
            height : 312px;
            overflow :hidden;
        }
        .banner img {
            position : absolute;
            object-fit : cover;
        }
        .banner > .bannerbackground{
            width:100%;
            height :100%;
            z-index: 1;
        }

        .banner > .bannertitle{
            width : 330px;
            height : 63px;
            z-index: 2;
            left: 20px;
            top: 30px;
        }
        .banner1right {
            width : 230px;
            height :100%;
            z-index: 2;
            right: 0;
            top: -1px;
        }

        /********************/
        /*shopping section*/
        .shopping {
            width : 100%;
            height :200px;
        }

        .shopping > img:nth-child(1) {
            display :block;
            margin-left :10px;
            margin-top :10px;
            margin-bottom : 10px;
        }
        
        section > .shopping {
            width : 100%;
            height : 310px;

        }
    
        .shopping > article {
            float : left;
            width : 15.5%;
            height : 236px;
            border : 1px solid lightgray;
            box-sizing: border-box;    
            position : relative;
            overflow : hidden;
            margin-left :10px;
        }
        
        .shopping article > * {
            position :absolute;
        }
        .shopping article > img {
            top :10px;
            left :10%;
        }
        /*price를 h3이 감싸고 있습니다*/
        .shopping article > h3{

            bottom : 10px;
            left : 32%;
        }

        .shopping article > .itemname{
            bottom: 55px;
            left : 25%;
        }
        .shopping article > .category{
            bottom: 82px;
            color : gray;
            left : 39%;
        }

        /************************/
        /*seccondbanner section*/
        .secondbanner {
            margin-top : 10px;
            margin-bottom : 10px;
            width: 980px;
            height: 72px;
            position: relative; /* 자식 요소의 위치를 상대적으로 배치하기 위해 설정 */
        }

        .secondbanner .left, 
        .secondbanner .right {
            width: 50%; /* 섹션의 절반 크기로 조정 */
            height: 100%;
            position: absolute;
            top: 0;
        }

        .secondbanner .left {
            left: 0;
        }

        .secondbanner .right {
            right: 0;
        }

        .secondbanner .lefttit, 
        .secondbanner .righttit {
            position: absolute;
            top: 50%;
            transform: translateY(-50%); /* 수직 중앙 정렬 */
        }

        .secondbanner .lefttit {
            left: 10px; /* 왼쪽에 약간의 여백 */
        }

        .secondbanner .righttit {
            right: 200px; /* 오른쪽에 약간의 여백 */
        }
    
        /**************/
        /*news section*/
        .news {
            width :100%;
            display : flex;
            margin-bottom : 10px;
        }

        .news > div {
            width:33.33%;
            position :relative;
        }

        .textbox {
            position : absolute;
            right : 16px;
            top : 70px;
        
        }
        .news > div > a> img:nth-child(1){
            margin-top: 10px;
            margin-bottom : 15px;
        }
        .news > div > a> img:nth-child(2){
            margin-top: 10px;
            margin-bottom : 15px;
        }
        .news div  a:hover{
            background-color : #e2f2f8;
            border-radius: 15px;
        }

        /***************/
        /*info section*/
        /*user account notice*/
            /*user*/
        .info{
            width: 100%;
            height: auto;
            box-sizing: border-box;
            display: flex;
            justify-content: space-between;
            padding: 20px;
            border-top: 3px solid rgb(183, 181, 181);
        }
             /*user*/
        .info>.user{
            width: 386px;
        }
        
        .info>.info_user_cs img{
            float: left;
        }
        .info>.user>.info_user_cs>div{
            float: right;
            width: 40%;
            height: 54px;
            margin-right: 30px;
        }

        .info>.user p{
            display: inline-block;
            font-size: 12px;
            color: #777;
        }
        .info_user_cs{ margin-top: 10px;}
        .info_user_btn{
            display: flex;
            justify-content: space-around;
            margin-top: 20px;
        }

            /*account*/
        .account{ width: 230px;}
        .account>div{ width: 100%; height: 90px;
            
        }
        .account p{
            font-size: 12px;
            color: #777;
            line-height: 19px;
        }

        .notice{
            width: 305px;
        }
        .notice a{
            font-size: 12px;
            color: #777;
            line-height: 18.5px;
            
        }
        .notice span{
           
            font-size: 11px;
            color: #777;
            float: right;
            position: relative;
            top: 2px;
        }
        /*info 구분선 추가*/
        .info > div:nth-child(1){border-right : 1px solid lightgray;}
        .info > div:nth-child(2){border-right : 1px solid lightgray;}
        
        /***********/
        /* footer */
        footer {
            box-sizing: border-box;
            margin : 0 auto;
            width : 980px;
            height: auto;
            background-color: #F8F9FA; /* 배경색 추가 */
            overflow :hidden
        }
        footer > div {
            float :right;
            width :100%;
            height : 120px;
            
        }
    
    /*footer topline*/
      footer .fline{
        position: relative;
        width: 980px;
        background-repeat: repeat;
        height: 10px;
        background: url('./img/footer_top_line.png');
      }
      /*info3개 들음*/
      #Paragraph {
        float : right;
        margin-top:10px;
        position: relative;
        height: 95px;
        width : 75%;
        overflow : hidden;
       }
        .info1{

        position: absolute;
        left : 0;
        top : 0;
         width: 709.68px;
         height: 54px;
         font-family: 'Inter', sans-serif;
         font-style: normal;
         font-weight: 300;
         font-size: 10.6562px;
         line-height: 18px;
         display: flex;
         align-items: center;
         color: #585858;
        }
    
         footer > div .info2{
            position: absolute;
            left : 0;
            bottom : 25px;
        width: 275.5px;
        height: 14px;
        font-family: 'Inter', sans-serif;
        font-style: normal;
        font-weight: 400;
        font-size: 11.25px;
        line-height: 14px;
        display: flex;
        align-items: center;
        color: #888888;
    }
        footer > div .info3{
            position: absolute;
            right : 5px;
            bottom : 0;
        width: 89.18px;
        height: 14px;
        font-family: 'Inter', sans-serif;
        font-style: normal;
        font-weight: 400;
        font-size: 10.6875px;
        line-height: 13px;
        display: flex;
        align-items: center;
        color: #888888;
    }
        
</style>
  
</head>
<body>
    <div id = "wrapper">
    <header>
        <div>
            <div class="htop"></div>
            <div class="top">
                <p>
                    <a href="#"> HOME | </a>
                    <a href="/farmstory2/user/login.do"> 로그인 | </a>
                    <a href="#"> 회원가입 | </a>
                    <a href="#"> 관리자 | </a>
                    <a href="#"> 고객센터 </a>
                </p>
            </div>
            <div class ="logospace">
                <a href="#" class="logo"> <img src="./img/logo.png" alt="logo" class = "headlog"></a>
                <a href="#" class="sale"><img src="./img/head_txt_img.png" alt="htxt" class = "headlog2"></a>
            </div>
        </div>
        <div>
            <nav>
                <ul class = "navfont">
            <div><img src="./img/head_menu_badge.png" class = "badge"></div>          
                 
                    <li><a href="#">팜스토리소개</a></li>
                    <li><a href="#">장보기</a></li>
                    <li><a href="article/story.do">농작물이야기</a></li>
                    <li><a href="#">이벤트</a></li>
                    <li><a href="#">커뮤니티</a></li>
                </ul>
            </nav>
        </div>
    </header>
    <main>
        <section class="main">
            <section class="banner">

                <img src="./img/main_slide_img1.jpg " alt = "배너배경이미지" class = "bannerbackground">
                <img src="./img/main_slide_img_tit.png" alt ="배너배경제목" class ="bannertitle">
                <img src="./img/popup.png" alt = "배너 왼쪽" class = "banner1right">
            </section>

      


            <section class = "shopping">
                <img src="./img/main_market_tit.png"></img>
                
                <article>
                    <img src="./img/market_item1.jpg">
                    <span class = "category">과일</span>      
                    <span class = "itemname">사과 500g</span>
                    <span class = "originprice"></span>
                    <h3><span class = "price">3,600</span></h3>
                </article>
                <article>
                    <img src="./img/market_item2.jpg">
                    <span class = "category">과일</span>
                    <span class = "itemname">배 500g</span>
                    <span class = "originprice"></span>
                    <h3><span class = "price">3,600</span></h3>
                </article>
                <article>
                    <img src="./img/market_item3.jpg">
                    <span class = "category">과일</span>
                    <span class = "itemname">토마토 500g</span>
                    <span class = "originprice"></span>
                    <h3><span class = "price">3,600</span></h3>
                </article>
                <article>
                    <img src="./img/market_item4.jpg">
                    <span class = "category">과일</span>
                    <span class = "itemname">딸기 500g</span>
                    <span class = "originprice"></span>
                    <h3><span class = "price">3,600</span></h3>
                </article>
                <article>
                    <img src="./img/market_item5.jpg">
                    <span class = "category">과일</span>
                    <span class = "itemname">귤 500g</span>
                    <span class = "originprice"></span>
                    <h3><span class = "price">3,600</span></h3>
                </article>
                <article>
                    <img src="./img/market_item6.jpg">
                    <span class = "category">과일</span>
                    <span class = "itemname">사과 500g</span>
                    <span class = "originprice"></span>
                    <h3><span class = "price">3,600</span></h3>
                </article>
            </section>

            <section class ="secondbanner">
                <img src = "./img/main_banner_sub1_bg.jpg" class = "left">
                <img src = "./img/main_banner_sub1_tit.png" class = "lefttit">
                <img src = "./img/main_banner_sub2_bg.jpg" class="right">
                <img src = "./img/main_banner_sub2_tit.png" class = "righttit">
            </section>

            <section class="news">
                <div class="news_box garden">
                   <a href = "article/grow.do"><img src="./img/main_latest1_tit.png" alt="" class = ></a>
                    <div >
                        <img src="./img/main_latest1_img.jpg" alt="">
                        <div class = "textbox">
                            <div>
                                <img src="./img/main_latest_icon.gif" alt="">
                                <a href="#">토마토! 건강하게 길러...</a>
                                <span>20-12-22</span>
                            </div>
                            <div>
                                <img src="./img/main_latest_icon.gif" alt="">
                                <a href="#">토마토! 건강하게 길러...</a>
                                <span>20-12-22</span>
                            </div>
                            <div>
                                <img src="./img/main_latest_icon.gif" alt="">
                                <a href="#">토마토! 건강하게 길러...</a>
                                <span>20-12-22</span>
                            </div>
                            <div>
                                <img src="./img/main_latest_icon.gif" alt="">
                                <a href="#">토마토! 건강하게 길러...</a>
                                <span>20-12-22</span>
                            </div>
                            <div>
                                <img src="./img/main_latest_icon.gif" alt="">
                                <a href="#">토마토! 건강하게 길러...</a>
                                <span>20-12-22</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="news_box school">
                    <a href = "article/school.do"><img src="./img/main_latest2_tit.png" alt=""></a>
                    <div >
                        <img src="./img/main_latest2_img.jpg" alt="">
                        <div class ="textbox">
                            <div>
                                <img src="./img/main_latest_icon.gif" alt="">
                                <a href="#">토마토! 건강하게 길러...</a>
                                <span>20-12-22</span>
                            </div>
                            <div>
                                <img src="./img/main_latest_icon.gif" alt="">
                                <a href="#">토마토! 건강하게 길러...</a>
                                <span>20-12-22</span>
                            </div>
                            <div>
                                <img src="./img/main_latest_icon.gif" alt="">
                                <a href="#">토마토! 건강하게 길러...</a>
                                <span>20-12-22</span>
                            </div>
                            <div>
                                <img src="./img/main_latest_icon.gif" alt="">
                                <a href="#">토마토! 건강하게 길러...</a>
                                <span>20-12-22</span>
                            </div>
                            <div>
                                <img src="./img/main_latest_icon.gif" alt="">
                                <a href="#">토마토! 건강하게 길러...</a>
                                <span>20-12-22</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="news_box crops">
                    <a href = "article/story.do"><img src="./img/main_latest3_tit.png" alt=""></a>
                    <div >
                        <img src="./img/main_latest3_img.jpg" alt="">
                        <div class = "textbox">
                            <div>
                                <img src="./img/main_latest_icon.gif" alt="">
                                <a href="#">토마토! 건강하게 길러...</a>
                                <span>20-12-22</span>
                            </div>
                            <div>
                                <img src="./img/main_latest_icon.gif" alt="">
                                <a href="#">토마토! 건강하게 길러...</a>
                                <span>20-12-22</span>
                            </div>
                            <div>
                                <img src="./img/main_latest_icon.gif" alt="">
                                <a href="#">토마토! 건강하게 길러...</a>
                                <span>20-12-22</span>
                            </div>
                            <div>
                                <img src="./img/main_latest_icon.gif" alt="">
                                <a href="#">토마토! 건강하게 길러...</a>
                                <span>20-12-22</span>
                            </div>
                            <div>
                                <img src="./img/main_latest_icon.gif" alt="">
                                <a href="#">토마토! 건강하게 길러...</a>
                                <span>20-12-22</span>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <section class="info">
                <div class="info_box user">
                    <img src="./img/main_sub2_cs_tit.png" alt="">
                    <div class="info_user_cs">
                        <img src="./img/main_sub2_cs_img.png" alt="">
                        <img src="./img/main_sub2_cs_txt.png" alt="">
                        <div>
                            <p>평일: AM 09:00 ~ PM 06:00</p>
                            <p>점심: PM 12:00 ~ PM 01:00</p>
                            <p>토, 일요일, 공휴일 휴무</p>
                        </div>
                    </div>
                    <div class="info_user_btn">
                        <a href="#"><img src="./img/main_sub2_cs_bt1.png" alt=""></a>
                        <a href="#"><img src="./img/main_sub2_cs_bt2.png" alt=""></a>
                        <a href="#"><img src="./img/main_sub2_cs_bt3.png" alt=""></a>
                    </div>
                </div>
                <div class="info_box account">
                    <img src="./img/main_sub2_account_tit.png" alt="">
                    <div class = "this">
                        <p>기업은행 123-456789-01-01-012</p>
                        <p>기업은행 01-1234-56789</p>
                        <p>기업은행 123-456789-01-01-012</p>
                        <p>기업은행 123-456789-01-01</p>
                        <p>예금주 (주)팜스토리</p>
                    </div>
                </div>
                <div class="info_box notice">
                    <img src="./img/main_sub2_notice_tit.png" alt="">
                    <div class="info_notice_table">
                        <div>
                            <a href="#">안녕하세요. 홈페이지 오픈 기념 이벤트를 ...</a>
                            <span>20-12-22</span>
                        </div>
                        <div>
                            <a href="#">안녕하세요. 홈페이지 오픈 기념 이벤트를 ...</a>
                            <span>20-12-22</span>
                        </div>
                        <div>
                            <a href="#">안녕하세요. 홈페이지 오픈 기념 이벤트를 ...</a>
                            <span>20-12-22</span>
                        </div>
                        <div>
                            <a href="#">안녕하세요. 홈페이지 오픈 기념 이벤트를 ...</a>
                            <span>20-12-22</span>
                        </div>
                        <div>
                            <a href="#">안녕하세요. 홈페이지 오픈 기념 이벤트를 ...</a>
                            <span>20-12-22</span>
                        </div>
                    </div>
                </div>
            </section>
        </section>

    </main>
    <footer>
        <div>
            <div class="fline"></div>
            <img src="./img/footer_logo.png" class="logo" alt="farmstoryfootlogo">
            <div id="Paragraph">
                <p class="info1">
                    (주)팜스토리 / 사업자등록번호 123-45-67890 / 통신판매업신고 제 2013-부산진구-123호 / 벤처기업확인 서울지방중소기업청 제 012345678-9-01234호
                    등록번호 팜스토리01234 (2013.04.01) / 발행인 : 홍길동<br>
                    대표 : 김철학 / 이메일 : chhak0503@gmail.com / 전화 : 01) 234-5678 / 부산광역시 부산진구 부전동 123
                </p>
                <p class="info2">
                    copyrightⓒ 김철학(개발에반하다.) All rights reserved.
                </p>
                <p class="info3">
                    farmstory ver1.0.1
                </p>
            </div>
        </div>
      
    </footer>
</div>
</body>
</html>