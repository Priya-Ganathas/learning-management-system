#Test Case ID:
# Summary:TC_016_Lecturer Grade Assignment

@TCIP-Automation
Feature: TC_016_Lecturer Grade Assignment

  Scenario:TC_016_Lecturer Grade Assignment

    Given user read data from excelsheet "Lecturer"

  ##Login to LGIM User
    Given browser is open and load url
    When user enter "txt_OwnerUserEmail" into textfield
    When user enter "txt_OwnerUserPassword" into textfield
    When user click on "btn_SignIn" in page

    When user click on "btn_Courses" in page
    When user click on "btn_CourseAdd" in page

    When I show the hidden tab "btn_AddAssignment"
    When user click on "btn_Assignments" in page

    When user click on "btn_EditGrade" in page

    When user enter "txt_EditFeedback" into textfield
    When user enter "txt_EditMarks" into textfield

    When user click on "btn_Submit" in page

    Then close Browser

