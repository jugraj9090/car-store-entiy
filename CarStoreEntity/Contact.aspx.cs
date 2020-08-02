using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarStoreEntity
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            DatabaseConnection.DataConnection connection = new DatabaseConnection.DataConnection();
            connection.AddQuery("insert into ContactRecord values('"+txtUser.Text+"','"+txtEmail.Text+"','"+txtMob.Text+"','"+txtMsg.Text+"')");
            res.InnerHtml = "Thanks for the query we will contact you soon ! ";
            txtEmail.Text = "";
            txtMob.Text = "";
            txtMsg.Text = "";
            txtUser.Text = "";
        }
    }
}