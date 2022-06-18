contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address _owner;
uint256 sub_8d2b2abd;
uint256 sub_efd2089c;

function sub_2296c200(?) {
    return bool(uint8(stor0.field_160))
}

function sub_28bf333f(?) {
    return sub_efd2089c
}

function sub_8d2b2abd(?) {
    return sub_8d2b2abd
}

function _owner() {
    return _owner
}

function sub_efd2089c(?) {
    return sub_efd2089c
}

function _fallback() payable {
    revert
}

function stopContract() {
    if _owner != msg.sender:
        revert with 0, 'Permission denied'
    Mask(96, 0, stor0.field_160) = Mask(96, 0, not uint8(stor0.field_160))
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, 'Permission denied'
    if arg1:
        _owner = arg1
}

function sub_4aa45ebb(?) {
    require calldata.size - 4 >= 32
    if not arg1:
        return 0
    require sub_efd2089c * arg1 / arg1 == sub_efd2089c
    return (sub_efd2089c * arg1 / 10^12)
}

function sub_34e1d900(?) {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, 'Permission denied'
    if uint8(stor0.field_160):
        revert with 0, 'The contract has been suspended'
    sub_efd2089c = arg1
}

function sub_1d4a38ac(?) {
    require calldata.size - 4 >= 32
    require sub_efd2089c
    if not arg1 / sub_efd2089c:
        return 0
    require 10^12 * arg1 / sub_efd2089c / arg1 / sub_efd2089c == 10^12
    return (10^12 * arg1 / sub_efd2089c)
}

function sub_595a2127(?) {
    if _owner != msg.sender:
        revert with 0, 'Permission denied'
    if uint8(stor0.field_160):
        revert with 0, 'The contract has been suspended'
    require ext_code.size(0x89aefab91c5ce2d0534b31c711ba1633c7bf2f6)
    staticcall 0x89aefab91c5ce2d0534b31c711ba1633c7bf2f6.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x89aefab91c5ce2d0534b31c711ba1633c7bf2f6)
    call 0x089aefab91c5ce2d0534b31c711ba1633c7bf2f6.0xa9059cbb with:
         gas gas_remaining wei
        args _owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_42304d08(?) {
    require calldata.size - 4 >= 32
    if uint8(stor0.field_160):
        revert with 0, 'The contract has been suspended'
    if arg1 < 10^18:
        revert with 0, 'Not enough input'
    require sub_efd2089c
    if not arg1 / sub_efd2089c:
        require ext_code.size(0x89aefab91c5ce2d0534b31c711ba1633c7bf2f6)
        staticcall 0x89aefab91c5ce2d0534b31c711ba1633c7bf2f6.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 0:
            revert with 0, 'balance is not enough'
        require arg1 + sub_8d2b2abd >= sub_8d2b2abd
        sub_8d2b2abd += arg1
        require ext_code.size(0x55d398326f99059ff775485246999027b3197955)
        call 0x55d398326f99059ff775485246999027b3197955.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x55d398326f99059ff775485246999027b3197955)
        call 0x55d398326f99059ff775485246999027b3197955.0xa9059cbb with:
             gas gas_remaining wei
            args _owner, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x89aefab91c5ce2d0534b31c711ba1633c7bf2f6)
        call 0x089aefab91c5ce2d0534b31c711ba1633c7bf2f6.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0
    else:
        require 10^12 * arg1 / sub_efd2089c / arg1 / sub_efd2089c == 10^12
        require ext_code.size(0x89aefab91c5ce2d0534b31c711ba1633c7bf2f6)
        staticcall 0x89aefab91c5ce2d0534b31c711ba1633c7bf2f6.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 10^12 * arg1 / sub_efd2089c:
            revert with 0, 'balance is not enough'
        require arg1 + sub_8d2b2abd >= sub_8d2b2abd
        sub_8d2b2abd += arg1
        require ext_code.size(0x55d398326f99059ff775485246999027b3197955)
        call 0x55d398326f99059ff775485246999027b3197955.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x55d398326f99059ff775485246999027b3197955)
        call 0x55d398326f99059ff775485246999027b3197955.0xa9059cbb with:
             gas gas_remaining wei
            args _owner, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x89aefab91c5ce2d0534b31c711ba1633c7bf2f6)
        call 0x089aefab91c5ce2d0534b31c711ba1633c7bf2f6.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 10^12 * arg1 / sub_efd2089c
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
