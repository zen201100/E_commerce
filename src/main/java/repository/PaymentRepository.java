package repository;

import entity.Payment;
import entity.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

public interface PaymentRepository extends CrudRepository<Payment,Integer> {
    @Query(value="select  * from payment where orderID =?1",nativeQuery = true)
    public Payment getPaymentByOrderID(int orderID);
}
