<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- page 2 -->
<div class="container-fluid" id="p2" style="display: none;">
	<div id="companyinfo_div">
		<table>
			<tr>
				<td><img alt="Img not found"
					onerror="this.src='${home }/companyimgs/0.jpg';"
					src="${home }/companyimgs/${companySearch.thumbimg}"
					style="width: 110px; height: 110px;"></td>
				<td><span
					style="font-size: 20px; font-weight: bold; margin: 5px;">${companySearch.companyname }</span>
				</td>
			</tr>
		</table>
	</div>
	<div class="row" style="padding: 15px;">
		<div class="col-lg-2">기업 총 평점</div>
		<div class="col-lg-10">
			<select name="totalscore">
				<option value="" disabled selected>평가해 주세요</option>
				<option value="5">매우 만족</option>
				<option value="4">만족</option>
				<option value="3">보통</option>
				<option value="2">불만족</option>
				<option value="1">매우 불만족</option>
			</select>
		</div>
	</div>
	<!--  글 파트 -->
	<div class="row" style="padding: 15px;">
		<div class="col-lg-3">기업한줄평</div>
		<div class="col-lg-9">
			<textarea style="width: 100%; height: 100px; resize: none;"
				placeholder="예) 개발자가 대우받으며 보람차게 일할 수 있는 곳. 다양한 개발 환경을 경험하고, 서버와 클라이언트 양쪽에서 커리어를 쌓고 싶은 사람에게 추천."></textarea>
		</div>
	</div>
	<div class="row" style="padding: 15px;">
		<div class="col-lg-3">기업의 장점</div>
		<div class="col-lg-9">
			<textarea style="width: 100%; height: 100px; resize: none;"
				placeholder="예) 연차를 윗사람 눈치 안 보고 쓸 수 있음, 도서구입비, 학원 수강료 등 자기 계발 비용 지원, 야근 식대 1만원까지 제공, 수평적인 사무실 분위기. "></textarea>
		</div>
	</div>
	<div class="row" style="padding: 15px;">
		<div class="col-lg-3">기업의 단점</div>
		<div class="col-lg-9">
			<textarea style="width: 100%; height: 100px; resize: none;"
				placeholder="예) 단순 보고를 위한 문서 작업이 많아 비효율적. 복지 제도가 다양하지만 실제로 쓸 수 없음. 출근 시간은 8시인데 퇴근 시간은 ???."></textarea>
		</div>
	</div>
	<div class="row" style="padding: 15px;">
		<div class="col-lg-3">경영진에 바라는 점</div>
		<div class="col-lg-9">
			<textarea style="width: 100%; height: 100px; resize: none;"
				placeholder="예) 직원들의 불만을 듣지만 말고 해결책을 마련해줬으면. 합리적인 복지 및 보상 체계를 마련해줬으면 좋겠다. 군대 문화를 줄여줬으면 좋겠다."></textarea>
		</div>
	</div>

	<div class="row" style="padding: 15px;">
		<div class="col-lg-3">승진 기회 및 가능성</div>
		<div class="col-lg-7">
			<select name="totalscore">
				<option value="" disabled selected>평가해 주세요</option>
				<option value="5">매우 만족</option>
				<option value="4">만족</option>
				<option value="3">보통</option>
				<option value="2">불만족</option>
				<option value="1">매우 불만족</option>
			</select>
		</div>
	</div>
	<div class="row" style="padding: 15px;">
		<div class="col-lg-3">복지 및 급여</div>
		<div class="col-lg-7">
			<select name="totalscore">
				<option value="" disabled selected>평가해 주세요</option>
				<option value="5">매우 만족</option>
				<option value="4">만족</option>
				<option value="3">보통</option>
				<option value="2">불만족</option>
				<option value="1">매우 불만족</option>
			</select>
		</div>
	</div>
	<div class="row" style="padding: 15px;">
		<div class="col-lg-3">업무와 삶의 균형</div>
		<div class="col-lg-7">
			<select name="totalscore">
				<option value="" disabled selected>평가해 주세요</option>
				<option value="5">매우 만족</option>
				<option value="4">만족</option>
				<option value="3">보통</option>
				<option value="2">불만족</option>
				<option value="1">매우 불만족</option>
			</select>
		</div>
	</div>
	<div class="row" style="padding: 15px;">
		<div class="col-lg-3">사내문화</div>
		<div class="col-lg-7">
			<select name="totalscore">
				<option value="" disabled selected>평가해 주세요</option>
				<option value="5">매우 만족</option>
				<option value="4">만족</option>
				<option value="3">보통</option>
				<option value="2">불만족</option>
				<option value="1">매우 불만족</option>
			</select>
		</div>
	</div>
	<div class="row" style="padding: 15px;">
		<div class="col-lg-3">경영진</div>
		<div class="col-lg-7">
			<select name="totalscore">
				<option value="" disabled selected>평가해 주세요</option>
				<option value="5">매우 만족</option>
				<option value="4">만족</option>
				<option value="3">보통</option>
				<option value="2">불만족</option>
				<option value="1">매우 불만족</option>
			</select>
		</div>
	</div>
	<div class="row" style="padding: 15px;">
		<div class="col-lg-5">CEO에 대한 견해</div>
		<div class="col-lg-5">
			<input type="radio" id="ceo1" name="ceoscore" value="Y"><label
				for="ceo1">지지한다.</label> &nbsp;&nbsp;&nbsp; <input type="radio"
				id="ceo2" name="ceoscore" value="N"><label for="ceo2">지지하지
				않는다.</label>
		</div>
	</div>
	<div class="row" style="padding: 15px;">
		<div class="col-lg-5">이 기업을 친구에게 추천하시겠습니까?</div>
		<div class="col-lg-5">
			<input type="radio" id="rec1" name="recommandscore" value="Y"><label
				for="rec1">예</label> &nbsp;&nbsp;&nbsp; <input type="radio"
				id="rec2" name="recommandscore" value="N"><label for="rec2">아니오</label>
		</div>
	</div>
	<div class="row" style="padding: 15px;">
		<div class="col-lg-5">이 기업의 1년후 미래에 관하여 어떻게 생각하십니까?</div>
		<div class="col-lg-5">
			<input type="radio" id="fut1" name="futurescore" value="U"><label
				for="rec1">상승</label> &nbsp;&nbsp;&nbsp; <input type="radio"
				id="fut2" name="futurescore" value="S"><label for="fut2">비슷</label>
			&nbsp;&nbsp;&nbsp; <input type="radio" id="fut3" name="futurescore"
				value="D"><label for="fut3">하락</label>
		</div>
	</div>
</div>