package service;

import entity.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import repository.ProductRepository;

import java.util.List;

@Service(value = "productService")
public class ProductServiceImpl implements ProductService{
    @Autowired
    private ProductRepository productRepository;

    @Override
    public List<Product> getAllProduct() {
        return (List<Product>) productRepository.findAll();
    }

    @Override
    public Product getProductById(int id) {
        return (Product) productRepository.findById(id).get();
    }

    @Override
    public Page<Product> getPageProduct(Pageable pageable) {
        return (Page<Product>) productRepository.getPageProduct(pageable);
    }

    @Override
    public Page<Product> getPageProductByName(String name, Pageable pageable) {
        return (Page<Product>) productRepository.getPageProductByName(name,pageable);
    }

    @Override
    public List<Product> getSizeProductByName(String name) {
      return (List<Product>) productRepository.getSizeProductByName(name);
    }

    @Override
    public Page<Product> findProductByProviders_ProviderName(String providerName, Pageable pageable) {
        return (Page<Product>) productRepository.findProductByProviders_ProviderName(providerName,pageable);
    }

    @Override
    public List<Product> getSizeProviders(String providerName) {
        return (List<Product>) productRepository.getSizeProviders(providerName);
    }

    @Override
    public Page<Product> findProductByTypePhone_TypePhone(String typePhone,Pageable pageable) {
        return (Page<Product>) productRepository.findProductByTypePhone_TypePhone(typePhone,pageable);
    }

    @Override
    public List<Product> getSizeTypePhone(String typePhone) {
        return (List<Product>) productRepository.getSizeTypePhone(typePhone);
    }

    @Override
    public Page<Product> findProductByCapacity_Capacity(String capacity, Pageable pageable) {
        return (Page<Product>) productRepository.findProductByCapacity_Capacity(capacity,pageable);
    }

    @Override
    public List<Product> getSizeCapacity(String capacity) {
        return (List<Product>) productRepository.getSizeCapacity(capacity);
    }

    @Override
    public Page<Product> getPriceDuoi5(Pageable pageable) {
        return (Page<Product>) productRepository.getPriceDuoi5(pageable);
    }

    @Override
    public List<Product> getSizeDuoi5() {
        return (List<Product>) productRepository.getSizeDuoi5();
    }


    @Override
    public Page<Product> getPriceTu5Den13(Pageable pageable) {
        return (Page<Product>) productRepository.getPriceTu5Den13(pageable);
    }

    @Override
    public List<Product> getSizeTu5Den13() {
        return (List<Product>) productRepository.getSizeTu5Den13();
    }

    @Override
    public Page<Product> getPriceTu13Den20(Pageable pageable) {
        return (Page<Product>) productRepository.getPriceTu13Den20(pageable);
    }

    @Override
    public List<Product> getSizeTu13Den20() {
        return (List<Product>) productRepository.getSizeTu13Den20();
    }


    @Override
    public Page<Product> getPriceTren20(Pageable pageable) {
        return (Page<Product>) productRepository.getPriceTren20(pageable);
    }

    @Override
    public List<Product> getSizeTren20() {
        return (List<Product>) productRepository.getSizeTren20();
    }


}
