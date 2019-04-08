using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace WorshipSet
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LogInUser(object sender, EventArgs e)
        {
            //Load users
            var path = Server.MapPath(@ConfigurationManager.AppSettings["UserData"]);
            XmlDocument userDoc = new XmlDocument();
            userDoc.Load(path);
            XmlNodeList userNode = userDoc.SelectNodes("/WorshipSetUsers/User");


            //Authorize
            bool isValid = false;
            foreach(XmlNode n in userNode)
            {
                if (n.ChildNodes[0].InnerText.Equals(userText.Text) && n.ChildNodes[1].InnerText.Equals(passText.Text)) {
                    isValid = true;
                }
            }

            if (isValid)
            {
                Response.Redirect("~/Home.aspx");
            }
        }
    }
}