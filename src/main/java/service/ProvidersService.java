package service;

import entity.Providers;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface ProvidersService {
    public List<Providers> PROVIDERS();
}
