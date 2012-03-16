package com.kasabi.demo.suppliersparts.domain;

import javax.persistence.ManyToOne;
import javax.validation.constraints.DecimalMin;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Orderline {

    @ManyToOne
    private Supplier supplier;

    @ManyToOne
    private Part part;

    @DecimalMin("0")
    private int quanity;
}
