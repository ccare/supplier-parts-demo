package com.kasabi.demo.suppliersparts.web;

import com.kasabi.demo.suppliersparts.domain.Orderline;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/orderlines")
@Controller
@RooWebScaffold(path = "orderlines", formBackingObject = Orderline.class)
public class OrderlineController {
}
