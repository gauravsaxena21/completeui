<%@ Register TagPrefix="ntb" Namespace="Nitobi" Assembly="nitobi.combo" %>
<%@ Page language="c#" Inherits="Paging.Paging" CodeFile="Classic.aspx.cs" %>
<%@ Register Assembly="nitobi.combo" Namespace="Nitobi" TagPrefix="ntb" %>
<HTML>
<HEAD>
<title>Nitobi ComboBox V3 Demo</title>
<style type="text/css">
TABLE.active TR TD { BORDER-RIGHT: #7f9db9 1px solid; PADDING-RIGHT: 2px; BORDER-TOP: #7f9db9 1px solid; PADDING-LEFT: 2px; FONT-SIZE: 80%; PADDING-BOTTOM: 1px; BORDER-LEFT: #7f9db9 1px solid; PADDING-TOP: 1px; BORDER-BOTTOM: #7f9db9 1px solid; BACKGROUND-COLOR: #fff }
	</style>
<link type="text/css" rel="stylesheet" href="http://www.nitobi.com/products/completeui/demos/explorer/demo.css">
</link>
</HEAD>
<body>
<form id="Form1" method="post" runat="server">
      <p>This sample illustrates the use of Paging and Classic Search Mode. You can expand the page size by pressing the page button or using PageDn on your keyboard. All aspects of ComboBox operation are keyboard accessible.</p>
      <p><strong>Classic Search Mode</strong>: In classic search mode we have access to traditional combobox paging capabilities. A paging button appears that can be used to expand the local list based on the current search string. You can also page using the PageDn key or by keying down the list to the bottom.</p>
      <p><strong>One Additional Note</strong>: In this demo, we can submit the form containing the combobox. You will see the form values generated by the combobox appear at the bottom of the page. </p>
      <p><strong>Instructions</strong></strong>: put your cursor in the text box and start typing. The listbox will contain selections from the database based on your search string.</p>
      <strong>Select a Customer</strong>:
      <!-- Note the use of CustomHTMLDefinition in the List: %3c = < and %3e = >, else Mozilla chokes -->
      <ntb:Combo id="myCombo" style="PADDING-BOTTOM: 1px; PADDING-TOP: 1px" runat="server" PreconfiguredStylesheet="RecordSearch"
									PostBackOnSelectEvent="True" onselect="SelectedShowData" onload="Page_Load">
        <List Width="360px" DatasourceUrl="Classic.aspx" PageSize="7" EnableDatabaseSearch="True"
										Height="120px" AllowPaging="True" CustomHTMLDefinition="${1} <span style='color:#6684A0;font-style:italic;'> ${2} </span>"></List>
        <TextBox DataFieldIndex="1"></TextBox>
      </ntb:Combo>
      &nbsp;<br>
      <br>
      <!-- This is the table that gets filled from the c# -->
      <table class="active" cellSpacing="1" cellPadding="0">
        <asp:label id="submitLabel" runat="server"></asp:label>
      </table>
</form>
</body>
</HTML>
