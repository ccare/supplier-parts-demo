// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.kasabi.demo.suppliersparts.domain;

import com.kasabi.demo.suppliersparts.domain.CustomerOrder;
import com.kasabi.demo.suppliersparts.domain.Orderline;
import java.util.Set;

privileged aspect CustomerOrder_Roo_JavaBean {
    
    public Set<Orderline> CustomerOrder.getItems() {
        return this.items;
    }
    
    public void CustomerOrder.setItems(Set<Orderline> items) {
        this.items = items;
    }
    
}
