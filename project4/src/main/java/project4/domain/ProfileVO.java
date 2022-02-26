package project4.domain;

import lombok.Data;

@Data
public class ProfileVO {
	private int profilekey;
	private int userkey;
	private String personality;
	private String liketype;
	private String hatetype;
	private String allergy;
	private String vegantype;
	private String drinktype;
	private String spicytype;
	private String vaccintype;

	public ProfileVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ProfileVO(int profilekey, int userkey, String personality, String liketype, String hatetype, String allergy,
			String vegantype, String drinktype, String spicytype, String vaccintype) {
		super();
		this.profilekey = profilekey;
		this.userkey = userkey;
		this.personality = personality;
		this.liketype = liketype;
		this.hatetype = hatetype;
		this.allergy = allergy;
		this.vegantype = vegantype;
		this.drinktype = drinktype;
		this.spicytype = spicytype;
		this.vaccintype = vaccintype;
	}

	public int getProfilekey() {
		return profilekey;
	}

	public void setProfilekey(int profilekey) {
		this.profilekey = profilekey;
	}

	public int getUserkey() {
		return userkey;
	}

	public void setUserkey(int userkey) {
		this.userkey = userkey;
	}

	public String getPersonality() {
		return personality;
	}

	public void setPersonality(String personality) {
		this.personality = personality;
	}

	public String getLiketype() {
		return liketype;
	}

	public void setLiketype(String liketype) {
		this.liketype = liketype;
	}

	public String getHatetype() {
		return hatetype;
	}

	public void setHatetype(String hatetype) {
		this.hatetype = hatetype;
	}

	public String getAllergy() {
		return allergy;
	}

	public void setAllergy(String allergy) {
		this.allergy = allergy;
	}

	public String getVegantype() {
		return vegantype;
	}

	public void setVegantype(String vegantype) {
		this.vegantype = vegantype;
	}

	public String getDrinktype() {
		return drinktype;
	}

	public void setDrinktype(String drinktype) {
		this.drinktype = drinktype;
	}

	public String getSpicytype() {
		return spicytype;
	}

	public void setSpicytype(String spicytype) {
		this.spicytype = spicytype;
	}

	public String getVaccintype() {
		return vaccintype;
	}

	public void setVaccintype(String vaccintype) {
		this.vaccintype = vaccintype;
	}

}
