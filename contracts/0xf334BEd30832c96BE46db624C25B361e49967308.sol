contract main {




// =====================  Runtime code  =====================


address stor0;
address sub_d049f351Address;
address sub_9a92c31fAddress;
address sub_f4aec2d1Address;
address sub_65a89a93Address;
address sub_5465dfdeAddress;
address sub_2f9525f7Address;
address sub_987efc80Address;
address sub_68327b41Address;
address sub_8fe910c4Address;
address sub_2f0d71c7Address;
uint256 stor11;

function sub_2f0d71c7(?) payable {
    return sub_2f0d71c7Address
}

function sub_2f9525f7(?) payable {
    return sub_2f9525f7Address
}

function sub_5465dfde(?) payable {
    return sub_5465dfdeAddress
}

function sub_65a89a93(?) payable {
    return sub_65a89a93Address
}

function sub_68327b41(?) payable {
    return sub_68327b41Address
}

function sub_8fe910c4(?) payable {
    return sub_8fe910c4Address
}

function sub_987efc80(?) payable {
    return sub_987efc80Address
}

function sub_9a92c31f(?) payable {
    return sub_9a92c31fAddress
}

function sub_d049f351(?) payable {
    return sub_d049f351Address
}

function sub_f4aec2d1(?) payable {
    return sub_f4aec2d1Address
}

function _fallback() payable {
    revert
}

function migrate(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor11:
        require ext_code.size(sub_d049f351Address)
        call sub_d049f351Address.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        stor11++
        return sub_d049f351Address
    if stor11 == 1:
        require ext_code.size(sub_9a92c31fAddress)
        call sub_9a92c31fAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        stor11++
        return sub_9a92c31fAddress
    if stor11 == 2:
        require ext_code.size(sub_f4aec2d1Address)
        call sub_f4aec2d1Address.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        stor11++
        return sub_f4aec2d1Address
    if stor11 == 3:
        require ext_code.size(sub_65a89a93Address)
        call sub_65a89a93Address.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        stor11++
        return sub_65a89a93Address
    if stor11 == 4:
        require ext_code.size(sub_5465dfdeAddress)
        call sub_5465dfdeAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        stor11++
        return sub_5465dfdeAddress
    if stor11 == 5:
        require ext_code.size(sub_2f9525f7Address)
        call sub_2f9525f7Address.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        stor11++
        return sub_2f9525f7Address
    if stor11 == 6:
        require ext_code.size(sub_987efc80Address)
        call sub_987efc80Address.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        stor11++
        return sub_987efc80Address
    if stor11 == 7:
        require ext_code.size(sub_68327b41Address)
        call sub_68327b41Address.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        stor11++
        return sub_68327b41Address
    if stor11 != 8:
        require ext_code.size(sub_2f0d71c7Address)
        call sub_2f0d71c7Address.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        stor11++
        return sub_2f0d71c7Address
    require ext_code.size(sub_8fe910c4Address)
    call sub_8fe910c4Address.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor11++
    return sub_8fe910c4Address
}



}
