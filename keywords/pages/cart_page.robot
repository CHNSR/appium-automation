*** Keywords ***
Tap add to cart button
    common.Tap element when ready   ${cart_locator.add_to_cart_btn}    ${time.delay_time}

Tap to open cart
    common.Tap element when ready    ${cart_locator.cart_btn}     ${time.delay_time}

Check items in cart
    ${item_count}=  common.Get text when ready   ${cart_locator.display_items_count}
    log to console    Current item count is: ${item_count}
    should be equal as numbers    ${item_count}    ${product.num_of_product}