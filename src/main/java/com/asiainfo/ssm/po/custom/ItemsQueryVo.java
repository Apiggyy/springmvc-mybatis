package com.asiainfo.ssm.po.custom;

import com.asiainfo.ssm.po.Items;

/**
 * Created by weizm on 2017/3/2.
 */
public class ItemsQueryVo {
    private Items items;
    private ItemsCustom itemsCustom;

    public Items getItems() {
        return items;
    }

    public void setItems(Items items) {
        this.items = items;
    }

    public ItemsCustom getItemsCustom() {
        return itemsCustom;
    }

    public void setItemsCustom(ItemsCustom itemsCustom) {
        this.itemsCustom = itemsCustom;
    }
}
