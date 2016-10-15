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

    protected void Button1_Click(object sender, EventArgs e)
    {
        //Only is JS is disabled then trip is made to server & following works
        Button1.Text = Page.IsValid ? "Valid" :"NOT Valid";
        //in customValid ctrl 'ServerValidateEventArgs e' also has an e.IsValid specific to particular ctrl being checked. But if set as FALSE the Page.IsValid also becomes FALSE
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        //Cancel btn should NOT trigger validation even if bogus data was entered. So att CausesValidation=false
    }


    //this will be fired ONLY if u type sth in TextBox for CustomValidator.
    protected void chkName(object source, ServerValidateEventArgs args)
    {
        args.IsValid= args.Value.ToLower() == "mani"? true:false;
        //args.IsValid in trun will decide Page.IsValid
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Button3.Text=  Page.IsValid? "Yes it IS Mani" : "inValid";
    }
}