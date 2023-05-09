using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace CarRantalMGT.View.Admin
{
    public partial class Customers : System.Web.UI.Page
    {
        Models.Functions Conn;

        protected void Page_Load(object sender, EventArgs e)
        {
            Conn = new Models.Functions();
            ShowCustomers();
        }
        private void ShowCustomers()
        {
            string Query = "select * from CustomerTbl";
            CustomerList.DataSource = Conn.GetData(Query);
            CustomerList.DataBind();
        }
        
        protected void Addbtn_Click1(object sender, EventArgs e)
        {
            try
            {
                if (CustNameTb.Value == "" || AddTb.Value == "" || PhoneTb.Value == "" || PassTb.Value == "")
                {
                    ErrorMsg.InnerText = "Missing Information";
                }
                else
                {
                    string CustName = CustNameTb.Value;
                    string CustAdd = AddTb.Value;
                    string CustPhone = PhoneTb.Value;
                   
                    string CustPass = PassTb.Value;

                    string Query = "insert into CustomerTbl values('{0}','{1}',{2},'{3}')";
                    Query = String.Format(Query, CustName, CustAdd, CustPhone, CustPass);
                    Conn.SetData(Query);
                    ErrorMsg.InnerText = "Customer Added";
                    ShowCustomers();
                }
            }
            catch (Exception)
            {
                throw;
            }
        }

        protected void Editbtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (CustNameTb.Value == "" || AddTb.Value == "" || PhoneTb.Value == "" || PassTb.Value == "")
                {
                    ErrorMsg.InnerText = "Missing Information";
                }
                else
                {
                    string CustName = CustNameTb.Value;
                    string CustAdd = AddTb.Value;
                    string CustPhone = PhoneTb.Value;
                    //int Price = Convert.ToInt32(PriceTb.Value.ToString());
                    string CustPass = PassTb.Value;

                    string Query = "update CustomerTbl set CustName='{0}',CustAdd='{1}',CustPhone='{2}',CustPassword='{3}' where CustId='{4}' ";
                    Query = String.Format(Query, CustName, CustAdd, CustPhone, CustPass, Convert.ToInt32(CustomerList.SelectedRow.Cells[1].Text));
                    Conn.SetData(Query);
                    ErrorMsg.InnerText = "Customer Updated";
                    ShowCustomers();
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
                if (CustNameTb.Value == "")
                {
                    ErrorMsg.InnerText = "Missing Information";
                }
                else
                {
                    

                    string Query = "delete from CustomerTbl where CustId='{0}' ";
                    Query = String.Format(Query, Convert.ToInt32(CustomerList.SelectedRow.Cells[1].Text));
                    Conn.SetData(Query);
                    
                    ErrorMsg.InnerText = "Customer Deleted";
                    ShowCustomers();
                }
            }
            catch (Exception)
            {
                throw;
            }

        }
        int key = 0;
        protected void CustomerList_SelectedIndexChanged(object sender, EventArgs e)
        {
            CustNameTb.Value = CustomerList.SelectedRow.Cells[2].Text;
            AddTb.Value = CustomerList.SelectedRow.Cells[3].Text;
            PhoneTb.Value = CustomerList.SelectedRow.Cells[4].Text;
            PassTb.Value = CustomerList.SelectedRow.Cells[5].Text;
            if(CustNameTb.Value=="")
            {
                key = 0;
            }
            else
            {
                key = Convert.ToInt32(CustomerList.SelectedRow.Cells[1].Text);
            }
            
        }
    }
}