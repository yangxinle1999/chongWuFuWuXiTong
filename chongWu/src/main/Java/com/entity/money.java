package com.entity;

public class money {
    private Integer id;
    private String name;
    private String fuwuleixing;
    private Integer jiaoyijine;
    private Integer yue;
    private String time;
    private String suogouchongwu;

    public String getSuogouchongwu() {
        return suogouchongwu;
    }

    public void setSuogouchongwu(String suogouchongwu) {
        this.suogouchongwu = suogouchongwu;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getFuwuleixing() {
        return fuwuleixing;
    }

    public void setFuwuleixing(String fuwuleixing) {
        this.fuwuleixing = fuwuleixing;
    }

    public Integer getJiaoyijine() {
        return jiaoyijine;
    }

    public void setJiaoyijine(Integer jiaoyijine) {
        this.jiaoyijine = jiaoyijine;
    }

    public Integer getYue() {
        return yue;
    }

    public void setYue(Integer yue) {
        this.yue = yue;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    @Override
    public String toString() {
        return "money{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", fuwuleixing='" + fuwuleixing + '\'' +
                ", jiaoyijine=" + jiaoyijine +
                ", yue=" + yue +
                ", time='" + time + '\'' +
                '}';
    }
}

