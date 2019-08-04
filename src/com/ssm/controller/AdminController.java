package com.ssm.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssm.entity.Admin;
import com.ssm.entity.Category;
import com.ssm.entity.Mobile;
import com.ssm.entity.Ording;
import com.ssm.entity.User;
import com.ssm.service.ICategoryService;
import com.ssm.service.IMobileService;
import com.ssm.service.IUserService;
import com.ssm.util.BaseAction;



@Controller
@RequestMapping("/users")
public class AdminController extends BaseAction{
    @Autowired
    private IUserService userService;
    @Autowired
    private ICategoryService categoryService;
    @Autowired
    private IMobileService mobileService;
	@RequestMapping("getAllUsers.action")
	public String getAllUsers(String number, Map<String, Object> map) {
		List<User> usersList = new ArrayList<User>();
		List<User> tempList = new ArrayList<User>();
		tempList = this.userService.getAllUsers();
		int pageNumber = tempList.size();
		int maxPage = pageNumber;
		if (maxPage % 10 == 0) {
			maxPage = maxPage / 10;
		} else {
			maxPage = maxPage / 10 + 1;
		}
		if (number == null) {
			number = "0";
		}
		int start = Integer.parseInt(number) * 10;
		int over = (Integer.parseInt(number) + 1) * 10;
		int count = pageNumber - over;
		if (count <= 0) {
			over = pageNumber;
		}
		for (int i = start; i < over; i++) {
			User users = tempList.get(i);
			usersList.add(users);
		}
		String html = "";
		StringBuffer buffer = new StringBuffer();
		buffer.append("&nbsp;&nbsp;共为");
		buffer.append(maxPage);
		buffer.append("页&nbsp; 共有");
		buffer.append(pageNumber);
		buffer.append("条&nbsp; 当前为第");
		buffer.append((Integer.parseInt(number) + 1));
		buffer.append("页 &nbsp;");
		if ((Integer.parseInt(number) + 1) == 1) {
			buffer.append("首页");
		} else {
			buffer.append("<a href=\"users/getAllUsers.action?number=0\">首页</a>");
		}
		buffer.append("&nbsp;&nbsp;");
		if ((Integer.parseInt(number) + 1) == 1) {
			buffer.append("上一页");
		} else {
			buffer.append("<a href=\"users/getAllUsers.action?number=" + (Integer.parseInt(number) - 1) + "\">上一页</a>");
		}
		buffer.append("&nbsp;&nbsp;");
		if (maxPage <= (Integer.parseInt(number) + 1)) {
			buffer.append("下一页");
		} else {
			buffer.append("<a href=\"users/getAllUsers.action?number=" + (Integer.parseInt(number) + 1) + "\">下一页</a>");
		}
		buffer.append("&nbsp;&nbsp;");
		if (maxPage <= (Integer.parseInt(number) + 1)) {
			buffer.append("尾页");
		} else {
			buffer.append("<a href=\"users/getAllUsers.action?number=" + (maxPage - 1) + "\">尾页</a>");
		}
		html = buffer.toString();
		map.put("html", html);
		map.put("usersList", usersList);
		return "admin/listusers";
	}
	@RequestMapping("login.action")
	public String login() {
		String username = this.getRequest().getParameter("username");
		String password = this.getRequest().getParameter("password");
		Admin adminEntity = new Admin();
		adminEntity.setUsername(username);
		List<Admin> adminlist = this.userService.getAdminByCond(adminEntity);
		if (adminlist.size() == 0) {
			this.getRequest().setAttribute("message", "用户名不存在");
			return "admin/index";
		} else {
			Admin admin = adminlist.get(0);
			if (password.equals(admin.getPassword())) {
				this.getRequest().getSession().setAttribute("adminid", admin.getAdminid());
				this.getRequest().getSession().setAttribute("adminname", admin.getUsername());
				this.getRequest().getSession().setAttribute("realname", admin.getRealname());
			} else {
				this.getRequest().setAttribute("message", "密码错误");
				return "admin/index";
			}
		}
		return "admin/main";
	}
	@RequestMapping("deleteUsers.action")
	public String deleteUsers(int id) {
		this.userService.deleteUsers(id);
		return "redirect:/users/getAllUsers.action";
	}
	@RequestMapping("getAllOrders.action")
	public String getAllOrders(String number, Map<String, Object> map) {
		List<Ording> ordersList = new ArrayList<Ording>();
		List<Ording> tempList = new ArrayList<Ording>();
		tempList = this.userService.getAllOrders();
		int pageNumber = tempList.size();
		int maxPage = pageNumber;
		if (maxPage % 10 == 0) {
			maxPage = maxPage / 10;
		} else {
			maxPage = maxPage / 10 + 1;
		}
		if (number == null) {
			number = "0";
		}
		int start = Integer.parseInt(number) * 10;
		int over = (Integer.parseInt(number) + 1) * 10;
		int count = pageNumber - over;
		if (count <= 0) {
			over = pageNumber;
		}
		for (int i = start; i < over; i++) {
			Ording orders = tempList.get(i);
			ordersList.add(orders);
		}
		String html = "";
		StringBuffer buffer = new StringBuffer();
		buffer.append("&nbsp;&nbsp;共为");
		buffer.append(maxPage);
		buffer.append("页&nbsp; 共有");
		buffer.append(pageNumber);
		buffer.append("条&nbsp; 当前为第");
		buffer.append((Integer.parseInt(number) + 1));
		buffer.append("页 &nbsp;");
		if ((Integer.parseInt(number) + 1) == 1) {
			buffer.append("首页");
		} else {
			buffer.append("<a href=\"users/getAllOrders.action?number=0\">首页</a>");
		}
		buffer.append("&nbsp;&nbsp;");
		if ((Integer.parseInt(number) + 1) == 1) {
			buffer.append("上一页");
		} else {
			buffer.append(
					"<a href=\"users/getAllOrders.action?number=" + (Integer.parseInt(number) - 1) + "\">上一页</a>");
		}
		buffer.append("&nbsp;&nbsp;");
		if (maxPage <= (Integer.parseInt(number) + 1)) {
			buffer.append("下一页");
		} else {
			buffer.append(
					"<a href=\"users/getAllOrders.action?number=" + (Integer.parseInt(number) + 1) + "\">下一页</a>");
		}
		buffer.append("&nbsp;&nbsp;");
		if (maxPage <= (Integer.parseInt(number) + 1)) {
			buffer.append("尾页");
		} else {
			buffer.append("<a href=\"users/getAllOrders.action?number=" + (maxPage - 1) + "\">尾页</a>");
		}
		html = buffer.toString();
		map.put("html", html);
		map.put("ordersList", ordersList);
		return "admin/listorders";
	}
	@RequestMapping("deleteOrders.action")
	public String deleteOrders(int id) {
		this.userService.deleteOrders(id);
		return "redirect:/users/getAllOrders.action";
	}
	//预加载
	@RequestMapping("createGoods.action")
	public String createGoods(Map<String, Object> map) {
		 List<Category> categoryList = categoryService.findAll();
		map.put("cateList", categoryList);
		return "admin/addgoods";
	}
	//添加
	@RequestMapping("addGoods.action")
	public String addGoods(Mobile mobile) {
		this.userService.insertGoods(mobile);
		return "redirect:/users/getAllGoods.action";
	}
	@RequestMapping("getAllGoods.action")
	public String getAllGoods(String number, Map<String, Object> map) {
		List<Mobile> goodsList = new ArrayList<Mobile>();
		List<Mobile> tempList = new ArrayList<Mobile>();
		tempList = this.mobileService.listall();
		int pageNumber = tempList.size();
		int maxPage = pageNumber;
		if (maxPage % 10 == 0) {
			maxPage = maxPage / 10;
		} else {
			maxPage = maxPage / 10 + 1;
		}
		if (number == null) {
			number = "0";
		}
		int start = Integer.parseInt(number) * 10;
		int over = (Integer.parseInt(number) + 1) * 10;
		int count = pageNumber - over;
		if (count <= 0) {
			over = pageNumber;
		}
		for (int i = start; i < over; i++) {
			Mobile moblie = tempList.get(i);
			goodsList.add(moblie);
		}
		String html = "";
		StringBuffer buffer = new StringBuffer();
		buffer.append("&nbsp;&nbsp;共为");
		buffer.append(maxPage);
		buffer.append("页&nbsp; 共有");
		buffer.append(pageNumber);
		buffer.append("条&nbsp; 当前为第");
		buffer.append((Integer.parseInt(number) + 1));
		buffer.append("页 &nbsp;");
		if ((Integer.parseInt(number) + 1) == 1) {
			buffer.append("首页");
		} else {
			buffer.append("<a href=\"users/getAllGoods.action?number=0\">首页</a>");
		}
		buffer.append("&nbsp;&nbsp;");
		if ((Integer.parseInt(number) + 1) == 1) {
			buffer.append("上一页");
		} else {
			buffer.append("<a href=\"users/getAllGoods.action?number=" + (Integer.parseInt(number) - 1) + "\">上一页</a>");
		}
		buffer.append("&nbsp;&nbsp;");
		if (maxPage <= (Integer.parseInt(number) + 1)) {
			buffer.append("下一页");
		} else {
			buffer.append("<a href=\"users/getAllGoods.action?number=" + (Integer.parseInt(number) + 1) + "\">下一页</a>");
		}
		buffer.append("&nbsp;&nbsp;");
		if (maxPage <= (Integer.parseInt(number) + 1)) {
			buffer.append("尾页");
		} else {
			buffer.append("<a href=\"users/getAllGoods.action?number=" + (maxPage - 1) + "\">尾页</a>");
		}
		html = buffer.toString();
		map.put("html", html);
		map.put("goodsList", goodsList);
		return "admin/listgoods";
	}
	@RequestMapping("deleteGoods.action")
	public String deleteGoods(int id) {
		this.userService.deleteGoods(id);
		return "redirect:/users/getAllGoods.action";
	}
	// 准备添加数据
	@RequestMapping("createAdmin.action")
	public String createAdmin(Map<String, Object> map) {
		return "admin/addadmin";
	}

	// 添加数据
	@RequestMapping("addAdmin.action")
	public String addAdmin(Admin admin) {
		this.userService.insertAdmin(admin);
		return "redirect:/users/createAdmin.action";
	}
	@RequestMapping("exit.action")
	public String exit() {
		this.getRequest().getSession().removeAttribute("adminid");
		this.getRequest().getSession().removeAttribute("adminname");
		this.getRequest().getSession().removeAttribute("realname");
		return "andmin/index";
	}
	
}
