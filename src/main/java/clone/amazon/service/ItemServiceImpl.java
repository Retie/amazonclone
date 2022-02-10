package clone.amazon.service;

import clone.amazon.domain.item.Item;
import clone.amazon.mapper.ItemMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ItemServiceImpl implements ItemService {

    @Autowired
    private ItemMapper itemMapper;


    @Override
    public List<Item> findAll() {
        return itemMapper.findAll();
    }

    @Override
    public Item findByCTName(String cateName) {
        return itemMapper.findByCTName(cateName);
    }

    @Override
    public List<Item> findAllWithCateGroup() {
        return itemMapper.findAllWithCateGroup();
    }
}
