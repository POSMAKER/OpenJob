<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(experienceChart);
      google.charts.setOnLoadCallback(successedChart);
      var options = {
    		  legend:{textStyle:{fontSize: 14}},
              enableInteractivity: false,
              chartArea: {'width': '100%', 'height': '100%'},
              slices: {
                  0: { color: 'purple' },
                  1: { color: 'lightgray' }
                }
            }; 
      function experienceChart() {
    	var str = '${stat_interview.experience}'; 
    	var d = str.split(",");
        var data = google.visualization.arrayToDataTable([
        	['var', 'Percentage'],
        	['긍정적', parseInt(d[0])],
        	['부정적',parseInt(d[1])],
        	['보통',parseInt(d[2])]
        ]);
        var chart = new google.visualization.PieChart(document.getElementById('experience_chart'));
        chart.draw(data, options);
      }
      function successedChart() {
      	var str = '${stat_interview.successed}'; 
      	var d = str.split(",");
          var data = google.visualization.arrayToDataTable([
          	['var', 'Percentage'],
          	['합격', parseInt(d[0])],
          	['불합격',parseInt(d[1])],
          	['대기중',parseInt(d[2])]
          ]);
          var chart = new google.visualization.PieChart(document.getElementById('successed_chart'));
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

</style>
<div
	style="padding: 15px; width: 100%; background-color: #ffffff; margin-bottom: 15px;"
	align="left">
	전체 리뷰 통계
	<div class="row">
		<div class="col-xl-6" style="padding-left: 40px;">
		<span style="font-size: 40px;">${stat_interview.interviewlevel div 10}</span>
				&nbsp;&nbsp;&nbsp;면접 난이도
			<div class="progress total_bar"
				style="width: 150px; height: 7px; margin-bottom: 10px;">
				<c:import url="/company/frag_bar">
					<c:param name="bar_value" value="${stat_interview.interviewlevel }" />
				</c:import>
			</div>		
	온라인 지원&nbsp;&nbsp;&nbsp;${fn:split(stat_interview.interviewroot,",")[0]}%<br>
	직원추천&nbsp;&nbsp;&nbsp;${fn:split(stat_interview.interviewroot,",")[1]}%<br>
	공개채용&nbsp;&nbsp;&nbsp;${fn:split(stat_interview.interviewroot,",")[2]}%<br>
	해드헌터&nbsp;&nbsp;&nbsp;${fn:split(stat_interview.interviewroot,",")[3]}%<br>
	학교 취업지원 센터&nbsp;&nbsp;&nbsp;${fn:split(stat_interview.interviewroot,",")[4]}%<br>
	기타&nbsp;&nbsp;&nbsp;${fn:split(stat_interview.interviewroot,",")[5]}%<br>
	</div>
	<div class="col-xl-6" style="padding-left: 40px;">
				면접 경험
				<div id="experience_chart" style="width: 100%; height: 90px"></div>
				합격 여부
				<div id="successed_chart" style="width: 100%; height: 90px"></div>		
				</div>
				
	</div>
</div>