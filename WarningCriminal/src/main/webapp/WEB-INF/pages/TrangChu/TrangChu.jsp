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
    <div class="intro-content">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="wow fadeInDown" data-wow-offset="0" data-wow-delay="0.1s">
                        <h2 class="h-ultra">Phòng Mạch Huy Trọng</h2>
                    </div>
                    <div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.1s">
                        <h6 class="h-light">Cung cấp <span class="color">chất lượng chăm sóc sức khỏe tốt nhất</span>
                            cho bạn</h6>
                    </div>
                    <div class="well well-trans">
                        <div class="wow fadeInRight" data-wow-delay="0.1s">
                            <ul class="lead-list">
                                <li><span class="fa fa-check fa-2x icon-success"></span> <span
                                        class="list"><strong></strong><br/></span>
                                </li>

                            </ul>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="boxes" class="home-section paddingtop-80">
    <div class="container">
        <div class="row">
            <div class="col-sm-3 col-md-3">
                <div class="wow fadeInUp" data-wow-delay="0.2s">
                    <div class="box text-center">
                        <i class="fa fa-check fa-3x circled bg-skin"></i>
                        <h4 class="h-bold">Khám bệnh</h4>
                        <p>Cung cấp chất lượng chăm sóc sức khỏe tốt nhất cho bạn</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-3 col-md-3">
                <div class="wow fadeInUp" data-wow-delay="0.2s">
                    <div class="box text-center">
                        <i class="fa fa-list-alt fa-3x circled bg-skin"></i>
                        <h4 class="h-bold">Dịch vụ</h4>
                        <p>Cung cấp chất lượng chăm sóc sức khỏe tốt nhất cho bạn</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-3 col-md-3">
                <div class="wow fadeInUp" data-wow-delay="0.2s">
                    <div class="box text-center">
                        <i class="fa fa-user-md fa-3x circled bg-skin"></i>
                        <h4 class="h-bold">Chuyên gia</h4>
                        <p>Cung cấp chất lượng chăm sóc sức khỏe tốt nhất cho bạn</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-3 col-md-3">
                <div class="wow fadeInUp" data-wow-delay="0.2s">
                    <div class="box text-center">
                        <i class="fa fa-hospital-o fa-3x circled bg-skin"></i>
                        <h4 class="h-bold">Chẩn đoán</h4>
                        <p>Cung cấp chất lượng chăm sóc sức khỏe tốt nhất cho bạn</p>
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
                                    <p>Cung cấp chất lượng chăm sóc sức khỏe tốt nhất cho bạn</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="wow lightSpeedIn" data-wow-delay="0.1s">
                                <div class="cta-btn">
                                    <a href="#" class="btn btn-skin btn-lg">Đăng ký lịch khám</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="service" class="home-section nopadding paddingtop-60">
    <div class="container">
        <div class="row">
            <div class="col-sm-6 col-md-6">
                <div class="wow fadeInUp" data-wow-delay="0.2s">
                    <img src="<c:url value="/img/dummy/img-1.jpg"/>" class="img-responsive" alt=""/>
                </div>
            </div>
            <div class="col-sm-3 col-md-3">
                <div class="wow fadeInRight" data-wow-delay="0.1s">
                    <div class="service-box">
                        <div class="service-icon">
                            <span class="fa fa-stethoscope fa-3x"></span>
                        </div>
                        <div class="service-desc">
                            <h5 class="h-light">Kiểm tra sức khỏe</h5>
                            <p>Phòng Mạch Huy Trọng</p>
                        </div>
                    </div>
                </div>
                <div class="wow fadeInRight" data-wow-delay="0.2s">
                    <div class="service-box">
                        <div class="service-icon">
                            <span class="fa fa-wheelchair fa-3x"></span>
                        </div>
                        <div class="service-desc">
                            <h5 class="h-light">Điều dưỡng</h5>
                            <p>Phòng Mạch Huy Trọng</p>
                        </div>
                    </div>
                </div>
                <div class="wow fadeInRight" data-wow-delay="0.3s">
                    <div class="service-box">
                        <div class="service-icon">
                            <span class="fa fa-plus-square fa-3x"></span>
                        </div>
                        <div class="service-desc">
                            <h5 class="h-light">Tiệm thuốc</h5>
                            <p>Phòng Mạch Huy Trọng</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-3 col-md-3">
                <div class="wow fadeInRight" data-wow-delay="0.1s">
                    <div class="service-box">
                        <div class="service-icon">
                            <span class="fa fa-h-square fa-3x"></span>
                        </div>
                        <div class="service-desc">
                            <h5 class="h-light">Chăm sóc Gyn</h5>
                            <p>Phòng Mạch Huy Trọng</p>
                        </div>
                    </div>
                </div>
                <div class="wow fadeInRight" data-wow-delay="0.2s">
                    <div class="service-box">
                        <div class="service-icon">
                            <span class="fa fa-filter fa-3x"></span>
                        </div>
                        <div class="service-desc">
                            <h5 class="h-light">Thần kinh học</h5>
                            <p>Phòng Mạch Huy Trọng</p>
                        </div>
                    </div>
                </div>
                <div class="wow fadeInRight" data-wow-delay="0.3s">
                    <div class="service-box">
                        <div class="service-icon">
                            <span class="fa fa-user-md fa-3x"></span>
                        </div>
                        <div class="service-desc">
                            <h5 class="h-light">Trung tâm giấc ngủ</h5>
                            <p>Phòng Mạch Huy Trọng</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="facilities" class="home-section paddingbot-60">
    <div class="container marginbot-50">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2">
                <div class="wow fadeInDown" data-wow-delay="0.1s">
                    <div class="section-heading text-center">
                        <h2 class="h-bold">Cơ Sở Vật Chất</h2>
                        <p>Cung cấp chất lượng chăm sóc sức khỏe tốt nhất cho bạn</p>
                    </div>
                </div>
                <div class="divider-short"></div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12">
                <div class="wow bounceInUp" data-wow-delay="0.2s">
                    <div id="owl-works" class="owl-carousel">
                        <div class="item">
                            <a href="<c:url value="/img/photo/1.jpg"/>" title="This is an image title"
                               data-lightbox-gallery="gallery1" data-lightbox-hidpi="img/works/1@2x.jpg">
                                <img src="<c:url value="/img/photo/1.jpg"/>" class="img-responsive" alt="img">
                            </a>
                        </div>
                        <div class="item">
                            <a href="<c:url value="/img/photo/2.jpg"/>" title="This is an image title"
                               data-lightbox-gallery="gallery1" data-lightbox-hidpi="img/works/2@2x.jpg">
                                <img src="<c:url value="/img/photo/2.jpg"/>" class="img-responsive " alt="img">
                            </a>
                        </div>
                        <div class="item">
                            <a href="<c:url value="/img/photo/3.jpg"/>" title="This is an image title"
                               data-lightbox-gallery="gallery1" data-lightbox-hidpi="img/works/3@2x.jpg">
                                <img src="<c:url value="/img/photo/3.jpg"/>" class="img-responsive " alt="img">
                            </a>
                        </div>
                        <div class="item">
                            <a href="<c:url value="/img/photo/4.jpg"/>" title="This is an image title"
                               data-lightbox-gallery="gallery1" data-lightbox-hidpi="img/works/4@2x.jpg">
                                <img src="<c:url value="/img/photo/4.jpg"/>" class="img-responsive " alt="img">
                            </a>
                        </div>
                        <div class="item">
                            <a href="<c:url value="/img/photo/5.jpg"/>" title="This is an image title"
                               data-lightbox-gallery="gallery1" data-lightbox-hidpi="img/works/5@2x.jpg">
                                <img src="<c:url value="/img/photo/5.jpg"/>" class="img-responsive " alt="img">
                            </a>
                        </div>
                        <div class="item">
                            <a href="<c:url value="/img/photo/6.jpg"/>" title="This is an image title"
                               data-lightbox-gallery="gallery1" data-lightbox-hidpi="img/works/6@2x.jpg">
                                <img src="<c:url value="/img/photo/6.jpg"/>" class="img-responsive " alt="img">
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="testimonial" class="home-section paddingbot-60 parallax" data-stellar-background-ratio="0.5">
    <div class="carousel-reviews broun-block">
        <div class="container">
            <div class="row">
                <div id="carousel-reviews" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner">
                        <div class="item active">
                            <div class="col-md-4 col-sm-6">
                                <div class="block-text rel zmin">
                                    <a title="" href="#">Ngừa thai khẩn cấp</a>
                                    <div class="mark">Đánh giá: <span class="rating-input"><span data-value="0"
                                                                                                 class="glyphicon glyphicon-star"></span>
                                            <span
                                                    data-value="1" class="glyphicon glyphicon-star"></span><span
                                                data-value="2" class="glyphicon glyphicon-star"></span><span
                                                data-value="3" class="glyphicon glyphicon-star"></span><span
                                                data-value="4" class="glyphicon glyphicon-star-empty"></span><span
                                                data-value="5" class="glyphicon glyphicon-star-empty"></span>  </span>
                                    </div>
                                    <p>Phòng mạch rất tốt. Cơ sở vật chất hiện đại. Đội ngủ từ nhân viên đến y bác sĩ
                                        rất cởi mở, thân thiện, nhiệt huyết, cực kỳ quan tâm bệnh nhân,...</p>
                                    <ins class="ab zmin sprite sprite-i-triangle block"></ins>
                                </div>
                                <div class="person-text rel text-light">
                                    <img src="<c:url value="/img/testimonials/1.jpg"/>" alt=""
                                         class="person img-circle"/>
                                    <a title="" href="#">Anna</a>
                                    <span>Chicago, Illinois</span>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6 hidden-xs">
                                <div class="block-text rel zmin">
                                    <a title="" href="#">Phẫu thuật chỉnh hình</a>
                                    <div class="mark">Đánh giá: <span class="rating-input"><span data-value="0"
                                                                                                 class="glyphicon glyphicon-star"></span><span
                                            data-value="1" class="glyphicon glyphicon-star"></span><span
                                            data-value="2" class="glyphicon glyphicon-star-empty"></span><span
                                            data-value="3" class="glyphicon glyphicon-star-empty"></span><span
                                            data-value="4" class="glyphicon glyphicon-star-empty"></span><span
                                            data-value="5" class="glyphicon glyphicon-star-empty"></span>  </span>
                                    </div>
                                    <p>Phòng mạch rất tốt. Cơ sở vật chất hiện đại. Đội ngủ từ nhân viên đến y bác sĩ
                                        rất cởi mở, thân thiện, nhiệt huyết, cực kỳ quan tâm bệnh nhân,...</p>
                                    <ins class="ab zmin sprite sprite-i-triangle block"></ins>
                                </div>
                                <div class="person-text rel text-light">
                                    <img src="<c:url value="/img/testimonials/2.jpg"/>" alt=""
                                         class="person img-circle"/>
                                    <a title="" href="#">Matthew G</a>
                                    <span>San Antonio, Texas</span>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6 hidden-sm hidden-xs">
                                <div class="block-text rel zmin">
                                    <a title="" href="#">Tư vấn y tế</a>
                                    <div class="mark">Đánh giá: <span class="rating-input"><span data-value="0"
                                                                                                 class="glyphicon glyphicon-star"></span><span
                                            data-value="1" class="glyphicon glyphicon-star"></span><span
                                            data-value="2" class="glyphicon glyphicon-star"></span><span
                                            data-value="3" class="glyphicon glyphicon-star"></span><span
                                            data-value="4" class="glyphicon glyphicon-star"></span><span
                                            data-value="5" class="glyphicon glyphicon-star"></span>  </span></div>
                                    <p>Phòng mạch rất tốt. Cơ sở vật chất hiện đại. Đội ngủ từ nhân viên đến y bác sĩ
                                        rất cởi mở, thân thiện, nhiệt huyết, cực kỳ quan tâm bệnh nhân,...</p>
                                    <ins class="ab zmin sprite sprite-i-triangle block"></ins>
                                </div>
                                <div class="person-text rel text-light">
                                    <img src="<c:url value="/img/testimonials/3.jpg"/>" alt=""
                                         class="person img-circle"/>
                                    <a title="" href="#">Scarlet Smith</a>
                                    <span>Dallas, Texas</span>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="col-md-4 col-sm-6">
                                <div class="block-text rel zmin">
                                    <a title="" href="#">Thuốc tránh thai</a>
                                    <div class="mark">Đánh giá: <span class="rating-input"><span data-value="0"
                                                                                                 class="glyphicon glyphicon-star"></span><span
                                            data-value="1" class="glyphicon glyphicon-star"></span><span
                                            data-value="2" class="glyphicon glyphicon-star"></span><span
                                            data-value="3" class="glyphicon glyphicon-star"></span><span
                                            data-value="4" class="glyphicon glyphicon-star-empty"></span><span
                                            data-value="5" class="glyphicon glyphicon-star-empty"></span>  </span>
                                    </div>
                                    <p>Phòng mạch rất tốt. Cơ sở vật chất hiện đại. Đội ngủ từ nhân viên đến y bác sĩ
                                        rất cởi mở, thân thiện, nhiệt huyết, cực kỳ quan tâm bệnh nhân,...</p>
                                    <ins class="ab zmin sprite sprite-i-triangle block"></ins>
                                </div>
                                <div class="person-text rel text-light">
                                    <img src="<c:url value="/img/testimonials/4.jpg"/>" alt=""
                                         class="person img-circle"/>
                                    <a title="" href="#">Lucas Thompson</a>
                                    <span>Austin, Texas</span>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6 hidden-xs">
                                <div class="block-text rel zmin">
                                    <a title="" href="#">Phóng xạ học</a>
                                    <div class="mark">Đánh giá: <span class="rating-input"><span data-value="0"
                                                                                                 class="glyphicon glyphicon-star"></span><span
                                            data-value="1" class="glyphicon glyphicon-star"></span><span
                                            data-value="2" class="glyphicon glyphicon-star-empty"></span><span
                                            data-value="3" class="glyphicon glyphicon-star-empty"></span><span
                                            data-value="4" class="glyphicon glyphicon-star-empty"></span><span
                                            data-value="5" class="glyphicon glyphicon-star-empty"></span>  </span>
                                    </div>
                                    <p>Phòng mạch rất tốt. Cơ sở vật chất hiện đại. Đội ngủ từ nhân viên đến y bác sĩ
                                        rất cởi mở, thân thiện, nhiệt huyết, cực kỳ quan tâm bệnh nhân,...</p>
                                    <ins class="ab zmin sprite sprite-i-triangle block"></ins>
                                </div>
                                <div class="person-text rel text-light">
                                    <img src="<c:url value="/img/testimonials/5.jpg"/>" alt=""
                                         class="person img-circle"/>
                                    <a title="" href="#">Ella Mentree</a>
                                    <span>Fort Worth, Texas</span>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6 hidden-sm hidden-xs">
                                <div class="block-text rel zmin">
                                    <a title="" href="#">Tổn thương cổ tử cung</a>
                                    <div class="mark">Đánh giá: <span class="rating-input"><span data-value="0"
                                                                                                 class="glyphicon glyphicon-star"></span><span
                                            data-value="1" class="glyphicon glyphicon-star"></span><span
                                            data-value="2" class="glyphicon glyphicon-star"></span><span
                                            data-value="3" class="glyphicon glyphicon-star"></span><span
                                            data-value="4" class="glyphicon glyphicon-star"></span><span
                                            data-value="5" class="glyphicon glyphicon-star"></span>  </span></div>
                                    <p>Phòng mạch rất tốt. Cơ sở vật chất hiện đại. Đội ngủ từ nhân viên đến y bác sĩ
                                        rất cởi mở, thân thiện, nhiệt huyết, cực kỳ quan tâm bệnh nhân,...</p>
                                    <ins class="ab zmin sprite sprite-i-triangle block"></ins>
                                </div>
                                <div class="person-text rel text-light">
                                    <img src="<c:url value="/img/testimonials/6.jpg"/>" alt=""
                                         class="person img-circle"/>
                                    <a title="" href="#">Suzanne Adam</a>
                                    <span>Detroit, Michigan</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <a class="left carousel-control" href="#carousel-reviews" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                    </a>
                    <a class="right carousel-control" href="#carousel-reviews" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>
