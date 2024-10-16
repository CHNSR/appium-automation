*** Keywords ***
Open application with platform 
    BuiltIn.Run keyword if    '${platform}'=='android'    Open android application
    ...    ELSE    Open ios application

Open android application
    AppiumLibrary.Open application      remote_url=${remote_url}  
    ...    automationName=${android.automationName}  
    ...    platformName=${android.platformName}
    ...    platformVersion=${android.platformVersion}
    ...    deviceName=${android.deviceName}
    ...    appPackage=${android.appPackage}
    ...    appActivity=${android.appActivity}

Open ios application
    ${capability}=    Create dictionary    automation=${ios.automationName}    
    ...    platformName=${ios.platformName}    
    ...    platformVersion=${ios.platformVersion}   
    ...    bundleId=${ios.bundleId}    
    ...    deviceName=${ios.deviceName}
    AppiumLibrary.Open application    ${remote_url}    &{capability}

Tap element when ready
    [Arguments]    ${locator}    ${delay_time}
    AppiumLibrary.Wait until element is visible    ${locator}    ${delay_time}
    AppiumLibrary.Click element    ${locator}   

Get text when ready
    [Arguments]    ${locator}
    AppiumLibrary.Wait until element is visible   ${locator}    ${time.delay_time}
    ${text}=    AppiumLibrary.Get text    ${locator}
    [Return]    ${text}

Scroll down to element
    [Arguments]    ${locator}
    ${element_found}=    Set Variable    False  
    WHILE    '${element_found}' == 'False'
        AppiumLibrary.Swipe    ${scroll.x_axis_start}    ${scroll.y_axis_start}    ${scroll.x_axis_end}    ${scroll.y_axis_end}    ${scroll.time_to_swipe}
        ${element_found}=    BuiltIn.Run Keyword and return status    AppiumLibrary.Wait until element is visible    ${locator}    ${time.delay_time}
    END

