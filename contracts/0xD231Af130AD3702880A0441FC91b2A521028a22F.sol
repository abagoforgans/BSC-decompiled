contract main {




// =====================  Runtime code  =====================


const ethBalance = eth.balance(this.address)


address owner;
address exchangeAddress;
address tokenAddress;
address sub_7ef560eeAddress;
address sub_cf4cee17Address;

function sub_7ef560ee(?) {
    return sub_7ef560eeAddress
}

function owner() {
    return owner
}

function sub_cf4cee17(?) {
    return sub_cf4cee17Address
}

function exchange() {
    return exchangeAddress
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require owner != msg.sender
    revert with 0, 'sOwnable: caller is not the owne'
}

function tokenBalance(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function claimETH(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if arg1:
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
    else:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_c0eb67ef(?) {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require ext_code.size(sub_cf4cee17Address)
    staticcall sub_cf4cee17Address.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(sub_7ef560eeAddress)
        call sub_7ef560eeAddress.tokenToEthSwapInput(uint256 rg1, uint256 rg2, uint256 rg3) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 1, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function initialize(address arg1, address arg2, address arg3, address arg4) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'invalid exchange address'
    if not arg2:
        revert with 0, 'invalid token address'
    if not arg3:
        revert with 0, 'invalid exchange any address'
    if not arg4:
        revert with 0, 'invalid token any address'
    if exchangeAddress:
        revert with 0, 'initialized'
    exchangeAddress = arg1
    tokenAddress = arg2
    sub_7ef560eeAddress = arg3
    sub_cf4cee17Address = arg4
    require ext_code.size(arg2)
    call arg2.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_cf4cee17Address)
    call sub_cf4cee17Address.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg3), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function claimToken(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0 len 28]
    mem[324 len 0] = 0
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0]
        if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function trade(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if arg1 < eth.balance(this.address):
        if arg1:
            require ext_code.size(exchangeAddress)
            call exchangeAddress.ethToTokenSwapInput(uint256 rg1, uint256 rg2) with:
               value arg1 wei
                 gas gas_remaining wei
                args 1, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(exchangeAddress)
            call exchangeAddress.tokenToEthSwapInput(uint256 rg1, uint256 rg2, uint256 rg3) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 1, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    else:
        if eth.balance(this.address):
            require ext_code.size(exchangeAddress)
            call exchangeAddress.ethToTokenSwapInput(uint256 rg1, uint256 rg2) with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args 1, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(exchangeAddress)
            call exchangeAddress.tokenToEthSwapInput(uint256 rg1, uint256 rg2, uint256 rg3) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 1, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
}



}
