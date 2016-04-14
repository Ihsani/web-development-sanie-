<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contacts.aspx.cs" Inherits="contacts" MasterPageFile="~/MasterPage.master"%>

<asp:Content ID="contacts" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="http://maps.googleapis.com/maps/api/js"></script>
<script>
function initialize() {
  var mapProp = {
      center: new google.maps.LatLng(4.888149, 114.940267),
    zoom:15,
    mapTypeId:google.maps.MapTypeId.ROADMAP
  };
  var map = new google.maps.Map(document.getElementById("map"), mapProp);


  var marker = new google.maps.Marker({
      position: new google.maps.LatLng(4.888149, 114.940267)
  });

  marker.setMap(map);
  var message = "<strong>Address:</strong> Jln Pretty, Bandar Seri Begawan BS8711, Brunei Darussalam";
  message += "<br />";
  message += "<strong>Phone: </strong>8888888";
  message += "<br />";
  message += "<strong>Fax: </strong>7777777";

  var infowindow = new google.maps.InfoWindow({
     
      content:message
      
  });

  infowindow.open(map, marker);

  google.maps.event.addListener(marker, 'click', function () {
      map.setZoom(20);
      map.setCenter(marker.getPosition());
  });
}

google.maps.event.addDomListener(window, 'load', initialize);
</script>
    
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