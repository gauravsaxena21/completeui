<?php
header('Content-type: text/xml');
require("nitobi.xml.php");
require("/*** NTB_CONNECTION_FILE ***/");
/*

// This file is used as a Get Handler for the Combobox.
// Gethandlers must be able to output xml when called without any parameters.

// For more details please have a look at our shipped online help under Reference/Server
/*
	 GetHandlers must be able to output xml when called without any parameters. If paging is used,
	 they need to respond to the following parameters:

         StartingRecordIndex - Which record (ordinally) to start returning data on.
         PageSize - How many records to return
         SearchSubstring - The string to search for
         LastString - The Last string in the currently loaded list. Useful for databases that dont support paging natively (like MS Access)

*/
// *******************************************************************
// Here we begin by grabbing some of the necessary querystring variables
// *******************************************************************

	$pageSize = 0;

	if (isset($_GET['PageSize'])) {
		$pageSize = $_GET['PageSize'];
	}

	if ($pageSize < 1) {
		$pageSize=15;
	}


	$startingRecordIndex = 0;

	if (isset($_GET['StartingRecordIndex'])) {
		$startingRecordIndex = $_GET['StartingRecordIndex'];
	}

	if ($startingRecordIndex < 1) {
		$startingRecordIndex=0;
	}

	$searchSubString = "";

	if (isset($_GET['SearchSubstring'])) {
		$searchSubString = $_GET['SearchSubstring'];
	}

	$lastString = "";

	if (isset($_GET['LastString'])) {
		$lastString = $_GET['LastString'];
	}
	$tableName = "/*** NTB_TABLE ***/";
	
	$searchColumn = "/*** NTB_SEARCHCOLUMN ***/";
	
	/*** NTB_VAR_GETTER ***/


// *******************************************************************
// This code block just sets up the database and tries to figure out what index number
// our data starts at. This code has nothing to do with the grid itself so think of it as
// business logic.
// *******************************************************************

//Set up the database connection and get the recordset
mysql_select_db(/*** NTB_DATABASE ***/) or die(mysql_error());

// Retrieve all the data from the "example" table
$myQuery = /*** NTB_QUERY ***/;
$result = mysql_query($myQuery) or die(mysql_error());

// If you would like to know more about the querystrings you should use for each search mode and for different
// databases, consult our knowledgebase article: http://www.nitobi.com/kb/?artid=94

// *******************************************************************
// Lets Set up the Output
// *******************************************************************
$getHandler = new EBAGetHandler();

// *******************************************************************
// Lets loop through our data and send it to the grid
// *******************************************************************

	/*** NTB_COLUMNDEF ***/

$nrows = mysql_num_rows($result);
for ( $counter = 0; $counter < $nrows; $counter++) {

	$row = mysql_fetch_array($result);

	$record = new EBARecord($row["/*** NTB_KEY ***/"]);
		/*** NTB_RECORDDEF ***/
	$getHandler->add($record);


}
$getHandler->CompleteGet();
?>
