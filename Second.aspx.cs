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
using System.Transactions;
using System.Globalization;



public partial class Second : System.Web.UI.Page
{

    marriageEntities1 ObjEntity;

    protected void Page_Load(object sender, EventArgs e)
    {
        ObjEntity = new marriageEntities1();

        string TxtCaste = Convert.ToString(Session["SessionCasteText"]);
        string TxtCountry = Convert.ToString(Session["SessionCountryText"]);
        Lbl_CountryName.Text = TxtCountry;
        Lbl_CasteName.Text = TxtCaste;

        LoadHigherEduCombo();
        LoadOccupCombo();
        LoadCurrencyCombo();
        //SubCaste();

        //according to religion caste will be change to dropdown or textbox

        if (Session["SessionReligion"].ToString().ToUpper()  == "HINDU")
        {
            Txt_Caste.Visible = false;
            DDL_SubCaste.Visible = true;
        }
        else
        {
            Txt_Caste.Visible = true;
            DDL_SubCaste.Visible = false;
        }
        
        if (!IsPostBack)
        {
            
            LoadStateCombo();
        }
        LoadStarCombo();
    }
    


    //Education
    protected void LoadHigherEduCombo()
    {
        DDL_HighestEdu.DataSource = ObjEntity.HighEducations;
        DDL_HighestEdu.DataTextField = "EducationName";
        DDL_HighestEdu.DataValueField = "EducationID";
        DDL_HighestEdu.DataBind();
        DDL_HighestEdu.Items.Insert(0, new ListItem("--Select--", "0"));
    }

    //Occupation
    protected void LoadOccupCombo()
    {
        DDL_Occupation.DataSource = ObjEntity.Occupations;
        DDL_Occupation.DataTextField = "OccupName";
        DDL_Occupation.DataValueField = "OccupID";
        DDL_Occupation.DataBind();
        DDL_Occupation.Items.Insert(0, new ListItem("--Select--", "0"));
    }

    //Currency
    protected void LoadCurrencyCombo()
    {
        DDL_IncomeType.DataSource = ObjEntity.Currencies;
        DDL_IncomeType.DataTextField = "CurrName";
        DDL_IncomeType.DataValueField = "CurrID";
        DDL_IncomeType.DataBind();
        DDL_IncomeType.Items.Insert(0, new ListItem("--Select--", "0"));
    }

    //State
    protected void LoadStateCombo()
    {
        DDL_State.DataSource = ObjEntity.StateDetails;

        DDL_State.DataTextField = "StateName";
        DDL_State.DataValueField = "StateID";
        DDL_State.DataBind();
        DDL_State.Items.Insert(0, new ListItem("--Select--", "0"));
        
    }

    

    //City
    protected void LoadCityCombo()
    {
        int intStateID;
        bool blnCheck = int.TryParse(DDL_State.SelectedIndex.ToString(), out intStateID);

        var query = (from m in ObjEntity.Cities
                     where m.StateID == intStateID
                     select m).ToList();

        DDL_City.DataSource = query;
        DDL_City.DataTextField = "CityName";
        DDL_City.DataValueField = "CityID";
        DDL_City.DataBind();
        DDL_City.Items.Insert(0, new ListItem("--Select--", "0"));
    }

    ////SubCaste
    //protected void SubCaste()
    //{

    //    DDL_State.DataSource = ObjEntity.StateDetails;
    //    DDL_State.DataTextField = "StateName";
    //    DDL_State.DataValueField = "StateID";
    //    DDL_State.DataBind();
    //    DDL_State.Items.Insert(0, new ListItem("--Select--", "0"));
    //}

    //Star
    protected void LoadStarCombo()
    {
        DDL_Star.DataSource = ObjEntity.StarDetails;
        DDL_Star.DataTextField = "StarName";
        DDL_Star.DataValueField = "StarID";
        DDL_Star.DataBind();
        DDL_Star.Items.Insert(0, new ListItem("--Select--", "0"));
    }

    protected void DDL_Star_SelectedIndexChanged(object sender, EventArgs e)
    {
        LoadRasiCombo();
    }

    //Rassi
    protected void LoadRasiCombo()
    {
        DDL_Moon.DataSource = ObjEntity.Raasis;
        DDL_Moon.DataTextField = "RaasiName";
        DDL_Moon.DataValueField = "RaasiID";
        DDL_Moon.DataBind();
        DDL_Moon.Items.Insert(0, new ListItem("--Select--", "0"));
    }

