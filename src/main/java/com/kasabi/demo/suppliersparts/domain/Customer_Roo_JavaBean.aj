// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.kasabi.demo.suppliersparts.domain;

import com.kasabi.demo.suppliersparts.domain.Address;
import com.kasabi.demo.suppliersparts.domain.Customer;

privileged aspect Customer_Roo_JavaBean {
    
    public String Customer.getFirstname() {
        return this.firstname;
    }
    
    public void Customer.setFirstname(String firstname) {
        this.firstname = firstname;
    }
    
    public String Customer.getSurname() {
        return this.surname;
    }
    
    public void Customer.setSurname(String surname) {
        this.surname = surname;
    }
    
    public String Customer.getTitle() {
        return this.title;
    }
    
    public void Customer.setTitle(String title) {
        this.title = title;
    }
    
    public Address Customer.getAddress() {
        return this.address;
    }
    
    public void Customer.setAddress(Address address) {
        this.address = address;
    }
    
}