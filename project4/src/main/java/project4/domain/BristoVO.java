package project4.domain;

import org.springframework.web.multipart.MultipartFile;
import lombok.Data;

public class BristoVO {
	private int bristokey;
	private int bustypekey;
	private String name;
	private String menu;
	private int price;
	private String loc;
	private String parking;
	private String eatalone;
	private String babychair;
	private String carryout;
	private String delivery;
	private String explain;
	private MultipartFile[] report;

	public BristoVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public BristoVO(int bristokey, int bustypekey, String name, String menu, int price, String loc, String parking,
			String eatalone, String babychair, String carryout, String delivery, String explain,
			MultipartFile[] report) {
		super();
		this.bristokey = bristokey;
		this.bustypekey = bustypekey;
		this.name = name;
		this.menu = menu;
		this.price = price;
		this.loc = loc;
		this.parking = parking;
		this.eatalone = eatalone;
		this.babychair = babychair;
		this.carryout = carryout;
		this.delivery = delivery;
		this.explain = explain;
		this.report = report;
	}

	public int getBristokey() {
		return bristokey;
	}

	public void setBristokey(int bristokey) {
		this.bristokey = bristokey;
	}

	public int getBustypekey() {
		return bustypekey;
	}

	public void setBustypekey(int bustypekey) {
		this.bustypekey = bustypekey;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMenu() {
		return menu;
	}

	public void setMenu(String menu) {
		this.menu = menu;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getLoc() {
		return loc;
	}

	public void setLoc(String loc) {
		this.loc = loc;
	}

	public String getParking() {
		return parking;
	}

	public void setParking(String parking) {
		this.parking = parking;
	}

	public String getEatalone() {
		return eatalone;
	}

	public void setEatalone(String eatalone) {
		this.eatalone = eatalone;
	}

	public String getBabychair() {
		return babychair;
	}

	public void setBabychair(String babychair) {
		this.babychair = babychair;
	}

	public String getCarryout() {
		return carryout;
	}

	public void setCarryout(String carryout) {
		this.carryout = carryout;
	}

	public String getDelivery() {
		return delivery;
	}

	public void setDelivery(String delivery) {
		this.delivery = delivery;
	}

	public String getExplain() {
		return explain;
	}

	public void setExplain(String explain) {
		this.explain = explain;
	}

	public MultipartFile[] getReport() {
		return report;
	}

	public void setReport(MultipartFile[] report) {
		this.report = report;
	}

}
