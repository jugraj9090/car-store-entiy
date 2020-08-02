using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarStoreEntity
{
    public partial class LoginStore : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            DatabaseConnection.DataConnection conection = new DatabaseConnection.DataConnection();
            String serchQuery = "select * from LoginRecord where UserName='"+txtUser.Text+ "' and UserPassword='"+txtPassword.Text+"'";
            DataTable tbl = new DataTable();

            tbl = conection.Fetch_Record(serchQuery);
            if (tbl.Rows.Count > 0)
            {
                Response.Redirect("MainArea.aspx");
            }
            else {
                res.InnerHtml = "Try to fill correct User name or password ";
            }
        }
    }
}