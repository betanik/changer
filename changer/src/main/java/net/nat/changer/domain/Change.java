package net.nat.changer.domain;

import javax.persistence.CascadeType;
import javax.persistence.ManyToOne;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.serializable.RooSerializable;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
@RooSerializable
public class Change {

    private String description;

    @ManyToOne(cascade = CascadeType.ALL)
    private Person addedPerson;
    

}
