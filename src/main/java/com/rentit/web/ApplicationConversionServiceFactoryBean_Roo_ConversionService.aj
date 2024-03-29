// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rentit.web;

import com.rentit.Customer;
import com.rentit.Invoice;
import com.rentit.Plant;
import com.rentit.PurchaseOrder;
import com.rentit.repository.PlantRepository;
import com.rentit.web.ApplicationConversionServiceFactoryBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    @Autowired
    PlantRepository ApplicationConversionServiceFactoryBean.plantRepository;
    
    public Converter<Customer, String> ApplicationConversionServiceFactoryBean.getCustomerToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.rentit.Customer, java.lang.String>() {
            public String convert(Customer customer) {
                return new StringBuilder().append(customer.getName()).toString();
            }
        };
    }
    
    public Converter<Long, Customer> ApplicationConversionServiceFactoryBean.getIdToCustomerConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.rentit.Customer>() {
            public com.rentit.Customer convert(java.lang.Long id) {
                return Customer.findCustomer(id);
            }
        };
    }
    
    public Converter<String, Customer> ApplicationConversionServiceFactoryBean.getStringToCustomerConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.rentit.Customer>() {
            public com.rentit.Customer convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Customer.class);
            }
        };
    }
    
    public Converter<Invoice, String> ApplicationConversionServiceFactoryBean.getInvoiceToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.rentit.Invoice, java.lang.String>() {
            public String convert(Invoice invoice) {
                return new StringBuilder().append(invoice.getDueDate()).toString();
            }
        };
    }
    
    public Converter<Long, Invoice> ApplicationConversionServiceFactoryBean.getIdToInvoiceConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.rentit.Invoice>() {
            public com.rentit.Invoice convert(java.lang.Long id) {
                return Invoice.findInvoice(id);
            }
        };
    }
    
    public Converter<String, Invoice> ApplicationConversionServiceFactoryBean.getStringToInvoiceConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.rentit.Invoice>() {
            public com.rentit.Invoice convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Invoice.class);
            }
        };
    }
    
    public Converter<Plant, String> ApplicationConversionServiceFactoryBean.getPlantToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.rentit.Plant, java.lang.String>() {
            public String convert(Plant plant) {
                return new StringBuilder().append(plant.getName()).append(' ').append(plant.getDescription()).append(' ').append(plant.getPrice()).toString();
            }
        };
    }
    
    public Converter<Long, Plant> ApplicationConversionServiceFactoryBean.getIdToPlantConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.rentit.Plant>() {
            public com.rentit.Plant convert(java.lang.Long id) {
                return plantRepository.findOne(id);
            }
        };
    }
    
    public Converter<String, Plant> ApplicationConversionServiceFactoryBean.getStringToPlantConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.rentit.Plant>() {
            public com.rentit.Plant convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Plant.class);
            }
        };
    }
    
    public Converter<PurchaseOrder, String> ApplicationConversionServiceFactoryBean.getPurchaseOrderToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.rentit.PurchaseOrder, java.lang.String>() {
            public String convert(PurchaseOrder purchaseOrder) {
                return new StringBuilder().append(purchaseOrder.getPuchaseID()).append(' ').append(purchaseOrder.getDueDate()).append(' ').append(purchaseOrder.getStartDate()).append(' ').append(purchaseOrder.getEndDate()).toString();
            }
        };
    }
    
    public Converter<Long, PurchaseOrder> ApplicationConversionServiceFactoryBean.getIdToPurchaseOrderConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.rentit.PurchaseOrder>() {
            public com.rentit.PurchaseOrder convert(java.lang.Long id) {
                return PurchaseOrder.findPurchaseOrder(id);
            }
        };
    }
    
    public Converter<String, PurchaseOrder> ApplicationConversionServiceFactoryBean.getStringToPurchaseOrderConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.rentit.PurchaseOrder>() {
            public com.rentit.PurchaseOrder convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), PurchaseOrder.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getCustomerToStringConverter());
        registry.addConverter(getIdToCustomerConverter());
        registry.addConverter(getStringToCustomerConverter());
        registry.addConverter(getInvoiceToStringConverter());
        registry.addConverter(getIdToInvoiceConverter());
        registry.addConverter(getStringToInvoiceConverter());
        registry.addConverter(getPlantToStringConverter());
        registry.addConverter(getIdToPlantConverter());
        registry.addConverter(getStringToPlantConverter());
        registry.addConverter(getPurchaseOrderToStringConverter());
        registry.addConverter(getIdToPurchaseOrderConverter());
        registry.addConverter(getStringToPurchaseOrderConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}
