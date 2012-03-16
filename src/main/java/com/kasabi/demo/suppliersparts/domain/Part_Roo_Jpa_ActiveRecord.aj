// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.kasabi.demo.suppliersparts.domain;

import com.kasabi.demo.suppliersparts.domain.Part;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Part_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Part.entityManager;
    
    public static final EntityManager Part.entityManager() {
        EntityManager em = new Part().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Part.countParts() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Part o", Long.class).getSingleResult();
    }
    
    public static List<Part> Part.findAllParts() {
        return entityManager().createQuery("SELECT o FROM Part o", Part.class).getResultList();
    }
    
    public static Part Part.findPart(Long id) {
        if (id == null) return null;
        return entityManager().find(Part.class, id);
    }
    
    public static List<Part> Part.findPartEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Part o", Part.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Part.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Part.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Part attached = Part.findPart(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Part.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Part.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Part Part.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Part merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}