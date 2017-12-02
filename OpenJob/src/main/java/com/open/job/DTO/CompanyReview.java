package com.open.job.DTO;

import com.open.job.DTO.sub.CompanyReviewInfo;

public class CompanyReview extends CompanyReviewInfo{
	// 기업 리뷰 번호 
    private Integer companyreviewno;

    // 한줄평가 
    private String summary;

    // 기업 장점 
    private String positive;

    // 기업 단점 
    private String negative;

    // 경영진 희망사항 
    private String wishlist;

    // 총 평점 1~5
    private Float totalscore;

    // 승진 기회 1~5
    private Float promotionscore;

    // 복지 1~5
    private Float walfarescore;

    // 삶의질 1~5
    private Float balancescore;

    // 사내문화 1~5
    private Float atmospherescore;

    // 경영진 1~5
    private Float executivescore;

    // CEO지지 Y,N
    private String ceoscore;

    // 기업 추천 Y,N
    private String recommandscore;

    // 기업 전망 Down, Same, Up
    private String futurescore;

	public Integer getCompanyreviewno() {
		return companyreviewno;
	}

	public void setCompanyreviewno(Integer companyreviewno) {
		this.companyreviewno = companyreviewno;
	}

	public String getSummary() {
		return summary;
	}

	public void setSummary(String summary) {
		this.summary = summary;
	}

	public String getPositive() {
		return positive;
	}

	public void setPositive(String positive) {
		this.positive = positive;
	}

	public String getNegative() {
		return negative;
	}

	public void setNegative(String negative) {
		this.negative = negative;
	}

	public String getWishlist() {
		return wishlist;
	}

	public void setWishlist(String wishlist) {
		this.wishlist = wishlist;
	}

	public Float getTotalscore() {
		return totalscore;
	}

	public void setTotalscore(Float totalscore) {
		this.totalscore = totalscore;
	}

	public Float getPromotionscore() {
		return promotionscore;
	}

	public void setPromotionscore(Float promotionscore) {
		this.promotionscore = promotionscore;
	}

	public Float getWalfarescore() {
		return walfarescore;
	}

	public void setWalfarescore(Float walfarescore) {
		this.walfarescore = walfarescore;
	}

	public Float getBalancescore() {
		return balancescore;
	}

	public void setBalancescore(Float balancescoe) {
		this.balancescore = balancescoe;
	}

	public Float getAtmospherescore() {
		return atmospherescore;
	}

	public void setAtmospherescore(Float atmospherescore) {
		this.atmospherescore = atmospherescore;
	}

	public Float getExecutivescore() {
		return executivescore;
	}

	public void setExecutivescore(Float executivescore) {
		this.executivescore = executivescore;
	}

	public String getCeoscore() {
		return ceoscore;
	}

	public void setCeoscore(String ceoscore) {
		this.ceoscore = ceoscore;
	}

	public String getRecommandscore() {
		return recommandscore;
	}

	public void setRecommandscore(String recommandscore) {
		this.recommandscore = recommandscore;
	}

	public String getFuturescore() {
		return futurescore;
	}

	public void setFuturescore(String futurescore) {
		this.futurescore = futurescore;
	}
    
}
