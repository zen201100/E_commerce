package repository;

import entity.OrderDetails;
import entity.Orders;
import entity.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;

import java.util.List;

public interface OrderRepository extends PagingAndSortingRepository<Orders,Integer> {

    @Query(value="select  * from orders where customerID=?1 order by Id desc ",nativeQuery = true)
    public Page<Orders> getOrdersByCustomerID(int customerID, Pageable pageable);

    @Query(value="select  * from orders where customerID=?1",nativeQuery = true)
    public List<Orders> getListOrderByCustomerID(int customerID);

}
