<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: kpu
  Date: 2021/11/28
  Time: 12:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>이용 가이드</title>
    <link href="/docs/5.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="apple-touch-icon" href="/docs/5.1/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
    <link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
    <link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
    <link rel="manifest" href="/docs/5.1/assets/img/favicons/manifest.json">
    <link rel="mask-icon" href="/docs/5.1/assets/img/favicons/safari-pinned-tab.svg" color="#7952b3">
    <link rel="icon" href="/docs/5.1/assets/img/favicons/favicon.ico">
    <meta name="theme-color" content="#7952b3">
</head>
<style>
    .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
    }

    @media (min-width: 768px) {
        .bd-placeholder-img-lg {
            font-size: 3.5rem;
        }
    }
</style>
<%@ include file="/view/components/header.jsp"%>
<body>
<div class="container py-3">
    <h2 class="display-6 text-center mb-4">이용 요금</h2>
    <div class="row row-cols-1 row-cols-md-3 mb-3 text-center">
        <div class="col">
            <div class="card mb-4 rounded-3 shadow-sm">
                <div class="card-header py-3">
                    <h4 class="my-0 fw-normal">심야이용권</h4>
                </div>
                <div class="card-body">
                    <h1 class="card-title pricing-card-title">After4</h1>
                    <ul class="list-unstyled mt-3 mb-4">
                        <li>어른 48,000원 <fmt:formatNumber value="40.78" type="currency" currencySymbol="$" /></li>
                        <li>청소년 42,000원 <fmt:formatNumber value="35.68" type="currency" currencySymbol="$" /></li>
                        <li>어린이 36,000원 <fmt:formatNumber value="30.59" type="currency" currencySymbol="$" /></li>
                        <li>베이비 15,000원 <fmt:formatNumber value="12.74" type="currency" currencySymbol="$" /></li>
                    </ul>

                    <button type="button" class="w-100 btn btn-lg btn-outline-primary" data-toggle="modal" data-target=".bd-example-modal-lg">예매 하기</button>

                    <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="container">
                                    <div class="py-5 text-center">
                                        <h2>체크아웃 양식</h2>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-4 order-md-2 mb-4">
                                            <h4 class="d-flex justify-content-between align-items-center mb-3">
                                                <span class="text-muted">장바구니</span>
                                                <span class="badge badge-secondary badge-pill">3</span>
                                            </h4>
                                            <ul class="list-group mb-3">
                                                <li class="list-group-item d-flex justify-content-between lh-condensed">
                                                    <div>
                                                        <h6 class="my-0">어른 1매</h6>
                                                        <small class="text-muted">After4</small>
                                                    </div>
                                                    <span class="text-muted">48,000원</span>
                                                </li>
                                                <li class="list-group-item d-flex justify-content-between lh-condensed">
                                                    <div>
                                                        <h6 class="my-0">청소년 1매</h6>
                                                        <small class="text-muted">After4</small>
                                                    </div>
                                                    <span class="text-muted">42,000원</span>
                                                </li>
                                                <li class="list-group-item d-flex justify-content-between lh-condensed">
                                                    <div>
                                                        <h6 class="my-0">어린이 1매</h6>
                                                        <small class="text-muted">After4</small>
                                                    </div>
                                                    <span class="text-muted">36,000원</span>
                                                </li>
                                                <li class="list-group-item d-flex justify-content-between bg-light">
                                                    <div class="text-success">
                                                        <h6 class="my-0">프로모션 코드</h6>
                                                        <small>HAPPYFRONT</small>
                                                    </div>
                                                    <span class="text-success">-10,000원</span>
                                                </li>
                                                <li class="list-group-item d-flex justify-content-between">
                                                    <span>총 합 (원)</span>
                                                    <strong>116,000원</strong>
                                                </li>
                                            </ul>

                                            <form class="card p-2">
                                                <div class="input-group">
                                                    <input type="text" class="form-control" 프로모션 코드="Promo code">
                                                    <div class="input-group-append">
                                                        <button type="submit" class="btn btn-secondary">입력</button>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                        <div class="col-md-8 order-md-1">
                                            <h4 class="mb-3">예매 정보</h4>
                                            <form class="needs-validation" novalidate="">
                                                <div class="row">
                                                    <div class="col-md-6 mb-3">
                                                        <label for="firstName">성</label>
                                                        <input type="text" class="form-control" id="firstName" placeholder="" value="" required="">
                                                        <div class="invalid-feedback">
                                                            성을 입력해주세요
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6 mb-3">
                                                        <label for="lastName">이름</label>
                                                        <input type="text" class="form-control" id="lastName" placeholder="" value="" required="">
                                                        <div class="invalid-feedback">
                                                            이름을 입력해주세요
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="mb-3">
                                                    <label for="username">닉네임</label>
                                                    <div class="input-group">
                                                        <div class="input-group-prepend">
                                                            <span class="input-group-text">@</span>
                                                        </div>
                                                        <input type="text" class="form-control" id="username" placeholder="닉네임" required="">
                                                        <div class="invalid-feedback" style="width: 100%;">
                                                            Your username is required.
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="mb-3">
                                                    <label for="email">이메일 <span class="text-muted">(옵션)</span></label>
                                                    <input type="email" class="form-control" id="email" placeholder="you@happyfront.com">
                                                    <div class="invalid-feedback">
                                                        이메일을 입력해주세요
                                                    </div>
                                                </div>

                                                <div class="mb-3">
                                                    <label for="address">주소</label>
                                                    <input type="text" class="form-control" id="address" placeholder="서울 특별시 성북구 ..." required="">
                                                    <div class="invalid-feedback">
                                                        주소를 입력해주세요
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-5 mb-3">
                                                        <label for="country">지역</label>
                                                        <select class="custom-select d-block w-100" id="country" required="">
                                                            <option value="">선택하기</option>
                                                            <option>서울 특별시</option>
                                                        </select>
                                                        <div class="invalid-feedback">
                                                            지역을 선택해주세요
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4 mb-3">
                                                        <label for="state">행정구</label>
                                                        <select class="custom-select d-block w-100" id="state" required="">
                                                            <option value="">선택하기</option>
                                                            <option>성북구</option>
                                                            <option>강남구</option>
                                                        </select>
                                                        <div class="invalid-feedback">
                                                            행정구를 입력해주세요
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3 mb-3">
                                                        <label for="zip">우편번호</label>
                                                        <input type="text" class="form-control" id="zip" placeholder="" required="">
                                                        <div class="invalid-feedback">
                                                            우편번호를 입력해주세요.
                                                        </div>
                                                    </div>
                                                </div>
                                                <hr class="mb-4">
                                                <div class="custom-control custom-checkbox">
                                                    <input type="checkbox" class="custom-control-input" id="same-address">
                                                    <label class="custom-control-label" for="same-address">온라인 영수증을 받으시겠습니까?</label>
                                                </div>
                                                <div class="custom-control custom-checkbox">
                                                    <input type="checkbox" class="custom-control-input" id="save-info">
                                                    <label class="custom-control-label" for="save-info">기본 정보로 저장하기</label>
                                                </div>
                                                <hr class="mb-4">

                                                <h4 class="mb-3">Payment</h4>

                                                <div class="d-block my-3">
                                                    <div class="custom-control custom-radio">
                                                        <input id="credit" name="paymentMethod" type="radio" class="custom-control-input" checked="" required="">
                                                        <label class="custom-control-label" for="credit">카드 결제</label>
                                                    </div>
                                                    <div class="custom-control custom-radio">
                                                        <input id="debit" name="paymentMethod" type="radio" class="custom-control-input" required="">
                                                        <label class="custom-control-label" for="debit">무통장 입금</label>
                                                    </div>
                                                    <div class="custom-control custom-radio">
                                                        <input id="paypal" name="paymentMethod" type="radio" class="custom-control-input" required="">
                                                        <label class="custom-control-label" for="paypal">간편 결제</label>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6 mb-3">
                                                        <label for="cc-name">카드 이름</label>
                                                        <input type="text" class="form-control" id="cc-name" placeholder="" required="">
                                                        <small class="text-muted">카드에 표시된 전체 이름</small>
                                                        <div class="invalid-feedback">
                                                            이름을 적어주세요.
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6 mb-3">
                                                        <label for="cc-number">신용카드 번호</label>
                                                        <input type="text" class="form-control" id="cc-number" placeholder="" required="">
                                                        <div class="invalid-feedback">
                                                            신용카드 번호를 입력해주세요.
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-3 mb-3">
                                                        <label for="cc-expiration">Expiration</label>
                                                        <input type="text" class="form-control" id="cc-expiration" placeholder="" required="">
                                                        <div class="invalid-feedback">
                                                            데이터를 입력해주세요.
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3 mb-3">
                                                        <label for="cc-expiration">CVV</label>
                                                        <input type="text" class="form-control" id="cc-cvv" placeholder="" required="">
                                                        <div class="invalid-feedback">
                                                            데이터를 입력해주세요.
                                                        </div>
                                                    </div>
                                                </div>
                                                <hr class="mb-4">
                                                <button class="btn btn-primary btn-lg btn-block" type="submit">결제 계속하기</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
