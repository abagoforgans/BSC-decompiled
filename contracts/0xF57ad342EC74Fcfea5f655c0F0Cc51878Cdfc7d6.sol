contract main {




// =====================  Runtime code  =====================


address owner;
address BUSDAddress;
address sub_0528ea18Address;
address sub_f198abc1Address;
uint32 stor4;
address DAOAddress;
uint32 stor5;
address stor5;
uint256 price;
uint256 cap;
uint256 minCap;
uint256 sub_6ad4e59a;
uint256 totalDebt;
uint8 stor11;
uint8 stor11; offset 8
uint8 stor11; offset 16
uint8 stor11; offset 24
uint8 stor11; offset 32
uint8 stor11; offset 40
uint256 stor11; offset 40
mapping of struct userInfo;
mapping of uint8 stor13;
mapping of uint256 sub_38986980;

function claimPresale() payable {
    return bool(uint8(stor11.field_32))
}

function sub_0528ea18(?) payable {
    return sub_0528ea18Address
}

function ended() payable {
    return bool(uint8(stor11.field_8))
}

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    return userInfo[arg1].field_0, userInfo[arg1].field_256, bool(userInfo[arg1].field_512)
}

function started() payable {
    return bool(uint8(stor11.field_0))
}

function cap() payable {
    return cap
}

function sub_38986980(?) payable {
    require calldata.size - 4 >= 32
    return sub_38986980[arg1]
}

function minCap() payable {
    return minCap
}

function BUSD() payable {
    return BUSDAddress
}

function sub_6ad4e59a(?) payable {
    return sub_6ad4e59a
}

function contractPaused() payable {
    return bool(uint8(stor11.field_40))
}

function owner() payable {
    return owner
}

function DAO() payable {
    return address(DAOAddress)
}

function Price() payable {
    return price
}

function claimable() payable {
    return bool(uint8(stor11.field_24))
}

function whitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor13[arg1])
}

function isPublic() payable {
    return bool(uint8(stor11.field_16))
}

function sub_f198abc1(?) payable {
    return sub_f198abc1Address
}

function totalDebt() payable {
    return totalDebt
}

function _fallback() payable {
    revert
}

function sub_f484ed2e(?) payable {
    require calldata.size - 4 >= 32
    if not stor13[address(arg1)]:
        return 0
    return price
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'rOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function addWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'rOwnable: caller is not the owne'
    stor13[address(arg1)] = 1
}

function removeWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'rOwnable: caller is not the owne'
    stor13[address(arg1)] = 0
}

function sub_7ac431a4(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'rOwnable: caller is not the owne'
    require arg1
    sub_f198abc1Address = arg1
}

function sub_9dcf4c8b(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'rOwnable: caller is not the owne'
    require arg1
    sub_0528ea18Address = arg1
}

function sub_22bb5cf0(?) payable {
    require calldata.size - 4 >= 32
    if userInfo[address(arg1)].field_0 > cap:
        revert with 0, 'SafeMath: subtraction overflow'
    return (cap - userInfo[address(arg1)].field_0)
}

function togglePause() payable {
    if owner != msg.sender:
        revert with 0, 'rOwnable: caller is not the owne'
    Mask(216, 0, stor11.field_40) = Mask(216, 0, not uint8(stor11.field_40))
    return bool(0 or uint8(not uint8(stor11.field_40)))
}

function setCap(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'rOwnable: caller is not the owne'
    if uint8(stor11.field_0):
        revert with 0, 'Sale has already started'
    cap = arg1
}

function start() payable {
    if owner != msg.sender:
        revert with 0, 'rOwnable: caller is not the owne'
    if uint8(stor11.field_0):
        revert with 0, 'Sale has already started'
    uint8(stor11.field_0) = 1
    emit SaleStarted(block.number);
}

function setPrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'rOwnable: caller is not the owne'
    if uint8(stor11.field_0):
        revert with 0, 'Sale has already started'
    price = arg1
}

function setMinCap(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'rOwnable: caller is not the owne'
    if uint8(stor11.field_0):
        revert with 0, 'Sale has already started'
    minCap = arg1
}

function sub_77e56357(?) payable {
    if owner != msg.sender:
        revert with 0, 'rOwnable: caller is not the owne'
    if uint8(stor11.field_8):
        revert with 0, 'Sale has already ended'
    uint8(stor11.field_16) = 1
    emit 0xf69bd4d6: block.number
}

function end() payable {
    if owner != msg.sender:
        revert with 0, 'rOwnable: caller is not the owne'
    if not uint8(stor11.field_0):
        revert with 0, 'Sale has not started'
    if uint8(stor11.field_8):
        revert with 0, 'Sale has already ended'
    uint8(stor11.field_8) = 1
    emit SaleEnded(block.number);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'rOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_ea8a0fbe(?) payable {
    if owner != msg.sender:
        revert with 0, 'rOwnable: caller is not the owne'
    if not uint8(stor11.field_24):
        revert with 0, 'Claim has not been unlocked'
    if uint8(stor11.field_32):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x73436c61696d2050726573616c652068617320616c7265616479206265656e20756e6c6f636b65,
                    mem[203 len 25]
    uint8(stor11.field_32) = 1
    emit 0x953b3148: block.number
}

