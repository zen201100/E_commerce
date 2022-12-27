package service;

import entity.Capacity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import repository.CapacityRepository;

import java.util.List;

@Service(value = "capacityService")
public class CapacityServiceImpl implements CapacityService{
    @Autowired
    private CapacityRepository capacityRepository;

    @Override
    public List<Capacity> getAllCapacity() {
        return (List<Capacity>) capacityRepository.findAll();
    }
}
