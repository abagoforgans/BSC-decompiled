contract main {




// =====================  Runtime code  =====================


#
#  - withdraw()
#  - unpause()
#  - pause()
#
const wbnbAddress = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c

const sub_f288a2e2(?) = 0xf66846415d2bf9eabda9e84793ff9c0ea96d87f50fc41e66aa16469c6a442f05


uint256 stor0;
uint8 stor1; offset 160
address owner;
address coreAddress;
uint256 lastEarnBlock;
address wantAddress;
address vTokenAddress;
array of address markets;
address uniRouterAddress;
address earnedAddress;
address distributionAddress;
array of struct sub_38946a8c;
uint256 borrowRate;
uint8 sub_92942dba;
address oracleAddress; offset 8
uint256 stor13;

function lastEarnBlock() payable {
    return lastEarnBlock
}

function vTokenAddress() payable {
    return vTokenAddress
}

function distributionAddress() payable {
    return distributionAddress
}

function sub_38946a8c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_38946a8c.length
    return sub_38946a8c[arg1].field_0
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

function sub_92942dba(?) payable {
    return bool(sub_92942dba)
}

function markets(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < markets.length
    return markets[arg1]
}

function borrowRate() payable {
    return borrowRate
}

function earnedAddress() payable {
    return earnedAddress
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

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function updateStrategy() payable {
    require ext_code.size(vTokenAddress)
    call vTokenAddress.accrueInterest() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
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
                    0x6e436f72655265663a3a6f6e6c79476f7665726e6f723a2043616c6c6572206973206e6f74206120676f7665726e6f,
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
                    0x6e436f72655265663a3a6f6e6c79476f7665726e6f723a2043616c6c6572206973206e6f74206120676f7665726e6f,
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
                    0x6e436f72655265663a3a6f6e6c79476f7665726e6f723a2043616c6c6572206973206e6f74206120676f7665726e6f,
                    mem[211 len 17]
    if arg1 >= 10:
        revert with 0, 'Slippage value is too big'
    stor13 = arg1
}

function sub_ef9e7dd9(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.0x16345f18 with:
            gas gas_remaining wei
           args earnedAddress
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
    if (100 * ext_call.return_data[0] * arg1 / 10^18) - (stor13 * ext_call.return_data[0] * arg1 / 10^18) / ext_call.return_data[0] * arg1 / 10^18 != -stor13 + 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return ((100 * ext_call.return_data[0] * arg1 / 10^18) - (stor13 * ext_call.return_data[0] * arg1 / 10^18) / 100)
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
    if earnedAddress == arg1:
        revert with 0, '!safe'
    if wantAddress == arg1:
        revert with 0, '!safe'
    if vTokenAddress == arg1:
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

function updateBalance() payable {
    require ext_code.size(vTokenAddress)
    staticcall vTokenAddress.getAccountSnapshot(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if ext_call.return_data[0]:
        revert with 0, 'Venus ErrCode'
    if not ext_call.return_data[32]:
        if not ext_call.return_data[64]:
            if borrowRate <= 0:
                revert with 0, 'SafeMath: division by zero'
            if borrowRate:
                return 0, ext_call.return_data[64], 0 / borrowRate
        else:
            if 1000 * ext_call.return_data[64] / ext_call.return_data[64] != 1000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[224 len 4]
            if borrowRate <= 0:
                revert with 0, 'SafeMath: division by zero'
            if borrowRate:
                return 0, ext_call.return_data[64], 1000 * ext_call.return_data[64] / borrowRate
    else:
        if ext_call.return_data[96] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[96]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        ext_call.return_data[101 len 27],
                        mem[224 len 4]
        if not ext_call.return_data[64]:
            if borrowRate <= 0:
                revert with 0, 'SafeMath: division by zero'
            if borrowRate:
                return ext_call.return_data[96] * ext_call.return_data[32] / 10^18, ext_call.return_data[64], 0 / borrowRate
        else:
            if 1000 * ext_call.return_data[64] / ext_call.return_data[64] != 1000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[224 len 4]
            if borrowRate <= 0:
                revert with 0, 'SafeMath: division by zero'
            if borrowRate:
                return ext_call.return_data[96] * ext_call.return_data[32] / 10^18, 
                       ext_call.return_data[64],
                       1000 * ext_call.return_data[64] / borrowRate
    ('iszero', ('stor', ('name', 'borrowRate', 11)))
    revert
}

function wantLockedTotal() payable {
    require ext_code.size(vTokenAddress)
    staticcall vTokenAddress.getAccountSnapshot(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if ext_call.return_data[0]:
        revert with 0, 'Venus ErrCode'
    if not ext_call.return_data[32]:
        if ext_call.return_data[64]:
            if 1000 * ext_call.return_data[64] / ext_call.return_data[64] != 1000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[224 len 4]
        if borrowRate <= 0:
            revert with 0, 'SafeMath: division by zero'
        require borrowRate
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if ext_call.return_data[64] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return (ext_call.return_data[0] - ext_call.return_data[64])
    if ext_call.return_data[96] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[96]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    ext_call.return_data[101 len 27],
                    mem[224 len 4]
    if ext_call.return_data[64]:
        if 1000 * ext_call.return_data[64] / ext_call.return_data[64] != 1000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        ext_call.return_data[101 len 27],
                        mem[224 len 4]
    if borrowRate <= 0:
        revert with 0, 'SafeMath: division by zero'
    require borrowRate
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if (ext_call.return_data[96] * ext_call.return_data[32] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if ext_call.return_data[64] > (ext_call.return_data[96] * ext_call.return_data[32] / 10^18) + ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    return ((ext_call.return_data[96] * ext_call.return_data[32] / 10^18) + ext_call.return_data[0] - ext_call.return_data[64])
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if stor1:
        revert with 0, 'Pausable: paused'
    require ext_code.size(vTokenAddress)
    staticcall vTokenAddress.getAccountSnapshot(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if ext_call.return_data[0]:
        revert with 0, 'Venus ErrCode'
    if ext_call.return_data[32]:
        if ext_call.return_data[96] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[96]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        ext_call.return_data[101 len 27],
                        mem[224 len 4]
    if ext_call.return_data[64]:
        if 1000 * ext_call.return_data[64] / ext_call.return_data[64] != 1000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        ext_call.return_data[101 len 27],
                        mem[224 len 4]
    if borrowRate <= 0:
        revert with 0, 'SafeMath: division by zero'
    require borrowRate
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
    require ext_code.size(vTokenAddress)
    call vTokenAddress.0xa0712d68 with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'mint Err'
    stor0 = 1
}

function setBorrowRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
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
    require ext_code.size(vTokenAddress)
    call vTokenAddress.accrueInterest() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    borrowRate = arg1
    require ext_code.size(vTokenAddress)
    staticcall vTokenAddress.getAccountSnapshot(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if ext_call.return_data[0]:
        revert with 0, 'Venus ErrCode'
    if not ext_call.return_data[32]:
        if not ext_call.return_data[64]:
            if borrowRate <= 0:
                revert with 0, 'SafeMath: division by zero'
            require borrowRate
            if 0 < 0 / borrowRate:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            40,
                            0x73737570706c792073686f756c642062652067726561746572207468616e20737570706c79206d69,
                            ext_call.return_data[108 len 20],
                            mem[224 len 4]
        else:
            if 1000 * ext_call.return_data[64] / ext_call.return_data[64] != 1000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[224 len 4]
            if borrowRate <= 0:
                revert with 0, 'SafeMath: division by zero'
            require borrowRate
            if 0 < 1000 * ext_call.return_data[64] / borrowRate:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            40,
                            0x73737570706c792073686f756c642062652067726561746572207468616e20737570706c79206d69,
                            ext_call.return_data[108 len 20],
                            mem[224 len 4]
    else:
        if ext_call.return_data[96] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[96]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        ext_call.return_data[101 len 27],
                        mem[224 len 4]
        if not ext_call.return_data[64]:
            if borrowRate <= 0:
                revert with 0, 'SafeMath: division by zero'
            require borrowRate
            if ext_call.return_data[96] * ext_call.return_data[32] / 10^18 < 0 / borrowRate:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            40,
                            0x73737570706c792073686f756c642062652067726561746572207468616e20737570706c79206d69,
                            ext_call.return_data[108 len 20],
                            mem[224 len 4]
        else:
            if 1000 * ext_call.return_data[64] / ext_call.return_data[64] != 1000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[224 len 4]
            if borrowRate <= 0:
                revert with 0, 'SafeMath: division by zero'
            require borrowRate
            if ext_call.return_data[96] * ext_call.return_data[32] / 10^18 < 1000 * ext_call.return_data[64] / borrowRate:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            40,
                            0x73737570706c792073686f756c642062652067726561746572207468616e20737570706c79206d69,
                            ext_call.return_data[108 len 20],
                            mem[224 len 4]
}

function deleverage(uint256 arg1) payable {
    require calldata.size - 4 >= 32
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
    require ext_code.size(vTokenAddress)
    call vTokenAddress.accrueInterest() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require ext_code.size(vTokenAddress)
    staticcall vTokenAddress.getAccountSnapshot(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if ext_call.return_data[0]:
        revert with 0, 'Venus ErrCode'
    if not ext_call.return_data[32]:
        if not ext_call.return_data[64]:
            if borrowRate <= 0:
                revert with 0, 'SafeMath: division by zero'
            require borrowRate
            if 0 / borrowRate > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 > -0 / borrowRate:
                revert with 0, 'amount too big'
        else:
            if 1000 * ext_call.return_data[64] / ext_call.return_data[64] != 1000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[224 len 4]
            if borrowRate <= 0:
                revert with 0, 'SafeMath: division by zero'
            require borrowRate
            if 1000 * ext_call.return_data[64] / borrowRate > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 > -1000 * ext_call.return_data[64] / borrowRate:
                revert with 0, 'amount too big'
    else:
        if ext_call.return_data[96] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[96]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        ext_call.return_data[101 len 27],
                        mem[224 len 4]
        if not ext_call.return_data[64]:
            if borrowRate <= 0:
                revert with 0, 'SafeMath: division by zero'
            require borrowRate
            if 0 / borrowRate > ext_call.return_data[96] * ext_call.return_data[32] / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 > (ext_call.return_data[96] * ext_call.return_data[32] / 10^18) - (0 / borrowRate):
                revert with 0, 'amount too big'
        else:
            if 1000 * ext_call.return_data[64] / ext_call.return_data[64] != 1000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[224 len 4]
            if borrowRate <= 0:
                revert with 0, 'SafeMath: division by zero'
            require borrowRate
            if 1000 * ext_call.return_data[64] / borrowRate > ext_call.return_data[96] * ext_call.return_data[32] / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 > (ext_call.return_data[96] * ext_call.return_data[32] / 10^18) - (1000 * ext_call.return_data[64] / borrowRate):
                revert with 0, 'amount too big'
    if arg1 > ext_call.return_data[64]:
        revert with 0, 'amount too big'
    require ext_code.size(vTokenAddress)
    call vTokenAddress.redeemUnderlying(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'redeemUnderlying Err'
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(vTokenAddress)
    call vTokenAddress.repayBorrow(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'repayBorrow Err'
}

function leverage(uint256 arg1) payable {
    require calldata.size - 4 >= 32
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
    require ext_code.size(vTokenAddress)
    call vTokenAddress.accrueInterest() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require ext_code.size(vTokenAddress)
    staticcall vTokenAddress.getAccountSnapshot(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if ext_call.return_data[0]:
        revert with 0, 'Venus ErrCode'
    if not ext_call.return_data[32]:
        if ext_call.return_data[64]:
            if 1000 * ext_call.return_data[64] / ext_call.return_data[64] != 1000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[224 len 4]
        if borrowRate <= 0:
            revert with 0, 'SafeMath: division by zero'
        require borrowRate
        if arg1 + ext_call.return_data[64] < ext_call.return_data[64]:
            revert with 0, 'SafeMath: addition overflow'
        if not arg1 + ext_call.return_data[64]:
            if borrowRate <= 0:
                revert with 0, 'SafeMath: division by zero'
            require borrowRate
            if 0 / borrowRate > 0:
                revert with 0, 'ltv too high'
        else:
            if (1000 * arg1) + (1000 * ext_call.return_data[64]) / arg1 + ext_call.return_data[64] != 1000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[224 len 4]
            if borrowRate <= 0:
                revert with 0, 'SafeMath: division by zero'
            require borrowRate
            if (1000 * arg1) + (1000 * ext_call.return_data[64]) / borrowRate > 0:
                revert with 0, 'ltv too high'
    else:
        if ext_call.return_data[96] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[96]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        ext_call.return_data[101 len 27],
                        mem[224 len 4]
        if ext_call.return_data[64]:
            if 1000 * ext_call.return_data[64] / ext_call.return_data[64] != 1000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[224 len 4]
        if borrowRate <= 0:
            revert with 0, 'SafeMath: division by zero'
        require borrowRate
        if arg1 + ext_call.return_data[64] < ext_call.return_data[64]:
            revert with 0, 'SafeMath: addition overflow'
        if not arg1 + ext_call.return_data[64]:
            if borrowRate <= 0:
                revert with 0, 'SafeMath: division by zero'
            require borrowRate
            if 0 / borrowRate > ext_call.return_data[96] * ext_call.return_data[32] / 10^18:
                revert with 0, 'ltv too high'
        else:
            if (1000 * arg1) + (1000 * ext_call.return_data[64]) / arg1 + ext_call.return_data[64] != 1000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[224 len 4]
            if borrowRate <= 0:
                revert with 0, 'SafeMath: division by zero'
            require borrowRate
            if (1000 * arg1) + (1000 * ext_call.return_data[64]) / borrowRate > ext_call.return_data[96] * ext_call.return_data[32] / 10^18:
                revert with 0, 'ltv too high'
    require ext_code.size(vTokenAddress)
    call vTokenAddress.borrow(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'borrow Err'
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(vTokenAddress)
    call vTokenAddress.0xa0712d68 with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'mint Err'
}

function deleverageAll(uint256 arg1) payable {
    require calldata.size - 4 >= 32
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
    require ext_code.size(vTokenAddress)
    call vTokenAddress.accrueInterest() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require ext_code.size(vTokenAddress)
    staticcall vTokenAddress.getAccountSnapshot(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if ext_call.return_data[0]:
        revert with 0, 'Venus ErrCode'
    if not ext_call.return_data[32]:
        if not ext_call.return_data[64]:
            if borrowRate <= 0:
                revert with 0, 'SafeMath: division by zero'
            require borrowRate
            if 0 / borrowRate > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 + ext_call.return_data[64] < ext_call.return_data[64]:
                revert with 0, 'SafeMath: addition overflow'
            if arg1 + ext_call.return_data[64] > -0 / borrowRate:
                revert with 0, 'amount too big'
        else:
            if 1000 * ext_call.return_data[64] / ext_call.return_data[64] != 1000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[224 len 4]
            if borrowRate <= 0:
                revert with 0, 'SafeMath: division by zero'
            require borrowRate
            if 1000 * ext_call.return_data[64] / borrowRate > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 + ext_call.return_data[64] < ext_call.return_data[64]:
                revert with 0, 'SafeMath: addition overflow'
            if arg1 + ext_call.return_data[64] > -1000 * ext_call.return_data[64] / borrowRate:
                revert with 0, 'amount too big'
    else:
        if ext_call.return_data[96] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[96]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        ext_call.return_data[101 len 27],
                        mem[224 len 4]
        if not ext_call.return_data[64]:
            if borrowRate <= 0:
                revert with 0, 'SafeMath: division by zero'
            require borrowRate
            if 0 / borrowRate > ext_call.return_data[96] * ext_call.return_data[32] / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 + ext_call.return_data[64] < ext_call.return_data[64]:
                revert with 0, 'SafeMath: addition overflow'
            if arg1 + ext_call.return_data[64] > (ext_call.return_data[96] * ext_call.return_data[32] / 10^18) - (0 / borrowRate):
                revert with 0, 'amount too big'
        else:
            if 1000 * ext_call.return_data[64] / ext_call.return_data[64] != 1000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[224 len 4]
            if borrowRate <= 0:
                revert with 0, 'SafeMath: division by zero'
            require borrowRate
            if 1000 * ext_call.return_data[64] / borrowRate > ext_call.return_data[96] * ext_call.return_data[32] / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 + ext_call.return_data[64] < ext_call.return_data[64]:
                revert with 0, 'SafeMath: addition overflow'
            if arg1 + ext_call.return_data[64] > (ext_call.return_data[96] * ext_call.return_data[32] / 10^18) - (1000 * ext_call.return_data[64] / borrowRate):
                revert with 0, 'amount too big'
    if arg1 + ext_call.return_data[64] < ext_call.return_data[64]:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(vTokenAddress)
    call vTokenAddress.redeemUnderlying(uint256 arg1) with:
         gas gas_remaining wei
        args (arg1 + ext_call.return_data[64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'redeemUnderlying Err'
    require ext_code.size(vTokenAddress)
    call vTokenAddress.repayBorrow(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'repayBorrow Err'
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(vTokenAddress)
    call vTokenAddress.0xa0712d68 with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'mint Err'
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
    require ext_code.size(distributionAddress)
    if not sub_92942dba:
        call distributionAddress.claimVenus(address arg1) with:
             gas gas_remaining wei
            args this.address
    else:
        call distributionAddress.claimComp(address arg1) with:
             gas gas_remaining wei
            args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(earnedAddress)
    staticcall earnedAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if wantAddress != earnedAddress:
        if ext_call.return_data[0]:
            require ext_code.size(oracleAddress)
            staticcall oracleAddress.0x16345f18 with:
                    gas gas_remaining wei
                   args earnedAddress
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
                    mem[0] = 10
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
                        mem[0] = 10
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
                    if (100 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (stor13 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != -stor13 + 100:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if block.timestamp + 600 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[100] = ext_call.return_data[0]
                    mem[132] = (100 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (stor13 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / 100
                    mem[196] = this.address
                    mem[228] = block.timestamp + 600
                    mem[164] = 160
                    mem[260] = sub_38946a8c.length
                    if not sub_38946a8c.length:
                        require ext_code.size(uniRouterAddress)
                        call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[28 len 4], (100 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (stor13 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / 100, 160, address(this.address), block.timestamp + 600, sub_38946a8c.length
                    else:
                        mem[0] = 10
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
                            args 0, ext_call.return_data[28 len 4], (100 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (stor13 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / 100, 160, address(this.address), block.timestamp + 600, sub_38946a8c.length, mem[292 len 32 * sub_38946a8c.length]
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
        require ext_code.size(vTokenAddress)
        call vTokenAddress.0xa0712d68 with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'mint Err'
    lastEarnBlock = block.number
}



}
