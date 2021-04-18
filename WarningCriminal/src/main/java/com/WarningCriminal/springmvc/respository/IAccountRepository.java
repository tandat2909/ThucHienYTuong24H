package com.WarningCriminal.springmvc.respository;


import com.WarningCriminal.springmvc.pojo.Account;

public interface IAccountRepository extends IGenericsRepository<Account,String> {
    boolean createAccount(Account account, Object o) throws Exception;
    boolean isUserNameExist(String userName);
    boolean isUserNameExist(Account account);
    boolean isAccountExist(Account account);
    boolean isCheckActive(String id) throws NullPointerException;
    boolean isCheckActive(Account account) throws NullPointerException;
    Account getAccountByUserName(String userName);

}
