contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_fcd71207(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg1))
    staticcall address(arg1).curve() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        return 0
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    if ext_call.return_data[0] < 10^18:
        staticcall address(ext_call.return_data[0]).0x36a1bbbd with:
                gas gas_remaining wei
               args address(arg1), 10^18, address(arg2)
    else:
        if arg3:
            staticcall address(ext_call.return_data[0]).0x36a1bbbd with:
                    gas gas_remaining wei
                   args address(arg1), arg3, address(arg2)
        else:
            staticcall address(ext_call.return_data[0]).0x831e81a4 with:
                    gas gas_remaining wei
                   args address(arg1), address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_5b127516(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg1))
    staticcall address(arg1).curve() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20]:
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if not arg3:
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x86855643 with:
                        gas gas_remaining wei
                       args address(arg1), 0, address(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return ext_call.return_data[0]
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            if arg3 > ext_call.return_data[0]:
                staticcall address(ext_call.return_data[0]).0x86855643 with:
                        gas gas_remaining wei
                       args address(arg1), 0, address(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return ext_call.return_data[0]
            staticcall address(ext_call.return_data[0]).0x86855643 with:
                    gas gas_remaining wei
                   args address(arg1), arg3, address(arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x86855643 with:
                    gas gas_remaining wei
                   args address(arg1), 0, address(arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 17
            else:
                return 0
        else:
            return 0
    else:
        return 0
}



}
