package com.kasabi.demo.suppliersparts.web;

import com.kasabi.demo.suppliersparts.domain.Part;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/parts")
@Controller
@RooWebScaffold(path = "parts", formBackingObject = Part.class)
public class PartController {
}
