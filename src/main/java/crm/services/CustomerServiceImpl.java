package crm.services;

import crm.dao.CustomerDao;
import crm.entities.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class CustomerServiceImpl implements CustomerService {

    @Autowired
    private CustomerDao customerDao;

    @Transactional
    public List<Customer> getCustomers(){

        List<Customer> customers = customerDao.getCustomers();
        return customers;
    }

    @Override
    @Transactional
    public void saveCustomer(Customer customer) {
        customerDao.saveCustomers(customer);
    }
}
