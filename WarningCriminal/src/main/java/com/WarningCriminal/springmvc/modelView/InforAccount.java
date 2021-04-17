package com.WarningCriminal.springmvc.modelView;

import com.WarningCriminal.springmvc.pojo.Account;
import com.WarningCriminal.springmvc.pojo.CongAn;

import java.io.Serializable;
import java.sql.Date;

public class InforAccount implements Serializable{

   // @Pattern(regexp = "[a-zA-Z0-9]{5,}" , message = "{account.username.error}")
    String userName;

   // @Pattern(regexp = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[@$!%*?&])[A-Za-z\\d@$!%*?&]{8,}$", message = "{account.password.error}")
    String password;
    String confirmPassword;

    String hovaten;

    //@NotNull
    String ngaysinh;

    String CCID;
   // @Pattern(regexp = "(84|0[3|5|7|8|9])+([0-9]{8})\\b", message = "{customer.phoneNumber.error}")
    String phoneNumber;
    //@Pattern(regexp = "[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,}$",message = "{account.email.error}")
    String email;
    String sohieuquannhan;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirmPassword() {
        return confirmPassword;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }

    public String getHovaten() {
        return hovaten;
    }

    public void setHovaten(String hovaten) {
        this.hovaten = hovaten;
    }

    public String getNgaysinh() {
        return ngaysinh;
    }

    public void setNgaysinh(String ngaysinh) {
        this.ngaysinh = ngaysinh;
    }

    public String getCCID() {
        return CCID;
    }

    public void setCCID(String CCID) {
        this.CCID = CCID;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public boolean isPassConfirm(){
        return password.equals(confirmPassword);
    }
    public Date getBirthDaySql(){
        return Date.valueOf(this.ngaysinh);
    }

    public Account getAccount(){
        Account ac = new Account();
        ac.setPw(password);
        ac.setUserName(userName);
        ac.setConfirmPw(confirmPassword);
        return ac;
    }
    public CongAn getCustomer(){
        CongAn ca = new CongAn();
        ca.setHovaTen(hovaten);
        ca.setEmail(email);
        ca.setSdt(phoneNumber);
        ca.setSoHieuQuanNhan(sohieuquannhan);
        return ca;
    }


    @Override
    public String toString() {
        return "InforAccount{" +
                "userName='" + userName + '\'' +
                ", password='" + password + '\'' +
                ", confirmPassword='" + confirmPassword + '\'' +
                ", hovaten='" + hovaten + '\'' +
                ", ngaysinh='" + ngaysinh + '\'' +
                ", CCID='" + CCID + '\'' +
                ", phoneNumber='" + phoneNumber + '\'' +
                ", email='" + email + '\'' +
                '}';
    }
}
