<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> -->
<!DOCTYPE html>
<html>

<head>
</head>
<body>
<%  
    String teama,flag,id;
    if(session.getAttribute("flag") == null || session.getAttribute("flag").equals("")){
        flag ="";
        teama="unknown";
		System.out.println("Eimai unknown!");
        if(session.getAttribute("id") == null || session.getAttribute("id").equals("")){
            id ="";
        }
        else{
            id = (String)session.getAttribute("id");
        }        
    }
    else{
        flag = (String)session.getAttribute("flag");
        System.out.println("shit"+flag);
        int flagidi = Integer.parseInt(flag);
      	if(flagidi==0){
            teama="admin";
        	System.out.println("Eimai admin!");
        }
    	else if(flagidi==1){
    	    teama="user";
        	System.out.println("Eimai user!");
    	}
    	else{
	        teama="company";
    		System.out.println("Eimai company!");
    	}
	    

    	if(session.getAttribute("id") == null || session.getAttribute("id").equals("")){
        	id ="";
	    }
    	else{
        	id = (String)session.getAttribute("id");
    	}   	 
    }
%>
<jsp:include page="<%="header_" + teama +".jsp"%>"/>

</body>
</html>
