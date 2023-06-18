package lt.code.academy.airsoft_shop.repositories;

import lt.code.academy.airsoft_shop.models.Product;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

//Pasiimu prieiga per interfeisa
public interface ProductRepository extends JpaRepository <Product, Long> {
    List<Product> findByTitle(String title);
}
