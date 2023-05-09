using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarRantalMGT.View.Admin
{
    public partial class Returns : System.Web.UI.Page
    {
        Models.Functions Conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            Conn = new Models.Functions();
            ShowReturns();
        }
        private void ShowReturns()
        {

            string Query = "select * from ReturnTbl ";
            RentList.DataSource = Conn.GetData(Query);
            RentList.DataBind();
        }
    }
}