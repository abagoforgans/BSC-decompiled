contract main {




// =====================  Runtime code  =====================


const name = 'BUSD/Venus'

const platform = 'Venus'


address governanceAddress;
address saffron_poolAddress;
address BUSDAddress;
uint32 stor3;
address vBUSDAddress;
uint256 stor3;

function vBUSD() payable {
    return address(vBUSDAddress)
}

function BUSD() payable {
    return BUSDAddress
}

function saffron_pool() payable {
    return saffron_poolAddress
}

function governance() payable {
    return governanceAddress
}

function _fallback() payable {
    revert
}

function set_base_asset(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, 'must be governance'
    BUSDAddress = arg1
}

function set_governance(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, 'must be governance'
    governanceAddress = arg1
}

function set_pool(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, 'must be governance'
    if not arg1:
        revert with 0, 'can't set pool to 0 address'
    saffron_poolAddress = arg1
}

function get_underlying_exchange_rate() payable {
    require ext_code.size(address(vBUSDAddress))
    call address(vBUSDAddress).exchangeRateCurrent() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function get_ctoken_balance() payable {
    require ext_code.size(address(vBUSDAddress))
    staticcall address(vBUSDAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function get_holdings() payable {
    require ext_code.size(address(vBUSDAddress))
    call address(vBUSDAddress).exchangeRateCurrent() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(vBUSDAddress))
    staticcall address(vBUSDAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
}

function return_capital(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if saffron_poolAddress != msg.sender:
        revert with 0, 'must be pool'
    require ext_code.size(address(vBUSDAddress))
    call address(vBUSDAddress).redeemUnderlying(uint256 rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6c636f6d706f756e642072657475726e6564206e6f6e7a65726f20726573706f6e73,
                    mem[198 len 30]
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(BUSDAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, arg1) >> 32
    call BUSDAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg1
        if not unknown_0xa9059cbb(?????), address(arg2) << 64:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function get_interest(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(vBUSDAddress))
    call address(vBUSDAddress).exchangeRateCurrent() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(vBUSDAddress))
    staticcall address(vBUSDAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if 0 < arg1:
            emit GetInterestEvaluatedToZero(1);
            return 0
    else:
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < arg1:
            emit GetInterestEvaluatedToZero(1);
            return 0
    require ext_code.size(address(vBUSDAddress))
    call address(vBUSDAddress).exchangeRateCurrent() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(vBUSDAddress))
    staticcall address(vBUSDAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if arg1 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -arg1
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if arg1 > ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1)
}

function deploy_capital(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1:
        require ext_code.size(BUSDAddress)
        staticcall BUSDAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(vBUSDAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[218 len 10]
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(BUSDAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor3), uint32(stor3), Mask(224, 32, arg1) >> 32
    mem[324 len 0] = 0
    call BUSDAddress with:
       funct uint32(stor3)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor3), uint32(stor3), arg1
        if not approve(address rg1, uint256 rg2), Mask(224, 0, stor3):
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        require ext_code.size(address(vBUSDAddress))
        staticcall address(vBUSDAddress).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(vBUSDAddress))
        call address(vBUSDAddress).0xa0712d68 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 32, 34, 0x6c636f6d706f756e642072657475726e6564206e6f6e7a65726f20726573706f6e73, mem[362 len 30]
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
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
        require ext_code.size(address(vBUSDAddress))
        staticcall address(vBUSDAddress).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(vBUSDAddress))
        call address(vBUSDAddress).0xa0712d68 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        34,
                        0x6c636f6d706f756e642072657475726e6564206e6f6e7a65726f20726573706f6e73,
                        mem[ceil32(return_data.size) + 363 len 30]
    ('iszero', ('ext_call.return_data', 0, 32))
    require ext_code.size(address(vBUSDAddress))
    staticcall address(vBUSDAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= ext_call.return_data[0]:
        revert with 0, 'compound error'
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(address(vBUSDAddress))
    call address(vBUSDAddress).exchangeRateCurrent() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xbf4e17f3: ext_call.return_data[0], 0, ext_call.return_data[0]
}



}
