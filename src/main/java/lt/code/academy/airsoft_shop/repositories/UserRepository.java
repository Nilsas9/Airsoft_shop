package lt.code.academy.airsoft_shop.repositories;

import lt.code.academy.airsoft_shop.models.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByEmail(String email);
}
