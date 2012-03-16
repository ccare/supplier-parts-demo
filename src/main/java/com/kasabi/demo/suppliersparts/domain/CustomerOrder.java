package com.kasabi.demo.suppliersparts.domain;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.OneToMany;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class CustomerOrder {

    @OneToMany(cascade = CascadeType.ALL)
    private Set<Orderline> items = new HashSet<Orderline>();
}