function sub_72941316(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'rOwnable: caller is not the owne'
    if ('cd', 4).length > 500:
        revert with 0, 'too many addresses'
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 13
        stor13[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        idx = idx + 1
        continue 
}

function sub_80fbd162(?) payable {
    if owner != msg.sender:
        revert with 0, 'rOwnable: caller is not the owne'
    if not uint8(stor11.field_8):
        revert with 0, 'Sale has not ended'
    if uint8(stor11.field_24):
        revert with 0, 'Claim has already been unlocked'
    require ext_code.size(sub_f198abc1Address)
    staticcall sub_f198abc1Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < totalDebt:
        revert with 0, 'not enough LDao in contract'
    uint8(stor11.field_24) = 1
    emit 0xd82fec69: block.number
}

function adminWithdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'rOwnable: caller is not the owne'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
    mem[324 len 0] = 0
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, arg2
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
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
    emit AdminWithdrawal(address(arg1), arg2);
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor11.field_40):
        revert with 0, 'contract is paused'
    if not uint8(stor11.field_24):
        revert with 0, 'LDao is not yet claimable'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x645f616d6f756e74206d7573742062652067726561746572207468616e207a6572,
                    mem[197 len 31]
    if arg1 + userInfo[msg.sender].field_256 < userInfo[msg.sender].field_256:
        revert with 0, 'SafeMath: addition overflow'
    userInfo[msg.sender].field_256 += arg1
    if arg1 > totalDebt:
        revert with 0, 'SafeMath: subtraction overflow'
    totalDebt -= arg1
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(sub_0528ea18Address):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call sub_0528ea18Address with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
        if not ext_code.size(sub_f198abc1Address):
            revert with 0, 'Address: call to non-contract'
        mem[456 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
        call sub_f198abc1Address with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args arg1, mem[392 len 24], 0, mem[520 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
        else:
            mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[488]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 567 len 22]
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
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[ceil32(return_data.size) + 563 len 26]
        if not ext_code.size(sub_f198abc1Address):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
        call sub_f198abc1Address with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args arg1, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 567 len 22]
        else:
            mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 489]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    emit Mint(sub_0528ea18Address, arg1, msg.sender);
    emit Withdraw(sub_f198abc1Address, arg1, msg.sender);
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor11.field_40):
        revert with 0, 'contract is paused'
    if not uint8(stor11.field_0):
        revert with 0, 'Sale has not started'
    if uint8(stor11.field_8):
        revert with 0, 'Sale has ended'
    if 1 == bool(stor13[msg.sender]):
        if minCap > arg1:
            revert with 0, 'min amount is 200 BUSD'
        if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
            revert with 0, 'SafeMath: addition overflow'
        if cap < arg1 + userInfo[msg.sender].field_0:
            revert with 0, 'new amount above user limit'
        if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
            revert with 0, 'SafeMath: addition overflow'
        userInfo[msg.sender].field_0 += arg1
        if arg1 + sub_6ad4e59a < sub_6ad4e59a:
            revert with 0, 'SafeMath: addition overflow'
        sub_6ad4e59a += arg1
        if bool(stor13[msg.sender]) != 1:
            if arg1:
                if 10^18 * arg1 / arg1 != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
            revert with 0, 'SafeMath: division by zero'
        if not arg1:
            if price <= 0:
                revert with 0, 'SafeMath: division by zero'
            require price
            if (0 / price / 10^9) + totalDebt < totalDebt:
                revert with 0, 'SafeMath: addition overflow'
            totalDebt += 0 / price / 10^9
            if not arg1:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                if not ext_code.size(BUSDAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(DAOAddress), 0
                mem[416 len 4] = 0
                call BUSDAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args 0, mem[388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(DAOAddress), 0
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[402 len 14],
                                    0,
                                    mem[420 len 4]
                    if not arg1:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                        if not ext_code.size(BUSDAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[488 len 96] = unknown_0x23b872dd(?????), msg.sender, address(stor5), 0
                        mem[612 len 4] = 0
                        mem[584 len 0] = 0
                        call BUSDAddress with:
                           funct uint32(stor5)
                             gas gas_remaining wei
                            args Mask(736, -512, unknown_0x23b872dd(?????), msg.sender, address(stor5), 0) << 512, mem[584 len 4]
                    else:
                        if 10 * arg1 / arg1 != 10:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                        if not ext_code.size(BUSDAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[488 len 96] = unknown_0x23b872dd(?????), msg.sender, address(stor5), Mask(224, 32, 10 * arg1 / 100) >> 32
                        mem[612 len 4] = 0
                        mem[584 len 0] = 0
                        call BUSDAddress with:
                           funct uint32(stor5)
                             gas gas_remaining wei
                            args Mask(224, 32, 10 * arg1 / 100) << 480, mem[584 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(DAOAddress), 0
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[598 len 14],
                                        0,
                                        mem[616 len 4]
                    else:
                        mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[520]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 599 len 22]
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
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 403 len 22]
                    if not arg1:
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 595 len 26]
                        if not ext_code.size(BUSDAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 489 len 96] = unknown_0x23b872dd(?????), msg.sender, address(stor5), 0
                        mem[ceil32(return_data.size) + 613 len 4] = 0
                        mem[ceil32(return_data.size) + 585 len 0] = 0
                        call BUSDAddress with:
                           funct uint32(stor5)
                             gas gas_remaining wei
                            args Mask(736, -512, unknown_0x23b872dd(?????), msg.sender, address(stor5), 0) << 512, mem[ceil32(return_data.size) + 585 len 4]
                    else:
                        if 10 * arg1 / arg1 != 10:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 394 len 31]
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 595 len 26]
                        if not ext_code.size(BUSDAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 489 len 96] = unknown_0x23b872dd(?????), msg.sender, address(stor5), Mask(224, 32, 10 * arg1 / 100) >> 32
                        mem[ceil32(return_data.size) + 613 len 4] = 0
                        mem[ceil32(return_data.size) + 585 len 0] = 0
                        call BUSDAddress with:
                           funct uint32(stor5)
                             gas gas_remaining wei
                            args Mask(224, 32, 10 * arg1 / 100) << 480, mem[ceil32(return_data.size) + 585 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(DAOAddress), 0
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 599 len 14],
                                        0,
                                        mem[ceil32(return_data.size) + 617 len 4]
                    else:
                        mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 521]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 600 len 22]
                require ext_code.size(sub_0528ea18Address)
                call sub_0528ea18Address.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, 0 / price / 10^9
            else:
                if 90 * arg1 / arg1 != 90:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                if not ext_code.size(BUSDAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(DAOAddress), Mask(224, 32, 90 * arg1 / 100) >> 32
                mem[416 len 4] = 0
                mem[388 len 0] = 0
                call BUSDAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args Mask(224, 32, 90 * arg1 / 100) << 480, mem[388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(DAOAddress), 90 * arg1 / 100
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[402 len 14],
                                    0,
                                    mem[420 len 4]
                    if not arg1:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                        if not ext_code.size(BUSDAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[488 len 96] = 0, msg.sender, address(stor5), 0
                        mem[612 len 4] = 0
                        call BUSDAddress with:
                           funct uint32(stor5)
                             gas gas_remaining wei
                            args 0, mem[424 len 60], mem[584 len 4]
                    else:
                        if 10 * arg1 / arg1 != 10:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                        if not ext_code.size(BUSDAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[488 len 96] = 0, msg.sender, address(stor5), Mask(224, 32, 10 * arg1 / 100) >> 32
                        mem[612 len 4] = 0
                        call BUSDAddress with:
                           funct uint32(stor5)
                             gas gas_remaining wei
                            args 10 * arg1 / 100, mem[424 len 60], mem[584 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(DAOAddress), 90 * arg1 / 100
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[598 len 14],
                                        0,
                                        mem[616 len 4]
                    else:
                        mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[520]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 599 len 22]
                    require ext_code.size(sub_0528ea18Address)
                    call sub_0528ea18Address.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, 0 / price / 10^9
                else:
                    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        if not arg1:
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 595 len 26]
                            if not ext_code.size(BUSDAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(stor5), 0
                            mem[ceil32(return_data.size) + 613 len 4] = 0
                            call BUSDAddress with:
                               funct uint32(stor5)
                                 gas gas_remaining wei
                                args 0, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                        else:
                            if 10 * arg1 / arg1 != 10:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 394 len 31]
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 595 len 26]
                            if not ext_code.size(BUSDAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(stor5), Mask(224, 32, 10 * arg1 / 100) >> 32
                            mem[ceil32(return_data.size) + 613 len 4] = 0
                            call BUSDAddress with:
                               funct uint32(stor5)
                                 gas gas_remaining wei
                                args 10 * arg1 / 100, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0x23b872dd(?????), msg.sender, address(DAOAddress), 90 * arg1 / 100
                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 599 len 14],
                                            0,
                                            mem[ceil32(return_data.size) + 617 len 4]
                            require ext_code.size(sub_0528ea18Address)
                            call sub_0528ea18Address.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / price / 10^9
                        else:
                            mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 521]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            require ext_code.size(sub_0528ea18Address)
                            call sub_0528ea18Address.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / price / 10^9, mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    else:
                        require return_data.size >= 32
                        if not mem[324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 403 len 22]
                        if not arg1:
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 595 len 26]
                            if not ext_code.size(BUSDAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(stor5), 0
                            mem[ceil32(return_data.size) + 613 len 4] = 0
                            call BUSDAddress with:
                               funct uint32(stor5)
                                 gas gas_remaining wei
                                args 0, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0x23b872dd(?????), msg.sender, address(DAOAddress), 90 * arg1 / 100
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 599 len 14],
                                                0,
                                                mem[ceil32(return_data.size) + 617 len 4]
                                require ext_code.size(sub_0528ea18Address)
                                call sub_0528ea18Address.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / price / 10^9
                            else:
                                mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 521]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                require ext_code.size(sub_0528ea18Address)
                                call sub_0528ea18Address.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / price / 10^9, mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        else:
                            if 10 * arg1 / arg1 != 10:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 394 len 31]
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 595 len 26]
                            if not ext_code.size(BUSDAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(stor5), Mask(224, 32, 10 * arg1 / 100) >> 32
                            mem[ceil32(return_data.size) + 613 len 4] = 0
                            call BUSDAddress with:
                               funct uint32(stor5)
                                 gas gas_remaining wei
                                args 10 * arg1 / 100, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0x23b872dd(?????), msg.sender, address(DAOAddress), 90 * arg1 / 100
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 599 len 14],
                                                0,
                                                mem[ceil32(return_data.size) + 617 len 4]
                            else:
                                mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 521]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 600 len 22]
                            require ext_code.size(sub_0528ea18Address)
                            call sub_0528ea18Address.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / price / 10^9
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Deposit(arg1, msg.sender);
        else:
            if 10^18 * arg1 / arg1 != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if price <= 0:
                revert with 0, 'SafeMath: division by zero'
            require price
            if (10^18 * arg1 / price / 10^9) + totalDebt < totalDebt:
                revert with 0, 'SafeMath: addition overflow'
            totalDebt += 10^18 * arg1 / price / 10^9
            if not arg1:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                if not ext_code.size(BUSDAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(DAOAddress), 0
                mem[416 len 4] = 0
                call BUSDAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args 0, mem[388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(DAOAddress), 0
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[402 len 14],
                                    0,
                                    mem[420 len 4]
                    if arg1:
                        if 10 * arg1 / arg1 != 10:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                        if not ext_code.size(BUSDAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[488 len 96] = unknown_0x23b872dd(?????), msg.sender, address(stor5), Mask(224, 32, 10 * arg1 / 100) >> 32
                        mem[612 len 4] = 0
                        call BUSDAddress with:
                           funct uint32(stor5)
                             gas gas_remaining wei
                            args Mask(224, 32, 10 * arg1 / 100) << 480, mem[584 len 4]
                    else:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                        if not ext_code.size(BUSDAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[488 len 96] = unknown_0x23b872dd(?????), msg.sender, address(stor5), 0
                        mem[612 len 4] = 0
                        mem[584 len 0] = 0
                        call BUSDAddress with:
                           funct uint32(stor5)
                             gas gas_remaining wei
                            args Mask(736, -512, unknown_0x23b872dd(?????), msg.sender, address(stor5), 0) << 512, mem[584 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(DAOAddress), 0
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[598 len 14],
                                        0,
                                        mem[616 len 4]
                    else:
                        mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[520]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 599 len 22]
                    require ext_code.size(sub_0528ea18Address)
                    call sub_0528ea18Address.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, 10^18 * arg1 / price / 10^9
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Deposit(arg1, msg.sender);
                else:
                    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        if not arg1:
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 595 len 26]
                            if not ext_code.size(BUSDAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 489 len 96] = unknown_0x23b872dd(?????), msg.sender, address(stor5), 0
                            mem[ceil32(return_data.size) + 613 len 4] = 0
                            call BUSDAddress with:
                               funct uint32(stor5)
                                 gas gas_remaining wei
                                args 0, mem[ceil32(return_data.size) + 585 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0x23b872dd(?????), msg.sender, address(DAOAddress), 0
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 599 len 14],
                                                0,
                                                mem[ceil32(return_data.size) + 617 len 4]
                                require ext_code.size(sub_0528ea18Address)
                                call sub_0528ea18Address.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^18 * arg1 / price / 10^9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit Deposit(arg1, msg.sender);
                            else:
                                mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 521]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                require ext_code.size(sub_0528ea18Address)
                                call sub_0528ea18Address.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^18 * arg1 / price / 10^9, mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit Deposit(address arg1, uint256 arg2):
                                             arg1,
                                             mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                             msg.sender,
                        else:
                            if 10 * arg1 / arg1 != 10:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 394 len 31]
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 595 len 26]
                            if not ext_code.size(BUSDAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 489 len 96] = unknown_0x23b872dd(?????), msg.sender, address(stor5), Mask(224, 32, 10 * arg1 / 100) >> 32
                            mem[ceil32(return_data.size) + 613 len 4] = 0
                            mem[ceil32(return_data.size) + 585 len 0] = 0
                            call BUSDAddress with:
                               funct uint32(stor5)
                                 gas gas_remaining wei
                                args Mask(224, 32, 10 * arg1 / 100) << 480, mem[ceil32(return_data.size) + 585 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0x23b872dd(?????), msg.sender, address(DAOAddress), 0
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 599 len 14],
                                                0,
                                                mem[ceil32(return_data.size) + 617 len 4]
                            else:
                                mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 521]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 600 len 22]
                            require ext_code.size(sub_0528ea18Address)
                            call sub_0528ea18Address.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 10^18 * arg1 / price / 10^9
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Deposit(arg1, msg.sender);
                    else:
                        require return_data.size >= 32
                        if not mem[324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 403 len 22]
                        if not arg1:
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 595 len 26]
                            if not ext_code.size(BUSDAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 489 len 96] = unknown_0x23b872dd(?????), msg.sender, address(stor5), 0
                            mem[ceil32(return_data.size) + 613 len 4] = 0
                            mem[ceil32(return_data.size) + 585 len 0] = 0
                            call BUSDAddress with:
                               funct uint32(stor5)
                                 gas gas_remaining wei
                                args Mask(736, -512, unknown_0x23b872dd(?????), msg.sender, address(stor5), 0) << 512, mem[ceil32(return_data.size) + 585 len 4]
                        else:
                            if 10 * arg1 / arg1 != 10:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 394 len 31]
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 595 len 26]
                            if not ext_code.size(BUSDAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 489 len 96] = unknown_0x23b872dd(?????), msg.sender, address(stor5), Mask(224, 32, 10 * arg1 / 100) >> 32
                            mem[ceil32(return_data.size) + 613 len 4] = 0
                            mem[ceil32(return_data.size) + 585 len 0] = 0
                            call BUSDAddress with:
                               funct uint32(stor5)
                                 gas gas_remaining wei
                                args Mask(224, 32, 10 * arg1 / 100) << 480, mem[ceil32(return_data.size) + 585 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0x23b872dd(?????), msg.sender, address(DAOAddress), 0
                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 599 len 14],
                                            0,
                                            mem[ceil32(return_data.size) + 617 len 4]
                        else:
                            mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 521]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 600 len 22]
                        require ext_code.size(sub_0528ea18Address)
                        call sub_0528ea18Address.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, 10^18 * arg1 / price / 10^9
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Deposit(arg1, msg.sender);
            else:
                if 90 * arg1 / arg1 != 90:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                if not ext_code.size(BUSDAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(DAOAddress), Mask(224, 32, 90 * arg1 / 100) >> 32
                mem[416 len 4] = 0
                mem[388 len 0] = 0
                call BUSDAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args Mask(224, 32, 90 * arg1 / 100) << 480, mem[388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(DAOAddress), 90 * arg1 / 100
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[402 len 14],
                                    0,
                                    mem[420 len 4]
                    if not arg1:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                        if not ext_code.size(BUSDAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[488 len 96] = 0, msg.sender, address(stor5), 0
                        mem[612 len 4] = 0
                        call BUSDAddress with:
                           funct uint32(stor5)
                             gas gas_remaining wei
                            args 0, mem[424 len 60], mem[584 len 4]
                    else:
                        if 10 * arg1 / arg1 != 10:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                        if not ext_code.size(BUSDAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[488 len 96] = 0, msg.sender, address(stor5), Mask(224, 32, 10 * arg1 / 100) >> 32
                        mem[612 len 4] = 0
                        call BUSDAddress with:
                           funct uint32(stor5)
                             gas gas_remaining wei
                            args 10 * arg1 / 100, mem[424 len 60], mem[584 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(DAOAddress), 90 * arg1 / 100
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[598 len 14],
                                        0,
                                        mem[616 len 4]
                    else:
                        mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[520]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 599 len 22]
                    require ext_code.size(sub_0528ea18Address)
                    call sub_0528ea18Address.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, 10^18 * arg1 / price / 10^9
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
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 403 len 22]
                    if not arg1:
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 595 len 26]
                        if not ext_code.size(BUSDAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(stor5), 0
                        mem[ceil32(return_data.size) + 613 len 4] = 0
                        call BUSDAddress with:
                           funct uint32(stor5)
                             gas gas_remaining wei
                            args 0, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                    else:
                        if 10 * arg1 / arg1 != 10:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 394 len 31]
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 595 len 26]
                        if not ext_code.size(BUSDAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(stor5), Mask(224, 32, 10 * arg1 / 100) >> 32
                        mem[ceil32(return_data.size) + 613 len 4] = 0
                        call BUSDAddress with:
                           funct uint32(stor5)
                             gas gas_remaining wei
                            args 10 * arg1 / 100, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(DAOAddress), 90 * arg1 / 100
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 599 len 14],
                                        0,
                                        mem[ceil32(return_data.size) + 617 len 4]
                        require ext_code.size(sub_0528ea18Address)
                        call sub_0528ea18Address.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, 10^18 * arg1 / price / 10^9
                    else:
                        mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 521]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        require ext_code.size(sub_0528ea18Address)
                        call sub_0528ea18Address.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, 10^18 * arg1 / price / 10^9, mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Deposit(arg1, msg.sender);
    else:
        if not uint8(stor11.field_16):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0x776d73672e73656e646572206973206e6f742077686974656c697374656420757365,
                        mem[198 len 30]
        if minCap > arg1:
            revert with 0, 'min amount is 200 BUSD'
        if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
            revert with 0, 'SafeMath: addition overflow'
        if cap < arg1 + userInfo[msg.sender].field_0:
            revert with 0, 'new amount above user limit'
        if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
            revert with 0, 'SafeMath: addition overflow'
        userInfo[msg.sender].field_0 += arg1
        if arg1 + sub_6ad4e59a < sub_6ad4e59a:
            revert with 0, 'SafeMath: addition overflow'
        sub_6ad4e59a += arg1
        if bool(stor13[msg.sender]) != 1:
            if arg1:
                if 10^18 * arg1 / arg1 != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
            revert with 0, 'SafeMath: division by zero'
        if not arg1:
            if price <= 0:
                revert with 0, 'SafeMath: division by zero'
            require price
            if (0 / price / 10^9) + totalDebt < totalDebt:
                revert with 0, 'SafeMath: addition overflow'
            totalDebt += 0 / price / 10^9
            if not arg1:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                if not ext_code.size(BUSDAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(DAOAddress), 0
                mem[416 len 4] = 0
                mem[388 len 0] = 0
                call BUSDAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args Mask(736, -512, unknown_0x23b872dd(?????), msg.sender, address(DAOAddress), 0) << 512, mem[388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(DAOAddress), 0
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[402 len 14],
                                    0,
                                    mem[420 len 4]
                    if not arg1:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                        if not ext_code.size(BUSDAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[488 len 96] = 0, msg.sender, address(stor5), 0
                        mem[612 len 4] = 0
                        call BUSDAddress with:
                           funct uint32(stor5)
                             gas gas_remaining wei
                            args 0, mem[424 len 60], mem[584 len 4]
                    else:
                        if 10 * arg1 / arg1 != 10:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                        if not ext_code.size(BUSDAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[488 len 96] = 0, msg.sender, address(stor5), Mask(224, 32, 10 * arg1 / 100) >> 32
                        mem[612 len 4] = 0
                        call BUSDAddress with:
                           funct uint32(stor5)
                             gas gas_remaining wei
                            args 10 * arg1 / 100, mem[424 len 60], mem[584 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(DAOAddress), 0
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[598 len 14],
                                        0,
                                        mem[616 len 4]
                    else:
                        mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[520]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 599 len 22]
                    require ext_code.size(sub_0528ea18Address)
                    call sub_0528ea18Address.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, 0 / price / 10^9
                else:
                    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        if not arg1:
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 595 len 26]
                            if not ext_code.size(BUSDAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(stor5), 0
                            mem[ceil32(return_data.size) + 613 len 4] = 0
                            call BUSDAddress with:
                               funct uint32(stor5)
                                 gas gas_remaining wei
                                args 0, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                        else:
                            if 10 * arg1 / arg1 != 10:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 394 len 31]
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 595 len 26]
                            if not ext_code.size(BUSDAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(stor5), Mask(224, 32, 10 * arg1 / 100) >> 32
                            mem[ceil32(return_data.size) + 613 len 4] = 0
                            call BUSDAddress with:
                               funct uint32(stor5)
                                 gas gas_remaining wei
                                args 10 * arg1 / 100, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0x23b872dd(?????), msg.sender, address(DAOAddress), 0
                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 599 len 14],
                                            0,
                                            mem[ceil32(return_data.size) + 617 len 4]
                            require ext_code.size(sub_0528ea18Address)
                            call sub_0528ea18Address.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / price / 10^9
                        else:
                            mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 521]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            require ext_code.size(sub_0528ea18Address)
                            call sub_0528ea18Address.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / price / 10^9, mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    else:
                        require return_data.size >= 32
                        if not mem[324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 403 len 22]
                        if not arg1:
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 595 len 26]
                            if not ext_code.size(BUSDAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(stor5), 0
                            mem[ceil32(return_data.size) + 613 len 4] = 0
                            call BUSDAddress with:
                               funct uint32(stor5)
                                 gas gas_remaining wei
                                args 0, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                        else:
                            if 10 * arg1 / arg1 != 10:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 394 len 31]
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 595 len 26]
                            if not ext_code.size(BUSDAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(stor5), Mask(224, 32, 10 * arg1 / 100) >> 32
                            mem[ceil32(return_data.size) + 613 len 4] = 0
                            call BUSDAddress with:
                               funct uint32(stor5)
                                 gas gas_remaining wei
                                args 10 * arg1 / 100, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0x23b872dd(?????), msg.sender, address(DAOAddress), 0
                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 599 len 14],
                                            0,
                                            mem[ceil32(return_data.size) + 617 len 4]
                        else:
                            mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 521]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 600 len 22]
                        require ext_code.size(sub_0528ea18Address)
                        call sub_0528ea18Address.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0 / price / 10^9
            else:
                if 90 * arg1 / arg1 != 90:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                if not ext_code.size(BUSDAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(DAOAddress), Mask(224, 32, 90 * arg1 / 100) >> 32
                mem[416 len 4] = 0
                mem[388 len 0] = 0
                call BUSDAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args Mask(224, 32, 90 * arg1 / 100) << 480, mem[388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(DAOAddress), 90 * arg1 / 100
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[402 len 14],
                                    0,
                                    mem[420 len 4]
                    if not arg1:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                        if not ext_code.size(BUSDAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[488 len 96] = 0, msg.sender, address(stor5), 0
                        mem[612 len 4] = 0
                        call BUSDAddress with:
                           funct uint32(stor5)
                             gas gas_remaining wei
                            args 0, mem[424 len 60], mem[584 len 4]
                    else:
                        if 10 * arg1 / arg1 != 10:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                        if not ext_code.size(BUSDAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[488 len 96] = 0, msg.sender, address(stor5), Mask(224, 32, 10 * arg1 / 100) >> 32
                        mem[612 len 4] = 0
                        call BUSDAddress with:
                           funct uint32(stor5)
                             gas gas_remaining wei
                            args 10 * arg1 / 100, mem[424 len 60], mem[584 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(DAOAddress), 90 * arg1 / 100
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[598 len 14],
                                        0,
                                        mem[616 len 4]
                    else:
                        mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[520]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 599 len 22]
                    require ext_code.size(sub_0528ea18Address)
                    call sub_0528ea18Address.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, 0 / price / 10^9
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
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 403 len 22]
                    if not arg1:
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 595 len 26]
                        if not ext_code.size(BUSDAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(stor5), 0
                        mem[ceil32(return_data.size) + 613 len 4] = 0
                        call BUSDAddress with:
                           funct uint32(stor5)
                             gas gas_remaining wei
                            args 0, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                    else:
                        if 10 * arg1 / arg1 != 10:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 394 len 31]
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 595 len 26]
                        if not ext_code.size(BUSDAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(stor5), Mask(224, 32, 10 * arg1 / 100) >> 32
                        mem[ceil32(return_data.size) + 613 len 4] = 0
                        call BUSDAddress with:
                           funct uint32(stor5)
                             gas gas_remaining wei
                            args 10 * arg1 / 100, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(DAOAddress), 90 * arg1 / 100
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 599 len 14],
                                        0,
                                        mem[ceil32(return_data.size) + 617 len 4]
                        require ext_code.size(sub_0528ea18Address)
                        call sub_0528ea18Address.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0 / price / 10^9
                    else:
                        mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 521]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        require ext_code.size(sub_0528ea18Address)
                        call sub_0528ea18Address.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0 / price / 10^9, mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        else:
            if 10^18 * arg1 / arg1 != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if price <= 0:
                revert with 0, 'SafeMath: division by zero'
            require price
            if (10^18 * arg1 / price / 10^9) + totalDebt < totalDebt:
                revert with 0, 'SafeMath: addition overflow'
            totalDebt += 10^18 * arg1 / price / 10^9
            if not arg1:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                if not ext_code.size(BUSDAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(DAOAddress), 0
                mem[416 len 4] = 0
                call BUSDAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args 0, mem[388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(DAOAddress), 0
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[402 len 14],
                                    0,
                                    mem[420 len 4]
                    if not arg1:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                        if not ext_code.size(BUSDAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[488 len 96] = unknown_0x23b872dd(?????), msg.sender, address(stor5), 0
                        mem[612 len 4] = 0
                        call BUSDAddress with:
                           funct uint32(stor5)
                             gas gas_remaining wei
                            args 0, mem[584 len 4]
                    else:
                        if 10 * arg1 / arg1 != 10:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                        if not ext_code.size(BUSDAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[488 len 96] = unknown_0x23b872dd(?????), msg.sender, address(stor5), Mask(224, 32, 10 * arg1 / 100) >> 32
                        mem[612 len 4] = 0
                        mem[584 len 0] = 0
                        call BUSDAddress with:
                           funct uint32(stor5)
                             gas gas_remaining wei
                            args Mask(224, 32, 10 * arg1 / 100) << 480, mem[584 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(DAOAddress), 0
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[598 len 14],
                                        0,
                                        mem[616 len 4]
                    else:
                        mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[520]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 599 len 22]
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
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 403 len 22]
                    if not arg1:
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 595 len 26]
                        if not ext_code.size(BUSDAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 489 len 96] = unknown_0x23b872dd(?????), msg.sender, address(stor5), 0
                        mem[ceil32(return_data.size) + 613 len 4] = 0
                        mem[ceil32(return_data.size) + 585 len 0] = 0
                        call BUSDAddress with:
                           funct uint32(stor5)
                             gas gas_remaining wei
                            args Mask(736, -512, unknown_0x23b872dd(?????), msg.sender, address(stor5), 0) << 512, mem[ceil32(return_data.size) + 585 len 4]
                    else:
                        if 10 * arg1 / arg1 != 10:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 394 len 31]
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 595 len 26]
                        if not ext_code.size(BUSDAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 489 len 96] = unknown_0x23b872dd(?????), msg.sender, address(stor5), Mask(224, 32, 10 * arg1 / 100) >> 32
                        mem[ceil32(return_data.size) + 613 len 4] = 0
                        mem[ceil32(return_data.size) + 585 len 0] = 0
                        call BUSDAddress with:
                           funct uint32(stor5)
                             gas gas_remaining wei
                            args Mask(224, 32, 10 * arg1 / 100) << 480, mem[ceil32(return_data.size) + 585 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(DAOAddress), 0
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 599 len 14],
                                        0,
                                        mem[ceil32(return_data.size) + 617 len 4]
                    else:
                        mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 521]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 600 len 22]
                require ext_code.size(sub_0528ea18Address)
                call sub_0528ea18Address.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, 10^18 * arg1 / price / 10^9
            else:
                if 90 * arg1 / arg1 != 90:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                if not ext_code.size(BUSDAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(DAOAddress), Mask(224, 32, 90 * arg1 / 100) >> 32
                mem[416 len 4] = 0
                mem[388 len 0] = 0
                call BUSDAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args Mask(224, 32, 90 * arg1 / 100) << 480, mem[388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(DAOAddress), 90 * arg1 / 100
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[402 len 14],
                                    0,
                                    mem[420 len 4]
                    if not arg1:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                        if not ext_code.size(BUSDAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[488 len 96] = 0, msg.sender, address(stor5), 0
                        mem[612 len 4] = 0
                        call BUSDAddress with:
                           funct uint32(stor5)
                             gas gas_remaining wei
                            args 0, mem[424 len 60], mem[584 len 4]
                    else:
                        if 10 * arg1 / arg1 != 10:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                        if not ext_code.size(BUSDAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[488 len 96] = 0, msg.sender, address(stor5), Mask(224, 32, 10 * arg1 / 100) >> 32
                        mem[612 len 4] = 0
                        call BUSDAddress with:
                           funct uint32(stor5)
                             gas gas_remaining wei
                            args 10 * arg1 / 100, mem[424 len 60], mem[584 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(DAOAddress), 90 * arg1 / 100
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[598 len 14],
                                        0,
                                        mem[616 len 4]
                    else:
                        mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[520]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 599 len 22]
                    require ext_code.size(sub_0528ea18Address)
                    call sub_0528ea18Address.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, 10^18 * arg1 / price / 10^9
                else:
                    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        if not arg1:
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 595 len 26]
                            if not ext_code.size(BUSDAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(stor5), 0
                            mem[ceil32(return_data.size) + 613 len 4] = 0
                            call BUSDAddress with:
                               funct uint32(stor5)
                                 gas gas_remaining wei
                                args 0, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0x23b872dd(?????), msg.sender, address(DAOAddress), 90 * arg1 / 100
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 599 len 14],
                                                0,
                                                mem[ceil32(return_data.size) + 617 len 4]
                            else:
                                mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 521]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 600 len 22]
                            require ext_code.size(sub_0528ea18Address)
                            call sub_0528ea18Address.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 10^18 * arg1 / price / 10^9
                        else:
                            if 10 * arg1 / arg1 != 10:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 394 len 31]
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 595 len 26]
                            if not ext_code.size(BUSDAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(stor5), Mask(224, 32, 10 * arg1 / 100) >> 32
                            mem[ceil32(return_data.size) + 613 len 4] = 0
                            call BUSDAddress with:
                               funct uint32(stor5)
                                 gas gas_remaining wei
                                args 10 * arg1 / 100, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0x23b872dd(?????), msg.sender, address(DAOAddress), 90 * arg1 / 100
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 599 len 14],
                                                0,
                                                mem[ceil32(return_data.size) + 617 len 4]
                                require ext_code.size(sub_0528ea18Address)
                                call sub_0528ea18Address.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^18 * arg1 / price / 10^9
                            else:
                                mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 521]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                require ext_code.size(sub_0528ea18Address)
                                call sub_0528ea18Address.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^18 * arg1 / price / 10^9, mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    else:
                        require return_data.size >= 32
                        if not mem[324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 403 len 22]
                        if not arg1:
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 595 len 26]
                            if not ext_code.size(BUSDAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(stor5), 0
                            mem[ceil32(return_data.size) + 613 len 4] = 0
                            call BUSDAddress with:
                               funct uint32(stor5)
                                 gas gas_remaining wei
                                args 0, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                        else:
                            if 10 * arg1 / arg1 != 10:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 394 len 31]
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 595 len 26]
                            if not ext_code.size(BUSDAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(stor5), Mask(224, 32, 10 * arg1 / 100) >> 32
                            mem[ceil32(return_data.size) + 613 len 4] = 0
                            call BUSDAddress with:
                               funct uint32(stor5)
                                 gas gas_remaining wei
                                args 10 * arg1 / 100, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0x23b872dd(?????), msg.sender, address(DAOAddress), 90 * arg1 / 100
                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 599 len 14],
                                            0,
                                            mem[ceil32(return_data.size) + 617 len 4]
                            require ext_code.size(sub_0528ea18Address)
                            call sub_0528ea18Address.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 10^18 * arg1 / price / 10^9
                        else:
                            mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 521]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            require ext_code.size(sub_0528ea18Address)
                            call sub_0528ea18Address.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 10^18 * arg1 / price / 10^9, mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Deposit(arg1, msg.sender);
}



}
