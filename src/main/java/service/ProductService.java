package service;

import entity.Customer;
import entity.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface ProductService {
    public List<Product> getAllProduct();
    public Product getProductById(int id);
    public Page<Product> getPageProduct(Pageable pageable);
    public Page<Product> getPageProductByName(String name,Pageable pageable);
    public List<Product> getSizeProductByName(String name);
    public Page<Product> findProductByProviders_ProviderName(String providerName,Pageable pageable);
    public List<Product> getSizeProviders(String providerName);
    public Page<Product> findProductByTypePhone_TypePhone(String typePhone,Pageable pageable);
    public List<Product> getSizeTypePhone(String typePhone);
    public Page<Product> findProductByCapacity_Capacity(String capacity,Pageable pageable);
    public List<Product> getSizeCapacity(String capacity);
}
