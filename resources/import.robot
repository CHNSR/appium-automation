*** Settings ***
Library    AppiumLibrary
Library    DebugLibrary


Resource    ${CURDIR}/../keywords/pages/cart_page.robot
Resource    ${CURDIR}/../keywords/pages/home_page.robot

Resource    ${CURDIR}/../keywords/features/cart_feature.robot
Resource    ${CURDIR}/../keywords/features/home_feature.robot

Resource    ${CURDIR}/../keywords/commons/common.robot

Resource    ${CURDIR}/../resources/locators/${platform}/home_locator.robot
Resource    ${CURDIR}/../resources/locators/${platform}/cart_locator.robot


Variables   ${CURDIR}/settings/${platform}.yaml
Variables   ${CURDIR}/test_data/testdata.yaml
Variables   ${CURDIR}/settings/setting.yaml