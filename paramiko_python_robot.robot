
*** Settings ***
Library    Process
Library    BuiltIn
Library    String
Library    remote_access


*** Test Cases ***

Test_case_1                
    Set Test Documentation    Verify adding an employee
    remote_access.connect_machine    192.168.43.226
