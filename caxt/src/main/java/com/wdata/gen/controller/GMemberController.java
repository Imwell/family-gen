package com.wdata.gen.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.wdata.base.controller.BaseController;
import com.wdata.base.util.*;
import com.wdata.enums.LevelEnum;
import com.wdata.gen.service.GFamilyService;
import com.wdata.gen.service.GGenerationService;
import com.wdata.gen.service.GMemberService;
import com.wdata.system.service.DictionaryService;
import org.apache.commons.lang3.EnumUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * @Title: GMemberController
 * @ProjectName wdata
 * @Description: TODO
 */
@Controller
@RequestMapping(value = "/gen/member")
public class GMemberController extends BaseController {

    @Autowired
    private GMemberService memberService;
    @Autowired
    private GFamilyService familyService;
    @Autowired
    private GGenerationService generationService;
    @Autowired
    private DictionaryService dictionaryService;


    /**
     * @Description: index
     * @Param: [map, request, response]
     * @return: java.lang.String
     */
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index(ModelMap map, HttpServletRequest request, HttpServletResponse response) throws IOException {
        PageData pd = new PageData(request);

        //家族信息
        pd.put("status", "Y");
        List<PageData> familyLs = familyService.findList(pd);
        map.put("familyLs", familyLs);

        map.put("pd", pd);
        return "web/gen/member/member_list";
    }


    /**
     * @Description: treeIndex
     * @Param: [map, request, response]
     * @return: java.lang.String
     */
    @RequestMapping(value = "/treeIndex", method = RequestMethod.GET)
    public String treeIndex(ModelMap map, HttpServletRequest request, HttpServletResponse response) throws IOException {
        PageData pd = new PageData(request);

        //家族信息
        pd.put("status", "Y");
        List<PageData> familyLs = familyService.findList(pd);
        map.put("familyLs", familyLs);

        map.put("pd", pd);
        return "web/gen/member/member_treelist";
    }


    /**
     * @Description: findListPage
     * @Param: [page, request, response, session]
     * @return: void
     */
    @RequestMapping(value = "/findListPage", method = RequestMethod.GET)
    public void findListPage(Page page, HttpServletRequest request, HttpServletResponse response, HttpSession session) throws IOException {
        PageData pd = new PageData(request);
        System.out.println("##:" + pd);
        //处理数据权限
        page = dealDataAuth(page, pd, session);
        //处理分页
        if (Verify.verifyIsNotNull(pd.get("page"))) {
            page.setIndex(Integer.parseInt(pd.get("page").toString()));
        } else {
            page.setIndex(1);
        }
        if (Verify.verifyIsNotNull(pd.get("limit"))) {
            page.setShowCount(Integer.parseInt(pd.get("limit").toString()));
        } else {
            page.setShowCount(10);
        }
        page.setPd(pd);
        List<PageData> list = memberService.findListPage(page);
        int num = memberService.findListSize(page);
        Json json = new Json();
        json.setMsg("获取数据成功。");
        json.setCode(0);
        json.setCount(num);
        json.setData(list);
        json.setSuccess(true);
        this.writeJson(response, json);
    }

    /**
     * @Description: findList
     * @Param: [request, response]
     * @return: void
     */
    @RequestMapping(value = "/findList", method = RequestMethod.GET)
    public void findList(HttpServletRequest request, HttpServletResponse response) throws IOException {
        PageData pd = new PageData(request);

        List<PageData> list = memberService.findList(pd);
        Json json = new Json();
        json.setMsg("获取数据成功。");
        json.setData(list);
        json.setSuccess(true);
        this.writeJson(response, json);
    }

    /**
     * @Description: findInfo
     * @Param: [map, request]
     * @return: java.lang.String
     */
    @RequestMapping(value = "/findInfo", method = RequestMethod.GET)
    public String findInfo(ModelMap map, HttpServletRequest request) {
        PageData pd = new PageData(request);
        PageData p = memberService.findInfo(pd);

        //查询妻子列表
        pd.put("member_id", p.get("id"));
        List<PageData> list = memberService.findWifeList(pd);

        //家族信息
        pd.put("status", "Y");
        List<PageData> familyLs = familyService.findList(pd);
        map.put("familyLs", familyLs);

        //家族信息
        pd.put("parent_id", ParameterUtil.level);
        List<LevelEnum> levelLs = EnumUtils.getEnumList(LevelEnum.class);
        map.put("levelLs", levelLs);

        map.addAttribute("list", list);
        map.addAttribute("p", p);
        return "web/gen/member/member_info";
    }


    /**
     * @Description: toAdd
     * @Param: [map, request]
     * @return: java.lang.String
     */
    @RequestMapping(value = "/toAdd", method = RequestMethod.GET)
    public String toAdd(ModelMap map, HttpServletRequest request) {
        PageData pd = new PageData(request);

        //家族信息
        pd.put("status", "Y");
        List<PageData> familyLs = familyService.findList(pd);
        map.put("familyLs", familyLs);

        //家族信息
        pd.put("parent_id", ParameterUtil.level);

        map.put("pd", pd);
        return "web/gen/member/member_add";
    }

