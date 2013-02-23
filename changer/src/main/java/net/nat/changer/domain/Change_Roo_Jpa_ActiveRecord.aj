// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package net.nat.changer.domain;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import net.nat.changer.domain.Change;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Change_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Change.entityManager;
    
    public static final EntityManager Change.entityManager() {
        EntityManager em = new Change().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Change.countChanges() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Change o", Long.class).getSingleResult();
    }
    
    public static List<Change> Change.findAllChanges() {
        return entityManager().createQuery("SELECT o FROM Change o", Change.class).getResultList();
    }
    
    public static Change Change.findChange(Long id) {
        if (id == null) return null;
        return entityManager().find(Change.class, id);
    }
    
    public static List<Change> Change.findChangeEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Change o", Change.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Change.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Change.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Change attached = Change.findChange(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Change.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Change.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Change Change.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Change merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
