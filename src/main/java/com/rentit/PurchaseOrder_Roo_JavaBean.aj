// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rentit;

import com.rentit.Customer;
import com.rentit.Plant;
import com.rentit.PurchaseOrder;
import com.rentit.Statuses;
import java.util.Date;

privileged aspect PurchaseOrder_Roo_JavaBean {
    
    public Long PurchaseOrder.getPuchaseID() {
        return this.puchaseID;
    }
    
    public void PurchaseOrder.setPuchaseID(Long puchaseID) {
        this.puchaseID = puchaseID;
    }
    
    public Statuses PurchaseOrder.getStatus() {
        return this.status;
    }
    
    public void PurchaseOrder.setStatus(Statuses status) {
        this.status = status;
    }
    
    public Customer PurchaseOrder.getCustomer() {
        return this.customer;
    }
    
    public void PurchaseOrder.setCustomer(Customer customer) {
        this.customer = customer;
    }
    
    public Plant PurchaseOrder.getPlant() {
        return this.plant;
    }
    
    public void PurchaseOrder.setPlant(Plant plant) {
        this.plant = plant;
    }
    
    public Date PurchaseOrder.getDueDate() {
        return this.dueDate;
    }
    
    public void PurchaseOrder.setDueDate(Date dueDate) {
        this.dueDate = dueDate;
    }
    
    public Date PurchaseOrder.getStartDate() {
        return this.startDate;
    }
    
    public void PurchaseOrder.setStartDate(Date startDate) {
        this.startDate = startDate;
    }
    
    public Date PurchaseOrder.getEndDate() {
        return this.endDate;
    }
    
    public void PurchaseOrder.setEndDate(Date endDate) {
        this.endDate = endDate;
    }
    
}
