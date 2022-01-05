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
    public partial class TrangChu : System.Web.UI.Page
    {
        DataAccess dataAccess = new DataAccess();
        protected void Page_Load(object sender, EventArgs e)
        {
            //Đổ sản phẩm vào trang chủ

            SqlParameter[] p = { };
            DataTable tbAllSP = dataAccess.ExecuteQuery("PROC_GET_SP_KM", p);

            if (tbAllSP != null && tbAllSP.Rows.Count > 0)
            {
                this.repeaterItem.DataSource = tbAllSP;
                this.repeaterItem.DataBind();

            }

            //Đổ sản phẩm bán chạy
            SqlParameter[] p2 = { };

            DataTable tbBanChay = dataAccess.ExecuteQuery("PROC_GET_SP_BANCHAY", p2);
        }
    }
}