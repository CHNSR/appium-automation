*** Keywords ***
Tap to open cart
    common.Tap element when ready    ${cart_locator.cart_btn}     ${time.delay_time}

Check items in cart
    ${amount_text}=  common.Get text when ready   ${cart_locator.display_amount}
    ${amount_int}=    BuiltIn.Convert to integer    ${amount_text}
    BuiltIn.should be equal as numbers    ${amount_int}    ${test_data_1.product.amount}