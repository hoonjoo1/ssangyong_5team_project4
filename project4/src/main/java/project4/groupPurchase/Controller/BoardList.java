package project4.groupPurchase.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardList {
	
	@RequestMapping("/boardlist.do")
	public String groupwrite() {
		
		return "WEB-INF\\views\\groupPurchase\\BoardList.jsp";
	}
	
}
