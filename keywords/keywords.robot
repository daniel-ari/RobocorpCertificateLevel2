*** Settings ***
Documentation     Template keyword resource.
Library           RPA.Browser.Selenium    auto_close=${FALSE}

*** Keywords ***
Open the robot order website
    Open Available Browser    https://robotsparebinindustries.com/#/robot-order    maximize=true

Give up all rights in favor of RobotSpareBin Industries
    ${yep_i_give_up_my_rights_button_exists}    Does Page Contain Button    //*[@id="root"]/div/div[2]/div/div/div/div/div/button[2]
    IF    ${yep_i_give_up_my_rights_button_exists} == ${TRUE}
        Click Button    //*[@id="root"]/div/div[2]/div/div/div/div/div/button[2]
    END
