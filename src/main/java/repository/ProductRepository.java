package repository;

import entity.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface ProductRepository extends CrudRepository<Product,Integer> {
    @Query(value="select  * from product ",nativeQuery = true)
    public Page<Product> getPageProduct(Pageable pageable);

    @Query(value="select  * from product where name like %?1% ",nativeQuery = true)
    public Page<Product> getPageProductByName(String name,Pageable pageable);
    @Query(value="select  * from product where name like %?1% ",nativeQuery = true)
    public List<Product> getSizeProductByName(String name);
}
