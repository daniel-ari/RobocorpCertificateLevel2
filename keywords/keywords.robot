*** Settings ***
Documentation     Template keyword resource.
Library           RPA.Browser.Selenium    auto_close=${FALSE}
Library           RPA.HTTP
Library           RPA.Excel.Files
Library           RPA.Tables
Library           RPA.PDF

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
    # Check if model info table exists and click button to expand it if not
    ${show_model_info_table_exists}=    Does Page Contain Element    id=model-info
    IF    ${show_model_info_table_exists} == ${FALSE}
        Click Button    xpath://*[@id="root"]/div/div[1]/div/div[2]/div[1]/button
    END
    # Select robot head from dropdown by selecting
    #${head_model_name}=    Get Text    xpath://*[@id="model-info"]/tbody/tr[1]/td[1]
    #${head_model_name_full}=    Catenate    ${head_model_name}    head
    Select From List By Value    head    ${row}[Head]
    # Select robot body by clicking radio button
    ${body_id}=    Catenate    SEPARATOR=    id-body-    ${row}[Body]
    Click Element    ${body_id}
    # Type in robot legs
    Input Text    css:input[type="number"]    ${row}[Legs]
    # Type in shipping address
    Input Text    css:input[type="text"]    ${row}[Address]

Preview the robot
    Click Button    id:preview
    Check if error occurred    preview

Submit the order
    Click Button    id:order
    Check if error occurred    order

Store the receipt as a PDF file
    [Arguments]    ${Order number}
    ${order_receipt_html}=    Get Element Attribute    id:receipt    outerHTML
    Html To Pdf    ${order_receipt_html}    ${OUTPUT_DIR}${/}OrderNumber${Order number}.pdf
    [Return]    ${OUTPUT_DIR}${/}OrderNumber${Order number}.pdf

Take a screenshot of the robot
    [Arguments]    ${Order number}
    ${robot_number}=    Catenate    SEPARATOR=    RobotScreenshot    ${Order number}
    Screenshot    id:robot-preview-image    ${OUTPUT_DIR}${/}${robot_number}.png
    [Return]    ${OUTPUT_DIR}${/}${robot_number}.png

Go to order another robot
    Click Button    id:order-another
    Check if error occurred    order-another

Check if error occurred
    [Arguments]    ${button_id}
    ${error_exists}=    Is Element Visible    css:div[class="alert alert-danger"]
    IF    ${error_exists} == ${TRUE}
        # If error exists, request input from user to solve that issue somehow.
        ${error_message}=    Get Text    //*[@id="root"]/div/div[1]/div/div[1]/div
        Log    Error thrown. Message: ${error_message}
        Click Button    id:${button_id}
    END
