using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace CarRantalMGT.View.Customer
{
    public partial class Cars : System.Web.UI.Page
    {
        Models.Functions Conn;
       
        protected void Page_Load(object sender, EventArgs e)
        {
            Conn = new Models.Functions();
            ShowCars();
            CustName.InnerText = Signup.CName;
            Customer = Signup.CustId;

        }
        private void ShowCars()
        {
            string St = "Available";
            string Query = "select * from CarTbl where Status= '"+St+"'";
            CarList.DataSource = Conn.GetData(Query);
            CarList.DataBind();
        }
        private void UpdateCars()
        {
            try
            { 
                string Status = "Booked";
                string Query = "update CarTbl set Status='{0}'where CPlatNum='{1}' ";
                Query = String.Format(Query, Status, CarList.SelectedRow.Cells[1].Text);
                Conn.SetData(Query);
                InfoMsg.InnerText = "Car Edited";
                ShowCars();

            }
            catch (Exception)
            {
                throw;
            }
        }
        protected void Bookbtn_Click(object sender, EventArgs e)
        {
            TimeSpan DDays = Convert.ToDateTime(ReturnDate.Value) - DateTime.Today.Date;
            int Days = DDays.Days;
            int DPrice;
            DPrice = Convert.ToInt32(CarList.SelectedRow.Cells[4].Text);
            int Fees = DPrice * Days;
            
            try
            {
                if (CarList.SelectedRow.Cells[1].Text == "")
                {
                    InfoMsg.InnerText = "Missing Information";
                }
                else
                {

                    string Query = "insert into RentTbl values('{0}',{1},'{2}','{3}',{4})";
                    Query = String.Format(Query, CarList.SelectedRow.Cells[1].Text, Signup.CustId, System.DateTime.Today.Date.ToString(), ReturnDate.Value, Fees);
                    Conn.SetData(Query);
                    UpdateCars();
                    InfoMsg.InnerText = "Car Rented";
                    ShowCars();
                    
                }
            }
            catch (Exception)
            {
                throw;
               

            }
        }
        string LNumber, RentDate, RetDate;
        int Customer;
        

        protected void CarList_SelectedIndexChanged(object sender, EventArgs e)
        {
            LNumber = CarList.SelectedRow.Cells[1].Text;
            
            RentDate = System.DateTime.Today.Date.ToString();
            RetDate = ReturnDate.Value;
            
   
        }
    }
}