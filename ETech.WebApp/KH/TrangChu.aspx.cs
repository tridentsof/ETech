using ETech.WebApp.AppCode;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ETech.WebApp.KH
{
    public partial class TrangChu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataAccess dataAccess = new DataAccess();
            dataAccess.MoKetNoiCSDL();

            string sql = "select SANPHAMID,HINHANH,TENSANPHAM,DONGIA,(DONGIA *1.2) as DONGIA2,(DONGIA * 0.2) as DONGIA3 from SANPHAM";

            DataTable dt = dataAccess.LayBangDuLieu(sql);

            if (dt != null && dt.Rows.Count > 0)
            {
                this.repeaterItem.DataSource = dt;
                this.repeaterItem.DataBind();

            }

            dataAccess.DongKetNoiCSDL();
        }
    }
}