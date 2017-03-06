package com.asiainfo.ssm.service.impl;

import com.asiainfo.ssm.dao.ItemsCustomMapper;
import com.asiainfo.ssm.dao.ItemsMapper;
import com.asiainfo.ssm.po.Items;
import com.asiainfo.ssm.po.custom.ItemsCustom;
import com.asiainfo.ssm.po.custom.ItemsQueryVo;
import com.asiainfo.ssm.service.ItemsService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by weizm on 2017/3/2.
 */
public class ItemsServiceImpl implements ItemsService {

    @Autowired
    private ItemsCustomMapper itemsCustomMapper ;

    @Autowired
    private ItemsMapper itemsMapper;

    public List<ItemsCustom> findItemsList(ItemsQueryVo itemsQueryVo) throws Exception {
        return itemsCustomMapper.findItemsList(itemsQueryVo);
    }

    public ItemsCustom findItemsById(int id) throws Exception {
        Items items = itemsMapper.selectByPrimaryKey(id);
        ItemsCustom itemsCustom = new ItemsCustom();
        BeanUtils.copyProperties(items, itemsCustom);
        return itemsCustom;
    }

    public void updateItemsById(ItemsQueryVo itemsQueryVo)  {
        itemsMapper.updateByPrimaryKey(itemsQueryVo.getItemsCustom());
    }
}
