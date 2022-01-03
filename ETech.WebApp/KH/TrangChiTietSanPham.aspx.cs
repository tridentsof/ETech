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
    public partial class TrangChiTietSanPham : System.Web.UI.Page
    {
        DataAccess dataAccess = new DataAccess();
        protected void Page_Load(object sender, EventArgs e)
        {
            string idSP = Request.QueryString.Get("idSP");
            if (!IsPostBack)
            {
                HttpContext.Current.Response.Cache.SetCacheability(HttpCacheability.NoCache);
                HttpContext.Current.Response.Cache.SetNoServerCaching();
                HttpContext.Current.Response.Cache.SetNoStore();
                dataAccess.MoKetNoiCSDL();
                SqlCommand cmd = new SqlCommand("PROC_VIEW_PRODUCT_DETAIL", dataAccess.getConnection());
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@IDSP",idSP);
                SqlDataReader dr = cmd.ExecuteReader();
                while(dr.Read())
                {
                    lblTenSP.Text = dr.GetValue(1).ToString();
                    lblprice1.Text = String.Format("{0:N0}", dr.GetValue(2)) + "VND";
                    lblprice2.Text = String.Format("{0:N0}", dr.GetValue(2)) + "VND";
                    lblNCC.Text = dr.GetValue(3).ToString();
                    lblCT.Text = dr.GetValue(4).ToString();
                    lblSL.Text = dr.GetValue(5).ToString();
                }
                DataTable cart = new DataTable();
                if (Session["cart"] == null)
                {
                    //Nếu chưa có giỏ hàng, tạo giỏ hàng thông qua DataTable với 4 cột chính
                    cart.Columns.Add("ID");
                    cart.Columns.Add("HINH");
                    cart.Columns.Add("TENSP");
                    cart.Columns.Add("DONGIA");
                    cart.Columns.Add("SOLUONG");

                    //Sau khi tạo xong thì lưu lại vào session
                    Session["cart"] = cart;
                }
                else
                {
                    //Lấy thông tin giỏ hàng từ Session["cart"]
                    cart = Session["cart"] as DataTable;
                }

            }
        }

        protected void btnBuy_Click(object sender, EventArgs e)
        {
            string idSP = Request.QueryString.Get("idSP");
            dataAccess.MoKetNoiCSDL();
            int soLuongConLai = int.Parse(lblSL.Text);
            if (int.Parse(txtSL.Text) > soLuongConLai)
            {
                Response.Write($"<script>alert(\"Bạn chỉ được phép đặt {soLuongConLai} sản phẩm\")</script>");
            }
            else
            {
                Response.Redirect("ThemGioHangThanhCong.aspx?action=add&idSP=" + idSP + "&sl=" + txtSL.Text);
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("TrangChu.aspx");
        }
    }
}