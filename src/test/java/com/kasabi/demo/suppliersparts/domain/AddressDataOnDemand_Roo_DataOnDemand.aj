// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.kasabi.demo.suppliersparts.domain;

import com.kasabi.demo.suppliersparts.domain.Address;
import com.kasabi.demo.suppliersparts.domain.AddressDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.stereotype.Component;

privileged aspect AddressDataOnDemand_Roo_DataOnDemand {
    
    declare @type: AddressDataOnDemand: @Component;
    
    private Random AddressDataOnDemand.rnd = new SecureRandom();
    
    private List<Address> AddressDataOnDemand.data;
    
    public Address AddressDataOnDemand.getNewTransientAddress(int index) {
        Address obj = new Address();
        setCity(obj, index);
        setLine1(obj, index);
        setLine2(obj, index);
        setLine3(obj, index);
        setPostcode(obj, index);
        return obj;
    }
    
    public void AddressDataOnDemand.setCity(Address obj, int index) {
        String city = "city_" + index;
        obj.setCity(city);
    }
    
    public void AddressDataOnDemand.setLine1(Address obj, int index) {
        String line1 = "line1_" + index;
        obj.setLine1(line1);
    }
    
    public void AddressDataOnDemand.setLine2(Address obj, int index) {
        String line2 = "line2_" + index;
        obj.setLine2(line2);
    }
    
    public void AddressDataOnDemand.setLine3(Address obj, int index) {
        String line3 = "line3_" + index;
        obj.setLine3(line3);
    }
    
    public void AddressDataOnDemand.setPostcode(Address obj, int index) {
        String postcode = "postcode_" + index;
        obj.setPostcode(postcode);
    }
    
    public Address AddressDataOnDemand.getSpecificAddress(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Address obj = data.get(index);
        Long id = obj.getId();
        return Address.findAddress(id);
    }
    
    public Address AddressDataOnDemand.getRandomAddress() {
        init();
        Address obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return Address.findAddress(id);
    }
    
    public boolean AddressDataOnDemand.modifyAddress(Address obj) {
        return false;
    }
    
    public void AddressDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = Address.findAddressEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Address' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Address>();
        for (int i = 0; i < 10; i++) {
            Address obj = getNewTransientAddress(i);
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
