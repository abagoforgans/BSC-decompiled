contract main {




// =====================  Runtime code  =====================


const sub_3d8b7ee5(?) = 618033988749894848

const sub_7a21649b(?) = 381966011250105152

const sub_9dd1bad7(?) = 98 * 10^16

const sub_a0ac79ea(?) = 2 * 10^16

const k = 191337753576934987

const sub_ea3a4c60(?) = 10^18

const sub_ef975be4(?) = 15 * 10^15

const e = 2718281828459045235


uint8 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
address adminAddress;
address proposedAdminAddress;
uint256 sub_b9a0e074;

function proposedAdmin() payable {
    return proposedAdminAddress
}

function sub_b9a0e074(?) payable {
    return sub_b9a0e074
}

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function sub_413b0147(?) payable {
    return stor0, stor1, stor2, stor3, stor4
}

function sub_eb8e2fbe(?) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'only admin can do this!'
    sub_b9a0e074 = arg1
}

function claimAdministration() payable {
    if proposedAdminAddress != msg.sender:
        revert with 0, 'Not proposed admin.'
    adminAddress = proposedAdminAddress
    proposedAdminAddress = 0
}

function proposeNewAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'only admin can do this!'
    proposedAdminAddress = arg1
}

function init(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'only admin can do this!'
    require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x73cf14bd with:
         gas gas_remaining wei
        args 0, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3feb3fa1(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x1ee08748118e0dc2ccbd48c8a1a2bd261e37517)
    delegate 0x1ee08748118e0dc2ccbd48c8a1a2bd261e37517.0x3d37f8b2 with:
         gas gas_remaining wei
        args 0, arg1, 2718281828459045235
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xa74b0fff with:
         gas gas_remaining wei
        args 0, 15 * 10^15, delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_8c825ce8(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x80ff93e4 with:
         gas gas_remaining wei
        args 0, 191337753576934987, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xa74b0fff with:
         gas gas_remaining wei
        args 0, 15 * 10^15, delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_851a6b0f(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xa74b0fff with:
         gas gas_remaining wei
        args 0, arg1, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0]:
        require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
        delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xea71c720 with:
             gas gas_remaining wei
            args 0, arg2, delegate.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_e14768ed(?) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        return 0
    if not arg2:
        return 0
    require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x80ff93e4 with:
         gas gas_remaining wei
        args 0, arg1, arg3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xea71c720 with:
         gas gas_remaining wei
        args 0, delegate.return_data[0], arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_784eadbc(?) payable {
    require calldata.size - 4 >= 96
    if not arg3:
        return arg1
    require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x80ff93e4 with:
         gas gas_remaining wei
        args 0, arg2, arg3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xa74b0fff with:
         gas gas_remaining wei
        args 0, delegate.return_data[0], stor1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x80ff93e4 with:
         gas gas_remaining wei
        args 0, arg1, delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_e0627ed2(?) payable {
    require calldata.size - 4 >= 32
    if arg1 == 10^18:
        return 206337753576934987
    require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xa74b0fff with:
         gas gas_remaining wei
        args 0, 191337753576934987, 15 * 10^15
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x8c5494df with:
         gas gas_remaining wei
        args 0, 10^18, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x1ee08748118e0dc2ccbd48c8a1a2bd261e37517)
    delegate 0x1ee08748118e0dc2ccbd48c8a1a2bd261e37517.0x3d37f8b2 with:
         gas gas_remaining wei
        args 0, delegate.return_data[0], 2718281828459045235
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x8c5494df with:
         gas gas_remaining wei
        args 0, delegate.return_data[0], delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_96e973f5(?) payable {
    require calldata.size - 4 >= 96
    if not arg3:
        return arg1
    if not arg2:
        return arg1
    require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xa74b0fff with:
         gas gas_remaining wei
        args 0, arg2, stor1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x9972823930d0af54095c546038c7a4d67b3e339b)
    delegate 0x9972823930d0af54095c546038c7a4d67b3e339b.0xf7c99fe with:
         gas gas_remaining wei
        args 0, delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xea71c720 with:
         gas gas_remaining wei
        args 0, delegate.return_data[0], 8760 * 10^18 * 24 * 3600
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x80ff93e4 with:
         gas gas_remaining wei
        args 0, delegate.return_data[0], 10^18 * arg3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x1ee08748118e0dc2ccbd48c8a1a2bd261e37517)
    delegate 0x1ee08748118e0dc2ccbd48c8a1a2bd261e37517.0xb0ed1d3a with:
         gas gas_remaining wei
        args 0, delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x80ff93e4 with:
         gas gas_remaining wei
        args 0, arg1, delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_4fc5f9cc(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xa74b0fff with:
         gas gas_remaining wei
        args 0, arg1, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not delegate.return_data[0]:
        return 15 * 10^15
    require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xea71c720 with:
         gas gas_remaining wei
        args 0, arg2, delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not delegate.return_data[0]:
        return 15 * 10^15
    require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x8c5494df with:
         gas gas_remaining wei
        args 0, delegate.return_data[0], 2 * 10^16
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
    if delegate.return_data[0] < 0:
        delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x80ff93e4 with:
             gas gas_remaining wei
            args 0, 191337753576934987, delegate.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
        delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xa74b0fff with:
             gas gas_remaining wei
            args 0, 15 * 10^15, delegate.return_data[0]
    else:
        delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x8c5494df with:
             gas gas_remaining wei
            args 0, 98 * 10^16, delegate.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
        if delegate.return_data[0] <= 0:
            delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x80ff93e4 with:
                 gas gas_remaining wei
                args 0, 191337753576934987, delegate.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
            delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xa74b0fff with:
                 gas gas_remaining wei
                args 0, 15 * 10^15, delegate.return_data[0]
        else:
            delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x8c5494df with:
                 gas gas_remaining wei
                args 0, delegate.return_data[0], 381966011250105152
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
            if delegate.return_data[0] < 0:
                delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x8c5494df with:
                     gas gas_remaining wei
                    args 0, delegate.return_data[0], 381966011250105152
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if delegate.return_data[0] < 0:
                    require ext_code.size(0x1ee08748118e0dc2ccbd48c8a1a2bd261e37517)
                    delegate 0x1ee08748118e0dc2ccbd48c8a1a2bd261e37517.0x3d37f8b2 with:
                         gas gas_remaining wei
                        args 0, delegate.return_data[0], 2718281828459045235
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xa74b0fff with:
                         gas gas_remaining wei
                        args 0, 15 * 10^15, delegate.return_data[0]
                else:
                    if delegate.return_data[0] == 10^18:
                        return 206337753576934987
                    require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xa74b0fff with:
                         gas gas_remaining wei
                        args 0, 191337753576934987, 15 * 10^15
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x8c5494df with:
                         gas gas_remaining wei
                        args 0, 10^18, delegate.return_data[0]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0x1ee08748118e0dc2ccbd48c8a1a2bd261e37517)
                    delegate 0x1ee08748118e0dc2ccbd48c8a1a2bd261e37517.0x3d37f8b2 with:
                         gas gas_remaining wei
                        args 0, delegate.return_data[0], 2718281828459045235
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x8c5494df with:
                         gas gas_remaining wei
                        args 0, delegate.return_data[0], delegate.return_data[0]
            else:
                delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x8c5494df with:
                     gas gas_remaining wei
                    args 0, 618033988749894848, delegate.return_data[0]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                if delegate.return_data[0] > 0:
                    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x80ff93e4 with:
                         gas gas_remaining wei
                        args 0, 191337753576934987, delegate.return_data[0]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xa74b0fff with:
                         gas gas_remaining wei
                        args 0, 15 * 10^15, delegate.return_data[0]
                else:
                    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x8c5494df with:
                         gas gas_remaining wei
                        args 0, delegate.return_data[0], 381966011250105152
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if delegate.return_data[0] < 0:
                        require ext_code.size(0x1ee08748118e0dc2ccbd48c8a1a2bd261e37517)
                        delegate 0x1ee08748118e0dc2ccbd48c8a1a2bd261e37517.0x3d37f8b2 with:
                             gas gas_remaining wei
                            args 0, delegate.return_data[0], 2718281828459045235
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                        delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xa74b0fff with:
                             gas gas_remaining wei
                            args 0, 15 * 10^15, delegate.return_data[0]
                    else:
                        if delegate.return_data[0] == 10^18:
                            return 206337753576934987
                        require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                        delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xa74b0fff with:
                             gas gas_remaining wei
                            args 0, 191337753576934987, 15 * 10^15
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                        delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x8c5494df with:
                             gas gas_remaining wei
                            args 0, 10^18, delegate.return_data[0]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0x1ee08748118e0dc2ccbd48c8a1a2bd261e37517)
                        delegate 0x1ee08748118e0dc2ccbd48c8a1a2bd261e37517.0x3d37f8b2 with:
                             gas gas_remaining wei
                            args 0, delegate.return_data[0], 2718281828459045235
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                        delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x8c5494df with:
                             gas gas_remaining wei
                            args 0, delegate.return_data[0], delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_7e91308c(?) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xa74b0fff with:
         gas gas_remaining wei
        args 0, arg2, arg3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
    if not delegate.return_data[0]:
        delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x80ff93e4 with:
             gas gas_remaining wei
            args 0, 15 * 10^15, arg4
    else:
        delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xea71c720 with:
             gas gas_remaining wei
            args 0, arg3, delegate.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
        if not delegate.return_data[0]:
            delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x80ff93e4 with:
                 gas gas_remaining wei
                args 0, 15 * 10^15, arg4
        else:
            delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x8c5494df with:
                 gas gas_remaining wei
                args 0, delegate.return_data[0], 2 * 10^16
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
            if delegate.return_data[0] < 0:
                delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x80ff93e4 with:
                     gas gas_remaining wei
                    args 0, 191337753576934987, delegate.return_data[0]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xa74b0fff with:
                     gas gas_remaining wei
                    args 0, 15 * 10^15, delegate.return_data[0]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x80ff93e4 with:
                     gas gas_remaining wei
                    args 0, delegate.return_data[0], arg4
            else:
                delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x8c5494df with:
                     gas gas_remaining wei
                    args 0, 98 * 10^16, delegate.return_data[0]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                if delegate.return_data[0] <= 0:
                    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x80ff93e4 with:
                         gas gas_remaining wei
                        args 0, 191337753576934987, delegate.return_data[0]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xa74b0fff with:
                         gas gas_remaining wei
                        args 0, 15 * 10^15, delegate.return_data[0]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x80ff93e4 with:
                         gas gas_remaining wei
                        args 0, delegate.return_data[0], arg4
                else:
                    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x8c5494df with:
                         gas gas_remaining wei
                        args 0, delegate.return_data[0], 381966011250105152
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                    if delegate.return_data[0] < 0:
                        delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x8c5494df with:
                             gas gas_remaining wei
                            args 0, delegate.return_data[0], 381966011250105152
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if delegate.return_data[0] < 0:
                            require ext_code.size(0x1ee08748118e0dc2ccbd48c8a1a2bd261e37517)
                            delegate 0x1ee08748118e0dc2ccbd48c8a1a2bd261e37517.0x3d37f8b2 with:
                                 gas gas_remaining wei
                                args 0, delegate.return_data[0], 2718281828459045235
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                            delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xa74b0fff with:
                                 gas gas_remaining wei
                                args 0, 15 * 10^15, delegate.return_data[0]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                            delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x80ff93e4 with:
                                 gas gas_remaining wei
                                args 0, delegate.return_data[0], arg4
                        else:
                            require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                            if delegate.return_data[0] == 10^18:
                                delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x80ff93e4 with:
                                     gas gas_remaining wei
                                    args 0, 206337753576934987, arg4
                            else:
                                delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xa74b0fff with:
                                     gas gas_remaining wei
                                    args 0, 191337753576934987, 15 * 10^15
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                                delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x8c5494df with:
                                     gas gas_remaining wei
                                    args 0, 10^18, delegate.return_data[0]
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0x1ee08748118e0dc2ccbd48c8a1a2bd261e37517)
                                delegate 0x1ee08748118e0dc2ccbd48c8a1a2bd261e37517.0x3d37f8b2 with:
                                     gas gas_remaining wei
                                    args 0, delegate.return_data[0], 2718281828459045235
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                                delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x8c5494df with:
                                     gas gas_remaining wei
                                    args 0, delegate.return_data[0], delegate.return_data[0]
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                                delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x80ff93e4 with:
                                     gas gas_remaining wei
                                    args 0, delegate.return_data[0], arg4
                    else:
                        delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x8c5494df with:
                             gas gas_remaining wei
                            args 0, 618033988749894848, delegate.return_data[0]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                        if delegate.return_data[0] > 0:
                            delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x80ff93e4 with:
                                 gas gas_remaining wei
                                args 0, 191337753576934987, delegate.return_data[0]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                            delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xa74b0fff with:
                                 gas gas_remaining wei
                                args 0, 15 * 10^15, delegate.return_data[0]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                            delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x80ff93e4 with:
                                 gas gas_remaining wei
                                args 0, delegate.return_data[0], arg4
                        else:
                            delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x8c5494df with:
                                 gas gas_remaining wei
                                args 0, delegate.return_data[0], 381966011250105152
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if delegate.return_data[0] < 0:
                                require ext_code.size(0x1ee08748118e0dc2ccbd48c8a1a2bd261e37517)
                                delegate 0x1ee08748118e0dc2ccbd48c8a1a2bd261e37517.0x3d37f8b2 with:
                                     gas gas_remaining wei
                                    args 0, delegate.return_data[0], 2718281828459045235
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                                delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xa74b0fff with:
                                     gas gas_remaining wei
                                    args 0, 15 * 10^15, delegate.return_data[0]
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                                delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x80ff93e4 with:
                                     gas gas_remaining wei
                                    args 0, delegate.return_data[0], arg4
                            else:
                                require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                                if delegate.return_data[0] == 10^18:
                                    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x80ff93e4 with:
                                         gas gas_remaining wei
                                        args 0, 206337753576934987, arg4
                                else:
                                    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xa74b0fff with:
                                         gas gas_remaining wei
                                        args 0, 191337753576934987, 15 * 10^15
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                                    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x8c5494df with:
                                         gas gas_remaining wei
                                        args 0, 10^18, delegate.return_data[0]
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(0x1ee08748118e0dc2ccbd48c8a1a2bd261e37517)
                                    delegate 0x1ee08748118e0dc2ccbd48c8a1a2bd261e37517.0x3d37f8b2 with:
                                         gas gas_remaining wei
                                        args 0, delegate.return_data[0], 2718281828459045235
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                                    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x8c5494df with:
                                         gas gas_remaining wei
                                        args 0, delegate.return_data[0], delegate.return_data[0]
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                                    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x80ff93e4 with:
                                         gas gas_remaining wei
                                        args 0, delegate.return_data[0], arg4
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x80ff93e4 with:
         gas gas_remaining wei
        args 0, arg3, sub_b9a0e074
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x80ff93e4 with:
         gas gas_remaining wei
        args 0, delegate.return_data[0], delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xa74b0fff with:
         gas gas_remaining wei
        args 0, arg1, delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_a1d77967(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xa74b0fff with:
         gas gas_remaining wei
        args 0, arg1, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
    if not delegate.return_data[0]:
        delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xa74b0fff with:
             gas gas_remaining wei
            args 0, arg1, arg2
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
        if delegate.return_data[0]:
            delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xea71c720 with:
                 gas gas_remaining wei
                args 0, arg2, delegate.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x80ff93e4 with:
             gas gas_remaining wei
            args 0, 15 * 10^15, delegate.return_data[0]
    else:
        delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xea71c720 with:
             gas gas_remaining wei
            args 0, arg2, delegate.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
        if not delegate.return_data[0]:
            delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xa74b0fff with:
                 gas gas_remaining wei
                args 0, arg1, arg2
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
            if delegate.return_data[0]:
                delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xea71c720 with:
                     gas gas_remaining wei
                    args 0, arg2, delegate.return_data[0]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x80ff93e4 with:
                 gas gas_remaining wei
                args 0, 15 * 10^15, delegate.return_data[0]
        else:
            delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x8c5494df with:
                 gas gas_remaining wei
                args 0, delegate.return_data[0], 2 * 10^16
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
            if delegate.return_data[0] < 0:
                delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x80ff93e4 with:
                     gas gas_remaining wei
                    args 0, 191337753576934987, delegate.return_data[0]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xa74b0fff with:
                     gas gas_remaining wei
                    args 0, 15 * 10^15, delegate.return_data[0]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xa74b0fff with:
                     gas gas_remaining wei
                    args 0, arg1, arg2
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                if delegate.return_data[0]:
                    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xea71c720 with:
                         gas gas_remaining wei
                        args 0, arg2, delegate.return_data[0]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x80ff93e4 with:
                     gas gas_remaining wei
                    args 0, delegate.return_data[0], delegate.return_data[0]
            else:
                delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x8c5494df with:
                     gas gas_remaining wei
                    args 0, 98 * 10^16, delegate.return_data[0]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                if delegate.return_data[0] <= 0:
                    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x80ff93e4 with:
                         gas gas_remaining wei
                        args 0, 191337753576934987, delegate.return_data[0]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xa74b0fff with:
                         gas gas_remaining wei
                        args 0, 15 * 10^15, delegate.return_data[0]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xa74b0fff with:
                         gas gas_remaining wei
                        args 0, arg1, arg2
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                    if delegate.return_data[0]:
                        delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xea71c720 with:
                             gas gas_remaining wei
                            args 0, arg2, delegate.return_data[0]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x80ff93e4 with:
                         gas gas_remaining wei
                        args 0, delegate.return_data[0], delegate.return_data[0]
                else:
                    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x8c5494df with:
                         gas gas_remaining wei
                        args 0, delegate.return_data[0], 381966011250105152
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                    if delegate.return_data[0] < 0:
                        delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x8c5494df with:
                             gas gas_remaining wei
                            args 0, delegate.return_data[0], 381966011250105152
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if delegate.return_data[0] < 0:
                            require ext_code.size(0x1ee08748118e0dc2ccbd48c8a1a2bd261e37517)
                            delegate 0x1ee08748118e0dc2ccbd48c8a1a2bd261e37517.0x3d37f8b2 with:
                                 gas gas_remaining wei
                                args 0, delegate.return_data[0], 2718281828459045235
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                            delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xa74b0fff with:
                                 gas gas_remaining wei
                                args 0, 15 * 10^15, delegate.return_data[0]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                            delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xa74b0fff with:
                                 gas gas_remaining wei
                                args 0, arg1, arg2
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                            if delegate.return_data[0]:
                                delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xea71c720 with:
                                     gas gas_remaining wei
                                    args 0, arg2, delegate.return_data[0]
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x80ff93e4 with:
                                 gas gas_remaining wei
                                args 0, delegate.return_data[0], delegate.return_data[0]
                        else:
                            require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                            if delegate.return_data[0] == 10^18:
                                delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xa74b0fff with:
                                     gas gas_remaining wei
                                    args 0, arg1, arg2
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                                if delegate.return_data[0]:
                                    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xea71c720 with:
                                         gas gas_remaining wei
                                        args 0, arg2, delegate.return_data[0]
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x80ff93e4 with:
                                     gas gas_remaining wei
                                    args 0, 206337753576934987, delegate.return_data[0]
                            else:
                                delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xa74b0fff with:
                                     gas gas_remaining wei
                                    args 0, 191337753576934987, 15 * 10^15
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                                delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x8c5494df with:
                                     gas gas_remaining wei
                                    args 0, 10^18, delegate.return_data[0]
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0x1ee08748118e0dc2ccbd48c8a1a2bd261e37517)
                                delegate 0x1ee08748118e0dc2ccbd48c8a1a2bd261e37517.0x3d37f8b2 with:
                                     gas gas_remaining wei
                                    args 0, delegate.return_data[0], 2718281828459045235
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                                delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x8c5494df with:
                                     gas gas_remaining wei
                                    args 0, delegate.return_data[0], delegate.return_data[0]
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                                delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xa74b0fff with:
                                     gas gas_remaining wei
                                    args 0, arg1, arg2
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                                if delegate.return_data[0]:
                                    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xea71c720 with:
                                         gas gas_remaining wei
                                        args 0, arg2, delegate.return_data[0]
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x80ff93e4 with:
                                     gas gas_remaining wei
                                    args 0, delegate.return_data[0], delegate.return_data[0]
                    else:
                        delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x8c5494df with:
                             gas gas_remaining wei
                            args 0, 618033988749894848, delegate.return_data[0]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                        if delegate.return_data[0] > 0:
                            delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x80ff93e4 with:
                                 gas gas_remaining wei
                                args 0, 191337753576934987, delegate.return_data[0]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                            delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xa74b0fff with:
                                 gas gas_remaining wei
                                args 0, 15 * 10^15, delegate.return_data[0]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                            delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xa74b0fff with:
                                 gas gas_remaining wei
                                args 0, arg1, arg2
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                            if delegate.return_data[0]:
                                delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xea71c720 with:
                                     gas gas_remaining wei
                                    args 0, arg2, delegate.return_data[0]
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x80ff93e4 with:
                                 gas gas_remaining wei
                                args 0, delegate.return_data[0], delegate.return_data[0]
                        else:
                            delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x8c5494df with:
                                 gas gas_remaining wei
                                args 0, delegate.return_data[0], 381966011250105152
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if delegate.return_data[0] < 0:
                                require ext_code.size(0x1ee08748118e0dc2ccbd48c8a1a2bd261e37517)
                                delegate 0x1ee08748118e0dc2ccbd48c8a1a2bd261e37517.0x3d37f8b2 with:
                                     gas gas_remaining wei
                                    args 0, delegate.return_data[0], 2718281828459045235
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                                delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xa74b0fff with:
                                     gas gas_remaining wei
                                    args 0, 15 * 10^15, delegate.return_data[0]
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                                delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xa74b0fff with:
                                     gas gas_remaining wei
                                    args 0, arg1, arg2
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                                if delegate.return_data[0]:
                                    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xea71c720 with:
                                         gas gas_remaining wei
                                        args 0, arg2, delegate.return_data[0]
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x80ff93e4 with:
                                     gas gas_remaining wei
                                    args 0, delegate.return_data[0], delegate.return_data[0]
                            else:
                                require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                                if delegate.return_data[0] == 10^18:
                                    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xa74b0fff with:
                                         gas gas_remaining wei
                                        args 0, arg1, arg2
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                                    if delegate.return_data[0]:
                                        delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xea71c720 with:
                                             gas gas_remaining wei
                                            args 0, arg2, delegate.return_data[0]
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x80ff93e4 with:
                                         gas gas_remaining wei
                                        args 0, 206337753576934987, delegate.return_data[0]
                                else:
                                    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xa74b0fff with:
                                         gas gas_remaining wei
                                        args 0, 191337753576934987, 15 * 10^15
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                                    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x8c5494df with:
                                         gas gas_remaining wei
                                        args 0, 10^18, delegate.return_data[0]
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(0x1ee08748118e0dc2ccbd48c8a1a2bd261e37517)
                                    delegate 0x1ee08748118e0dc2ccbd48c8a1a2bd261e37517.0x3d37f8b2 with:
                                         gas gas_remaining wei
                                        args 0, delegate.return_data[0], 2718281828459045235
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                                    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x8c5494df with:
                                         gas gas_remaining wei
                                        args 0, delegate.return_data[0], delegate.return_data[0]
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                                    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xa74b0fff with:
                                         gas gas_remaining wei
                                        args 0, arg1, arg2
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
                                    if delegate.return_data[0]:
                                        delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0xea71c720 with:
                                             gas gas_remaining wei
                                            args 0, arg2, delegate.return_data[0]
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x80ff93e4 with:
                                         gas gas_remaining wei
                                        args 0, delegate.return_data[0], delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x8c5494df with:
         gas gas_remaining wei
        args 0, 10^18, sub_b9a0e074
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xfe35fabbdfefffd6309bb62248172a531ba90db6)
    delegate 0xfe35fabbdfefffd6309bb62248172a531ba90db6.0x80ff93e4 with:
         gas gas_remaining wei
        args 0, delegate.return_data[0], delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}



}
