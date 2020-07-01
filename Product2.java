package dto;

import java.io.Serializable;

public class Product2 implements Serializable {

	private static final long serialVersionUID = -4274700572038677000L;

	private String pproductId;
	private String ppname;
	private String uunitPrice;
	private String filename;
	private String review;
	private String reviewphoto;
	private String writer; // ¸®ºä ÀÛ¼ºÀÚ

	public Product2() {
		super();
	}

	public Product2(String pproductId, String ppname, String uunitPrice) {
		this.pproductId = pproductId;
		this.ppname = ppname;
		this.uunitPrice = uunitPrice;
	}

	public String getPProductId() {
		return pproductId;
	}

	public String getPPname() {
		return ppname;
	}

	public String getUUnitPrice() {
		return uunitPrice;
	}
	
	public void setPPname(String ppname) {
		this.ppname = ppname;
	}

	public void setPProductId(String pproductId) {
		this.pproductId = pproductId;
	}

	public void setUUnitPrice(String uunitPrice) {
		this.uunitPrice = uunitPrice;
	}


	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}
	
	public String getReview() {
		return review;
	}
	
	public void setReview(String review) {
		this.review = review;
	}
	
	public String getReviewPhoto() {
		return reviewphoto;
	}
	
	public void setReviewPhoto(String reviewphoto) {
		this.reviewphoto = reviewphoto;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}
}
