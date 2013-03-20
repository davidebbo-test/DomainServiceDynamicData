using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        CreateUserWizard1.ContinueDestinationPageUrl = Request.QueryString["ReturnUrl"];
    }

    protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e) {
        FormsAuthentication.SetAuthCookie(CreateUserWizard1.UserName, false /* createPersistentCookie */);
        Response.Redirect(CreateUserWizard1.ContinueDestinationPageUrl);
    }
}
