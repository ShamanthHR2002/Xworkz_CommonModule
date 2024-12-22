package com.xworkz.commounmodule.service;

import com.xworkz.commounmodule.dto.UserDTO;
import com.xworkz.commounmodule.entity.UserEntity;
import com.xworkz.commounmodule.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Random;

@Service
public class UserServiceIImp implements UserService {
    @Autowired
    private UserRepository userRepository;
    private final BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

    @Override
    public boolean save(UserDTO dto) {
        StringBuilder sb = new StringBuilder();
        int length = 8;
        String characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
        Random random = new Random();

        for (int i = 0; i < length; i++) {
            int index = random.nextInt(characters.length());
            sb.append(characters.charAt(index));
        }

        String generatedPassword = sb.toString();
        System.out.println("Generated password: " + generatedPassword);

        UserEntity entity = new UserEntity();
        entity.setName(dto.getName());
        entity.setEmail(dto.getEmail());
        entity.setPhoneNumber(dto.getPhoneNumber());
        entity.setAlternateemail(dto.getAlternateemail());
        entity.setAlternatephone(dto.getAlternatephone());
        entity.setLocation(dto.getLocation());
        entity.setPassword(generatedPassword);
        entity.setResetstatus(-1);
        return userRepository.onsave(entity);
    }

    @Override
    public UserEntity login(String email, String password) {
        UserEntity entity = userRepository.onlogin(email, password);

        if (entity != null) {
            if (entity.getPassword().equals(password)) {
                System.out.println("Login successful for email: " + email);
                return entity;
            } else {
                System.out.println("Invalid password for email: " + email);

            }
            return null;
        } else {
            System.out.println("No user with email: " + email);
        }
        return userRepository.onlogin(email, password);
    }

    @Override
    public long getCountofName(String name) {
        long count = userRepository.getCountofName(name);

        if (count > 0) {
            System.out.println("Name exists: " + name);

        } else {
            return 0;
        }


        return count;
    }

    @Override
    public long getCountofEmail(String email) {
        long count = userRepository.getCountofEmail(email);

        if (count > 0) {

            System.out.println("Email exist" + email);
            return count;

        } else {

            return 0;
        }
    }

    @Override
    public long getCountofPhonenumber(String phoneNumber) {
        long count = userRepository.getCountofNumber(phoneNumber);

        if (count > 0) {
            System.out.println("Phone number exist" + phoneNumber);
            return count;
        } else {
            return 0;
        }
    }

    @Override
    public long getCountofAlternateEmail(String alternateemail) {
        long count = userRepository.getAlternateEmail(alternateemail);

        if (count > 0) {
            System.out.println("Alternate Email Aleady Exist " + alternateemail);
            return count;
        } else {
            return 0;
        }
    }

    @Override
    public long getCountofAlternatephonenumber(String alternatephone) {
        long count = userRepository.getAlternatePhone(alternatephone);
        if (count > 0) {
            System.out.println("Alternatehone aleady Exist " + alternatephone);
            return count;
        } else

            return 0;
    }

    @Override
    public boolean resetPassword(String email, String oldPassword, String newPassword) {
        UserEntity entity = userRepository.findByEmail(email);
        if (entity != null) {
            if (entity.getPassword().equals(oldPassword)) {
                String encryptedPassword = passwordEncoder.encode(newPassword);

                entity.setPassword(encryptedPassword);
                entity.setResetstatus(0);

                return userRepository.update(entity);
            }
        }
        return false;
    }


}