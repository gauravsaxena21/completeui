package examples.combo.compact;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nitobi.server.handler.GetHandler;

public class ComboHandler extends HttpServlet 
{
	private String searchSubString;
	private String pageSizeParam;
	
	/* 
	 * This servlet is used as a Datasource for the combo. When the combo is initialized,
	 * the get handler servlet is called and expected to return a properly formatted
	 * xml stream. We have provided all the necessary functionality to do this without actually
	 * requiring you to construct XML. Simply interface with your datasource and use the provided
	 * classes in the package com.nitobi.server.handler to create the necessary output.
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException
	{
		getRequestParams(request);
		try
		{
			// get the database connection
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/nitobi_testdb_v1?" +
														  "user=nitobi");
			Statement st = conn.createStatement();
			// Note that because this is a servlet for a ComboBox in Compact Mode,
			// we don't require paging capabilities so the LIMIT clause starts from
			// record 0.
			String newQuery = "SELECT * FROM tblcontacts3k WHERE ContactName LIKE '" + 
				searchSubString + "%' LIMIT 0," + pageSizeParam;
			ResultSet rs = st.executeQuery(newQuery);
			
			GetHandler myGetHandler = new GetHandler();	
			myGetHandler.populate(rs, "ContactID");
			myGetHandler.writeToClient(response);
			// clean up 
			rs.close();
			st.close();
			conn.close();
		}
		catch (Exception ex)
		{
			throw new ServletException(ex);
		}
	}
	
	/*
	 * This is a helper method to get the needed parameters from the request.
	 * When the request is issued by the Combo on the client side to this servlet, the Combo
	 * may include some query string parameters that can be used to determine the subset of data
	 * to return.
	 * Gethandlers must be able to output xml when called without any parameters. If paging is used,
	 * they need to respond to the parameters "pagesize" and "StartRecordIndex" ie:
	 *
	 * 			gethandler.asp?pagesize=15&StartRecordIndex=101&sortcolumn&sortdirection
	 *
	 * In this example above, the combo has asked the gethandler to return 15 records, beginning at record 101.
	 * 101 is not an ID, its the ordinal position of the starting record.	
	 */
	private void getRequestParams(HttpServletRequest request)
	{
		pageSizeParam=request.getParameter("PageSize");
		if (pageSizeParam==null) 
		{
			pageSizeParam="15";
		}
		
		String searchSubStringParam=request.getParameter("SearchSubstring");
		if (searchSubStringParam==null) 
		{
			searchSubStringParam="";
		}
		searchSubString = searchSubStringParam;
	}
}
