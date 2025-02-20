﻿using SRVTextToImage;
using System;
using System.Drawing;
using System.Drawing.Imaging;


namespace ETech.WebApp.NCC
{
    public partial class CaptchaImage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CaptchaRandomImage CI = new CaptchaRandomImage();
            string captchaText = CI.GetRandomString(4);

            Session["CaptchaText"] = captchaText;
            CI.GenerateImage(captchaText, 90, 70, Color.Blue, Color.White);

            this.Response.Clear();
            this.Response.ContentType = "img/jpeg";
            CI.Image.Save(this.Response.OutputStream, ImageFormat.Jpeg);
            CI.Dispose();
        }
    }
}