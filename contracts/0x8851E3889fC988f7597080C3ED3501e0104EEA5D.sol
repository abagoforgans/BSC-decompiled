contract main {




// =====================  Runtime code  =====================


address accessWhitelistAddress;
address platformAddress;
uint256 sub_62d00ac3;
address partnerAddress;
uint256 sub_cf2369b5;

function platform() {
    return platformAddress
}

function sub_62d00ac3(?) {
    return sub_62d00ac3
}

function accessWhitelist() {
    return accessWhitelistAddress
}

function partner() {
    return partnerAddress
}

function sub_cf2369b5(?) {
    return sub_cf2369b5
}

function sub_401f4663(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(accessWhitelistAddress)
    staticcall accessWhitelistAddress.0x3af32abf with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Caller not whitelisted'
    partnerAddress = arg1
}

function sub_a293da0f(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(accessWhitelistAddress)
    staticcall accessWhitelistAddress.0x3af32abf with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Caller not whitelisted'
    platformAddress = arg1
}

function updateAccessWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(accessWhitelistAddress)
    staticcall accessWhitelistAddress.0xbb5f747b with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Caller not whitelist admin'
    accessWhitelistAddress = arg1
}

function updateSplit(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(accessWhitelistAddress)
    staticcall accessWhitelistAddress.0x3af32abf with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Caller not whitelisted'
    if arg2 + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg2 + arg1 != 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x7753706c69742070657263656e746167657320617265206e6f7420736574757020636f72726563746c,
                    mem[205 len 23]
    sub_62d00ac3 = arg1
    sub_cf2369b5 = arg2
}

function _fallback() payable {
    if not msg.value / 100:
        call platformAddress with:
             gas gas_remaining wei
    else:
        if sub_62d00ac3 * msg.value / 100 / msg.value / 100 != sub_62d00ac3:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        call platformAddress with:
           value sub_62d00ac3 * msg.value / 100 wei
             gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send split to platform'
    if not return_data.size:
        if not msg.value / 100:
            call partnerAddress with:
                 gas gas_remaining wei
        else:
            if sub_cf2369b5 * msg.value / 100 / msg.value / 100 != sub_cf2369b5:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            call partnerAddress with:
               value sub_cf2369b5 * msg.value / 100 wei
                 gas gas_remaining wei
    else:
        if not msg.value / 100:
            call partnerAddress with:
                 gas gas_remaining wei
        else:
            if sub_cf2369b5 * msg.value / 100 / msg.value / 100 != sub_cf2369b5:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 262 len 31]
            call partnerAddress with:
               value sub_cf2369b5 * msg.value / 100 wei
                 gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send split to partner'
}



}
