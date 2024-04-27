package com.wdata.enums;

import org.apache.commons.lang3.EnumUtils;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public enum LevelEnum {
    LEVEL_1(1, "老大"),
    LEVEL_2(2, "老二"),
    LEVEL_3(3, "老三"),
    LEVEL_4(4, "老四"),
    LEVEL_5(5, "老五"),
    LEVEL_6(6, "老六"),
    LEVEL_7(7, "老七"),
    LEVEL_8(8, "老八"),
    LEVEL_9(9, "老九"),
    LEVEL_10(10, "老小")
    ;

    private int id;
    private String name;
    private int level;
    private String remark;

    LevelEnum(int id, String name) {
        this.id = id;
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    private static final Map<Integer, LevelEnum> map = new HashMap<>();
    private static final Map<Integer, LevelEnum> list = new HashMap<>();

    static {
        List<LevelEnum> enumList = EnumUtils.getEnumList(LevelEnum.class);
        enumList.forEach(item -> {
            map.put(item.getId(), item);
        });
    }

    public static Map<Integer, LevelEnum> getMap() {
        return map;
    }

}
