using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ELibraryManagement
{
    public partial class userregister : System.Web.UI.Page
    {
        string strCon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Register_Click(object sender, EventArgs e)
        {
           if (check_Member_ID_Availability())
            {
                register_New_Member();
                Response.Write("<script>alert('Registration successful! You can now log in as a user.')</script>");
            } else
            {
                Response.Write("<script>alert('Username already taken. Choose a different one.')</script>");
            }
        }

        protected bool check_Member_ID_Availability()
        {
            try
            {
                SqlConnection con = new SqlConnection(strCon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT member_id FROM member_master_tbl WHERE member_id = '" + tbx_MemberID.Text.Trim() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return false;
                }
                else
                {
                    return true;
                }
            } catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "'')</script>");
                return false;
            }
           
        }

        protected void register_New_Member()
        {
            try
            {
                SqlConnection con = new SqlConnection(strCon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO member_master_tbl VALUES (@member_id, @full_name, @dob, @phone, @email, @state, @city, @zip_code, @full_address, @password, @account_status)", con);
                cmd.Parameters.AddWithValue("@full_name", tbx_FullName.Text.Trim());
                cmd.Parameters.AddWithValue("@dob", tbx_DateOfBirth.Text.Trim());
                cmd.Parameters.AddWithValue("@phone", tbx_Phone.Text.Trim());
                cmd.Parameters.AddWithValue("@email", tbx_Email.Text.Trim());
                cmd.Parameters.AddWithValue("@state", ddl_State.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@city", tbx_City.Text.Trim());
                cmd.Parameters.AddWithValue("@zip_code", tbx_ZIPCode.Text.Trim());
                cmd.Parameters.AddWithValue("@full_address", tbx_FullAddress.Text.Trim());
                cmd.Parameters.AddWithValue("@member_id", tbx_MemberID.Text.Trim());
                cmd.Parameters.AddWithValue("@password", tbx_Password.Text.Trim());
                cmd.Parameters.AddWithValue("@account_status", "Pending");

                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error: " + ex.Message + "')</script>");
            }
        }

    }
}