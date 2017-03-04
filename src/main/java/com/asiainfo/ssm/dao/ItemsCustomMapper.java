package com.asiainfo.ssm.dao;

import com.asiainfo.ssm.po.custom.ItemsCustom;
import com.asiainfo.ssm.po.custom.ItemsQueryVo;

import java.util.List;

/**
 * Created by weizm on 2017/3/2.
 */
public interface ItemsCustomMapper {
    List<ItemsCustom> findItemsList(ItemsQueryVo itemsQueryVo) throws Exception;
}