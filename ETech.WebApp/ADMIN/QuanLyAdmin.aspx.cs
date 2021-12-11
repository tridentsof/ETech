﻿using ETech.WebApp.AppCode;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ETech.WebApp.ADMIN
{
    public partial class QuanLyAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userKH"] == null)
            {
                Response.Redirect("DangNhap.aspx");
            }

            StringBuilder table = new StringBuilder();

            DataAccess dataAccess = new DataAccess();
            dataAccess.MoKetNoiCSDL();

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select TAIKHOANID, TENDANGNHAP, MATKHAU, HOTEN, EMAIL, DIACHI, SDT, 'QuanLyAdminChiTiet.aspx?id=' + CAST(TAIKHOANID AS NVARCHAR) AS CAPNHAT from [TAIKHOAN] where LOAITKID=1";
            cmd.Connection = dataAccess.getConnection();
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.HasRows)
            {
                while (rd.Read())
                {
                    table.Append("<tr class=\"table-tr\">");
                    table.Append("<td class=\"table-td table-item\">" + rd[0] + "</td>");
                    table.Append("<td class=\"table-td table-item\">" + rd[1] + "</td>");
                    table.Append("<td class=\"table-td table-item\">" + rd[2] + "</td>");
                    table.Append("<td class=\"table-td table-item\">" + rd[3] + "</td>");
                    table.Append("<td class=\"table-td table-item\">" + rd[4] + "</td>");
                    table.Append("<td class=\"table-td table-item\">" + rd[5] + "</td>");
                    table.Append("<td class=\"table-td table-item\">" + rd[6] + "</td>");
                    //table.Append("<td class=\"table-td table-item\"><a href=\"/ADMIN/" + dr[7] + "\" class=\"qltk-btnChiTiet\">Xem Chi Tiết</a> </td>");
                    table.Append("<td class=\"table-td table-item\"><a href=\"/ADMIN/" + rd[7] + "\" class=\"qltk-btnCapNhat\">Xem Chi Tiết</a> </td>");
                    table.Append("</tr>");
                }
                table.Append("</table>");
                PlaceHolder2.Controls.Add(new Literal { Text = table.ToString() });
                rd.Close();
            }
        }
    }
}
