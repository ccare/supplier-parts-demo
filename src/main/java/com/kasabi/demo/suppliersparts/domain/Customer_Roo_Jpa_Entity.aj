// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.kasabi.demo.suppliersparts.domain;

import com.kasabi.demo.suppliersparts.domain.Customer;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect Customer_Roo_Jpa_Entity {
    
    declare @type: Customer: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Customer.id;
    
    @Version
    @Column(name = "version")
    private Integer Customer.version;
    
    public Long Customer.getId() {
        return this.id;
    }
    
    public void Customer.setId(Long id) {
        this.id = id;
    }
    
    public Integer Customer.getVersion() {
        return this.version;
    }
    
    public void Customer.setVersion(Integer version) {
        this.version = version;
    }
    
}
