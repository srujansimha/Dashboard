﻿using BTPOSDashboardAPI.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace BTPOSDashboard.Controllers
{
    public class InventoryItemController : ApiController
    {

        public DataTable GetInventoryItem()
        {
            DataTable Tbl = new DataTable();


            //connect to database
            SqlConnection conn = new SqlConnection();
            //connetionString="Data Source=ServerName;Initial Catalog=DatabaseName;User ID=UserName;Password=Password"
            conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["btposdb"].ToString();

            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "GetInventoryItem";
            cmd.Connection = conn;
            DataSet ds = new DataSet();
            SqlDataAdapter db = new SqlDataAdapter(cmd);
            db.Fill(ds);
            Tbl = ds.Tables[0];

            // int found = 0;
            return Tbl;
        }
        [HttpPost]
        public DataTable SaveinventoryItem(InventoryItem b)
        {
            DataTable Tbl = new DataTable();


            //connect to database
            SqlConnection conn = new SqlConnection();
            //connetionString="Data Source=ServerName;Initial Catalog=DatabaseName;User ID=UserName;Password=Password"
            conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["btposdb"].ToString();

            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "InsupdDelInventoryItem";
            cmd.Connection = conn;
            conn.Open();
            SqlParameter Cid = new SqlParameter();
            Cid.ParameterName = "@Id";
            Cid.SqlDbType = SqlDbType.Int;
            Cid.Value = Convert.ToInt32(b.Id);
            cmd.Parameters.Add(Cid);

            SqlParameter Gid = new SqlParameter();
            Gid.ParameterName = "@ItemName";
            Gid.SqlDbType = SqlDbType.VarChar;
            Gid.Value = b.ItemName;
            cmd.Parameters.Add(Gid);

            SqlParameter lid = new SqlParameter();
            lid.ParameterName = "@Code";
            lid.SqlDbType = SqlDbType.VarChar;
            lid.Value = b.Code;
            cmd.Parameters.Add(lid);

            SqlParameter pDesc = new SqlParameter();
            pDesc.ParameterName = "@Description";
            pDesc.SqlDbType = SqlDbType.VarChar;
            pDesc.Value = b.Description;
            cmd.Parameters.Add(pDesc);

            SqlParameter lAct = new SqlParameter();
            lAct.ParameterName = "@Category";
            lAct.SqlDbType = SqlDbType.VarChar;
            lAct.Value = b.Category;
            //llid.Value = b.Active;
            cmd.Parameters.Add(lAct);
            SqlParameter psub = new SqlParameter();
            psub.ParameterName = "@SubCategory";
            psub.SqlDbType = SqlDbType.VarChar;
            psub.Value = b.SubCategory;
            cmd.Parameters.Add(psub);

            SqlParameter prop = new SqlParameter();
            prop.ParameterName = "@ReOrderPoint";
            prop.SqlDbType = SqlDbType.VarChar;
            prop.Value = Convert.ToInt32(b.ReOrderPoint);
            cmd.Parameters.Add(prop);

            cmd.ExecuteScalar();
            conn.Close();
            // int found = 0;
            return Tbl;
        }
        public void Options() { }
    }
}