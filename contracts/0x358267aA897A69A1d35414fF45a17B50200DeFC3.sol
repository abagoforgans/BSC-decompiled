contract main {




// =====================  Runtime code  =====================


#
#  - convertDustToEarned()
#  - earn()
#
const sub_023ac7a1(?) = 300

const controllerFeeUL = 300

const sub_1e4cb629(?) = 10000

const controllerFeeMax = 10000

const buyBackRateMax = 10000

const withdrawFeeFactorMax = 10000

const withdrawFeeFactorLL = 9950

const buyBackRateUL = 800

const slippageFactorUL = 995

const entranceFeeFactorLL = 9950

const entranceFeeFactorMax = 10000


address owner;
uint256 stor1;
uint8 stor2;
mapping of uint8 stor3;
uint8 stor4;
uint8 stor4; offset 8
uint8 stor4; offset 16
uint32 stor4;
address farmContractAddress; offset 24
uint256 stor4;
uint256 pid;
address wantAddress;
address token0Address;
address token1Address;
address earnedAddress;
address uniRouterAddress;
address wbnbAddress;
uint32 stor12;
address sub_a6933411Address;
uint256 stor12;
address sub_a3ad6789Address;
address sub_0a6b9a06Address;
uint256 stakingFee;
uint8 stor16; offset 160
uint128 stor16; offset 160
address govAddress;
uint256 lastEarnBlock;
uint256 stor18; offset 32
uint256 wantLockedTotal;
big480 stor18;
uint256 sharesTotal;
uint256 controllerFee;
uint256 buyBackRate;
address buyBackAddress;
uint32 stor23;
address rewardsAddress;
uint256 stor23;
uint256 entranceFeeFactor;
uint256 withdrawFeeFactor;
uint256 slippageFactor;
array of address sub_fc97beb3;
array of address earnedToToken0Path;
array of address earnedToToken1Path;
array of address token0ToEarnedPath;
array of address token1ToEarnedPath;
array of address sub_5d82e33a;

function token1ToEarnedPath(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < token1ToEarnedPath.length
    return token1ToEarnedPath[arg1]
}

function sub_0a6b9a06(?) payable {
    return sub_0a6b9a06Address
}

function onlyGov() payable {
    return bool(uint8(stor16.field_160))
}

function lastEarnBlock() payable {
    return lastEarnBlock
}

function entranceFeeFactor() payable {
    return entranceFeeFactor
}

function buyBackRate() payable {
    return buyBackRate
}

function wantLockedTotal() payable {
    return wantLockedTotal
}

function sharesTotal() payable {
    return sharesTotal
}

function govAddress() payable {
    return govAddress
}

function paused() payable {
    return bool(stor2)
}

function sub_5d82e33a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_5d82e33a.length
    return sub_5d82e33a[arg1]
}

function wbnbAddress() payable {
    return wbnbAddress
}

function withdrawFeeFactor() payable {
    return withdrawFeeFactor
}

function uniRouterAddress() payable {
    return uniRouterAddress
}

function buyBackAddress() payable {
    return buyBackAddress
}

function token0Address() payable {
    return token0Address
}

function isCAKEStaking() payable {
    return bool(uint8(stor4.field_0))
}

function controllerFee() payable {
    return controllerFee
}

function owner() payable {
    return owner
}

function earnedToToken1Path(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < earnedToToken1Path.length
    return earnedToToken1Path[arg1]
}

function isSameAssetDeposit() payable {
    return bool(uint8(stor4.field_8))
}

function farmContractAddress() payable {
    return farmContractAddress
}

function isMember(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[address(arg1)])
}

function sub_a3ad6789(?) payable {
    return sub_a3ad6789Address
}

function sub_a6933411(?) payable {
    return address(sub_a6933411Address)
}

function token0ToEarnedPath(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < token0ToEarnedPath.length
    return token0ToEarnedPath[arg1]
}

function rewardsAddress() payable {
    return address(rewardsAddress)
}

function earnedToToken0Path(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < earnedToToken0Path.length
    return earnedToToken0Path[arg1]
}

function token1Address() payable {
    return token1Address
}

function isAutoComp() payable {
    return bool(uint8(stor4.field_16))
}

function earnedAddress() payable {
    return earnedAddress
}

function wantAddress() payable {
    return wantAddress
}

function stakingFee() payable {
    return stakingFee
}

function pid() payable {
    return pid
}

function sub_fc97beb3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_fc97beb3.length
    return sub_fc97beb3[arg1]
}

function slippageFactor() payable {
    return slippageFactor
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setGov(address arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, '!gov'
    govAddress = arg1
    emit SetGov(arg1);
}

function pause() payable {
    if govAddress != msg.sender:
        revert with 0, '!gov'
    if stor2:
        revert with 0, 'Pausable: paused'
    stor2 = 1
    emit Paused(msg.sender);
}

function sub_24cd6727(?) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, '!gov'
    sub_0a6b9a06Address = arg1
    emit 0xfddb000a: arg1
}

function unpause() payable {
    if govAddress != msg.sender:
        revert with 0, '!gov'
    if not stor2:
        revert with 0, 'Pausable: not paused'
    stor2 = 0
    emit Unpaused(msg.sender);
}

function setBuyBackAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, '!gov'
    buyBackAddress = arg1
    emit SetBuyBackAddress(arg1);
}

function setUniRouterAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, '!gov'
    uniRouterAddress = arg1
    emit SetUniRouterAddress(arg1);
}

function setRewardsAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, '!gov'
    address(rewardsAddress) = arg1
    emit SetRewardsAddress(arg1);
}

function setOnlyGov(bool arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, '!gov'
    Mask(96, 0, stor16.field_160) = Mask(96, 0, arg1)
    emit SetOnlyGov(arg1);
}

function addMember(address arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, '!gov'
    if stor3[address(arg1)]:
        revert with 0, 'Address is member already.'
    stor3[address(arg1)] = 1
    emit AddMember(arg1);
}

function removeMember(address arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, '!gov'
    if not stor3[address(arg1)]:
        revert with 0, 'Not member of whitelist.'
    stor3[address(arg1)] = 0
    emit RemoveMember(arg1);
}

function wrapBNB() payable {
    if govAddress != msg.sender:
        revert with 0, '!gov'
    if eth.balance(this.address):
        require ext_code.size(wbnbAddress)
        call wbnbAddress.0xd0e30db0 with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0x5af5c4b0 
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x4f776e61626c653a206e6577206f776e657220697320746865207a65726f2061646472657300,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setSettings(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) payable {
    require calldata.size - 4 >= 192
    if govAddress != msg.sender:
        revert with 0, '!gov'
    if arg1 < 9950:
        revert with 0, '_entranceFeeFactor too low'
    if arg1 > 10000:
        revert with 0, '_entranceFeeFactor too high'
    entranceFeeFactor = arg1
    if arg2 < 9950:
        revert with 0, '_withdrawFeeFactor too low'
    if arg2 > 10000:
        revert with 0, '_withdrawFeeFactor too high'
    withdrawFeeFactor = arg2
    if arg3 > 300:
        revert with 0, '_controllerFee too high'
    controllerFee = arg3
    if arg4 > 800:
        revert with 0, '_buyBackRate too high'
    buyBackRate = arg4
    if arg5 > 995:
        revert with 0, '_slippageFactor too high'
    slippageFactor = arg5
    if arg6 > 300:
        revert with 0, '_stakingFeeFactor too high'
    stakingFee = arg6
    emit SetSettings(arg1, arg2, arg3, arg4, arg5, arg6);
}

function inCaseTokensGetStuck(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if govAddress != msg.sender:
        revert with 0, '!gov'
    if earnedAddress == arg1:
        revert with 0, '!safe'
    if wantAddress == arg1:
        revert with 0, '!safe'
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
    emit InCaseTokensGetStuck(address(arg1), arg2, arg3);
}

function farm() payable {
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if not uint8(stor4.field_16):
        revert with 0, '!isAutoComp'
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + wantLockedTotal < wantLockedTotal:
        revert with 0, 'SafeMath: addition overflow'
    wantLockedTotal += ext_call.return_data[0]
    require ext_code.size(wantAddress)
    staticcall wantAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), farmContractAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not ext_code.size(wantAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4.field_0), uint32(stor4.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
    call wantAddress with:
       funct uint32(stor4.field_0)
         gas gas_remaining wei
        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor4.field_0), uint32(stor4.field_0), 2 * ext_call.return_data[0]
        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor4.field_0):
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
    require ext_code.size(farmContractAddress)
    if not uint8(stor4.field_0):
        call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args pid, ext_call.return_data[0]
    else:
        call farmContractAddress.enterStaking(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1 = 1
}