    protected void btn_Submit_Click(object sender, EventArgs e)
    {
        //SqlTransaction Transaction;
        //con.Open();
        //Transaction = con.BeginTransaction();
        /*  try
          {           
              new SqlCommand("INSERT INTO Transact VALUES ('" + 
         * Convert.ToString(Session["Sessionname"]) + "','" + 
         * Convert.ToString(Session["SessionDOB"]) + "','" + 
         * Convert.ToString(Session["SessionGender"]) + "','" + 
         * Convert.ToString(Session["SessionMobile"]) + "','" + 
         * Convert.ToString(Session["SessionCountry"]) + "','" + 
         * DDL_State.SelectedItem + "','" + DDL_City.SelectedItem + "','" + 
         * Convert.ToString(Session["SessionReligion"]) + "','" + 
         * Convert.ToString(Session["SessionCaste"]) + "','" + 
         * DDL_SubCaste.SelectedItem + "','" + Txt_Gothram.Text + "','" + 
         * Convert.ToString(Session["SessionEmail"]) + "','" + Rbtn_PhysicalStatus.SelectedValue + "','" +
         * Txt_Desc.Text + "');", con, Transaction).ExecuteNonQuery();

              new SqlCommand("INSERT INTO EduDetails values ('" + Txt_Height.Text + "','" + DDL_Occupation.SelectedItem + "','" + Rbtn_EmpIn.SelectedValue + "','" + Rbtn_IncomeType.SelectedValue + "','" + DDL_IncomeType.SelectedItem + "','" + Txt_Amount.Text + "');", con, Transaction).ExecuteNonQuery();

              new SqlCommand("INSERT INTO Habit values('" + Rbtn_Food.SelectedValue + "','" + Rbtn_Smoking.SelectedValue + "','" + Rbtn_Drinking.SelectedValue + "');", con, Transaction).ExecuteNonQuery();

              new SqlCommand("INSERT INTO AstrologicalInfo values('" + Rbtn_Dhosam.SelectedValue + "','" + DDL_Star.SelectedItem + "','" + DDL_Moon.SelectedItem + "');", con, Transaction).ExecuteNonQuery();

              new SqlCommand("insert into Family values('" + Rbtn_familystatus.SelectedValue + "','" + Rbtn_FamType.SelectedValue + "','" + Rbtn_FamValue.SelectedValue + "');", con, Transaction).ExecuteNonQuery();

              Transaction.Commit();
          }
          catch
          {
              Transaction.Rollback();
          }
          con.Close();*/
        using (TransactionScope ts = new TransactionScope())
        {

            try
            {
                //using (DataContext contextObject = new DataContext(ConnectionString))
                //{
                // Open the contextObject connection state explicitly
                ObjEntity.Connection.Open();

                string hh = Session["SessionDOB"].ToString();
                // //First SaveChange method.
                MatrimonyDetail objMatrim = new MatrimonyDetail();
                objMatrim.MatrimonyID = 1;
                objMatrim.Name = Convert.ToString(Session["Sessionname"]);
                objMatrim.DOB = DateTime.Parse(hh);
                objMatrim.Gender = Convert.ToString(Session["SessionGender"]);
                objMatrim.CountryID = int.Parse(Session["SessionCountry"].ToString());
                objMatrim.MobileNo = Convert.ToString(Session["SessionMobile"]);
                objMatrim.StateID = int.Parse(DDL_State.SelectedValue);
                objMatrim.CityID = int.Parse(DDL_City.SelectedValue);
                objMatrim.ReligionID = int.Parse(Session["SessionReligion"].ToString());
                objMatrim.CasteID = int.Parse(Session["SessionCaste"].ToString());
                objMatrim.SubCasteID = 6;
                //objMatrim.SubCasteID = int.Parse(DDL_SubCaste.SelectedValue);
                objMatrim.GothraID = 1;
                objMatrim.Email = Convert.ToString(Session["SessionEmail"]);
                objMatrim.LoginPwd = Convert.ToString(Session["SessionPwd"]);

                string strMaritalStatus = "U";
                if (Rbtn_MartialStatus1.Checked == true)
                    strMaritalStatus = "U";
                else if (Rbtn_MartialStatus2.Checked == true)
                    strMaritalStatus = "M";
                else if (Rbtn_MartialStatus3.Checked == true)
                    strMaritalStatus = "D";
                else if (Rbtn_MartialStatus4.Checked == true)
                    strMaritalStatus = "A";

                objMatrim.MaritalStatus = strMaritalStatus;
                //objMatrim.TongueID = int.Parse(Session["SessionMotherTon"].ToString());

                //objMatrim.NoOfChild = DDL_NoOfChild.SelectedValue.ToString();
                objMatrim.NoOfChild = "on";
                if (Rbtn_ChildLiving1.Checked == true)
                    objMatrim.LivingWith = "Y";
                else
                    objMatrim.LivingWith = "N";

                objMatrim.DescriptionInfo = Txt_Desc.Text;
                objMatrim.ActiveInd = "N";
                objMatrim.CreatedDate = System.DateTime.Now;
                objMatrim.UpdatedDate = System.DateTime.Now;

                ObjEntity.AddToMatrimonyDetails(objMatrim);
                ObjEntity.SaveChanges();


                PhysicalAttr Objphysical = new PhysicalAttr();
                Objphysical.MatrimonyID = 1;
                Objphysical.HeightAttr = Convert.ToInt32(Txt_Height.Text);
                Objphysical.WeightAttr = Convert.ToInt32(Txt_Weight.Text);

                string ObjBodytype = "Average";

                if (Rbtn_BodyType1.Checked == true)
                    ObjBodytype = "Average";
                else if (Rbtn_BodyType2.Checked == true)
                    ObjBodytype = "Athletic";
                else if (Rbtn_BodyType3.Checked == true)
                    ObjBodytype = "Slim";
                else if (Rbtn_BodyType4.Checked == true)
                    ObjBodytype = "Heavy";

                Objphysical.BodyType = ObjBodytype;

                string ObjComplexion = "Fair";

                if (Rbtn_Complextion1.Checked == true)
                    ObjComplexion = "Fair";
                else if (Rbtn_Complextion2.Checked == true)
                    ObjComplexion = "Very Fair";
                else if (Rbtn_Complextion3.Checked == true)
                    ObjComplexion = "Wheatish";
                else if (Rbtn_Complextion4.Checked == true)
                    ObjComplexion = "Wheatish-Brown";
                else if (Rbtn_Complextion5.Checked == true)
                    ObjComplexion = "Dark";

                Objphysical.Complexion = ObjComplexion;

                string ObjPhyStatus = "Normal";

                if (Rbtn_PhysicalStatus1.Checked == true)
                    ObjPhyStatus = "Normal";
                else if (Rbtn_PhysicalStatus2.Checked == true)
                    ObjPhyStatus = "Physical Status";

                Objphysical.PhysicalStatus = ObjPhyStatus;

                ObjEntity.AddToPhysicalAttrs(Objphysical);
                ObjEntity.SaveChanges();

                EduDetail ObjEduDetail = new EduDetail();

                ObjEduDetail.MatrimonyID=1;
                ObjEduDetail.EducationID=int.Parse(DDL_HighestEdu.SelectedValue);
                ObjEduDetail.OccupID=int.Parse(DDL_Occupation.SelectedValue);

                String objemployedIn="Goverment";

                
                if (Rbtn_EmpIn1.Checked == true)
                   objemployedIn="Goverment";
                else if (Rbtn_EmpIn2.Checked == true)
                   objemployedIn="Private";
                else if (Rbtn_EmpIn3.Checked == true)
                    objemployedIn="Business";
                else if (Rbtn_EmpIn4.Checked == true)
                    objemployedIn="Self-Employed";
                else if (Rbtn_EmpIn5.Checked == true)
                    objemployedIn="Defence";

                ObjEduDetail.EmployedIn=objemployedIn;

                string objIncometype="Monthly Income";

                
                if (Rbtn_IncomeType1.Checked == true)
                   objIncometype="Monthly Income";
                else if (Rbtn_IncomeType2.Checked == true)
                   objIncometype="Annual Income";

                ObjEduDetail.IncomeType=objIncometype;
                ObjEduDetail.CurrID=int.Parse(DDL_IncomeType.SelectedValue);
                ObjEduDetail.Income = Convert.ToInt32(Txt_Amount.Text);

                ObjEntity.AddToEduDetails(ObjEduDetail);
                ObjEntity.SaveChanges();


                Habit objhabits = new Habit();

                objhabits.MatrimonyID = 1;
                string ObjFoodtype = "Non-Vegetarian";


                if (Rbtn_FoodType1.Checked == true)
                    ObjFoodtype = "Non-Vegetarian";
                else if (Rbtn_FoodType2.Checked == true)
                    ObjFoodtype = "Vegetarian";
                else if (Rbtn_FoodType3.Checked == true)
                    ObjFoodtype = "Eggetarian";
                objhabits.Food = ObjFoodtype;

                string objSmoking = "No";

                if (Rbtn_Smoking1.Checked == true)
                    objSmoking = "No";
                else if (Rbtn_Smoking2.Checked == true)
                    objSmoking = "Yes";
                else if (Rbtn_Smoking3.Checked == true)
                    objSmoking = "Occasionally";

                objhabits.Smoking = objSmoking;

                string objDrinking = "No";

                if (Rbtn_Drinking1.Checked == true)
                    objDrinking = "No";
                else if (Rbtn_Drinking2.Checked == true)
                    objDrinking = "Yes";
                else if (Rbtn_Drinking3.Checked == true)
                    objDrinking = "Occasionally";

                objhabits.Drinking = objDrinking;

                ObjEntity.AddToHabits(objhabits);
                ObjEntity.SaveChanges();

                AstrologicalInfo objastrological = new AstrologicalInfo();

                objastrological.MatrimonyID = 1;

                string objdosham="No";
                 if (Rbtn_Chevvai1.Checked == true)
                    objdosham="No";
                else if (Rbtn_Chevvai2.Checked == true)
                    objdosham="Yes";
                else if (Rbtn_Chevvai3.Checked == true)
                    objdosham="Dont Know";


                 objastrological.Dosham = objdosham;

                 objastrological.StarID = int.Parse(DDL_Star.SelectedValue);
                 objastrological.RaasiID = int.Parse(DDL_Moon.SelectedValue);

                 ObjEntity.AddToAstrologicalInfoes(objastrological);
                 ObjEntity.SaveChanges();

                 Family objfamily = new Family();
                 objfamily.MatrimonyID = 1;


                 string ObjFamilystatus = "Middle Class";

                 if (Rbtn_FamilyStatus1.Checked == true)
                     ObjFamilystatus = "Middle Class";
                 else if (Rbtn_FamilyStatus2.Checked == true)
                     ObjFamilystatus = "Upper-Middle Class";
                 else if (Rbtn_FamilyStatus3.Checked == true)
                     ObjFamilystatus = "Rich";
                  else if (Rbtn_FamilyStatus4.Checked == true)
                     ObjFamilystatus = "Affluent";

                 objfamily.FamilyStatus = ObjFamilystatus;

                 string ObjFamilyType = "Single";

                 if (Rbtn_FamilyType1.Checked == true)
                     ObjFamilystatus = "Single";
                 else if (Rbtn_FamilyType2.Checked == true)
                     ObjFamilystatus = "Nuclear";

                 objfamily.FamilyType = ObjFamilyType;


                 string ObjFamilyValue = "Orthodox";

                 if (Rbtn_FamilyValue1.Checked == true)
                     ObjFamilyValue = "Orthodox";
                 else if (Rbtn_FamilyValue2.Checked == true)
                     ObjFamilyValue = "Traditional";
                 else if (Rbtn_FamilyValue3.Checked == true)
                     ObjFamilyValue = "Moderate";
                 else if (Rbtn_FamilyValue4.Checked == true)
                     ObjFamilyValue = "Liberal";

                 objfamily.FamilyValues = ObjFamilyValue;

                 ObjEntity.AddToFamilies(objfamily);
                 ObjEntity.SaveChanges();


                //// Second SaveChange method.
                //....Codes for 2nd table.....
                //contextObject.SaveChanges();

                //// Third SaveChange method.
                //....Codes for 3rd table.....
                //contextObject.SaveChanges();

                // If execution reaches here, it indicates the successfull completion of all                  three save operation. hence comit the transaction.
                ts.Complete();
                //}
            }
            catch (Exception ex)
            {
                // If any excption is caught, roll back the entire transaction and ends the                 transaction scope
                ts.Dispose();
            }
            finally
            {
                // Close the opened connection
                if (ObjEntity.Connection.State == ConnectionState.Open)
                {
                    ObjEntity.Connection.Close();
                }
            }
        }


    }


