contract main {




// =====================  Runtime code  =====================


#
#  - verificationRequest(address arg1, bytes32 arg2, string arg3, string arg4)
#
mapping of address stor5;
address owner;
address stor7;
uint256 sub_96adca47;
uint256 sub_22474a27;
uint256 sub_6c0f496a;
array of uint256 baseURL;
mapping of address requesters;
address marketDepositsAddress;

function sub_22474a27(?) {
    return sub_22474a27
}

function baseURL() {
    return baseURL[0 len baseURL.length]
}

function sub_6c0f496a(?) {
    return sub_6c0f496a
}

function marketDeposits() {
    return marketDepositsAddress
}

function owner() {
    return owner
}

function sub_96adca47(?) {
    return sub_96adca47
}

function requesters(bytes32 arg1) {
    return requesters[arg1]
}

function _fallback() payable {
    revert
}

function sub_19dfeb14(?) {
    require msg.sender == owner
    sub_6c0f496a = arg1
}

function sub_5ba13c97(?) {
    require msg.sender == owner
    sub_22474a27 = arg1
}

function sub_e6f87a93(?) {
    require msg.sender == owner
    sub_96adca47 = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function cancelRequest(bytes32 arg1, uint256 arg2, bytes4 arg3, uint256 arg4) {
    require msg.sender == owner
    stor5[arg1] = 0
    emit ChainlinkCancelled(arg1);
    require ext_code.size(stor5[arg1])
    call stor5[arg1].0x6ee4d553 with:
         gas gas_remaining wei
        args 0, uint32(arg1), arg2, Mask(32, 224, arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b22e7f23(?) {
    if not stor7:
        return 10^18
    require ext_code.size(stor7)
    call stor7.latestAnswer() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_6c0f496a:
        if ext_call.return_data[0]:
            return (0 / ext_call.return_data[0])
    else:
        if sub_6c0f496a:
            if sub_6c0f496a * sub_96adca47 / sub_6c0f496a == sub_96adca47:
                if not sub_6c0f496a * sub_96adca47:
                    if ext_call.return_data[0]:
                        return (0 / ext_call.return_data[0])
                else:
                    if sub_6c0f496a * sub_96adca47:
                        if 10^18 * sub_6c0f496a * sub_96adca47 / sub_6c0f496a * sub_96adca47 == 10^18:
                            if ext_call.return_data[0]:
                                return (10^18 * sub_6c0f496a * sub_96adca47 / ext_call.return_data[0])
    revert
}

function getOraclePayment() {
    if not stor7:
        return 10^18
    require ext_code.size(stor7)
    call stor7.latestAnswer() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_22474a27:
        if ext_call.return_data[0]:
            return (0 / ext_call.return_data[0])
    else:
        if sub_22474a27:
            if sub_22474a27 * sub_96adca47 / sub_22474a27 == sub_96adca47:
                if not sub_22474a27 * sub_96adca47:
                    if ext_call.return_data[0]:
                        return (0 / ext_call.return_data[0])
                else:
                    if sub_22474a27 * sub_96adca47:
                        if 10^18 * sub_22474a27 * sub_96adca47 / sub_22474a27 * sub_96adca47 == 10^18:
                            if ext_call.return_data[0]:
                                return (10^18 * sub_22474a27 * sub_96adca47 / ext_call.return_data[0])
    revert
}

function fulfill(bytes32 arg1, bytes32 arg2) {
    if stor5[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Source must be the oracle of the request'
    stor5[arg1] = 0
    emit ChainlinkFulfilled(arg1);
    if not stor7:
        require ext_code.size(marketDepositsAddress)
        call marketDepositsAddress.0x791c27ef with:
             gas gas_remaining wei
            args requesters[arg1], 0, 10^18
    else:
        require ext_code.size(stor7)
        call stor7.latestAnswer() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not sub_6c0f496a:
            require ext_call.return_data[0]
            require ext_code.size(marketDepositsAddress)
            call marketDepositsAddress.0x791c27ef with:
                 gas gas_remaining wei
                args requesters[arg1], 0, 0 / ext_call.return_data[0]
        else:
            require sub_6c0f496a
            require sub_6c0f496a * sub_96adca47 / sub_6c0f496a == sub_96adca47
            if not sub_6c0f496a * sub_96adca47:
                require ext_call.return_data[0]
                require ext_code.size(marketDepositsAddress)
                call marketDepositsAddress.0x791c27ef with:
                     gas gas_remaining wei
                    args requesters[arg1], 0, 0 / ext_call.return_data[0]
            else:
                require sub_6c0f496a * sub_96adca47
                require 10^18 * sub_6c0f496a * sub_96adca47 / sub_6c0f496a * sub_96adca47 == 10^18
                require ext_call.return_data[0]
                require ext_code.size(marketDepositsAddress)
                call marketDepositsAddress.0x791c27ef with:
                     gas gas_remaining wei
                    args requesters[arg1], 0, 10^18 * sub_6c0f496a * sub_96adca47 / ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    requesters[arg1] = 0
    emit 0x8470c57a: arg2, msg.sender
}



}
