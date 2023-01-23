package repository;

import entity.OrderDetails;
import entity.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;

import java.util.List;

public interface OrderDetailRepository extends CrudRepository<OrderDetails,Integer> {

    @Query(value="select  * from orderdetail where orderID=?1 ",nativeQuery = true)
    public List<OrderDetails> getOrderDetailByID(int orderID);
}
