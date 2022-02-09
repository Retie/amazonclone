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
}
