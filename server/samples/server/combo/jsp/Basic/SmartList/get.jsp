<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@ page import="java.sql.*" %>
<%@ page import="eba.gethandler.*" %>

<%
	// This file is used as a Get Handler for the combo. When the combo is initialized,
	// the get handler script (this page) is called and expected to return a properly formatted
	// xml stream. We have provided all the necessary functionality to do this without actually
	// requiring you to construct XML. Simply interface with your datasource and use the provided
	// classes in ebaxmlconverter.jar to create the necessary output.

	// Gethandlers must be able to output xml when called without any parameters.
	// For more details please have a look at our shipped online help under Reference/Server


	// We begin by grabbing some of the necessary querystring variables
	
	String pageSizeParam=request.getParameter("PageSize");
	if (pageSizeParam==null) pageSizeParam="15";
	int pageSize = Integer.parseInt(pageSizeParam);	

	String searchSubStringParam=request.getParameter("SearchSubstring");
	if (searchSubStringParam==null) searchSubStringParam="";
	String searchSubString = searchSubStringParam;		
		
    /**
    Figure out the path to the mdb file that has the needed data
    
    We need to create:
    	C:\Program Files\eBusiness Applications\Combo 3.X\Jsp Trial\samples\Basic\SmartList\data\econtactsdb.mdb
    	
    This breaks down to the following:
    	[C:\Program Files\eBusiness Applications\Combo 3.X\Jsp Trial\]+[samples\Basic\SmartList]+[\data\econtactsdb.mdb]
    	
	The above breakdown maps to the following:
		getRealPath("/") ---> [C:\Program Files\eBusiness Applications\Combo 3.X\Jsp Trial\]
		getServletPath()  ---> [samples\Basic\SmartList] (get.jsp is removed)
	    hard code string ---> [\data\econtactsdb.mdb]
	                                                                                                                                                       
    */
    
	// get the complete path on the server of our database.
	String path = config.getServletContext().getRealPath("/");
   
    // from the URL we need to remove the first three tokens [http:/][/localhost:8080][/v32betaJSPSamples/]
    // Token 4 to N need to be added to the value returned from getRealPath
    // Also the last token is the name of the get handler
	String pathAfterContext = request.getServletPath();
    // remove the get.jsp part.
    pathAfterContext        = pathAfterContext.substring(0,pathAfterContext.lastIndexOf("/")).replace('/','\\');
    
	path = path+pathAfterContext+"\\data\\econtactsdb.mdb";

	// get the database connection
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver").newInstance();
	Connection con=DriverManager.getConnection("jdbc:odbc:Driver={MicroSoft Access Driver (*.mdb)};DBQ=" + path,"","");

	// get the ResultSet of the table tblPricing in our database
	Statement st=con.createStatement();
	
	String newQuery = "SELECT TOP " + pageSize + " * FROM tblContacts WHERE ContactInfo LIKE '%" + searchSubString + "%' ORDER BY TimesEmailed";	

	ResultSet rs = st.executeQuery(newQuery);
	
	GetHandler myGetHandler = new GetHandler(response,out);	
	
	myGetHandler.defineField("ContactInfo");
		
	// loop through the ResultSet from the Database and set values to myGetHandler
	Record curRecord;
	while ( rs.next() ) 
	{		
		curRecord=myGetHandler.createNewRecord(rs.getString("ContactID"));
		
		curRecord.setField("ContactInfo",rs.getString("ContactInfo"));
		
		myGetHandler.addRecord(curRecord);
	}
	
	myGetHandler.writeToClient();
	
	rs.close();
	con.close();
%>

