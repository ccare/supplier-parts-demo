// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.kasabi.demo.suppliersparts.domain;

import com.kasabi.demo.suppliersparts.domain.Orderline;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect Orderline_Roo_Jpa_Entity {
    
    declare @type: Orderline: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Orderline.id;
    
    @Version
    @Column(name = "version")
    private Integer Orderline.version;
    
    public Long Orderline.getId() {
        return this.id;
    }
    
    public void Orderline.setId(Long id) {
        this.id = id;
    }
    
    public Integer Orderline.getVersion() {
        return this.version;
    }
    
    public void Orderline.setVersion(Integer version) {
        this.version = version;
    }
    
}
