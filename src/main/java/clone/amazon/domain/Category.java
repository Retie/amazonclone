package clone.amazon.domain;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Getter @Setter
public class Category {
    @Id @GeneratedValue
    private Long cateID;

    private String cateName;
    private String cateDesc;
    private String cateGroup;
    private long cateLv;
    private long cateLvDetail;

    // cateGroup 참조하는 외래키??
}
