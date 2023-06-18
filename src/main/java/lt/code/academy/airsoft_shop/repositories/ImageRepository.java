package lt.code.academy.airsoft_shop.repositories;


import lt.code.academy.airsoft_shop.models.Image;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ImageRepository extends JpaRepository <Image, Long> {
}
