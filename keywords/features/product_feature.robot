*** Keywords ***
Add product to cart
    [Argument]    ${product_color}
    product_page.Select color    ${product_color}
    product_page.Tap add to cart button    ${product_locator.add_button} 