<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%!
    	public String getParam (HttpServletRequest request, String paramName){
    	return request.getParameter(paramName) ==null?"":  request.getParameter(paramName);
    }
    %>

    <%
    	String userIdParam = getParam(request, "userid");
    	String userPwParam = getParam(request, "userpw");
    	
    	
    	HttpSession s = request.getSession();
    	s.setAttribute("useridSess", "1");
    	s.setAttribute("userpwSess", "2");
    	
    	if(s!=null){
    		String userIdSess = (String)s.getAttribute("useridSess");
    		String userPwSess = (String)s.getAttribute("userpwSess");
    		if(!userIdSess.equals(userIdParam)||!userPwSess.equals(userPwParam)){
    			out.print("로그인에 실패했습니다");
    		}else{
    			out.print(userIdSess +"님이 로그인 하셨습니다");
    			out.print("&nbsp;<a href='logoutProc.jsp'>[로그아웃]</a>");
    		}
    		out.print("<br/><a href='#' onclick='history.back();'>로그인 화면으로 가기</a>");
    	}
    %>