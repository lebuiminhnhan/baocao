using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLiThueXe.AdminSite
{
    public partial class Hopdong : System.Web.UI.Page
    {
        ServiceReference1.QLTXMSoapClient sv = new ServiceReference1.QLTXMSoapClient();
        public void load()
        {
            GridView1.DataSource = sv.DanhSachThue();
            GridView1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            load();
        }

        protected void btnnhap_Click(object sender, EventArgs e)
        {
            sv.ThemHopDongThue(int.Parse(DropXe.SelectedValue), int.Parse(dropkhachhang.SelectedValue), int.Parse(Dropnhanvien.SelectedValue), DateTime.Parse(txtngaythue.Text), DateTime.Parse(txtngaytra.Text));
            Response.Write("<script>alert('Thêm thành công !')</script>");
            load();
        }

        //protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if(e.CommandName.Equals("Select"))
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);
        //        string code = GridView1.DataKeys[index].Value.ToString();
        //        System.Text.StringBuilder sb = new System.Text.StringBuilder();
        //        sb.Append(@"<script >");
        //        sb.Append("$'#largeModal'.modal('show');");
        //        sb.Append(@"</script >");
        //        ScriptManager.RegisterClientScriptBlock(this, this.GetType(),"ModelScript", sb.ToString(), false);
        //    }
        //}
    }
}