using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace CompleteCrudOperation
{
    public partial class crud : System.Web.UI.Page
    {
        string cn = ConfigurationManager.ConnectionStrings["crd"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                LoadRecord();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cn);
            con.Open();
            try
            {
                string s = "insert into StudentInfo_Tab values('" + int.Parse(TextBox1.Text) + "','" + TextBox2.Text + "','" + DropDownList1.SelectedValue + "','" + TextBox3.Text + "','" + TextBox4.Text + "')";
                SqlCommand cmd = new SqlCommand(s, con);

                cmd.ExecuteNonQuery();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Inserted');", true);
                LoadRecord();
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('Id Select Shuld be Required')</script>");
            }
        }

        void LoadRecord()
        {
            SqlConnection con = new SqlConnection(cn);
            con.Open();
            string sel = "select * from StudentInfo_Tab";
            SqlCommand cmd = new SqlCommand(sel, con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cn);
            con.Open();
            try
            {
                string s = "update StudentInfo_Tab set StudentName='" + TextBox2.Text + "', Address='" + DropDownList1.SelectedValue + "', Age='" + double.Parse(TextBox3.Text) + "',Contact='" + TextBox4.Text + "' where StudentID='" + int.Parse(TextBox1.Text) + "'";
                SqlCommand cmd = new SqlCommand(s, con);

                cmd.ExecuteNonQuery();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Updated');", true);
                LoadRecord();
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('Id Select Shuld be Required')</script>");
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cn);
            con.Open();
            try
            {
                string s = "delete StudentInfo_Tab where StudentID='" + int.Parse(TextBox1.Text) + "'";
                SqlCommand cmd = new SqlCommand(s, con);

                cmd.ExecuteNonQuery();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Delete');", true);
                LoadRecord();
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('Id Select Shuld be Required')</script>");
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cn);
            con.Open();
            try
            {
                string sel = "select * from StudentInfo_Tab where StudentID='" + int.Parse(TextBox1.Text) + "'";
                SqlCommand cmd = new SqlCommand(sel, con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('Id Select Shuld be Required')</script>");
            }
            finally
            {

            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cn);
            con.Open();
            try
            {
                string s = "select * from StudentInfo_Tab where StudentID='" + int.Parse(TextBox1.Text) + "'";
                SqlCommand cmd = new SqlCommand(s, con);
                SqlDataReader r = cmd.ExecuteReader();
                while (r.Read())
                {
                    TextBox2.Text = r.GetValue(1).ToString();
                    DropDownList1.SelectedValue = r.GetValue(2).ToString();
                    TextBox3.Text = r.GetValue(3).ToString();
                    TextBox4.Text = r.GetValue(4).ToString();
                }
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('Id Select Shuld be Required')</script>");
            }
        }
    }
}