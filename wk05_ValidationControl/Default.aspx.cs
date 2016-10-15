using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        //if (Page.IsValid)
        //{
        //    Response.Write("pAGE IS VALID");
        //}
        //else
        //{
        //    Response.Write("PAGE IN-VALID - check errors");
        //}
    }

    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        string username = args.Value.ToLower();
        if(username == "john")
        {
            args.IsValid = false;
        }
    }
}