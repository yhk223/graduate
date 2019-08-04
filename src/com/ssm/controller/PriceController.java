package com.ssm.controller;

import com.ssm.entity.Mobile;
import com.ssm.service.IMobileService;
import com.ssm.service.IPriceService;
import com.ssm.util.HelpDTO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/price")
public class PriceController {
    @Autowired
    private IPriceService priceService;
    @Autowired
    private IMobileService mobileService;

    @RequestMapping("/countprice")
    public String countPrice(String mobileid, String property, String descid, String property1, Model model){
    	System.out.printf("++++++"+mobileid+"++++++"+property+"++++++"+descid+"++++++"+property1+"++++++");
        HelpDTO helpDTO = priceService.countPrice(mobileid, property, descid, property1);
        System.out.println("priceController得到回收价格"+helpDTO.getPrice());
        Mobile mobile=mobileService.findMobileByid(Integer.parseInt(mobileid));
        mobile.setPrice(helpDTO.getPrice());
        model.addAttribute("mobile",mobile);
        model.addAttribute("description",helpDTO.getDescription());
        return "/price";
    }

	public void setPriceService(IPriceService priceService) {
		this.priceService = priceService;
	}

	public void setMobileService(IMobileService mobileService) {
		this.mobileService = mobileService;
	}
}
