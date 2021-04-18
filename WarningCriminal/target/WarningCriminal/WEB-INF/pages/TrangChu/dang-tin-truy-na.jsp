<%--<jsp:useBean id="cttp" scope="request" type="com.WarningCriminal.springmvc.pojo.Toipham"/>--%>

<%--
  Created by IntelliJ IDEA.
  User: datoa
  Date: 18/04/2021
  Time: 9:45 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../LibraryJSP.jsp" %>
<style>
    .table-detail {
        width: 99.8%;
        border-collapse: collapse;
    }

    .table-detail td {
        border: 1px solid #ddd;
        padding: 5px;
        font: 100 13px/18px Roboto, Arial, Tahoma;
    }

    .table-detail th {
        border: 1px solid #ddd;
        padding: 5px;
        background-color: #efefef;
        font-weight: normal;
        text-align: left;
        font: 100 13px/18px Roboto, Arial, Tahoma;
        width: 120px;
    }

    .noborder {
        border: none !important;
        font: 700 15px/18px Roboto, Arial, Tahoma !important;
    }
</style>


<div class="box-left-home">

    <h1>ĐĂNG TIN TRUY NÃ</h1>

    <div>


        <table class="table-detail">
            <tbody>
            <tr>
                <td colspan="4" class="noborder">Thông tin chung
                </td>
            </tr>
            <tr>
                <th>Họ và tên</th>
                <td>
                    <input type="email" name="hovaten" id="hovaten" class="form-control input-md">
                </td>
                <th>Tên khác</th>
                <td ><input type="tenkhac" name="tenkhac" id="tenkhac" class="form-control input-md"></td>
            </tr>
            <tr>
                <th>Giới tính</th>
                <td> <input type="gioitinh" name="gioitinh" id="gioitinh" class="form-control input-md"></td>
                <th>Ngày sinh</th>
                <td> <input type="ngaysinh" name="ngaysinh" id="ngaysinh" class="form-control input-md"></td>
            </tr>
            <tr>
                <th>Nơi sinh</th>
                <td colspan="3"> <input type="noisinh" name="noisinh" id="noisinh" class="form-control input-md"></td>

            </tr>
            <tr>
                <th>Hộ khẩu thường trú</th>
                <td colspan="3"> <input type="hokhau" name="hokhau" id="hokhau" class="form-control input-md"></td>

            </tr>
            <tr>
                <th>Nơi đăng ký tạm trú</th>
                <td colspan="3"> <input type="noidangkytamtru" name="noidangkytamtru" id="noidangkytamtru" class="form-control input-md"></td>

            </tr>
            <tr>
                <th>Quốc tịch</th>
                <td> <input type="quoctich" name="quoctich" id="quoctich" class="form-control input-md"></td>
                <th>Dân tộc</th>
                <td>${cttp.dantoc}</td>
            </tr>
            <tr>
                <th>Họ tên bố</th>
                <td><input type="hotenbo" name="hotenbo" id="hotenbo" class="form-control input-md"></td>
                <th>Họ tên mẹ</th>
                <td><input type="hotenme" name="hotenme" id="hotenme" class="form-control input-md"></td>
            </tr>
            <tr>
                <td colspan="4" class="noborder">Đặc điểm nhận dạng</td>
            </tr>
            <tr>
                <th>Chiều cao</th>
                <td><input type="chieucao" name="chieucao" id="chieucao" class="form-control input-md"></td>
                <th>Màu da</th>
                <td><input type="mauda" name="mauda" id="mauda" class="form-control input-md"></td>
            </tr>
            <tr>
                <th>Đặc điểm mái tóc</th>
                <td><input type="dacdiemmaitoc" name="dacdiemmaitoc" id="dacdiemmaitoc" class="form-control input-md"></td>
                <th>Đặc điểm lông mày</th>
                <td><input type="dacdiemlongmay" name="dacdiemlongmay" id="dacdiemlongmay" class="form-control input-md"></td>
            </tr>
            <tr>
                <th>Đặc điểm mũi</th>
                <td><input type="dacdiemmui" name="dacdiemmui" id="dacdiemmui" class="form-control input-md"></td>
                <th>Đặc điểm tai</th>
                <td><input type="dacdiemtai" name="dacdiemtai" id="dacdiemtai" class="form-control input-md"></td>
            </tr>
            <tr>
                <th>Đặc điểm mắt</th>
                <td colspan="3"><input type="dacdiemmat" name="dacdiemmat" id="dacdiemmat" class="form-control input-md"></td>

            </tr>
            <tr>
                <th>Đặc điểm khác</th>
                <td colspan="3"><input type="dacdiemkhac" name="dacdiemkhac" id="dacdiemkhac" class="form-control input-md"></td>

            </tr>
            <tr>
                <td colspan="4" class="noborder">Can tội</td>
            </tr>
            <tr>
                <th>Tội danh</th>
                <td colspan="3">
                    <input type="toidanh" name="gioitinh" id="toidanh" class="form-control input-md">
                </td>

            </tr>
            <tr>
                <th>Hệ loại tội danh</th>
                <td><input type="heloaitoidanh" name="heloaitoidanh" id="heloaitoidanh" class="form-control input-md"></td>
                <th>Phạm vi truy nã</th>
                <td><input type="phamvitruyna" name="phamvitruyna" id="phamvitruyna" class="form-control input-md"></td>
            </tr>
            <tr>
                <th>Loại truy nã</th>
                <td colspan="3"><input type="loaitruyna" name="loaitruyna" id="loaitruyna" class="form-control input-md"></td>

            </tr>
            <tr>
                <th>Quyết định truy nã</th>
                <td colspan="3"><input type="quyetdinhtruyna" name="quyetdinhtruyna" id="quyetdinhtruyna" class="form-control input-md"></td>

            </tr>
            <tr>
                <th>Đơn vị ra quyết định</th>
                <td colspan="3"><input type="donviraquyetdinh" name="donviraquyetdinh" id="donviraquyetdinh" class="form-control input-md"></td>

            </tr>



            </tbody>
        </table>

    </div>
</div>