<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="/top" />

<div align="center" id="bbs" class="col-md-8 offset-md-2 my-4">
   <h1>Spring Board</h1>
   <p>
   	<a href="write">글쓰기</a>|<a href="list">글목록</a>
   </p>
   
   <form>
	   <!-- <input> --><!-- 원본글쓰기mode는 write, 답변글쓰기 mode는 rewrite로 감 - 활용할때 사용  -->
	   <table>
	   		<tr>
	   			<td style="width:20%"><b>제목</b></td>
        		<td style="width:80%">
	   				<input>
	   			</td>
	   		</tr>
	   		
	   		<tr>
	   			<td style="width:20%"><b>글쓴이</b></td>
        		<td style="width:80%">
	   				<input>
	   			</td>
	   		</tr>
	   		
	   		<tr>
	   			<td style="width:20%"><b>글내용</b></td>
        		<td style="width:80%">
	   				<input>
	   			</td>
	   		</tr>
	   		
	   		<tr>
	   			<td style="width:20%"><b>비밀번호</b></td>
        		<td style="width:80%">
	   				<input>
	   			</td>
	   		</tr>
	   		
	   		<tr>
	   			<td style="width:20%"><b>첨부파일</b></td>
        		<td style="width:80%">
	   				<input>
	   			</td>
	   		</tr>
	   		
	   		<tr>
	   			<td colspan="2">
	   				<button>글쓰기</button>
	   				<button>다시쓰기</button>
	   			</td>
	   		</tr>
	   
	   
	   </table>
   </form>

</div>
<c:import url="/foot"/>