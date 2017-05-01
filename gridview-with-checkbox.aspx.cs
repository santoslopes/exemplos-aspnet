using System;
using System.Collections.Generic;

using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class gridview_with_checkbox : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        lblResult.Text = "";
        foreach (GridViewRow row in GridView1.Rows)
        {
            CheckBox chkbox = (CheckBox)row.FindControl("CheckBox1");
            if (chkbox.Checked == true)
            {
                lblResult.Text = lblResult.Text +" "+ row.Cells[2].Text;
            }
        }

    }
}