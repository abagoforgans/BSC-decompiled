contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address tokenAddress;
address vaultWalletAddress;
uint256 startSale;
uint256 isActive;

function isActive() {
    return isActive
}

function vaultWallet() {
    return vaultWalletAddress
}

function owner() {
    return owner
}

function startSale() {
    return startSale
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function sub_eff0c6ac(?) {
    require msg.sender == owner
    isActive = arg1
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

function getLatestPrice() {
    require ext_code.size(stor1)
    call stor1.latestRoundData() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    return ext_call.return_data[32]
}

function buy() payable {
    if not isActive:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Bought(0);
    if isActive != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The BCA DEXContract is inactive by owner'
    if msg.value <= 0:
        revert with 0, 'You need to send some BNB'
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    call stor1.latestRoundData() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if not msg.value:
        revert with 0, 'Please send more BNB'
    require msg.value
    require 10^10 * msg.value * ext_call.return_data[32] / msg.value == 10^10 * ext_call.return_data[32]
    if 10^10 * msg.value * ext_call.return_data[32] < 100 * 10^18:
        revert with 0, 'Please send more BNB'
    if block.timestamp <= startSale + (2160 * 24 * 3600):
        if not msg.value:
            if 0 > ext_call.return_data[0]:
                revert with 0, 'Don't have BCA in Dex reserve...'
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            call vaultWalletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Bought(0);
        else:
            require msg.value
            require msg.value * 10^10 * ext_call.return_data[32] / 1028 * 10^15 / msg.value == 10^10 * ext_call.return_data[32] / 1028 * 10^15
            if msg.value * 10^10 * ext_call.return_data[32] / 1028 * 10^15 > ext_call.return_data[0]:
                revert with 0, 'Don't have BCA in Dex reserve...'
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, msg.value * 10^10 * ext_call.return_data[32] / 1028 * 10^15
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            call vaultWalletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Bought((msg.value * 10^10 * ext_call.return_data[32] / 1028 * 10^15));
    else:
        if block.timestamp > startSale + (4368 * 24 * 3600):
            if not msg.value:
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'Don't have BCA in Dex reserve...'
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                call vaultWalletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Bought(0);
            else:
                require msg.value
                require msg.value * 10^10 * ext_call.return_data[32] / 11 * 10^17 / msg.value == 10^10 * ext_call.return_data[32] / 11 * 10^17
                if msg.value * 10^10 * ext_call.return_data[32] / 11 * 10^17 > ext_call.return_data[0]:
                    revert with 0, 'Don't have BCA in Dex reserve...'
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, msg.value * 10^10 * ext_call.return_data[32] / 11 * 10^17
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                call vaultWalletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Bought((msg.value * 10^10 * ext_call.return_data[32] / 11 * 10^17));
        else:
            if not msg.value:
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'Don't have BCA in Dex reserve...'
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                call vaultWalletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Bought(0);
            else:
                require msg.value
                require msg.value * 10^10 * ext_call.return_data[32] / 104762 * 10^13 / msg.value == 10^10 * ext_call.return_data[32] / 104762 * 10^13
                if msg.value * 10^10 * ext_call.return_data[32] / 104762 * 10^13 > ext_call.return_data[0]:
                    revert with 0, 'Don't have BCA in Dex reserve...'
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, msg.value * 10^10 * ext_call.return_data[32] / 104762 * 10^13
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                call vaultWalletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Bought((msg.value * 10^10 * ext_call.return_data[32] / 104762 * 10^13));
}



}
