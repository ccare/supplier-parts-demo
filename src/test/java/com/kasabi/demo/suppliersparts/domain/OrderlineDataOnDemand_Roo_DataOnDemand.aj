// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.kasabi.demo.suppliersparts.domain;

import com.kasabi.demo.suppliersparts.domain.Orderline;
import com.kasabi.demo.suppliersparts.domain.OrderlineDataOnDemand;
import com.kasabi.demo.suppliersparts.domain.Part;
import com.kasabi.demo.suppliersparts.domain.PartDataOnDemand;
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

privileged aspect OrderlineDataOnDemand_Roo_DataOnDemand {
    
    declare @type: OrderlineDataOnDemand: @Component;
    
    private Random OrderlineDataOnDemand.rnd = new SecureRandom();
    
    private List<Orderline> OrderlineDataOnDemand.data;
    
    @Autowired
    private PartDataOnDemand OrderlineDataOnDemand.partDataOnDemand;
    
    @Autowired
    private SupplierDataOnDemand OrderlineDataOnDemand.supplierDataOnDemand;
    
    public Orderline OrderlineDataOnDemand.getNewTransientOrderline(int index) {
        Orderline obj = new Orderline();
        setPart(obj, index);
        setQuanity(obj, index);
        setSupplier(obj, index);
        return obj;
    }
    
    public void OrderlineDataOnDemand.setPart(Orderline obj, int index) {
        Part part = partDataOnDemand.getRandomPart();
        obj.setPart(part);
    }
    
    public void OrderlineDataOnDemand.setQuanity(Orderline obj, int index) {
        int quanity = index;
        obj.setQuanity(quanity);
    }
    
    public void OrderlineDataOnDemand.setSupplier(Orderline obj, int index) {
        Supplier supplier = supplierDataOnDemand.getRandomSupplier();
        obj.setSupplier(supplier);
    }
    
    public Orderline OrderlineDataOnDemand.getSpecificOrderline(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Orderline obj = data.get(index);
        Long id = obj.getId();
        return Orderline.findOrderline(id);
    }
    
    public Orderline OrderlineDataOnDemand.getRandomOrderline() {
        init();
        Orderline obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return Orderline.findOrderline(id);
    }
    
    public boolean OrderlineDataOnDemand.modifyOrderline(Orderline obj) {
        return false;
    }
    
    public void OrderlineDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = Orderline.findOrderlineEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Orderline' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Orderline>();
        for (int i = 0; i < 10; i++) {
            Orderline obj = getNewTransientOrderline(i);
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
