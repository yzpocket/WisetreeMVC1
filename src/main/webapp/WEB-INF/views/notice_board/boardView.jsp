<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>

<c:import url="/top"/>

<div class="container mt-3" style="overflow:auro;">
	<h1 class="text-center">Spring Board 내용 보기</h1>
	
	<c:if test="${board eq null }">
		<div class="alert alert-danger my-5 test-center">
			<h4>존재 하지 않는 글입니다.</h4>
		</div>
	</c:if>
	
	<c:if test="${board ne null }">
	<table class="table mt-4">
		<tr>
			<td>글번호</td>
			<td>
				<c:out value="${board.num }"/>
			</td>
			<td>작성일</td>
			<td>
				<c:out value="${board.wdate }"/>
			</td>
		</tr>
		
		<tr>
			<td>글쓴이</td>
			<td>
				<c:out value="${board.name }"/>
			</td>
			<td>조회수</td>
			<td>
				<c:out value="${board.readnum }"/>
			</td>
		</tr>
		
		<tr>
			<td>제목</td>
			<td>
				<c:out value="${board.subject }"/>
			</td>
			<td>글내용</td>
			<td>
				<c:out value="${board.content }"/>
			</td>
		</tr>
		
		<tr>
			<td>첨부파일</td>
			<td>
				<c:out value="${board.originFilename }"/>
				<c:out value="${board.filesize }"/>
			</td>
		</tr>
		
		<tr>
			<td colspan="4" align=center>
				<a href="../write">글쓰기</a> | 
				<a href="../list">목록</a> |  
				<a href="#" onclick="go(1)">삭제</a> |  
				<a href="#" onclick="go(2)">편집</a>
			</td>
		</tr>
	
	
	
	</table>
	</c:if>
<!-- 편집 또는 삭제를 위한 form----------------------------- -->
<form name="frm" id="frm">
	<input type="text" name="num" value="<c:out value="${board.num }"/>">
	<input type="text" name="mode">
	<div class="row mt-4" id="divPasswd" style="display:none">
		<div class="col-md-3 offset-md-1 text-right mr-2">
			<label for="passwd">글 비밀번호</label>
		</div>
		<div class="col-md-4">
			<input type="password" name="passwd" id="passwd"
			class="form-control" placeholder="Password" required>
		</div>
		<div class="col-md-3">
			<button id="btn" class="btn btn-outline-primary"></button>
		</div>	
	</div>
</form>
	<!-- ------------------------------------------- -->
</div>

<script type="text/javascript">
function go(flag){
	if(flag==1){
		frm.mode.value='delete';
		$('#btn').text('글삭제')
		$('#passwd').focus();
		frm.action='../delete';
		frm.method='post';
	}else if(flag==2){
		frm.mode.value='edit';
		$('#btn').text('글수정');
		$('#passwd').focus();
		frm.action='../edit';
		frm.method='post';
	}
	$('#divPasswd').show(1000);
}
</script>
<c:import url="/foot"/>