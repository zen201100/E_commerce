package repository;

import entity.Product;
import entity.Providers;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface ProvidersRepository extends CrudRepository<Providers,Integer> {
    @Query(value="select  * from providers where providerName=?1",nativeQuery = true)
    public Page<Providers> getPageProviders(String providerName,Pageable pageable);
    @Query(value="select  * from providers where providerName=?1",nativeQuery = true)
    public Providers getSizeProviders(String providerName);
}
