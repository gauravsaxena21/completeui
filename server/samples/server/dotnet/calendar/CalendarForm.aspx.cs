﻿using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class calendar_CalendarForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void SubmitBtn_Click(object sender, EventArgs e)
    {
        ContentsDiv.InnerText = "Request.Form[formCal.ClientID] = " + Request.Form[formCal.ClientID];
    }
}
