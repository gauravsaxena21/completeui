<!--- We include the Nitobi CF XML library 1.0 --->
<cfinclude template = "nitobi.xml.cfm">

<!--- First we set up the get handler by calling EBAGetHandler_ProcessRecords() --->
<!--- Then we define our data fields and give them the same names they have in the database --->
<!--- (you dont have to give them the same names, but it makes it easier to keep track of them --->

<CFOUTPUT>

	#EBAGetHandler_ProcessRecords()#
	/*** NTB_COLUMNDEF ***/
</CFOUTPUT>

<cfif parameterexists(PageSize) is not "YES">
<CFSET PageSize = 10>
</cfif>

<cfif parameterexists(SearchSubString) is not "YES">
<CFSET SearchSubString = "">
</cfif>

<cfif parameterexists(LastString) is not "YES">
<CFSET LastString = "">
</cfif>

/*** NTB_VAR_GETTER ***/

<cfparam name="TableName" default="/*** NTB_TABLE ***/">
<cfparam name="SearchColumn" default="/*** NTB_SEARCHCOLUMN ***/">

<!--- Now we perform a query on our database. See the instructions for help setting this --->
<!--- sample database up. We have given it a datasource name of NitobiTestDB --->

<cfquery name="CustomerQuery" datasource="/*** NTB_DATASOURCE ***/">
      /*** NTB_QUERY ***/
</cfquery>

<!--- Now we output our records as we loop through the query. --->
<cfoutput query="CustomerQuery">

		#EBAGetHandler_CreateNewRecord(/*** NTB_KEY ***/)#
			/*** NTB_RECORDDEF ***/
		#EBAGetHandler_SaveRecord()#

</cfoutput>

<!--- Now we call EBAGetHandler_CompleteGet to return all our xml to the browser. --->
<CFOUTPUT>
	#EBAGetHandler_CompleteGet()#
</CFOUTPUT>
