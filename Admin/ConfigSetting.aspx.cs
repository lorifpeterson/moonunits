using System;
using System.Web.Configuration;
using System.IO;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Admin_ConfigSetting : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnProtect_Click(object sender, EventArgs e)
    {
        ProtectSection("connectionStrings", "DataProtectionConfigurationProvider");

    }
    protected void btnUnProtect_Click(object sender, EventArgs e)
    {
        UnProtectSection("connectionStrings");
    }

    private void ProtectSection(string sectionName, string provider)
    {
        Configuration config = WebConfigurationManager.OpenWebConfiguration(Request.ApplicationPath);
        ConfigurationSection section = config.GetSection(sectionName);

        if (section != null && !section.SectionInformation.IsProtected)
        {
            section.SectionInformation.ProtectSection(provider);
            config.Save();
        }
    }

    private void UnProtectSection(string sectionName)
    {
        Configuration config = WebConfigurationManager.OpenWebConfiguration(Request.ApplicationPath);
        ConfigurationSection section = config.GetSection(sectionName);

        if (section != null && section.SectionInformation.IsProtected)
        {
            section.SectionInformation.UnprotectSection();
            config.Save();
        }
    }
}
