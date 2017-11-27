<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div style="padding: 15px;">
D-${enddate-nowdate } (채용시 마감) <fmt:formatDate pattern = "yyyy/MM/dd" 
         value = "${post.startdate }" /> ~ <fmt:formatDate pattern = "yyyy/MM/dd" 
         value = "${post.enddate }" /> [ <fmt:formatDate pattern = "yyyy/MM/dd" 
         value = "${post.writedate }" /> 등록 ]<br>
		${post.title }<br>
</div>