package service;

import entity.Customer;
import entity.Product;
import entity.Promotion;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface ProductService {
    public List<Product> getAllProduct();
    public List<Product> getListPromotion();
    public List<Product> getProductSale();
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
    public Page<Product> getPriceDuoi5(Pageable pageable);
    public List<Product> getSizeDuoi5();
    public Page<Product> getPriceTu5Den13(Pageable pageable);
    public List<Product> getSizeTu5Den13();
    public Page<Product> getPriceTu13Den20(Pageable pageable);
    public List<Product> getSizeTu13Den20();
    public Page<Product> getPriceTren20(Pageable pageable);
    public List<Product> getSizeTren20();
}
