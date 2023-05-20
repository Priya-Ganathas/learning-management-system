#Test Case ID: TC_003
#Summary: Registration_Work_Flow - Happy path -approve docs- "Yes" to all yes/no questions - generate docs-docu sign
#Author: naduni.warnakulasooriya@1billiontech.com

@TCIP-Automation
Feature: TC_003_Registration_Work_Flow
  Scenario: TC_003_Registration_Work_Flow

    Given user read data from excelsheet "TC_003"

  ##Login to LGIM User
    Given browser is open and load url
    When user click on "btn_LoginButton" in page
    When user enter "txt_LGIMUserEmail" into textfield
    When user enter "txt_LGIMUserPassword" into textfield
    When user click on "btn_SignIn" in page
    Then user wait for "15" seconds

  ##Go to Schemes
    When user click on "btn_SchemsMenuItem" in page
    Then user wait for "10" seconds

  ##Navigate to created scheme
    When user enter "txt_CreatedSchemeName" into textfield
    When user click "btn_CreatedSchemeName" dynamic button in page
    Then user wait for "15" seconds

    ##Navigate to registration workflow
    When user click on "lnk_Updates" in page
    Then user wait for "20" seconds
    When user click on "lnk_Regrestration" in page
    Then user wait for "15" seconds

    ##Activate client account (LGIM)##
    Then user verify "header_Activate client account" header in page
    Then user wait for "5" seconds
    When user enter "txt_PMC policy number" into textfield
    When user click on "btn_Inception date corner button" in page
    When user click on "txt_Inception date Picker" datetime picker in page
    When user click on "lnk_Choose Year" in page
    When user click on "lnk_Last Decade" in page
    When user click on "btn_Select Year_Inception" in page
    When user click on "lnk_Choose Month" in page
    When user click on "lnk_Select Month_Inception" in page
    When user pick date "btn_Inception date" from date picker
    When user wait for "5" seconds
    When user upload file "file_upload PMC policy document"
    Then user wait for "10" seconds
    When user click on "btn_Activate" in page
    Then user wait for "10" seconds
    Then close Browser



#Test Case ID: TC_001
#Summary: Formal_Proposal_Flow

  @TCIP-Automation
  Feature: TC_001_Formal_Proposal_Flow

  Scenario: TC_001_Formal_Proposal_Flow

    Given user read data from excelsheet "TC_001"

  ##Login to LGIM User
    Given browser is open and load url
    When user enter "txt_LGIMUserEmail" into textfield
    When user enter "txt_LGIMUserPassword" into textfield
    When user click on "btn_SignIn" in page

  ##Go to Schemes
    When user click on "btn_SchemsMenuItem" in page

  ##Create a new Scheme
    When user click on "btn_CreateScheme" in page
    When user enter "txt_SchemeName" into textfield
    When user click on "btn_Create" in page

  ##Navigate to created scheme
    When user enter "txt_CreatedSchemeName" into textfield
    When user click "btn_CreatedSchemeName" dynamic button in page

  ##Master Workflow
    When user click on "lnk_MasterWorkflow" in page
    When user select value in "drp_SchemClassification" dropdown in page
    When user click on "btn_RequestSchemClassification" in page
    When user click on "btn_ActivatechemClassification" in page
    Then user wait for "60" seconds

  ##egistration Workflow
    When user click on "lnk_InRegistration" in page
    Then user wait for "30" seconds

  ##Request a formal proposal from us##
  ##Fill Values in Asset tab
    Then user verify "header_Request a formal proposal from us" header in page
    #Then user wait for "5" seconds
    When user enter "txt_Asset Value" into textfield
    When user click on "btn_OK" in page
    Then perform mouse hover to "txt_Asset Value Date Picker" in page
    When user click on "btn_Asset date corner button" in page
    When user enter "txt_Effective Start Date" into textfield
    When user click on "btn_Asset value date title" in page
    When user select option in "btn_Does the scheme hold assets with managers other than LGIM?" in page
    When user select option in "btn_Do you know your target investment return above gilts?" in page
    When user enter "txt_Target return above gilts (net of fees)" into textfield
    When user select option in "btn_Do you know your current asset allocation?" in page
    When user select option in "btn_Do you want to avoid holding less liquid assets, such as property?" in page
    When user select option in "btn_Do you want to fully integrate Environmental, Social and Governance (ESG) themes within your portfolio allocation?" in page
    When user click on "btn_Next" in page

##Verify Values in Liabilities tab
    Then user select option in "btn_Do you have a set of liability cashflows to upload?" in page
    When user select value in "drp_Choose and download a template to upload your cashflows" dropdown in page
    When user upload file "file_Upload the filled in overall cashflow"
    Then perform mouse hover to "txt_Effective Start Date Picker" in page
    When user click on "btn_effective start date corner button" in page
    When user enter "txt_Effective Start Date" into textfield
    When user click on "btn_cashflows date title" in page
    Then user enter "txt_Proportion of liabilities linked to inflation" into textfield
    When user select option in "btn_Do you have a liability value and details of the valuation basis?" in page
    When user enter "txt_Liability value" into textfield
    When user enter "txt_What is the average margin between the liability discount rate and an appropriate reference gilt yield?" into textfield
    Then perform mouse hover to "txt_Value Provided Date Picker" in page
    When user click on "btn_Value Provided Date corner button" in page
    When user enter "txt_Effective Start Date" into textfield
    When user click on "btn_cashflows date title" in page
    When user select value in "drp_What sort of liability valuation basis does this value represent?" dropdown in page
    When user click on "btn_Next" in page

    ##Fill Values in Funding tab
    When user select option in "btn_Would you like to see a projection of your funding position?" in page
    When user click on "btn_Next" in page

  ##Request Proposal - scheme user
    When user click on "btn_Select" in page
    When user click on "btn_Request Proposal" in page
    Then Wait for element "layer_loading" invisible
    Then Wait for element "layer_notifications" invisible
    Then user wait for "5" seconds

