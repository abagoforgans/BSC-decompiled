contract main {




// =====================  Runtime code  =====================


const sub_a9bb4da0(?) = 1500

const PERCENTAGE_PRECISION = 10000


address owner;
address defaultTokenAddress;
uint32 stor2;
address swapRouterAddress;
uint256 stor2;
uint32 stor3;
address sub_de80c858Address;
uint256 stor3;
address govAddress;
address stor5;
mapping of uint256 sub_8af3ee53;
uint256 fundPercentage;

function gov() payable {
    return govAddress
}

function defaultToken() payable {
    return defaultTokenAddress
}

function sub_8af3ee53(?) payable {
    require calldata.size - 4 >= 32
    return sub_8af3ee53[arg1]
}

function owner() payable {
    return owner
}

function swapRouter() payable {
    return address(swapRouterAddress)
}

function sub_de80c858(?) payable {
    return address(sub_de80c858Address)
}

function fundPercentage() payable {
    return fundPercentage
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

function setGov(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor5 != msg.sender:
        revert with 0, 'not authorized'
    govAddress = arg1
    stor5 = 0
}

function setEcoFund(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(sub_de80c858Address) = arg1
}

function setSwapRouter(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(swapRouterAddress) = arg1
}

function setFundPercentage(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 1500:
        revert with 0, 'exceed max percent'
    fundPercentage = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_8af3ee53[address(arg1)] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (ext_call.return_data[0] - sub_8af3ee53[address(arg1)])
}

function sub_e87337f5(?) payable {
    require calldata.size - 4 >= 64
    if arg2 > sub_8af3ee53[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    sub_8af3ee53[address(arg1)] -= arg2
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 32, arg2) >> 32
    mem[324 len 0] = 0
    call arg1 with:
       funct uint32(stor3)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), arg2
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
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

function withdraw(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if govAddress != msg.sender:
        revert with 0, 'caller not gov'
    require ext_code.size(defaultTokenAddress)
    staticcall defaultTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_8af3ee53[stor1] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] - sub_8af3ee53[stor1] < arg1:
        revert with 0, 'insufficient funds'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(defaultTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, arg1) >> 32
    call defaultTokenAddress with:
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

function deposit(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg2:
        sub_8af3ee53[address(arg1)] = 0
    else:
        if fundPercentage * arg2 / arg2 != fundPercentage:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        sub_8af3ee53[address(arg1)] = fundPercentage * arg2 / 10000
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
}

function sub_e33fbb19(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require ('cd', 4).length
    if address(('cd', 4)[0]) == defaultTokenAddress:
        revert with 0, 'src can't be defaultToken'
    require ('cd', 4).length - 1 < ('cd', 4).length
    if address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]) != defaultTokenAddress:
        revert with 0, 'dest not defaultToken'
    require 0 < ('cd', 4).length
    mem[0] = address(('cd', 4)[0])
    mem[32] = 6
    require ext_code.size(address(('cd', 4)[0]))
    staticcall address(('cd', 4)[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_8af3ee53[address(('cd', 4)[0])] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] - sub_8af3ee53[address(('cd', 4)[0])] < cd[36]:
        revert with 0, 'insufficient funds'
    require ext_code.size(address(('cd', 4)[0]))
    staticcall address(('cd', 4)[0]).0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, address(swapRouterAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > cd[36]:
        mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[100] = cd[36]
        mem[132] = 0
        mem[196] = this.address
        mem[228] = block.timestamp + 100
        mem[164] = 160
        mem[260] = ('cd', 4).length
        mem[292 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
        mem[(32 * ('cd', 4).length) + 292] = 0
        require ext_code.size(address(swapRouterAddress))
        call address(swapRouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0, uint32(cd[36]), 0, 160, this.address, block.timestamp + 100, ('cd', 4).length, call.data[cd[4] + 36 len floor32(('cd', 4).length)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        require mem[96 len 4], Mask(224, 32, cd[36]) >> 32 <= 4294967296
        require mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 32 <= return_data.size
        require mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]
        if 0 == mem[ceil32(return_data.size) + 96]:
            revert with 0, 'Swap failed'
    else:
        require ext_code.size(address(('cd', 4)[0]))
        staticcall address(('cd', 4)[0]).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(swapRouterAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[218 len 10]
        mem[132] = address(swapRouterAddress)
        mem[164] = -1
        mem[96] = 68
        mem[132 len 28] = Mask(224, 0, stor2)
        mem[128 len 4] = approve(address arg1, uint256 arg2)
        mem[196] = 32
        mem[228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(address(('cd', 4)[0])):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[352 len 4] = 0
        mem[324 len 0] = 0
        call address(('cd', 4)[0]) with:
           funct uint32(stor2)
             gas gas_remaining wei
            args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), -1
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor2):
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            mem[260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[264] = cd[36]
            mem[296] = 0
            mem[360] = this.address
            mem[392] = block.timestamp + 100
            mem[328] = 160
            mem[424] = ('cd', 4).length
            mem[456 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
            mem[(32 * ('cd', 4).length) + 456] = 0
            require ext_code.size(address(swapRouterAddress))
            call address(swapRouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args cd[36], 0, 160, this.address, block.timestamp + 100, ('cd', 4).length, call.data[cd[4] + 36 len floor32(('cd', 4).length)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 260
            require return_data.size >= 32
            require mem[260 len 4], Mask(224, 32, cd[36]) >> 32 <= 4294967296
            require mem[260 len 4], Mask(224, 32, cd[36]) >> 32 + 32 <= return_data.size
            require mem[mem[260 len 4], Mask(224, 32, cd[36]) >> 32 + 260] <= 4294967296 and mem[260 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * mem[mem[260 len 4], Mask(224, 32, cd[36]) >> 32 + 260]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 260] = mem[mem[260 len 4], Mask(224, 32, cd[36]) >> 32 + 260]
            if 0 == mem[ceil32(return_data.size) + 260]:
                revert with 0, 'Swap failed'
        else:
            mem[260] = return_data.size
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
            mem[ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 265] = cd[36]
            mem[ceil32(return_data.size) + 297] = 0
            mem[ceil32(return_data.size) + 361] = this.address
            mem[ceil32(return_data.size) + 393] = block.timestamp + 100
            mem[ceil32(return_data.size) + 329] = 160
            mem[ceil32(return_data.size) + 425] = ('cd', 4).length
            mem[ceil32(return_data.size) + 457 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
            mem[ceil32(return_data.size) + (32 * ('cd', 4).length) + 457] = 0
            require ext_code.size(address(swapRouterAddress))
            call address(swapRouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args cd[36], 0, 160, this.address, block.timestamp + 100, ('cd', 4).length, call.data[cd[4] + 36 len floor32(('cd', 4).length)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, cd[36]) >> 32 <= 4294967296
            require mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, cd[36]) >> 32 + 32 <= return_data.size
            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, cd[36]) >> 32 + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, cd[36]) >> 32 + 261]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, cd[36]) >> 32 + 261]
            if 0 == mem[ceil32(return_data.size) + ceil32(return_data.size) + 261]:
                revert with 0, 'Swap failed'
}



}
