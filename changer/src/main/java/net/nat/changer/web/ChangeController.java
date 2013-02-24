package net.nat.changer.web;

import net.nat.changer.domain.Change;
import net.nat.changer.domain.Person;

import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/changes")
@Controller
@RooWebScaffold(path = "changes", formBackingObject = Change.class)
public class ChangeController {

    public Change initializeChange() {
        return new Change();
    }
}
