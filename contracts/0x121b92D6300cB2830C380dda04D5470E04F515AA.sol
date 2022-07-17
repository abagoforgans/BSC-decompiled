contract main {




// =====================  Runtime code  =====================


#
#  - unpause()
#  - pause()
#
const sub_609c2ef4(?) = 0xa625ab01b08ce023b2a342dbb12a16f2c8489a8f

const wbnbAddress = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c

const sub_bb845c4a(?) = 0x8f0528ce5ef7b51152a59745befdd91d97091d2f

const sub_f288a2e2(?) = 0xf66846415d2bf9eabda9e84793ff9c0ea96d87f50fc41e66aa16469c6a442f05


uint256 stor0;
uint8 stor1; offset 160
address owner;
address coreAddress;
uint256 lastEarnBlock;
address uniRouterAddress;
address vaultAddress;
address wantAddress;
uint256 poolId;
array of struct sub_38946a8c;
address oracleAddress;
uint256 stor10;

function lastEarnBlock() payable {
    return lastEarnBlock
}

function sub_38946a8c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_38946a8c.length
    return sub_38946a8c[arg1].field_0
}

function poolId() payable {
    return poolId
}

function vaultAddress() payable {
    return vaultAddress
}

function paused() payable {
    return bool(stor1)
}

function uniRouterAddress() payable {
    return uniRouterAddress
}

function oracle() payable {
    return oracleAddress
}

function owner() payable {
    return owner
}

function wantAddress() payable {
    return wantAddress
}

function core() payable {
    return coreAddress
}

function _fallback() payable {
    revert
}

function updateStrategy() payable {
  stop
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function wantLockedInHere() payable {
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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

function setOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(coreAddress)
    staticcall coreAddress.0xe43581b8 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73436f72655265663a3a6f6e6c79476f7665726e6f723a2043616c6c6572206973206e6f74206120676f7665726e6f,
                    mem[211 len 17]
    oracleAddress = arg1
}

function setCore(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(coreAddress)
    staticcall coreAddress.0xe43581b8 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73436f72655265663a3a6f6e6c79476f7665726e6f723a2043616c6c6572206973206e6f74206120676f7665726e6f,
                    mem[211 len 17]
    coreAddress = arg1
    emit CoreUpdate(arg1);
}

function setSlippage(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(coreAddress)
    staticcall coreAddress.0xe43581b8 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73436f72655265663a3a6f6e6c79476f7665726e6f723a2043616c6c6572206973206e6f74206120676f7665726e6f,
                    mem[211 len 17]
    if arg1 >= 10:
        revert with 0, 'Slippage value is too big'
    stor10 = arg1
}

function sub_ef9e7dd9(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.0x16345f18 with:
            gas gas_remaining wei
           args 0x8f0528ce5ef7b51152a59745befdd91d97091d2f
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        return 0
    if ext_call.return_data[0] * arg1 / arg1 != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0] * arg1 / 10^18:
        return 0
    if (100 * ext_call.return_data[0] * arg1 / 10^18) - (stor10 * ext_call.return_data[0] * arg1 / 10^18) / ext_call.return_data[0] * arg1 / 10^18 != -stor10 + 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return ((100 * ext_call.return_data[0] * arg1 / 10^18) - (stor10 * ext_call.return_data[0] * arg1 / 10^18) / 100)
}

