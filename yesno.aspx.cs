using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class testes_yesno : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Show_yesno(object sender, EventArgs e)
    {
        ModalPopupExtender1.Show();
    }
    protected void Delete_option (object sender, EventArgs e)
    {
        lbloption.Text = "Option Delete";
    }
}