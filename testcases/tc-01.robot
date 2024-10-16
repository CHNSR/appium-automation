*** Settings ***
Resource    ${CURDIR}/../resources/import.robot
Test Setup          common.Open application with plat form 
Test Teardown       AppiumLibrary.Close Application

*** Test Cases ***
TC01
    debug
    home_feature.Scroll to product and tap the product
    cart_page.Tap add to cart button
    cart_feature.Open cart and check items

    #robot --variable platform:ios testcases/tc-01.robot