<%@page import="kr.or.ddit.member.vo.MemberVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
//서블릿에서 조회결과를 "list"라는 key로 request에 담아줬음
List<MemberVO> list = (List<MemberVO>)request.getAttribute("list");	

for(int i = 0; i < list.size(); i++){
	MemberVO vo = list.get(i);
	String memId = vo.getMemId();
	String memName = vo.getMemName();
	
	//json 타입으로 만들어야 하는 부분 ==> {name : "", id : ""}
%>
	{name : "<%=memName %>", id : "<%=memId %>"}
<% 
}
%>
