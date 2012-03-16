package com.kasabi.demo.suppliersparts.domain;

import javax.validation.constraints.NotNull;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Address {

    @NotNull
    private String line1;

    private String line2;

    private String line3;

    private String city;

    @NotNull
    private String postcode;
}
