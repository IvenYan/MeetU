package com.wso2.controller;

import com.wso2.dao.IWSO2InterfaceDao;
import com.wso2.dao.WSO2InterfaceDao;
import com.wso2.model.WSO2Interface;
import com.wso2.model.WSO2InterfaceOptional;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.support.AbstractMultipartHttpServletRequest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class AddWSO2InterfaceController extends StringHttpMessageConverter {

    @RequestMapping(value="/addWSO2Interface.do",method = RequestMethod.POST)
    public String action(String interfaceName , String integrationOwner,String handling, String handlingTime, String comments) throws Exception{
        System.out.println("Controller process:AddWSO2Interface.do");
        System.out.println(interfaceName+","+integrationOwner+","+handling+","+handlingTime+","+comments);
        WSO2InterfaceOptional wio=new WSO2InterfaceOptional();
        WSO2Interface wi=new WSO2Interface();
        IWSO2InterfaceDao wiDao=new WSO2InterfaceDao();
        wi.setInterfaceName(interfaceName);
        wi.setIntegrationOwner(integrationOwner);
        wi.setComments(comments);
        wio.setHandlingTime(handlingTime);
        wio.setHandling(handling);
        wio.setWso2Interface(wi);
        wiDao.addInterface(wio);

        return "WSO2InterfaceManager";
    }

    /*@RequestMapping("/nice")
    public String forward(){
        return "home.jsp";
    }*/


}
