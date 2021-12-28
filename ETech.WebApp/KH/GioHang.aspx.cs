using ETech.WebApp.AppCode;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Web;
using System.Web.UI.WebControls;

namespace ETech.WebApp.KH
{
    public partial class GioHang : System.Web.UI.Page
    {
        DataAccess dataAccess = new DataAccess();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                HttpContext.Current.Response.Cache.SetCacheability(HttpCacheability.NoCache);
                HttpContext.Current.Response.Cache.SetNoServerCaching();
                HttpContext.Current.Response.Cache.SetNoStore();

                if(Session["cart"] != null)
                {
                    //Code ẩn nút Login 
                    //...

                    DataTable cart = Session["cart"] as DataTable;

                    //Hiển thị dữ liệu khách hàng
                    if(Session["userKH"] != null)
                    {
                        //Code hiển thị nút mua hàng khi khách hàng đã đăng nhập
                        //...

                        String usernameKH = Session["userKH"].ToString();

                        SqlParameter[] p =
                        {
                            new SqlParameter("@USERNAME",SqlDbType.NChar)
                        };
                        p[0].Value = usernameKH;

                        DataTable dt = dataAccess.TableFill("PROC_GETINFO_KH_BYUSERNAME", p);

                        if(dt != null && dt.Rows.Count > 0)
                        {
                            txtTen.Text = dt.Rows[0]["HOTEN"].ToString();
                            txtDiaChi.Text = dt.Rows[0]["DIACHI"].ToString();
                            txtSDT.Text = dt.Rows[0]["SDT"].ToString();
                            txtEmail.Text = dt.Rows[0]["EMAIL"].ToString();
                        }
                    }

                    //Tính tiền khách hàng khi chưa đăng nhập
                    if(cart != null && cart.Rows.Count > 0)
                    {
                        this.rptSPham.DataSource = cart;
                        this.rptSPham.DataBind();

                        int tongTien = 0,tongTienTatCaSP = 0;

                        StringBuilder sb = new StringBuilder();

                        foreach(DataRow dr in cart.Rows)
                        {
                            //Số lượng sản phẩm đã dặt
                            foreach (RepeaterItem item in rptSPham.Items)
                            {
                                TextBox txtSoLuong = (TextBox)item.FindControl("txtSoLuong");
                                Label lbTongTien = (Label)item.FindControl("lbTongTien");
                                if (!String.IsNullOrEmpty(txtSoLuong.Text))
                                {
                                    break;
                                }
                                else
                                {
                                    txtSoLuong.Text = dr["SOLUONG"].ToString();
                                }

                                //Tính tổng tiền từng sản phẩm
                                tongTien += (int.Parse(dr["DONGIA"].ToString()) * int.Parse(dr["SOLUONG"].ToString()));
                                lbTongTien.Text = String.Format("{0:n0}", int.Parse(tongTien.ToString()));
                            }

                            //Tính tổng tiền tất cả đơn hàng             
                            tongTienTatCaSP = tongTien + tongTienTatCaSP;
                            lbTongTatCaSP.Text = String.Format("{0:n0}", int.Parse(tongTienTatCaSP.ToString()));

                        }
                    }
                    //Tính tiền khi đã đăng nhập
                    else
                    {
                        if(cart != null && cart.Rows.Count > 0)
                        {
                            this.rptSPham.DataSource = cart;
                            this.rptSPham.DataBind();

                            int tongTien = 0, tongTienTatCaSP = 0;

                            foreach (DataRow dr in cart.Rows)
                            {
                                //Số lượng sản phẩm đã dặt
                                foreach (RepeaterItem item in rptSPham.Items)
                                {
                                    TextBox txtSoLuong = (TextBox)item.FindControl("txtSoLuong");
                                    Label lbTongTien = (Label)item.FindControl("lbTongTien");
                                    if (!String.IsNullOrEmpty(txtSoLuong.Text))
                                    {
                                        continue;
                                    }
                                    else
                                    {
                                        txtSoLuong.Text = dr["SOLUONG"].ToString();
                                        break;
                                    }

                                    //Tính tổng tiền từng sản phẩm
                                    tongTien += (int.Parse(dr["DONGIA"].ToString()) * int.Parse(dr["SOLUONG"].ToString()));
                                    lbTongTien.Text = String.Format("{0:n0}", int.Parse(tongTien.ToString()));
                                }

                                //Tính tổng tiền tất cả đơn hàng             
                                tongTienTatCaSP = tongTien + tongTienTatCaSP;
                                lbTongTatCaSP.Text = String.Format("{0:n0}", int.Parse(tongTienTatCaSP.ToString()));

                            }
                        }
                    }
                }

                //Nếu không có sản phẩm trong giỏ hàng
                else
                {
                    //Code ẩn table và show một div thông báo "Mời bạn thêm sản phẩm"
                    //...
                }
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {

        }

        protected void btnContinues_Click(object sender, EventArgs e)
        {
            Response.Redirect("TrangChu.aspx");
        }

        protected void btnThanhToan_Click(object sender, EventArgs e)
        {
            if(Session["userKH"] != null)
            {
                //Lấy thông tin khách hàng
                string userKH = Session["userKH"].ToString();

                SqlParameter[] p =
                {
                    new SqlParameter("@USERKH",SqlDbType.NVarChar)
                };

                p[0].Value = userKH;
                
                DataTable dtKH = dataAccess.TableFill("PROC_GETKHBYUSERNAME",p);

                //Insert vào đơn hàng
                SqlParameter[] p2 =
                {
                    new SqlParameter("@TAIKHOANID",SqlDbType.Int),
                    new SqlParameter("@DIACHI",SqlDbType.NVarChar),
                    new SqlParameter("@SDT",SqlDbType.NVarChar),
                    new SqlParameter("@EMAIL",SqlDbType.NVarChar)
                };
                p2[0].Value = int.Parse(dtKH.Rows[0]["TAIKHOANID"].ToString());
                p2[1].Value = txtDiaChi.Text;
                p2[2].Value = txtSDT.Text;
                p2[3].Value = txtEmail.Text;

                dataAccess.ExecuteNonQuery("PROC_INSERTDONHANG", p2);

                if(Session["cart"] != null)
                {
                    DataTable cart = Session["cart"] as DataTable;

                    if(cart != null && cart.Rows.Count > 0)
                    {
                        foreach (DataRow dr in cart.Rows)
                        {
                            SqlParameter[] p3 =
                            {
                                new SqlParameter("@SANPHAMID",dr["ID"]),
                                new SqlParameter("@SOLUONG",dr["SOLUONG"]),
                                new SqlParameter("@DONGIA",dr["DONGIA"])
                            };

                            dataAccess.ExecuteNonQuery("PROC_INSERT_CHITIETDONHANG_THEODH", p3);
                        }
                    }
                }

                Session.Remove("cart");
                Response.Redirect("DonHang.aspx");
            }
        }
    }
}