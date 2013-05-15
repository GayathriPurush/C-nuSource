
function Validate_Process() {
    return true;
//    validate_MartialStatus();
//   // validator_SubCaste();
//    validator_State();
//    validator_city();
//    validator_HieghtEducation();
//    validator_Occupation();
//    validate_EmployedIn();
//    validate_FamilyStatus();
//    validate_FamilyType();
//    validate_FamilyValues();

}




// javascript for MartialStatus


    function validate_MartialStatus() {
        var radios = document.getElementsByName("MartialStatus");
        var j = 0;

        for (var i = 0; i < radios.length; i++) {
            if (radios.item(i).checked == false) {
                j++;
            }


        }

        if (j == radios.length) {
            alert("Please select the MartialStatus");
        }
    }




    //javascript for SubCaste


    function validator_SubCaste() {
        if (DDL_SubCaste[DDL_SubCaste.selectedIndex].value == 0) {
            alert("Please select SubCaste");

            return false;
        }

    }



    //javascript for State


    function validator_State() {
        if (DDL_State[DDL_State.selectedIndex].value == 0) {
            alert("Please select State");

            return false;
        }

    }



    //javascript for city

    function validator_city() {
        if (DDL_City[DDL_City.selectedIndex].value == 0) {
            alert("Please select City");

            return false;
        }

    }



    //javascript for HieghtEducation

    function validator_HieghtEducation() {
        if (DDL_HighestEdu[DDL_HighestEdu.selectedIndex].value == 0) {
            alert("Please select HieghtEducation");

            return false;
        }

    }



    //javascript for Occupation

    function validator_Occupation() {
        if (DDL_Occupation[DDL_Occupation.selectedIndex].value == 0) {
            alert("Please select Occupation");

            return false;
        }

    }



    //javascript for EmployedIn

function validate_EmployedIn() {
        var radios = document.getElementsByName("EmployedIn");
        var j = 0;

        for (var i = 0; i < radios.length; i++) {
            if (radios.item(i).checked == false) {
                j++;
            }


        }

        if (j == radios.length) {
            alert("Please select the EmployedIn");
        }
    }



    //javascript for FamilyStatus

    function validate_FamilyStatus() {
        var radios = document.getElementsByName("FamilyStatus");
        var j = 0;

        for (var i = 0; i < radios.length; i++) {
            if (radios.item(i).checked == false) {
                j++;
            }


        }

        if (j == radios.length) {
            alert("Please select the FamilyStatus");
        }
    }


    //javascript for FamilyType

    function validate_FamilyType() {
        var radios = document.getElementsByName("FamilyType");
        var j = 0;

        for (var i = 0; i < radios.length; i++) {
            if (radios.item(i).checked == false) {
                j++;
            }


        }

        if (j == radios.length) {
            alert("Please select the FamilyType");
        }
    }



    //javascript for FamilyValues

    function validate_FamilyValues() {
        var radios = document.getElementsByName("FamilyValues");
        var j = 0;

        for (var i = 0; i < radios.length; i++) {
            if (radios.item(i).checked == false) {
                j++;
            }


        }

        if (j == radios.length) {
            alert("Please select the FamilyValues");
        }
    }






