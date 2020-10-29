package kr.co.soccer.manager;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ManagerController { 
	
	@Inject
	private IManagerService managerService; 
	
	@RequestMapping(path = "/manager/managerCheckedDelete.sc", params = "manageId")
	public String managerCheckedDelete(@RequestParam(name="manageId") String[] manageIds, ModelMap model) {
		managerService.checkedManagerDelete(manageIds);
		return "manager/managerView";
	}
	
}
