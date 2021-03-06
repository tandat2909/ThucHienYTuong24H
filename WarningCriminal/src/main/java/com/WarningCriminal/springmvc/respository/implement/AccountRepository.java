package com.WarningCriminal.springmvc.respository.implement;


import com.WarningCriminal.springmvc.pojo.Account;
import com.WarningCriminal.springmvc.pojo.CongAn;
import com.WarningCriminal.springmvc.pojo.Nguoidan;
import com.WarningCriminal.springmvc.respository.Enum.ERole;
import com.WarningCriminal.springmvc.respository.IAccountRepository;
import com.WarningCriminal.springmvc.respository.ISysConfigRepository;
import org.apache.commons.lang.NullArgumentException;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.UUID;
import java.util.regex.Pattern;

@Repository
@Transactional
public class AccountRepository extends GenericsRepository<Account, String> implements IAccountRepository {

    @Autowired
    ISysConfigRepository sysConfigRepository;
    @Autowired
    BCryptPasswordEncoder bCryptPasswordEncoder;

    @Override
    public boolean createAccount(Account account, Object o) throws Exception {
        Session session = currentSession();

        String EMAIL_PATTERN = "[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,}$";
        String PHONENUMBERVN_PATTENR = "(84|0[3|2|5|7|8|9])+([0-9]{8})\\b";
        String CCID_PATTENR = "[0-9]{9}|[0-9]{12}";

        if (isAccountValid(account)) {
            if (o instanceof CongAn) {
                CongAn police = (CongAn) o;
                police.setId(UUID.randomUUID().toString());
                police.setAccount(account);
                account.setRoleId(ERole.ROLE_CONGAN.name());
            }
            if(o instanceof Nguoidan){
                Nguoidan nd = (Nguoidan) o;
                nd.setId(UUID.randomUUID().toString());
                nd.setAccount(account);
                account.setRoleId(ERole.ROLE_NGUOIDAN.name());
            }
            account.setPw(bCryptPasswordEncoder.encode(account.getPw()));
            account.setId(UUID.randomUUID().toString());
            // k??ch ho???t t??i kho???n
            account.setStatus(true);
            session.save(account);
            session.save(o);
            return true;
        }
        return false;
    }


    public boolean isAccountValid(Account account) throws Exception {
        String USERNAME_PATTERN = "[a-zA-Z0-9]{5,}";
        String PASSWORD_PATTERN = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[@$!%*?&])[A-Za-z\\d@$!%*?&]{8,}$";
        if (account == null)
            throw new NullPointerException("th??ng tin kh??ng ???????c ????? tr???ng");
        if (account.getUserName() == null || !Pattern.matches(USERNAME_PATTERN, account.getUserName()))
            throw new Exception("Kh??ng ???????c ????? tr???ng v?? tr??n 5 k?? t??? ");
        if (isUserNameExist(account))
            throw new Exception("User t???n t???i");
        if (account.getPw() == null || !Pattern.matches(PASSWORD_PATTERN, account.getPw()))
            throw new Exception("Password Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters");
        if (account.getConfirmPw() == null || !account.getPw().equals(account.getConfirmPw()))
            throw new Exception("X??c nh???n password sai");
        return true;
    }

    @Override
    public boolean isUserNameExist(String userName) {
        try {
            if (userName == null || userName.isEmpty()) throw new Exception();
            List<Account> a = getElementsByKeyWordOnField(userName, Account.class.getDeclaredField("userName"));
            return a.size() > 0;
        } catch (NoSuchFieldException e) {
            System.err.println("L???i kh??ng c?? field userName trong class " + getClassType().getSimpleName());
            System.err.println(e.getMessage());
            return false;
        } catch (Exception exception) {
            System.err.println("L???i kh??ng c?? userName: " + userName);
            return false;
        }
    }

    @Override
    public boolean isUserNameExist(Account account) {
        return isUserNameExist(account.getUserName());
    }

    @Override
    public boolean isAccountExist(Account account) {
        try {
            if (account != null)
                return getElementById(account.getId()) != null;
            return false;
        } catch (NullPointerException exception) {
            System.err.println("isAccountExist Error: Account field username is Null ");
            return false;
        }

    }

    @Override
    public boolean isCheckActive(String id) throws NullPointerException {
        if (id == null || id.isEmpty())
            throw new NullPointerException("L???i kh??ng c?? ID");
        Account account = getElementById(id);
        if (account == null) {
            throw new NullPointerException("L???i kh??ng c?? t??i kho???n v???i id: " + id);
        }
        return account.getStatus();
    }

    @Override
    public boolean isCheckActive(Account account) throws NullPointerException {
        try {
            if (account != null)
                return isCheckActive(account.getId());
            throw new NullArgumentException("isCheckActive Error: param null");
        } catch (NullPointerException exception) {
            System.err.println("isCheckActive Error: Account field id is Null ");
            throw new NullPointerException("isCheckActive Error: field accountId null");
        }


    }

    @Override
    public Account getAccountByUserName(String userName) {
        try {
            return getElementsByKeyWordOnField(userName, Account.class.getDeclaredField("userName")).get(0);
        } catch (NoSuchFieldException e) {
            System.err.println("Kh??ng c?? th??ng tin account c???a user: " + userName);
            return null;
        }
    }


}
