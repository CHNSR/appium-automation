*** Settings ***
Resource    ../../resources/import.robot
*** Keywords ***
Tap element when ready
    [Arguments]    ${locator}
    AppiumLibrary.Wait Until Element Is Visible    ${locator}    10s
    AppiumLibrary.Tap    ${locator}    

Scroll to view product
    [Arguments]    ${locator}
    AppiumLibrary.Scroll Element Into View    ${locator}

Open application
    AppiumLibrary.Open Application    remote_url=${android2.remote_url}    
    ...    platformName=${android2.platformName}
    ...    platformVersion=${android2.platformVersion}
    ...    deviceName=${android2.deviceName}
    ...    app=${CURDIR}/../../${android2.app}
    ...    appPackage=${android2.appPackage}
    ...    appActivity=${android2.appActivity}
    ...    autoGrantPermissions=${android2.autoGrantPermissions}
    ...    automationName=${android2.automationName}
