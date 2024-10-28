<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info=""
    %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>관리 페이지</title>

    <!-- Bootstrap CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    
    <style>
        body, html {
            margin: 0;
            padding: 0;
            height: 100%;
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }

        /* 상단 고정 헤더 */
        .header {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            background-color: #2D3539;
            color: white;
            padding: 15px;
            display: flex;
            justify-content: space-between;
            z-index: 1000;
        }

        /* 좌측 고정 사이드바 */
        .sidebar {
            position: fixed;
            top: 0;
            left: 0;
            width: 250px;
            height: 100%;
            background-color: #414B5A;
            padding-top: 70px;
            z-index: 999;
            color: white;
            overflow-y: auto;
        }

        .sidebar h3 {
            padding: 15px;
            text-align: center;
            background-color: #414B5A;
        }

        /* 링크와 아코디언 버튼 모두 같은 스타일 적용 */
        .sidebar a, .accordion-button {
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            display: block;
            background-color: #414B5A;
            border: 1px solid #354b5e; /* 테두리 통일 */
            border-radius: 0; /* 직각 처리 */
        }

        .sidebar a:hover, .accordion-button:hover {
            background-color: #354b5e;
        }

        /* 메인 콘텐츠 */
        .main-content {
            margin-left: 250px;
            padding: 85px 20px;
            background-color: #e9ecef;
            min-height: 100vh;
            display: flex;
            gap: 20px;
            flex-wrap: wrap;
        }

        .content-box {
            background-color: white;
            width: calc(50% - 10px);
            min-height: 200px;
            padding: 20px;
            box-sizing: border-box;
        }

        /* 아코디언 펼쳤을 때도 동일한 테두리 유지 */
        .accordion-button:not(.collapsed) {
            background-color: #414B5A;
            border-radius: 0; /* 직각 처리 */
        }

        /* 아코디언 하위 메뉴 색상 및 테두리 */
        .accordion-body {
            background-color: #414B5A;
        }

        .accordion-body a {
            padding-left: 20px;
            background-color: transparent;
            color: white;
            border-left: 1px solid #354b5e; /* 하위 항목도 테두리 적용 */
            border-right: 1px solid #354b5e;
            border-radius: 0; /* 직각 처리 */
        }

        .accordion-body a:hover {
            background-color: #354b5e;
        }

        /* 회원 관리 메뉴에 테두리 추가 */
        .sidebar a:last-of-type {
            border: 1px solid #354b5e; /* 테두리 통일 */
            border-radius: 0; /* 직각 처리 */
        }

    </style>
</head>
<body>

    <!-- 상단 고정 헤더 -->
    <div class="header">
        <span>스마트스토어 센터</span>
        <span>로그인 상태</span>
    </div>

    <!-- 좌측 고정 사이드바 -->
    <div class="sidebar">
        <h3>관리자 명</h3>
        <div class="accordion" id="accordionSidebar">
            <!-- 상품 관리 -->
            <div class="accordion-item">
                <h2 class="accordion-header" id="headingOne">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
                        상품 관리
                    </button>
                </h2>
                <div id="collapseOne" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionSidebar">
                    <div class="accordion-body">
                        <a href="#">상품 조회/수정</a>
                        <a href="#">상품 등록</a>
                    </div>
                </div>
            </div>

            <!-- 판매 관리 -->
            <div class="accordion-item">
                <h2 class="accordion-header" id="headingTwo">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                        판매 관리
                    </button>
                </h2>
                <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionSidebar">
                    <div class="accordion-body">
                        <a href="#">판매 리스트</a>
                    </div>
                </div>
            </div>

            <!-- 문의 관리 -->
            <div class="accordion-item">
                <h2 class="accordion-header" id="headingFour">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                        문의 관리
                    </button>
                </h2>
                <div id="collapseFour" class="accordion-collapse collapse" aria-labelledby="headingFour" data-bs-parent="#accordionSidebar">
                    <div class="accordion-body">
                        <a href="#">문의 리스트</a>
                    </div>
                </div>
            </div>

            <!-- 리뷰 관리 -->
            <div class="accordion-item">
                <h2 class="accordion-header" id="headingFive">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                        리뷰 관리
                    </button>
                </h2>
                <div id="collapseFive" class="accordion-collapse collapse" aria-labelledby="headingFive" data-bs-parent="#accordionSidebar">
                    <div class="accordion-body">
                        <a href="#">리뷰 리스트</a>
                    </div>
                </div>
            </div>

            <!-- 공지사항 관리 -->
            <div class="accordion-item">
                <h2 class="accordion-header" id="headingSix">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
                        공지사항 관리
                    </button>
                </h2>
                <div id="collapseSix" class="accordion-collapse collapse" aria-labelledby="headingSix" data-bs-parent="#accordionSidebar">
                    <div class="accordion-body">
                        <a href="#">공지사항 리스트</a>
                        <a href="#">공지사항 등록</a>
                    </div>
                </div>
            </div>

            <!-- 회원 관리 -->
            <a href="#">회원 관리</a>
        </div>
    </div>

    <!-- 메인 콘텐츠 영역 -->
    <div class="main-content">
        <div class="content-box">컨텐츠 공간 1</div>
        <div class="content-box">컨텐츠 공간 2</div>
        <div class="content-box">컨텐츠 공간 3</div>
        <div class="content-box">컨텐츠 공간 4</div>
    </div>

</body>
</html>