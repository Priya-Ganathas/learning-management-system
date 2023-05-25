#Test Case ID: TC_001
#Summary: TC_006_Admin Assign Course to Student

@TCIP-Automation
Feature: TC_006_Admin Assign Course to Student

  Scenario: TC_006_Admin Assign Course to Student

    Given user read data from excelsheet "TC_001"

  ##Login to LGIM User
    Given browser is open and load url
    When user enter "txt_OwnerUserEmail" into textfield
    When user enter "txt_OwnerUserPassword" into textfield
    When user click on "btn_SignIn" in page


    When user click on "btn_Courses" in page
    When user click on "btn_Assign Students" in page
    When user select value in "drp_Assigncourse" dropdown in page
    When user select value in "drp_Students" dropdown in page
     When user click on "btn_Submit" in page


    Then close Browser

