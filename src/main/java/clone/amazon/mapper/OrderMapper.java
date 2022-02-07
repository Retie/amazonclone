package clone.amazon.mapper;

import clone.amazon.domain.Category;
import org.apache.ibatis.annotations.*;

@Mapper
public interface OrderMapper {

    @Select("SELECT * FROM category WHERE cate_ID = #{cateID}")
    @Results(id = "categoryMap", value = {
            @Result(property = "cateID", column = "cate_ID"),
            @Result(property = "cateName", column = "cate_name"),
            @Result(property = "cateDesc", column = "cate_desc"),
            @Result(property = "cateGroup", column = "cate_group"),
            @Result(property = "cateLv", column = "cate_lv"),
            @Result(property = "cateLvDetail", column = "cate_lv_detail"),
    })
    Category findByCTID(@Param("cateID") Long cateID);

    //category 테이블에서 이름, 설명 불러오는 쿼리문
    @Select("SELECT * FROM category WHERE cate_name = #{category.cate_name}")
    @ResultMap("categoryMap")
    Category findByCTName(@Param("cateName") String CateName);

}
