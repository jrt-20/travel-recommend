package com.travel.sz.entity;

public class Comment {
    private Integer id;

    private Integer sid;

    private String comment;

    private String cname;

    private String carea;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getSid() {
        return sid;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public String getCarea() {
        return carea;
    }

    public void setCarea(String carea) {
        this.carea = carea;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", sid=").append(sid);
        sb.append(", comment=").append(comment);
        sb.append(", cname=").append(cname);
        sb.append(", carea=").append(carea);
        sb.append("]");
        return sb.toString();
    }
}