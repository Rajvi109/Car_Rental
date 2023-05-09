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
    public partial class Cars : System.Web.UI.Page
    {
        Models.Functions Conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            Conn = new Models.Functions();
            ShowCars();
           
        }
        private void ShowCars()
        {
            string Query = "select * from CarTbl";
            CarList.DataSource = Conn.GetData(Query);
            CarList.DataBind();
        }
       

        protected void Addbtn_Click(object sender, EventArgs e)
        {
            try
            {
                if(LNumberTb.Value==""||BrandTb.Value==""||ModelTb.Value==""||PriceTb.Value==""||ColorTb.Value=="")
                {
                    ErrorMsg.InnerText = "Missing Information";
                }
                else
                {
                    string PlateNum = LNumberTb.Value.ToString();
                    string Brand = BrandTb.Value;
                    string Model = ModelTb.Value;
                    int Price = Convert.ToInt32(PriceTb.Value.ToString());
                    string Color = ColorTb.Value;
                    string Status = AvailableCb.SelectedValue;
                    string Query = "insert into CarTbl values('{0}','{1}','{2}','{3}','{4}','{5}')";
                    Query = String.Format(Query,PlateNum, Brand, Model, Price, Color, Status);
                    Conn.SetData(Query);
                    ErrorMsg.InnerText = "Car Added";
                    ShowCars();
                }
            }
            catch(Exception)
            {
                throw;
            }
        }

        protected void Editbtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (LNumberTb.Value == "" || BrandTb.Value == "" || ModelTb.Value == "" || PriceTb.Value == "" || ColorTb.Value == "")
                {
                    ErrorMsg.InnerText = "Missing Information";
                }
                else
                {
                    string PlateNum = LNumberTb.Value.ToString();
                    string Brand = BrandTb.Value;
                    string Model = ModelTb.Value;
                    int Price = Convert.ToInt32(PriceTb.Value.ToString());
                    string Color = ColorTb.Value;
                    string Status = AvailableCb.SelectedValue;
                    string Query = "update CarTbl set Brand='{0}',Model='{1}',Price={2},Color='{3}',Status='{4}',CPlatNum='{5}'where CPlatNum='{6}' ";
                    Query = String.Format(Query, Brand, Model, Price, Color, Status,PlateNum, PlateNum);
                    Conn.SetData(Query);
                    ErrorMsg.InnerText = "Car Edited";
                    ShowCars();
                }
            }
            catch (Exception)
            {
                throw;
            }
        }

        protected void Deletebtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (LNumberTb.Value == "" )
                {
                    ErrorMsg.InnerText = "Missing Information";
                }
                else
                {
                    string PlateNum = LNumberTb.Value.ToString();
              
                    string Query = "delete from CarTbl where CPlatNum='{0}' ";
                    Query = String.Format(Query, PlateNum);
                    Conn.SetData(Query);
                    ShowCars();
                    ErrorMsg.InnerText = "Car Deleted";
                }
            }
            catch (Exception)
            {
                throw;
            }
        }
        
        protected void CarList_SelectedIndexChanged(object sender, EventArgs e)
        {
            LNumberTb.Value = CarList.SelectedRow.Cells[1].Text;
            BrandTb.Value = CarList.SelectedRow.Cells[2].Text;
            ModelTb.Value = CarList.SelectedRow.Cells[3].Text;
            PriceTb.Value = CarList.SelectedRow.Cells[4].Text;
            ColorTb.Value = CarList.SelectedRow.Cells[5].Text;
            AvailableCb.SelectedValue = CarList.SelectedRow.Cells[6].Text;
        }
    }
}