function deposit(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if stor2:
        revert with 0, 'Pausable: paused'
    if stor3[address(arg1)]:
        revert with 0, '!auth'
    if not ext_code.size(wantAddress):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
    mem[416 len 4] = 0
    call wantAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        if not wantLockedTotal:
            if sharesTotal:
                if arg2 + sharesTotal < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                sharesTotal += arg2
                if not uint8(stor4.field_16):
                    if arg2 + wantLockedTotal < wantLockedTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    wantLockedTotal += arg2
                else:
                    if not uint8(stor4.field_16):
                        revert with 0, '!isAutoComp'
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + wantLockedTotal < wantLockedTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    wantLockedTotal += ext_call.return_data[0]
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), farmContractAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[456 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4.field_0), uint32(stor4.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
                    call wantAddress with:
                       funct uint32(stor4.field_0)
                         gas gas_remaining wei
                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[520 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
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
                    require ext_code.size(farmContractAddress)
                    if not uint8(stor4.field_0):
                        call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args pid, ext_call.return_data[0]
                    else:
                        call farmContractAddress.enterStaking(uint256 arg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                stor1 = 1
                return arg2
            if not arg2:
                if sharesTotal < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                if not uint8(stor4.field_16):
                    if arg2 + wantLockedTotal < wantLockedTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    wantLockedTotal += arg2
                else:
                    if not uint8(stor4.field_16):
                        revert with 0, '!isAutoComp'
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + wantLockedTotal < wantLockedTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    wantLockedTotal += ext_call.return_data[0]
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), farmContractAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[520 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4.field_0), uint32(stor4.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
                    call wantAddress with:
                       funct uint32(stor4.field_0)
                         gas gas_remaining wei
                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[584 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[630 len 22]
                    else:
                        mem[552 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[552]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 631 len 22]
                    require ext_code.size(farmContractAddress)
                    if not uint8(stor4.field_0):
                        call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args pid, ext_call.return_data[0]
                    else:
                        call farmContractAddress.enterStaking(uint256 arg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                stor1 = 1
                return 0
            if entranceFeeFactor * arg2 / arg2 != entranceFeeFactor:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
            if (entranceFeeFactor * arg2 / 10000) + sharesTotal < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += entranceFeeFactor * arg2 / 10000
            if not uint8(stor4.field_16):
                if arg2 + wantLockedTotal < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += arg2
            else:
                if not uint8(stor4.field_16):
                    revert with 0, '!isAutoComp'
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + wantLockedTotal < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += ext_call.return_data[0]
                require ext_code.size(wantAddress)
                staticcall wantAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), farmContractAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[520 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4.field_0), uint32(stor4.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
                call wantAddress with:
                   funct uint32(stor4.field_0)
                     gas gas_remaining wei
                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[584 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[630 len 22]
                else:
                    mem[552 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[552]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 631 len 22]
                require ext_code.size(farmContractAddress)
                if not uint8(stor4.field_0):
                    call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pid, ext_call.return_data[0]
                else:
                    call farmContractAddress.enterStaking(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            stor1 = 1
            return (entranceFeeFactor * arg2 / 10000)
        if sharesTotal <= 0:
            if wantLockedTotal:
                if arg2 + sharesTotal < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                sharesTotal += arg2
                if not uint8(stor4.field_16):
                    if arg2 + wantLockedTotal < wantLockedTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    wantLockedTotal += arg2
                else:
                    if not uint8(stor4.field_16):
                        revert with 0, '!isAutoComp'
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + wantLockedTotal < wantLockedTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    wantLockedTotal += ext_call.return_data[0]
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), farmContractAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[456 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4.field_0), uint32(stor4.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
                    call wantAddress with:
                       funct uint32(stor4.field_0)
                         gas gas_remaining wei
                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[520 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
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
                    require ext_code.size(farmContractAddress)
                    if not uint8(stor4.field_0):
                        call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args pid, ext_call.return_data[0]
                    else:
                        call farmContractAddress.enterStaking(uint256 arg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                stor1 = 1
                return arg2
            if sharesTotal:
                if arg2 + sharesTotal < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                sharesTotal += arg2
                if not uint8(stor4.field_16):
                    if arg2 + wantLockedTotal < wantLockedTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    wantLockedTotal += arg2
                else:
                    if not uint8(stor4.field_16):
                        revert with 0, '!isAutoComp'
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + wantLockedTotal < wantLockedTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    wantLockedTotal += ext_call.return_data[0]
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), farmContractAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[456 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4.field_0), uint32(stor4.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
                    call wantAddress with:
                       funct uint32(stor4.field_0)
                         gas gas_remaining wei
                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[520 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
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
                    require ext_code.size(farmContractAddress)
                    if not uint8(stor4.field_0):
                        call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args pid, ext_call.return_data[0]
                    else:
                        call farmContractAddress.enterStaking(uint256 arg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                stor1 = 1
                return arg2
            if not arg2:
                if sharesTotal < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                if not uint8(stor4.field_16):
                    if arg2 + wantLockedTotal < wantLockedTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    wantLockedTotal += arg2
                else:
                    if not uint8(stor4.field_16):
                        revert with 0, '!isAutoComp'
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + wantLockedTotal < wantLockedTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    wantLockedTotal += ext_call.return_data[0]
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), farmContractAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[520 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4.field_0), uint32(stor4.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
                    call wantAddress with:
                       funct uint32(stor4.field_0)
                         gas gas_remaining wei
                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[584 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[630 len 22]
                    else:
                        mem[552 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[552]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 631 len 22]
                    require ext_code.size(farmContractAddress)
                    if not uint8(stor4.field_0):
                        call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args pid, ext_call.return_data[0]
                    else:
                        call farmContractAddress.enterStaking(uint256 arg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                stor1 = 1
                return 0
            if entranceFeeFactor * arg2 / arg2 != entranceFeeFactor:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
            if (entranceFeeFactor * arg2 / 10000) + sharesTotal < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += entranceFeeFactor * arg2 / 10000
            if not uint8(stor4.field_16):
                if arg2 + wantLockedTotal < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += arg2
            else:
                if not uint8(stor4.field_16):
                    revert with 0, '!isAutoComp'
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + wantLockedTotal < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += ext_call.return_data[0]
                require ext_code.size(wantAddress)
                staticcall wantAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), farmContractAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[520 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4.field_0), uint32(stor4.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
                call wantAddress with:
                   funct uint32(stor4.field_0)
                     gas gas_remaining wei
                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[584 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[630 len 22]
                else:
                    mem[552 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[552]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 631 len 22]
                require ext_code.size(farmContractAddress)
                if not uint8(stor4.field_0):
                    call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pid, ext_call.return_data[0]
                else:
                    call farmContractAddress.enterStaking(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            stor1 = 1
            return (entranceFeeFactor * arg2 / 10000)
        if not arg2:
            if not wantLockedTotal:
                revert with 0, 'SafeMath: division by zero'
            if (0 / wantLockedTotal / 10000) + sharesTotal < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += 0 / wantLockedTotal / 10000
            if not uint8(stor4.field_16):
                if arg2 + wantLockedTotal < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += arg2
            else:
                if not uint8(stor4.field_16):
                    revert with 0, '!isAutoComp'
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + wantLockedTotal < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += ext_call.return_data[0]
                require ext_code.size(wantAddress)
                staticcall wantAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), farmContractAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[584 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4.field_0), uint32(stor4.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
                call wantAddress with:
                   funct uint32(stor4.field_0)
                     gas gas_remaining wei
                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[648 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[694 len 22]
                else:
                    mem[616 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[616]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 695 len 22]
                require ext_code.size(farmContractAddress)
                if not uint8(stor4.field_0):
                    call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pid, ext_call.return_data[0]
                else:
                    call farmContractAddress.enterStaking(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            stor1 = 1
            return (0 / wantLockedTotal / 10000)
        if sharesTotal * arg2 / arg2 != sharesTotal:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
        if not sharesTotal * arg2:
            if not wantLockedTotal:
                revert with 0, 'SafeMath: division by zero'
            if (0 / wantLockedTotal / 10000) + sharesTotal < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += 0 / wantLockedTotal / 10000
            if not uint8(stor4.field_16):
                if arg2 + wantLockedTotal < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += arg2
            else:
                if not uint8(stor4.field_16):
                    revert with 0, '!isAutoComp'
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + wantLockedTotal < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += ext_call.return_data[0]
                require ext_code.size(wantAddress)
                staticcall wantAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), farmContractAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[584 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4.field_0), uint32(stor4.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
                call wantAddress with:
                   funct uint32(stor4.field_0)
                     gas gas_remaining wei
                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[648 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[694 len 22]
                else:
                    mem[616 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[616]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 695 len 22]
                require ext_code.size(farmContractAddress)
                if not uint8(stor4.field_0):
                    call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pid, ext_call.return_data[0]
                else:
                    call farmContractAddress.enterStaking(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            stor1 = 1
            return (0 / wantLockedTotal / 10000)
        if entranceFeeFactor * sharesTotal * arg2 / sharesTotal * arg2 != entranceFeeFactor:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
        if not wantLockedTotal:
            revert with 0, 'SafeMath: division by zero'
        if (entranceFeeFactor * sharesTotal * arg2 / wantLockedTotal / 10000) + sharesTotal < sharesTotal:
            revert with 0, 'SafeMath: addition overflow'
        sharesTotal += entranceFeeFactor * sharesTotal * arg2 / wantLockedTotal / 10000
        if not uint8(stor4.field_16):
            if arg2 + wantLockedTotal < wantLockedTotal:
                revert with 0, 'SafeMath: addition overflow'
            wantLockedTotal += arg2
        else:
            if not uint8(stor4.field_16):
                revert with 0, '!isAutoComp'
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + wantLockedTotal < wantLockedTotal:
                revert with 0, 'SafeMath: addition overflow'
            wantLockedTotal += ext_call.return_data[0]
            require ext_code.size(wantAddress)
            staticcall wantAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), farmContractAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_code.size(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[584 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4.field_0), uint32(stor4.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
            call wantAddress with:
               funct uint32(stor4.field_0)
                 gas gas_remaining wei
                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[648 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[694 len 22]
            else:
                mem[616 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[616]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 695 len 22]
            require ext_code.size(farmContractAddress)
            if not uint8(stor4.field_0):
                call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args pid, ext_call.return_data[0]
            else:
                call farmContractAddress.enterStaking(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            if not wantLockedTotal:
                if sharesTotal:
                    if arg2 + sharesTotal < sharesTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    sharesTotal += arg2
                    if not uint8(stor4.field_16):
                        if arg2 + wantLockedTotal < wantLockedTotal:
                            revert with 0, 'SafeMath: addition overflow'
                        wantLockedTotal += arg2
                    else:
                        if not uint8(stor4.field_16):
                            revert with 0, '!isAutoComp'
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] + wantLockedTotal < wantLockedTotal:
                            revert with 0, 'SafeMath: addition overflow'
                        wantLockedTotal += ext_call.return_data[0]
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), farmContractAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 457 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4.field_0), uint32(stor4.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
                        mem[ceil32(return_data.size) + 521 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor4.field_0)
                             gas gas_remaining wei
                            args Mask(224, 31, ext_call.return_data[0]) << 225, mem[ceil32(return_data.size) + 521 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
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
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 489]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 568 len 22]
                        require ext_code.size(farmContractAddress)
                        if not uint8(stor4.field_0):
                            call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args pid, ext_call.return_data[0]
                        else:
                            call farmContractAddress.enterStaking(uint256 arg1) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    stor1 = 1
                    return arg2
                if not arg2:
                    if sharesTotal < sharesTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    if not uint8(stor4.field_16):
                        if arg2 + wantLockedTotal < wantLockedTotal:
                            revert with 0, 'SafeMath: addition overflow'
                        wantLockedTotal += arg2
                        stor1 = 1
                        return 0
                    if not uint8(stor4.field_16):
                        revert with 0, '!isAutoComp'
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + wantLockedTotal < wantLockedTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    wantLockedTotal += ext_call.return_data[0]
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), farmContractAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 521 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4.field_0), uint32(stor4.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
                    mem[ceil32(return_data.size) + 613 len 4] = 0
                    call wantAddress with:
                       funct uint32(stor4.field_0)
                         gas gas_remaining wei
                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[ceil32(return_data.size) + 585 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 631 len 22]
                        require ext_code.size(farmContractAddress)
                        if not uint8(stor4.field_0):
                            call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args pid, ext_call.return_data[0]
                        else:
                            call farmContractAddress.enterStaking(uint256 arg1) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        stor1 = 1
                        return 0
                    mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 553]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 632 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    require ext_code.size(farmContractAddress)
                    if not uint8(stor4.field_0):
                        call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args pid, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    else:
                        call farmContractAddress.enterStaking(uint256 arg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor1 = 1
                    return 0, mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if entranceFeeFactor * arg2 / arg2 != entranceFeeFactor:
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 394 len 31]
                if (entranceFeeFactor * arg2 / 10000) + sharesTotal < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                sharesTotal += entranceFeeFactor * arg2 / 10000
                if not uint8(stor4.field_16):
                    if arg2 + wantLockedTotal < wantLockedTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    wantLockedTotal += arg2
                    stor1 = 1
                    return (entranceFeeFactor * arg2 / 10000)
                if not uint8(stor4.field_16):
                    revert with 0, '!isAutoComp'
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + wantLockedTotal < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += ext_call.return_data[0]
                require ext_code.size(wantAddress)
                staticcall wantAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), farmContractAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 521 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4.field_0), uint32(stor4.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
                mem[ceil32(return_data.size) + 613 len 4] = 0
                call wantAddress with:
                   funct uint32(stor4.field_0)
                     gas gas_remaining wei
                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[ceil32(return_data.size) + 585 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 631 len 22]
                    require ext_code.size(farmContractAddress)
                    if not uint8(stor4.field_0):
                        call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args pid, ext_call.return_data[0]
                    else:
                        call farmContractAddress.enterStaking(uint256 arg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor1 = 1
                    return (entranceFeeFactor * arg2 / 10000)
                mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 553]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 632 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                require ext_code.size(farmContractAddress)
                if not uint8(stor4.field_0):
                    call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pid, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                else:
                    call farmContractAddress.enterStaking(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor1 = 1
                return entranceFeeFactor * arg2 / 10000, 
                       mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if sharesTotal <= 0:
                if wantLockedTotal:
                    if arg2 + sharesTotal < sharesTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    sharesTotal += arg2
                    if not uint8(stor4.field_16):
                        if arg2 + wantLockedTotal < wantLockedTotal:
                            revert with 0, 'SafeMath: addition overflow'
                        wantLockedTotal += arg2
                        stor1 = 1
                        return arg2
                    if not uint8(stor4.field_16):
                        revert with 0, '!isAutoComp'
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + wantLockedTotal < wantLockedTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    wantLockedTotal += ext_call.return_data[0]
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), farmContractAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 457 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4.field_0), uint32(stor4.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
                    mem[ceil32(return_data.size) + 549 len 4] = 0
                    call wantAddress with:
                       funct uint32(stor4.field_0)
                         gas gas_remaining wei
                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[ceil32(return_data.size) + 521 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 567 len 22]
                        require ext_code.size(farmContractAddress)
                        if not uint8(stor4.field_0):
                            call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args pid, ext_call.return_data[0]
                        else:
                            call farmContractAddress.enterStaking(uint256 arg1) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        stor1 = 1
                        return arg2
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
                    require ext_code.size(farmContractAddress)
                    if not uint8(stor4.field_0):
                        call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args pid, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    else:
                        call farmContractAddress.enterStaking(uint256 arg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor1 = 1
                    return arg2, mem[(2 * ceil32(return_data.size)) + 490 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if sharesTotal:
                    if arg2 + sharesTotal < sharesTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    sharesTotal += arg2
                    if not uint8(stor4.field_16):
                        if arg2 + wantLockedTotal < wantLockedTotal:
                            revert with 0, 'SafeMath: addition overflow'
                        wantLockedTotal += arg2
                        stor1 = 1
                        return arg2
                    if not uint8(stor4.field_16):
                        revert with 0, '!isAutoComp'
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + wantLockedTotal < wantLockedTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    wantLockedTotal += ext_call.return_data[0]
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), farmContractAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 457 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4.field_0), uint32(stor4.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
                    mem[ceil32(return_data.size) + 549 len 4] = 0
                    call wantAddress with:
                       funct uint32(stor4.field_0)
                         gas gas_remaining wei
                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[ceil32(return_data.size) + 521 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 567 len 22]
                        require ext_code.size(farmContractAddress)
                        if not uint8(stor4.field_0):
                            call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args pid, ext_call.return_data[0]
                        else:
                            call farmContractAddress.enterStaking(uint256 arg1) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        stor1 = 1
                        return arg2
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
                    require ext_code.size(farmContractAddress)
                    if not uint8(stor4.field_0):
                        call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args pid, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    else:
                        call farmContractAddress.enterStaking(uint256 arg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor1 = 1
                    return arg2, mem[(2 * ceil32(return_data.size)) + 490 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if not arg2:
                    if sharesTotal < sharesTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    if not uint8(stor4.field_16):
                        if arg2 + wantLockedTotal < wantLockedTotal:
                            revert with 0, 'SafeMath: addition overflow'
                        wantLockedTotal += arg2
                    else:
                        if not uint8(stor4.field_16):
                            revert with 0, '!isAutoComp'
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] + wantLockedTotal < wantLockedTotal:
                            revert with 0, 'SafeMath: addition overflow'
                        wantLockedTotal += ext_call.return_data[0]
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), farmContractAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 521 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4.field_0), uint32(stor4.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
                        mem[ceil32(return_data.size) + 585 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor4.field_0)
                             gas gas_remaining wei
                            args Mask(224, 31, ext_call.return_data[0]) << 225, mem[ceil32(return_data.size) + 585 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 631 len 22]
                        else:
                            mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 553]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 632 len 22]
                        require ext_code.size(farmContractAddress)
                        if not uint8(stor4.field_0):
                            call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args pid, ext_call.return_data[0]
                        else:
                            call farmContractAddress.enterStaking(uint256 arg1) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    stor1 = 1
                    return 0
                if entranceFeeFactor * arg2 / arg2 != entranceFeeFactor:
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 394 len 31]
                if (entranceFeeFactor * arg2 / 10000) + sharesTotal < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                sharesTotal += entranceFeeFactor * arg2 / 10000
                if not uint8(stor4.field_16):
                    if arg2 + wantLockedTotal < wantLockedTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    wantLockedTotal += arg2
                    stor1 = 1
                    return (entranceFeeFactor * arg2 / 10000)
                if not uint8(stor4.field_16):
                    revert with 0, '!isAutoComp'
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + wantLockedTotal < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += ext_call.return_data[0]
                require ext_code.size(wantAddress)
                staticcall wantAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), farmContractAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 521 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4.field_0), uint32(stor4.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
                mem[ceil32(return_data.size) + 613 len 4] = 0
                call wantAddress with:
                   funct uint32(stor4.field_0)
                     gas gas_remaining wei
                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[ceil32(return_data.size) + 585 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 631 len 22]
                    require ext_code.size(farmContractAddress)
                    if not uint8(stor4.field_0):
                        call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args pid, ext_call.return_data[0]
                    else:
                        call farmContractAddress.enterStaking(uint256 arg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor1 = 1
                    return (entranceFeeFactor * arg2 / 10000)
                mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 553]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 632 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                require ext_code.size(farmContractAddress)
                if not uint8(stor4.field_0):
                    call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pid, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                else:
                    call farmContractAddress.enterStaking(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor1 = 1
                return entranceFeeFactor * arg2 / 10000, 
                       mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if not arg2:
                if not wantLockedTotal:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / wantLockedTotal / 10000) + sharesTotal < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                sharesTotal += 0 / wantLockedTotal / 10000
                if not uint8(stor4.field_16):
                    if arg2 + wantLockedTotal < wantLockedTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    wantLockedTotal += arg2
                    stor1 = 1
                    return (0 / wantLockedTotal / 10000)
                if not uint8(stor4.field_16):
                    revert with 0, '!isAutoComp'
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + wantLockedTotal < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += ext_call.return_data[0]
                require ext_code.size(wantAddress)
                staticcall wantAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), farmContractAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 585 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4.field_0), uint32(stor4.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
                mem[ceil32(return_data.size) + 677 len 4] = 0
                call wantAddress with:
                   funct uint32(stor4.field_0)
                     gas gas_remaining wei
                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[ceil32(return_data.size) + 649 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 695 len 22]
                    require ext_code.size(farmContractAddress)
                    if not uint8(stor4.field_0):
                        call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args pid, ext_call.return_data[0]
                    else:
                        call farmContractAddress.enterStaking(uint256 arg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor1 = 1
                    return (0 / wantLockedTotal / 10000)
                mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 617]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 696 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                require ext_code.size(farmContractAddress)
                if not uint8(stor4.field_0):
                    call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pid, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                else:
                    call farmContractAddress.enterStaking(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor1 = 1
                return 0 / wantLockedTotal / 10000, 
                       mem[(2 * ceil32(return_data.size)) + 618 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if sharesTotal * arg2 / arg2 != sharesTotal:
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 394 len 31]
            if not sharesTotal * arg2:
                if not wantLockedTotal:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / wantLockedTotal / 10000) + sharesTotal < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                sharesTotal += 0 / wantLockedTotal / 10000
                if not uint8(stor4.field_16):
                    if arg2 + wantLockedTotal < wantLockedTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    wantLockedTotal += arg2
                    stor1 = 1
                    return (0 / wantLockedTotal / 10000)
                if not uint8(stor4.field_16):
                    revert with 0, '!isAutoComp'
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + wantLockedTotal < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += ext_call.return_data[0]
                require ext_code.size(wantAddress)
                staticcall wantAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), farmContractAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 585 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4.field_0), uint32(stor4.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
                mem[ceil32(return_data.size) + 677 len 4] = 0
                call wantAddress with:
                   funct uint32(stor4.field_0)
                     gas gas_remaining wei
                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[ceil32(return_data.size) + 649 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 695 len 22]
                    require ext_code.size(farmContractAddress)
                    if not uint8(stor4.field_0):
                        call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args pid, ext_call.return_data[0]
                    else:
                        call farmContractAddress.enterStaking(uint256 arg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor1 = 1
                    return (0 / wantLockedTotal / 10000)
                mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 617]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 696 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                require ext_code.size(farmContractAddress)
                if not uint8(stor4.field_0):
                    call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pid, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                else:
                    call farmContractAddress.enterStaking(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor1 = 1
                return 0 / wantLockedTotal / 10000, 
                       mem[(2 * ceil32(return_data.size)) + 618 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if entranceFeeFactor * sharesTotal * arg2 / sharesTotal * arg2 != entranceFeeFactor:
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 394 len 31]
            if not wantLockedTotal:
                revert with 0, 'SafeMath: division by zero'
            if (entranceFeeFactor * sharesTotal * arg2 / wantLockedTotal / 10000) + sharesTotal < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += entranceFeeFactor * sharesTotal * arg2 / wantLockedTotal / 10000
            if not uint8(stor4.field_16):
                if arg2 + wantLockedTotal < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += arg2
                stor1 = 1
                return (entranceFeeFactor * sharesTotal * arg2 / wantLockedTotal / 10000)
            if not uint8(stor4.field_16):
                revert with 0, '!isAutoComp'
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + wantLockedTotal < wantLockedTotal:
                revert with 0, 'SafeMath: addition overflow'
            wantLockedTotal += ext_call.return_data[0]
            require ext_code.size(wantAddress)
            staticcall wantAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), farmContractAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_code.size(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 585 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4.field_0), uint32(stor4.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
            mem[ceil32(return_data.size) + 677 len 4] = 0
            call wantAddress with:
               funct uint32(stor4.field_0)
                 gas gas_remaining wei
                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[ceil32(return_data.size) + 649 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 695 len 22]
                require ext_code.size(farmContractAddress)
                if not uint8(stor4.field_0):
                    call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pid, ext_call.return_data[0]
                else:
                    call farmContractAddress.enterStaking(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor1 = 1
                return (entranceFeeFactor * sharesTotal * arg2 / wantLockedTotal / 10000)
            mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 617]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 696 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            require ext_code.size(farmContractAddress)
            if not uint8(stor4.field_0):
                call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args pid, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            else:
                call farmContractAddress.enterStaking(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor1 = 1
            return entranceFeeFactor * sharesTotal * arg2 / wantLockedTotal / 10000, 
                   mem[(2 * ceil32(return_data.size)) + 618 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        require return_data.size >= 32
        if not mem[324]:
            revert with 0, 
                        32,
                        42,
                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 403 len 22]
        if not wantLockedTotal:
            if sharesTotal:
                if arg2 + sharesTotal < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                sharesTotal += arg2
                if not uint8(stor4.field_16):
                    if arg2 + wantLockedTotal < wantLockedTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    wantLockedTotal += arg2
                    stor1 = 1
                    return arg2
                if not uint8(stor4.field_16):
                    revert with 0, '!isAutoComp'
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + wantLockedTotal < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += ext_call.return_data[0]
                require ext_code.size(wantAddress)
                staticcall wantAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), farmContractAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 457 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4.field_0), uint32(stor4.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
                mem[ceil32(return_data.size) + 549 len 4] = 0
                call wantAddress with:
                   funct uint32(stor4.field_0)
                     gas gas_remaining wei
                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[ceil32(return_data.size) + 521 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 567 len 22]
                    require ext_code.size(farmContractAddress)
                    if not uint8(stor4.field_0):
                        call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args pid, ext_call.return_data[0]
                    else:
                        call farmContractAddress.enterStaking(uint256 arg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor1 = 1
                    return arg2
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
                require ext_code.size(farmContractAddress)
                if not uint8(stor4.field_0):
                    call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pid, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                else:
                    call farmContractAddress.enterStaking(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor1 = 1
                return arg2, mem[(2 * ceil32(return_data.size)) + 490 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if not arg2:
                if sharesTotal < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                if not uint8(stor4.field_16):
                    if arg2 + wantLockedTotal < wantLockedTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    wantLockedTotal += arg2
                    stor1 = 1
                    return 0
                if not uint8(stor4.field_16):
                    revert with 0, '!isAutoComp'
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + wantLockedTotal < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += ext_call.return_data[0]
                require ext_code.size(wantAddress)
                staticcall wantAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), farmContractAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 521 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4.field_0), uint32(stor4.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
                mem[ceil32(return_data.size) + 613 len 4] = 0
                call wantAddress with:
                   funct uint32(stor4.field_0)
                     gas gas_remaining wei
                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[ceil32(return_data.size) + 585 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 631 len 22]
                    require ext_code.size(farmContractAddress)
                    if not uint8(stor4.field_0):
                        call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args pid, ext_call.return_data[0]
                    else:
                        call farmContractAddress.enterStaking(uint256 arg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor1 = 1
                    return 0
                mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 553]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 632 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                require ext_code.size(farmContractAddress)
                if not uint8(stor4.field_0):
                    call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pid, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                else:
                    call farmContractAddress.enterStaking(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor1 = 1
                return 0, mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if entranceFeeFactor * arg2 / arg2 != entranceFeeFactor:
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 394 len 31]
            if (entranceFeeFactor * arg2 / 10000) + sharesTotal < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += entranceFeeFactor * arg2 / 10000
            if not uint8(stor4.field_16):
                if arg2 + wantLockedTotal < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += arg2
                stor1 = 1
                return (entranceFeeFactor * arg2 / 10000)
            if not uint8(stor4.field_16):
                revert with 0, '!isAutoComp'
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + wantLockedTotal < wantLockedTotal:
                revert with 0, 'SafeMath: addition overflow'
            wantLockedTotal += ext_call.return_data[0]
            require ext_code.size(wantAddress)
            staticcall wantAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), farmContractAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_code.size(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 521 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4.field_0), uint32(stor4.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
            mem[ceil32(return_data.size) + 613 len 4] = 0
            call wantAddress with:
               funct uint32(stor4.field_0)
                 gas gas_remaining wei
                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[ceil32(return_data.size) + 585 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 631 len 22]
                require ext_code.size(farmContractAddress)
                if not uint8(stor4.field_0):
                    call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pid, ext_call.return_data[0]
                else:
                    call farmContractAddress.enterStaking(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor1 = 1
                return (entranceFeeFactor * arg2 / 10000)
            mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 553]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 632 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            require ext_code.size(farmContractAddress)
            if not uint8(stor4.field_0):
                call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args pid, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            else:
                call farmContractAddress.enterStaking(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor1 = 1
            return entranceFeeFactor * arg2 / 10000, 
                   mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if sharesTotal <= 0:
            if wantLockedTotal:
                if arg2 + sharesTotal < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                sharesTotal += arg2
                if not uint8(stor4.field_16):
                    if arg2 + wantLockedTotal < wantLockedTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    wantLockedTotal += arg2
                    stor1 = 1
                    return arg2
                if not uint8(stor4.field_16):
                    revert with 0, '!isAutoComp'
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + wantLockedTotal < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += ext_call.return_data[0]
                require ext_code.size(wantAddress)
                staticcall wantAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), farmContractAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 457 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4.field_0), uint32(stor4.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
                mem[ceil32(return_data.size) + 549 len 4] = 0
                call wantAddress with:
                   funct uint32(stor4.field_0)
                     gas gas_remaining wei
                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[ceil32(return_data.size) + 521 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 567 len 22]
                    require ext_code.size(farmContractAddress)
                    if not uint8(stor4.field_0):
                        call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args pid, ext_call.return_data[0]
                    else:
                        call farmContractAddress.enterStaking(uint256 arg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor1 = 1
                    return arg2
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
                require ext_code.size(farmContractAddress)
                if not uint8(stor4.field_0):
                    call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pid, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                else:
                    call farmContractAddress.enterStaking(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor1 = 1
                return arg2, mem[(2 * ceil32(return_data.size)) + 490 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if sharesTotal:
                if arg2 + sharesTotal < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                sharesTotal += arg2
                if not uint8(stor4.field_16):
                    if arg2 + wantLockedTotal < wantLockedTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    wantLockedTotal += arg2
                    stor1 = 1
                    return arg2
                if not uint8(stor4.field_16):
                    revert with 0, '!isAutoComp'
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + wantLockedTotal < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += ext_call.return_data[0]
                require ext_code.size(wantAddress)
                staticcall wantAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), farmContractAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 457 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4.field_0), uint32(stor4.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
                mem[ceil32(return_data.size) + 549 len 4] = 0
                call wantAddress with:
                   funct uint32(stor4.field_0)
                     gas gas_remaining wei
                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[ceil32(return_data.size) + 521 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 567 len 22]
                    require ext_code.size(farmContractAddress)
                    if not uint8(stor4.field_0):
                        call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args pid, ext_call.return_data[0]
                    else:
                        call farmContractAddress.enterStaking(uint256 arg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor1 = 1
                    return arg2
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
                require ext_code.size(farmContractAddress)
                if not uint8(stor4.field_0):
                    call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pid, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                else:
                    call farmContractAddress.enterStaking(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor1 = 1
                return arg2, mem[(2 * ceil32(return_data.size)) + 490 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if not arg2:
                if sharesTotal < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                if not uint8(stor4.field_16):
                    if arg2 + wantLockedTotal < wantLockedTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    wantLockedTotal += arg2
                    stor1 = 1
                    return 0
                if not uint8(stor4.field_16):
                    revert with 0, '!isAutoComp'
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + wantLockedTotal < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += ext_call.return_data[0]
                require ext_code.size(wantAddress)
                staticcall wantAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), farmContractAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 521 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4.field_0), uint32(stor4.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
                mem[ceil32(return_data.size) + 613 len 4] = 0
                call wantAddress with:
                   funct uint32(stor4.field_0)
                     gas gas_remaining wei
                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[ceil32(return_data.size) + 585 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 631 len 22]
                    require ext_code.size(farmContractAddress)
                    if not uint8(stor4.field_0):
                        call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args pid, ext_call.return_data[0]
                    else:
                        call farmContractAddress.enterStaking(uint256 arg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor1 = 1
                    return 0
                mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 553]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 632 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                require ext_code.size(farmContractAddress)
                if not uint8(stor4.field_0):
                    call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pid, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                else:
                    call farmContractAddress.enterStaking(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor1 = 1
                return 0, mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if entranceFeeFactor * arg2 / arg2 != entranceFeeFactor:
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 394 len 31]
            if (entranceFeeFactor * arg2 / 10000) + sharesTotal < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += entranceFeeFactor * arg2 / 10000
            if not uint8(stor4.field_16):
                if arg2 + wantLockedTotal < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += arg2
                stor1 = 1
                return (entranceFeeFactor * arg2 / 10000)
            if not uint8(stor4.field_16):
                revert with 0, '!isAutoComp'
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + wantLockedTotal < wantLockedTotal:
                revert with 0, 'SafeMath: addition overflow'
            wantLockedTotal += ext_call.return_data[0]
            require ext_code.size(wantAddress)
            staticcall wantAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), farmContractAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_code.size(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 521 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4.field_0), uint32(stor4.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
            mem[ceil32(return_data.size) + 613 len 4] = 0
            call wantAddress with:
               funct uint32(stor4.field_0)
                 gas gas_remaining wei
                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[ceil32(return_data.size) + 585 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 631 len 22]
                require ext_code.size(farmContractAddress)
                if not uint8(stor4.field_0):
                    call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pid, ext_call.return_data[0]
                else:
                    call farmContractAddress.enterStaking(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor1 = 1
                return (entranceFeeFactor * arg2 / 10000)
            mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 553]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 632 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            require ext_code.size(farmContractAddress)
            if not uint8(stor4.field_0):
                call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args pid, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            else:
                call farmContractAddress.enterStaking(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor1 = 1
            return entranceFeeFactor * arg2 / 10000, 
                   mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if not arg2:
            if not wantLockedTotal:
                revert with 0, 'SafeMath: division by zero'
            if (0 / wantLockedTotal / 10000) + sharesTotal < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += 0 / wantLockedTotal / 10000
            if not uint8(stor4.field_16):
                if arg2 + wantLockedTotal < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += arg2
                stor1 = 1
                return (0 / wantLockedTotal / 10000)
            if not uint8(stor4.field_16):
                revert with 0, '!isAutoComp'
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + wantLockedTotal < wantLockedTotal:
                revert with 0, 'SafeMath: addition overflow'
            wantLockedTotal += ext_call.return_data[0]
            require ext_code.size(wantAddress)
            staticcall wantAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), farmContractAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_code.size(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 585 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4.field_0), uint32(stor4.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
            mem[ceil32(return_data.size) + 677 len 4] = 0
            call wantAddress with:
               funct uint32(stor4.field_0)
                 gas gas_remaining wei
                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[ceil32(return_data.size) + 649 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 695 len 22]
                require ext_code.size(farmContractAddress)
                if not uint8(stor4.field_0):
                    call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pid, ext_call.return_data[0]
                else:
                    call farmContractAddress.enterStaking(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor1 = 1
                return (0 / wantLockedTotal / 10000)
            mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 617]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 696 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            require ext_code.size(farmContractAddress)
            if not uint8(stor4.field_0):
                call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args pid, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            else:
                call farmContractAddress.enterStaking(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor1 = 1
            return 0 / wantLockedTotal / 10000, 
                   mem[(2 * ceil32(return_data.size)) + 618 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if sharesTotal * arg2 / arg2 != sharesTotal:
            revert with 0, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[ceil32(return_data.size) + 394 len 31]
        if not sharesTotal * arg2:
            if not wantLockedTotal:
                revert with 0, 'SafeMath: division by zero'
            if (0 / wantLockedTotal / 10000) + sharesTotal < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += 0 / wantLockedTotal / 10000
            if not uint8(stor4.field_16):
                if arg2 + wantLockedTotal < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += arg2
                stor1 = 1
                return (0 / wantLockedTotal / 10000)
            if not uint8(stor4.field_16):
                revert with 0, '!isAutoComp'
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + wantLockedTotal < wantLockedTotal:
                revert with 0, 'SafeMath: addition overflow'
            wantLockedTotal += ext_call.return_data[0]
            require ext_code.size(wantAddress)
            staticcall wantAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), farmContractAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_code.size(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 585 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4.field_0), uint32(stor4.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
            mem[ceil32(return_data.size) + 677 len 4] = 0
            call wantAddress with:
               funct uint32(stor4.field_0)
                 gas gas_remaining wei
                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[ceil32(return_data.size) + 649 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 695 len 22]
                require ext_code.size(farmContractAddress)
                if not uint8(stor4.field_0):
                    call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pid, ext_call.return_data[0]
                else:
                    call farmContractAddress.enterStaking(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor1 = 1
                return (0 / wantLockedTotal / 10000)
            mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 617]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 696 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            require ext_code.size(farmContractAddress)
            if not uint8(stor4.field_0):
                call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args pid, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            else:
                call farmContractAddress.enterStaking(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor1 = 1
            return 0 / wantLockedTotal / 10000, 
                   mem[(2 * ceil32(return_data.size)) + 618 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if entranceFeeFactor * sharesTotal * arg2 / sharesTotal * arg2 != entranceFeeFactor:
            revert with 0, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[ceil32(return_data.size) + 394 len 31]
        if not wantLockedTotal:
            revert with 0, 'SafeMath: division by zero'
        if (entranceFeeFactor * sharesTotal * arg2 / wantLockedTotal / 10000) + sharesTotal < sharesTotal:
            revert with 0, 'SafeMath: addition overflow'
        sharesTotal += entranceFeeFactor * sharesTotal * arg2 / wantLockedTotal / 10000
        if not uint8(stor4.field_16):
            if arg2 + wantLockedTotal < wantLockedTotal:
                revert with 0, 'SafeMath: addition overflow'
            wantLockedTotal += arg2
        else:
            if not uint8(stor4.field_16):
                revert with 0, '!isAutoComp'
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + wantLockedTotal < wantLockedTotal:
                revert with 0, 'SafeMath: addition overflow'
            wantLockedTotal += ext_call.return_data[0]
            require ext_code.size(wantAddress)
            staticcall wantAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), farmContractAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_code.size(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 585 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4.field_0), uint32(stor4.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
            mem[ceil32(return_data.size) + 649 len 0] = 0
            call wantAddress with:
               funct uint32(stor4.field_0)
                 gas gas_remaining wei
                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[ceil32(return_data.size) + 649 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 695 len 22]
            else:
                mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 617]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 696 len 22]
            require ext_code.size(farmContractAddress)
            if not uint8(stor4.field_0):
                call farmContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args pid, ext_call.return_data[0]
            else:
                call farmContractAddress.enterStaking(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    stor1 = 1
    return (entranceFeeFactor * sharesTotal * arg2 / wantLockedTotal / 10000)
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if not arg2:
        revert with 0, '_wantAmt <= 0'
    if sharesTotal * arg2 / arg2 != sharesTotal:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not wantLockedTotal:
        revert with 0, 'SafeMath: division by zero'
    if sharesTotal * arg2 / wantLockedTotal <= sharesTotal:
        sharesTotal -= sharesTotal * arg2 / wantLockedTotal
        if 10000 <= withdrawFeeFactor:
            if controllerFee >= 10000:
                if not uint8(stor4.field_16):
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 <= ext_call.return_data[0]:
                        if wantLockedTotal >= arg2:
                            if arg2 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= arg2
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg2) >> 32
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 224, mem[516 len 4]
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor18.field_0), mem[516 len 4]
                    else:
                        if wantLockedTotal >= ext_call.return_data[0]:
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor18.field_0), mem[516 len 4]
                else:
                    require ext_code.size(farmContractAddress)
                    if uint8(stor4.field_0):
                        call farmContractAddress.leaveStaking(uint256 arg1) with:
                             gas gas_remaining wei
                            args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg2 <= ext_call.return_data[0]:
                            if wantLockedTotal >= arg2:
                                if arg2 > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= arg2
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg2) >> 32
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 224, mem[516 len 4]
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor18.field_0), mem[516 len 4]
                        else:
                            if wantLockedTotal >= ext_call.return_data[0]:
                                if ext_call.return_data[0] > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= ext_call.return_data[0]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor18.field_0), mem[516 len 4]
                    else:
                        call farmContractAddress.withdraw(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args pid, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg2 <= ext_call.return_data[0]:
                            if wantLockedTotal >= arg2:
                                if arg2 > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= arg2
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg2) >> 32
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 224, mem[516 len 4]
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor18.field_0), mem[516 len 4]
                        else:
                            if wantLockedTotal >= ext_call.return_data[0]:
                                if ext_call.return_data[0] > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= ext_call.return_data[0]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                                mem[516 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor18.field_0), mem[516 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[484]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 563 len 22]
                stor1 = 1
                return (sharesTotal * arg2 / wantLockedTotal)
            if not arg2:
                if 0 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor23), uint32(stor23), 0
                call wantAddress with:
                   funct uint32(stor23)
                     gas gas_remaining wei
                    args 0, mem[580 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    if not uint8(stor4.field_16):
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg2 <= ext_call.return_data[0]:
                            if wantLockedTotal >= arg2:
                                if arg2 > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= arg2
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg2) >> 32
                                mem[ceil32(return_data.size) + 837 len 4] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 224, mem[ceil32(return_data.size) + 809 len 4]
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                                mem[ceil32(return_data.size) + 837 len 4] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 809 len 4]
                        else:
                            if wantLockedTotal >= ext_call.return_data[0]:
                                if ext_call.return_data[0] > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= ext_call.return_data[0]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                                mem[ceil32(return_data.size) + 837 len 4] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 809 len 4]
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                                mem[ceil32(return_data.size) + 837 len 4] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 809 len 4]
                    else:
                        require ext_code.size(farmContractAddress)
                        if not uint8(stor4.field_0):
                            call farmContractAddress.withdraw(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args pid, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg2 <= ext_call.return_data[0]:
                                if wantLockedTotal >= arg2:
                                    if arg2 > wantLockedTotal:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    wantLockedTotal -= arg2
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg2) >> 32
                                    mem[ceil32(return_data.size) + 837 len 4] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 224, mem[ceil32(return_data.size) + 809 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    'SafeERC20: low-level call failed',
                                                    mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 777]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    stor1 = 1
                                    return sharesTotal * arg2 / wantLockedTotal, 
                                           mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                                mem[ceil32(return_data.size) + 809 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 809 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 777]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 856 len 22]
                                stor1 = 1
                                return (sharesTotal * arg2 / wantLockedTotal)
                            if wantLockedTotal >= ext_call.return_data[0]:
                                if ext_call.return_data[0] > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= ext_call.return_data[0]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                                mem[ceil32(return_data.size) + 837 len 4] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 809 len 4]
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                                mem[ceil32(return_data.size) + 837 len 4] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 809 len 4]
                        else:
                            call farmContractAddress.leaveStaking(uint256 arg1) with:
                                 gas gas_remaining wei
                                args arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg2 <= ext_call.return_data[0]:
                                if wantLockedTotal >= arg2:
                                    if arg2 > wantLockedTotal:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    wantLockedTotal -= arg2
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg2) >> 32
                                    mem[ceil32(return_data.size) + 837 len 4] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 224, mem[ceil32(return_data.size) + 809 len 4]
                                else:
                                    if wantLockedTotal > wantLockedTotal:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    wantLockedTotal = 0
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                                    mem[ceil32(return_data.size) + 837 len 4] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 809 len 4]
                            else:
                                if wantLockedTotal >= ext_call.return_data[0]:
                                    if ext_call.return_data[0] > wantLockedTotal:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    wantLockedTotal -= ext_call.return_data[0]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                                    mem[ceil32(return_data.size) + 837 len 4] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 809 len 4]
                                else:
                                    if wantLockedTotal > wantLockedTotal:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    wantLockedTotal = 0
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                                    mem[ceil32(return_data.size) + 837 len 4] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 809 len 4]
                else:
                    require return_data.size >= 32
                    if not mem[548]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 627 len 22]
                    if uint8(stor4.field_16):
                        require ext_code.size(farmContractAddress)
                        if not uint8(stor4.field_0):
                            call farmContractAddress.withdraw(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args pid, arg2
                        else:
                            call farmContractAddress.leaveStaking(uint256 arg1) with:
                                 gas gas_remaining wei
                                args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 <= ext_call.return_data[0]:
                        if wantLockedTotal >= arg2:
                            if arg2 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= arg2
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg2) >> 32
                            mem[ceil32(return_data.size) + 837 len 4] = 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 224, mem[ceil32(return_data.size) + 809 len 4]
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                            mem[ceil32(return_data.size) + 837 len 4] = 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 809 len 4]
                    else:
                        if wantLockedTotal >= ext_call.return_data[0]:
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                            mem[ceil32(return_data.size) + 837 len 4] = 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 809 len 4]
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                            mem[ceil32(return_data.size) + 837 len 4] = 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 809 len 4]
            else:
                if controllerFee * arg2 / arg2 != controllerFee:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if controllerFee * arg2 / 10000 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor23), uint32(stor23), Mask(224, 32, controllerFee * arg2 / 10000) >> 32
                call wantAddress with:
                   funct uint32(stor23)
                     gas gas_remaining wei
                    args Mask(224, 32, controllerFee * arg2 / 10000) << 224, mem[580 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    if uint8(stor4.field_16):
                        require ext_code.size(farmContractAddress)
                        if not uint8(stor4.field_0):
                            call farmContractAddress.withdraw(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args pid, arg2 - (controllerFee * arg2 / 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg2 - (controllerFee * arg2 / 10000) <= ext_call.return_data[0]:
                                if wantLockedTotal >= arg2 - (controllerFee * arg2 / 10000):
                                    if arg2 - (controllerFee * arg2 / 10000) > wantLockedTotal:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    wantLockedTotal = wantLockedTotal - arg2 + (controllerFee * arg2 / 10000)
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg2 - (controllerFee * arg2 / 10000)) >> 32
                                    mem[ceil32(return_data.size) + 809 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2 - (controllerFee * arg2 / 10000)) << 224, mem[ceil32(return_data.size) + 809 len 4]
                                else:
                                    if wantLockedTotal > wantLockedTotal:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    wantLockedTotal = 0
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                                    mem[ceil32(return_data.size) + 809 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 809 len 4]
                            else:
                                if wantLockedTotal >= ext_call.return_data[0]:
                                    if ext_call.return_data[0] > wantLockedTotal:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    wantLockedTotal -= ext_call.return_data[0]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                                    mem[ceil32(return_data.size) + 837 len 4] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 809 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    'SafeERC20: low-level call failed',
                                                    mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 777]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    stor1 = 1
                                    return sharesTotal * arg2 / wantLockedTotal, 
                                           mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                                mem[ceil32(return_data.size) + 809 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 809 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 777]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 856 len 22]
                            stor1 = 1
                            return (sharesTotal * arg2 / wantLockedTotal)
                        call farmContractAddress.leaveStaking(uint256 arg1) with:
                             gas gas_remaining wei
                            args (arg2 - (controllerFee * arg2 / 10000))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 - (controllerFee * arg2 / 10000) <= ext_call.return_data[0]:
                        if wantLockedTotal >= arg2 - (controllerFee * arg2 / 10000):
                            if arg2 - (controllerFee * arg2 / 10000) > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = wantLockedTotal - arg2 + (controllerFee * arg2 / 10000)
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg2 - (controllerFee * arg2 / 10000)) >> 32
                            mem[ceil32(return_data.size) + 837 len 4] = 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2 - (controllerFee * arg2 / 10000)) << 224, mem[ceil32(return_data.size) + 809 len 4]
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                            mem[ceil32(return_data.size) + 837 len 4] = 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 809 len 4]
                    else:
                        if wantLockedTotal >= ext_call.return_data[0]:
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                            mem[ceil32(return_data.size) + 837 len 4] = 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 809 len 4]
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                            mem[ceil32(return_data.size) + 837 len 4] = 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 809 len 4]
                else:
                    require return_data.size >= 32
                    if not mem[548]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 627 len 22]
                    if not uint8(stor4.field_16):
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg2 - (controllerFee * arg2 / 10000) <= ext_call.return_data[0]:
                            if wantLockedTotal >= arg2 - (controllerFee * arg2 / 10000):
                                if arg2 - (controllerFee * arg2 / 10000) > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = wantLockedTotal - arg2 + (controllerFee * arg2 / 10000)
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg2 - (controllerFee * arg2 / 10000)) >> 32
                                mem[ceil32(return_data.size) + 837 len 4] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2 - (controllerFee * arg2 / 10000)) << 224, mem[ceil32(return_data.size) + 809 len 4]
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                                mem[ceil32(return_data.size) + 837 len 4] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 809 len 4]
                        else:
                            if wantLockedTotal >= ext_call.return_data[0]:
                                if ext_call.return_data[0] > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= ext_call.return_data[0]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                                mem[ceil32(return_data.size) + 837 len 4] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 809 len 4]
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                                mem[ceil32(return_data.size) + 837 len 4] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 809 len 4]
                    else:
                        require ext_code.size(farmContractAddress)
                        if not uint8(stor4.field_0):
                            call farmContractAddress.withdraw(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args pid, arg2 - (controllerFee * arg2 / 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg2 - (controllerFee * arg2 / 10000) <= ext_call.return_data[0]:
                                if wantLockedTotal >= arg2 - (controllerFee * arg2 / 10000):
                                    if arg2 - (controllerFee * arg2 / 10000) > wantLockedTotal:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    wantLockedTotal = wantLockedTotal - arg2 + (controllerFee * arg2 / 10000)
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg2 - (controllerFee * arg2 / 10000)) >> 32
                                    mem[ceil32(return_data.size) + 837 len 4] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2 - (controllerFee * arg2 / 10000)) << 224, mem[ceil32(return_data.size) + 809 len 4]
                                else:
                                    if wantLockedTotal > wantLockedTotal:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    wantLockedTotal = 0
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                                    mem[ceil32(return_data.size) + 837 len 4] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 809 len 4]
                            else:
                                if wantLockedTotal >= ext_call.return_data[0]:
                                    if ext_call.return_data[0] > wantLockedTotal:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    wantLockedTotal -= ext_call.return_data[0]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                                    mem[ceil32(return_data.size) + 837 len 4] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 809 len 4]
                                else:
                                    if wantLockedTotal > wantLockedTotal:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    wantLockedTotal = 0
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                                    mem[ceil32(return_data.size) + 837 len 4] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 809 len 4]
                        else:
                            call farmContractAddress.leaveStaking(uint256 arg1) with:
                                 gas gas_remaining wei
                                args (arg2 - (controllerFee * arg2 / 10000))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg2 - (controllerFee * arg2 / 10000) <= ext_call.return_data[0]:
                                if wantLockedTotal >= arg2 - (controllerFee * arg2 / 10000):
                                    if arg2 - (controllerFee * arg2 / 10000) > wantLockedTotal:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    wantLockedTotal = wantLockedTotal - arg2 + (controllerFee * arg2 / 10000)
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg2 - (controllerFee * arg2 / 10000)) >> 32
                                    mem[ceil32(return_data.size) + 837 len 4] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2 - (controllerFee * arg2 / 10000)) << 224, mem[ceil32(return_data.size) + 809 len 4]
                                else:
                                    if wantLockedTotal > wantLockedTotal:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    wantLockedTotal = 0
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                                    mem[ceil32(return_data.size) + 837 len 4] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 809 len 4]
                            else:
                                if wantLockedTotal >= ext_call.return_data[0]:
                                    if ext_call.return_data[0] > wantLockedTotal:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    wantLockedTotal -= ext_call.return_data[0]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                                    mem[ceil32(return_data.size) + 809 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 809 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 777]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 856 len 22]
                                    stor1 = 1
                                    return (sharesTotal * arg2 / wantLockedTotal)
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                                mem[ceil32(return_data.size) + 837 len 4] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 809 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 777]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            stor1 = 1
            return sharesTotal * arg2 / wantLockedTotal, 
                   mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if not arg2:
            if controllerFee >= 10000:
                if not uint8(stor4.field_16):
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 <= ext_call.return_data[0]:
                        if wantLockedTotal >= 0:
                            if 0 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args 0, mem[580 len 4]
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor18.field_0), mem[580 len 4]
                    else:
                        if wantLockedTotal < ext_call.return_data[0]:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor18.field_0), mem[580 len 4]
                        else:
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                            mem[580 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[580 len 4]
                else:
                    require ext_code.size(farmContractAddress)
                    if uint8(stor4.field_0):
                        call farmContractAddress.leaveStaking(uint256 arg1) with:
                             gas gas_remaining wei
                            args 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 <= ext_call.return_data[0]:
                            if wantLockedTotal >= 0:
                                if 0 > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args 0, mem[580 len 4]
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor18.field_0), mem[580 len 4]
                        else:
                            if wantLockedTotal >= ext_call.return_data[0]:
                                if ext_call.return_data[0] > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= ext_call.return_data[0]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[580 len 4]
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor18.field_0), mem[580 len 4]
                    else:
                        call farmContractAddress.withdraw(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args pid, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 <= ext_call.return_data[0]:
                            if wantLockedTotal >= 0:
                                if 0 > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args 0, mem[580 len 4]
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor18.field_0), mem[580 len 4]
                        else:
                            if wantLockedTotal >= ext_call.return_data[0]:
                                if ext_call.return_data[0] > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= ext_call.return_data[0]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[580 len 4]
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                                mem[580 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor18.field_0), mem[580 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[548]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 627 len 22]
                stor1 = 1
                return (sharesTotal * arg2 / wantLockedTotal)
            if not ext_code.size(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor23), uint32(stor23), 0
            call wantAddress with:
               funct uint32(stor23)
                 gas gas_remaining wei
                args 0, mem[644 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                if not uint8(stor4.field_16):
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 <= ext_call.return_data[0]:
                        if wantLockedTotal >= 0:
                            if 0 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                            mem[ceil32(return_data.size) + 901 len 4] = 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args 0, mem[ceil32(return_data.size) + 873 len 4]
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                            mem[ceil32(return_data.size) + 901 len 4] = 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 873 len 4]
                    else:
                        if wantLockedTotal >= ext_call.return_data[0]:
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                            mem[ceil32(return_data.size) + 901 len 4] = 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 873 len 4]
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                            mem[ceil32(return_data.size) + 901 len 4] = 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 873 len 4]
                else:
                    require ext_code.size(farmContractAddress)
                    if not uint8(stor4.field_0):
                        call farmContractAddress.withdraw(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args pid, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 <= ext_call.return_data[0]:
                            if wantLockedTotal >= 0:
                                if 0 > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                mem[ceil32(return_data.size) + 901 len 4] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args 0, mem[ceil32(return_data.size) + 873 len 4]
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                                mem[ceil32(return_data.size) + 901 len 4] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 873 len 4]
                        else:
                            if wantLockedTotal >= ext_call.return_data[0]:
                                if ext_call.return_data[0] > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= ext_call.return_data[0]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                                mem[ceil32(return_data.size) + 901 len 4] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 873 len 4]
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                                mem[ceil32(return_data.size) + 901 len 4] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 873 len 4]
                    else:
                        call farmContractAddress.leaveStaking(uint256 arg1) with:
                             gas gas_remaining wei
                            args 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 <= ext_call.return_data[0]:
                            if wantLockedTotal >= 0:
                                if 0 > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                mem[ceil32(return_data.size) + 901 len 4] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args 0, mem[ceil32(return_data.size) + 873 len 4]
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                                mem[ceil32(return_data.size) + 901 len 4] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 873 len 4]
                        else:
                            if wantLockedTotal >= ext_call.return_data[0]:
                                if ext_call.return_data[0] > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= ext_call.return_data[0]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                                mem[ceil32(return_data.size) + 873 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 873 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 841]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 920 len 22]
                                stor1 = 1
                                return (sharesTotal * arg2 / wantLockedTotal)
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                            mem[ceil32(return_data.size) + 901 len 4] = 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 873 len 4]
            else:
                require return_data.size >= 32
                if not mem[612]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 691 len 22]
                if not uint8(stor4.field_16):
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 <= ext_call.return_data[0]:
                        if wantLockedTotal >= 0:
                            if 0 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                            mem[ceil32(return_data.size) + 901 len 4] = 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args 0, mem[ceil32(return_data.size) + 873 len 4]
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                            mem[ceil32(return_data.size) + 901 len 4] = 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 873 len 4]
                    else:
                        if wantLockedTotal >= ext_call.return_data[0]:
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                            mem[ceil32(return_data.size) + 901 len 4] = 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 873 len 4]
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                            mem[ceil32(return_data.size) + 901 len 4] = 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 873 len 4]
                else:
                    require ext_code.size(farmContractAddress)
                    if not uint8(stor4.field_0):
                        call farmContractAddress.withdraw(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args pid, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 <= ext_call.return_data[0]:
                            if wantLockedTotal >= 0:
                                if 0 > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                mem[ceil32(return_data.size) + 901 len 4] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args 0, mem[ceil32(return_data.size) + 873 len 4]
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                                mem[ceil32(return_data.size) + 901 len 4] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 873 len 4]
                        else:
                            if wantLockedTotal >= ext_call.return_data[0]:
                                if ext_call.return_data[0] > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= ext_call.return_data[0]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                                mem[ceil32(return_data.size) + 901 len 4] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 873 len 4]
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                                mem[ceil32(return_data.size) + 901 len 4] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 873 len 4]
                    else:
                        call farmContractAddress.leaveStaking(uint256 arg1) with:
                             gas gas_remaining wei
                            args 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 <= ext_call.return_data[0]:
                            if wantLockedTotal >= 0:
                                if 0 > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                mem[ceil32(return_data.size) + 873 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0) << 256, mem[ceil32(return_data.size) + 873 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 841]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 920 len 22]
                                stor1 = 1
                                return (sharesTotal * arg2 / wantLockedTotal)
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                            mem[ceil32(return_data.size) + 901 len 4] = 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 873 len 4]
                        else:
                            if wantLockedTotal >= ext_call.return_data[0]:
                                if ext_call.return_data[0] > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= ext_call.return_data[0]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                                mem[ceil32(return_data.size) + 901 len 4] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 873 len 4]
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                                mem[ceil32(return_data.size) + 901 len 4] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 873 len 4]
        else:
            if withdrawFeeFactor * arg2 / arg2 != withdrawFeeFactor:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if controllerFee >= 10000:
                if not uint8(stor4.field_16):
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if withdrawFeeFactor * arg2 / 10000 <= ext_call.return_data[0]:
                        if wantLockedTotal >= withdrawFeeFactor * arg2 / 10000:
                            if withdrawFeeFactor * arg2 / 10000 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= withdrawFeeFactor * arg2 / 10000
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, withdrawFeeFactor * arg2 / 10000) >> 32
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(224, 32, withdrawFeeFactor * arg2 / 10000) << 224, mem[580 len 4]
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor18.field_0), mem[580 len 4]
                    else:
                        if wantLockedTotal >= ext_call.return_data[0]:
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[580 len 4]
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                            mem[580 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor18.field_0), mem[580 len 4]
                else:
                    require ext_code.size(farmContractAddress)
                    if not uint8(stor4.field_0):
                        call farmContractAddress.withdraw(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args pid, withdrawFeeFactor * arg2 / 10000
                    else:
                        call farmContractAddress.leaveStaking(uint256 arg1) with:
                             gas gas_remaining wei
                            args (withdrawFeeFactor * arg2 / 10000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if withdrawFeeFactor * arg2 / 10000 <= ext_call.return_data[0]:
                        if wantLockedTotal >= withdrawFeeFactor * arg2 / 10000:
                            if withdrawFeeFactor * arg2 / 10000 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= withdrawFeeFactor * arg2 / 10000
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, withdrawFeeFactor * arg2 / 10000) >> 32
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(224, 32, withdrawFeeFactor * arg2 / 10000) << 224, mem[580 len 4]
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor18.field_0), mem[580 len 4]
                    else:
                        if wantLockedTotal >= ext_call.return_data[0]:
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[580 len 4]
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor18.field_0), mem[580 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[548]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 627 len 22]
                stor1 = 1
                return (sharesTotal * arg2 / wantLockedTotal)
            if not withdrawFeeFactor * arg2 / 10000:
                if 0 > withdrawFeeFactor * arg2 / 10000:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor23), uint32(stor23), 0
                call wantAddress with:
                   funct uint32(stor23)
                     gas gas_remaining wei
                    args 0, mem[644 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    if not uint8(stor4.field_16):
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if withdrawFeeFactor * arg2 / 10000 <= ext_call.return_data[0]:
                            if wantLockedTotal >= withdrawFeeFactor * arg2 / 10000:
                                if withdrawFeeFactor * arg2 / 10000 > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= withdrawFeeFactor * arg2 / 10000
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, withdrawFeeFactor * arg2 / 10000) >> 32
                                mem[ceil32(return_data.size) + 901 len 4] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(224, 32, withdrawFeeFactor * arg2 / 10000) << 224, mem[ceil32(return_data.size) + 873 len 4]
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                                mem[ceil32(return_data.size) + 901 len 4] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 873 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 910 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 841]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 920 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            stor1 = 1
                            return sharesTotal * arg2 / wantLockedTotal, 
                                   mem[(2 * ceil32(return_data.size)) + 842 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if wantLockedTotal >= ext_call.return_data[0]:
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                            mem[ceil32(return_data.size) + 901 len 4] = 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 873 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 910 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 841]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 920 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            stor1 = 1
                            return sharesTotal * arg2 / wantLockedTotal, 
                                   mem[(2 * ceil32(return_data.size)) + 842 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                        mem[ceil32(return_data.size) + 873 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 873 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 841]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 920 len 22]
                        stor1 = 1
                        return (sharesTotal * arg2 / wantLockedTotal)
                    require ext_code.size(farmContractAddress)
                    if not uint8(stor4.field_0):
                        call farmContractAddress.withdraw(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args pid, withdrawFeeFactor * arg2 / 10000
                    else:
                        call farmContractAddress.leaveStaking(uint256 arg1) with:
                             gas gas_remaining wei
                            args (withdrawFeeFactor * arg2 / 10000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if withdrawFeeFactor * arg2 / 10000 <= ext_call.return_data[0]:
                        if wantLockedTotal >= withdrawFeeFactor * arg2 / 10000:
                            if withdrawFeeFactor * arg2 / 10000 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= withdrawFeeFactor * arg2 / 10000
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, withdrawFeeFactor * arg2 / 10000) >> 32
                            mem[ceil32(return_data.size) + 901 len 4] = 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(224, 32, withdrawFeeFactor * arg2 / 10000) << 224, mem[ceil32(return_data.size) + 873 len 4]
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                            mem[ceil32(return_data.size) + 901 len 4] = 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 873 len 4]
                    else:
                        if wantLockedTotal >= ext_call.return_data[0]:
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                            mem[ceil32(return_data.size) + 901 len 4] = 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 873 len 4]
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                            mem[ceil32(return_data.size) + 901 len 4] = 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 873 len 4]
                else:
                    require return_data.size >= 32
                    if not mem[612]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 691 len 22]
                    if not uint8(stor4.field_16):
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if withdrawFeeFactor * arg2 / 10000 <= ext_call.return_data[0]:
                            if wantLockedTotal >= withdrawFeeFactor * arg2 / 10000:
                                if withdrawFeeFactor * arg2 / 10000 > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= withdrawFeeFactor * arg2 / 10000
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, withdrawFeeFactor * arg2 / 10000) >> 32
                                mem[ceil32(return_data.size) + 901 len 4] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(224, 32, withdrawFeeFactor * arg2 / 10000) << 224, mem[ceil32(return_data.size) + 873 len 4]
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                                mem[ceil32(return_data.size) + 901 len 4] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 873 len 4]
                        else:
                            if wantLockedTotal >= ext_call.return_data[0]:
                                if ext_call.return_data[0] > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= ext_call.return_data[0]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                                mem[ceil32(return_data.size) + 901 len 4] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 873 len 4]
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                                mem[ceil32(return_data.size) + 901 len 4] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 873 len 4]
                    else:
                        require ext_code.size(farmContractAddress)
                        if not uint8(stor4.field_0):
                            call farmContractAddress.withdraw(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args pid, withdrawFeeFactor * arg2 / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if withdrawFeeFactor * arg2 / 10000 <= ext_call.return_data[0]:
                                if wantLockedTotal >= withdrawFeeFactor * arg2 / 10000:
                                    if withdrawFeeFactor * arg2 / 10000 > wantLockedTotal:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    wantLockedTotal -= withdrawFeeFactor * arg2 / 10000
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, withdrawFeeFactor * arg2 / 10000) >> 32
                                    mem[ceil32(return_data.size) + 901 len 4] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(224, 32, withdrawFeeFactor * arg2 / 10000) << 224, mem[ceil32(return_data.size) + 873 len 4]
                                else:
                                    if wantLockedTotal > wantLockedTotal:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    wantLockedTotal = 0
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                                    mem[ceil32(return_data.size) + 901 len 4] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 873 len 4]
                            else:
                                if wantLockedTotal >= ext_call.return_data[0]:
                                    if ext_call.return_data[0] > wantLockedTotal:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    wantLockedTotal -= ext_call.return_data[0]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                                    mem[ceil32(return_data.size) + 901 len 4] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 873 len 4]
                                else:
                                    if wantLockedTotal > wantLockedTotal:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    wantLockedTotal = 0
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                                    mem[ceil32(return_data.size) + 901 len 4] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 873 len 4]
                        else:
                            call farmContractAddress.leaveStaking(uint256 arg1) with:
                                 gas gas_remaining wei
                                args (withdrawFeeFactor * arg2 / 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if withdrawFeeFactor * arg2 / 10000 <= ext_call.return_data[0]:
                                if wantLockedTotal >= withdrawFeeFactor * arg2 / 10000:
                                    if withdrawFeeFactor * arg2 / 10000 > wantLockedTotal:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    wantLockedTotal -= withdrawFeeFactor * arg2 / 10000
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, withdrawFeeFactor * arg2 / 10000) >> 32
                                    mem[ceil32(return_data.size) + 901 len 4] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(224, 32, withdrawFeeFactor * arg2 / 10000) << 224, mem[ceil32(return_data.size) + 873 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    'SafeERC20: low-level call failed',
                                                    mem[(2 * ceil32(return_data.size)) + 910 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 841]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 920 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    stor1 = 1
                                    return sharesTotal * arg2 / wantLockedTotal, 
                                           mem[(2 * ceil32(return_data.size)) + 842 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                                mem[ceil32(return_data.size) + 873 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 873 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 841]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 920 len 22]
                                stor1 = 1
                                return (sharesTotal * arg2 / wantLockedTotal)
                            if wantLockedTotal >= ext_call.return_data[0]:
                                if ext_call.return_data[0] > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= ext_call.return_data[0]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                                mem[ceil32(return_data.size) + 901 len 4] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 873 len 4]
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                                mem[ceil32(return_data.size) + 901 len 4] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 873 len 4]
            else:
                if controllerFee * withdrawFeeFactor * arg2 / 10000 / withdrawFeeFactor * arg2 / 10000 != controllerFee:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000 > withdrawFeeFactor * arg2 / 10000:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor23), uint32(stor23), Mask(224, 32, controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000) >> 32
                call wantAddress with:
                   funct uint32(stor23)
                     gas gas_remaining wei
                    args Mask(224, 32, controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000) << 224, mem[644 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    if not uint8(stor4.field_16):
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (withdrawFeeFactor * arg2 / 10000) - (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000) <= ext_call.return_data[0]:
                            if wantLockedTotal >= (withdrawFeeFactor * arg2 / 10000) - (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000):
                                if (withdrawFeeFactor * arg2 / 10000) - (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000) > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = wantLockedTotal - (withdrawFeeFactor * arg2 / 10000) + (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000)
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, (withdrawFeeFactor * arg2 / 10000) - (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000)) >> 32
                                mem[ceil32(return_data.size) + 901 len 4] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(224, 32, (withdrawFeeFactor * arg2 / 10000) - (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000)) << 224, mem[ceil32(return_data.size) + 873 len 4]
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                                mem[ceil32(return_data.size) + 901 len 4] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 873 len 4]
                        else:
                            if wantLockedTotal >= ext_call.return_data[0]:
                                if ext_call.return_data[0] > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= ext_call.return_data[0]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                                mem[ceil32(return_data.size) + 901 len 4] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 873 len 4]
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                                mem[ceil32(return_data.size) + 901 len 4] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 873 len 4]
                    else:
                        require ext_code.size(farmContractAddress)
                        if not uint8(stor4.field_0):
                            call farmContractAddress.withdraw(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args pid, (withdrawFeeFactor * arg2 / 10000) - (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (withdrawFeeFactor * arg2 / 10000) - (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000) <= ext_call.return_data[0]:
                                if wantLockedTotal >= (withdrawFeeFactor * arg2 / 10000) - (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000):
                                    if (withdrawFeeFactor * arg2 / 10000) - (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000) > wantLockedTotal:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    wantLockedTotal = wantLockedTotal - (withdrawFeeFactor * arg2 / 10000) + (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000)
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, (withdrawFeeFactor * arg2 / 10000) - (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000)) >> 32
                                    mem[ceil32(return_data.size) + 873 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(224, 32, (withdrawFeeFactor * arg2 / 10000) - (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000)) << 224, mem[ceil32(return_data.size) + 873 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 841]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 920 len 22]
                                    stor1 = 1
                                    return (sharesTotal * arg2 / wantLockedTotal)
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                                mem[ceil32(return_data.size) + 901 len 4] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 873 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 910 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 841]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 920 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                stor1 = 1
                                return sharesTotal * arg2 / wantLockedTotal, 
                                       mem[(2 * ceil32(return_data.size)) + 842 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if wantLockedTotal >= ext_call.return_data[0]:
                                if ext_call.return_data[0] > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= ext_call.return_data[0]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                                mem[ceil32(return_data.size) + 901 len 4] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 873 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 910 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 841]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 920 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                stor1 = 1
                                return sharesTotal * arg2 / wantLockedTotal, 
                                       mem[(2 * ceil32(return_data.size)) + 842 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                            mem[ceil32(return_data.size) + 873 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 873 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 841]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 920 len 22]
                            stor1 = 1
                            return (sharesTotal * arg2 / wantLockedTotal)
                        call farmContractAddress.leaveStaking(uint256 arg1) with:
                             gas gas_remaining wei
                            args ((withdrawFeeFactor * arg2 / 10000) - (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (withdrawFeeFactor * arg2 / 10000) - (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000) <= ext_call.return_data[0]:
                            if wantLockedTotal >= (withdrawFeeFactor * arg2 / 10000) - (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000):
                                if (withdrawFeeFactor * arg2 / 10000) - (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000) > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = wantLockedTotal - (withdrawFeeFactor * arg2 / 10000) + (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000)
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, (withdrawFeeFactor * arg2 / 10000) - (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000)) >> 32
                                mem[ceil32(return_data.size) + 901 len 4] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(224, 32, (withdrawFeeFactor * arg2 / 10000) - (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000)) << 224, mem[ceil32(return_data.size) + 873 len 4]
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                                mem[ceil32(return_data.size) + 901 len 4] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 873 len 4]
                        else:
                            if wantLockedTotal >= ext_call.return_data[0]:
                                if ext_call.return_data[0] > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= ext_call.return_data[0]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                                mem[ceil32(return_data.size) + 873 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 873 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 841]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 920 len 22]
                                stor1 = 1
                                return (sharesTotal * arg2 / wantLockedTotal)
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                            mem[ceil32(return_data.size) + 901 len 4] = 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 873 len 4]
                else:
                    require return_data.size >= 32
                    if not mem[612]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 691 len 22]
                    if not uint8(stor4.field_16):
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (withdrawFeeFactor * arg2 / 10000) - (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000) <= ext_call.return_data[0]:
                            if wantLockedTotal >= (withdrawFeeFactor * arg2 / 10000) - (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000):
                                if (withdrawFeeFactor * arg2 / 10000) - (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000) > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = wantLockedTotal - (withdrawFeeFactor * arg2 / 10000) + (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000)
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, (withdrawFeeFactor * arg2 / 10000) - (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000)) >> 32
                                mem[ceil32(return_data.size) + 901 len 4] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(224, 32, (withdrawFeeFactor * arg2 / 10000) - (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000)) << 224, mem[ceil32(return_data.size) + 873 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 910 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 841]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 920 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                stor1 = 1
                                return sharesTotal * arg2 / wantLockedTotal, 
                                       mem[(2 * ceil32(return_data.size)) + 842 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                            mem[ceil32(return_data.size) + 873 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 873 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 841]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 920 len 22]
                            stor1 = 1
                            return (sharesTotal * arg2 / wantLockedTotal)
                        if wantLockedTotal >= ext_call.return_data[0]:
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                            mem[ceil32(return_data.size) + 901 len 4] = 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 873 len 4]
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                            mem[ceil32(return_data.size) + 901 len 4] = 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 873 len 4]
                    else:
                        require ext_code.size(farmContractAddress)
                        if not uint8(stor4.field_0):
                            call farmContractAddress.withdraw(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args pid, (withdrawFeeFactor * arg2 / 10000) - (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000)
                        else:
                            call farmContractAddress.leaveStaking(uint256 arg1) with:
                                 gas gas_remaining wei
                                args ((withdrawFeeFactor * arg2 / 10000) - (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (withdrawFeeFactor * arg2 / 10000) - (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000) <= ext_call.return_data[0]:
                            if wantLockedTotal >= (withdrawFeeFactor * arg2 / 10000) - (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000):
                                if (withdrawFeeFactor * arg2 / 10000) - (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000) > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = wantLockedTotal - (withdrawFeeFactor * arg2 / 10000) + (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000)
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, (withdrawFeeFactor * arg2 / 10000) - (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000)) >> 32
                                mem[ceil32(return_data.size) + 901 len 4] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(224, 32, (withdrawFeeFactor * arg2 / 10000) - (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000)) << 224, mem[ceil32(return_data.size) + 873 len 4]
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                                mem[ceil32(return_data.size) + 901 len 4] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 873 len 4]
                        else:
                            if wantLockedTotal >= ext_call.return_data[0]:
                                if ext_call.return_data[0] > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= ext_call.return_data[0]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                                mem[ceil32(return_data.size) + 901 len 4] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 873 len 4]
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                                mem[ceil32(return_data.size) + 901 len 4] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 873 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 
                        'SafeERC20: low-level call failed',
                        mem[(2 * ceil32(return_data.size)) + 910 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if return_data.size:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 841]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + 920 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        stor1 = 1
        return sharesTotal * arg2 / wantLockedTotal, 
               mem[(2 * ceil32(return_data.size)) + 842 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    if sharesTotal > sharesTotal:
        revert with 0, 'SafeMath: subtraction overflow'
    sharesTotal = 0
    if 10000 <= withdrawFeeFactor:
        if controllerFee >= 10000:
            if not uint8(stor4.field_16):
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg2 <= ext_call.return_data[0]:
                    if wantLockedTotal >= arg2:
                        if arg2 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= arg2
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg2) >> 32
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[516 len 4]
                    else:
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(480, 0, stor18.field_0), mem[516 len 4]
                else:
                    if wantLockedTotal >= ext_call.return_data[0]:
                        if ext_call.return_data[0] > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= ext_call.return_data[0]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                    else:
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(480, 0, stor18.field_0), mem[516 len 4]
            else:
                require ext_code.size(farmContractAddress)
                if not uint8(stor4.field_0):
                    call farmContractAddress.withdraw(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pid, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 <= ext_call.return_data[0]:
                        if wantLockedTotal >= arg2:
                            if arg2 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= arg2
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg2) >> 32
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 224, mem[516 len 4]
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor18.field_0), mem[516 len 4]
                    else:
                        if wantLockedTotal >= ext_call.return_data[0]:
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor18.field_0), mem[516 len 4]
                else:
                    call farmContractAddress.leaveStaking(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 > ext_call.return_data[0]:
                        if wantLockedTotal >= ext_call.return_data[0]:
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor18.field_0), mem[516 len 4]
                    else:
                        if wantLockedTotal >= arg2:
                            if arg2 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= arg2
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg2) >> 32
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 224, mem[516 len 4]
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                            mem[516 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor18.field_0), mem[516 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[484]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 563 len 22]
        else:
            if not arg2:
                if 0 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor23), uint32(stor23), 0
                call wantAddress with:
                   funct uint32(stor23)
                     gas gas_remaining wei
                    args 0, mem[580 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    if uint8(stor4.field_16):
                        require ext_code.size(farmContractAddress)
                        if not uint8(stor4.field_0):
                            call farmContractAddress.withdraw(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args pid, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg2 <= ext_call.return_data[0]:
                                if wantLockedTotal >= arg2:
                                    if arg2 > wantLockedTotal:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    wantLockedTotal -= arg2
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg2) >> 32
                                    mem[ceil32(return_data.size) + 837 len 4] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 224, mem[ceil32(return_data.size) + 809 len 4]
                                else:
                                    if wantLockedTotal > wantLockedTotal:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    wantLockedTotal = 0
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                                    mem[ceil32(return_data.size) + 837 len 4] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 809 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 777]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                stor1 = 1
                                return sharesTotal, 
                                       mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if wantLockedTotal >= ext_call.return_data[0]:
                                if ext_call.return_data[0] > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= ext_call.return_data[0]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                                mem[ceil32(return_data.size) + 809 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 809 len 4]
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                                mem[ceil32(return_data.size) + 809 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 809 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 777]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 856 len 22]
                            stor1 = 1
                            return sharesTotal
                        call farmContractAddress.leaveStaking(uint256 arg1) with:
                             gas gas_remaining wei
                            args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    if not mem[548]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 627 len 22]
                    if uint8(stor4.field_16):
                        require ext_code.size(farmContractAddress)
                        if not uint8(stor4.field_0):
                            call farmContractAddress.withdraw(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args pid, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg2 <= ext_call.return_data[0]:
                                if wantLockedTotal >= arg2:
                                    if arg2 > wantLockedTotal:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    wantLockedTotal -= arg2
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg2) >> 32
                                    mem[ceil32(return_data.size) + 837 len 4] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 224, mem[ceil32(return_data.size) + 809 len 4]
                                else:
                                    if wantLockedTotal > wantLockedTotal:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    wantLockedTotal = 0
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                                    mem[ceil32(return_data.size) + 837 len 4] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 809 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 777]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                stor1 = 1
                                return sharesTotal, 
                                       mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if wantLockedTotal >= ext_call.return_data[0]:
                                if ext_call.return_data[0] > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= ext_call.return_data[0]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                                mem[ceil32(return_data.size) + 837 len 4] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 809 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 777]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                stor1 = 1
                                return sharesTotal, 
                                       mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                            mem[ceil32(return_data.size) + 809 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 809 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 777]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 856 len 22]
                            stor1 = 1
                            return sharesTotal
                        call farmContractAddress.leaveStaking(uint256 arg1) with:
                             gas gas_remaining wei
                            args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg2 <= ext_call.return_data[0]:
                    if wantLockedTotal >= arg2:
                        if arg2 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= arg2
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg2) >> 32
                        mem[ceil32(return_data.size) + 837 len 4] = 0
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[ceil32(return_data.size) + 809 len 4]
                    else:
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                        mem[ceil32(return_data.size) + 837 len 4] = 0
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 809 len 4]
                else:
                    if wantLockedTotal >= ext_call.return_data[0]:
                        if ext_call.return_data[0] > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= ext_call.return_data[0]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                        mem[ceil32(return_data.size) + 837 len 4] = 0
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 809 len 4]
                    else:
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                        mem[ceil32(return_data.size) + 837 len 4] = 0
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 809 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 777]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                stor1 = 1
                return sharesTotal, 
                       mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if controllerFee * arg2 / arg2 != controllerFee:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if controllerFee * arg2 / 10000 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ext_code.size(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor23), uint32(stor23), Mask(224, 32, controllerFee * arg2 / 10000) >> 32
            mem[580 len 0] = 0
            call wantAddress with:
               funct uint32(stor23)
                 gas gas_remaining wei
                args Mask(224, 32, controllerFee * arg2 / 10000) << 224, mem[580 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[548]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 627 len 22]
            if uint8(stor4.field_16):
                require ext_code.size(farmContractAddress)
                if not uint8(stor4.field_0):
                    call farmContractAddress.withdraw(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pid, arg2 - (controllerFee * arg2 / 10000)
                else:
                    call farmContractAddress.leaveStaking(uint256 arg1) with:
                         gas gas_remaining wei
                        args (arg2 - (controllerFee * arg2 / 10000))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg2 - (controllerFee * arg2 / 10000) <= ext_call.return_data[0]:
                if wantLockedTotal >= arg2 - (controllerFee * arg2 / 10000):
                    if arg2 - (controllerFee * arg2 / 10000) > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal = wantLockedTotal - arg2 + (controllerFee * arg2 / 10000)
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 745 len 64] = 0, address(sub_a6933411Address), Mask(224, 32, arg2 - (controllerFee * arg2 / 10000)) >> 32
                    call wantAddress with:
                       funct uint32(stor12)
                         gas gas_remaining wei
                        args arg2 - (controllerFee * arg2 / 10000), mem[ceil32(return_data.size) + 681 len 28], mem[ceil32(return_data.size) + 809 len 4]
                else:
                    if wantLockedTotal > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal = 0
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 745 len 64] = 0, address(sub_a6933411Address), Mask(224, 0, stor18.field_32)
                    call wantAddress with:
                       funct uint32(stor12)
                         gas gas_remaining wei
                        args wantLockedTotal, mem[ceil32(return_data.size) + 681 len 28], mem[ceil32(return_data.size) + 809 len 4]
            else:
                if wantLockedTotal >= ext_call.return_data[0]:
                    if ext_call.return_data[0] > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal -= ext_call.return_data[0]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 745 len 64] = 0, address(sub_a6933411Address), ext_call.return_data[0 len 28]
                    call wantAddress with:
                       funct uint32(stor12)
                         gas gas_remaining wei
                        args ext_call.return_data[0], mem[ceil32(return_data.size) + 681 len 28], mem[ceil32(return_data.size) + 809 len 4]
                else:
                    if wantLockedTotal > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal = 0
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 745 len 64] = 0, address(sub_a6933411Address), Mask(224, 0, stor18.field_32)
                    call wantAddress with:
                       funct uint32(stor12)
                         gas gas_remaining wei
                        args wantLockedTotal, mem[ceil32(return_data.size) + 681 len 28], mem[ceil32(return_data.size) + 809 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 777]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 856 len 22]
        stor1 = 1
        return sharesTotal
    if not arg2:
        if controllerFee >= 10000:
            if uint8(stor4.field_16):
                require ext_code.size(farmContractAddress)
                if not uint8(stor4.field_0):
                    call farmContractAddress.withdraw(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pid, 0
                else:
                    call farmContractAddress.leaveStaking(uint256 arg1) with:
                         gas gas_remaining wei
                        args 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 <= ext_call.return_data[0]:
                if wantLockedTotal >= 0:
                    if 0 > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                    call wantAddress with:
                       funct uint32(stor12)
                         gas gas_remaining wei
                        args 0, mem[580 len 4]
                else:
                    if wantLockedTotal > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal = 0
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                    call wantAddress with:
                       funct uint32(stor12)
                         gas gas_remaining wei
                        args Mask(480, 0, stor18.field_0), mem[580 len 4]
            else:
                if wantLockedTotal >= ext_call.return_data[0]:
                    if ext_call.return_data[0] > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal -= ext_call.return_data[0]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                    call wantAddress with:
                       funct uint32(stor12)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[580 len 4]
                else:
                    if wantLockedTotal > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal = 0
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                    call wantAddress with:
                       funct uint32(stor12)
                         gas gas_remaining wei
                        args Mask(480, 0, stor18.field_0), mem[580 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[548]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 627 len 22]
        else:
            if not ext_code.size(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor23), uint32(stor23), 0
            mem[644 len 0] = 0
            call wantAddress with:
               funct uint32(stor23)
                 gas gas_remaining wei
                args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor23), uint32(stor23), 0) << 256, mem[644 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                if not uint8(stor4.field_16):
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 <= ext_call.return_data[0]:
                        if wantLockedTotal >= 0:
                            if 0 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 809 len 64] = 0, address(sub_a6933411Address), 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args 0, mem[ceil32(return_data.size) + 745 len 28], mem[ceil32(return_data.size) + 873 len 4]
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 809 len 64] = 0, address(sub_a6933411Address), Mask(224, 0, stor18.field_32)
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args wantLockedTotal, mem[ceil32(return_data.size) + 745 len 28], mem[ceil32(return_data.size) + 873 len 4]
                    else:
                        if wantLockedTotal >= ext_call.return_data[0]:
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 809 len 64] = 0, address(sub_a6933411Address), ext_call.return_data[0 len 28]
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args ext_call.return_data[0], mem[ceil32(return_data.size) + 745 len 28], mem[ceil32(return_data.size) + 873 len 4]
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 809 len 64] = 0, address(sub_a6933411Address), Mask(224, 0, stor18.field_32)
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args wantLockedTotal, mem[ceil32(return_data.size) + 745 len 28], mem[ceil32(return_data.size) + 873 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 841]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 920 len 22]
                else:
                    require ext_code.size(farmContractAddress)
                    if not uint8(stor4.field_0):
                        call farmContractAddress.withdraw(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args pid, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 <= ext_call.return_data[0]:
                            if wantLockedTotal >= 0:
                                if 0 > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = 0, address(sub_a6933411Address), 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args 0, mem[ceil32(return_data.size) + 745 len 28], mem[ceil32(return_data.size) + 873 len 4]
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = 0, address(sub_a6933411Address), Mask(224, 0, stor18.field_32)
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args wantLockedTotal, mem[ceil32(return_data.size) + 745 len 28], mem[ceil32(return_data.size) + 873 len 4]
                        else:
                            if wantLockedTotal >= ext_call.return_data[0]:
                                if ext_call.return_data[0] > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= ext_call.return_data[0]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = 0, address(sub_a6933411Address), ext_call.return_data[0 len 28]
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], mem[ceil32(return_data.size) + 745 len 28], mem[ceil32(return_data.size) + 873 len 4]
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = 0, address(sub_a6933411Address), Mask(224, 0, stor18.field_32)
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args wantLockedTotal, mem[ceil32(return_data.size) + 745 len 28], mem[ceil32(return_data.size) + 873 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 841]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 920 len 22]
                    else:
                        call farmContractAddress.leaveStaking(uint256 arg1) with:
                             gas gas_remaining wei
                            args 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 <= ext_call.return_data[0]:
                            if wantLockedTotal >= 0:
                                if 0 > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = 0, address(sub_a6933411Address), 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args 0, mem[ceil32(return_data.size) + 745 len 28], mem[ceil32(return_data.size) + 873 len 4]
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = 0, address(sub_a6933411Address), Mask(224, 0, stor18.field_32)
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args wantLockedTotal, mem[ceil32(return_data.size) + 745 len 28], mem[ceil32(return_data.size) + 873 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 841]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 920 len 22]
                        else:
                            if wantLockedTotal >= ext_call.return_data[0]:
                                if ext_call.return_data[0] > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= ext_call.return_data[0]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = 0, address(sub_a6933411Address), ext_call.return_data[0 len 28]
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], mem[ceil32(return_data.size) + 745 len 28], mem[ceil32(return_data.size) + 873 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 841]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 920 len 22]
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = 0, address(sub_a6933411Address), Mask(224, 0, stor18.field_32)
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args wantLockedTotal, mem[ceil32(return_data.size) + 745 len 28], mem[ceil32(return_data.size) + 873 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 910 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 841]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 920 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            else:
                require return_data.size >= 32
                if not mem[612]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 691 len 22]
                if not uint8(stor4.field_16):
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 <= ext_call.return_data[0]:
                        if wantLockedTotal >= 0:
                            if 0 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 809 len 64] = 0, address(sub_a6933411Address), 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args 0, mem[ceil32(return_data.size) + 745 len 28], mem[ceil32(return_data.size) + 873 len 4]
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 809 len 64] = 0, address(sub_a6933411Address), Mask(224, 0, stor18.field_32)
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args wantLockedTotal, mem[ceil32(return_data.size) + 745 len 28], mem[ceil32(return_data.size) + 873 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 841]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 920 len 22]
                    else:
                        if wantLockedTotal >= ext_call.return_data[0]:
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 809 len 64] = 0, address(sub_a6933411Address), ext_call.return_data[0 len 28]
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args ext_call.return_data[0], mem[ceil32(return_data.size) + 745 len 28], mem[ceil32(return_data.size) + 873 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 841]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 920 len 22]
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 809 len 64] = 0, address(sub_a6933411Address), Mask(224, 0, stor18.field_32)
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args wantLockedTotal, mem[ceil32(return_data.size) + 745 len 28], mem[ceil32(return_data.size) + 873 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 910 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 841]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 920 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                else:
                    require ext_code.size(farmContractAddress)
                    if not uint8(stor4.field_0):
                        call farmContractAddress.withdraw(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args pid, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 <= ext_call.return_data[0]:
                            if wantLockedTotal >= 0:
                                if 0 > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = 0, address(sub_a6933411Address), 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args 0, mem[ceil32(return_data.size) + 745 len 28], mem[ceil32(return_data.size) + 873 len 4]
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = 0, address(sub_a6933411Address), Mask(224, 0, stor18.field_32)
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args wantLockedTotal, mem[ceil32(return_data.size) + 745 len 28], mem[ceil32(return_data.size) + 873 len 4]
                        else:
                            if wantLockedTotal >= ext_call.return_data[0]:
                                if ext_call.return_data[0] > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= ext_call.return_data[0]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = 0, address(sub_a6933411Address), ext_call.return_data[0 len 28]
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], mem[ceil32(return_data.size) + 745 len 28], mem[ceil32(return_data.size) + 873 len 4]
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = 0, address(sub_a6933411Address), Mask(224, 0, stor18.field_32)
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args wantLockedTotal, mem[ceil32(return_data.size) + 745 len 28], mem[ceil32(return_data.size) + 873 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 841]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 920 len 22]
                    else:
                        call farmContractAddress.leaveStaking(uint256 arg1) with:
                             gas gas_remaining wei
                            args 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 <= ext_call.return_data[0]:
                            if wantLockedTotal >= 0:
                                if 0 > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = 0, address(sub_a6933411Address), 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args 0, mem[ceil32(return_data.size) + 745 len 28], mem[ceil32(return_data.size) + 873 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 841]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 920 len 22]
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = 0, address(sub_a6933411Address), Mask(224, 0, stor18.field_32)
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args wantLockedTotal, mem[ceil32(return_data.size) + 745 len 28], mem[ceil32(return_data.size) + 873 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 910 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 841]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 920 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        else:
                            if wantLockedTotal >= ext_call.return_data[0]:
                                if ext_call.return_data[0] > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= ext_call.return_data[0]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = 0, address(sub_a6933411Address), ext_call.return_data[0 len 28]
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], mem[ceil32(return_data.size) + 745 len 28], mem[ceil32(return_data.size) + 873 len 4]
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = 0, address(sub_a6933411Address), Mask(224, 0, stor18.field_32)
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args wantLockedTotal, mem[ceil32(return_data.size) + 745 len 28], mem[ceil32(return_data.size) + 873 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 841]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 920 len 22]
        stor1 = 1
        return sharesTotal
    if withdrawFeeFactor * arg2 / arg2 != withdrawFeeFactor:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if controllerFee >= 10000:
        if not uint8(stor4.field_16):
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if withdrawFeeFactor * arg2 / 10000 <= ext_call.return_data[0]:
                if wantLockedTotal >= withdrawFeeFactor * arg2 / 10000:
                    if withdrawFeeFactor * arg2 / 10000 > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal -= withdrawFeeFactor * arg2 / 10000
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, withdrawFeeFactor * arg2 / 10000) >> 32
                    call wantAddress with:
                       funct uint32(stor12)
                         gas gas_remaining wei
                        args Mask(224, 32, withdrawFeeFactor * arg2 / 10000) << 224, mem[580 len 4]
                else:
                    if wantLockedTotal > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal = 0
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                    call wantAddress with:
                       funct uint32(stor12)
                         gas gas_remaining wei
                        args Mask(480, 0, stor18.field_0), mem[580 len 4]
            else:
                if wantLockedTotal >= ext_call.return_data[0]:
                    if ext_call.return_data[0] > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal -= ext_call.return_data[0]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                    call wantAddress with:
                       funct uint32(stor12)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[580 len 4]
                else:
                    if wantLockedTotal > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal = 0
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                    call wantAddress with:
                       funct uint32(stor12)
                         gas gas_remaining wei
                        args Mask(480, 0, stor18.field_0), mem[580 len 4]
        else:
            require ext_code.size(farmContractAddress)
            if not uint8(stor4.field_0):
                call farmContractAddress.withdraw(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args pid, withdrawFeeFactor * arg2 / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if withdrawFeeFactor * arg2 / 10000 <= ext_call.return_data[0]:
                    if wantLockedTotal >= withdrawFeeFactor * arg2 / 10000:
                        if withdrawFeeFactor * arg2 / 10000 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= withdrawFeeFactor * arg2 / 10000
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, withdrawFeeFactor * arg2 / 10000) >> 32
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(224, 32, withdrawFeeFactor * arg2 / 10000) << 224, mem[580 len 4]
                    else:
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(480, 0, stor18.field_0), mem[580 len 4]
                else:
                    if wantLockedTotal >= ext_call.return_data[0]:
                        if ext_call.return_data[0] > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= ext_call.return_data[0]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[580 len 4]
                    else:
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(480, 0, stor18.field_0), mem[580 len 4]
            else:
                call farmContractAddress.leaveStaking(uint256 arg1) with:
                     gas gas_remaining wei
                    args (withdrawFeeFactor * arg2 / 10000)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if withdrawFeeFactor * arg2 / 10000 <= ext_call.return_data[0]:
                    if wantLockedTotal >= withdrawFeeFactor * arg2 / 10000:
                        if withdrawFeeFactor * arg2 / 10000 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= withdrawFeeFactor * arg2 / 10000
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, withdrawFeeFactor * arg2 / 10000) >> 32
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(224, 32, withdrawFeeFactor * arg2 / 10000) << 224, mem[580 len 4]
                    else:
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(480, 0, stor18.field_0), mem[580 len 4]
                else:
                    if wantLockedTotal < ext_call.return_data[0]:
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(480, 0, stor18.field_0), mem[580 len 4]
                    else:
                        if ext_call.return_data[0] > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= ext_call.return_data[0]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                        mem[580 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[580 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[548]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 627 len 22]
        stor1 = 1
        return sharesTotal
    if not withdrawFeeFactor * arg2 / 10000:
        if 0 > withdrawFeeFactor * arg2 / 10000:
            revert with 0, 'SafeMath: subtraction overflow'
        if not ext_code.size(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor23), uint32(stor23), 0
        call wantAddress with:
           funct uint32(stor23)
             gas gas_remaining wei
            args 0, mem[644 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            if not uint8(stor4.field_16):
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if withdrawFeeFactor * arg2 / 10000 <= ext_call.return_data[0]:
                    if wantLockedTotal >= withdrawFeeFactor * arg2 / 10000:
                        if withdrawFeeFactor * arg2 / 10000 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= withdrawFeeFactor * arg2 / 10000
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, withdrawFeeFactor * arg2 / 10000) >> 32
                        mem[ceil32(return_data.size) + 901 len 4] = 0
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(224, 32, withdrawFeeFactor * arg2 / 10000) << 224, mem[ceil32(return_data.size) + 873 len 4]
                    else:
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                        mem[ceil32(return_data.size) + 901 len 4] = 0
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 873 len 4]
                else:
                    if wantLockedTotal >= ext_call.return_data[0]:
                        if ext_call.return_data[0] > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= ext_call.return_data[0]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                        mem[ceil32(return_data.size) + 901 len 4] = 0
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 873 len 4]
                    else:
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                        mem[ceil32(return_data.size) + 901 len 4] = 0
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 873 len 4]
            else:
                require ext_code.size(farmContractAddress)
                if not uint8(stor4.field_0):
                    call farmContractAddress.withdraw(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pid, withdrawFeeFactor * arg2 / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if withdrawFeeFactor * arg2 / 10000 <= ext_call.return_data[0]:
                        if wantLockedTotal >= withdrawFeeFactor * arg2 / 10000:
                            if withdrawFeeFactor * arg2 / 10000 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= withdrawFeeFactor * arg2 / 10000
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, withdrawFeeFactor * arg2 / 10000) >> 32
                            mem[ceil32(return_data.size) + 901 len 4] = 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(224, 32, withdrawFeeFactor * arg2 / 10000) << 224, mem[ceil32(return_data.size) + 873 len 4]
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                            mem[ceil32(return_data.size) + 901 len 4] = 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 873 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 910 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 841]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 920 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        stor1 = 1
                        return sharesTotal, 
                               mem[(2 * ceil32(return_data.size)) + 842 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if wantLockedTotal >= ext_call.return_data[0]:
                        if ext_call.return_data[0] > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= ext_call.return_data[0]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                        mem[ceil32(return_data.size) + 901 len 4] = 0
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 873 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 910 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 841]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 920 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        stor1 = 1
                        return sharesTotal, 
                               mem[(2 * ceil32(return_data.size)) + 842 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if wantLockedTotal > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal = 0
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                    mem[ceil32(return_data.size) + 873 len 0] = 0
                    call wantAddress with:
                       funct uint32(stor12)
                         gas gas_remaining wei
                        args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 873 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 841]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 920 len 22]
                    stor1 = 1
                    return sharesTotal
                call farmContractAddress.leaveStaking(uint256 arg1) with:
                     gas gas_remaining wei
                    args (withdrawFeeFactor * arg2 / 10000)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if withdrawFeeFactor * arg2 / 10000 <= ext_call.return_data[0]:
                    if wantLockedTotal >= withdrawFeeFactor * arg2 / 10000:
                        if withdrawFeeFactor * arg2 / 10000 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= withdrawFeeFactor * arg2 / 10000
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, withdrawFeeFactor * arg2 / 10000) >> 32
                        mem[ceil32(return_data.size) + 873 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(224, 32, withdrawFeeFactor * arg2 / 10000) << 224, mem[ceil32(return_data.size) + 873 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 841]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 920 len 22]
                        stor1 = 1
                        return sharesTotal
                else:
                    if wantLockedTotal >= ext_call.return_data[0]:
                        if ext_call.return_data[0] > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= ext_call.return_data[0]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                        mem[ceil32(return_data.size) + 873 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 873 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 841]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 920 len 22]
                        stor1 = 1
                        return sharesTotal
                if wantLockedTotal > wantLockedTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                wantLockedTotal = 0
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                mem[ceil32(return_data.size) + 901 len 4] = 0
                call wantAddress with:
                   funct uint32(stor12)
                     gas gas_remaining wei
                    args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 873 len 4]
        else:
            require return_data.size >= 32
            if not mem[612]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 691 len 22]
            if not uint8(stor4.field_16):
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if withdrawFeeFactor * arg2 / 10000 <= ext_call.return_data[0]:
                    if wantLockedTotal >= withdrawFeeFactor * arg2 / 10000:
                        if withdrawFeeFactor * arg2 / 10000 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= withdrawFeeFactor * arg2 / 10000
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, withdrawFeeFactor * arg2 / 10000) >> 32
                        mem[ceil32(return_data.size) + 901 len 4] = 0
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(224, 32, withdrawFeeFactor * arg2 / 10000) << 224, mem[ceil32(return_data.size) + 873 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 910 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 841]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 920 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        stor1 = 1
                        return sharesTotal, 
                               mem[(2 * ceil32(return_data.size)) + 842 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if wantLockedTotal > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal = 0
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                    mem[ceil32(return_data.size) + 873 len 0] = 0
                    call wantAddress with:
                       funct uint32(stor12)
                         gas gas_remaining wei
                        args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 873 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 841]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 920 len 22]
                    stor1 = 1
                    return sharesTotal
                if wantLockedTotal >= ext_call.return_data[0]:
                    if ext_call.return_data[0] > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal -= ext_call.return_data[0]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                    mem[ceil32(return_data.size) + 901 len 4] = 0
                    call wantAddress with:
                       funct uint32(stor12)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 873 len 4]
                else:
                    if wantLockedTotal > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal = 0
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                    mem[ceil32(return_data.size) + 901 len 4] = 0
                    call wantAddress with:
                       funct uint32(stor12)
                         gas gas_remaining wei
                        args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 873 len 4]
            else:
                require ext_code.size(farmContractAddress)
                if not uint8(stor4.field_0):
                    call farmContractAddress.withdraw(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pid, withdrawFeeFactor * arg2 / 10000
                else:
                    call farmContractAddress.leaveStaking(uint256 arg1) with:
                         gas gas_remaining wei
                        args (withdrawFeeFactor * arg2 / 10000)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if withdrawFeeFactor * arg2 / 10000 <= ext_call.return_data[0]:
                    if wantLockedTotal >= withdrawFeeFactor * arg2 / 10000:
                        if withdrawFeeFactor * arg2 / 10000 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= withdrawFeeFactor * arg2 / 10000
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, withdrawFeeFactor * arg2 / 10000) >> 32
                        mem[ceil32(return_data.size) + 901 len 4] = 0
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(224, 32, withdrawFeeFactor * arg2 / 10000) << 224, mem[ceil32(return_data.size) + 873 len 4]
                    else:
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                        mem[ceil32(return_data.size) + 901 len 4] = 0
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 873 len 4]
                else:
                    if wantLockedTotal >= ext_call.return_data[0]:
                        if ext_call.return_data[0] > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= ext_call.return_data[0]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                        mem[ceil32(return_data.size) + 901 len 4] = 0
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 873 len 4]
                    else:
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                        mem[ceil32(return_data.size) + 901 len 4] = 0
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 873 len 4]
    else:
        if controllerFee * withdrawFeeFactor * arg2 / 10000 / withdrawFeeFactor * arg2 / 10000 != controllerFee:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000 > withdrawFeeFactor * arg2 / 10000:
            revert with 0, 'SafeMath: subtraction overflow'
        if not ext_code.size(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor23), uint32(stor23), Mask(224, 32, controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000) >> 32
        call wantAddress with:
           funct uint32(stor23)
             gas gas_remaining wei
            args Mask(224, 32, controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000) << 224, mem[644 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            if not uint8(stor4.field_16):
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (withdrawFeeFactor * arg2 / 10000) - (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000) <= ext_call.return_data[0]:
                    if wantLockedTotal >= (withdrawFeeFactor * arg2 / 10000) - (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000):
                        if (withdrawFeeFactor * arg2 / 10000) - (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000) > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = wantLockedTotal - (withdrawFeeFactor * arg2 / 10000) + (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000)
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, (withdrawFeeFactor * arg2 / 10000) - (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000)) >> 32
                        mem[ceil32(return_data.size) + 901 len 4] = 0
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(224, 32, (withdrawFeeFactor * arg2 / 10000) - (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000)) << 224, mem[ceil32(return_data.size) + 873 len 4]
                    else:
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                        mem[ceil32(return_data.size) + 901 len 4] = 0
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 873 len 4]
                else:
                    if wantLockedTotal >= ext_call.return_data[0]:
                        if ext_call.return_data[0] > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= ext_call.return_data[0]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                        mem[ceil32(return_data.size) + 901 len 4] = 0
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 873 len 4]
                    else:
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                        mem[ceil32(return_data.size) + 901 len 4] = 0
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 873 len 4]
            else:
                require ext_code.size(farmContractAddress)
                if not uint8(stor4.field_0):
                    call farmContractAddress.withdraw(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pid, (withdrawFeeFactor * arg2 / 10000) - (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (withdrawFeeFactor * arg2 / 10000) - (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000) <= ext_call.return_data[0]:
                        if wantLockedTotal >= (withdrawFeeFactor * arg2 / 10000) - (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000):
                            if (withdrawFeeFactor * arg2 / 10000) - (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000) > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = wantLockedTotal - (withdrawFeeFactor * arg2 / 10000) + (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000)
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, (withdrawFeeFactor * arg2 / 10000) - (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000)) >> 32
                            mem[ceil32(return_data.size) + 901 len 4] = 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(224, 32, (withdrawFeeFactor * arg2 / 10000) - (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000)) << 224, mem[ceil32(return_data.size) + 873 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 910 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 841]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 920 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            stor1 = 1
                            return sharesTotal, 
                                   mem[(2 * ceil32(return_data.size)) + 842 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                        mem[ceil32(return_data.size) + 873 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 873 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 841]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 920 len 22]
                        stor1 = 1
                        return sharesTotal
                    if wantLockedTotal >= ext_call.return_data[0]:
                        if ext_call.return_data[0] > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= ext_call.return_data[0]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                        mem[ceil32(return_data.size) + 901 len 4] = 0
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 873 len 4]
                    else:
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                        mem[ceil32(return_data.size) + 901 len 4] = 0
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 873 len 4]
                else:
                    call farmContractAddress.leaveStaking(uint256 arg1) with:
                         gas gas_remaining wei
                        args ((withdrawFeeFactor * arg2 / 10000) - (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (withdrawFeeFactor * arg2 / 10000) - (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000) <= ext_call.return_data[0]:
                        if wantLockedTotal >= (withdrawFeeFactor * arg2 / 10000) - (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000):
                            if (withdrawFeeFactor * arg2 / 10000) - (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000) > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = wantLockedTotal - (withdrawFeeFactor * arg2 / 10000) + (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000)
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, (withdrawFeeFactor * arg2 / 10000) - (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000)) >> 32
                            mem[ceil32(return_data.size) + 873 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(224, 32, (withdrawFeeFactor * arg2 / 10000) - (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000)) << 224, mem[ceil32(return_data.size) + 873 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 841]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 920 len 22]
                            stor1 = 1
                            return sharesTotal
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                        mem[ceil32(return_data.size) + 901 len 4] = 0
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 873 len 4]
                    else:
                        if wantLockedTotal >= ext_call.return_data[0]:
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                            mem[ceil32(return_data.size) + 901 len 4] = 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 873 len 4]
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                            mem[ceil32(return_data.size) + 901 len 4] = 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 873 len 4]
        else:
            require return_data.size >= 32
            if not mem[612]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 691 len 22]
            if uint8(stor4.field_16):
                require ext_code.size(farmContractAddress)
                if not uint8(stor4.field_0):
                    call farmContractAddress.withdraw(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pid, (withdrawFeeFactor * arg2 / 10000) - (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000)
                else:
                    call farmContractAddress.leaveStaking(uint256 arg1) with:
                         gas gas_remaining wei
                        args ((withdrawFeeFactor * arg2 / 10000) - (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (withdrawFeeFactor * arg2 / 10000) - (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000) <= ext_call.return_data[0]:
                if wantLockedTotal >= (withdrawFeeFactor * arg2 / 10000) - (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000):
                    if (withdrawFeeFactor * arg2 / 10000) - (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000) > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal = wantLockedTotal - (withdrawFeeFactor * arg2 / 10000) + (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000)
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, (withdrawFeeFactor * arg2 / 10000) - (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000)) >> 32
                    mem[ceil32(return_data.size) + 901 len 4] = 0
                    call wantAddress with:
                       funct uint32(stor12)
                         gas gas_remaining wei
                        args Mask(224, 32, (withdrawFeeFactor * arg2 / 10000) - (controllerFee * withdrawFeeFactor * arg2 / 10000 / 10000)) << 224, mem[ceil32(return_data.size) + 873 len 4]
                else:
                    if wantLockedTotal > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal = 0
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                    mem[ceil32(return_data.size) + 901 len 4] = 0
                    call wantAddress with:
                       funct uint32(stor12)
                         gas gas_remaining wei
                        args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 873 len 4]
            else:
                if wantLockedTotal >= ext_call.return_data[0]:
                    if ext_call.return_data[0] > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal -= ext_call.return_data[0]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                    mem[ceil32(return_data.size) + 901 len 4] = 0
                    call wantAddress with:
                       funct uint32(stor12)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 873 len 4]
                else:
                    if wantLockedTotal > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal = 0
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor18.field_32)
                    mem[ceil32(return_data.size) + 901 len 4] = 0
                    call wantAddress with:
                       funct uint32(stor12)
                         gas gas_remaining wei
                        args Mask(480, 0, stor18.field_0), mem[ceil32(return_data.size) + 873 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 'SafeMath: division by zero'
    mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 
                    'SafeERC20: low-level call failed',
                    mem[(2 * ceil32(return_data.size)) + 910 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    if return_data.size:
        require return_data.size >= 32
        if not mem[ceil32(return_data.size) + 841]:
            revert with 0, 
                        32,
                        42,
                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(2 * ceil32(return_data.size)) + 920 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    stor1 = 1
    return sharesTotal, 
           mem[(2 * ceil32(return_data.size)) + 842 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
}



}