    protected void MaritalStatusChanged(object sender, EventArgs e)
    {
        if (Rbtn_MartialStatus1.Checked == true)
        {
            Lbl_Child.Visible = false;
            DDL_NoOfChild.Visible = false;
            Rbtn_ChildLiving1.Visible = false;
        }
        else if (Rbtn_MartialStatus2.Checked == true)
        {
            Lbl_Child.Visible = true;
            DDL_NoOfChild.Visible = true;
            Rbtn_ChildLiving1.Visible = true;
        }
        else if (Rbtn_MartialStatus3.Checked == true)
        {
            Lbl_Child.Visible = true;
            DDL_NoOfChild.Visible = true;
            Rbtn_ChildLiving1.Visible = true;
        }
        else if (Rbtn_MartialStatus4.Checked == true)
        {
            Lbl_Child.Visible = true;
            DDL_NoOfChild.Visible = true;
            Rbtn_ChildLiving1.Visible = true;
        }
    }


    
    //protected void DDL_State_SelectedIndexChanged1(object sender, EventArgs e)
    //{
    //    LoadCityCombo();
    //}
    protected void DDL_State_SelectedIndexChanged(object sender, EventArgs e)
    {
        //DropDownList ddl = (DropDownList)sender;
        //int a = Convert.ToInt32(ddl.SelectedValue);
LoadCityCombo();
        
    }
}


