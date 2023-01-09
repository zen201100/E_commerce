package repository;

import entity.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;

import java.util.List;

public interface ProductRepository extends PagingAndSortingRepository<Product,Integer> {
    @Query(value="select  * from product ",nativeQuery = true)
    public Page<Product> getPageProduct(Pageable pageable);

    @Query(value="select  * from product where name like %?1% ",nativeQuery = true)
    public Page<Product> getPageProductByName(String name,Pageable pageable);
    @Query(value="select  * from product where name like %?1% ",nativeQuery = true)
    public List<Product> getSizeProductByName(String name);
    public Page<Product> findProductByProviders_ProviderName(String providerName,Pageable pageable);
    @Query(value="select  * from product inner join providers on product.providerID=providers.id where providers.providerName=?1",nativeQuery = true)
    public List<Product> getSizeProviders(String providerName);

    public Page<Product> findProductByTypePhone_TypePhone(String typePhone,Pageable pageable);
    @Query(value="select  * from product inner join typephone on product.typePhoneID=typephone.id where typephone.typePhone=?1",nativeQuery = true)
    public List<Product> getSizeTypePhone(String typePhone);

    public Page<Product> findProductByCapacity_Capacity(String capacity,Pageable pageable);
    @Query(value="select  * from product inner join capacity on product.capacityID=capacity.id where capacity.capacity=?1",nativeQuery = true)
    public List<Product> getSizeCapacity(String capacity);

}
