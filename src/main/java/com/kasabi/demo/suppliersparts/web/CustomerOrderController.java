package com.kasabi.demo.suppliersparts.web;

import com.kasabi.demo.suppliersparts.domain.CustomerOrder;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/customerorders")
@Controller
@RooWebScaffold(path = "customerorders", formBackingObject = CustomerOrder.class)
public class CustomerOrderController {
}
