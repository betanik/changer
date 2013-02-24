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
        Change change = new Change();
        org.hibernate.Session session = (org.hibernate.Session) change.entityManager().getDelegate();
        session.setFlushMode(org.hibernate.FlushMode.MANUAL);
		return change;
    }
    
    public void persistChange(Change change) {
        org.hibernate.Session session = (org.hibernate.Session) change.entityManager().getDelegate();
        session.setFlushMode(org.hibernate.FlushMode.MANUAL);
        change.persist();
        System.out.println(change);
    }
}
