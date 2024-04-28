package com.wdata.base.util;

public class Result {

    public static Json error(String msg) {
        Json json = new Json();
        json.setCode(500);
        json.setSuccess(false);
        json.setMsg(msg);
        return json;
    }

}
