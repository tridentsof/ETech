using ETech.WebApp.AppCode;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ETech.WebApp.KH
{
    public partial class DonHang : System.Web.UI.Page
    {
        DataAccess dataAccess = new DataAccess();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if(Session["userKH"] != null)
                {
                    dhNotLogin.Style.Add("display", "none");

                    string userKH = Session["userKH"].ToString();

                    SqlParameter[] p =
                    {
                        new SqlParameter("@TENDANGNHAP",SqlDbType.NVarChar,50)
                    };
                    p[0].Value = userKH;

                    DataTable dtDH = dataAccess.TableFill("PROC_GETINFO_DONHANG_BYTENDANGNHAP", p);

                    StringBuilder table = new StringBuilder();

                    if(dtDH != null && dtDH.Rows.Count > 0)
                    {
                        foreach (DataRow dr in dtDH.Rows)
                        {
                            int status = int.Parse(dr["TRANGTHAI"].ToString());

                            
                            table.Append("<tr>");

                            table.Append("<td>" + dr["DONHANGID"] + "</td>");
                            table.Append("<td>" + dr["TENSANPHAM"] +"</td>");
                            table.Append("<td>" + dr["NGAY"] + "</td>");
                            table.Append("<td>" + dr["HIENTHI_TRANGTHAI"] +"</td>");
                            table.Append("<td>" + dr["TENNHACUNGCAP"] + "</td>");
                            table.Append("<td>" + dr["TONGSL"] + "</td>");
                            table.Append("<td>" + dr["TONGTIEN"] + "</td>");

                            if (status == 0)
                            {
                                table.Append("<td><i class=\"fas fa-times-circle x-icon\"></i></td>");
                            }
                            if (status == 1 || status == 2 || status == 3)
                            {
                                table.Append("<td class=\"td-btn-dh\"><a href=\"/KH/ChiTietDonHang.aspx?idDH=" + dr["ID_DONHANG"] + "><button class=\"btn-dh btn-dh-show\">Xem đơn hàng</button><button class=\"btn-dh btn-dh-detail\">Xóa</button></a> </td>");
                            }
                            table.Append("</tr>");
                        }
                    }
                }
            }
        }
    }
}