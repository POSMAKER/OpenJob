<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="container-fluid">
	<div class="row">
		<div class="col-lg-2"></div>
		<div class="col-lg-6" style="min-width: 350px; padding: 10px;">
			<div style="padding-left: 15px;">
				<span style="margin-bottom: 10px; color: lime; font-weight: bold">D-${enddate-nowdate }
					(채용시 마감) </span> <span
					style="color: gray; font-size: 13px; font-weight: bold;"><fmt:formatDate
						pattern="yyyy/MM/dd" value="${post.startdate }" /> ~ <fmt:formatDate
						pattern="yyyy/MM/dd" value="${post.enddate }" /></span> <span style="font-size:13px; font-weight: bold;">[
					<fmt:formatDate pattern="yyyy/MM/dd" value="${post.writedate }" />
					등록 ]
				</span><br> <span style="font-size: 24px; font-weight: bold">${post.title }</span><br>
			</div>
		</div>
		<div class="col-lg-2"></div>
	</div>
</div>