function inCaseTokensGetStuck(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(coreAddress)
    staticcall coreAddress.0x91d14854 with:
            gas gas_remaining wei
           args 0xf66846415d2bf9eabda9e84793ff9c0ea96d87f50fc41e66aa16469c6a442f05, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x79436f72655265663a3a6f6e6c7954696d656c6f636b3a2043616c6c6572206973206e6f7420612074696d656c6f63,
                    mem[211 len 17]
    if 0x8f0528ce5ef7b51152a59745befdd91d97091d2f == arg1:
        revert with 0, '!safe'
    if wantAddress == arg1:
        revert with 0, '!safe'
    if vaultAddress == arg1:
        revert with 0, '!safe'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x72416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, Mask(224, 32, arg2) >> 32
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg2
        if not unknown_0xa9059cbb(?????), address(arg3) << 64:
            revert with 0, 32, 42, 0x6b5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x6b5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if stor1:
        revert with 0, 'Pausable: paused'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x72416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(wantAddress):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    call wantAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x6b5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                            0x6b5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(vaultAddress)
    call vaultAddress.0xb6b55f25 with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xa625ab01b08ce023b2a342dbb12a16f2c8489a8f)
    call 0xa625ab01b08ce023b2a342dbb12a16f2c8489a8f.deposit(address arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(this.address), poolId, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0 = 1
}

