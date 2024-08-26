<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>상품목록</title>
    <link rel="stylesheet" href="/farm/css/admin/product/list.css">
</head>
<body>
    <div id = "wrapper">
        
        <%@ include file="../_header.jsp" %>

        <main>
            <aside>
                <h3 class="main_function"><p>주요기능</p></h3>
                <ul class="aside-list">
                    <li>
                        <p class="tit">상품관리</p>
                        <a href="#" class="contents1">┗ 상품목록</a><br>
                        <a href="#" class="contents2">┗ 상품등록</a>
                    </li>
                    <li>
                        <p class="tit">주문관리</p>
                        <a href="#" class="contents">┗ 주문목록</a>
                    </li>
                    <li>
                        <p class="tit">회원관리</p>
                        <a href="#" class="contents">┗ 회원목록</a>
                    </li>
                </ul>
            </aside>

            <section>
                <h4 class="product_list">상품목록</h4>
                <article class="h1">
                    <table>
                        <tbody>      
                            <tr>
                                <th><input type="checkbox"></th>
                                <th>사진</th>
                                <th>상품번호</th>  
                                <th>상품명</th>  
                                <th>구분</th>
                                <th>가격</th>
                                <th>재고</th>
                                <th>등록일</th>
                            </tr>
                            <tr>
                                <td><data value=""><input type="checkbox"></data></td>
                                <td><data value=""><img src="/farm/img/admin/sample_item1.jpg"></data></td>
                                <td><data value="">1011</data></td>
                                <td><data value="">사과 500g</data></td>
                                <td><data value="">과일</data></td>
                                <td><data value="">4,000원</data></td>
                                <td><data value="">100</data></td>
                                <td><data value="">2023-01-01</data></td>
                            </tr>
                        </tbody>
                    </table>
                    <div id="container">
                        <p class="select_del">선택삭제</p>
                        <a href="#" class="reg">상품등록</a>
                    </div>
                    <div class="page_box">
                        <a href="#">
                            <span class="underline">[1]</span>
                            <span>[2]</span>
                            <span>[3]</span>
                            <span>[4]</span>
                            <span>[5]</span>
                        </a>
                    </div>
                </article>
            </section>
        </main>
		<%@ include file="../_footer.jsp" %>
    </div>
</body>
</html>