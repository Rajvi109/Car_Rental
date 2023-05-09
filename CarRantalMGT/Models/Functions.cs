﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace CarRantalMGT.Models
{
    public class Functions
    {
        private SqlConnection Conn;
        private SqlCommand cmd;
        private DataTable dt;
        private string ConnStr;
        private SqlDataAdapter sda;


        public Functions()
        {
            ConnStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\project\CarRantalMGT\CarRantalMGT\App_Data\CarRentalSYS.mdf;Integrated Security=True";
            Conn = new SqlConnection(ConnStr);
            cmd = new SqlCommand();
            cmd.Connection = Conn;

        }
        public DataTable GetData(string Query)
        {
            dt = new DataTable();
            sda = new SqlDataAdapter(Query,ConnStr);
            sda.Fill(dt);
            return dt;
        }
        public int SetData(string Query)
        {
            int rcnt = 0;
            if(Conn.State==ConnectionState.Closed)
            {
                Conn.Open();

            }
            cmd.CommandText = Query;
            rcnt = cmd.ExecuteNonQuery();
            Conn.Close();
            return rcnt;
        }
    }
}