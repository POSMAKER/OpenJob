<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
	function shownext() {
		$("#p1").hide();
		$("#p2").show();
		$("#closebtn").hide();
		$("#prevbtn").show();
		$("#nextbtn").hide();
		$("#submitbtn").show();
	}
	function showprev() {
		$("#p2").hide();
		$("#p1").show();
		$("#prevbtn").hide();
		$("#closebtn").show();
		$("#submitbtn").hide();
		$("#nextbtn").show();
		
	}
	function submitfrm() {
		$("#frm").submit();
	}
</script>
<!-- Modal -->
<div class="modal fade" id="myModal" role="dialog"
	style="padding-right: 0px;">
	<div class="modal-dialog modal-lg"
		style="top: 45px; max-width: 1100px;">
		<!-- Modal content-->
		<div class="modal-content"
			style="background-color: transparent; border: none;">
			<div class="row">
				<div class="col-lg-9" style="padding-top: 10px; padding-right: 0px;">
					<div class="modal-header"
						style="background-color: white; height: 55px; border-radius: 0px">
						<span class="modal-title" style="font-size:16px; font-weight: bold;">