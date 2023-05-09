using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace CarRantalMGT.View.Admin
{
    public partial class Rentals : System.Web.UI.Page
    {
        Models.Functions Conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            Conn = new Models.Functions();
            ShowRents();
        }
        private void ShowRents()
        {

            string Query = "select * from RentTbl ";
            RentList.DataSource = Conn.GetData(Query);
            RentList.DataBind();
        }
        private void ReturnCar()
        {
            try
            {
               
                    string Query = "delete from RentTbl where RentId='{0}' ";
                    Query = String.Format(Query, RentList.SelectedRow.Cells[1].Text);
                    Conn.SetData(Query);
                   
                    //ErrorMsg.InnerText = "Car Deleted";
                
            }
            catch (Exception)
            {
                throw;
            }
        }

        string LicensePlate;
             
        protected void RentList_SelectedIndexChanged(object sender, EventArgs e)
        {
            LicensePlate= RentList.SelectedRow.Cells[1].Text;
        }
        private void UpdateCars()
        {
            try
            {
                string Status = "Available";
                string Query = "update CarTbl set Status='{0}'where CPlatNum='{1}' ";
                Query = String.Format(Query, Status, RentList.SelectedRow.Cells[2].Text);
                Conn.SetData(Query);
                InfoMsg.InnerText = "Car Returned";
                //ShowRents();

            }
            catch (Exception)
            {
                throw;
            }
        }

        protected void Returnbtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (RentList.SelectedRow.Cells[1].Text == "")
                {
                    InfoMsg.InnerText = "Select a Rent";
                }
                else
                {

                    string Query = "insert into ReturnTbl values('{0}',{1},'{2}',{3},{4})";
                    Query = String.Format(Query, RentList.SelectedRow.Cells[2].Text, RentList.SelectedRow.Cells[3].Text, System.DateTime.Today.Date.ToString(), DelayTb.Value, FineTb.Value);

                    Conn.SetData(Query);
                    UpdateCars();
                    ReturnCar();
                    ShowRents();
                    InfoMsg.InnerText = "Car Returned";
                }
            }
            catch (Exception)
            {
                throw;


            }
        }
    }
}