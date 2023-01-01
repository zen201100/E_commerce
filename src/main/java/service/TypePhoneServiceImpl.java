package service;

import entity.TypePhone;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import repository.TypePhoneRepository;

import java.util.List;

@Service(value = "typePhoneService")
public class TypePhoneServiceImpl implements TypePhoneService{
    @Autowired
    private TypePhoneRepository typePhoneRepository;
    @Override
    public List<TypePhone> TYPE_PHONES() {
        return (List<TypePhone>) typePhoneRepository.findAll();
    }
}
