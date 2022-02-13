package clone.amazon.domain;

import clone.amazon.domain.item.Item;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.util.ArrayList;
import java.util.List;

@Getter @Setter
public class Category {
    @Id @GeneratedValue
    private Long cateID;

    private String cateName;
    private String cateDesc;
    private String cateGroup;
    private long cateLv;
    private long cateLvDetail;

    private List<Item> item = new ArrayList<>();
}
