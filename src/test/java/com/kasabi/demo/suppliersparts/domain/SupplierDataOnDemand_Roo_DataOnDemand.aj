// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.kasabi.demo.suppliersparts.domain;

import com.kasabi.demo.suppliersparts.domain.Address;
import com.kasabi.demo.suppliersparts.domain.AddressDataOnDemand;
import com.kasabi.demo.suppliersparts.domain.Supplier;
import com.kasabi.demo.suppliersparts.domain.SupplierDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect SupplierDataOnDemand_Roo_DataOnDemand {
    
    declare @type: SupplierDataOnDemand: @Component;
    
    private Random SupplierDataOnDemand.rnd = new SecureRandom();
    
    private List<Supplier> SupplierDataOnDemand.data;
    
    @Autowired
    private AddressDataOnDemand SupplierDataOnDemand.addressDataOnDemand;
    
    public Supplier SupplierDataOnDemand.getNewTransientSupplier(int index) {
        Supplier obj = new Supplier();
        setAddress(obj, index);
        setName(obj, index);
        return obj;
    }
    
    public void SupplierDataOnDemand.setAddress(Supplier obj, int index) {
        Address address = addressDataOnDemand.getRandomAddress();
        obj.setAddress(address);
    }
    
    public void SupplierDataOnDemand.setName(Supplier obj, int index) {
        String name = "name_" + index;
        obj.setName(name);
    }
    
    public Supplier SupplierDataOnDemand.getSpecificSupplier(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Supplier obj = data.get(index);
        Long id = obj.getId();
        return Supplier.findSupplier(id);
    }
    
    public Supplier SupplierDataOnDemand.getRandomSupplier() {
        init();
        Supplier obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return Supplier.findSupplier(id);
    }
    
    public boolean SupplierDataOnDemand.modifySupplier(Supplier obj) {
        return false;
    }
    
    public void SupplierDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = Supplier.findSupplierEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Supplier' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Supplier>();
        for (int i = 0; i < 10; i++) {
            Supplier obj = getNewTransientSupplier(i);
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