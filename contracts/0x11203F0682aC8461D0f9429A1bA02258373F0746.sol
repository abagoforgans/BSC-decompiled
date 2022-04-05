contract main {




// =====================  Runtime code  =====================


const balanceETH = eth.balance(this.address)


address owner;
address tokenAddress;
uint256 rate;

function rate() {
    return rate
}

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function updateRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 <= 0:
        revert with 0, 'INSUFFICIENT_INPUT_RATE'
    rate = arg1
}

function sub_36e08045(?) {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdrawETH(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 <= 0:
        revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
    if eth.balance(this.address) < arg1:
        revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit WithdrawETH(arg1);
}

function sub_362695f0(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 <= 0:
        revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
    if arg1:
        mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, arg1) >> 32
        call tokenAddress with:
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 224, mem[324 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 0, 'TRANSFER_FAILED'
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 'TRANSFER_FAILED'
    emit 0x22b793b7: tokenAddress, arg1
}

function buyTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    require msg.value
    if rate * msg.value / msg.value != rate:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < rate * msg.value / 10^18:
        revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
    if rate * msg.value / 10^18:
        mem[324 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, rate * msg.value / 10^18) >> 32
        call tokenAddress with:
             gas gas_remaining wei
            args Mask(224, 32, rate * msg.value / 10^18) << 224, mem[388 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 0, 'TRANSFER_FAILED'
        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[356]:
                revert with 0, 'TRANSFER_FAILED'
    emit Swap(tokenAddress, rate, rate * msg.value / 10^18, arg1);
}



}
