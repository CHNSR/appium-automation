
Kasidet
Kasidet Apipattaratakorn
* Settings *
Library         AppiumLibrary
Library         OperatingSystem

* Test Cases *
TC01
    Open App
    Click product
    #Click add product to cart
    #Click to cart icon
    #Check the product quantity

* Keywords *
Open App
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...                 automationName=UiAutomator2
    ...                 platformName=Android
    ...                 platformVersion=14
    ...                 deviceName=emulator-5554
    ...                 appPackage=com.saucelabs.mydemoapp.android
    ...                 appActivity=com.saucelabs.mydemoapp.android.view.activities.SplashActivity
    ...                 autoGrantPermissions=true

Click product
    Wait Until Page Contains Element    xpath=//android.view.ViewGroup[android.widget.TextView[@text='Sauce Labs Backpack']]//android.widget.ImageView[@content-desc="Product Image"]     30s
    Tap     xpath=//android.view.ViewGroup[android.widget.TextView[@text='Sauce Labs Backpack']]//android.widget.ImageView[@content-desc="Product Image"]
Click add product to cart
    Wait Until Page Contains Element    accessibility_id=Tap to add product to cart     30s
    Tap     accessibility_id=Tap to add product to cart

Click to cart icon
    Wait Until Page Contains Element    accessibility_id=View cart      30s
    Tap     accessibility_id=View cart 

Check the product quantity
    Wait Until Page Contains Element    xpath=//android.widget.TextView[@resource-id="com.saucelabs.mydemoapp.android:id/noTV" and @text='1']       30s
    ${xpath_text}       Get text    //android.widget.TextView[@resource-id="com.saucelabs.mydemoapp.android:id/noTV" and @text='1']
    Log To Console      ${x}
    @{parts_1}    Evaluate    ${xpath_text}.split('@text=')    
    @{parts_2}    Evaluate    ${paths_1[1]}.split(')')
    Should Be Equal         @{parts_2[0]}       '1'