package project4.groupPurchase.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class readBoard {
	
	@RequestMapping("/groupread.do")
	public String groupwrite() {
		
		return "WEB-INF\\views\\groupPurchase\\readBoard.jsp";
	}
	
}
