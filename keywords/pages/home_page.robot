*** Keywords ***
Select product
    [Arguments]    ${product_name}
    common.Tap element when ready    ${product_name}