package service;

import entity.Customer;
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
    public Page<Product> getPageProduct(Pageable pageable) {
        return (Page<Product>) productRepository.getPageProduct(pageable);
    }

    @Override
    public Page<Product> getPageProductByName(String name, Pageable pageable) {
        return (Page<Product>) productRepository.getPageProductByName(name,pageable);
    }

    @Override
    public Product getProductById(int id) {
        return (Product) productRepository.findById(id).get();
    }

}
