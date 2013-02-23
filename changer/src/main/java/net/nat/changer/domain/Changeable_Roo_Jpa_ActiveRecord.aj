// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package net.nat.changer.domain;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import net.nat.changer.domain.Changeable;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Changeable_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Changeable.entityManager;
    
    public static final EntityManager Changeable.entityManager() {
        EntityManager em = new Changeable() {
        }.entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Changeable.countChangeables() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Changeable o", Long.class).getSingleResult();
    }
    
    public static List<Changeable> Changeable.findAllChangeables() {
        return entityManager().createQuery("SELECT o FROM Changeable o", Changeable.class).getResultList();
    }
    
    public static Changeable Changeable.findChangeable(Long id) {
        if (id == null) return null;
        return entityManager().find(Changeable.class, id);
    }
    
    public static List<Changeable> Changeable.findChangeableEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Changeable o", Changeable.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Changeable.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Changeable.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Changeable attached = Changeable.findChangeable(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Changeable.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Changeable.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Changeable Changeable.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Changeable merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
