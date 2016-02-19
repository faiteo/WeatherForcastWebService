using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WeatherForcastWebService
{
    public partial class US_WeatherInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGetWeather_Click(object sender, EventArgs e)
        {
            US_WeatherService.WeatherSoapClient soapClient = new US_WeatherService.WeatherSoapClient("WeatherSoap");
            US_WeatherService.WeatherReturn weatherReturn = soapClient.GetCityWeatherByZIP(txtZip.Text);

            if (weatherReturn.Success)
            {
                lblCity.Text = weatherReturn.City;
                lblState.Text = weatherReturn.State;
                lblTemperature.Text = weatherReturn.Temperature + "°F";
                lblWind.Text = weatherReturn.Wind;
                lblWeatherStationCity.Text = weatherReturn.WeatherStationCity;
                lblPressure.Text = weatherReturn.Pressure;
                lblRelHumid.Text = weatherReturn.RelativeHumidity;
                lblError.Text = "";
                txtZip.Text = "";
                
            }
            else
            {
                lblError.Text = weatherReturn.ResponseText;
                lblCity.Text = "";
                lblState.Text = ""; 
                lblTemperature.Text = "";
                lblWind.Text = ""; 
                lblWeatherStationCity.Text = "";
                lblPressure.Text = "";
                lblRelHumid.Text = ""; 
                
            }

        }
    }
}
