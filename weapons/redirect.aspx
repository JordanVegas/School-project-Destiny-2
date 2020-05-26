<%@ Page Language="C#" %>
<%@ Import Namespace="System.Threading" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write("redirecting...");
        Thread.Sleep(2000);
        Response.Redirect("../Default.aspx");
    }
</script>
