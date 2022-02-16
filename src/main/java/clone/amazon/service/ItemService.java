package clone.amazon.service;

import clone.amazon.domain.item.Item;

import java.util.List;

public interface ItemService {
    List<Item> findAll();
    Item findByCTName(String cateName);
}
