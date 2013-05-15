
function validate_fields() {
    //alert("hi");

    var blnChk = true;

    if (blnChk) {
        blnChk = validator_ProfileFor();
    }
    if (blnChk) {
        blnChk = validate_name();
    }
    if (blnChk) {
        blnChk = validate_date();
    }
    if (blnChk) {
        blnChk = validate_Gender();
    }
    if (blnChk) {
        blnChk = validator_Religion();
    }
    if (blnChk) {
        blnChk = validator_MotherTongue();
    }
    if (blnChk) {
        blnChk = validator_Caste();
    }
    if (blnChk) {
        blnChk = validator_Country();
    }
    if (blnChk) {
        blnChk = phonenumber();
    }
    if (blnChk) {
        blnChk = validateEmail();
    }
    if (blnChk) {
        blnChk = validate_Pwd();
    }

    return blnChk;
}

function validate_name() {   // validate for name text box
    var str_name = document.getElementById("Txt_Name").value;
    if (str_name == "") {  // validate for empty
        alert("Please the Fill the name");
        document.getElementById("Txt_Name").focus();
        return false;
    }
    else if (!isNaN(str_name)) { // validate for numeric value
        alert("Numeric Values are not allowed");
        document.getElementById("Txt_Name").focus();
        return false;
    }
    else if (str_name.length > 7) { // validate for max char
        alert("Max 7 Value Are allowed");
        document.getElementById("Txt_Name").focus();
        return false;
    }
    else if (str_name.length > 0) { // validate for whitespace 
        //var spaces = '';
        for (var i = 0; i < str_name.length; i++) {
            var spaces = str_name[i];
            if (spaces == " ") {
                i = str_name.length;
                alert("Blank Spaces are not allowed");
                document.getElementById("Txt_Name").focus();
                return false;
            }
        }
    }
    return (true);
}

function validate_Pwd() {
    var decimal = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9])(?!.*\s).{8,15}$/;
    if (decimal.test(Txt_Pwd.value) == false) {
        alert("The Pwd Have to contain least one lowercase letter, one uppercase letter, one numeric digit, and one special character");
        document.getElementById("Txt_Pwd").focus();
        return false;
    }
    return true;
}

function validateEmail() {
    var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;

    if (reg.test(Txt_Mail.value) == false) {
        alert('Invalid Email Address');
        document.getElementById("Txt_Mail").focus();
        return false;
    }
    return true;
}

function validator_Religion() {
    if (document.getElementsByName("DDL_Religion").item(0).value == 0) {
        alert("Please select Religion");
        document.getElementById("DDL_Religion").focus();
        return false;
    }
    return true;
}

function validator_MotherTongue() {
    if (DDL_MotherTongue[DDL_MotherTongue.selectedIndex].value == 0) {
        alert("Please select MotherTongue");
        document.getElementById("DDL_MotherTongue").focus();
        return false;
    }
    return true;
}

function validator_Country() {
    if (DDL_Country[DDL_Country.selectedIndex].value == 0) {
        alert("Please select Country");
        document.getElementById("DDL_Country").focus();
        return false;
    }
    return true;
}

function validator_Caste() {
    if (DDL_Caste[DDL_Caste.selectedIndex].value == 0) {
        alert("Please select Caste");
        document.getElementById("DDL_Caste").focus();
        return false;
    }
    return true;
}

function validator_ProfileFor() {
    if (DDl_ProfileFor[DDl_ProfileFor.selectedIndex].value == 0) {
        alert("Please select ProfileFor");
        document.getElementById("DDl_ProfileFor").focus();
        return false;
    }
    return true;
}

function phonenumber() {
    var phoneno = /^\d{10}$/;

    if (phoneno.test(Txt_Phoneno.value) == false) {
        alert("Not Valid Phone No");
        document.getElementById("Txt_Phoneno").focus();
        return false;
    }
    return true;
}

//function validate_Gender() {

//    var rbtn_ml = document.getElementById("Rbtn_Gender_0");
//    var rbtn_fml = document.getElementById("Rbtn_Gender_1");
//    if (rbtn_ml.checked == false && rbtn_fml.checked == false) {
//        alert("Please Select the Gender");
//       
//    }
//}

function validate_Gender() {
    var radios = document.getElementsByName("Gender");
    var j = 0;
    for (var i = 0; i < radios.length; i++) {
        if (radios.item(i).checked == false) {
            j++;
        }
    }

    if (j == radios.length) {
        alert("Please select the gender");
        return false;
    }
    else {
        return true;
    }
    return true;
}


function validate_date() {
    var chkdate = document.getElementById("Txt_DOB").value;
    if (document.getElementById("Txt_DOB").value == "") {
        alert("Please enter the Date..!!")
        Txt_DOB.focus();
        return false;
    }
    else if (chkdate.match(/^(0[1-9]|[12][0-9]|3[01])[\- \/.](?:(0[1-9]|1[012])[\- \/.](201)[2-9]{1})$/)) {
        alert('Date format is wrong');
        Txt_DOB.focus();
        return false;
    }
    return true;
}
