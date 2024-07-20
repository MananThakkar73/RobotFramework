*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${email_loc}  inputEmail
${pass_loc}  inputPassword
${SignOn_loc}  //button[text()='Sign in']

${dropdown_loc}  dropdownMenuButton
${dropdownval_loc}  //a[@class='dropdown-item'][text()='Option 3']

${test4_butt_one}  //div[@id='test-4-div']/button[1]
${test4_butt_two}  //div[@id='test-4-div']/button[2]

${test5_butt}  //div[@id='test-5-div']/button
${test5_alert}  //div[@class='alert alert-success']

${test6_loc}  //div[@id='test-6-div']
*** Keywords ***

Test001_LoginFunctionality
    [arguments]  ${email}  ${password}
    Input Text  ${email_loc}  ${email}
    Input Text  ${pass_loc}  ${password}
    Press Keys  ${pass_loc}  ENTER

Test002_countofvalues
    @{002_values}  Get WebElements  //li[@class='list-group-item justify-content-between']
    ${count}=  Get length  ${002_values}
    ${actcount}  Convert To Integer  3
    Should Be Equal  ${count}  ${actcount}

Test002_nameofvalue
    @{002_values}  Get WebElements  //li[@class='list-group-item justify-content-between']
    ${val_name}  Get Text  ${002_values}[1]
    Should be Equal  ${val_name}  List Item 2 6

Test002_nameofvalueofvalue
    @{002_values_value}  Get WebElements  //span[@class='badge badge-pill badge-primary']
    ${val_val_name}  Get Text  ${002_values_value}[1]
    Should be Equal  ${val_val_name}  6

Test006_valfromTable
    [Arguments]  ${i}  ${j}  ${exptext}
    ${tab_val}  Get Text  //tbody/tr[${i}]/td[${j}]
    Should be Equal  ${tab_val}  ${exptext}




