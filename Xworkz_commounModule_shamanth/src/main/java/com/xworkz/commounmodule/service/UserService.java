package com.xworkz.commounmodule.service;

import com.xworkz.commounmodule.dto.UserDTO;
import com.xworkz.commounmodule.entity.UserEntity;

public interface UserService {

    public boolean save(UserDTO dto);

    public UserEntity login(String email, String password);

    public long getCountofName(String name);

    public long getCountofEmail(String email);

    public long getCountofPhonenumber(String phoneNumber);

    public long getCountofAlternateEmail(String alternateemail);

    public long getCountofAlternatephonenumber(String alternatephone);

    public boolean resetPassword(String email, String oldPassword, String newPassword);

}
