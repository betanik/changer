// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package net.nat.changer.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;
import net.nat.changer.domain.Change;

privileged aspect Change_Roo_Jpa_Entity {
    
    declare @type: Change: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Change.id;
    
    @Version
    @Column(name = "version")
    private Integer Change.version;
    
    public Long Change.getId() {
        return this.id;
    }
    
    public void Change.setId(Long id) {
        this.id = id;
    }
    
    public Integer Change.getVersion() {
        return this.version;
    }
    
    public void Change.setVersion(Integer version) {
        this.version = version;
    }
    
}