function earn() payable {
    if stor1:
        revert with 0, 'Pausable: paused'
    require ext_code.size(coreAddress)
    staticcall coreAddress.0x91d14854 with:
            gas gas_remaining wei
           args 0xf66846415d2bf9eabda9e84793ff9c0ea96d87f50fc41e66aa16469c6a442f05, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x79436f72655265663a3a6f6e6c7954696d656c6f636b3a2043616c6c6572206973206e6f7420612074696d656c6f63,
                    mem[211 len 17]
    require ext_code.size(0xa625ab01b08ce023b2a342dbb12a16f2c8489a8f)
    call 0xa625ab01b08ce023b2a342dbb12a16f2c8489a8f.harvest(uint256 arg1) with:
         gas gas_remaining wei
        args poolId
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x8f0528ce5ef7b51152a59745befdd91d97091d2f)
    staticcall 0x8f0528ce5ef7b51152a59745befdd91d97091d2f.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if wantAddress != 0x8f0528ce5ef7b51152a59745befdd91d97091d2f:
        if ext_call.return_data[0]:
            require ext_code.size(oracleAddress)
            staticcall oracleAddress.0x16345f18 with:
                    gas gas_remaining wei
                   args 0x8f0528ce5ef7b51152a59745befdd91d97091d2f
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if block.timestamp + 600 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[100] = ext_call.return_data[0]
                mem[132] = 0
                mem[196] = this.address
                mem[228] = block.timestamp + 600
                mem[164] = 160
                mem[260] = sub_38946a8c.length
                if not sub_38946a8c.length:
                    require ext_code.size(uniRouterAddress)
                    call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[28 len 4], 0, 160, address(this.address), block.timestamp + 600, sub_38946a8c.length
                else:
                    mem[0] = 8
                    mem[292] = address(sub_38946a8c.field_0)
                    idx = 292
                    s = 0
                    while (32 * sub_38946a8c.length) + 292 > idx + 32:
                        mem[idx + 32] = sub_38946a8c[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(uniRouterAddress)
                    call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[28 len 4], 0, 160, address(this.address), block.timestamp + 600, sub_38946a8c.length, mem[292 len 32 * sub_38946a8c.length]
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    if block.timestamp + 600 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[100] = ext_call.return_data[0]
                    mem[132] = 0
                    mem[196] = this.address
                    mem[228] = block.timestamp + 600
                    mem[164] = 160
                    mem[260] = sub_38946a8c.length
                    if not sub_38946a8c.length:
                        require ext_code.size(uniRouterAddress)
                        call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[28 len 4], 0, 160, address(this.address), block.timestamp + 600, sub_38946a8c.length
                    else:
                        mem[0] = 8
                        mem[292] = address(sub_38946a8c.field_0)
                        idx = 292
                        s = 0
                        while (32 * sub_38946a8c.length) + 292 > idx + 32:
                            mem[idx + 32] = sub_38946a8c[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(uniRouterAddress)
                        call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[28 len 4], 0, 160, address(this.address), block.timestamp + 600, sub_38946a8c.length, mem[292 len 32 * sub_38946a8c.length]
                else:
                    if (100 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (stor10 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != -stor10 + 100:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if block.timestamp + 600 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[100] = ext_call.return_data[0]
                    mem[132] = (100 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (stor10 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / 100
                    mem[196] = this.address
                    mem[228] = block.timestamp + 600
                    mem[164] = 160
                    mem[260] = sub_38946a8c.length
                    if not sub_38946a8c.length:
                        require ext_code.size(uniRouterAddress)
                        call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[28 len 4], (100 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (stor10 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / 100, 160, address(this.address), block.timestamp + 600, sub_38946a8c.length
                    else:
                        mem[0] = 8
                        mem[292] = address(sub_38946a8c.field_0)
                        idx = 292
                        s = 0
                        while (32 * sub_38946a8c.length) + 292 > idx + 32:
                            mem[idx + 32] = sub_38946a8c[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(uniRouterAddress)
                        call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[28 len 4], (100 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (stor10 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / 100, 160, address(this.address), block.timestamp + 600, sub_38946a8c.length, mem[292 len 32 * sub_38946a8c.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(vaultAddress)
        call vaultAddress.0xb6b55f25 with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xa625ab01b08ce023b2a342dbb12a16f2c8489a8f)
        call 0xa625ab01b08ce023b2a342dbb12a16f2c8489a8f.deposit(address arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(this.address), poolId, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    lastEarnBlock = block.number
}

function withdraw() payable {
    require ext_code.size(coreAddress)
    staticcall coreAddress.0x7476d691 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x72436f72655265663a3a6f6e6c794d756c746973747261746567793a2043616c6c6572206973206e6f742061206d756c746973747261746567,
                    mem[221 len 7]
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    require ext_code.size(0xa625ab01b08ce023b2a342dbb12a16f2c8489a8f)
    staticcall 0xa625ab01b08ce023b2a342dbb12a16f2c8489a8f.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_code.size(0xa625ab01b08ce023b2a342dbb12a16f2c8489a8f)
    call 0xa625ab01b08ce023b2a342dbb12a16f2c8489a8f.withdraw(address arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args this.address, poolId, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(vaultAddress)
    call vaultAddress.0x2e1a7d4d with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x8f0528ce5ef7b51152a59745befdd91d97091d2f)
    staticcall 0x8f0528ce5ef7b51152a59745befdd91d97091d2f.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0x8f0528ce5ef7b51152a59745befdd91d97091d2f == wantAddress:
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x72416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
        call wantAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x6b5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                0x6b5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
    else:
        if not ext_call.return_data[0]:
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x72416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
            mem[324 len 0] = 0
            call wantAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x6b5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                    0x6b5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
        else:
            require ext_code.size(oracleAddress)
            staticcall oracleAddress.0x16345f18 with:
                    gas gas_remaining wei
                   args 0x8f0528ce5ef7b51152a59745befdd91d97091d2f
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if block.timestamp + 600 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[100] = ext_call.return_data[0]
                mem[132] = 0
                mem[196] = this.address
                mem[228] = block.timestamp + 600
                mem[164] = 160
                mem[260] = sub_38946a8c.length
                if not sub_38946a8c.length:
                    require ext_code.size(uniRouterAddress)
                    call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[28 len 4], 0, 160, address(this.address), block.timestamp + 600, sub_38946a8c.length
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _144 = mem[96 len 4], ext_call.return_data[0 len 28]
                    require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]
                    _153 = mem[_144 + 96]
                    mem[ceil32(return_data.size) + 128 len floor32(mem[_144 + 96])] = mem[_144 + 128 len floor32(mem[_144 + 96])]
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _153) + ceil32(return_data.size) + 164] = msg.sender
                    mem[(32 * _153) + ceil32(return_data.size) + 196] = ext_call.return_data[0]
                    mem[(32 * _153) + ceil32(return_data.size) + 128] = 68
                    mem[(32 * _153) + ceil32(return_data.size) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[(32 * _153) + ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                    mem[(32 * _153) + ceil32(return_data.size) + 228] = 32
                    mem[(32 * _153) + ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x72416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _153) + ceil32(return_data.size) + 398 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _153) + ceil32(return_data.size) + 292 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                    mem[(32 * _153) + ceil32(return_data.size) + 384 len 4] = 0
                    call wantAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _153) + ceil32(return_data.size) + 356 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96 len 4], ext_call.return_data[0 len 28]:
                                revert with memory
                                  from 128
                                   len mem[96 len 4], ext_call.return_data[0 len 28]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96 len 4], ext_call.return_data[0 len 28]:
                            require mem[96 len 4], ext_call.return_data[0 len 28] >= 32
                            if not ext_call.return_data[28 len 4], 0:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6b5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _153) + ceil32(return_data.size) + 402 len 22]
                    else:
                        mem[(32 * _153) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(32 * _153) + ceil32(return_data.size) + 324]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6b5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _153) + ceil32(return_data.size) + ceil32(return_data.size) + 403 len 22]
                else:
                    mem[0] = 8
                    mem[292] = address(sub_38946a8c.field_0)
                    idx = 292
                    s = 0
                    while (32 * sub_38946a8c.length) + 292 > idx + 32:
                        mem[idx + 32] = sub_38946a8c[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(uniRouterAddress)
                    call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[28 len 4], 0, 160, address(this.address), block.timestamp + 600, sub_38946a8c.length, mem[292 len 32 * sub_38946a8c.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _552 = mem[96 len 4], ext_call.return_data[0 len 28]
                    require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]
                    _589 = mem[_552 + 96]
                    mem[ceil32(return_data.size) + 128 len floor32(mem[_552 + 96])] = mem[_552 + 128 len floor32(mem[_552 + 96])]
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _589) + ceil32(return_data.size) + 164] = msg.sender
                    mem[(32 * _589) + ceil32(return_data.size) + 196] = ext_call.return_data[0]
                    mem[(32 * _589) + ceil32(return_data.size) + 128] = 68
                    mem[(32 * _589) + ceil32(return_data.size) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[(32 * _589) + ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                    mem[(32 * _589) + ceil32(return_data.size) + 228] = 32
                    mem[(32 * _589) + ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x72416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _589) + ceil32(return_data.size) + 398 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _589) + ceil32(return_data.size) + 292 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                    mem[(32 * _589) + ceil32(return_data.size) + 384 len 4] = 0
                    mem[(32 * _589) + ceil32(return_data.size) + 356 len 0] = 0
                    call wantAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _589) + ceil32(return_data.size) + 356 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96 len 4], ext_call.return_data[0 len 28]:
                                revert with memory
                                  from 128
                                   len mem[96 len 4], ext_call.return_data[0 len 28]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96 len 4], ext_call.return_data[0 len 28]:
                            require mem[96 len 4], ext_call.return_data[0 len 28] >= 32
                            if not ext_call.return_data[28 len 4], 0:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6b5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _589) + ceil32(return_data.size) + 402 len 22]
                    else:
                        mem[(32 * _589) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(32 * _589) + ceil32(return_data.size) + 324]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6b5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _589) + ceil32(return_data.size) + ceil32(return_data.size) + 403 len 22]
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[224 len 4]
                if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    if block.timestamp + 600 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[100] = ext_call.return_data[0]
                    mem[132] = 0
                    mem[196] = this.address
                    mem[228] = block.timestamp + 600
                    mem[164] = 160
                    mem[260] = sub_38946a8c.length
                    if not sub_38946a8c.length:
                        require ext_code.size(uniRouterAddress)
                        call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[28 len 4], 0, 160, address(this.address), block.timestamp + 600, sub_38946a8c.length
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _147 = mem[96 len 4], ext_call.return_data[0 len 28]
                        require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]
                        _155 = mem[_147 + 96]
                        mem[ceil32(return_data.size) + 128 len floor32(mem[_147 + 96])] = mem[_147 + 128 len floor32(mem[_147 + 96])]
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _155) + ceil32(return_data.size) + 164] = msg.sender
                        mem[(32 * _155) + ceil32(return_data.size) + 196] = ext_call.return_data[0]
                        mem[(32 * _155) + ceil32(return_data.size) + 128] = 68
                        mem[(32 * _155) + ceil32(return_data.size) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[(32 * _155) + ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                        mem[(32 * _155) + ceil32(return_data.size) + 228] = 32
                        mem[(32 * _155) + ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x72416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _155) + ceil32(return_data.size) + 398 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _155) + ceil32(return_data.size) + 292 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                        mem[(32 * _155) + ceil32(return_data.size) + 384 len 4] = 0
                        mem[(32 * _155) + ceil32(return_data.size) + 356 len 0] = 0
                        call wantAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _155) + ceil32(return_data.size) + 356 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96 len 4], ext_call.return_data[0 len 28]:
                                    revert with memory
                                      from 128
                                       len mem[96 len 4], ext_call.return_data[0 len 28]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96 len 4], ext_call.return_data[0 len 28]:
                                require mem[96 len 4], ext_call.return_data[0 len 28] >= 32
                                if not ext_call.return_data[28 len 4], 0:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6b5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _155) + ceil32(return_data.size) + 402 len 22]
                        else:
                            mem[(32 * _155) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _155) + ceil32(return_data.size) + 324]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6b5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _155) + ceil32(return_data.size) + ceil32(return_data.size) + 403 len 22]
                    else:
                        mem[0] = 8
                        mem[292] = address(sub_38946a8c.field_0)
                        idx = 292
                        s = 0
                        while (32 * sub_38946a8c.length) + 292 > idx + 32:
                            mem[idx + 32] = sub_38946a8c[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(uniRouterAddress)
                        call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[28 len 4], 0, 160, address(this.address), block.timestamp + 600, sub_38946a8c.length, mem[292 len 32 * sub_38946a8c.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _550 = mem[96 len 4], ext_call.return_data[0 len 28]
                        require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]
                        _580 = mem[_550 + 96]
                        mem[ceil32(return_data.size) + 128 len floor32(mem[_550 + 96])] = mem[_550 + 128 len floor32(mem[_550 + 96])]
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _580) + ceil32(return_data.size) + 164] = msg.sender
                        mem[(32 * _580) + ceil32(return_data.size) + 196] = ext_call.return_data[0]
                        mem[(32 * _580) + ceil32(return_data.size) + 128] = 68
                        mem[(32 * _580) + ceil32(return_data.size) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[(32 * _580) + ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                        mem[(32 * _580) + ceil32(return_data.size) + 228] = 32
                        mem[(32 * _580) + ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x72416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _580) + ceil32(return_data.size) + 398 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _580) + ceil32(return_data.size) + 292 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                        mem[(32 * _580) + ceil32(return_data.size) + 384 len 4] = 0
                        call wantAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _580) + ceil32(return_data.size) + 356 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96 len 4], ext_call.return_data[0 len 28]:
                                    revert with memory
                                      from 128
                                       len mem[96 len 4], ext_call.return_data[0 len 28]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96 len 4], ext_call.return_data[0 len 28]:
                                require mem[96 len 4], ext_call.return_data[0 len 28] >= 32
                                if not ext_call.return_data[28 len 4], 0:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6b5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _580) + ceil32(return_data.size) + 402 len 22]
                        else:
                            mem[(32 * _580) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _580) + ceil32(return_data.size) + 324]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6b5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _580) + ceil32(return_data.size) + ceil32(return_data.size) + 403 len 22]
                else:
                    if (100 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (stor10 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != -stor10 + 100:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[224 len 4]
                    if block.timestamp + 600 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[100] = ext_call.return_data[0]
                    mem[132] = (100 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (stor10 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / 100
                    mem[196] = this.address
                    mem[228] = block.timestamp + 600
                    mem[164] = 160
                    mem[260] = sub_38946a8c.length
                    if not sub_38946a8c.length:
                        require ext_code.size(uniRouterAddress)
                        call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[28 len 4], (100 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (stor10 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / 100, 160, address(this.address), block.timestamp + 600, sub_38946a8c.length
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _149 = mem[96 len 4], ext_call.return_data[0 len 28]
                        require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]
                        _156 = mem[_149 + 96]
                        mem[ceil32(return_data.size) + 128 len floor32(mem[_149 + 96])] = mem[_149 + 128 len floor32(mem[_149 + 96])]
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _156) + ceil32(return_data.size) + 164] = msg.sender
                        mem[(32 * _156) + ceil32(return_data.size) + 196] = ext_call.return_data[0]
                        mem[(32 * _156) + ceil32(return_data.size) + 128] = 68
                        mem[(32 * _156) + ceil32(return_data.size) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[(32 * _156) + ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                        mem[(32 * _156) + ceil32(return_data.size) + 228] = 32
                        mem[(32 * _156) + ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x72416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _156) + ceil32(return_data.size) + 398 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _156) + ceil32(return_data.size) + 292 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                        mem[(32 * _156) + ceil32(return_data.size) + 384 len 4] = 0
                        mem[(32 * _156) + ceil32(return_data.size) + 356 len 0] = 0
                        call wantAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _156) + ceil32(return_data.size) + 356 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96 len 4], ext_call.return_data[0 len 28]:
                                    revert with memory
                                      from 128
                                       len mem[96 len 4], ext_call.return_data[0 len 28]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96 len 4], ext_call.return_data[0 len 28]:
                                require mem[96 len 4], ext_call.return_data[0 len 28] >= 32
                                if not ext_call.return_data[28 len 4], Mask(224, 32, (100 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (stor10 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / 100) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6b5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _156) + ceil32(return_data.size) + 402 len 22]
                        else:
                            mem[(32 * _156) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _156) + ceil32(return_data.size) + 324]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6b5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _156) + ceil32(return_data.size) + ceil32(return_data.size) + 403 len 22]
                    else:
                        mem[0] = 8
                        mem[292] = address(sub_38946a8c.field_0)
                        idx = 292
                        s = 0
                        while (32 * sub_38946a8c.length) + 292 > idx + 32:
                            mem[idx + 32] = sub_38946a8c[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(uniRouterAddress)
                        call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[28 len 4], (100 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (stor10 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / 100, 160, address(this.address), block.timestamp + 600, sub_38946a8c.length, mem[292 len 32 * sub_38946a8c.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _548 = mem[96 len 4], ext_call.return_data[0 len 28]
                        require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]
                        _571 = mem[_548 + 96]
                        mem[ceil32(return_data.size) + 128 len floor32(mem[_548 + 96])] = mem[_548 + 128 len floor32(mem[_548 + 96])]
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _571) + ceil32(return_data.size) + 164] = msg.sender
                        mem[(32 * _571) + ceil32(return_data.size) + 196] = ext_call.return_data[0]
                        mem[(32 * _571) + ceil32(return_data.size) + 128] = 68
                        mem[(32 * _571) + ceil32(return_data.size) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[(32 * _571) + ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                        mem[(32 * _571) + ceil32(return_data.size) + 228] = 32
                        mem[(32 * _571) + ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x72416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _571) + ceil32(return_data.size) + 398 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _571) + ceil32(return_data.size) + 292 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                        mem[(32 * _571) + ceil32(return_data.size) + 384 len 4] = 0
                        call wantAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _571) + ceil32(return_data.size) + 356 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96 len 4], ext_call.return_data[0 len 28]:
                                    revert with memory
                                      from 128
                                       len mem[96 len 4], ext_call.return_data[0 len 28]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96 len 4], ext_call.return_data[0 len 28]:
                                require mem[96 len 4], ext_call.return_data[0 len 28] >= 32
                                if not ext_call.return_data[28 len 4], Mask(224, 32, (100 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (stor10 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / 100) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6b5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _571) + ceil32(return_data.size) + 402 len 22]
                        else:
                            mem[(32 * _571) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _571) + ceil32(return_data.size) + 324]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6b5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _571) + ceil32(return_data.size) + ceil32(return_data.size) + 403 len 22]
    stor0 = 1
}



}
