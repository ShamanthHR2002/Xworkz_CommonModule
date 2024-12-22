package com.xworkz.commounmodule.repository;

import com.xworkz.commounmodule.entity.UserEntity;

public interface UserRepository {
    public boolean onsave(UserEntity entity);

    public UserEntity onlogin(String email, String password);

    public long getCountofName(String name);

    public long getCountofEmail(String email);

    public long getCountofNumber(String phoneNumber);

    public long getAlternateEmail(String alternateemail);

    public long getAlternatePhone(String alternatephone);

    boolean update(UserEntity entity);

    UserEntity findByEmail(String email);
}
