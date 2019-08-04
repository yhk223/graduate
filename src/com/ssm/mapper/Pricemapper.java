package com.ssm.mapper;

import org.springframework.stereotype.Component;

import com.ssm.entity.Baseinfomations;
import com.ssm.entity.FacadeInfomations;
import com.ssm.entity.Function;
@Component
public interface Pricemapper {
    Baseinfomations findbaseinformationById(Integer id);
    Function findfunctionById(Integer id);
    FacadeInfomations findFacadeinfomationById(Integer id);
}
