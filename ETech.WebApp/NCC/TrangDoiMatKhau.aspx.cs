using ETech.WebApp.AppCode;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ETech.WebApp.NCC
{
    public partial class TrangDoiMatKhau : System.Web.UI.Page
    {
        DataAccess dataAccess = new DataAccess();
        protected void Page_Load(object sender, EventArgs e)
        {
            StringBuilder table = new StringBuilder();
            string TenNCC = Request.QueryString.Get("userNCC");
            if (Session["userNCC"] == null)
            {
                Response.Redirect("DangKyDangNhapNCC.aspx");
            }
            if (!IsPostBack)
            {
                string sqlNCC = "Select * from NHACUNGCAP where TENNHACUNGCAP= '" + TenNCC +"'";
                dataAccess.MoKetNoiCSDL();
                DataTable dtNCC = dataAccess.LayBangDuLieu(sqlNCC);
                if (dtNCC != null && dtNCC.Rows.Count > 0)
                {
                    lbid.Text = dtNCC.Rows[0]["TENNHACUNGCAP"].ToString();
                }
            }
        }
        protected void btnLogin1_Click(object sender, EventArgs e)
        {
           
        }
    }
}