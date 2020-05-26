<%@ Page Title="" Language="C#" MasterPageFile="~/weapons/weapons.master" %>
<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["login"] == null)
        {
            Response.Write("LOGIN");
        }
        else
        {
            Response.Write(Session["Connected"]);
        }
        if (Request.Form["login"] != null)
        {
            string email = Request.Form["email"];
            string conStr = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True";
            string cmdStr = string.Format("SELECT id, firstName, lastName, email, phone, username, password FROM userstable WHERE (email = '{0}')", email);
            SqlConnection conObj = new SqlConnection(conStr);
            SqlCommand cmdObj = new SqlCommand(cmdStr, conObj);
            conObj.Open();
            SqlDataReader dr = cmdObj.ExecuteReader();
            dr.Read();
            if (dr.HasRows)
            {
                if (Request.Form["password"] == dr.GetString(6))
                {
                    Session["username"] = dr.GetString(5);
                    Session["email"] = dr.GetString(3);
                    Session["fname"] = dr.GetString(1);
                    Session["lname"] = dr.GetString(2);
                    Session["phone"] = dr.GetString(4);
                    Response.Redirect("redirect.aspx");
                }
                else
                {
                    Response.Write("stupido");
                }
            }
                conObj.Close();
        }
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="ls-slide" data-ls="transition2d:1;timeshift:-1000;">
                                <img src="images/slider/TheRedWar.jpg" class="ls-bg" alt="Slide background"/></div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="title" Runat="Server">
login
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="zzz" Runat="Server">
<form action="" method="post">
  Email:<br/>
  <input type="text" name="email" id="Email" /><br/>

  Password:<br/>
  <input type="password" name="password" id="password" /><br/>
  <input type="submit" value="Login" name="login" style="padding-top:5px"/>
  </form>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="zzzz" Runat="Server">
</asp:Content>

