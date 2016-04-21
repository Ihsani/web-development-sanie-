using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail; //import this package to enable SMTP package

public partial class contacts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsend_Click(object sender, EventArgs e)
    {
        send_message();
    }



    protected void send_message()
    {


        try
        {
            //create instance of smtp data type named sendmail
            System.Net.Mail.SmtpClient sendmail = new SmtpClient();
            sendmail.Host = "smtp.gmail.com"; //gmail smtp
            sendmail.Port = 587;  //smtp port for gmail
            sendmail.EnableSsl = true; //enable secure socket layer


            //create instance of networkcredential named userpass
            System.Net.NetworkCredential userpass = new System.Net.NetworkCredential();
            userpass.UserName = "jump4joy2016@gmail.com"; //username for mail account
            userpass.Password = "jump4joy"; //password for mail account

            sendmail.Credentials = userpass;
            //set smtp credentials to userpass variable

            //create mailmessage instance msg
            MailMessage msg = new MailMessage(txtemail.Text, "jump4joy2016@gmail.com");

            //set the subject from asp control txtname
            msg.Subject = "Comments from " + txtname.Text;
            //set the content of the email
            msg.Body = "from :" + txtemail.Text + "\n \n \n";
            //set the message of the email
            msg.Body += txtaddress.Text;

            //send the email
            sendmail.Send(msg);
            //display a javascript message
            Response.Write("<script>alert ('message sent')</script>");

            //clear the textboxes
            txtemail.Text = "";
            txtname.Text = "";
            txtaddress.Text = "";

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message); //catch the exception errors
        }

    }

}