<%--                    <button type="button" class="w-100 btn btn-lg btn-outline-primary">예매하기</button>--%>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card mb-4 rounded-3 shadow-sm">
                <div class="card-header py-3">
                    <h4 class="my-0 fw-normal">일반이용권</h4>
                </div>
                <div class="card-body">
                    <h1 class="card-title pricing-card-title">1Day</h1>
                    <ul class="list-unstyled mt-3 mb-4">
                        <li>어른 59,000원 <fmt:formatNumber value="50.13" type="currency" currencySymbol="$" /></li>
                        <li>청소년 52,000원 <fmt:formatNumber value="44.18" type="currency" currencySymbol="$" /></li>
                        <li>어린이 47,000원 <fmt:formatNumber value="44.18" type="currency" currencySymbol="$" /></li>
                        <li>베이비 15,000원 <fmt:formatNumber value="12.74" type="currency" currencySymbol="$" /></li>
                    </ul>
                    <button type="button" class="w-100 btn btn-lg btn-outline-primary" data-toggle="modal" data-target=".bd-example-modal-lg">예매 하기</button>

                    <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="container">
                                    <div class="py-5 text-center">
                                        <h2>체크아웃 양식</h2>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-4 order-md-2 mb-4">
                                            <h4 class="d-flex justify-content-between align-items-center mb-3">
                                                <span class="text-muted">장바구니</span>
                                                <span class="badge badge-secondary badge-pill">3</span>
                                            </h4>
                                            <ul class="list-group mb-3">
                                                <li class="list-group-item d-flex justify-content-between lh-condensed">
                                                    <div>
                                                        <h6 class="my-0">어른 1매</h6>
                                                        <small class="text-muted">After4</small>
                                                    </div>
                                                    <span class="text-muted">48,000원</span>
                                                </li>
                                                <li class="list-group-item d-flex justify-content-between lh-condensed">
                                                    <div>
                                                        <h6 class="my-0">청소년 1매</h6>
                                                        <small class="text-muted">After4</small>
                                                    </div>
                                                    <span class="text-muted">42,000원</span>
                                                </li>
                                                <li class="list-group-item d-flex justify-content-between lh-condensed">
                                                    <div>
                                                        <h6 class="my-0">어린이 1매</h6>
                                                        <small class="text-muted">After4</small>
                                                    </div>
                                                    <span class="text-muted">36,000원</span>
                                                </li>
                                                <li class="list-group-item d-flex justify-content-between bg-light">
                                                    <div class="text-success">
                                                        <h6 class="my-0">프로모션 코드</h6>
                                                        <small>HAPPYFRONT</small>
                                                    </div>
                                                    <span class="text-success">-10,000원</span>
                                                </li>
                                                <li class="list-group-item d-flex justify-content-between">
                                                    <span>총 합 (원)</span>
                                                    <strong>116,000원</strong>
                                                </li>
                                            </ul>

                                            <form class="card p-2">
                                                <div class="input-group">
                                                    <input type="text" class="form-control" 프로모션 코드="Promo code">
                                                    <div class="input-group-append">
                                                        <button type="submit" class="btn btn-secondary">입력</button>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                        <div class="col-md-8 order-md-1">
                                            <h4 class="mb-3">예매 정보</h4>
                                            <form class="needs-validation" novalidate="">
                                                <div class="row">
                                                    <div class="col-md-6 mb-3">
                                                        <label for="firstName">성</label>
                                                        <input type="text" class="form-control" id="firstName" placeholder="" value="" required="">
                                                        <div class="invalid-feedback">
                                                            성을 입력해주세요
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6 mb-3">
                                                        <label for="lastName">이름</label>
                                                        <input type="text" class="form-control" id="lastName" placeholder="" value="" required="">
                                                        <div class="invalid-feedback">
                                                            이름을 입력해주세요
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="mb-3">
                                                    <label for="username">닉네임</label>
                                                    <div class="input-group">
                                                        <div class="input-group-prepend">
                                                            <span class="input-group-text">@</span>
                                                        </div>
                                                        <input type="text" class="form-control" id="username" placeholder="닉네임" required="">
                                                        <div class="invalid-feedback" style="width: 100%;">
                                                            Your username is required.
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="mb-3">
                                                    <label for="email">이메일 <span class="text-muted">(옵션)</span></label>
                                                    <input type="email" class="form-control" id="email" placeholder="you@happyfront.com">
                                                    <div class="invalid-feedback">
                                                        이메일을 입력해주세요
                                                    </div>
                                                </div>

                                                <div class="mb-3">
                                                    <label for="address">주소</label>
                                                    <input type="text" class="form-control" id="address" placeholder="서울 특별시 성북구 ..." required="">
                                                    <div class="invalid-feedback">
                                                        주소를 입력해주세요
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-5 mb-3">
                                                        <label for="country">지역</label>
                                                        <select class="custom-select d-block w-100" id="country" required="">
                                                            <option value="">선택하기</option>
                                                            <option>서울 특별시</option>
                                                        </select>
                                                        <div class="invalid-feedback">
                                                            지역을 선택해주세요
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4 mb-3">
                                                        <label for="state">행정구</label>
                                                        <select class="custom-select d-block w-100" id="state" required="">
                                                            <option value="">선택하기</option>
                                                            <option>성북구</option>
                                                            <option>강남구</option>
                                                        </select>
                                                        <div class="invalid-feedback">
                                                            행정구를 입력해주세요
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3 mb-3">
                                                        <label for="zip">우편번호</label>
                                                        <input type="text" class="form-control" id="zip" placeholder="" required="">
                                                        <div class="invalid-feedback">
                                                            우편번호를 입력해주세요.
                                                        </div>
                                                    </div>
                                                </div>
                                                <hr class="mb-4">
                                                <div class="custom-control custom-checkbox">
                                                    <input type="checkbox" class="custom-control-input" id="same-address">
                                                    <label class="custom-control-label" for="same-address">온라인 영수증을 받으시겠습니까?</label>
                                                </div>
                                                <div class="custom-control custom-checkbox">
                                                    <input type="checkbox" class="custom-control-input" id="save-info">
                                                    <label class="custom-control-label" for="save-info">기본 정보로 저장하기</label>
                                                </div>
                                                <hr class="mb-4">

                                                <h4 class="mb-3">Payment</h4>

                                                <div class="d-block my-3">
                                                    <div class="custom-control custom-radio">
                                                        <input id="credit" name="paymentMethod" type="radio" class="custom-control-input" checked="" required="">
                                                        <label class="custom-control-label" for="credit">카드 결제</label>
                                                    </div>
                                                    <div class="custom-control custom-radio">
                                                        <input id="debit" name="paymentMethod" type="radio" class="custom-control-input" required="">
                                                        <label class="custom-control-label" for="debit">무통장 입금</label>
                                                    </div>
                                                    <div class="custom-control custom-radio">
                                                        <input id="paypal" name="paymentMethod" type="radio" class="custom-control-input" required="">
                                                        <label class="custom-control-label" for="paypal">간편 결제</label>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6 mb-3">
                                                        <label for="cc-name">카드 이름</label>
                                                        <input type="text" class="form-control" id="cc-name" placeholder="" required="">
                                                        <small class="text-muted">카드에 표시된 전체 이름</small>
                                                        <div class="invalid-feedback">
                                                            이름을 적어주세요.
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6 mb-3">
                                                        <label for="cc-number">신용카드 번호</label>
                                                        <input type="text" class="form-control" id="cc-number" placeholder="" required="">
                                                        <div class="invalid-feedback">
                                                            신용카드 번호를 입력해주세요.
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-3 mb-3">
                                                        <label for="cc-expiration">Expiration</label>
                                                        <input type="text" class="form-control" id="cc-expiration" placeholder="" required="">
                                                        <div class="invalid-feedback">
                                                            데이터를 입력해주세요.
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3 mb-3">
                                                        <label for="cc-expiration">CVV</label>
                                                        <input type="text" class="form-control" id="cc-cvv" placeholder="" required="">
                                                        <div class="invalid-feedback">
                                                            데이터를 입력해주세요.
                                                        </div>
                                                    </div>
                                                </div>
                                                <hr class="mb-4">
                                                <button class="btn btn-primary btn-lg btn-block" type="submit">결제 계속하기</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card mb-4 rounded-3 shadow-sm border-primary">
                <div class="card-header py-3 text-white bg-primary border-primary">
                    <h4 class="my-0 fw-normal">매직패스 프리미엄</h4>
                </div>
                <div class="card-body">
                    <h3 class="card-title pricing-card-title">원하는 어트랙션을 예약없이 바로 즐기는 프리미엄 서비스!</h3>
                    <ul class="list-unstyled mt-3 mb-4">
                        <li>5회권 (5회 이용 가능) 47,000원 <fmt:formatNumber value="39.93" type="currency" currencySymbol="$" /></li>
                        <li>10회권 (10회 이용 가능) 85,000원 <fmt:formatNumber value="72.22" type="currency" currencySymbol="$" /></li>
                        <li>(※구매당일 한정, 1인 1매 사용)</li>
                    </ul>
                    <button type="button" class="w-100 btn btn-lg btn-outline-primary bg-primary text-white" data-toggle="modal" data-target=".bd-example-modal-lg">예매 하기</button>

                    <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="container">
                                    <div class="py-5 text-center">
                                        <h2>체크아웃 양식</h2>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-4 order-md-2 mb-4">
                                            <h4 class="d-flex justify-content-between align-items-center mb-3">
                                                <span class="text-muted">장바구니</span>
                                                <span class="badge badge-secondary badge-pill">3</span>
                                            </h4>
                                            <ul class="list-group mb-3">
                                                <li class="list-group-item d-flex justify-content-between lh-condensed">
                                                    <div>
                                                        <h6 class="my-0">어른 1매</h6>
                                                        <small class="text-muted">After4</small>
                                                    </div>
                                                    <span class="text-muted">48,000원</span>
                                                </li>
                                                <li class="list-group-item d-flex justify-content-between lh-condensed">
                                                    <div>
                                                        <h6 class="my-0">청소년 1매</h6>
                                                        <small class="text-muted">After4</small>
                                                    </div>
                                                    <span class="text-muted">42,000원</span>
                                                </li>
                                                <li class="list-group-item d-flex justify-content-between lh-condensed">
                                                    <div>
                                                        <h6 class="my-0">어린이 1매</h6>
                                                        <small class="text-muted">After4</small>
                                                    </div>
                                                    <span class="text-muted">36,000원</span>
                                                </li>
                                                <li class="list-group-item d-flex justify-content-between bg-light">
                                                    <div class="text-success">
                                                        <h6 class="my-0">프로모션 코드</h6>
                                                        <small>HAPPYFRONT</small>
                                                    </div>
                                                    <span class="text-success">-10,000원</span>
                                                </li>
                                                <li class="list-group-item d-flex justify-content-between">
                                                    <span>총 합 (원)</span>
                                                    <strong>116,000원</strong>
                                                </li>
                                            </ul>

                                            <form class="card p-2">
                                                <div class="input-group">
                                                    <input type="text" class="form-control" 프로모션 코드="Promo code">
                                                    <div class="input-group-append">
                                                        <button type="submit" class="btn btn-secondary">입력</button>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                        <div class="col-md-8 order-md-1">
                                            <h4 class="mb-3">예매 정보</h4>
                                            <form class="needs-validation" novalidate="">
                                                <div class="row">
                                                    <div class="col-md-6 mb-3">
                                                        <label for="firstName">성</label>
                                                        <input type="text" class="form-control" id="firstName" placeholder="" value="" required="">
                                                        <div class="invalid-feedback">
                                                            성을 입력해주세요
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6 mb-3">
                                                        <label for="lastName">이름</label>
                                                        <input type="text" class="form-control" id="lastName" placeholder="" value="" required="">
                                                        <div class="invalid-feedback">
                                                            이름을 입력해주세요
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="mb-3">
                                                    <label for="username">닉네임</label>
                                                    <div class="input-group">
                                                        <div class="input-group-prepend">
                                                            <span class="input-group-text">@</span>
                                                        </div>
                                                        <input type="text" class="form-control" id="username" placeholder="닉네임" required="">
                                                        <div class="invalid-feedback" style="width: 100%;">
                                                            Your username is required.
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="mb-3">
                                                    <label for="email">이메일 <span class="text-muted">(옵션)</span></label>
                                                    <input type="email" class="form-control" id="email" placeholder="you@happyfront.com">
                                                    <div class="invalid-feedback">
                                                        이메일을 입력해주세요
                                                    </div>
                                                </div>

                                                <div class="mb-3">
                                                    <label for="address">주소</label>
                                                    <input type="text" class="form-control" id="address" placeholder="서울 특별시 성북구 ..." required="">
                                                    <div class="invalid-feedback">
                                                        주소를 입력해주세요
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-5 mb-3">
                                                        <label for="country">지역</label>
                                                        <select class="custom-select d-block w-100" id="country" required="">
                                                            <option value="">선택하기</option>
                                                            <option>서울 특별시</option>
                                                        </select>
                                                        <div class="invalid-feedback">
                                                            지역을 선택해주세요
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4 mb-3">
                                                        <label for="state">행정구</label>
                                                        <select class="custom-select d-block w-100" id="state" required="">
                                                            <option value="">선택하기</option>
                                                            <option>성북구</option>
                                                            <option>강남구</option>
                                                        </select>
                                                        <div class="invalid-feedback">
                                                            행정구를 입력해주세요
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3 mb-3">
                                                        <label for="zip">우편번호</label>
                                                        <input type="text" class="form-control" id="zip" placeholder="" required="">
                                                        <div class="invalid-feedback">
                                                            우편번호를 입력해주세요.
                                                        </div>
                                                    </div>
                                                </div>
                                                <hr class="mb-4">
                                                <div class="custom-control custom-checkbox">
                                                    <input type="checkbox" class="custom-control-input" id="same-address">
                                                    <label class="custom-control-label" for="same-address">온라인 영수증을 받으시겠습니까?</label>
                                                </div>
                                                <div class="custom-control custom-checkbox">
                                                    <input type="checkbox" class="custom-control-input" id="save-info">
                                                    <label class="custom-control-label" for="save-info">기본 정보로 저장하기</label>
                                                </div>
                                                <hr class="mb-4">

                                                <h4 class="mb-3">Payment</h4>

                                                <div class="d-block my-3">
                                                    <div class="custom-control custom-radio">
                                                        <input id="credit" name="paymentMethod" type="radio" class="custom-control-input" checked="" required="">
                                                        <label class="custom-control-label" for="credit">카드 결제</label>
                                                    </div>
                                                    <div class="custom-control custom-radio">
                                                        <input id="debit" name="paymentMethod" type="radio" class="custom-control-input" required="">
                                                        <label class="custom-control-label" for="debit">무통장 입금</label>
                                                    </div>
                                                    <div class="custom-control custom-radio">
                                                        <input id="paypal" name="paymentMethod" type="radio" class="custom-control-input" required="">
                                                        <label class="custom-control-label" for="paypal">간편 결제</label>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6 mb-3">
                                                        <label for="cc-name">카드 이름</label>
                                                        <input type="text" class="form-control" id="cc-name" placeholder="" required="">
                                                        <small class="text-muted">카드에 표시된 전체 이름</small>
                                                        <div class="invalid-feedback">
                                                            이름을 적어주세요.
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6 mb-3">
                                                        <label for="cc-number">신용카드 번호</label>
                                                        <input type="text" class="form-control" id="cc-number" placeholder="" required="">
                                                        <div class="invalid-feedback">
                                                            신용카드 번호를 입력해주세요.
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-3 mb-3">
                                                        <label for="cc-expiration">Expiration</label>
                                                        <input type="text" class="form-control" id="cc-expiration" placeholder="" required="">
                                                        <div class="invalid-feedback">
                                                            데이터를 입력해주세요.
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3 mb-3">
                                                        <label for="cc-expiration">CVV</label>
                                                        <input type="text" class="form-control" id="cc-cvv" placeholder="" required="">
                                                        <div class="invalid-feedback">
                                                            데이터를 입력해주세요.
                                                        </div>
                                                    </div>
                                                </div>
                                                <hr class="mb-4">
                                                <button class="btn btn-primary btn-lg btn-block" type="submit">결제 계속하기</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <h2 class="display-6 text-center mb-4">오시는 길</h2>
        <div class="row">
            <div class="col">
                <div id="googleMap" style="width:100%;height:400px;"></div>
            </div>
            <div class="col">
                <ol class="list-group list-group-numbered">
                    <li class="list-group-item d-flex justify-content-between align-items-start">
                        <div class="ms-2 me-auto">
                            <h5 class="fw-bold">지하철 이용시</h5>
                            잠실역 4번 출구
                        </div>
                        <span class="badge rounded-pill" style="background-color: #5ab354; color: white;">2호선</span>
                    </li>
                    <li class="list-group-item d-flex justify-content-between align-items-start">
                        <div class="ms-2 me-auto">
                            <h5 class="fw-bold">지하철 이용시</h5>
                            잠실역 4번 출구
                        </div>
                        <span class="badge rounded-pill" style="background-color: #e04582; color: white;">8호선</span>
                    </li>
                    <li class="list-group-item d-flex justify-content-between align-items-start">
                        <div class="ms-2 me-auto">
                            <h5 class="fw-bold">버스 이용시</h5>
                            3217번, 3313번, 3314번, 3315번, 3317번, 3411번, 3414번, 4319번
                        </div>
                        <span class="badge rounded-pill" style="background-color: #62af1e; color: white;">지선</span>
                    </li>
                    <li class="list-group-item d-flex justify-content-between align-items-start">
                        <div class="ms-2 me-auto">
                            <h5 class="fw-bold">버스 이용시</h5>
                            1007-1번, 1100번, 1700번, 2000번, 6900번, 7007번, 8001번
                        </div>
                        <span class="badge rounded-pill" style="background-color: #d63945; color: white;">광역</span>
                    </li>
                </ol>
            </div>
        </div>
    </div>
    <div>
        <h2 class="display-6 text-center mt-5">가이드 맵</h2>
        <div class="px-4 py-5 text-center">
            <img class="d-block mx-auto mb-4" src="/view/img/amuse_slide_event1.png" alt="" width="80%">
            <h1 class="display-5 fw-bold">보다 편하게, 보다 알차게
                모험을 즐기세요!</h1>
            <div class="col-lg-6 mx-auto">
                <p class="lead mb-4">지금 바로 허밍랜드 가이드 맵을 다운받으세요!<br>
                    어트랙션, 다이닝, 쇼핑 가이드를 한 눈에 확인 할 수 있습니다.</p>
                <div class="d-grid gap-2 d-sm-flex justify-content-sm-center">
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                        다운받기
                    </button>

                    <!-- Modal -->
                    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">서비스에 이용을 드려 죄송합니다.</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    현재 가이드맵이 준비되지 않았습니다.
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
    function myMap() {
        var mapProp= {
            center:new google.maps.LatLng(37.511036,127.098466),
            zoom:16,
        };
        //TODO
        var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);
    }
    </script>
</div>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDfYaMQfIy4-9TWEGcgaJUJU5v-wln5BvU&callback=myMap"></script>
<jsp:include page="/view/components/footer.jsp" flush="false" />
</body>
</html>
