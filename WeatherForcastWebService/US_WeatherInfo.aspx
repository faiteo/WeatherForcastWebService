<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="US_WeatherInfo.aspx.cs" Inherits="WeatherForcastWebService.US_WeatherInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

    <form id="form1" runat="server">

 <p style ="color:green;">Please be aware that this webservice only works for zipcodes in the US. (EX: 90210, 52801, 02101 , 10001, ...  )</p>
  

<table style="font-family:Arial; border:1px solid black">
       
    <tr>
        <td>
      
            <b>Enter Zip Code </b>
        </td>
        <td>
            <asp:TextBox ID="txtZip" runat="server"></asp:TextBox>
            <asp:Button ID="btnGetWeather" runat="server" Text="Get Weather Info" 
                onclick="btnGetWeather_Click"/>
        </td>
    </tr>
    <tr>
        <td>
            <b>City :</b>
        </td>
        <td>
            <asp:Label ID="lblCity" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <b>State :</b>
        </td>
        <td>
            <asp:Label ID="lblState" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <b>WeatherStationCity :</b>
        </td>
        <td>
            <asp:Label ID="lblWeatherStationCity" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <b>Temperature :</b>
        </td>
        <td>
            <asp:Label ID="lblTemperature" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <b>Wind :</b>
        </td>
        <td>
            <asp:Label ID="lblWind" runat="server"></asp:Label>
        </td>
    </tr>



        <tr>
        <td>
            <b>Pressure :</b>
        </td>
        <td>
            <asp:Label ID="lblPressure" runat="server"></asp:Label>
        </td>
    </tr>
        <tr>
        <td>
            <b>Relative Humidity :</b>
        </td>
        <td>
            <asp:Label ID="lblRelHumid" runat="server"></asp:Label>
        </td>
    </tr>


    <tr>
        <td colspan="2">
            <asp:Label ID="lblError" runat="server" Font-Bold="true" ForeColor="Red"></asp:Label>
        </td>
    </tr>
</table>
    </form>
</body>
</html>