    /**
     * @Description: save
     * @Param: [request, response, session]
     * @return: void
     */
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public void save(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws IOException {
        PageData pd = new PageData(request);

        if ("1".equals(pd.getString("self"))) {
            PageData memberPd = new PageData();
            memberPd.put("self", 1);
            memberPd.put("family_id", pd.get("family_id"));
            List<PageData> list = memberService.findList(memberPd);
            if (!list.isEmpty()) {
                Json json = new Json();
                json.setCode(500);
                json.setSuccess(false);
                json.setMsg("存在相同本人");
                this.writeJson(response, json);
                return;
            }
        }

        String time = DateTimeUtil.getDateTimeStr();
        pd.put("create_time", time);
        pd.put("update_time", time);
        //处理数据权限
        PageData user = (PageData) session.getAttribute("loginUser");
        pd.put("create_user", user.get("id"));
        pd.put("create_organize", user.get("organize_id"));
        pd.put("create_org_cascade", user.get("org_cascade"));
        int num = memberService.save(pd);
        if (num == 1) {
            String member_id = pd.get("id").toString();
            System.out.println(pd.get("open_wife"));
            if (Verify.verifyIsNotNull(pd.get("open_wife"))) {
                if (Verify.verifyIsNotNull(request.getParameterValues("w_name"))) {
                    String[] w_name = request.getParameterValues("w_name");
                    String[] w_content = request.getParameterValues("w_content");
                    String[] w_level = request.getParameterValues("w_level");
                    String[] w_remark = request.getParameterValues("w_remark");
                    for (int i = 0; i < w_name.length; i++) {
                        PageData p = new PageData();
                        p.put("member_id", member_id);
                        p.put("name", w_name[i]);
                        p.put("content", w_content[i]);
                        p.put("level", w_level[i]);
                        p.put("remark", w_remark[i]);
                        p.put("create_user", pd.get("create_user"));
                        p.put("create_time", time);
                        p.put("update_time", time);
                        memberService.saveWife(p);
                    }
                }
            }
        }
        Json json = new Json();
        json.setCode(num);
        json.setSuccess(true);
        json.setMsg("操作成功。");
        this.writeJson(response, json);
    }

    /**
     * @Description: toUpdate
     * @Param: [map, request]
     * @return: java.lang.String
     */
    @RequestMapping(value = "/toUpdate", method = RequestMethod.GET)
    public String toUpdate(ModelMap map, HttpServletRequest request) {
        PageData pd = new PageData(request);
        PageData p = memberService.findInfo(pd);
        //查询丈夫(妻子)列表
        pd.put("member_id", p.get("id"));
        List<PageData> list = memberService.findWifeList(pd);

        //家族信息
        pd.put("status", "Y");
        List<PageData> familyLs = familyService.findList(pd);
        map.put("familyLs", familyLs);

        //家族信息
        pd.put("parent_id", ParameterUtil.level);
        List<LevelEnum> levelLs = EnumUtils.getEnumList(LevelEnum.class);
        map.put("levelLs", levelLs);

        map.put("list", list);
        map.put("p", p);
        return "web/gen/member/member_update";
    }

    /**
     * @Description: update
     * @Param: [request, response]
     * @return: void
     */
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public void update(HttpServletRequest request, HttpServletResponse response) throws IOException {
        PageData pd = new PageData(request);

        if ("1".equals(pd.getString("self"))) {
            PageData memberPd = new PageData();
            memberPd.put("self", 1);
            memberPd.put("id", pd.get("id"));
            PageData info = memberService.findInfo(memberPd);
            PageData pageData = new PageData();
            pageData.put("self", 1);
            List<PageData> list = memberService.findList(pageData);
            if (null == info && !list.isEmpty()) {
                Json json = new Json();
                json.setCode(500);
                json.setSuccess(false);
                json.setMsg("存在相同本人");
                this.writeJson(response, json);
                return;
            }
        }

        String time = DateTimeUtil.getDateTimeStr();
        pd.put("create_time", time);
        pd.put("update_time", time);
        int num = memberService.update(pd);
        if (num == 1) {
            String member_id = pd.get("id").toString();
            if (Verify.verifyIsNotNull(pd.get("open_wife"))) {
                if (Verify.verifyIsNotNull(request.getParameterValues("w_name"))) {
                    String[] w_id = request.getParameterValues("w_id");
                    String[] w_name = request.getParameterValues("w_name");
                    String[] w_content = request.getParameterValues("w_content");
                    String[] w_level = request.getParameterValues("w_level");
                    String[] w_remark = request.getParameterValues("w_remark");
                    for (int i = 0; i < w_name.length; i++) {
                        if (Verify.verifyIsNotNull(w_id[i])) {
                            PageData p = new PageData();
                            p.put("id", w_id[i]);
                            p.put("member_id", member_id);
                            p.put("name", w_name[i]);
                            p.put("content", w_content[i]);
                            p.put("level", w_level[i]);
                            p.put("remark", w_remark[i]);
                            p.put("update_time", time);
                            memberService.updateWife(p);
                        } else {
                            PageData p = new PageData();
                            p.put("member_id", member_id);
                            p.put("name", w_name[i]);
                            p.put("content", w_content[i]);
                            p.put("level", w_level[i]);
                            p.put("remark", w_remark[i]);
                            p.put("create_user", pd.get("create_user"));
                            p.put("create_time", time);
                            p.put("update_time", time);
                            memberService.saveWife(p);
                        }
                    }
                }
            } else {
                //如果关闭妻子打开按钮 则删除
                memberService.delWifeForMemberId(member_id.split(","));
            }
        }
        Json json = new Json();
        json.setCode(num);
        json.setSuccess(true);
        json.setMsg("操作成功。");
        this.writeJson(response, json);
    }


    /**
     * @Description: del
     * @Param: [request, response]
     * @return: void
     */
    @RequestMapping(value = "/del", method = RequestMethod.GET)
    public void del(HttpServletRequest request, HttpServletResponse response) throws IOException {
        PageData pd = new PageData(request);
        String[] ids = pd.get("ids").toString().split(",");
        memberService.del(ids);
        memberService.delWifeForMemberId(ids);
        Json json = new Json();
        json.setSuccess(true);
        json.setMsg("操作成功。");
        this.writeJson(response, json);
    }


    /**
     * @Description: delWife
     * @Param: [request, response]
     * @return: void
     */
    @RequestMapping(value = "/delWife", method = RequestMethod.GET)
    public void delWife(HttpServletRequest request, HttpServletResponse response) throws IOException {
        PageData pd = new PageData(request);
        String[] ids = pd.get("ids").toString().split(",");
        memberService.delWife(ids);
        Json json = new Json();
        json.setSuccess(true);
        json.setMsg("操作成功。");
        this.writeJson(response, json);
    }


    /**
     * @Description: findFatherList
     * @Param: [request, response]
     * @return: void
     */
    @RequestMapping(value = "/findFatherList", method = RequestMethod.GET)
    public void findFatherList(HttpServletRequest request, HttpServletResponse response) throws IOException {
        PageData pd = new PageData(request);
        Json json = new Json();

        pd.put("id", pd.get("generation_id"));
        PageData p = generationService.findInfo(pd);
        int gorder = Integer.parseInt(p.get("gorder").toString()) - 1;
        pd.put("gorder", gorder);
        p = generationService.findInfoForOrder(pd);
        System.out.println(p);
        if (Verify.verifyIsNotNull(p)) {
            System.out.println("####1");
            pd.put("generation_id", p.get("id"));
            List<PageData> list = memberService.findList(pd);
            json.setData(list);
        } else {
            System.out.println("####2");
            pd.remove("generation_id");
            List<PageData> list = memberService.findList(pd);
            json.setData(list);
        }
        json.setSuccess(true);
        json.setMsg("操作成功。");
        this.writeJson(response, json);
    }


    /**
     * @Description: 世代树
     * @Param: [request, response]
     * @return: void
     */
    @RequestMapping(value = "/findGenerationList", method = RequestMethod.GET)
    public void findGenerationList(HttpServletRequest request, HttpServletResponse response) throws IOException {
        PageData pd = new PageData(request);
        Json json = new Json();

        List<PageData> list = memberService.findGTreeList(pd);

        json.setData(list);
        json.setSuccess(true);
        json.setMsg("操作成功。");
        this.writeJson(response, json);
    }

    @RequestMapping(value = "/findMemberLevelList", method = RequestMethod.GET)
    public void findMemberLevelList(HttpServletRequest request, HttpServletResponse response) throws IOException {
        PageData pd = new PageData(request);
        String selfMemberId = pd.getString("self_member_id");
        List<PageData> list = memberService.findList(pd);
        Map<Integer, LevelEnum> map = LevelEnum.getMap();
        List<LevelEnum> levelEnums = EnumUtils.getEnumList(LevelEnum.class);
        if (!list.isEmpty()) {
            list.forEach(item -> {
                if (StringUtils.isEmpty(selfMemberId)) {
                    String level = item.getString("level");
                    LevelEnum levelEnum = map.get(Integer.valueOf(level));
                    levelEnums.remove(levelEnum);
                } else if (!item.getString("id").equals(selfMemberId)) {
                    String level = item.getString("level");
                    LevelEnum levelEnum = map.get(Integer.valueOf(level));
                    levelEnums.remove(levelEnum);
                }
            });
        }
        ObjectMapper objectMapper = new ObjectMapper();
        List<ObjectNode> levelJson = levelEnums.stream().map(item -> {
            ObjectNode objectNode = objectMapper.createObjectNode();
            objectNode.put("id", item.getId());
            objectNode.put("name", item.getName());
            return objectNode;
        }).collect(Collectors.toList());
        Json json = new Json();
        json.setData(levelJson);
        json.setSuccess(true);
        json.setMsg("操作成功。");
        this.writeJson(response, json);
    }

}
