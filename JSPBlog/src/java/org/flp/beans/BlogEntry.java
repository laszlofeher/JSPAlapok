/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.flp.beans;

import java.sql.Date;

/**
 *
 * @author tanulo
 */
public class BlogEntry {
    private String  title;
    private String  entry;
    private Date    entryDate;

    public BlogEntry(String title, String entry, Date entryDate) {
        this.title      = title;
        this.entry      = entry;
        this.entryDate  = entryDate;
    }
    
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getEntry() {
        return entry;
    }

    public void setEntry(String entry) {
        this.entry = entry;
    }

    public Date getEntryDate() {
        return entryDate;
    }

    public void setEntryDate(Date entryDate) {
        this.entryDate = entryDate;
    }
}