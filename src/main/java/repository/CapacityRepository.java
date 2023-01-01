package repository;

import entity.Capacity;
import entity.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

public interface CapacityRepository extends CrudRepository<Capacity,Integer> {

}
