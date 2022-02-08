package project4.groupPurchase.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FoodpubpurCtrl {
	
	@RequestMapping("/boardlist.do")
	public String groupboardlist() {
		
		return "WEB-INF\\views\\groupPurchase\\BoardList.jsp";
	}
	
	@RequestMapping("/groupread.do")
	public String groupread() {
		
		return "WEB-INF\\views\\groupPurchase\\readBoard.jsp";
	}
	
	@RequestMapping("/groupwrite.do")
	public String groupwrite() {
		
		return "WEB-INF\\views\\groupPurchase\\writeBoard.jsp";
	}
}
