contract main {




// =====================  Runtime code  =====================


address stor0;
address _adminAddress;
uint8 stor2; offset 160
address sub_cd4a36dfAddress;
address sub_727bd1eaAddress;
mapping of uint8 stor4;
mapping of uint256 sub_48b01a6e;
mapping of uint256 sub_503ab3b7;

function _admin() {
    return _adminAddress
}

function sub_48b01a6e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_48b01a6e[arg1]
}

function sub_503ab3b7(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_503ab3b7[arg1]
}

function sub_6ecee713(?) {
    return bool(stor2)
}

function sub_727bd1ea(?) {
    return sub_727bd1eaAddress
}

function sub_cd4a36df(?) {
    return sub_cd4a36dfAddress
}

function sub_f27650a7(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor4[arg1])
}

function _fallback() payable {
    revert
}

function toogleSale() {
    require msg.sender == _adminAddress
    if stor2:
        stor2 = 0
    else:
        stor2 = 1
}

function sub_3d03f324(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == _adminAddress
    if not address(arg1):
        revert with 0, 'You must enter a valid address'
    sub_cd4a36dfAddress = address(arg1)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == _adminAddress
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The new owner cannot be a null address'
    _adminAddress = arg1
}

function getLatestPrice() {
    staticcall stor0.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if not ext_call.return_data[32] / 100 * 10^6:
        revert with 0, 18
    return (10^18 / ext_call.return_data[32] / 100 * 10^6)
}

function sub_83fa3298(?) {
    require calldata.size - 4 >= 32
    staticcall stor0.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if not ext_call.return_data[32] / 100 * 10^6:
        revert with 0, 18
    if 10^18 / ext_call.return_data[32] / 100 * 10^6 and arg1 > -1 / 10^18 / ext_call.return_data[32] / 100 * 10^6:
        revert with 0, 17
    return (10^18 / ext_call.return_data[32] / 100 * 10^6 * arg1)
}

function sub_437f284a(?) payable {
    require calldata.size - 4 >= 32
    if bool(stor2) != 1:
        revert with 0, 'Sale closed'
    if sub_503ab3b7[msg.sender] >= 6:
        revert with 0, 'max bipper buyed'
    staticcall stor0.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if not ext_call.return_data[32] / 100 * 10^6:
        revert with 0, 18
    staticcall sub_cd4a36dfAddress.0x9908d347 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 10^18 / ext_call.return_data[32] / 100 * 10^6 and ext_call.return_data[0] > -1 / 10^18 / ext_call.return_data[32] / 100 * 10^6:
        revert with 0, 17
    if msg.value < 10^18 / ext_call.return_data[32] / 100 * 10^6 * ext_call.return_data[0]:
        revert with 0, 'wrong value'
    if msg.value <= 10^18 / ext_call.return_data[32] / 100 * 10^6 * ext_call.return_data[0]:
        call sub_727bd1eaAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if msg.value < 10^18 / ext_call.return_data[32] / 100 * 10^6 * ext_call.return_data[0]:
            revert with 0, 17
        call msg.sender with:
           value msg.value - (10^18 / ext_call.return_data[32] / 100 * 10^6 * ext_call.return_data[0]) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xd9351975: msg.sender, msg.value - (10^18 / ext_call.return_data[32] / 100 * 10^6 * ext_call.return_data[0]), this.address
        call sub_727bd1eaAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
    require ext_code.size(sub_cd4a36dfAddress)
    call sub_cd4a36dfAddress.0x2abd338c with:
         gas gas_remaining wei
        args arg1, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 1 > !sub_503ab3b7[msg.sender]:
        revert with 0, 17
    sub_503ab3b7[msg.sender]++
    if sub_48b01a6e[msg.sender] > !msg.value:
        revert with 0, 17
    sub_48b01a6e[msg.sender] += msg.value
    emit 0xef3ea7a4: msg.sender
}



}
