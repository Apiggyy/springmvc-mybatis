package com.asiainfo.ssm.controller;

import com.asiainfo.ssm.po.custom.ItemsCustom;
import com.asiainfo.ssm.po.custom.ItemsQueryVo;
import com.asiainfo.ssm.service.ItemsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by weizm on 2017/3/2.
 */
@Controller
@RequestMapping("/items")
public class ItemsController {

    @Autowired
    private ItemsService itemsService;

    @RequestMapping("/queryItems")
    public ModelAndView findItemsList(HttpServletRequest request, ItemsQueryVo itemsQueryVo) throws Exception {
        List<ItemsCustom> itemsList = itemsService.findItemsList(itemsQueryVo);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("itemsList", itemsList);
        modelAndView.setViewName("items/itemsList");
        return modelAndView;
    }

//    @RequestMapping("/editItems")
//    public ModelAndView editItems() throws Exception {
//        //先写死
//        ItemsCustom itemsCustom = itemsService.findItemsById(3);
//        ModelAndView modelAndView = new ModelAndView();
//        modelAndView.addObject("itemsCustom",itemsCustom);
//        modelAndView.setViewName("items/editItems");
//        return modelAndView;
//    }

    @RequestMapping("/editItems")
    public String editItems(Model model,@RequestParam(value="id",required = true) int items_id) throws Exception {
        ItemsCustom itemsCustom = itemsService.findItemsById(items_id);
        model.addAttribute("itemsCustom", itemsCustom);
        return "items/editItems";
    }

//    @RequestMapping("/updateItems")
//    public ModelAndView updateItems() throws Exception {
//        ModelAndView modelAndView = new ModelAndView();
////        itemsService.updateItemsById(3,);
//        modelAndView.setViewName("success");
//        return modelAndView;
//    }

    @RequestMapping(value = "/updateItems",method = RequestMethod.POST)
    public String updateItems(ItemsQueryVo itemsQueryVo) throws Exception {
        itemsService.updateItemsById(itemsQueryVo);
//        return "forward:queryItem.action";
        return "redirect:queryItems.action";
    }

    @RequestMapping("/deleteItems")
    public String deleteItems(Integer[] itemsIds) {
        itemsService.deleteItemsByIds(itemsIds);
        return "redirect:queryItems.action";
    }

}
