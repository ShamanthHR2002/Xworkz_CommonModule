package com.xworkz.commounmodule.entity;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Data
@Entity
@Table(name = "module_table")
public class UserEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    int id;

    @Column(name = "Name")
    String name;

    @Column(name = "Email")
    String email;

    @Column(name = "PhoneNumber")
    String phoneNumber;

    @Column(name = "Alternateemail")
    String alternateemail;

    @Column(name = "Alternatephonenumber")
    String alternatephone;

    @Column(name = "Location")
    String location;

    @Column(name = "Password")
    String password;

    @Column(name = "Resetstatus")
    int Resetstatus;


}