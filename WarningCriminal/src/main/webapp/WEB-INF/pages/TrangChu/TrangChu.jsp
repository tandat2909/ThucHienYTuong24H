<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../LibraryJSP.jsp" %>


<section id="doctor" class="home-section bg-gray paddingbot-60">
    <div class="container marginbot-50">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2">
                <div class="wow fadeInDown" data-wow-delay="0.1s">
                    <div class="section-heading text-center">
                        <h2 class="h-bold">Danh sách tội phạm</h2>
                        <p>Cung cấp thông thin tội phạm</p>
                    </div>
                </div>
                <div class="divider-short"></div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">

                <div id="filters-container" class="cbp-l-filters-alignLeft">
                    <div data-filter="*" class="cbp-filter-item-active cbp-filter-item">
                        Tất cả (
                        <div class="cbp-filter-counter"></div>
                        )
                    </div>
                    <div data-filter=".cardiologist" class="cbp-filter-item">
                        Tội phạm ít nghiêm trọng (
                        <div class="cbp-filter-counter"></div>
                        )
                    </div>
                    <div data-filter=".psychiatrist" class="cbp-filter-item">
                        Tội phạm nghiêm trọng (
                        <div class="cbp-filter-counter"></div>
                        )
                    </div>
                    <div data-filter=".neurologist" class="cbp-filter-item">
                        Tội phạm rất nghiêm trọng (
                        <div class="cbp-filter-counter"></div>
                        )
                    </div>
                </div>
                <div id="grid-container" class="cbp-l-grid-team">
                    <ul>
                        <%--                        <jsp:useBean id="lstoiham" scope="request" type="java.util.List<com.WarningCriminal.springmvc.pojo.Toipham>"/>--%>
                        <c:forEach items="${lstoipham}" var="tp">
                            <li class="cbp-item psychiatrist">
                                <a href="${pageContext.request.contextPath}/chitiettoipham?idtp=${tp.id}" class="cbp-caption cbp-singlePage">
                                    <div class="cbp-caption-defaultWrap">
                                        <img src="<c:url value="/img/team/1.jpg"/>" alt="" width="100%">
                                    </div>
                                    <div class="cbp-caption-activeWrap">
                                        <div class="cbp-l-caption-alignCenter">
                                            <div class="cbp-l-caption-body">
                                                <div class="cbp-l-caption-text">XEM THÔNG TIN</div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                                <a href="${pageContext.request.contextPath}/chitiettoipham?idtp= ${tp.id}"
                                   class="cbp-singlePage cbp-l-grid-team-name">${tp.hovaTen}</a>
                                <div class="cbp-l-grid-team-position">${tp.mucdo.tenMucDo}</div>
                                <div class="cbp-l-member-img">
                                    <img src="img/team/1.jpg" alt="">
                                </div>


                            </li>

                        </c:forEach>

                    </ul>
                </div>
            </div>
        </div>
    </div>

</section>

<section id="intro" class="intro">
    <div class="intro-content" id="guitintinhbao">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="wow fadeInDown" data-wow-offset="0" data-wow-delay="0.1s">
                        <h2 class="h-ultra">Tình báo tội phạm</h2>
                    </div>
                    <div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.1s">
                        <h6 class="h-light">Nơi cập nhật <span class="color">cập nhật thông tin tội phạm và tình báo</span> cho bạn</h6>
                    </div>
                    <div class="well well-trans">
                        <div class="wow fadeInRight" data-wow-delay="0.1s">
                            <ul class="lead-list">
                                <li><span class="fa fa-check fa-2x icon-success"></span> <span class="list"><strong>Cảnh sát cập nhật thông tin mới nhất về tình hình trật tự và lệnh tuy nã</strong><br/>Các thông tin tội phạm sẽ được cấp nhật hàng ngày</span>
                                </li>
                                <li><span class="fa fa-check fa-2x icon-success"></span> <span class="list"><strong>Câp nhật thông tin hằng ngày</strong><br/>Người dân tiếp nhận thông tin, cảnh giác và tình báo nếu phát hiện tội phạm</span>
                                </li>
                                <li><span class="fa fa-check fa-2x icon-success"></span> <span class="list"><strong>Bí mật tuyệt đối cho người dân</strong><br/>Mọi thông tin người dân tình báo đều được bí mật</span>
                                </li>
                            </ul>

                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="form-wrapper">
                        <div class="wow fadeInRight" data-wow-duration="2s" data-wow-delay="0.2s">
                            <div class="panel panel-skin">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><span class="fa fa-pencil-square-o"></span>Gửi Tình Báo Tội Phạm Đến Cảnh Sát</h3>
                                </div>
                                <div class="panel-body">
                                    <%--@elvariable id="tintinhbao" type="com.WarningCriminal.springmvc.modelView.TinTinhBao"--%>
                                    <form role="form" class="lead" >
                                        <div class="row">
                                            <div class="col-xs-6 col-sm-6 col-md-6">
                                                <div class="form-group">
                                                    <label>Họ và Tên</label>
                                                    <input disabled type="text" name="last_name" value="${account.userName}" id="last_name" class="form-control input-md">
                                                </div>
                                                <div class="form-group">
                                                    <label>Tên Tội Phạm</label>
                                                    <input  type="text" name="last_name" value="" id="tp" class="form-control input-md">
                                                </div>
                                            </div>

                                        </div>
                                        <div class="row">
                                            <div class="col-xs-10 col-sm-10 col-md-10">
                                                <div class="form-group">
                                                    
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-xs-10 col-sm-10 col-md-10">
                                                <div class="form-group">
                                                    <label>Thông tin tình báo</label>
                                                    <textarea name="Text1" cols="40" rows="10"></textarea>
                                                </div>
                                            </div>
                                        </div>
                                        <input type="submit" value="Gửi" class="btn btn-skin btn-block btn-lg">
                                        <p class="lead-footer">Cảnh sát sẽ sớm liên hệ với bạn qua số điện thoại và email để xác nhận thông tin</p>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>



<section id="callaction" class="home-section paddingtop-40">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="callaction bg-gray">
                    <div class="row">
                        <div class="col-md-8">
                            <div class="wow fadeInUp" data-wow-delay="0.1s">
                                <div class="cta-text">
                                    <h5><b>Trong trường hợp khẩn cấp? Bạn có cần giúp đỡ ngay bây giờ?</b></h5>
                                    <p>Cảnh sát địa phương sẽ tiếp nhận thông tin và giúp đỡ bạn</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="wow lightSpeedIn" data-wow-delay="0.1s">
                                <div class="cta-btn">
                                    <a href="#" class="btn btn-skin btn-lg">Báo khẩn</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


