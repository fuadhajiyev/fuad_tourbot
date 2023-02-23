package az.code.tourbot.repositories.redis;

import az.code.tourbot.entities.Session;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;
import java.util.UUID;

@Repository
public interface SessionRepository extends CrudRepository<Session, UUID> {
    Optional<Session> findByClientId(Long clientId);
}
