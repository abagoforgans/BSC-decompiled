contract main {




// =====================  Runtime code  =====================


#
#  - deposit(address arg1, uint256 arg2)
#  - inCaseTokensGetStuck(address arg1, uint256 arg2, address arg3)
#  - convertDustToEarned()
#  - earn()
#
const controllerFeeUL = 5000

const sub_1672d7b5(?) = 10000

const controllerFeeMax = 10000

const buyBackRateMax = 10000

const withdrawFeeFactorMax = 10000

const withdrawFeeFactorLL = 5000

const buyBackRateUL = 5000

const slippageFactorUL = 995

const entranceFeeFactorLL = 9950

const entranceFeeFactorMax = 10000

const sub_f2dc4648(?) = 9500


address owner;
uint256 stor1;
uint8 stor2;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint8 stor8; offset 8
uint8 stor8; offset 16
uint8 stor8; offset 24
uint8 stor8; offset 32
uint32 stor8;
address farmContractAddress; offset 40
uint256 stor8;
uint256 pid;
address wantAddress;
address token0Address;
address token1Address;
address earnedAddress;
address uniRouterAddress;
address wbnbAddress;
uint32 stor16;
address sub_5bc27d4bAddress;
uint256 stor16;
address sub_655bee37Address;
address govAddress;
uint256 lastEarnBlock;
uint256 wantLockedTotal;
uint256 sharesTotal;
uint256 controllerFee;
uint256 buyBackRate;
uint256 sub_bd5f1195;
address buyBackAddress;
address rewardsAddress;
uint256 entranceFeeFactor;
uint256 withdrawFeeFactor;
uint256 slippageFactor;
uint256 sub_83fa0ef9;
uint256 sub_ae7d7d81;
uint256 sub_0772efb4;
uint256 sub_9331aace;
array of address sub_60662c42;
array of address earnedToToken0Path;
array of address earnedToToken1Path;
array of address token0ToEarnedPath;
array of address token1ToEarnedPath;

function token1ToEarnedPath(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < token1ToEarnedPath.length
    return token1ToEarnedPath[arg1]
}

function name() payable {
    return name[0 len name.length]
}

function sub_0772efb4(?) payable {
    return sub_0772efb4
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

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function wantLockedTotal() payable {
    return wantLockedTotal
}

function sharesTotal() payable {
    return sharesTotal
}

function sub_45c20fc2(?) payable {
    return bool(uint8(stor8.field_32))
}

function govAddress() payable {
    return govAddress
}

function sub_5bc27d4b(?) payable {
    return address(sub_5bc27d4bAddress)
}

function paused() payable {
    return bool(stor2)
}

function sub_60662c42(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_60662c42.length
    return sub_60662c42[arg1]
}

function wbnbAddress() payable {
    return wbnbAddress
}

function sub_655bee37(?) payable {
    return sub_655bee37Address
}

function withdrawFeeFactor() payable {
    return withdrawFeeFactor
}

function uniRouterAddress() payable {
    return uniRouterAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function buyBackAddress() payable {
    return buyBackAddress
}

function token0Address() payable {
    return token0Address
}

function sub_83fa0ef9(?) payable {
    return sub_83fa0ef9
}

function isCAKEStaking() payable {
    return bool(uint8(stor8.field_8))
}

function controllerFee() payable {
    return controllerFee
}

function owner() payable {
    return owner
}

function sub_9331aace(?) payable {
    return sub_9331aace
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function earnedToToken1Path(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < earnedToToken1Path.length
    return earnedToToken1Path[arg1]
}

function isSameAssetDeposit() payable {
    return bool(uint8(stor8.field_16))
}

function farmContractAddress() payable {
    return farmContractAddress
}

function sub_ae7d7d81(?) payable {
    return sub_ae7d7d81
}

function token0ToEarnedPath(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < token0ToEarnedPath.length
    return token0ToEarnedPath[arg1]
}

function sub_bd5f1195(?) payable {
    return sub_bd5f1195
}

function rewardsAddress() payable {
    return rewardsAddress
}

function earnedToToken0Path(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < earnedToToken0Path.length
    return earnedToToken0Path[arg1]
}

function token1Address() payable {
    return token1Address
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function isAutoComp() payable {
    return bool(uint8(stor8.field_24))
}

function earnedAddress() payable {
    return earnedAddress
}

function wantAddress() payable {
    return wantAddress
}

function pid() payable {
    return pid
}

function slippageFactor() payable {
    return slippageFactor
}

function _fallback() payable {
    revert
}

function lockedUntil(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return 0
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function pause() payable {
    if govAddress != msg.sender:
        revert with 0, '!gov'
    if stor2:
        revert with 0, 'Pausable: paused'
    stor2 = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if govAddress != msg.sender:
        revert with 0, '!gov'
    if not stor2:
        revert with 0, 'Pausable: not paused'
    stor2 = 0
    emit Unpaused(msg.sender);
}

function setGov(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if govAddress != msg.sender:
        revert with 0, '!gov'
    govAddress = arg1
    emit SetGov(arg1);
}

function setRewardsAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if govAddress != msg.sender:
        revert with 0, '!gov'
    rewardsAddress = arg1
    emit SetRewardsAddress(arg1);
}

function setBuyBackAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if govAddress != msg.sender:
        revert with 0, '!gov'
    buyBackAddress = arg1
    emit SetBuyBackAddress(arg1);
}

function setUniRouterAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if govAddress != msg.sender:
        revert with 0, '!gov'
    uniRouterAddress = arg1
    emit SetUniRouterAddress(arg1);
}

function available() payable {
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 32, 37, 0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if not msg.sender:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function getPricePerFullShare() payable {
    if not totalSupply:
        return 10^18
    if not wantLockedTotal:
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        if totalSupply:
            return (0 / totalSupply)
    else:
        if 10^18 * wantLockedTotal / wantLockedTotal != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        if totalSupply:
            return (10^18 * wantLockedTotal / totalSupply)
    ('iszero', ('stor', ('name', 'totalSupply', 5)))
    revert
}

function sub_e9e443df(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 32, 34, 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30] >> 16, 0
    balanceOf[address(arg1)] -= arg2
    if arg2 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg2
    emit Transfer(arg2, address(arg1), 0);
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 38, 0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
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
    if arg2 < 5000:
        revert with 0, '_withdrawFeeFactor too low'
    if arg2 > 10000:
        revert with 0, '_withdrawFeeFactor too high'
    withdrawFeeFactor = arg2
    if arg3 > 5000:
        revert with 0, '_controllerFee too high'
    controllerFee = arg3
    if arg4 > 5000:
        revert with 0, '_buyBackRate too high'
    buyBackRate = arg4
    if arg5 > 995:
        revert with 0, '_slippageFactor too high'
    slippageFactor = arg5
    sub_bd5f1195 = arg6
    emit SetSettings(arg1, arg2, arg3, arg4, arg6, arg5);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 32, 38, 0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
    if not arg1:
        revert with 0, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function sub_2f1ce2c5(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_655bee37Address)
    staticcall sub_655bee37Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_655bee37Address)
    if arg2 <= ext_call.return_data[0]:
        call sub_655bee37Address.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if arg2 + sub_9331aace < sub_9331aace:
            revert with 0, 'SafeMath: addition overflow'
        sub_9331aace += arg2
        return arg2
    call sub_655bee37Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0] + sub_9331aace < sub_9331aace:
        revert with 0, 'SafeMath: addition overflow'
    sub_9331aace += ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_f6bd4774(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg2:
        if wantLockedTotal <= 0:
            revert with 0, 'SafeMath: division by zero'
        require wantLockedTotal
        if not address(arg1):
            revert with 0, 'ERC20: mint to the zero address'
        if (0 / wantLockedTotal) + totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += 0 / wantLockedTotal
        if (0 / wantLockedTotal) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] += 0 / wantLockedTotal
        emit Transfer((0 / wantLockedTotal), 0, address(arg1));
        return (0 / wantLockedTotal)
    if sharesTotal * arg2 / arg2 != sharesTotal:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if wantLockedTotal <= 0:
        revert with 0, 'SafeMath: division by zero'
    require wantLockedTotal
    if not address(arg1):
        revert with 0, 'ERC20: mint to the zero address'
    if (sharesTotal * arg2 / wantLockedTotal) + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += sharesTotal * arg2 / wantLockedTotal
    if (sharesTotal * arg2 / wantLockedTotal) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += sharesTotal * arg2 / wantLockedTotal
    emit Transfer((sharesTotal * arg2 / wantLockedTotal), 0, address(arg1));
    return (sharesTotal * arg2 / wantLockedTotal)
}

function farm() payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not uint8(stor8.field_24):
        revert with 0, '!isAutoComp'
    mem[100] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + wantLockedTotal < wantLockedTotal:
        revert with 0, 'SafeMath: addition overflow'
    wantLockedTotal += ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = this.address
    mem[ceil32(return_data.size) + 132] = farmContractAddress
    require ext_code.size(wantAddress)
    staticcall wantAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), farmContractAddress
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    mem[(2 * ceil32(return_data.size)) + 132] = farmContractAddress
    mem[(2 * ceil32(return_data.size)) + 164] = 2 * ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 96] = 68
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor8.field_0)
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
    mem[(2 * ceil32(return_data.size)) + 196] = 32
    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(wantAddress):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor8.field_0), uint32(stor8.field_0), 2 * ext_call.return_data[0], 0
    mem[(2 * ceil32(return_data.size)) + 328] = 0
    call wantAddress with:
       funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor8.field_0), uint32(stor8.field_0), 2 * ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor8.field_0), uint32(stor8.field_0), 2 * ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
            if not mem[(2 * ceil32(return_data.size)) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require ext_code.size(farmContractAddress)
    if not uint8(stor8.field_8):
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

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not arg2:
        revert with 0, '_wantAmt <= 0'
    if sharesTotal * arg2 / arg2 != sharesTotal:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if wantLockedTotal <= 0:
        revert with 0, 'SafeMath: division by zero'
    require wantLockedTotal
    if sharesTotal * arg2 / wantLockedTotal <= sharesTotal:
        sharesTotal -= sharesTotal * arg2 / wantLockedTotal
        if 10000 <= withdrawFeeFactor:
            if not uint8(stor8.field_24):
                mem[100] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg2 <= ext_call.return_data[0]:
                    if wantLockedTotal >= arg2:
                        if arg2 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= arg2
                        mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                        mem[ceil32(return_data.size) + 164] = arg2
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), arg2, 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), arg2, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), arg2, 0) << 288)
                    else:
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                        mem[ceil32(return_data.size) + 164] = wantLockedTotal
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                else:
                    if wantLockedTotal >= ext_call.return_data[0]:
                        if ext_call.return_data[0] > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) << 288)
                    else:
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                        mem[ceil32(return_data.size) + 164] = wantLockedTotal
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                if uint8(stor8.field_8):
                    require ext_code.size(farmContractAddress)
                    call farmContractAddress.leaveStaking(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[100] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 <= ext_call.return_data[0]:
                        if wantLockedTotal >= arg2:
                            if arg2 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= arg2
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = arg2
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), arg2, 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), arg2, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), arg2, 0) << 288)
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = wantLockedTotal
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                    else:
                        if wantLockedTotal >= ext_call.return_data[0]:
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) << 288)
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = wantLockedTotal
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                            if not mem[ceil32(return_data.size) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[132] = arg2
                    require ext_code.size(farmContractAddress)
                    call farmContractAddress.withdraw(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pid, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[100] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 <= ext_call.return_data[0]:
                        if wantLockedTotal >= arg2:
                            if arg2 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= arg2
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = arg2
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), arg2, 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), arg2, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), arg2, 0) << 288)
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = wantLockedTotal
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                    else:
                        if wantLockedTotal >= ext_call.return_data[0]:
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) << 288)
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = wantLockedTotal
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, Mask(224, 32, arg2) >> 32 == bool(0, Mask(224, 32, arg2) >> 32)
                            if not 0, Mask(224, 32, arg2) >> 32:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                            if not mem[ceil32(return_data.size) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            if not arg2:
                if not uint8(stor8.field_24):
                    mem[100] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 <= ext_call.return_data[0]:
                        if wantLockedTotal >= 0:
                            if 0 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = 0
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), 0, 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), 0, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), 0, 0) << 288)
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = wantLockedTotal
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                    else:
                        if wantLockedTotal >= ext_call.return_data[0]:
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) << 288)
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = wantLockedTotal
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                            if not mem[ceil32(return_data.size) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    if uint8(stor8.field_8):
                        require ext_code.size(farmContractAddress)
                        call farmContractAddress.leaveStaking(uint256 arg1) with:
                             gas gas_remaining wei
                            args 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[100] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 <= ext_call.return_data[0]:
                            if wantLockedTotal >= 0:
                                if 0 > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                                mem[ceil32(return_data.size) + 164] = 0
                                mem[ceil32(return_data.size) + 96] = 68
                                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(return_data.size) + 196] = 32
                                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), 0, 0
                                mem[ceil32(return_data.size) + 328] = 0
                                call wantAddress with:
                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), 0, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), 0, 0) << 288)
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                                mem[ceil32(return_data.size) + 164] = wantLockedTotal
                                mem[ceil32(return_data.size) + 96] = 68
                                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(return_data.size) + 196] = 32
                                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                                mem[ceil32(return_data.size) + 328] = 0
                                call wantAddress with:
                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                        else:
                            if wantLockedTotal >= ext_call.return_data[0]:
                                if ext_call.return_data[0] > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                                mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 96] = 68
                                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(return_data.size) + 196] = 32
                                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0
                                mem[ceil32(return_data.size) + 328] = 0
                                call wantAddress with:
                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) << 288)
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                                mem[ceil32(return_data.size) + 164] = wantLockedTotal
                                mem[ceil32(return_data.size) + 96] = 68
                                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(return_data.size) + 196] = 32
                                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                                mem[ceil32(return_data.size) + 328] = 0
                                call wantAddress with:
                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0] >= 32
                                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                if not 0, mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                                if not mem[ceil32(return_data.size) + 292]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[132] = 0
                        require ext_code.size(farmContractAddress)
                        call farmContractAddress.withdraw(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args pid, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[100] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 <= ext_call.return_data[0]:
                            if wantLockedTotal >= 0:
                                if 0 > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                                mem[ceil32(return_data.size) + 164] = 0
                                mem[ceil32(return_data.size) + 96] = 68
                                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(return_data.size) + 196] = 32
                                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), 0, 0
                                mem[ceil32(return_data.size) + 328] = 0
                                call wantAddress with:
                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), 0, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), 0, 0) << 288)
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                                mem[ceil32(return_data.size) + 164] = wantLockedTotal
                                mem[ceil32(return_data.size) + 96] = 68
                                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(return_data.size) + 196] = 32
                                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                                mem[ceil32(return_data.size) + 328] = 0
                                call wantAddress with:
                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                        else:
                            if wantLockedTotal >= ext_call.return_data[0]:
                                if ext_call.return_data[0] > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                                mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 96] = 68
                                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(return_data.size) + 196] = 32
                                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0
                                mem[ceil32(return_data.size) + 328] = 0
                                call wantAddress with:
                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) << 288)
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                                mem[ceil32(return_data.size) + 164] = wantLockedTotal
                                mem[ceil32(return_data.size) + 96] = 68
                                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(return_data.size) + 196] = 32
                                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                                mem[ceil32(return_data.size) + 328] = 0
                                call wantAddress with:
                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not ext_call.return_data[0]:
                                stor1 = 1
                                return (sharesTotal * arg2 / wantLockedTotal)
                            require ext_call.return_data[0] >= 32
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                            if not mem[ceil32(return_data.size) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                if withdrawFeeFactor * arg2 / arg2 != withdrawFeeFactor:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if not uint8(stor8.field_24):
                    mem[100] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if withdrawFeeFactor * arg2 / 10000 <= ext_call.return_data[0]:
                        if wantLockedTotal >= withdrawFeeFactor * arg2 / 10000:
                            if withdrawFeeFactor * arg2 / 10000 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= withdrawFeeFactor * arg2 / 10000
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = withdrawFeeFactor * arg2 / 10000
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), withdrawFeeFactor * arg2 / 10000, 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), withdrawFeeFactor * arg2 / 10000, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), withdrawFeeFactor * arg2 / 10000, 0) << 288)
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = wantLockedTotal
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                    else:
                        if wantLockedTotal >= ext_call.return_data[0]:
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) << 288)
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = wantLockedTotal
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                            if not mem[ceil32(return_data.size) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    if uint8(stor8.field_8):
                        require ext_code.size(farmContractAddress)
                        call farmContractAddress.leaveStaking(uint256 arg1) with:
                             gas gas_remaining wei
                            args (withdrawFeeFactor * arg2 / 10000)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[100] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if withdrawFeeFactor * arg2 / 10000 <= ext_call.return_data[0]:
                            if wantLockedTotal >= withdrawFeeFactor * arg2 / 10000:
                                if withdrawFeeFactor * arg2 / 10000 > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= withdrawFeeFactor * arg2 / 10000
                                mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                                mem[ceil32(return_data.size) + 164] = withdrawFeeFactor * arg2 / 10000
                                mem[ceil32(return_data.size) + 96] = 68
                                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(return_data.size) + 196] = 32
                                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), withdrawFeeFactor * arg2 / 10000, 0
                                mem[ceil32(return_data.size) + 328] = 0
                                call wantAddress with:
                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), withdrawFeeFactor * arg2 / 10000, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), withdrawFeeFactor * arg2 / 10000, 0) << 288)
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                                mem[ceil32(return_data.size) + 164] = wantLockedTotal
                                mem[ceil32(return_data.size) + 96] = 68
                                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(return_data.size) + 196] = 32
                                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                                mem[ceil32(return_data.size) + 328] = 0
                                call wantAddress with:
                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                        else:
                            if wantLockedTotal >= ext_call.return_data[0]:
                                if ext_call.return_data[0] > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                                mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 96] = 68
                                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(return_data.size) + 196] = 32
                                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0
                                mem[ceil32(return_data.size) + 328] = 0
                                call wantAddress with:
                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) << 288)
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                                mem[ceil32(return_data.size) + 164] = wantLockedTotal
                                mem[ceil32(return_data.size) + 96] = 68
                                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(return_data.size) + 196] = 32
                                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                                mem[ceil32(return_data.size) + 328] = 0
                                call wantAddress with:
                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0] >= 32
                                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                if not 0, mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                                if not mem[ceil32(return_data.size) + 292]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[132] = withdrawFeeFactor * arg2 / 10000
                        require ext_code.size(farmContractAddress)
                        call farmContractAddress.withdraw(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args pid, withdrawFeeFactor * arg2 / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[100] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if withdrawFeeFactor * arg2 / 10000 <= ext_call.return_data[0]:
                            if wantLockedTotal >= withdrawFeeFactor * arg2 / 10000:
                                if withdrawFeeFactor * arg2 / 10000 > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= withdrawFeeFactor * arg2 / 10000
                                mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                                mem[ceil32(return_data.size) + 164] = withdrawFeeFactor * arg2 / 10000
                                mem[ceil32(return_data.size) + 96] = 68
                                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(return_data.size) + 196] = 32
                                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), withdrawFeeFactor * arg2 / 10000, 0
                                mem[ceil32(return_data.size) + 328] = 0
                                call wantAddress with:
                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), withdrawFeeFactor * arg2 / 10000, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), withdrawFeeFactor * arg2 / 10000, 0) << 288)
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                                mem[ceil32(return_data.size) + 164] = wantLockedTotal
                                mem[ceil32(return_data.size) + 96] = 68
                                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(return_data.size) + 196] = 32
                                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                                mem[ceil32(return_data.size) + 328] = 0
                                call wantAddress with:
                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                        else:
                            if wantLockedTotal >= ext_call.return_data[0]:
                                if ext_call.return_data[0] > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                                mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 96] = 68
                                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(return_data.size) + 196] = 32
                                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0
                                mem[ceil32(return_data.size) + 328] = 0
                                call wantAddress with:
                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) << 288)
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                                mem[ceil32(return_data.size) + 164] = wantLockedTotal
                                mem[ceil32(return_data.size) + 96] = 68
                                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(return_data.size) + 196] = 32
                                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                                mem[ceil32(return_data.size) + 328] = 0
                                call wantAddress with:
                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0] >= 32
                                require 0, Mask(224, 32, withdrawFeeFactor * arg2 / 10000) >> 32 == bool(0, Mask(224, 32, withdrawFeeFactor * arg2 / 10000) >> 32)
                                if not 0, Mask(224, 32, withdrawFeeFactor * arg2 / 10000) >> 32:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                                if not mem[ceil32(return_data.size) + 292]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        stor1 = 1
        return (sharesTotal * arg2 / wantLockedTotal)
    if sharesTotal > sharesTotal:
        revert with 0, 'SafeMath: subtraction overflow'
    sharesTotal = 0
    if 10000 <= withdrawFeeFactor:
        if not uint8(stor8.field_24):
            mem[100] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg2 <= ext_call.return_data[0]:
                if wantLockedTotal >= arg2:
                    if arg2 > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal -= arg2
                    mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                    mem[ceil32(return_data.size) + 164] = arg2
                    mem[ceil32(return_data.size) + 96] = 68
                    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 196] = 32
                    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), arg2, 0
                    mem[ceil32(return_data.size) + 328] = 0
                    call wantAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), arg2, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), arg2, 0) << 288)
                else:
                    if wantLockedTotal > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal = 0
                    mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                    mem[ceil32(return_data.size) + 164] = wantLockedTotal
                    mem[ceil32(return_data.size) + 96] = 68
                    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 196] = 32
                    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                    mem[ceil32(return_data.size) + 328] = 0
                    call wantAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
            else:
                if wantLockedTotal >= ext_call.return_data[0]:
                    if ext_call.return_data[0] > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal -= ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 96] = 68
                    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 196] = 32
                    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0
                    mem[ceil32(return_data.size) + 328] = 0
                    call wantAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) << 288)
                else:
                    if wantLockedTotal > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal = 0
                    mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                    mem[ceil32(return_data.size) + 164] = wantLockedTotal
                    mem[ceil32(return_data.size) + 96] = 68
                    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 196] = 32
                    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                    mem[ceil32(return_data.size) + 328] = 0
                    call wantAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                    if not mem[ceil32(return_data.size) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            if uint8(stor8.field_8):
                require ext_code.size(farmContractAddress)
                call farmContractAddress.leaveStaking(uint256 arg1) with:
                     gas gas_remaining wei
                    args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[100] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg2 <= ext_call.return_data[0]:
                    if wantLockedTotal >= arg2:
                        if arg2 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= arg2
                        mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                        mem[ceil32(return_data.size) + 164] = arg2
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), arg2, 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), arg2, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), arg2, 0) << 288)
                    else:
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                        mem[ceil32(return_data.size) + 164] = wantLockedTotal
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                else:
                    if wantLockedTotal >= ext_call.return_data[0]:
                        if ext_call.return_data[0] > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) << 288)
                    else:
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                        mem[ceil32(return_data.size) + 164] = wantLockedTotal
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[132] = arg2
                require ext_code.size(farmContractAddress)
                call farmContractAddress.withdraw(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args pid, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[100] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg2 <= ext_call.return_data[0]:
                    if wantLockedTotal >= arg2:
                        if arg2 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= arg2
                        mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                        mem[ceil32(return_data.size) + 164] = arg2
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), arg2, 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), arg2, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), arg2, 0) << 288)
                    else:
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                        mem[ceil32(return_data.size) + 164] = wantLockedTotal
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                else:
                    if wantLockedTotal >= ext_call.return_data[0]:
                        if ext_call.return_data[0] > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) << 288)
                    else:
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                        mem[ceil32(return_data.size) + 164] = wantLockedTotal
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, Mask(224, 32, arg2) >> 32 == bool(0, Mask(224, 32, arg2) >> 32)
                        if not 0, Mask(224, 32, arg2) >> 32:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        if not arg2:
            if not uint8(stor8.field_24):
                mem[100] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 <= ext_call.return_data[0]:
                    if wantLockedTotal >= 0:
                        if 0 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                        mem[ceil32(return_data.size) + 164] = 0
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), 0, 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), 0, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), 0, 0) << 288)
                    else:
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                        mem[ceil32(return_data.size) + 164] = wantLockedTotal
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                else:
                    if wantLockedTotal >= ext_call.return_data[0]:
                        if ext_call.return_data[0] > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) << 288)
                    else:
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                        mem[ceil32(return_data.size) + 164] = wantLockedTotal
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                if uint8(stor8.field_8):
                    require ext_code.size(farmContractAddress)
                    call farmContractAddress.leaveStaking(uint256 arg1) with:
                         gas gas_remaining wei
                        args 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[100] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 <= ext_call.return_data[0]:
                        if wantLockedTotal >= 0:
                            if 0 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = 0
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), 0, 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), 0, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), 0, 0) << 288)
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = wantLockedTotal
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                    else:
                        if wantLockedTotal >= ext_call.return_data[0]:
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) << 288)
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = wantLockedTotal
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                            if not mem[ceil32(return_data.size) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[132] = 0
                    require ext_code.size(farmContractAddress)
                    call farmContractAddress.withdraw(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pid, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[100] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 <= ext_call.return_data[0]:
                        if wantLockedTotal >= 0:
                            if 0 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = 0
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), 0, 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), 0, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), 0, 0) << 288)
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = wantLockedTotal
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                    else:
                        if wantLockedTotal >= ext_call.return_data[0]:
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) << 288)
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = wantLockedTotal
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not ext_call.return_data[0]:
                            stor1 = 1
                            return sharesTotal
                        require ext_call.return_data[0] >= 32
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            if withdrawFeeFactor * arg2 / arg2 != withdrawFeeFactor:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if not uint8(stor8.field_24):
                mem[100] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if withdrawFeeFactor * arg2 / 10000 <= ext_call.return_data[0]:
                    if wantLockedTotal >= withdrawFeeFactor * arg2 / 10000:
                        if withdrawFeeFactor * arg2 / 10000 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= withdrawFeeFactor * arg2 / 10000
                        mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                        mem[ceil32(return_data.size) + 164] = withdrawFeeFactor * arg2 / 10000
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), withdrawFeeFactor * arg2 / 10000, 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), withdrawFeeFactor * arg2 / 10000, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), withdrawFeeFactor * arg2 / 10000, 0) << 288)
                    else:
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                        mem[ceil32(return_data.size) + 164] = wantLockedTotal
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                else:
                    if wantLockedTotal >= ext_call.return_data[0]:
                        if ext_call.return_data[0] > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) << 288)
                    else:
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                        mem[ceil32(return_data.size) + 164] = wantLockedTotal
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                if uint8(stor8.field_8):
                    require ext_code.size(farmContractAddress)
                    call farmContractAddress.leaveStaking(uint256 arg1) with:
                         gas gas_remaining wei
                        args (withdrawFeeFactor * arg2 / 10000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[100] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if withdrawFeeFactor * arg2 / 10000 <= ext_call.return_data[0]:
                        if wantLockedTotal >= withdrawFeeFactor * arg2 / 10000:
                            if withdrawFeeFactor * arg2 / 10000 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= withdrawFeeFactor * arg2 / 10000
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = withdrawFeeFactor * arg2 / 10000
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), withdrawFeeFactor * arg2 / 10000, 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), withdrawFeeFactor * arg2 / 10000, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), withdrawFeeFactor * arg2 / 10000, 0) << 288)
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = wantLockedTotal
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                    else:
                        if wantLockedTotal >= ext_call.return_data[0]:
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) << 288)
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = wantLockedTotal
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                            if not mem[ceil32(return_data.size) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[132] = withdrawFeeFactor * arg2 / 10000
                    require ext_code.size(farmContractAddress)
                    call farmContractAddress.withdraw(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pid, withdrawFeeFactor * arg2 / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[100] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if withdrawFeeFactor * arg2 / 10000 <= ext_call.return_data[0]:
                        if wantLockedTotal >= withdrawFeeFactor * arg2 / 10000:
                            if withdrawFeeFactor * arg2 / 10000 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= withdrawFeeFactor * arg2 / 10000
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = withdrawFeeFactor * arg2 / 10000
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), withdrawFeeFactor * arg2 / 10000, 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), withdrawFeeFactor * arg2 / 10000, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), withdrawFeeFactor * arg2 / 10000, 0) << 288)
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = wantLockedTotal
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                    else:
                        if wantLockedTotal >= ext_call.return_data[0]:
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) << 288)
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = wantLockedTotal
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, Mask(224, 32, withdrawFeeFactor * arg2 / 10000) >> 32 == bool(0, Mask(224, 32, withdrawFeeFactor * arg2 / 10000) >> 32)
                            if not 0, Mask(224, 32, withdrawFeeFactor * arg2 / 10000) >> 32:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                            if not mem[ceil32(return_data.size) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    stor1 = 1
    return sharesTotal
}

