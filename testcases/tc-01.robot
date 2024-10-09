*** Settings ***
Resource    ${CURDIR}/../resources/import.robot
Test Setup    common.Open application
Test Teardown    AppiumLibrary.Close Application

*** Test Cases ***
TC-01
    home_page.Select product    ${home_locator.select_product}
    product_feature.Add product to cart    ${product_locator.select_color}    
    cart_feature.Show num of product 