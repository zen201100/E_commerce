package repository;

import entity.Product;
import entity.Transport;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

public interface TransportRepository extends CrudRepository<Transport,Integer> {

    @Query(value="select  * from transport where orderID=?1",nativeQuery = true)
    public Transport getTransportByOrderID(int orderID);
}
