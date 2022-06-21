
package com.entities;

import java.sql.Timestamp;
import javax.servlet.annotation.MultipartConfig;

@MultipartConfig
public class Posts 
{
    private int pid;
    private String pTitle;
    private String pContent;
    private String pCode;
    private String pPics;
    private Timestamp pDate;
    private int catId;
    private int uid;

    public Posts(String pTitle, String pContent, String pCode, String pPics, Timestamp pDate, int catId, int uid) {
        this.pTitle = pTitle;
        this.pContent = pContent;
        this.pCode = pCode;
        this.pPics = pPics;
        this.pDate = pDate;
        this.catId = catId;
        this.uid = uid;
    }

    public Posts(int pid, String pTitle, String pContent, String pCode, Timestamp pDate, int catId, int uid) {
        this.pid = pid;
        this.pTitle = pTitle;
        this.pContent = pContent;
        this.pCode = pCode;
        this.pDate = pDate;
        this.catId = catId;
        this.uid = uid;
    }

    public Posts(String pTitle, String pContent, String pCode, String pPics, int catId, int uid) {
        this.pTitle = pTitle;
        this.pContent = pContent;
        this.pCode = pCode;
        this.pPics = pPics;
        this.catId = catId;
        this.uid = uid;
    }
    

    public Posts(String pTitle, String pContent, String pCode, int catId, int uid) {
        this.pTitle = pTitle;
        this.pContent = pContent;
        this.pCode = pCode;
        this.catId = catId;
        this.uid = uid;
    }

    public Posts() {
    }

    public Posts(int pid, String pTitle, String pContent, String pCode, String pPics, Timestamp pDate, int catId, int uid) {
        this.pid = pid;
        this.pTitle = pTitle;
        this.pContent = pContent;
        this.pCode = pCode;
        this.pPics = pPics;
        this.pDate = pDate;
        this.catId = catId;
        this.uid = uid;
    }

    
    public Posts(String pTitle, String pContent, String pCode, String pPics, Timestamp pDate, int catId) {
        this.pTitle = pTitle;
        this.pContent = pContent;
        this.pCode = pCode;
        this.pPics = pPics;
        this.pDate = pDate;
        this.catId = catId;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getpTitle() {
        return pTitle;
    }

    public void setpTitle(String pTitle) {
        this.pTitle = pTitle;
    }

    public String getpContent() {
        return pContent;
    }

    public void setpContent(String pContent) {
        this.pContent = pContent;
    }

    public String getpCode() {
        return pCode;
    }

    public void setpCode(String pCode) {
        this.pCode = pCode;
    }

    public String getpPics() {
        return pPics;
    }

    public void setpPics(String pPics) {
        this.pPics = pPics;
    }

    public Timestamp getpDate() {
        return pDate;
    }

    public void setpDate(Timestamp pDate) {
        this.pDate = pDate;
    }

    public int getCatId() {
        return catId;
    }

    public void setCatId(int catId) {
        this.catId = catId;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }
    
    
}
