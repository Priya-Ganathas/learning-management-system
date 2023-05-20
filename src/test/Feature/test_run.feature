#Test Case ID: test_run
#Summary: test_run
#Author: naduni.warnakulasooriya@1billiontech.com

@TCIP-Automation
Feature: test_run
  Scenario: test_run

    Given user read data from excelsheet "MW_002"

  ##Sign by LGIM gmail account
    Given browser is open and load gmail
    When user enter "txt_LgimGMail" into textfield
    When user click on "btn_UserNameNext" in page
    When user enter "txt_LgimGmailPassword" into textfield
    When user click on "btn_PasswordNext" in page
    Then user verify "lbl_Gmail" header in page

#Do Docu Sign Process - LGIM (Sign IMA)
    When user click "btn_Mail header IMA" dynamic button in page
    When user click on "btn_Review document" in page
    Then user switch into second window
    Then user verify "lbl_Docu Sign Header" header in page
    When user click on "btn_I Agree" in page
    When user click on "btn_Continue" in page
    When user click on "btn_Start" in page
    Then user wait for "5" seconds
    When user click on "btn_Sign" in page
    When user click on "btn_Adopt Sign" in page
    Then user wait for "10" seconds
    When user click on "btn_Finish" in page
    When user click on "btn_Continue And Exit" in page
    Then user switch into first window
    When user click on "btn_Inbox" in page
    Then user wait for "5" seconds