<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" sizes="16x16" href="<c:url value="/admin-resources/plugins/images/logo.png"/>">
    <title>
        <tiles:insertAttribute name="title"/>
    </title>
    <!-- css -->
    <link href="<c:url value="/TrangChu/css/bootstrap.min.css"/>" rel="stylesheet" type="text/css">
    <link href="<c:url value="/TrangChu/font-awesome/css/font-awesome.min.css"/>" rel="stylesheet" type="text/css"/>
    <link href="<c:url value="/TrangChu/plugins/cubeportfolio/css/cubeportfolio.min.css"/>" rel="stylesheet"
          type="text/css">
    <link href="<c:url value="/TrangChu/css/nivo-lightbox.css"/>" rel="stylesheet"/>
    <link href="<c:url value="/TrangChu/css/nivo-lightbox-theme/default/default.css"/>" rel="stylesheet"
          type="text/css"/>
    <link href="<c:url value="/TrangChu/css/owl.carousel.css"/>" rel="stylesheet" media="screen"/>
    <link href="<c:url value="/TrangChu/css/owl.theme.css"/>" rel="stylesheet" media="screen"/>
    <link href="<c:url value="/TrangChu/css/animate.css"/>" rel="stylesheet"/>
    <link href="<c:url value="/TrangChu/css/style.css"/>" rel="stylesheet">
    <!-- boxed bg -->
    <link id="bodybg" href="<c:url value="/TrangChu/bodybg/bg1.css"/>" rel="stylesheet" type="text/css"/>
    <!-- template skin -->
    <link id="t-colors" href="<c:url value="/TrangChu/color/default.css"/>" rel="stylesheet">
</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-custom">
<div id="wrapper">
    <tiles:insertAttribute name="header"/>
    <tiles:insertAttribute name="content"/>
    <tiles:insertAttribute name="footer"/>
</div>
<a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>
<!-- Core JavaScript Files -->
<script src="<c:url value="/TrangChu/js/jquery.min.js"/>"/></script>
<script src="<c:url value="/TrangChu/js/bootstrap.min.js"/>"/></script>
<script src="<c:url value="/TrangChu/js/jquery.easing.min.js"/>"/></script>
<script src="<c:url value="/TrangChu/js/wow.min.js"/>"/></script>
<script src="<c:url value="/TrangChu/js/jquery.scrollTo.js"/>"/></script>
<script src="<c:url value="/TrangChu/js/jquery.appear.js"/>"/></script>
<script src="<c:url value="/TrangChu/js/stellar.js"/>"/></script>
<script src="<c:url value="/TrangChu/plugins/cubeportfolio/js/jquery.cubeportfolio.min.js"/>"/></script>
<script src="<c:url value="/TrangChu/js/owl.carousel.min.js"/>"/></script>
<script src="<c:url value="/TrangChu/js/nivo-lightbox.min.js"/>"/></script>
<script src="<c:url value="/TrangChu/js/custom.js"/>"/></script>
</body>
</html>