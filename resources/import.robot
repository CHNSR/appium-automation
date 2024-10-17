*** Settings ***
Library    AppiumLibrary
Library    DebugLibrary
Library    BuiltIn

#page
Resource    ${CURDIR}/../keywords/pages/cart_page.robot
Resource    ${CURDIR}/../keywords/pages/home_page.robot
Resource    ${CURDIR}/../keywords/pages/product_page.robot

#feature
Resource    ${CURDIR}/../keywords/features/cart_feature.robot
Resource    ${CURDIR}/../keywords/features/home_feature.robot

#common
Resource    ${CURDIR}/../keywords/commons/common.robot

#locator
Resource    ${CURDIR}/../resources/locators/${platform}/home_locator.robot
Resource    ${CURDIR}/../resources/locators/${platform}/cart_locator.robot
Resource    ${CURDIR}/../resources/locators/${platform}/product_locator.robot

#setting
Variables   ${CURDIR}/settings/${platform}.yaml
Variables   ${CURDIR}/test_data/testdata.yaml
Variables   ${CURDIR}/settings/setting.yaml