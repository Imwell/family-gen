package com.wdata.enums;

public enum LevelEnum {
    LEVEL_1(8, "老大")
    ;

    private int level;
    private String remark;

    LevelEnum(int level, String remark) {
        this.level = level;
        this.remark = remark;
    }

    public int getLevel() {
        return level;
    }

    public void setLevel(int level) {
        this.level = level;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }
}
