package com.asiainfo.ssm.service.impl;

import com.asiainfo.ssm.dao.ItemsCustomMapper;
import com.asiainfo.ssm.dao.ItemsMapper;
import com.asiainfo.ssm.exception.CustomException;
import com.asiainfo.ssm.po.Items;
import com.asiainfo.ssm.po.ItemsExample;
import com.asiainfo.ssm.po.custom.ItemsCustom;
import com.asiainfo.ssm.po.custom.ItemsQueryVo;
import com.asiainfo.ssm.service.ItemsService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.Collections;
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
        //全局异常处理
        if (items == null) {
            throw new CustomException("商品信息不存在！");
        }
        ItemsCustom itemsCustom = new ItemsCustom();
        BeanUtils.copyProperties(items, itemsCustom);
        return itemsCustom;
    }

    public void updateItemsById(ItemsCustom itemsCustom) throws Exception {
        itemsMapper.updateByPrimaryKey(itemsCustom);
    }

    public void deleteItemsByIds(Integer[] ids) throws Exception{
        ItemsExample itemsExample = new ItemsExample();
        List<Integer> idsList = new ArrayList<Integer>();
        Collections.addAll(idsList, ids);
        itemsExample.createCriteria().andIdIn(idsList);
        itemsMapper.deleteByExample(itemsExample);
    }

    public void updateItemsBatch(ItemsQueryVo itemsQueryVo) throws Exception {
        List<ItemsCustom> itemsCustomList = itemsQueryVo.getItemsCustoms();
        for (ItemsCustom itemsCustom : itemsCustomList) {
            itemsMapper.updateByPrimaryKey(itemsCustom);
        }
    }
}
