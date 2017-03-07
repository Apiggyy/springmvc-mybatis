package com.asiainfo.ssm.service;

import com.asiainfo.ssm.po.custom.ItemsCustom;
import com.asiainfo.ssm.po.custom.ItemsQueryVo;

import java.util.List;

/**
 * Created by weizm on 2017/3/2.
 */
public interface ItemsService {

    public List<ItemsCustom> findItemsList(ItemsQueryVo itemsQueryVo) throws Exception;

    public ItemsCustom findItemsById(int id) throws Exception;

    public void  updateItemsById(ItemsCustom itemsCustom) throws  Exception;

    public void deleteItemsByIds(Integer[] ids) throws Exception;

    public void updateItemsBatch(ItemsQueryVo itemsQueryVo) throws Exception;
}
