package repository;

import entity.Product;
import entity.Promotion;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface PromotionRepository extends CrudRepository<Promotion,Integer> {
    @Query(value="select  * from promotion where amount >0",nativeQuery = true)
    public List<Promotion> getListPromotion();
}
