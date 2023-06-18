package lt.code.academy.airsoft_shop.services;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import lt.code.academy.airsoft_shop.models.Product;
import lt.code.academy.airsoft_shop.repositories.ProductRepository;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;

@Service
@Slf4j
//turejau isideti lombuka
@RequiredArgsConstructor
public class ProductService {
    private final ProductRepository productRepository;

    public List<Product> listProducts(String title) {
//        List<Product> products = productRepository.findAll();
        if (title != null) return productRepository.findByTitle(title);
        return productRepository.findAll();
    }

    public void saveProduct(Product product) {
        log.info("saving new {}", product);
        productRepository.save(product);
    }

    public void deleteProduct(Long id) {
        productRepository.deleteAllById(Collections.singleton(id));

    }

    public Product getProductById(Long id) {
        return productRepository.findById(id).orElse(null);
//        susigrazinu nuli jei neradau produkto

    }

}
