// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.kasabi.demo.suppliersparts.web;

import com.kasabi.demo.suppliersparts.domain.Address;
import com.kasabi.demo.suppliersparts.domain.Customer;
import com.kasabi.demo.suppliersparts.domain.CustomerOrder;
import com.kasabi.demo.suppliersparts.domain.Orderline;
import com.kasabi.demo.suppliersparts.domain.Part;
import com.kasabi.demo.suppliersparts.domain.Supplier;
import com.kasabi.demo.suppliersparts.web.ApplicationConversionServiceFactoryBean;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<Address, String> ApplicationConversionServiceFactoryBean.getAddressToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.kasabi.demo.suppliersparts.domain.Address, java.lang.String>() {
            public String convert(Address address) {
                return new StringBuilder().append(address.getLine1()).append(" ").append(address.getLine2()).append(" ").append(address.getLine3()).append(" ").append(address.getCity()).toString();
            }
        };
    }
    
    public Converter<Long, Address> ApplicationConversionServiceFactoryBean.getIdToAddressConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.kasabi.demo.suppliersparts.domain.Address>() {
            public com.kasabi.demo.suppliersparts.domain.Address convert(java.lang.Long id) {
                return Address.findAddress(id);
            }
        };
    }
    
    public Converter<String, Address> ApplicationConversionServiceFactoryBean.getStringToAddressConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.kasabi.demo.suppliersparts.domain.Address>() {
            public com.kasabi.demo.suppliersparts.domain.Address convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Address.class);
            }
        };
    }
    
    public Converter<Customer, String> ApplicationConversionServiceFactoryBean.getCustomerToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.kasabi.demo.suppliersparts.domain.Customer, java.lang.String>() {
            public String convert(Customer customer) {
                return new StringBuilder().append(customer.getFirstname()).append(" ").append(customer.getSurname()).append(" ").append(customer.getTitle()).toString();
            }
        };
    }
    
    public Converter<Long, Customer> ApplicationConversionServiceFactoryBean.getIdToCustomerConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.kasabi.demo.suppliersparts.domain.Customer>() {
            public com.kasabi.demo.suppliersparts.domain.Customer convert(java.lang.Long id) {
                return Customer.findCustomer(id);
            }
        };
    }
    
    public Converter<String, Customer> ApplicationConversionServiceFactoryBean.getStringToCustomerConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.kasabi.demo.suppliersparts.domain.Customer>() {
            public com.kasabi.demo.suppliersparts.domain.Customer convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Customer.class);
            }
        };
    }
    
    public Converter<CustomerOrder, String> ApplicationConversionServiceFactoryBean.getCustomerOrderToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.kasabi.demo.suppliersparts.domain.CustomerOrder, java.lang.String>() {
            public String convert(CustomerOrder customerOrder) {
                return new StringBuilder().toString();
            }
        };
    }
    
    public Converter<Long, CustomerOrder> ApplicationConversionServiceFactoryBean.getIdToCustomerOrderConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.kasabi.demo.suppliersparts.domain.CustomerOrder>() {
            public com.kasabi.demo.suppliersparts.domain.CustomerOrder convert(java.lang.Long id) {
                return CustomerOrder.findCustomerOrder(id);
            }
        };
    }
    
    public Converter<String, CustomerOrder> ApplicationConversionServiceFactoryBean.getStringToCustomerOrderConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.kasabi.demo.suppliersparts.domain.CustomerOrder>() {
            public com.kasabi.demo.suppliersparts.domain.CustomerOrder convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), CustomerOrder.class);
            }
        };
    }
    
    public Converter<Orderline, String> ApplicationConversionServiceFactoryBean.getOrderlineToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.kasabi.demo.suppliersparts.domain.Orderline, java.lang.String>() {
            public String convert(Orderline orderline) {
                return new StringBuilder().append(orderline.getQuanity()).toString();
            }
        };
    }
    
    public Converter<Long, Orderline> ApplicationConversionServiceFactoryBean.getIdToOrderlineConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.kasabi.demo.suppliersparts.domain.Orderline>() {
            public com.kasabi.demo.suppliersparts.domain.Orderline convert(java.lang.Long id) {
                return Orderline.findOrderline(id);
            }
        };
    }
    
    public Converter<String, Orderline> ApplicationConversionServiceFactoryBean.getStringToOrderlineConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.kasabi.demo.suppliersparts.domain.Orderline>() {
            public com.kasabi.demo.suppliersparts.domain.Orderline convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Orderline.class);
            }
        };
    }
    
    public Converter<Part, String> ApplicationConversionServiceFactoryBean.getPartToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.kasabi.demo.suppliersparts.domain.Part, java.lang.String>() {
            public String convert(Part part) {
                return new StringBuilder().append(part.getName()).append(" ").append(part.getColor()).append(" ").append(part.getWeight()).toString();
            }
        };
    }
    
    public Converter<Long, Part> ApplicationConversionServiceFactoryBean.getIdToPartConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.kasabi.demo.suppliersparts.domain.Part>() {
            public com.kasabi.demo.suppliersparts.domain.Part convert(java.lang.Long id) {
                return Part.findPart(id);
            }
        };
    }
    
    public Converter<String, Part> ApplicationConversionServiceFactoryBean.getStringToPartConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.kasabi.demo.suppliersparts.domain.Part>() {
            public com.kasabi.demo.suppliersparts.domain.Part convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Part.class);
            }
        };
    }
    
    public Converter<Supplier, String> ApplicationConversionServiceFactoryBean.getSupplierToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.kasabi.demo.suppliersparts.domain.Supplier, java.lang.String>() {
            public String convert(Supplier supplier) {
                return new StringBuilder().append(supplier.getName()).toString();
            }
        };
    }
    
    public Converter<Long, Supplier> ApplicationConversionServiceFactoryBean.getIdToSupplierConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.kasabi.demo.suppliersparts.domain.Supplier>() {
            public com.kasabi.demo.suppliersparts.domain.Supplier convert(java.lang.Long id) {
                return Supplier.findSupplier(id);
            }
        };
    }
    
    public Converter<String, Supplier> ApplicationConversionServiceFactoryBean.getStringToSupplierConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.kasabi.demo.suppliersparts.domain.Supplier>() {
            public com.kasabi.demo.suppliersparts.domain.Supplier convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Supplier.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getAddressToStringConverter());
        registry.addConverter(getIdToAddressConverter());
        registry.addConverter(getStringToAddressConverter());
        registry.addConverter(getCustomerToStringConverter());
        registry.addConverter(getIdToCustomerConverter());
        registry.addConverter(getStringToCustomerConverter());
        registry.addConverter(getCustomerOrderToStringConverter());
        registry.addConverter(getIdToCustomerOrderConverter());
        registry.addConverter(getStringToCustomerOrderConverter());
        registry.addConverter(getOrderlineToStringConverter());
        registry.addConverter(getIdToOrderlineConverter());
        registry.addConverter(getStringToOrderlineConverter());
        registry.addConverter(getPartToStringConverter());
        registry.addConverter(getIdToPartConverter());
        registry.addConverter(getStringToPartConverter());
        registry.addConverter(getSupplierToStringConverter());
        registry.addConverter(getIdToSupplierConverter());
        registry.addConverter(getStringToSupplierConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}
