package crm.dao;

import crm.entities.Customer;

import java.util.List;

public interface CustomerDao {

    List<Customer> getCustomers();
    void saveCustomers(Customer customer);
}
