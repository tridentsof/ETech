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
            dataAccess.MoKetNoiCSDL();
            SqlParameter[] p =
            {
                new SqlParameter("@LOAISPID",SqlDbType.Int)
            };
            p[0].Value = 2;
            DataTable dt = dataAccess.ExecuteQuery("PROC_VIEWSP_THEODANHMUC", p);
            if(dt != null && dt.Rows.Count > 0)
            {
                this.rptItem.DataSource = dt;
                this.rptItem.DataBind();

            }
        }
    }
}