// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.kasabi.demo.suppliersparts.domain;

import com.kasabi.demo.suppliersparts.domain.Part;
import com.kasabi.demo.suppliersparts.domain.PartDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.stereotype.Component;

privileged aspect PartDataOnDemand_Roo_DataOnDemand {
    
    declare @type: PartDataOnDemand: @Component;
    
    private Random PartDataOnDemand.rnd = new SecureRandom();
    
    private List<Part> PartDataOnDemand.data;
    
    public Part PartDataOnDemand.getNewTransientPart(int index) {
        Part obj = new Part();
        setColor(obj, index);
        setName(obj, index);
        setWeight(obj, index);
        return obj;
    }
    
    public void PartDataOnDemand.setColor(Part obj, int index) {
        String color = "color_" + index;
        obj.setColor(color);
    }
    
    public void PartDataOnDemand.setName(Part obj, int index) {
        String name = "name_" + index;
        obj.setName(name);
    }
    
    public void PartDataOnDemand.setWeight(Part obj, int index) {
        double weight = new Integer(index).doubleValue();
        if (weight < 0D) {
            weight = 0D;
        }
        obj.setWeight(weight);
    }
    
    public Part PartDataOnDemand.getSpecificPart(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Part obj = data.get(index);
        Long id = obj.getId();
        return Part.findPart(id);
    }
    
    public Part PartDataOnDemand.getRandomPart() {
        init();
        Part obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return Part.findPart(id);
    }
    
    public boolean PartDataOnDemand.modifyPart(Part obj) {
        return false;
    }
    
    public void PartDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = Part.findPartEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Part' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Part>();
        for (int i = 0; i < 10; i++) {
            Part obj = getNewTransientPart(i);
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
