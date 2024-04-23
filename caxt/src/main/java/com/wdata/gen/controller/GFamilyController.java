package com.wdata.gen.controller;

import com.wdata.base.controller.BaseController;
import com.wdata.base.util.*;
import com.wdata.enums.LevelEnum;
import com.wdata.gen.service.GFamilyService;
import com.wdata.gen.service.GGenerationService;
import com.wdata.gen.service.GMemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.support.TransactionTemplate;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

/**
 * @Title: GFamilyController
 * @ProjectName wdata
 * @Description: TODO
 */
@Controller
@RequestMapping(value = "/gen/family")
public class GFamilyController extends BaseController {

    @Autowired
    private GFamilyService familyService;
    @Autowired
    private GGenerationService generationService;
    @Autowired
    private GMemberService memberService;

    /**
     * @Description: index
     * @Param: [map, request, response]
     * @return: java.lang.String
     */
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index(ModelMap map, HttpServletRequest request, HttpServletResponse response) throws IOException {
        PageData pd = new PageData(request);
        map.put("pd", pd);
        return "web/gen/family/family_list";
    }

    /**
     * @Description: findListPage
     * @Param: [page, request, response, session]
     * @return: void
     */
    @RequestMapping(value = "/findListPage", method = RequestMethod.GET)
    public void findListPage(Page page, HttpServletRequest request, HttpServletResponse response, HttpSession session) throws IOException {
        PageData pd = new PageData(request);
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
        List<PageData> list = familyService.findListPage(page);
        int num = familyService.findListSize(page);
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

        List<PageData> list = familyService.findList(pd);
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
        PageData p = familyService.findInfo(pd);
        map.addAttribute("p", p);
        return "web/gen/family/family_info";
    }


    /**
     * @Description: toAdd
     * @Param: [map, request]
     * @return: java.lang.String
     */
    @RequestMapping(value = "/toAdd", method = RequestMethod.GET)
    public String toAdd(ModelMap map, HttpServletRequest request) {
        PageData pd = new PageData(request);
        map.put("pd", pd);
        return "web/gen/family/family_add";
    }

    @Autowired
    private TransactionTemplate transactionTemplate;

    /**
     * @Description: save
     * @Param: [request, response, session]
     * @return: void
     */
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public void save(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws IOException {
        Json json = new Json();
        json.setSuccess(true);
        json.setMsg("操作成功。");

        PageData pd = new PageData(request);

        String time = DateTimeUtil.getDateTimeStr();
        pd.put("create_time", time);
        pd.put("update_time", time);
        pd.put("status", "Y");
        //处理数据权限
        PageData user = (PageData) session.getAttribute("loginUser");
        pd.put("create_user", user.get("id"));
        pd.put("create_organize", user.get("organize_id"));
        pd.put("create_org_cascade", user.get("org_cascade"));
        int resultFamily = familyService.save(pd);

        PageData familyPd = new PageData();
        familyPd.put("status", Const.STATUS);
        familyPd.put("name", pd.get("name"));
        List<PageData> list = familyService.findList(familyPd);
        if (resultFamily > 0 && list.isEmpty()) {
            json.setCode(0);
            json.setSuccess(false);
            this.writeJson(response, json);
            return;
        }
        int familyId = (int) list.get(0).get("id");
        // 新增宗族首个世代
        PageData genPd = new PageData();
        genPd.put("create_time", time);
        genPd.put("update_time", time);
        //处理数据权限
        genPd.put("create_user", user.get("id"));
        genPd.put("create_organize", user.get("organize_id"));
        genPd.put("create_org_cascade", user.get("org_cascade"));
        genPd.put("family_id", familyId);
        genPd.put("name", "第零世代");
        genPd.put("gorder", 0);
        genPd.put("seniority", "源");
        genPd.put("order_by", 0);
        genPd.put("status", Const.STATUS);
        int genResult = generationService.save(genPd);

        PageData genPdVar = new PageData();
        genPdVar.put("status", Const.STATUS);
        List<PageData> generationList = generationService.findList(genPdVar);
        if (genResult > 0 && generationList.isEmpty()) {
            json.setCode(0);
            json.setSuccess(false);
            this.writeJson(response, json);
            return;
        }

        int genId = (int) generationList.get(0).get("id");
        // 新增宗族首个成员
        PageData memberPd = new PageData();
        memberPd.put("create_time", time);
        memberPd.put("update_time", time);
        //处理数据权限
        memberPd.put("create_user", user.get("id"));
        memberPd.put("create_organize", user.get("organize_id"));
        memberPd.put("create_org_cascade", user.get("org_cascade"));
        memberPd.put("family_id", familyId);
        memberPd.put("generation_id", genId);
        memberPd.put("father_id", Const.ORIGIN_ID);
        memberPd.put("name", pd.get("name"));
        memberPd.put("status", Const.STATUS);
        memberPd.put("content", Const.MEMBER_ORIGIN_CONTENT);
        memberPd.put("level", LevelEnum.LEVEL_1.getLevel());

        int memberId = memberService.save(memberPd);

        json.setCode(familyId > 0 && genId > 0 && memberId > 0 ? 1 : 0);
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
        PageData p = familyService.findInfo(pd);
        map.put("p", p);
        return "web/gen/family/family_update";
    }

    /**
     * @Description: update
     * @Param: [request, response]
     * @return: void
     */
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public void update(HttpServletRequest request, HttpServletResponse response) throws IOException {
        PageData pd = new PageData(request);

        String time = DateTimeUtil.getDateTimeStr();
        pd.put("create_time", time);
        pd.put("update_time", time);
        int num = familyService.update(pd);
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
        familyService.del(ids);
        Json json = new Json();
        json.setSuccess(true);
        json.setMsg("操作成功。");
        this.writeJson(response, json);
    }


    /**
     * @Description: updateStatus
     * @Param: [request, response]
     * @return: void
     */
    @RequestMapping(value = "/updateStatus", method = RequestMethod.GET)
    public void updateStatus(HttpServletRequest request, HttpServletResponse response) throws IOException {
        PageData pd = new PageData(request);
        String time = DateTimeUtil.getDateTimeStr();
        pd.put("update_time", time);
        familyService.update(pd);

        Json json = new Json();
        json.setSuccess(true);
        json.setFlag("操作成功。");
        this.writeJson(response, json);
    }


}
