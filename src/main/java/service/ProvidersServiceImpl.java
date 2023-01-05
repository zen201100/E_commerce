package service;

import entity.Providers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import repository.ProvidersRepository;

import java.util.List;

@Service(value = "providersService")
public class ProvidersServiceImpl implements ProvidersService {
    @Autowired
    private ProvidersRepository providersRepository;
    @Override
    public List<Providers> PROVIDERS() {
        return (List<Providers>) providersRepository.findAll();
    }

}
