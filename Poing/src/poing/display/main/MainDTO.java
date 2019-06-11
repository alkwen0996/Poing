package poing.display.main;

import java.util.ArrayList;

import admin.bannerimage.BannerImageDTO;
import poing.review.ReviewDTO;

public class MainDTO {
	ArrayList<ReviewDTO> rev_list;
	ArrayList<BannerImageDTO> banner_list;
	
	public ArrayList<ReviewDTO> getRev_list() {
		return rev_list;
	}

	public void setRev_list(ArrayList<ReviewDTO> rev_list) {
		this.rev_list = rev_list;
	}

	public ArrayList<BannerImageDTO> getBanner_list() {
		return banner_list;
	}

	public void setBanner_list(ArrayList<BannerImageDTO> banner_list) {
		this.banner_list = banner_list;
	}
	
}
