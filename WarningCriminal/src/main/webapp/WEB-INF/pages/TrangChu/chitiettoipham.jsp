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

    <div>

        <div style="text-align: center;">
            <img src="/Publishing_Resources/web/portal/images/Showimage.png" style="width: 150px;"
                 alt="ảnh đối tượng truy nã">
            <br>
            <strong>${cttp.hovaTen}</strong>
            <i>${cttp.toidanh}</i>
            <br>
            <i>(Mức độ phạm tội :${cttp.mucdo.tenMucDo})</i>
            <br>

            <a href="${pageContext.request.contextPath}/?btid=${cttp.id}#guitintinhbao" target="_blank"><button>Báo Tin</button></a>


        </div>
        <table class="table-detail">
            <tbody>
            <tr>
                <td colspan="4" class="noborder">Thông tin chung
                </td>
            </tr>
            <tr>
                <th>Họ và tên</th>
                <td>
                    ${cttp.hovaTen}
                </td>
                <th>Tên khác</th>
                <td></td>
            </tr>
            <tr>
                <th>Giới tính</th>
                <td>${cttp.gioitinh}</td>
                <th>Năm sinh</th>
                <td>${cttp.ngaySinh}</td>
            </tr>
            <tr>
                <th>Nơi sinh</th>
                <td>${cttp.noisinh}</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <th>Hộ khẩu thường trú</th>
                <td>${cttp.hokhauthuongtru}</td>
                <td>&nbsp;</td>
                <td></td>
            </tr>
            <tr>
                <th>Nơi đăng ký tạm trú</th>
                <td></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <th>Quốc tịch</th>
                <td>${cttp.quoctich}</td>
                <th>Dân tộc</th>
                <td>${cttp.dantoc}</td>
            </tr>
            <tr>
                <th>Họ tên bố</th>
                <td>${cttp.hotenbo}</td>
                <th>Họ tên mẹ</th>
                <td>${cttp.hotenme}</td>
            </tr>
            <tr>
                <td colspan="4" class="noborder">Đặc điểm nhận dạng</td>
            </tr>
            <tr>
                <th>Chiều cao</th>
                <td>${cttp.chieucao}</td>
                <th>Màu da</th>
                <td>${cttp.mauda}</td>
            </tr>
            <tr>
                <th>Đặc điểm mái tóc</th>
                <td>${cttp.dacdiemmaitoc}</td>
                <th>Đặc điểm lông mày</th>
                <td></td>
            </tr>
            <tr>
                <th>Đặc điểm mũi</th>
                <td>${cttp.dacdiemmui}</td>
                <th>Đặc điểm tai</th>
                <td></td>
            </tr>
            <tr>
                <th>Đặc điểm mắt</th>
                <td>${cttp.dacdiemmat}</td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <th>Đặc điểm khác</th>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td colspan="4" class="noborder">Can tội</td>
            </tr>
            <tr>
                <th>Tội danh</th>
                <td>
                    ${cttp.toidanh}
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <th>Hệ loại tội danh</th>
                <td>${cttp.heloaitoidanh}</td>
                <th>Phạm vi truy nã</th>
                <td>${cttp.phamvitruyna}</td>
            </tr>
            <tr>
                <th>Loại truy nã</th>
                <td></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <th>Quyết định truy nã</th>
                <td>${cttp.quyetdinhtruyna}</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <th>Đơn vị ra quyết định</th>
                <td>${cttp.quyetdinhtruyna}</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>


            <tr>
                <td colspan="4" class="noborder">Khi phát hiện báo cho</td>
            </tr>
            <tr>
                <th>Báo cho đơn vị</th>
                <td>${cttp.baochodonvi}</td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <th>Số điện thoại</th>
                <td></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>

            </tbody>
        </table>

    </div>
</div>