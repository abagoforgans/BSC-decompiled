contract main {




// =====================  Runtime code  =====================


#
#  - uniswap_swapExactTokensForTokens_sell(uint256 arg1, uint256 arg2, uint256 arg3, address arg4, uint256 arg5)
#  - withdrawTheToken(address arg1, uint256 arg2)
#  - approveForWSwap(address arg1, address arg2, uint256 arg3)
#  - approveForWSwap_for_all()
#  - withdrawTheToken_all()
#
const ChiToken_instance = 0x4946c0e9f43f4dee607b0ef1fa1c


address owner;
address wethAddress;
address busdAddress;
address usdtAddress;
address sub_e911263aAddress;
address sub_292adf1dAddress;
address sub_5dc993bcAddress;
uint256 sub_c70ea45e;
uint256 approve_amounts;
uint256 approve_amounts_big;
mapping of uint8 stor10;
address stor11;
address stor12;

function sub_292adf1d(?) payable {
    return sub_292adf1dAddress
}

function approve_amounts() payable {
    return approve_amounts
}

function wethAddress() payable {
    return wethAddress
}

function sub_5dc993bc(?) payable {
    return sub_5dc993bcAddress
}

function approve_amounts_big() payable {
    return approve_amounts_big
}

function busdAddress() payable {
    return busdAddress
}

function owner() payable {
    return owner
}

function usdtAddress() payable {
    return usdtAddress
}

function sub_c70ea45e(?) payable {
    return sub_c70ea45e
}

function myWallets(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor10[arg1])
}

