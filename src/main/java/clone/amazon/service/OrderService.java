package clone.amazon.service;

import clone.amazon.domain.Category;

public interface OrderService {
    Category findByCTID(Long cateID);
    Category findByCTName(String cateName);
}
