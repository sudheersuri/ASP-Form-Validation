using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FormValidations
{
    public partial class myForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                Validate();
            }

        }
        protected void vldUsername_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string[] registeredUsers = new string[] { "sam", "nicole", "harry", "mike" };
            if (registeredUsers.Contains<string>(txtUserName.Text))
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Response.Write("Registered Successfully");
            }
        }
    }
}