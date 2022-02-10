package clone.amazon.domain.item;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

@Getter @Setter
public class Item {
    @Id @GeneratedValue
    @Column(name = "item_id")
    private Long itemID;

    private String itemName;
    private int itemPrice;
    private String itemDesc;

    private int itemStar;
    private int itemStarCount;

    private int itemStockQuantity;
    private String cateName;

}
