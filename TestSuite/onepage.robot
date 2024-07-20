*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/commonfunctionality.robot
Resource  ../Resources/userDefineKeywords.robot

Test Setup  commonfunctionality.StartTest
Test Teardown  commonfunctionality.FinishTest

*** Variables ***

*** Test Cases ***
This is test1
    [documentation]  OnePageTest
    [Tags]  Smoke

    userDefineKeywords.Test001_LoginFunctionality  mananathakkar  manaan
    commonfunctionality.ElementonPage  ${email_loc}
    commonfunctionality.ElementonPage  ${pass_loc}
    commonfunctionality.ButtonOnPage  ${SignOn_loc}

This is test2
    [Tags]  regression
    userDefineKeywords.Test002_countofvalues
    userDefineKeywords.Test002_nameofvalue
    userDefineKeywords.Test002_nameofvalueofvalue

This is test3
    [Tags]  regression
    commonfunctionality.TextofElement  ${dropdown_loc}  Option 1
    commonfunctionality.ElementClick  ${dropdown_loc}
    commonfunctionality.ElementClick  ${dropdownval_loc}
    commonfunctionality.TextofElement  ${dropdown_loc}  Option 3

This is test4
    [Tags]  regression
    commonfunctionality.ButtonEnable  ${test4_butt_one}
    commonfunctionality.ButtonDisable  ${test4_butt_two}

This is test5
    [Tags]  regression
    commonfunctionality.Scrolltoelement  ${test6_loc}
    commonfunctionality.ElementWait  ${test5_butt}
    commonfunctionality.ButtonClick  ${test5_butt}
    commonfunctionality.ElementonPage  ${test5_alert}
    commonfunctionality.ButtonDisable  ${test5_butt}

This is test6
    [Tags]  regression
    userDefineKeywords.Test006_valfromTable  3  3  Ventosanzap










