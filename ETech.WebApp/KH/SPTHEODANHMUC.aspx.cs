using ETech.WebApp.AppCode;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ETech.WebApp.KH
{
    public partial class SPTHEODANHMUC : System.Web.UI.Page
    {
        DataAccess dataAccess = new DataAccess();
        protected void Page_Load(object sender, EventArgs e)
        {
            int idDM = int.Parse(Request.QueryString.Get("idDM"));
            dataAccess.MoKetNoiCSDL();
            SqlParameter[] p =
            {
                new SqlParameter("@LOAISPID",SqlDbType.Int)
            };
            p[0].Value = idDM;
            DataTable dt = dataAccess.ExecuteQuery("PROC_VIEWSP_THEODANHMUC", p);
            if(dt != null && dt.Rows.Count > 0)
            {
                lblDM.Text = dt.Rows[0]["TENLOAI"].ToString();
                this.rptItem.DataSource = dt;
                this.rptItem.DataBind();

            }
            else
            {
                lblThongBao.Text = "SẢN PHẨM HIỆN KHÔNG CÓ";
                lblDM.Text = "Mời bạn xem các sản phẩm khác";
                dataAccess.MoKetNoiCSDL();
                SqlCommand cmd = new SqlCommand("SP", dataAccess.getConnection());
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt2 = new DataTable();
                da.Fill(dt2);
                if (dt2 != null && dt2.Rows.Count > 0)
                {
                    this.rptItem.DataSource = dt2;
                    this.rptItem.DataBind();

                }
            }
        }
    }
}