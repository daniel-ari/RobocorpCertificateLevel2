*** Settings ***
Documentation     Template keyword resource.
Library           RPA.Browser.Selenium    auto_close=${FALSE}
Library           RPA.HTTP
Library           RPA.Excel.Files
Library           RPA.Tables

*** Keywords ***
Open the robot order website
    Open Available Browser    ${URL_ORDERWEBSITE}    maximize=true

Close the annoying modal
    ${yep_i_give_up_my_rights_button_exists}    Does Page Contain Button    //*[@id="root"]/div/div[2]/div/div/div/div/div/button[2]
    IF    ${yep_i_give_up_my_rights_button_exists} == ${TRUE}
        Click Button    //*[@id="root"]/div/div[2]/div/div/div/div/div/button[2]
    END

Get orders
    Download    ${URL_ORDERSCSV}    overwrite=true    target_file=${OUTPUT_DIR}${/}orders.csv
    ${orders}=    Read table from CSV    ${OUTPUT_DIR}${/}orders.csv
    [Return]    ${orders}

Fill the form
    [Arguments]    ${row}
    ${show_model_info_button_exists}=    Does Page Contain Button    xpath://*[@id="root"]/div/div[1]/div/div[2]/div[1]/button
    IF    ${show_model_info_button_exists} == ${TRUE}
        Click Button    xpath://*[@id="root"]/div/div[1]/div/div[2]/div[1]/button
    END
