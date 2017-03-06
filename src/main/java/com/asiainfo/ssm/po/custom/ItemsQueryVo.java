package com.asiainfo.ssm.po.custom;

import com.asiainfo.ssm.po.Items;

import java.util.List;

/**
 * Created by weizm on 2017/3/2.
 */
public class ItemsQueryVo {
    private Items items;
    private ItemsCustom itemsCustom;
    private List<ItemsCustom> itemsCustoms;

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

    public List<ItemsCustom> getItemsCustoms() {
        return itemsCustoms;
    }

    public void setItemsCustoms(List<ItemsCustom> itemsCustoms) {
        this.itemsCustoms = itemsCustoms;
    }
}
