<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contacts.aspx.cs" Inherits="contacts" MasterPageFile="~/MasterPage.master"%>

<asp:Content ID="contacts" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    
    <div id="contact">
       

      <div id="form">
           <table>
            <caption>Contact Us</caption>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>

            <tr>
                <td>Name:</td>
                <td>
                    <asp:TextBox ID="txtname" runat="server" Width="272px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>

            <tr>
                <td>Email:</td>
                <td>
                    <asp:TextBox ID="txtemail" runat="server" Width="276px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>

            <tr>
                <td>Message:</td>
                <td>
                    <asp:TextBox ID="txtaddress" runat="server" Height="104px" TextMode="MultiLine" Width="332px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnsend" runat="server" Text="Send" OnClick="btnsend_Click" />
                    <input id="Reset1" type="reset" value="reset" /></td>
            </tr>

        </table>
           <a href="default.aspx">back</a> to home
      </div>
       <div id="map">

</div>
          
    </div>

</asp:Content>