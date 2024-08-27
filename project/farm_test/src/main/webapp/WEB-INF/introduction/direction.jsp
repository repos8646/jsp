<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>direction.html</title>

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
       position: relative;
       width: 1920px;
       height: 1106px;
        background: #FFFFFF;
        margin: 0 auto;

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
            background-image: url('../img/head_top_line.png')
        }
        
        /*logospace 는 로고, 사이드로고, 로그인| 담고있음*/
        .logospace {
            width : 980px;
            height : 80px;
            position : relative;
        } 

        .logospace > p{
            position : absolute;
            height: 14px;
            right : 0;
            left: 787.45px;
            top: 15px;
            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 12px;
            line-height: 15px;
            display: flex;
            align-items: center;
            color: #111111;
        }
        .logospace > p{
            position: absolute;
            width: 237.15px;
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

        .subtopbg1{
            position: absolute;
            width: 980px;
            height: 184px;
            left: 470px;
            right: 470px;
            top: 145px;

        }
        .subtopbg1 .subtoptit1{
            position: absolute;
            width: 326px;
            height: 37px;
            left: 10px;
            bottom: 10px;
                    
            background: url(.png);

        }
    

        main {
            position: absolute;
            height: 650px;
            left: 470px;
            right: 470px;
            top: 326px;
        }
        main > aside{
            position: absolute;
            width: 176px;
            height: 650px;
            left: 0px;
            top: 0px;

            background: url(.png);

        }

        main > #asidesize{
            position: absolute;
            width: 176px;
            height: 650px;
            left: 470px;
            top: 340px;

            background: url(.png);
            
        }
        
        .asidegate1{
            position: absolute;
            width: 130px;
            height: 45px;
            left: 16px;
            top: 16px;

            background: url(.png);

        }

        main #asidesize .asidebgline{
            position: relative;
            top: 37px;
            float: right;
            
        }

        .asidelnb{
            position: absolute;
            width: 175px;
            height: 233px;
            left: 0px;
            top: 81px;

            background: url('img/sub_aside_bg_lnb.png');

        }

        .asidelnb .lnb1{
            position: absolute;
            left: 0px;
            right: 0px;
            top: 26px;
            bottom: 178px;

            background: url(.png);

        }
        .asidelnb .lnb2{
            position: absolute;
            left: 0px;
            right: 0px;
            top: 61px;
            bottom: 143px;

            background: url(.png);

        }

        .hello{
            position: absolute;
            width: 802px;
            height: 650px;
            left: 176px;
            top: 0px;
        }

        .hello > article > nav{
            box-sizing: border-box;
            position: absolute;
            width: 762px;
            height: 72px;
            left: 40px;
            right: 0px;
            top: 0px;

            border-bottom: 1px solid #C2C2C2;

        }
        .hello > article > nav .navtit2{
            position: absolute;
            width: 131px;
            height: 26px;
            left: 0px;
            bottom: 5px;

            background: url(.png);

        }

        .hello > article > nav .smallhello{
            position: absolute;
            width: 180px;
            height: 19px;
            left: 75.21%;
            right: 0%;
            bottom: 5px;
            white-space: nowrap;
     
       
        }
       

        .hello > article > nav .smallhello .smallhello2{
            position: absolute;
            width: 169.07px;
            height: 14px;
            right: 40px;
            top: 1px;

            font-family: Arial, Helvetica, sans-serif; /* 폰트 패밀리 */
            font-style: normal; /* 폰트 스타일 */
            font-weight: 400; /* 폰트 굵기 */
            font-size: 12px;
            line-height: 15px;
            display: flex;
            align-items: center;

            color: #8C8C8C;


        }
        .hello > article > nav .smallhello .smallhello2 > div{
            position: relative;
            right: 3px;
            bottom: 2px;

        }
        .hello > article > nav .smallhello .smallhello2 .highlight{
            position: relative;
            bottom: 1.5px;
            font-weight: bold;
            color: #91BA15;
            
        }

        .hello > article .content > p:nth-child(1){
            position: absolute;
            width: 477.2px;
            height: 40px;
            left: 40px;
            top: 100px;
                    
            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 11.5px;
            line-height: 20px;
            /* or 167% */
            display: flex;
            align-items: center;
                    
            color: #91BA15;

        }
        .hello > article .content > p:nth-child(2){
            position: absolute;
            width: 477.2px;
            height: 40px;
            left: 40px;
            top: 120px;
                    
            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 11.5px;
            line-height: 20px;
            /* or 167% */
            display: flex;
            align-items: center;
                    
            color: #666666;

        }
        .hello > article .content > p:nth-child(3){
            position: absolute;
            width: 477.2px;
            height: 40px;
            left: 40px;
            top: 140px;
                    
            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 11.5px;
            line-height: 20px;
            /* or 167% */
            display: flex;
            align-items: center;
                    
            color: #666666;

        }

        .hello > article .content > p:nth-child(4){
            position: absolute;
            width: 477.2px;
            height: 40px;
            left: 40px;
            top: 170px;
                    
            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 11.5px;
            line-height: 20px;
            /* or 167% */
            display: flex;
            align-items: center;
                    
            color: #91BA15;

        }
        .hello > article .content >img{
            position: absolute;
            width: 759px;
            height: 400px;
            left: 40px;
            top: 200px;
        }





        footer {
            box-sizing: border-box;
            position: absolute;
            margin : 0 auto;
            width : 980px;
            height: 130px;
            top: 1010px;
            left: 470px;
            right: 470px;
            background-color: #F8F9FA; /* 배경색 추가 */
            
            overflow :hidden
        }/* Footer */


        footer > div {
            float :right;
            width :100%;
            height : 120px;
            
        }
    
        /*************************************************************************************************/
        /*************************************************************************************************/
        /********************************************** main  ********************************************/
        /*************************************************************************************************/
        /*************************************************************************************************/
        

    /*footer topline*/
      footer .fline{
        position: relative;
        width: 980px;
        background-repeat: repeat;
        height: 10px;
        background: url('../img/footer_top_line.png');
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
   	<%@ include file="/WEB-INF/_header.jsp" %>
    <div class="subtopbg1">
        <img src="../img/sub_top_bg.jpg" alt="subtopbg1">
        <div class="subtoptit1"><img src="../img/sub_top_tit1.png" alt="subtoptit1"></div>
    </div>
    <main>
        <div class="hello">
            <article>
                <nav>
                    <img src="../img/sub_nav_tit_cate1_tit2.png" class="navtit2" alt="">
                    <div class="smallhello">  
                                     
                        <div class="smallhello2">
                            <div><img src="/img/sub_page_nav_ico.gif" alt=""></div> 
                          HOME > 팜스토리소개 >&nbsp;<span class="highlight">찾아오시는길</span>
                       </div>
                </nav>
                <div class="content">
                    <p>팜스토리</p>
                    <p>주소: 경기도 이천시 잘한다구 신난다동123</p>
                    <p>전화 01-234-5678</p>
                    <p>찾아오시는길</p>
                    <img src="../img/image.png" alt="">

                </div>
             
            
                
            </div>
            <aside>
                <div id="asidesize">
                    <div class="asidegate1"><img src="../img/sub_aside_cate1_tit.png" alt=""></div>
                    <div class="asidebgline"><img src="../img/sub_aside_bg_line.png" alt=""></div>
                <ul class="asidelnb">
                    <li>
                        <li class="lnb1"><a href="/farm/introduction/introduction.do"><img id="lnb1" src="../img/sub_cate1_lnb1.png" alt="cate_lnb1"></a></li>
                        <li class="lnb2"><a href="/farm/introduction/direction.do"><img id="lnb2" src="../img/sub_cate1_lnb2_ov.png" alt="cate_lnb2"></a></li>
                        
                    </li>
                </ul>
                </div>
              </aside>
            </article>
        </div>

    </main>
   <%@ include file="/WEB-INF/_footer.jsp" %>
</div>
</body>
</html>