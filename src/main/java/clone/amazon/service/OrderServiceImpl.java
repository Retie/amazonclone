package clone.amazon.service;

import clone.amazon.domain.Category;
import clone.amazon.mapper.OrderMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderMapper orderMapper;

    @Override
    public Category findByCTID(Long cateID) {
        return orderMapper.findByCTID(cateID);
    }

    @Override
    public Category findByCTName(String cateName) {
        return orderMapper.findByCTName(cateName);
    }
}