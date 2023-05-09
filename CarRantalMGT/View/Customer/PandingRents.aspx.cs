using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace CarRantalMGT.View.Customer
{
    public partial class PandingRents : System.Web.UI.Page
    {
        Models.Functions Conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            Conn = new Models.Functions();
            ShowCars();
        }
        private void ShowCars()
        {
            
            string Query = "select * from RentTbl where customer= '" + Signup.CustId + "'";
            CarList.DataSource = Conn.GetData(Query);
            CarList.DataBind();
        }
    }
}