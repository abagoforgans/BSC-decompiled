contract main {




// =====================  Runtime code  =====================


const sub_70de629f(?) = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c


address addressesProvider;
address defiAddress;

function defi() {
    return defiAddress
}

function addressesProvider() {
    return addressesProvider
}

function _fallback() payable {
  stop
}

function flashloanBnb(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(addressesProvider)
    staticcall addressesProvider.getLendingPool() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
         gas gas_remaining wei
        args 0, 0, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, arg1, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function executeOperation(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        if arg2 > eth.balance(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        46,
                        0xfe496e76616c69642062616c616e63652c207761732074686520666c6173684c6f616e207375636365737366756c,
                        mem[210 len 18]
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg2 > ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        46,
                        0xfe496e76616c69642062616c616e63652c207761732074686520666c6173684c6f616e207375636365737366756c,
                        mem[210 len 18]
    require ext_code.size(defiAddress)
    call defiAddress.0x9da90f19 with:
       value arg2 wei
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(defiAddress)
    call defiAddress.0x2e1a7d4d with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg2 + arg3 < arg2:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(addressesProvider)
    staticcall addressesProvider.getLendingPoolCore() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        call ext_call.return_data[12 len 20] with:
           value arg2 + arg3 wei
             gas 50000 wei
    else:
        mem[132] = ext_call.return_data[12 len 20]
        if not ext_code.hash(arg1):
            revert with 0, 'SafeERC20: call to non-contract'
        if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        mem[196 len 64] = 0, ext_call.return_data[12 len 20], Mask(224, 32, arg2 + arg3) >> 32
        call arg1.mem[160 len 4] with:
             gas gas_remaining wei
            args Mask(224, 32, arg2 + arg3) << 224, mem[260 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not 0, mem[132 len 28]:
                revert with 0, 32, 42, 0x3f5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
        else:
            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[228]:
                    revert with 0, 
                                32,
                                42,
                                0x3f5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 307 len 22]
}



}
