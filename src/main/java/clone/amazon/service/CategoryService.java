package clone.amazon.service;

import clone.amazon.domain.Category;

import java.util.List;

public interface CategoryService {
    List<Category> findAll();
    Category findByCTID(Long cateID);
    Category findByCTName(String cateName);
}
