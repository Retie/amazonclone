package clone.amazon.service;

import clone.amazon.domain.Category;
import clone.amazon.mapper.CategoryMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class CategoryServiceImpl implements CategoryService {

    @Autowired
    private CategoryMapper categoryMapper;


    @Override
    public List<Category> findAll() {
        return categoryMapper.findAll();
    }

    @Override
    public Category findByCTID(Long cateID) {
        return categoryMapper.findByCTID(cateID);
    }

    @Override
    public Category findByCTName(String cateName) {
        return categoryMapper.findByCTName(cateName);
    }
}
