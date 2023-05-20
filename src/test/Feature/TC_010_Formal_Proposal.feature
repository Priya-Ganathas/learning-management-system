
@TCIP-Automation
Feature: TC_010_Formal_Proposal
  Scenario: TC_010_RFormal_Proposal

    Given user read data from excelsheet "TC_010"

  ##Login to LGIM User

    Given browser is open and load url
    When user enter "txt_LGIMUserEmail" into textfield
    When user enter "txt_LGIMUserPassword" into textfield
    When user click on "btn_SignIn" in page

   ##Read current user's first and last name
    When user click on "btn_header UserName" in page
    When user click on "btn_My Profile" in page
    When user click on "btn_Personal Details" in page
    Then user wait for "10" seconds
    Then user read firstname and lastname from "txt_first name value" , "txt_last name value"

##Creating a scheme
    When user click on "btn_SchemsMenuItem" in page
    When user click on "btn_CreateScheme" in page
    When user enter "txt_SchemeName" into textfield
    When user select value in "drp_SelectRole" dropdown in page
    When user select value in "drp_CooporateOrindividual" dropdown in page
    When user select value in "drp_Does the scheme hold assets with managers other than LGIM?" dropdown in page
    When user click on "btn_Create" in page
    Then user wait for "30" seconds

   ##Navigate to created scheme
    When user click on "btn_SchemsMenuItem" in page
    When user click on "lnk_InRegistration" in page
    Then user wait for "15" seconds
    When user enter "txt_CreatedSchemeName" into textfield
    When user click "btn_CreatedSchemeName" dynamic button in page
    Then user wait for "15" seconds