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
    public partial class TrangThemKhuyenMai : System.Web.UI.Page
    {
        DataAccess dataAccess = new DataAccess();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userNCC"] == null)
            {
                Response.Redirect("DangKyDangNhapNCC.aspx");
            }
            //if (!IsPostBack)
            //{
            //    try
            //    {
            //        dataAccess.MoKetNoiCSDL();
            //        //int id = int.Parse(Session["id"].ToString());
            //        //SqlParameter[] p = {
            //        //new SqlParameter("@NHACUNGCAPID", SqlDbType.Int)
            //        //};
            //        //p[0].Value = id;
            //        //DataTable dt = dataAccess.TableFill("PROC_VIEW_KM_LOAISP", p);
            //        SqlParameter[] p = { };
            //        DataTable dt = dataAccess.TableFill("PROC_VIEW_LOAISP", p);
            //        if (dt != null && dt.Rows.Count > 0)
            //        {
            //            this.ddKM.DataSource = dt;
            //            this.ddKM.DataTextField = "TENSANPHAM";
            //            this.ddKM.DataValueField = "LOAISPID";
            //            this.ddKM.DataBind();
            //        }
            //    }
            //    catch
            //    {

            //    }
            //}
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            dataAccess.MoKetNoiCSDL();
            String tenNCC = Request.QueryString.Get("userNCC");
            
            int id = int.Parse(Session["id"].ToString());
            SqlParameter[] p = {
                 new SqlParameter("@NHACUNGCAPID", SqlDbType.Int)
            };
            p[0].Value = id;           
            SqlCommand cmd = new SqlCommand("PROC_INSERT_KM", dataAccess.getConnection());
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@TENKM", txtTenKM.Text);
            cmd.Parameters.AddWithValue("@NGAYBD", Convert.ToDateTime(txtNgayBD.Text));
            cmd.Parameters.AddWithValue("@NGAYKT", Convert.ToDateTime(txtNgayKT.Text));
            cmd.Parameters.AddWithValue("@NHACUNGCAPID", id);
            cmd.Parameters.AddWithValue("@TYLEKM", int.Parse(txttl.Text));
            cmd.Parameters.AddWithValue("@LOAISPID", int.Parse(txttl.Text));
            cmd.Parameters.AddWithValue("@TRANGTHAI", 1);
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                Response.Redirect("QuanLyKhuyenMai.aspx");

            }
            else
            {
                Label1.Text = "Khuyến Mãi Tồn Tại";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("QuanLyKhuyenMai.aspx");
        }
    }
}