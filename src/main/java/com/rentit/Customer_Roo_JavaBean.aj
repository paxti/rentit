// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rentit;

import com.rentit.Customer;

privileged aspect Customer_Roo_JavaBean {
    
    public String Customer.getName() {
        return this.name;
    }
    
    public void Customer.setName(String name) {
        this.name = name;
    }
    
}