function sub_e911263a(?) payable {
    return sub_e911263aAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function addWallet(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor10[address(arg1)] = 1
}

function sub_6e54fbae(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_5dc993bcAddress = address(arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setWallet() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor10[0x7d3c91427c8a91e9a5c9e2f6d19906a0f74cf47b] = 1
    stor10[0xe9aeb4cffefb280a17d8b66e1428dc7fabcc1399] = 1
    stor10[0x1330a8cb13bbd8444321365c3cee8d7af02b424e] = 1
    stor10[0xd882e74011262b1c0df0480c310248cacfa9624e] = 1
    stor10[0x40bc30422732b0696cbe917f2666dd54c611a944] = 1
    stor10[0x9f41fac406a9c0a37226b02f8b5270f84d5d76c2] = 1
    stor10[0xab3e6029a97fd910588dccf135a0a6ed640b4a1e] = 1
    stor10[0x57e7a590c4a7292be3a0587ccc65c1f300908dbd] = 1
    stor10[0xe1e6820c8a33dcaaea67d41f27db91c42824cecf] = 1
    stor10[0x4ccab2e239145c9ce76a8a0202cd5b53d4fc6522] = 1
    stor10[0xf75711f5aa35fb9c68459f096192878790b8f2d5] = 1
    stor10[0xe3931a3adfd3baf3d03fbc5c181f84964b4aa4fa] = 1
    stor10[0x211534a06a07bae5f7c4628a7ebf8ab6c6c102a8] = 1
    stor10[0x1b932ed68f21774b62a7d3ebe306b487befa6a1] = 1
    stor10[0x66d15f43b5d494468c64476661f1219962998d00] = 1
    stor10[0x652082b8454b4f166e5e077186ebd82c740f2c03] = 1
    stor10[0x6210b61b346d8d2c5f1c9aad058431c7185c207e] = 1
    stor10[0xdd70d1d59f09fb65b84a04c9bcfbdd34c0dc190b] = 1
    stor10[0x627773794b9eea23105ad03e4a6ce9d9b509919b] = 1
    stor10[0x41b70cc5febbffb15f9aa7bcfca0ea2c313df46c] = 1
    stor10[0xe4e4db21a9bb62cfe377fc9c2c61600564aa770d] = 1
    stor10[0xcb0a13fef64b16bc19dc3c98bd3d30a252801936] = 1
    stor10[0xffbad7284ee64e49ba8ee7e029eb9d4eae87823e] = 1
    stor10[0x326971fcaedf0b21781845bb366aec36bc4cfdca] = 1
    stor10[0x370428a47078e0363b7cc50dff95f4f457781514] = 1
    stor10[0x898e4dbe05daa7b58f9a5d6e67b94094b4d643ca] = 1
    stor10[0x941d40e5e8737df7bf2c5a9404c6917576ca9ddc] = 1
    stor10[0x8b873b2ef798fc59a011981138200184a91e5301] = 1
    stor10[0xad4a767ef239f40fdb53577f8be38fe061b91941] = 1
    stor10[0x16d1c49ca66100d903e475c9b956e1abe23f8603] = 1
    stor10[0x8737af1aa242f951a2d89c8a04a98dd6701e71aa] = 1
}

function uniswap_swapTokensForExactTokens_buy(uint256 arg1, uint256 arg2, uint256 arg3, address arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    mem[196] = arg3 + -block.gasprice + -eth.balance(sub_292adf1dAddress) - 576971
    require ext_code.size(stor12)
    staticcall stor12.allPairs(uint256 arg1) with:
            gas gas_remaining wei
           args (arg3 + -block.gasprice + -eth.balance(sub_292adf1dAddress) - 576971)
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    if ext_call.return_data[12 len 20] != arg4:
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[160] = ext_call.return_data[12 len 20]
        mem[(4 * ceil32(return_data.size)) + 196] = sub_5dc993bcAddress
        require ext_code.size(address(ext_call.return_data[12 len 20]))
        staticcall address(ext_call.return_data[12 len 20]).0x70a08231 with:
                gas gas_remaining wei
               args sub_5dc993bcAddress
        mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if not ext_call.return_data[0]:
            if not stor10[address(msg.sender)]:
                revert with 0, 'Ownable: caller is not the owner'
            mem[128] = arg4
            mem[(6 * ceil32(return_data.size)) + 192] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
            mem[(6 * ceil32(return_data.size)) + 196] = arg1
            mem[(6 * ceil32(return_data.size)) + 228] = arg2
            mem[(6 * ceil32(return_data.size)) + 260] = 160
            mem[(6 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = 128
            t = (6 * ceil32(return_data.size)) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(6 * ceil32(return_data.size)) + 292] = this.address
            mem[(6 * ceil32(return_data.size)) + 324] = approve_amounts
            require ext_code.size(stor11)
            call stor11.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, arg2, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 388 len 64]), address(this.address), approve_amounts
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(6 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (7 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _64 = mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32
            require mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
            require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223 < (6 * ceil32(return_data.size)) + return_data.size + 192
            _66 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
            require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
            require (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0
            mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
            mem[(7 * ceil32(return_data.size)) + 192] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
            require _64 + (32 * _66) + 32 <= return_data.size
            idx = 0
            s = (6 * ceil32(return_data.size)) + _64 + 224
            t = (7 * ceil32(return_data.size)) + 224
            while idx < _66:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
    else:
        staticcall address(ext_call.return_data[0]).token1() with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[160] = ext_call.return_data[12 len 20]
        mem[(4 * ceil32(return_data.size)) + 196] = sub_5dc993bcAddress
        require ext_code.size(address(ext_call.return_data[12 len 20]))
        staticcall address(ext_call.return_data[12 len 20]).0x70a08231 with:
                gas gas_remaining wei
               args sub_5dc993bcAddress
        mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if not ext_call.return_data[0]:
            if not stor10[address(msg.sender)]:
                revert with 0, 'Ownable: caller is not the owner'
            mem[128] = arg4
            mem[(6 * ceil32(return_data.size)) + 192] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
            mem[(6 * ceil32(return_data.size)) + 196] = arg1
            mem[(6 * ceil32(return_data.size)) + 228] = arg2
            mem[(6 * ceil32(return_data.size)) + 260] = 160
            mem[(6 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = 128
            t = (6 * ceil32(return_data.size)) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(6 * ceil32(return_data.size)) + 292] = this.address
            mem[(6 * ceil32(return_data.size)) + 324] = approve_amounts
            require ext_code.size(stor11)
            call stor11.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, arg2, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 388 len 64]), address(this.address), approve_amounts
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(6 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (7 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _65 = mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32
            require mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
            require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223 < (6 * ceil32(return_data.size)) + return_data.size + 192
            _67 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
            require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
            require (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0
            mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
            mem[(7 * ceil32(return_data.size)) + 192] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
            require _65 + (32 * _67) + 32 <= return_data.size
            idx = 0
            s = (6 * ceil32(return_data.size)) + _65 + 224
            t = (7 * ceil32(return_data.size)) + 224
            while idx < _67:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
}



}
