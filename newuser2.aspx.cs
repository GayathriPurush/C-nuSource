using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using marriageModel;

public partial class newuser2 : System.Web.UI.Page
{
    //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StrCon"].ConnectionString);
    marriageEntities1 ObjEntity;

    protected void Page_Load(object sender, EventArgs e)
    {
        ObjEntity = new marriageEntities1();

        if (!IsPostBack)
        {
            LoadMotherTongueCombo();
            LoadProfileForCombo();
            LoadReligionCombo();
            LoadCountryCombo();
        }
    }

    // populate profileFor
    protected void LoadProfileForCombo()
    {
        DDl_ProfileFor.Items.Insert(0, new ListItem("--Select--", "0"));
        DDl_ProfileFor.Items.Insert(1, new ListItem("Myself", "1"));
        DDl_ProfileFor.Items.Insert(2, new ListItem("Son", "2"));
        DDl_ProfileFor.Items.Insert(3, new ListItem("Daughter", "3"));
        DDl_ProfileFor.Items.Insert(4, new ListItem("Brother", "4"));
        DDl_ProfileFor.Items.Insert(5, new ListItem("Sister", "5"));
        DDl_ProfileFor.Items.Insert(6, new ListItem("Friend", "6"));
        DDl_ProfileFor.Items.Insert(7, new ListItem("Relative", "7"));
    }

    //Populate Religion
    protected void LoadReligionCombo()
    {
        DDL_Religion.DataSource = ObjEntity.Religions;
        DDL_Religion.DataTextField = "ReligionName";
        DDL_Religion.DataValueField = "ReligionId";
        DDL_Religion.DataBind();
        DDL_Religion.Items.Insert(0, new ListItem("--Select--", "0"));
    }

    //Mother Tongue
    protected void LoadMotherTongueCombo()
    {
        DDL_MotherTongue.DataSource = ObjEntity.MotherTongues;
        DDL_MotherTongue.DataTextField = "TongueName";
        DDL_MotherTongue.DataValueField = "TongueID";
        DDL_MotherTongue.DataBind();
        DDL_MotherTongue.Items.Insert(0, new ListItem("--Select--", "0"));
    }

    //Caste
    protected void LoadCasteCombo()
    {
        int intReligionID;
        bool blnCheck = int.TryParse(DDL_Religion.SelectedValue, out intReligionID);

        var query = (from m in ObjEntity.Castes
                     where m.ReligionID == intReligionID
                     select m).ToList();

        DDL_Caste.DataSource = query;
        DDL_Caste.DataTextField = "CasteName";
        DDL_Caste.DataValueField = "CasteID";
        DDL_Caste.DataBind();
        DDL_Caste.Items.Insert(0, new ListItem("--Select--", "0"));
    }

    //Country
    protected void LoadCountryCombo()
    {
        DDL_Country.DataSource = ObjEntity.Countries;
        DDL_Country.DataTextField = "CountryName";
        DDL_Country.DataValueField = "CountryID";
        DDL_Country.DataBind();
        DDL_Country.Items.Insert(0, new ListItem("--Select--", "0"));
    }

    //CountryCode
    protected void LoadCountryCodeCombo()
    {
        int intCountryID;
        bool blnCheck = int.TryParse(DDL_Country.SelectedValue, out intCountryID);

        var query = (from m in ObjEntity.Countries
                     where m.CountryID == intCountryID
                     select m).ToList();

        DDL_MobileCode.DataSource = query;
        DDL_MobileCode.DataTextField = "CountryCode";
        DDL_MobileCode.DataValueField = "CountryName";
        DDL_MobileCode.DataBind();
    }


    protected void DDL_Religion_SelectedIndexChanged(object sender, EventArgs e)
    {
        LoadCasteCombo();

    }
    protected void Btn_Submit_Click(object sender, EventArgs e)
    {


        Session["Sessionname"] = Txt_Name.Text.ToString();
        if (Rbtn_Gender1.Checked == true)
            Session["SessionGender"] = "M";
        else
            Session["SessionGender"] = "F";

        // Session["SessionGender"] = Rbtn_Gender.SelectedValue;
        Session["SessionDOB"] = Txt_DOB.Text.ToString();
        Session["SessionReligion"] = DDL_Religion.SelectedValue;
        Session["SessionMotherTon"] = DDL_MotherTongue.SelectedValue;
        Session["SessionCasteText"] = DDL_Caste.SelectedItem.Text;
        Session["SessionCaste"] = DDL_Caste.SelectedValue;
        Session["SessionCountry"] = DDL_Country.SelectedValue;
        Session["SessionCountryText"] = DDL_Country.SelectedItem.Text;
        Session["SessionMobile"] = Txt_Phoneno.Text;
        Session["SessionEmail"] = Txt_Mail.Text;
        Session["SessionPwd"] = Txt_Pwd.Text;
        Response.Redirect("Second.aspx");
    }

    protected void DDL_Country_SelectedIndexChanged(object sender, EventArgs e)
    {
        LoadCountryCodeCombo();
    }

    protected void DDl_ProfileFor_SelectedIndexChanged1(object sender, EventArgs e)
    {
        if (DDl_ProfileFor.SelectedItem.Text == "Son" || DDl_ProfileFor.SelectedItem.Text == "Brother")
        {
            Lblname.Text = "Groom's Name";
            LblGender.Text = "Gender";
        }
        else if (DDl_ProfileFor.SelectedItem.Text == "Daughter" || DDl_ProfileFor.SelectedItem.Text == "sister")
        {
            Lblname.Text = "Bride's Name";
            LblGender.Text = "Gender";
        }

        if (DDl_ProfileFor.SelectedItem.Text == "myself" || DDl_ProfileFor.SelectedItem.Text == "Relative" || DDl_ProfileFor.SelectedItem.Text == "Friends")
        {
            Lblname.Text = "  Name";
            LblGender.Text = " Matrimony profile for";
        }

    }
}