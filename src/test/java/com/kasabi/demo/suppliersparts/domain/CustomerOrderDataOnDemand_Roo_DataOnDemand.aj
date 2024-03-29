// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.kasabi.demo.suppliersparts.domain;

import com.kasabi.demo.suppliersparts.domain.CustomerOrder;
import com.kasabi.demo.suppliersparts.domain.CustomerOrderDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.stereotype.Component;

privileged aspect CustomerOrderDataOnDemand_Roo_DataOnDemand {
    
    declare @type: CustomerOrderDataOnDemand: @Component;
    
    private Random CustomerOrderDataOnDemand.rnd = new SecureRandom();
    
    private List<CustomerOrder> CustomerOrderDataOnDemand.data;
    
    public CustomerOrder CustomerOrderDataOnDemand.getNewTransientCustomerOrder(int index) {
        CustomerOrder obj = new CustomerOrder();
        return obj;
    }
    
    public CustomerOrder CustomerOrderDataOnDemand.getSpecificCustomerOrder(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        CustomerOrder obj = data.get(index);
        Long id = obj.getId();
        return CustomerOrder.findCustomerOrder(id);
    }
    
    public CustomerOrder CustomerOrderDataOnDemand.getRandomCustomerOrder() {
        init();
        CustomerOrder obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return CustomerOrder.findCustomerOrder(id);
    }
    
    public boolean CustomerOrderDataOnDemand.modifyCustomerOrder(CustomerOrder obj) {
        return false;
    }
    
    public void CustomerOrderDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = CustomerOrder.findCustomerOrderEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'CustomerOrder' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<CustomerOrder>();
        for (int i = 0; i < 10; i++) {
            CustomerOrder obj = getNewTransientCustomerOrder(i);
            try {
                obj.persist();
            } catch (ConstraintViolationException e) {
                StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getConstraintDescriptor()).append(":").append(cv.getMessage()).append("=").append(cv.getInvalidValue()).append("]");
                }
                throw new RuntimeException(msg.toString(), e);
            }
            obj.flush();
            data.add(obj);
        }
    }
    
}