function withdrawEarly(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not arg2:
        revert with 0, '_wantAmt <= 0'
    if sharesTotal * arg2 / arg2 != sharesTotal:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if wantLockedTotal <= 0:
        revert with 0, 'SafeMath: division by zero'
    require wantLockedTotal
    if sharesTotal * arg2 / wantLockedTotal <= sharesTotal:
        sharesTotal -= sharesTotal * arg2 / wantLockedTotal
        if 10000 <= withdrawFeeFactor:
            if not uint8(stor8.field_24):
                mem[100] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg2 <= ext_call.return_data[0]:
                    if wantLockedTotal >= arg2:
                        if arg2 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= arg2
                        mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                        mem[ceil32(return_data.size) + 164] = arg2
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), arg2, 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), arg2, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), arg2, 0) << 288)
                    else:
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                        mem[ceil32(return_data.size) + 164] = wantLockedTotal
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                else:
                    if wantLockedTotal >= ext_call.return_data[0]:
                        if ext_call.return_data[0] > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) << 288)
                    else:
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                        mem[ceil32(return_data.size) + 164] = wantLockedTotal
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                if uint8(stor8.field_8):
                    require ext_code.size(farmContractAddress)
                    call farmContractAddress.leaveStaking(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[100] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 <= ext_call.return_data[0]:
                        if wantLockedTotal >= arg2:
                            if arg2 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= arg2
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = arg2
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), arg2, 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), arg2, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), arg2, 0) << 288)
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = wantLockedTotal
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                    else:
                        if wantLockedTotal >= ext_call.return_data[0]:
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) << 288)
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = wantLockedTotal
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                            if not mem[ceil32(return_data.size) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[132] = arg2
                    require ext_code.size(farmContractAddress)
                    call farmContractAddress.withdraw(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pid, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[100] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 <= ext_call.return_data[0]:
                        if wantLockedTotal >= arg2:
                            if arg2 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= arg2
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = arg2
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), arg2, 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), arg2, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), arg2, 0) << 288)
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = wantLockedTotal
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                    else:
                        if wantLockedTotal >= ext_call.return_data[0]:
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) << 288)
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = wantLockedTotal
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, Mask(224, 32, arg2) >> 32 == bool(0, Mask(224, 32, arg2) >> 32)
                            if not 0, Mask(224, 32, arg2) >> 32:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                            if not mem[ceil32(return_data.size) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            if not arg2:
                if not uint8(stor8.field_24):
                    mem[100] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 <= ext_call.return_data[0]:
                        if wantLockedTotal >= 0:
                            if 0 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = 0
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), 0, 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), 0, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), 0, 0) << 288)
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = wantLockedTotal
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                    else:
                        if wantLockedTotal >= ext_call.return_data[0]:
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) << 288)
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = wantLockedTotal
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                            if not mem[ceil32(return_data.size) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    if uint8(stor8.field_8):
                        require ext_code.size(farmContractAddress)
                        call farmContractAddress.leaveStaking(uint256 arg1) with:
                             gas gas_remaining wei
                            args 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[100] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 <= ext_call.return_data[0]:
                            if wantLockedTotal >= 0:
                                if 0 > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                                mem[ceil32(return_data.size) + 164] = 0
                                mem[ceil32(return_data.size) + 96] = 68
                                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(return_data.size) + 196] = 32
                                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), 0, 0
                                mem[ceil32(return_data.size) + 328] = 0
                                call wantAddress with:
                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), 0, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), 0, 0) << 288)
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                                mem[ceil32(return_data.size) + 164] = wantLockedTotal
                                mem[ceil32(return_data.size) + 96] = 68
                                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(return_data.size) + 196] = 32
                                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                                mem[ceil32(return_data.size) + 328] = 0
                                call wantAddress with:
                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                        else:
                            if wantLockedTotal >= ext_call.return_data[0]:
                                if ext_call.return_data[0] > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                                mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 96] = 68
                                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(return_data.size) + 196] = 32
                                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0
                                mem[ceil32(return_data.size) + 328] = 0
                                call wantAddress with:
                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) << 288)
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                                mem[ceil32(return_data.size) + 164] = wantLockedTotal
                                mem[ceil32(return_data.size) + 96] = 68
                                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(return_data.size) + 196] = 32
                                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                                mem[ceil32(return_data.size) + 328] = 0
                                call wantAddress with:
                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0] >= 32
                                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                if not 0, mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                                if not mem[ceil32(return_data.size) + 292]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[132] = 0
                        require ext_code.size(farmContractAddress)
                        call farmContractAddress.withdraw(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args pid, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[100] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 <= ext_call.return_data[0]:
                            if wantLockedTotal >= 0:
                                if 0 > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                                mem[ceil32(return_data.size) + 164] = 0
                                mem[ceil32(return_data.size) + 96] = 68
                                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(return_data.size) + 196] = 32
                                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), 0, 0
                                mem[ceil32(return_data.size) + 328] = 0
                                call wantAddress with:
                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), 0, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), 0, 0) << 288)
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                                mem[ceil32(return_data.size) + 164] = wantLockedTotal
                                mem[ceil32(return_data.size) + 96] = 68
                                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(return_data.size) + 196] = 32
                                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                                mem[ceil32(return_data.size) + 328] = 0
                                call wantAddress with:
                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                        else:
                            if wantLockedTotal >= ext_call.return_data[0]:
                                if ext_call.return_data[0] > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                                mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 96] = 68
                                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(return_data.size) + 196] = 32
                                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0
                                mem[ceil32(return_data.size) + 328] = 0
                                call wantAddress with:
                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) << 288)
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                                mem[ceil32(return_data.size) + 164] = wantLockedTotal
                                mem[ceil32(return_data.size) + 96] = 68
                                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(return_data.size) + 196] = 32
                                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                                mem[ceil32(return_data.size) + 328] = 0
                                call wantAddress with:
                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0] >= 32
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                                if not mem[ceil32(return_data.size) + 292]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                if withdrawFeeFactor * arg2 / arg2 != withdrawFeeFactor:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if not uint8(stor8.field_24):
                    mem[100] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if withdrawFeeFactor * arg2 / 10000 <= ext_call.return_data[0]:
                        if wantLockedTotal >= withdrawFeeFactor * arg2 / 10000:
                            if withdrawFeeFactor * arg2 / 10000 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= withdrawFeeFactor * arg2 / 10000
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = withdrawFeeFactor * arg2 / 10000
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), withdrawFeeFactor * arg2 / 10000, 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), withdrawFeeFactor * arg2 / 10000, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), withdrawFeeFactor * arg2 / 10000, 0) << 288)
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = wantLockedTotal
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                    else:
                        if wantLockedTotal >= ext_call.return_data[0]:
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) << 288)
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = wantLockedTotal
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                            if not mem[ceil32(return_data.size) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    if uint8(stor8.field_8):
                        require ext_code.size(farmContractAddress)
                        call farmContractAddress.leaveStaking(uint256 arg1) with:
                             gas gas_remaining wei
                            args (withdrawFeeFactor * arg2 / 10000)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[100] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if withdrawFeeFactor * arg2 / 10000 <= ext_call.return_data[0]:
                            if wantLockedTotal >= withdrawFeeFactor * arg2 / 10000:
                                if withdrawFeeFactor * arg2 / 10000 > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= withdrawFeeFactor * arg2 / 10000
                                mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                                mem[ceil32(return_data.size) + 164] = withdrawFeeFactor * arg2 / 10000
                                mem[ceil32(return_data.size) + 96] = 68
                                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(return_data.size) + 196] = 32
                                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), withdrawFeeFactor * arg2 / 10000, 0
                                mem[ceil32(return_data.size) + 328] = 0
                                call wantAddress with:
                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), withdrawFeeFactor * arg2 / 10000, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), withdrawFeeFactor * arg2 / 10000, 0) << 288)
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                                mem[ceil32(return_data.size) + 164] = wantLockedTotal
                                mem[ceil32(return_data.size) + 96] = 68
                                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(return_data.size) + 196] = 32
                                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                                mem[ceil32(return_data.size) + 328] = 0
                                call wantAddress with:
                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                        else:
                            if wantLockedTotal >= ext_call.return_data[0]:
                                if ext_call.return_data[0] > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                                mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 96] = 68
                                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(return_data.size) + 196] = 32
                                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0
                                mem[ceil32(return_data.size) + 328] = 0
                                call wantAddress with:
                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) << 288)
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                                mem[ceil32(return_data.size) + 164] = wantLockedTotal
                                mem[ceil32(return_data.size) + 96] = 68
                                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(return_data.size) + 196] = 32
                                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                                mem[ceil32(return_data.size) + 328] = 0
                                call wantAddress with:
                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0] >= 32
                                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                if not 0, mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                                if not mem[ceil32(return_data.size) + 292]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[132] = withdrawFeeFactor * arg2 / 10000
                        require ext_code.size(farmContractAddress)
                        call farmContractAddress.withdraw(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args pid, withdrawFeeFactor * arg2 / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[100] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if withdrawFeeFactor * arg2 / 10000 <= ext_call.return_data[0]:
                            if wantLockedTotal >= withdrawFeeFactor * arg2 / 10000:
                                if withdrawFeeFactor * arg2 / 10000 > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= withdrawFeeFactor * arg2 / 10000
                                mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                                mem[ceil32(return_data.size) + 164] = withdrawFeeFactor * arg2 / 10000
                                mem[ceil32(return_data.size) + 96] = 68
                                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(return_data.size) + 196] = 32
                                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), withdrawFeeFactor * arg2 / 10000, 0
                                mem[ceil32(return_data.size) + 328] = 0
                                call wantAddress with:
                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), withdrawFeeFactor * arg2 / 10000, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), withdrawFeeFactor * arg2 / 10000, 0) << 288)
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                                mem[ceil32(return_data.size) + 164] = wantLockedTotal
                                mem[ceil32(return_data.size) + 96] = 68
                                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(return_data.size) + 196] = 32
                                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                                mem[ceil32(return_data.size) + 328] = 0
                                call wantAddress with:
                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                        else:
                            if wantLockedTotal >= ext_call.return_data[0]:
                                if ext_call.return_data[0] > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                                mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 96] = 68
                                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(return_data.size) + 196] = 32
                                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0
                                mem[ceil32(return_data.size) + 328] = 0
                                call wantAddress with:
                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) << 288)
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                                mem[ceil32(return_data.size) + 164] = wantLockedTotal
                                mem[ceil32(return_data.size) + 96] = 68
                                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(return_data.size) + 196] = 32
                                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                                mem[ceil32(return_data.size) + 328] = 0
                                call wantAddress with:
                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0] >= 32
                                require 0, Mask(224, 32, withdrawFeeFactor * arg2 / 10000) >> 32 == bool(0, Mask(224, 32, withdrawFeeFactor * arg2 / 10000) >> 32)
                                if not 0, Mask(224, 32, withdrawFeeFactor * arg2 / 10000) >> 32:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                                if not mem[ceil32(return_data.size) + 292]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        stor1 = 1
        stor1 = 1
        return (sharesTotal * arg2 / wantLockedTotal)
    if sharesTotal > sharesTotal:
        revert with 0, 'SafeMath: subtraction overflow'
    sharesTotal = 0
    if 10000 <= withdrawFeeFactor:
        if not uint8(stor8.field_24):
            mem[100] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg2 <= ext_call.return_data[0]:
                if wantLockedTotal >= arg2:
                    if arg2 > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal -= arg2
                    mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                    mem[ceil32(return_data.size) + 164] = arg2
                    mem[ceil32(return_data.size) + 96] = 68
                    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 196] = 32
                    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), arg2, 0
                    mem[ceil32(return_data.size) + 328] = 0
                    call wantAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), arg2, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), arg2, 0) << 288)
                else:
                    if wantLockedTotal > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal = 0
                    mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                    mem[ceil32(return_data.size) + 164] = wantLockedTotal
                    mem[ceil32(return_data.size) + 96] = 68
                    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 196] = 32
                    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                    mem[ceil32(return_data.size) + 328] = 0
                    call wantAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
            else:
                if wantLockedTotal >= ext_call.return_data[0]:
                    if ext_call.return_data[0] > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal -= ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 96] = 68
                    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 196] = 32
                    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0
                    mem[ceil32(return_data.size) + 328] = 0
                    call wantAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) << 288)
                else:
                    if wantLockedTotal > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal = 0
                    mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                    mem[ceil32(return_data.size) + 164] = wantLockedTotal
                    mem[ceil32(return_data.size) + 96] = 68
                    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 196] = 32
                    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                    mem[ceil32(return_data.size) + 328] = 0
                    call wantAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                    if not mem[ceil32(return_data.size) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            if uint8(stor8.field_8):
                require ext_code.size(farmContractAddress)
                call farmContractAddress.leaveStaking(uint256 arg1) with:
                     gas gas_remaining wei
                    args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[100] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg2 <= ext_call.return_data[0]:
                    if wantLockedTotal >= arg2:
                        if arg2 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= arg2
                        mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                        mem[ceil32(return_data.size) + 164] = arg2
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), arg2, 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), arg2, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), arg2, 0) << 288)
                    else:
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                        mem[ceil32(return_data.size) + 164] = wantLockedTotal
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                else:
                    if wantLockedTotal >= ext_call.return_data[0]:
                        if ext_call.return_data[0] > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) << 288)
                    else:
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                        mem[ceil32(return_data.size) + 164] = wantLockedTotal
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[132] = arg2
                require ext_code.size(farmContractAddress)
                call farmContractAddress.withdraw(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args pid, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[100] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg2 <= ext_call.return_data[0]:
                    if wantLockedTotal >= arg2:
                        if arg2 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= arg2
                        mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                        mem[ceil32(return_data.size) + 164] = arg2
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), arg2, 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), arg2, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), arg2, 0) << 288)
                    else:
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                        mem[ceil32(return_data.size) + 164] = wantLockedTotal
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                else:
                    if wantLockedTotal >= ext_call.return_data[0]:
                        if ext_call.return_data[0] > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) << 288)
                    else:
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                        mem[ceil32(return_data.size) + 164] = wantLockedTotal
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, Mask(224, 32, arg2) >> 32 == bool(0, Mask(224, 32, arg2) >> 32)
                        if not 0, Mask(224, 32, arg2) >> 32:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        if not arg2:
            if not uint8(stor8.field_24):
                mem[100] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 <= ext_call.return_data[0]:
                    if wantLockedTotal >= 0:
                        if 0 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                        mem[ceil32(return_data.size) + 164] = 0
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), 0, 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), 0, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), 0, 0) << 288)
                    else:
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                        mem[ceil32(return_data.size) + 164] = wantLockedTotal
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                else:
                    if wantLockedTotal >= ext_call.return_data[0]:
                        if ext_call.return_data[0] > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) << 288)
                    else:
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                        mem[ceil32(return_data.size) + 164] = wantLockedTotal
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                if uint8(stor8.field_8):
                    require ext_code.size(farmContractAddress)
                    call farmContractAddress.leaveStaking(uint256 arg1) with:
                         gas gas_remaining wei
                        args 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[100] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 <= ext_call.return_data[0]:
                        if wantLockedTotal >= 0:
                            if 0 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = 0
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), 0, 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), 0, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), 0, 0) << 288)
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = wantLockedTotal
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                    else:
                        if wantLockedTotal >= ext_call.return_data[0]:
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) << 288)
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = wantLockedTotal
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                            if not mem[ceil32(return_data.size) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[132] = 0
                    require ext_code.size(farmContractAddress)
                    call farmContractAddress.withdraw(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pid, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[100] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 <= ext_call.return_data[0]:
                        if wantLockedTotal >= 0:
                            if 0 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = 0
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), 0, 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), 0, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), 0, 0) << 288)
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = wantLockedTotal
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                    else:
                        if wantLockedTotal >= ext_call.return_data[0]:
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) << 288)
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = wantLockedTotal
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                            if not mem[ceil32(return_data.size) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            if withdrawFeeFactor * arg2 / arg2 != withdrawFeeFactor:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if not uint8(stor8.field_24):
                mem[100] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if withdrawFeeFactor * arg2 / 10000 <= ext_call.return_data[0]:
                    if wantLockedTotal >= withdrawFeeFactor * arg2 / 10000:
                        if withdrawFeeFactor * arg2 / 10000 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= withdrawFeeFactor * arg2 / 10000
                        mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                        mem[ceil32(return_data.size) + 164] = withdrawFeeFactor * arg2 / 10000
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), withdrawFeeFactor * arg2 / 10000, 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), withdrawFeeFactor * arg2 / 10000, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), withdrawFeeFactor * arg2 / 10000, 0) << 288)
                    else:
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                        mem[ceil32(return_data.size) + 164] = wantLockedTotal
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                else:
                    if wantLockedTotal >= ext_call.return_data[0]:
                        if ext_call.return_data[0] > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) << 288)
                    else:
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                        mem[ceil32(return_data.size) + 164] = wantLockedTotal
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                if uint8(stor8.field_8):
                    require ext_code.size(farmContractAddress)
                    call farmContractAddress.leaveStaking(uint256 arg1) with:
                         gas gas_remaining wei
                        args (withdrawFeeFactor * arg2 / 10000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[100] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if withdrawFeeFactor * arg2 / 10000 <= ext_call.return_data[0]:
                        if wantLockedTotal >= withdrawFeeFactor * arg2 / 10000:
                            if withdrawFeeFactor * arg2 / 10000 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= withdrawFeeFactor * arg2 / 10000
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = withdrawFeeFactor * arg2 / 10000
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), withdrawFeeFactor * arg2 / 10000, 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), withdrawFeeFactor * arg2 / 10000, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), withdrawFeeFactor * arg2 / 10000, 0) << 288)
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = wantLockedTotal
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                    else:
                        if wantLockedTotal >= ext_call.return_data[0]:
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) << 288)
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = wantLockedTotal
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                            if not mem[ceil32(return_data.size) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[132] = withdrawFeeFactor * arg2 / 10000
                    require ext_code.size(farmContractAddress)
                    call farmContractAddress.withdraw(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pid, withdrawFeeFactor * arg2 / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[100] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if withdrawFeeFactor * arg2 / 10000 <= ext_call.return_data[0]:
                        if wantLockedTotal >= withdrawFeeFactor * arg2 / 10000:
                            if withdrawFeeFactor * arg2 / 10000 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= withdrawFeeFactor * arg2 / 10000
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = withdrawFeeFactor * arg2 / 10000
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), withdrawFeeFactor * arg2 / 10000, 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), withdrawFeeFactor * arg2 / 10000, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), withdrawFeeFactor * arg2 / 10000, 0) << 288)
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = wantLockedTotal
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                    else:
                        if wantLockedTotal >= ext_call.return_data[0]:
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), ext_call.return_data[0], 0) << 288)
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            mem[ceil32(return_data.size) + 132] = address(sub_5bc27d4bAddress)
                            mem[ceil32(return_data.size) + 164] = wantLockedTotal
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16)
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call wantAddress with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16), uint32(stor16), wantLockedTotal, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, Mask(224, 32, withdrawFeeFactor * arg2 / 10000) >> 32 == bool(0, Mask(224, 32, withdrawFeeFactor * arg2 / 10000) >> 32)
                            if not 0, Mask(224, 32, withdrawFeeFactor * arg2 / 10000) >> 32:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                            if not mem[ceil32(return_data.size) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    stor1 = 1
    stor1 = 1
    return sharesTotal
}



}
