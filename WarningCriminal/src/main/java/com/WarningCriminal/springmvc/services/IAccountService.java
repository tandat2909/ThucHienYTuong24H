package com.WarningCriminal.springmvc.services;

import com.WarningCriminal.springmvc.pojo.Account;
import org.springframework.security.core.userdetails.UserDetailsService;

public interface IAccountService extends IGenericsService<Account,String>, UserDetailsService {
    boolean createAccount(Account account, Object obj) throws Exception;
    boolean activeAccountByGmail(String idAccount);
    boolean isCheckActive(String id) throws NullPointerException;
    boolean isCheckActive(Account account) throws NullPointerException;
    Account getAccountByUserName(String userName);
}
