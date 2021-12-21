using ETech.WebApp.AppCode;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ETech.WebApp.NCC
{
    public partial class MailActive : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            DataAccess dataAccess = new DataAccess();
            dataAccess.MoKetNoiCSDL();
            SqlCommand cmd = new SqlCommand("GET_EMAIL", dataAccess.getConnection());
            cmd.Parameters.AddWithValue("@EMAIL", Request.QueryString["emailadd"]);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            cmd.ExecuteNonQuery();
            dataAccess.DongKetNoiCSDL();

            //Lay ten nguoi dung
            //String sqlTen = "SELECT TENDANGNHAP FROM TAIKHOAN WHERE TENDANGNHAP=" + ;

            if (ds.Tables[0].Rows.Count > 0)
            {
                String activationcode;
                activationcode = ds.Tables[0].Rows[0]["1"].ToString();
                if (activationcode == TextBox1.Text)
                {
                    changestatus();
                    Response.Redirect("MailActiveDone.aspx");
                }
                else
                {
                    Label2.Text = "Sai mã xác nhận";
                }
            }

        }
        private void changestatus()
        {
            //Lam lai ham changestatus
            DataAccess dataAccess = new DataAccess();
            dataAccess.MoKetNoiCSDL();
            SqlCommand cmd = new SqlCommand("Change_Status", dataAccess.getConnection());
            cmd.Parameters.AddWithValue("@EMAIL", Request.QueryString["emailadd"]);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.ExecuteNonQuery();
            dataAccess.DongKetNoiCSDL();
        }
    }
}