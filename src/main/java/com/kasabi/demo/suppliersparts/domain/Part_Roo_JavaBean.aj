// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.kasabi.demo.suppliersparts.domain;

import com.kasabi.demo.suppliersparts.domain.Part;

privileged aspect Part_Roo_JavaBean {
    
    public String Part.getName() {
        return this.name;
    }
    
    public void Part.setName(String name) {
        this.name = name;
    }
    
    public String Part.getColor() {
        return this.color;
    }
    
    public void Part.setColor(String color) {
        this.color = color;
    }
    
    public double Part.getWeight() {
        return this.weight;
    }
    
    public void Part.setWeight(double weight) {
        this.weight = weight;
    }
    
}
