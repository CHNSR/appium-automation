*** Keywords ***
Select color
    [Argument]    ${color_locator}
    common.Tap element when ready    ${color_locator}

Tap add to cart button
    common.Tap element when ready    ${product_locator.add_button}