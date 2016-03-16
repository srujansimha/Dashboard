﻿using POSDBAccess.Models;
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
    public class RegistrationBTPOSController : ApiController
    {
         public DataTable saveRegistrationBTPOS(RegistrationBTPOS n)
        {
            DataTable Tbl = new DataTable();

            try
            {
                //connect to database
                SqlConnection conn = new SqlConnection();
                // connetionString = "Data Source=ServerName;Initial Catalog=DatabaseName;User ID=UserName;Password=Password";
                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["btposdb"].ToString();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "InsUpdDelRegistrationBTPOS";
                cmd.Connection = conn;

                conn.Open();

                SqlParameter gsa = new SqlParameter();
                gsa.ParameterName = "@Active";
                gsa.SqlDbType = SqlDbType.Int;
                gsa.Value = Convert.ToBoolean(n.Active) ? "0" : "1";
                cmd.Parameters.Add(gsa);

                SqlParameter ga = new SqlParameter();
                ga.ParameterName = "@code";
                ga.SqlDbType = SqlDbType.VarChar;
                ga.Value = n.code;
                cmd.Parameters.Add(ga);

                SqlParameter gb = new SqlParameter();
                gb.ParameterName = "@uniqueId";
                gb.SqlDbType = SqlDbType.VarChar;
                gb.Value = n.uniqueId;
                cmd.Parameters.Add(gb);

                 SqlParameter gc = new SqlParameter();
                gc.ParameterName = "@ipconfig";
                gc.SqlDbType = SqlDbType.VarChar;
                gc.Value = n.ipconfig;
                cmd.Parameters.Add(gc);

                 SqlParameter gd = new SqlParameter();
                gd.ParameterName = "@RegeneratedNo";
                gd.SqlDbType = SqlDbType.VarChar;
                gd.Value = n.RegeneratedNo;
                cmd.Parameters.Add(gd);

                cmd.ExecuteScalar();
                conn.Close();
                DataSet ds = new DataSet();
                //SqlDataAdapter db = new SqlDataAdapter(cmd);
                //db.Fill(ds);
                //Tbl = ds.Tables[0];
            }
            catch (Exception ex)
            {
                string str = ex.Message;
            }
            // int found = 0;
            return Tbl;

        }
        public void Options()
        {
        }
       
    }
    }
