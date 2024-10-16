*** Settings ***
Resource    ${CURDIR}/../resources/import.robot
Test Setup          common.Open application with platform 
Test Teardown       AppiumLibrary.Close application

*** Test Cases ***
TC01
    home_feature.Scroll to product and tap the product
    cart_page.Tap add to cart button
    cart_feature.Open cart and check items
