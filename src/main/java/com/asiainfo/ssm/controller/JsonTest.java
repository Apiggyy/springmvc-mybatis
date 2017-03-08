package com.asiainfo.ssm.controller;

import com.asiainfo.ssm.po.custom.ItemsCustom;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by Lenovo on 2017/3/8.
 */
@Controller
public class JsonTest {
    @RequestMapping(value="/requestJson",method = RequestMethod.POST)
    public @ResponseBody ItemsCustom requestJson(@RequestBody ItemsCustom itemsCustom) {
        return itemsCustom;
    }

    @RequestMapping(value="/responseJson",method = RequestMethod.POST)
    public @ResponseBody ItemsCustom responseJson(ItemsCustom itemsCustom) {
        return itemsCustom;
    }
}
