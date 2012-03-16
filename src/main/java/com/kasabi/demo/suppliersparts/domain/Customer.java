package com.kasabi.demo.suppliersparts.domain;

import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Customer {

    @NotNull
    private String firstname;

    @NotNull
    private String surname;

    private String title;

    @ManyToOne
    private Address address;
}
