contract main {




// =====================  Runtime code  =====================


#
#  - sub_a67fbcdd(?)
#
address owner;
address sub_4ce74859Address;
address sub_c3505005Address;
uint256 totalFee;
uint256 sub_abc05a9d;
mapping of address pairFor;
mapping of address sub_6d400313;
mapping of uint8 stor7;

function pairFor(address arg1) {
    require calldata.size - 4 >= 32
    return pairFor[arg1]
}

function totalFee() {
    return totalFee
}

function sub_4ce74859(?) {
    return sub_4ce74859Address
}

function sub_6d400313(?) {
    require calldata.size - 4 >= 32
    return sub_6d400313[arg1]
}

function owner() {
    return owner
}

function sub_abc05a9d(?) {
    return sub_abc05a9d
}

function sub_c3505005(?) {
    return sub_c3505005Address
}

function sub_f9aebda0(?) {
    require calldata.size - 4 >= 32
    return bool(stor7[arg1])
}

function _fallback() payable {
    revert
}

function changeSigner(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'CHANGE_SIGNER_FORBIDDEN'
    sub_4ce74859Address = arg1
}

function changeDevelopFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'CHANGE_DEVELOP_FEE_FORBIDDEN'
    sub_abc05a9d = arg1
}

function changeDevelopWallet(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'CHANGE_DEVELOP_WALLET_FORBIDDEN'
    sub_c3505005Address = arg1
}

function collectFee() {
    if owner != msg.sender:
        revert with 0, 'FORBIDDEN'
    if not sub_c3505005Address:
        revert with 0, 'SETUP_DEVELOP_WALLET'
    if totalFee <= 0:
        revert with 0, 'NO_FEE'
    call sub_c3505005Address with:
       value totalFee wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 32, 35, code.data[8238 len 35], mem[231 len 29]
    else:
        if not ext_call.success:
            revert with 0, 32, 35, code.data[8238 len 35], mem[ceil32(return_data.size) + 232 len 29]
    ('bool', 'ext_call.success')
    totalFee = 0
}

function paybackTransit(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not pairFor[address(arg1)]:
        revert with 0, 'UNSUPPORT_TOKEN'
    if arg2 <= 0:
        revert with 0, 'INVALID_AMOUNT'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'INVALID_AMOUNT'
    if sub_abc05a9d != msg.value:
        revert with 0, 'FEE_VALUE_INCORRECT'
    if sub_abc05a9d + totalFee < totalFee:
        revert with 0, 'SafeMath: addition overflow'
    totalFee += sub_abc05a9d
    require ext_code.size(arg1)
    call arg1.burn(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Payback(arg2, msg.sender, pairFor[address(arg1)]);
}



}
