<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>Hello</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
</head>
<body>
<div class="container-fluid my-3">
    <h2>${cateName}</h2>
    ${cateDesc}
</div>
<div class="container-fluid my-5">
    <div class="border border-3 px-4 py-2">
            <span class="d-flex p-2 bd-highlight">
                1-4 of over 80,000 results for
                <span class="text-danger font-weight-bold">&nbsp${cateName}</span>
            </span>
    </div>
    <div class="container-fluid my-3">
        <!-- item list를 불러오도록 편집! -->
        <c:set var="categoryGroup" value="${cateGroup}"/>
        <c:forEach var="items" items="${items}" begin="0">
            <c:if test="${items.cateGroup eq categoryGroup}">
                <figure class="figure">
                    <a href="/orders?cateID=${items.itemID}">
                        <figure class="figure">
                            <img src="/resources/img/orders/${cateName}/${items.cateName}${items.itemID}.PNG"
                                 class="figure-img img-fluid rounded">
                            <figcaption class="figure-caption">${items.itemName}</figcaption>
                        </figure>
                    </a>
                </figure>
            </c:if>
        </c:forEach>
    </div>
</div>
</body>
</html>