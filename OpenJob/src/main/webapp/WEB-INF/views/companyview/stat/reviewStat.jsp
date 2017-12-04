<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(recommandChart);
      google.charts.setOnLoadCallback(futureChart);
      google.charts.setOnLoadCallback(ceoChart);
      var options = {
              pieHole: 0.8,
              legend: 'none',
              pieSliceText: 'none',
              enableInteractivity: false,
              chartArea: {'width': '100%', 'height': '100%'},
              slices: {
                  0: { color: 'purple' },
                  1: { color: 'lightgray' }
                }
            }; 
      function recommandChart() {
        var data = google.visualization.arrayToDataTable([
        	['var', 'Percentage'],
        	['', ${stat_review.recommandscore}],
        	['', ${100-stat_review.recommandscore}]
        ]);
        var chart = new google.visualization.PieChart(document.getElementById('recommand_chart'));
        chart.draw(data, options);
      }
      function futureChart() {
          var data = google.visualization.arrayToDataTable([
          	['var', 'Percentage'],
          	['', ${stat_review.futurescore}],
          	['', ${100-stat_review.futurescore}]
          ]);
          var chart = new google.visualization.PieChart(document.getElementById('future_chart'));
          chart.draw(data, options);
        }
      function ceoChart() {
          var data = google.visualization.arrayToDataTable([
          	['var', 'Percentage'],
          	['', ${stat_review.ceoscore}],
          	['', ${100-stat_review.ceoscore}]
          ]);
          var chart = new google.visualization.PieChart(document.getElementById('ceo_chart'));
          chart.draw(data, options);
        }
    </script>
<style>
div.mainbar {
	width: 19%;
	background-color: green;
}

div.seperator {
	width: 1%;
	background-color: white;
}

.total_bar div.mainbar {
	background-color: orange;
}

.donutCell {
	position: relative;
}

.centerLabel {
	position: absolute;
	left: 1px;
	top: 1px;
	width: 90px;
	line-height: 90px;
	text-align: center;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 20px;
	color: maroon;
}
</style>
<div class="container-fluid"
	style="padding: 15px; width: 100%; background-color: #ffffff; margin-bottom: 15px;"
	align="left">
	전체 리뷰 통계
	<div class="row">
		<div class="col-xl-6" style="padding-left: 40px;">
			&nbsp;&nbsp;<span style="font-size: 40px;">${stat_review.totalscore div 10 }</span>&nbsp;&nbsp;총
			만족도 <br>
			<div id="tot" class="progress total_bar"
				style="width: 150px; height: 7px;">
				<c:import url="/company/frag_bar">
					<c:param name="bar_value" value="${stat_review.totalscore }" />
				</c:import>
			</div>
			<br> <span style="font-size: 13px;">승진
				기회&nbsp;&nbsp;&nbsp;${stat_review.promotionscore div 10}</span>
			<div class="progress"
				style="width: 250px; height: 10px; margin-bottom: 10px;">
				<c:import url="/company/frag_bar">
					<c:param name="bar_value" value="${stat_review.promotionscore }" />
				</c:import>
			</div>
			<span style="font-size: 13px;">복지 및
				급여&nbsp;&nbsp;&nbsp;${stat_review.walfarescore div 10}</span>
			<div class="progress"
				style="width: 250px; height: 10px; margin-bottom: 10px;">
				<c:import url="/company/frag_bar">
					<c:param name="bar_value" value="${stat_review.walfarescore }" />
				</c:import>
			</div>
			<span style="font-size: 13px;">삶의
				균형&nbsp;&nbsp;&nbsp;${stat_review.balancescore div 10}</span>
			<div class="progress"
				style="width: 250px; height: 10px; margin-bottom: 10px;">
				<c:import url="/company/frag_bar">
					<c:param name="bar_value" value="${stat_review.balancescore }" />
				</c:import>
			</div>
			<span style="font-size: 13px;">사내문화&nbsp;&nbsp;&nbsp;${stat_review.atmospherescore div 10}</span>
			<div class="progress"
				style="width: 250px; height: 10px; margin-bottom: 10px;">
				<c:import url="/company/frag_bar">
					<c:param name="bar_value" value="${stat_review.atmospherescore }" />
				</c:import>
			</div>
			<div>
				<span style="font-size: 13px;">경영진&nbsp;&nbsp;&nbsp;${stat_review.executivescore div 10}</span>
			</div>
			<div class="progress"
				style="width: 250px; height: 10px; margin-bottom: 10px;">
				<c:import url="/company/frag_bar">
					<c:param name="bar_value" value="${stat_review.executivescore }" />
				</c:import>
			</div>
		</div>
		<div class="col-xl-6" style="padding-left: 55px;">
			<div class="row" style="margin-bottom:15px; margin-top:15px;">
				<div class="col-xl-5"
					style="padding: 20 0 10 0; font-size:16px;">직원의
					기업 추천율</div>
				<div class="col-xl-7" style="padding-left: 0px;">
					<div class="donutCell">
						<div id="recommand_chart" style="width:90px; height: 90px"></div>
						<div class="centerLabel">${stat_review.recommandscore}%</div>
					</div>
				</div>
			</div>
			<div class="row" style="margin-bottom:15px;">
				<div class="col-xl-5"
					style="padding: 20 0 10 0;font-size:16px;">성장 가능성</div>
				<div class="col-xl-7" style="padding-left: 0px;">
					<div class="donutCell">
						<div id="future_chart" style="width: 90px; height: 90px"></div>
						<div class="centerLabel">${stat_review.futurescore}%</div>
					</div>
				</div>
			</div>
			<div class="row" style="margin-bottom:15px;">
				<div class="col-xl-5"
					style="padding: 20 0 10 0; font-size:16px;">CEO 지지율</div>
				<div class="col-xl-7" style="padding-left: 0px;">
					<div class="donutCell">
						<div id="ceo_chart" style="width: 90px; height: 90px"></div>
						<div class="centerLabel">${stat_review.ceoscore}%</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>