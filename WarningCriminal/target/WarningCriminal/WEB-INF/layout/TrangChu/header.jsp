<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
    <div class="top-area">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-md-6">
                    <p class="bold text-left">Phòng chống tội phạm </p>
                </div>
                <div class="col-sm-6 col-md-6">
                    <p class="bold text-right">Liên hệ (+84) 77 5398 511</p>
                </div>
            </div>
        </div>
    </div>
    <div class="container navigation">

        <div class="navbar-header page-scroll">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                <i class="fa fa-bars"></i>
            </button>

        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#doctor">Trang chủ</a></li>
                <c:if test="${pageContext.request.userPrincipal.name != null}">
                    <li><a href="#guitintinhbao">Gửi Tình Báo</a></li>
                </c:if>
               ${pageContext.request}
                <li><a href="#doctor">Tội Phạm Truy Nã</a></li>

                <li><a href="#facilities">Đăng tin truy nã</a></li>
                <li><a href="${pageContext.request.contextPath}/login">Login</a></li>
            </ul>
        </div>
    </div>
</nav>