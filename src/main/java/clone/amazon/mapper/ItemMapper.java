package clone.amazon.mapper;

import clone.amazon.domain.item.Item;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface ItemMapper {

    @Select("SELECT * FROM item")
    @Results(id = "itemMap", value = {
            @Result(property = "itemID", column = "item_ID"),
            @Result(property = "itemName", column = "item_name"),
            @Result(property = "itemPrice", column = "item_price"),
            @Result(property = "itemDesc", column = "item_desc"),
            @Result(property = "itemStar", column = "item_star"),
            @Result(property = "itemStarCount", column = "item_star"),
            @Result(property = "itemStockQuantity", column = "item_stock_quantity"),
            @Result(property = "cateName", column = "cate_name")
    })
    List<Item> findAll();

    @Select("SELECT * FROM item WHERE cate_name LIKE #{cateName}")
    @ResultMap("itemMap")
    Item findByCTName(@Param("cateName") String cateName);


    //category 테이블의 cate_group과 item 테이블을 조인한 쿼리
    @Select("SELECT category.cate_name, category.cate_group, item.item_ID, item.item_name, item.item_price, item.item_star, item.item_star_count FROM category JOIN item ON category.cate_name = item.cate_name")
    @ResultMap("itemMap")
    List<Item> findAllWithCateGroup();

}
