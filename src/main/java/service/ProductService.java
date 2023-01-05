package service;

import entity.Customer;
import entity.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface ProductService {
    public List<Product> getAllProduct();
    public Page<Product> getPageProduct(Pageable pageable);
    public Page<Product> getPageProductByName(String name,Pageable pageable);
    public List<Product> getSizeProductByName(String name);
    public Product getProductById(int id);
    public Page<Product> getPageProviderName(String providerName,Pageable pageable);
}
