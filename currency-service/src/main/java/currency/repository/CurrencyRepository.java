package currency.repository;

import java.util.List;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import currency.model.Currency; 

@RepositoryRestResource(collectionResourceRel = "currency", path = "currencies")
public interface CurrencyRepository extends MongoRepository<Currency, String> {

	List<Currency> findByName(@Param("name") String name);
	
	List<Currency> findByCode(@Param("code") String code);

}


