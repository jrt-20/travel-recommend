package com.travel.sz.entity;

public class Sight {
    private Integer sid;

    private String sname;

    private Double satisfaction;

    private String introduction;

    private String brief;

    private String url;

    public Integer getSid() {
        return sid;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public Double getSatisfaction() {
        return satisfaction;
    }

    public void setSatisfaction(Double satisfaction) {
        this.satisfaction = satisfaction;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    public String getBrief() {
        return brief;
    }

    public void setBrief(String brief) {
        this.brief = brief;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", sid=").append(sid);
        sb.append(", sname=").append(sname);
        sb.append(", satisfaction=").append(satisfaction);
        sb.append(", introduction=").append(introduction);
        sb.append(", brief=").append(brief);
        sb.append(", url=").append(url);
        sb.append("]");
        return sb.toString();
    }
}