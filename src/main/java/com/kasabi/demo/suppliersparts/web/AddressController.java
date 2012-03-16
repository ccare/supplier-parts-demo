package com.kasabi.demo.suppliersparts.web;

import com.kasabi.demo.suppliersparts.domain.Address;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/addresses")
@Controller
@RooWebScaffold(path = "addresses", formBackingObject = Address.class)
public class AddressController {
}
