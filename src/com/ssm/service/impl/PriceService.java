package com.ssm.service.impl;

import com.ssm.entity.Baseinfomations;
import com.ssm.entity.FacadeInfomations;
import com.ssm.entity.Function;
import com.ssm.mapper.Mobilemapper;
import com.ssm.mapper.Pricemapper;
import com.ssm.service.IPriceService;
import com.ssm.util.HelpDTO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class PriceService implements IPriceService{
    @Autowired
    private Pricemapper pricemapper;
    @Autowired
    private Mobilemapper Mobilemapper;


    // 当一个字符串会很多次再次添加字符串时用StringBuilder或Stringbuffer
    // StringBuider的应用
    //对ID集合的字符串进行切割，再转换成int类型，在各自的表里查询出需要减去的价格进行计算，对各自描述进行字符串拼接
    @Override
    public HelpDTO countPrice(String mobileid, String property, String descid, String property1){

        StringBuilder builder=new StringBuilder();
        System.out.println(property);
        System.out.println(descid);
        System.out.println(property1);
        double price = Mobilemapper.findById(Integer.parseInt(mobileid)).getPrice();
        System.out.println("此时的全新价是===="+price);

        //查出baseinfomations 中查出需要减少的价格，用全新机的价格减
        String[] str = property.split(",");
        int []ids=new int[str.length];
        for(int i=0;i<str.length;i++) {
            ids[i] = Integer.parseInt(str[i]);
            
            Baseinfomations baseinfo = pricemapper.findbaseinformationById(ids[i]);
                System.out.println(ids[i]+"减掉金额"+baseinfo.getModifyprice());

                price+=baseinfo.getModifyprice();
                builder.append("/"+baseinfo.getNameInfo()+"\\");
        }
        builder.append("</br>");
        System.out.println("减掉base后的价格===="+price);

        //查function 中查出需要减少的价格，用全新机的价格减
        //第二步是多选，不选时默认值为0，当字符串不是"0"时表示该选项被选，为0时表示"未被选"、可忽略
        String[] str1 = descid.split(",");
        int []ids1=new int[str1.length];
        for(int i=0;i<str1.length;i++) {
            ids1[i] = Integer.parseInt(str1[i]);
            if (ids1[i]>0) {
                Function function = pricemapper.findfunctionById(ids1[i]);
                System.out.println(ids1[i]+"该减去"+function.getModifyprice());

                price+=function.getModifyprice();
                builder.append("/"+function.getFunname()+"\\");
            }
        }
        builder.append("</br>");
        System.out.println("减掉funtion后的价格===="+price);

        //查facademations 中查出需要减少的价格，用价格price的价格减
        String[] str2 = property1.split(",");
        int []ids2=new int[str2.length];
        for(int i=0;i<str2.length;i++) {
            ids2[i] = Integer.parseInt(str2[i]);
            FacadeInfomations facadeinfo = pricemapper.findFacadeinfomationById(ids2[i]);

                System.out.println(ids2[i]+"减掉的价格是"+facadeinfo.getUpdateprice());
                price+=facadeinfo.getUpdateprice();
                builder.append("/"+facadeinfo.getFacadename()+"\\");
        }
        System.out.println("减掉facademations后的价格===="+price);

        //如果此手机价格低于200了，将以200最低价收购
        if (price<200){
           price=200;
        }

        HelpDTO helpDTO = new HelpDTO();
        helpDTO.setPrice(price);
        helpDTO.setDescription(builder.toString());
//        System.out.println("builder.toString========="+builder.toString());
        return helpDTO;
    }


	public void setPricemapper(Pricemapper pricemapper) {
		this.pricemapper = pricemapper;
	}


	public void setMobilemapper(Mobilemapper mobilemapper) {
		Mobilemapper = mobilemapper;
	}
}
