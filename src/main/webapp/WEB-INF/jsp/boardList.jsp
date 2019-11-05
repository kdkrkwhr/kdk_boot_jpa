<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- ##### Header Area Start ##### -->
<%@ include file="./header.jsp"%>
<!-- ##### Header Area End ##### -->

    <!-- ##### Breadcumb Area Start ##### -->
    <div class="breadcumb-area">
        <!-- Breadcumb -->
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/">Home</a></li>
                <li class="breadcrumb-item">스터디 모집</li>
                <li class="breadcrumb-item active" aria-current="page">${boardCat }</li>
            </ol>
        </nav>
    </div>
    <!-- ##### Breadcumb Area End ##### -->

    <!-- ##### Catagory ##### -->
    <div class="clever-catagory bg-img d-flex align-items-center justify-content-center p-3" style="background-image: url('/resources/img/bg-img/bg2.jpg');">
        <h3>${boardCat }</h3>
    </div>

    <!-- ##### Popular Course Area Start ##### -->
    <section class="popular-courses-area section-padding-100">
        <div class="container">
            <div class="row">

			<c:forEach var = "board" items = "${boardList }">
                <!-- Single Popular Course -->
                <div class="col-12 col-md-6 col-lg-12" style="height: 250px;" onclick="boardDetailAction(${board.boardNo});">
                    <div class="single-popular-course mb-100 wow fadeInUp" data-wow-delay="250ms">
                        <!-- Course Content -->
                        <div class="course-content">
                            <h4>${board.subject }</h4>
                            <div class="meta d-flex align-items-center">
                                <a href="#">${board.memberNo }</a>
                                <span><i class="fa fa-circle" aria-hidden="true"></i></span>
                                <a href="#">${board.boardCat }</a>
                            </div>
                            <p style="height: 50px;overflow:auto;">${board.content }</p>
                        </div>
                        <!-- Seat Rating Fee -->
                        <div class="seat-rating-fee d-flex justify-content-between">
                            <div class="seat-rating h-100 d-flex align-items-center">
                                <div class="seat">
                                    <i class="fa fa-user" aria-hidden="true"></i> 0 / ${board.totalPersonCnt }
                                </div>
                                <div class="rating">
                                    <i class="fa fa-star" aria-hidden="true"></i> ${board.regDate }
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
			</c:forEach>

            <div class="row">
                <div class="col-12">
                    <div class="load-more text-center wow fadeInUp" data-wow-delay="1000ms">
                        <a href="/boardRegister" class="btn clever-btn btn-2">게시물 등록</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Popular Course Area End ##### -->

<!-- ##### Footer Area Start ##### -->
<%@ include file="./footer.jsp"%>
<!-- ##### Footer Area End ##### -->