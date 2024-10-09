*** Settings ***
Library    AppiumLibrary

Variables   ${CURDIR}/../resources/settings/setting.yaml

#Resources page
Resource    ${CURDIR}/../keywords/pages/cart_page.robot
Resource    ${CURDIR}/../keywords/pages/home_page.robot
Resource    ${CURDIR}/../keywords/pages/product_page.robot

#Resources page
Resource    ${CURDIR}/../keywords/features/cart_feature.robot
Resource    ${CURDIR}/../keywords/features/product_feature.robot

Resource    ${CURDIR}/../keywords/common/common.robot

#Resource locator
Resource    ${CURDIR}/../resources/locators/android/cart_locator.robot
Resource    ${CURDIR}/../resources/locators/android/home_locator.robot
Resource    ${CURDIR}/../resources/locators/android/product_locator.robot