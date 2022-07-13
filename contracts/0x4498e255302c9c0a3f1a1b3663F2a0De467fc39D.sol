contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, address arg2, address arg3, uint256 arg4)
#  - deposit(uint256 arg1)
#  - earn(address arg1)
#  - _fallback()
#
address owner;
uint256 stor1;
uint8 stor2;
address yieldWolfAddress; offset 8
uint32 stor3;
address masterChefAddress;
uint256 stor3;
uint256 pid;
address stakeTokenAddress;
address token0Address;
address token1Address;
address earnTokenAddress;
array of address extraEarnTokens;
uint32 stor10;
address swapRouterAddress;
uint256 stor10;
uint32 stor11;
address liquidityRouterAddress;
uint256 stor11;
uint8 stor12; offset 160
uint128 stor12; offset 160
address WNATIVEAddress;
array of struct swapPath;
uint256 sharesTotal;
uint8 stor15;
uint8 stor15; offset 8

function swapRouterEnabled() {
    return bool(uint8(stor12.field_160))
}

function yieldWolf() {
    return yieldWolfAddress
}

function token0() {
    return token0Address
}

function initialized() {
    return bool(uint8(stor15.field_0))
}

function swapPath(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 < swapPath[arg1][arg2].field_0
    return swapPath[arg1][arg2][arg3].field_0
}

function liquidityRouter() {
    return address(liquidityRouterAddress)
}

function sharesTotal() {
    return sharesTotal
}

function stakeToken() {
    return stakeTokenAddress
}

function masterChef() {
    return address(masterChefAddress)
}

function paused() {
    return bool(stor2)
}

function owner() {
    return owner
}

function WNATIVE() {
    return WNATIVEAddress
}

function swapRouter() {
    return address(swapRouterAddress)
}

function token1() {
    return token1Address
}

function emergencyWithdrawn() {
    return bool(uint8(stor15.field_8))
}

function extraEarnTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < extraEarnTokens.length
    return address(extraEarnTokens[arg1])
}

function pid() {
    return pid
}

function earnToken() {
    return earnTokenAddress
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setSwapRouterEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor12.field_160) = Mask(96, 0, arg1)
}

function wrapNative() {
    if eth.balance(this.address):
        require ext_code.size(WNATIVEAddress)
        call WNATIVEAddress.deposit() with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit WrapNative()
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function pause() {
    require ext_code.size(yieldWolfAddress)
    call yieldWolfAddress.operators(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'onlyOperator: NOT_ALLOWED'
    if stor2:
        revert with 0, 'Pausable: paused'
    stor2 = 1
    emit Paused(msg.sender);
    emit Pause()
}

function unpause() {
    require ext_code.size(yieldWolfAddress)
    call yieldWolfAddress.operators(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'onlyOperator: NOT_ALLOWED'
    if uint8(stor15.field_8):
        revert with 0, 'unpause: CANNOT_UNPAUSE_AFTER_EMERGENCY_WITHDRAW'
    if not stor2:
        revert with 0, 'Pausable: not paused'
    stor2 = 0
    emit Unpaused(msg.sender);
    emit Unpause()
}

function totalStakeTokens() {
    require ext_code.size(stakeTokenAddress)
    staticcall stakeTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(masterChefAddress))
    staticcall address(masterChefAddress).0x93f1a40b with:
            gas gas_remaining wei
           args pid, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 0, 17
    return (2 * ext_call.return_data[0])
}

function emergencyWithdraw() {
    require ext_code.size(yieldWolfAddress)
    call yieldWolfAddress.operators(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'onlyOperator: NOT_ALLOWED'
    if not stor2:
        stor2 = 1
        emit Paused(msg.sender);
    uint8(stor15.field_8) = 1
    require ext_code.size(address(masterChefAddress))
    call address(masterChefAddress).0x5312ea8e with:
         gas gas_remaining wei
        args pid
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit EmergencyWithdraw()
}

function setExtraEarnTokens(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    extraEarnTokens.length = arg1.length
    if not arg1.length:
        idx = 0
        while extraEarnTokens.length > idx:
            uint256(extraEarnTokens[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = arg1 + 36
        while arg1 + (32 * arg1.length) + 36 > idx:
            address(extraEarnTokens[s]) = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while extraEarnTokens.length > idx:
            uint256(extraEarnTokens[idx]) = 0
            idx = idx + 1
            continue 
}

function setSwapPath(address arg1, address arg2, address[] arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    swapPath[address(arg1)][address(arg2)].field_0 = arg3.length
    if not arg3.length:
        idx = 0
        while swapPath[address(arg1)][address(arg2)].field_0 > idx:
            swapPath[address(arg1)][address(arg2)][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = arg3 + 36
        while arg3 + (32 * arg3.length) + 36 > idx:
            swapPath[address(arg1)][address(arg2)][s].field_0 = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
        while swapPath[address(arg1)][address(arg2)].field_0 > idx:
            swapPath[address(arg1)][address(arg2)][idx].field_0 = 0
            idx = idx + 1
            continue 
}

function farm() {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if stor2:
        revert with 0, 'Pausable: paused'
    mem[100] = this.address
    require ext_code.size(stakeTokenAddress)
    staticcall stakeTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = this.address
    mem[ceil32(return_data.size) + 132] = address(masterChefAddress)
    require ext_code.size(stakeTokenAddress)
    staticcall stakeTokenAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, address(masterChefAddress)
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 0, 17
    mem[(2 * ceil32(return_data.size)) + 132] = address(masterChefAddress)
    mem[(2 * ceil32(return_data.size)) + 164] = 2 * ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 96] = 68
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor3)
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
    mem[(2 * ceil32(return_data.size)) + 196] = 32
    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(stakeTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 2 * ext_call.return_data[0], 0
    mem[(2 * ceil32(return_data.size)) + 328] = 0
    call stakeTokenAddress with:
       funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 2 * ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 2 * ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
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
    require ext_code.size(address(masterChefAddress))
    call address(masterChefAddress).0xe2bbb158 with:
         gas gas_remaining wei
        args pid, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Farm()
    stor1 = 1
}

function initialize(uint256 arg1, bool arg2, address[7] arg3, address[] arg4, address[] arg5, address[] arg6, address[] arg7) {
    require calldata.size - 4 >= 416
    require arg2 == arg2
    require calldata.size >= 292
    require cd[292] <= test266151307()
    require cd[292] + 35 < calldata.size
    require ('cd', 292).length <= test266151307()
    require cd[292] + (32 * ('cd', 292).length) + 36 <= calldata.size
    require test266151307() >= cd[324]
    require cd[324] + 35 < calldata.size
    require ('cd', 324).length <= test266151307()
    require cd[324] + (32 * ('cd', 324).length) + 36 <= calldata.size
    require test266151307() >= cd[356]
    require cd[356] + 35 < calldata.size
    require ('cd', 356).length <= test266151307()
    require cd[356] + (32 * ('cd', 356).length) + 36 <= calldata.size
    require test266151307() >= cd[388]
    require cd[388] + 35 < calldata.size
    require ('cd', 388).length <= test266151307()
    require cd[388] + (32 * ('cd', 388).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor15.field_0):
        revert with 0, 'initialize: ALREADY_INITIALIZED'
    uint8(stor15.field_0) = 1
    require arg3 == address(arg3)
    yieldWolfAddress = address(arg3)
    require arg4 == address(arg4)
    stakeTokenAddress = address(arg4)
    require arg5 == address(arg5)
    earnTokenAddress = address(arg5)
    require arg6 == address(arg6)
    address(masterChefAddress) = address(arg6)
    require arg7 == address(arg7)
    address(swapRouterAddress) = address(arg7)
    require cd[228] == address(cd[228])
    address(liquidityRouterAddress) = address(cd[228])
    require cd[260] == address(cd[260])
    WNATIVEAddress = address(cd[260])
    if not arg2:
        swapPath[stor8][stor5].field_0 = ('cd', 292).length
        if not ('cd', 292).length:
            idx = 0
            while swapPath[stor8][stor5].field_0 > idx:
                swapPath[stor8][stor5][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = cd[292] + 36
            while cd[292] + (32 * ('cd', 292).length) + 36 > idx:
                swapPath[stor8][stor5][s].field_0 = address(cd[idx])
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ('cd', 292).length) + 31) >> 5
            while swapPath[stor8][stor5].field_0 > idx:
                swapPath[stor8][stor5][idx].field_0 = 0
                idx = idx + 1
                continue 
        swapPath[stor5][stor8].field_0 = ('cd', 356).length
        if not ('cd', 356).length:
            idx = 0
            while swapPath[stor5][stor8].field_0 > idx:
                swapPath[stor5][stor8][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = cd[356] + 36
            while cd[356] + (32 * ('cd', 356).length) + 36 > idx:
                swapPath[stor5][stor8][s].field_0 = address(cd[idx])
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ('cd', 356).length) + 31) >> 5
            while swapPath[stor5][stor8].field_0 > idx:
                swapPath[stor5][stor8][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        require arg4 == address(arg4)
        require ext_code.size(address(arg4))
        staticcall address(arg4).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        token0Address = ext_call.return_data[12 len 20]
        require arg4 == address(arg4)
        require ext_code.size(address(arg4))
        staticcall address(arg4).0xd21220a7 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        token1Address = ext_call.return_data[12 len 20]
        swapPath[stor8][stor6].field_0 = ('cd', 292).length
        if not ('cd', 292).length:
            idx = 0
            while swapPath[stor8][stor6].field_0 > idx:
                swapPath[stor8][stor6][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = cd[292] + 36
            while cd[292] + (32 * ('cd', 292).length) + 36 > idx:
                swapPath[stor8][stor6][s].field_0 = address(cd[idx])
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ('cd', 292).length) + 31) >> 5
            while swapPath[stor8][stor6].field_0 > idx:
                swapPath[stor8][stor6][idx].field_0 = 0
                idx = idx + 1
                continue 
        swapPath[stor8][stor7].field_0 = ('cd', 324).length
        if not ('cd', 324).length:
            idx = 0
            while swapPath[stor8][stor7].field_0 > idx:
                swapPath[stor8][stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = cd[324] + 36
            while cd[324] + (32 * ('cd', 324).length) + 36 > idx:
                swapPath[stor8][stor7][s].field_0 = address(cd[idx])
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ('cd', 324).length) + 31) >> 5
            while swapPath[stor8][stor7].field_0 > idx:
                swapPath[stor8][stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
        swapPath[stor6][stor8].field_0 = ('cd', 356).length
        if not ('cd', 356).length:
            idx = 0
            while swapPath[stor6][stor8].field_0 > idx:
                swapPath[stor6][stor8][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = cd[356] + 36
            while cd[356] + (32 * ('cd', 356).length) + 36 > idx:
                swapPath[stor6][stor8][s].field_0 = address(cd[idx])
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ('cd', 356).length) + 31) >> 5
            while swapPath[stor6][stor8].field_0 > idx:
                swapPath[stor6][stor8][idx].field_0 = 0
                idx = idx + 1
                continue 
        swapPath[stor7][stor8].field_0 = ('cd', 388).length
        if not ('cd', 388).length:
            idx = 0
            while swapPath[stor7][stor8].field_0 > idx:
                swapPath[stor7][stor8][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = cd[388] + 36
            while cd[388] + (32 * ('cd', 388).length) + 36 > idx:
                swapPath[stor7][stor8][s].field_0 = address(cd[idx])
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ('cd', 388).length) + 31) >> 5
            while swapPath[stor7][stor8].field_0 > idx:
                swapPath[stor7][stor8][idx].field_0 = 0
                idx = idx + 1
                continue 
    pid = arg1
    emit Initialize()
}

function tokenToEarn(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if stor2:
        revert with 0, 'Pausable: paused'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        if earnTokenAddress != arg1:
            if stakeTokenAddress != arg1:
                mem[32] = sha3(address(arg1), 13)
                mem[ceil32(return_data.size) + 96] = swapPath[address(arg1)][stor8].field_0
                if not swapPath[address(arg1)][stor8].field_0:
                    if 0 == swapPath[address(arg1)][stor8].field_0:
                        if WNATIVEAddress == arg1:
                            mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 128] = 2
                            mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 160] = arg1
                            mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 192] = earnTokenAddress
                            if arg1 != earnTokenAddress:
                                if arg1 != stakeTokenAddress:
                                    mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 228] = this.address
                                    if uint8(stor12.field_160):
                                        mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 260] = address(swapRouterAddress)
                                        require ext_code.size(arg1)
                                        staticcall arg1.0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args this.address, address(swapRouterAddress)
                                        mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 224] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > !ext_call.return_data[0]:
                                            revert with 0, 17
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 260] = address(swapRouterAddress)
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 292] = 2 * ext_call.return_data[0]
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 224] = ceil32(return_data.size) + 68
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 260 len 28] = Mask(224, 0, stor10)
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 256 len 4] = approve(address arg1, uint256 arg2)
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 324] = 32
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 356] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(arg1):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 388 len floor32(ceil32(return_data.size) + 99)] = approve(address arg1, uint256 arg2), Mask(224, 0, stor10), uint32(stor10), 2 * ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 324 len floor32(ceil32(return_data.size) + 99) - 68]
                                        if floor32(ceil32(return_data.size) + 99) > ceil32(return_data.size) + 68:
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 456] = 0
                                        call arg1.mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 388 len 4] with:
                                             gas gas_remaining wei
                                            args mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 392 len (6 * ceil32(return_data.size)) + 64]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if ext_call.return_data[0]:
                                                    revert with memory
                                                      from 128
                                                       len ext_call.return_data[0]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if ext_call.return_data[0]:
                                                require ext_call.return_data[0] >= 32
                                                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                                                if not uint32(this.address), mem[132 len 28]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            idx = 0
                                            s = (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 584
                                            t = ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 160
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(address(swapRouterAddress))
                                            call address(swapRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 584 len 64]
                                        else:
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 420] == bool(mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 420])
                                                if not mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 420]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            idx = 0
                                            s = (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 585
                                            t = ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 160
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(address(swapRouterAddress))
                                            call address(swapRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 585 len 64]
                                    else:
                                        mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 260] = address(liquidityRouterAddress)
                                        require ext_code.size(arg1)
                                        staticcall arg1.0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args this.address, address(liquidityRouterAddress)
                                        mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 224] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > !ext_call.return_data[0]:
                                            revert with 0, 17
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 260] = address(liquidityRouterAddress)
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 292] = 2 * ext_call.return_data[0]
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 224] = ceil32(return_data.size) + 68
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 260 len 28] = Mask(224, 0, stor11)
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 256 len 4] = approve(address arg1, uint256 arg2)
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 324] = 32
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 356] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(arg1):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 388 len floor32(ceil32(return_data.size) + 99)] = approve(address arg1, uint256 arg2), Mask(224, 0, stor11), uint32(stor11), 2 * ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 324 len floor32(ceil32(return_data.size) + 99) - 68]
                                        if floor32(ceil32(return_data.size) + 99) > ceil32(return_data.size) + 68:
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 456] = 0
                                        call arg1.mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 388 len 4] with:
                                             gas gas_remaining wei
                                            args mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 392 len (6 * ceil32(return_data.size)) + 64]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if ext_call.return_data[0]:
                                                    revert with memory
                                                      from 128
                                                       len ext_call.return_data[0]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if ext_call.return_data[0]:
                                                require ext_call.return_data[0] >= 32
                                                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                                                if not uint32(this.address), mem[132 len 28]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            idx = 0
                                            s = (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 584
                                            t = ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 160
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(address(liquidityRouterAddress))
                                            call address(liquidityRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 584 len 64]
                                        else:
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 420] == bool(mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 420])
                                                if not mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 420]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            idx = 0
                                            s = (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 585
                                            t = ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 160
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(address(liquidityRouterAddress))
                                            call address(liquidityRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 585 len 64]
                        else:
                            mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 128] = 3
                            mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 160] = arg1
                            mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 192] = WNATIVEAddress
                            mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 224] = earnTokenAddress
                            if arg1 != earnTokenAddress:
                                if arg1 != stakeTokenAddress:
                                    mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 260] = this.address
                                    if uint8(stor12.field_160):
                                        mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 292] = address(swapRouterAddress)
                                        require ext_code.size(arg1)
                                        staticcall arg1.0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args this.address, address(swapRouterAddress)
                                        mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 256] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > !ext_call.return_data[0]:
                                            revert with 0, 17
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 292] = address(swapRouterAddress)
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 324] = 2 * ext_call.return_data[0]
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 256] = ceil32(return_data.size) + 68
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 292 len 28] = Mask(224, 0, stor10)
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 288 len 4] = approve(address arg1, uint256 arg2)
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 356] = 32
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 388] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(arg1):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 420 len floor32(ceil32(return_data.size) + 99)] = approve(address arg1, uint256 arg2), Mask(224, 0, stor10), uint32(stor10), 2 * ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 356 len floor32(ceil32(return_data.size) + 99) - 68]
                                        if floor32(ceil32(return_data.size) + 99) > ceil32(return_data.size) + 68:
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 488] = 0
                                        call arg1.mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 420 len 4] with:
                                             gas gas_remaining wei
                                            args mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 424 len (6 * ceil32(return_data.size)) + 64]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if ext_call.return_data[0]:
                                                    revert with memory
                                                      from 128
                                                       len ext_call.return_data[0]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if ext_call.return_data[0]:
                                                require ext_call.return_data[0] >= 32
                                                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                                                if not uint32(this.address), mem[132 len 28]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            idx = 0
                                            s = (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 616
                                            t = ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 160
                                            while idx < 3:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(address(swapRouterAddress))
                                            call address(swapRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 616 len 96]
                                        else:
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 452] == bool(mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 452])
                                                if not mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 452]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            idx = 0
                                            s = (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 617
                                            t = ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 160
                                            while idx < 3:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(address(swapRouterAddress))
                                            call address(swapRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 617 len 96]
                                    else:
                                        mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 292] = address(liquidityRouterAddress)
                                        require ext_code.size(arg1)
                                        staticcall arg1.0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args this.address, address(liquidityRouterAddress)
                                        mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 256] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > !ext_call.return_data[0]:
                                            revert with 0, 17
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 292] = address(liquidityRouterAddress)
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 324] = 2 * ext_call.return_data[0]
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 256] = ceil32(return_data.size) + 68
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 292 len 28] = Mask(224, 0, stor11)
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 288 len 4] = approve(address arg1, uint256 arg2)
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 356] = 32
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 388] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(arg1):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 420 len floor32(ceil32(return_data.size) + 99)] = approve(address arg1, uint256 arg2), Mask(224, 0, stor11), uint32(stor11), 2 * ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 356 len floor32(ceil32(return_data.size) + 99) - 68]
                                        if floor32(ceil32(return_data.size) + 99) > ceil32(return_data.size) + 68:
                                            mem[(4 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 488] = 0
                                        call arg1.mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 420 len 4] with:
                                             gas gas_remaining wei
                                            args mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 424 len (6 * ceil32(return_data.size)) + 64]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if ext_call.return_data[0]:
                                                    revert with memory
                                                      from 128
                                                       len ext_call.return_data[0]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if ext_call.return_data[0]:
                                                require ext_call.return_data[0] >= 32
                                                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                                                if not uint32(this.address), mem[132 len 28]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            idx = 0
                                            s = (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 616
                                            t = ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 160
                                            while idx < 3:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(address(liquidityRouterAddress))
                                            call address(liquidityRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 616 len 96]
                                        else:
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 452] == bool(mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 452])
                                                if not mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 452]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            idx = 0
                                            s = (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 617
                                            t = ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 160
                                            while idx < 3:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(address(liquidityRouterAddress))
                                            call address(liquidityRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 617 len 96]
                    else:
                        if not swapPath[address(arg1)][stor8].field_0:
                            revert with 0, 50
                        if mem[ceil32(return_data.size) + 140 len 20] != earnTokenAddress:
                            if not swapPath[address(arg1)][stor8].field_0:
                                revert with 0, 50
                            if mem[ceil32(return_data.size) + 140 len 20] != stakeTokenAddress:
                                if 0 >= swapPath[address(arg1)][stor8].field_0:
                                    revert with 0, 50
                                if uint8(stor12.field_160):
                                    _43 = mem[ceil32(return_data.size) + 128]
                                    mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 132] = this.address
                                    mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 164] = address(swapRouterAddress)
                                    require ext_code.size(address(_43))
                                    staticcall address(_43).0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, address(swapRouterAddress)
                                    mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > !ext_call.return_data[0]:
                                        revert with 0, 17
                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 164] = address(swapRouterAddress)
                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 196] = 2 * ext_call.return_data[0]
                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 128] = 68
                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 164 len 28] = Mask(224, 0, stor10)
                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 160 len 4] = approve(address arg1, uint256 arg2)
                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 228] = 32
                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 260] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(address(_43)):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 292 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor10), uint32(stor10), 2 * ext_call.return_data[0], 0
                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 360] = 0
                                    call address(_43) with:
                                       funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor10), uint32(stor10), 2 * ext_call.return_data[0], 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor10), uint32(stor10), 2 * ext_call.return_data[0], 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if ext_call.return_data[0]:
                                                revert with memory
                                                  from 128
                                                   len ext_call.return_data[0]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if ext_call.return_data[0]:
                                            require ext_call.return_data[0] >= 32
                                            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                                            if not uint32(this.address), mem[132 len 28]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 296] = ext_call.return_data[0]
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 328] = 0
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 360] = 160
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 456] = swapPath[address(arg1)][stor8].field_0
                                        idx = 0
                                        s = (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 488
                                        t = ceil32(return_data.size) + 128
                                        while idx < swapPath[address(arg1)][stor8].field_0:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 392] = this.address
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 424] = block.timestamp
                                        require ext_code.size(address(swapRouterAddress))
                                        call address(swapRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 296 len (96 * swapPath[address(arg1)][stor8].field_0) + 192]
                                    else:
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 324] == bool(mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 324])
                                            if not mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 324]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 297] = ext_call.return_data[0]
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 329] = 0
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 361] = 160
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 457] = swapPath[address(arg1)][stor8].field_0
                                        idx = 0
                                        s = (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 489
                                        t = ceil32(return_data.size) + 128
                                        while idx < swapPath[address(arg1)][stor8].field_0:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 393] = this.address
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 425] = block.timestamp
                                        require ext_code.size(address(swapRouterAddress))
                                        call address(swapRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 297 len (96 * swapPath[address(arg1)][stor8].field_0) + 192]
                                else:
                                    _44 = mem[ceil32(return_data.size) + 128]
                                    mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 132] = this.address
                                    mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 164] = address(liquidityRouterAddress)
                                    require ext_code.size(address(_44))
                                    staticcall address(_44).0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, address(liquidityRouterAddress)
                                    mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > !ext_call.return_data[0]:
                                        revert with 0, 17
                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 164] = address(liquidityRouterAddress)
                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 196] = 2 * ext_call.return_data[0]
                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 128] = 68
                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 164 len 28] = Mask(224, 0, stor11)
                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 160 len 4] = approve(address arg1, uint256 arg2)
                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 228] = 32
                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 260] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(address(_44)):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 292 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor11), uint32(stor11), 2 * ext_call.return_data[0], 0
                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 360] = 0
                                    call address(_44) with:
                                       funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor11), uint32(stor11), 2 * ext_call.return_data[0], 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor11), uint32(stor11), 2 * ext_call.return_data[0], 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if ext_call.return_data[0]:
                                                revert with memory
                                                  from 128
                                                   len ext_call.return_data[0]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if ext_call.return_data[0]:
                                            require ext_call.return_data[0] >= 32
                                            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                                            if not uint32(this.address), mem[132 len 28]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 296] = ext_call.return_data[0]
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 328] = 0
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 360] = 160
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 456] = swapPath[address(arg1)][stor8].field_0
                                        idx = 0
                                        s = (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 488
                                        t = ceil32(return_data.size) + 128
                                        while idx < swapPath[address(arg1)][stor8].field_0:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 392] = this.address
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 424] = block.timestamp
                                        require ext_code.size(address(liquidityRouterAddress))
                                        call address(liquidityRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 296 len (96 * swapPath[address(arg1)][stor8].field_0) + 192]
                                    else:
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 324] == bool(mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 324])
                                            if not mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 324]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 297] = ext_call.return_data[0]
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 329] = 0
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 361] = 160
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 457] = swapPath[address(arg1)][stor8].field_0
                                        idx = 0
                                        s = (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 489
                                        t = ceil32(return_data.size) + 128
                                        while idx < swapPath[address(arg1)][stor8].field_0:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 393] = this.address
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 425] = block.timestamp
                                        require ext_code.size(address(liquidityRouterAddress))
                                        call address(liquidityRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 297 len (96 * swapPath[address(arg1)][stor8].field_0) + 192]
                else:
                    mem[0] = sha3(earnTokenAddress, sha3(address(arg1), 13))
                    mem[ceil32(return_data.size) + 128] = swapPath[address(arg1)][stor8].field_0
                    idx = ceil32(return_data.size) + 128
                    s = 0
                    while ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 96 > idx:
                        mem[idx + 32] = swapPath[address(arg1)][stor8][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if swapPath[address(arg1)][stor8].field_0 != 0:
                        if not swapPath[address(arg1)][stor8].field_0:
                            revert with 0, 50
                        if mem[ceil32(return_data.size) + 140 len 20] != earnTokenAddress:
                            if not swapPath[address(arg1)][stor8].field_0:
                                revert with 0, 50
                            if mem[ceil32(return_data.size) + 140 len 20] != stakeTokenAddress:
                                if 0 >= swapPath[address(arg1)][stor8].field_0:
                                    revert with 0, 50
                                if uint8(stor12.field_160):
                                    _1935 = mem[ceil32(return_data.size) + 128]
                                    mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 132] = this.address
                                    mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 164] = address(swapRouterAddress)
                                    require ext_code.size(address(_1935))
                                    staticcall address(_1935).0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, address(swapRouterAddress)
                                    mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > !ext_call.return_data[0]:
                                        revert with 0, 17
                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 164] = address(swapRouterAddress)
                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 196] = 2 * ext_call.return_data[0]
                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 128] = 68
                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 160 len 4] = approve(address arg1, uint256 arg2)
                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 228] = 32
                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 260] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(address(_1935)):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 292 len 96] = 0, address(swapRouterAddress), 2 * ext_call.return_data[0], 0
                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 360] = 0
                                    call address(_1935) with:
                                       funct Mask(32, 224, 0, address(swapRouterAddress), 2 * ext_call.return_data[0], 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, 0, address(swapRouterAddress), 2 * ext_call.return_data[0], 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if ext_call.return_data[0]:
                                                revert with memory
                                                  from 128
                                                   len ext_call.return_data[0]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if ext_call.return_data[0]:
                                            require ext_call.return_data[0] >= 32
                                            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                                            if not uint32(this.address), mem[132 len 28]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 296] = ext_call.return_data[0]
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 328] = 0
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 360] = 160
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 456] = swapPath[address(arg1)][stor8].field_0
                                        idx = 0
                                        s = (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 488
                                        t = ceil32(return_data.size) + 128
                                        while idx < swapPath[address(arg1)][stor8].field_0:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 392] = this.address
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 424] = block.timestamp
                                        require ext_code.size(address(swapRouterAddress))
                                        call address(swapRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 296 len (96 * swapPath[address(arg1)][stor8].field_0) + 192]
                                    else:
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 324] == bool(mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 324])
                                            if not mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 324]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 297] = ext_call.return_data[0]
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 329] = 0
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 361] = 160
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 457] = swapPath[address(arg1)][stor8].field_0
                                        idx = 0
                                        s = (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 489
                                        t = ceil32(return_data.size) + 128
                                        while idx < swapPath[address(arg1)][stor8].field_0:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 393] = this.address
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 425] = block.timestamp
                                        require ext_code.size(address(swapRouterAddress))
                                        call address(swapRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 297 len (96 * swapPath[address(arg1)][stor8].field_0) + 192]
                                else:
                                    _1936 = mem[ceil32(return_data.size) + 128]
                                    mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 132] = this.address
                                    mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 164] = address(liquidityRouterAddress)
                                    require ext_code.size(address(_1936))
                                    staticcall address(_1936).0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, address(liquidityRouterAddress)
                                    mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > !ext_call.return_data[0]:
                                        revert with 0, 17
                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 164] = address(liquidityRouterAddress)
                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 196] = 2 * ext_call.return_data[0]
                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 128] = 68
                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 160 len 4] = approve(address arg1, uint256 arg2)
                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 228] = 32
                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 260] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(address(_1936)):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 292 len 96] = 0, address(liquidityRouterAddress), 2 * ext_call.return_data[0], 0
                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 360] = 0
                                    call address(_1936) with:
                                       funct Mask(32, 224, 0, address(liquidityRouterAddress), 2 * ext_call.return_data[0], 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, 0, address(liquidityRouterAddress), 2 * ext_call.return_data[0], 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if ext_call.return_data[0]:
                                                revert with memory
                                                  from 128
                                                   len ext_call.return_data[0]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if ext_call.return_data[0]:
                                            require ext_call.return_data[0] >= 32
                                            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                                            if not uint32(this.address), mem[132 len 28]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 296] = ext_call.return_data[0]
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 328] = 0
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 360] = 160
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 456] = swapPath[address(arg1)][stor8].field_0
                                        idx = 0
                                        s = (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 488
                                        t = ceil32(return_data.size) + 128
                                        while idx < swapPath[address(arg1)][stor8].field_0:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 392] = this.address
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 424] = block.timestamp
                                        require ext_code.size(address(liquidityRouterAddress))
                                        call address(liquidityRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 296 len (96 * swapPath[address(arg1)][stor8].field_0) + 192]
                                    else:
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 324] == bool(mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 324])
                                            if not mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 324]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 297] = ext_call.return_data[0]
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 329] = 0
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 361] = 160
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 457] = swapPath[address(arg1)][stor8].field_0
                                        idx = 0
                                        s = (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 489
                                        t = ceil32(return_data.size) + 128
                                        while idx < swapPath[address(arg1)][stor8].field_0:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 393] = this.address
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 425] = block.timestamp
                                        require ext_code.size(address(liquidityRouterAddress))
                                        call address(liquidityRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 297 len (96 * swapPath[address(arg1)][stor8].field_0) + 192]
                    else:
                        if WNATIVEAddress == arg1:
                            mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 128] = 2
                            mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 160] = arg1
                            mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 192] = earnTokenAddress
                            if arg1 != earnTokenAddress:
                                if arg1 != stakeTokenAddress:
                                    mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 228] = this.address
                                    if uint8(stor12.field_160):
                                        mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 260] = address(swapRouterAddress)
                                        require ext_code.size(arg1)
                                        staticcall arg1.0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args this.address, address(swapRouterAddress)
                                        mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 224] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > !ext_call.return_data[0]:
                                            revert with 0, 17
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 260] = address(swapRouterAddress)
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 292] = 2 * ext_call.return_data[0]
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 224] = 68
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 260 len 28] = Mask(224, 0, stor10)
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 256 len 4] = approve(address arg1, uint256 arg2)
                                        mem[64] = (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 388
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 324] = 32
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 356] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(arg1):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 388 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor10), uint32(stor10), 2 * ext_call.return_data[0], 0
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 456] = 0
                                        call arg1 with:
                                           funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor10), uint32(stor10), 2 * ext_call.return_data[0], 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor10), uint32(stor10), 2 * ext_call.return_data[0], 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if ext_call.return_data[0]:
                                                    revert with memory
                                                      from 128
                                                       len ext_call.return_data[0]
                                                mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 388] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 392] = 32
                                                mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 424] = 32
                                                mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 456] = 'SafeERC20: low-level call failed'
                                                revert with memory
                                                  from (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 388
                                                   len ceil32(return_data.size) + 100
                                            if ext_call.return_data[0]:
                                                require ext_call.return_data[0] >= 32
                                                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                                                if not uint32(this.address), mem[132 len 28]:
                                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 388] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 392] = 32
                                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 424] = 42
                                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 456] = 'SafeERC20: ERC20 operation did n'
                                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 488] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                                                    revert with memory
                                                      from (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 388
                                                       len ceil32(return_data.size) + 132
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 388] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 392] = ext_call.return_data[0]
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 424] = 0
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 456] = 160
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 552] = 2
                                            idx = 0
                                            s = (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 584
                                            t = ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 160
                                            while idx < mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 128]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 488] = this.address
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 520] = block.timestamp
                                            require ext_code.size(address(swapRouterAddress))
                                            call address(swapRouterAddress).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + (32 * mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 128]) + -mem[64] + 580]
                                        else:
                                            mem[64] = (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 389
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 388] = return_data.size
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 389] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 393] = 32
                                                mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 425] = 32
                                                mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 457] = 'SafeERC20: low-level call failed'
                                                revert with memory
                                                  from (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 389
                                                   len ceil32(return_data.size) + 100
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 420] == bool(mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 420])
                                                if not mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 420]:
                                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 389] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 393] = 32
                                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 425] = 42
                                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 457] = 'SafeERC20: ERC20 operation did n'
                                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 489] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                                                    revert with memory
                                                      from (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 389
                                                       len ceil32(return_data.size) + 132
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 389] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 393] = ext_call.return_data[0]
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 425] = 0
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 457] = 160
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 553] = 2
                                            idx = 0
                                            s = (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 585
                                            t = ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 160
                                            while idx < mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 128]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 489] = this.address
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 521] = block.timestamp
                                            require ext_code.size(address(swapRouterAddress))
                                            call address(swapRouterAddress).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 128]) + -mem[64] + 581]
                                    else:
                                        mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 260] = address(liquidityRouterAddress)
                                        require ext_code.size(arg1)
                                        staticcall arg1.0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args this.address, address(liquidityRouterAddress)
                                        mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 224] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > !ext_call.return_data[0]:
                                            revert with 0, 17
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 260] = address(liquidityRouterAddress)
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 292] = 2 * ext_call.return_data[0]
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 224] = 68
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 260 len 28] = Mask(224, 0, stor11)
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 256 len 4] = approve(address arg1, uint256 arg2)
                                        mem[64] = (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 388
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 324] = 32
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 356] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(arg1):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 388 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor11), uint32(stor11), 2 * ext_call.return_data[0], 0
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 456] = 0
                                        call arg1 with:
                                           funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor11), uint32(stor11), 2 * ext_call.return_data[0], 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor11), uint32(stor11), 2 * ext_call.return_data[0], 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if ext_call.return_data[0]:
                                                    revert with memory
                                                      from 128
                                                       len ext_call.return_data[0]
                                                mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 388] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 392] = 32
                                                mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 424] = 32
                                                mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 456] = 'SafeERC20: low-level call failed'
                                                revert with memory
                                                  from (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 388
                                                   len ceil32(return_data.size) + 100
                                            if ext_call.return_data[0]:
                                                require ext_call.return_data[0] >= 32
                                                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                                                if not uint32(this.address), mem[132 len 28]:
                                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 388] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 392] = 32
                                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 424] = 42
                                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 456] = 'SafeERC20: ERC20 operation did n'
                                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 488] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                                                    revert with memory
                                                      from (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 388
                                                       len ceil32(return_data.size) + 132
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 388] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 392] = ext_call.return_data[0]
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 424] = 0
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 456] = 160
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 552] = 2
                                            idx = 0
                                            s = (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 584
                                            t = ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 160
                                            while idx < mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 128]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 488] = this.address
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 520] = block.timestamp
                                            require ext_code.size(address(liquidityRouterAddress))
                                            call address(liquidityRouterAddress).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + (32 * mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 128]) + -mem[64] + 580]
                                        else:
                                            mem[64] = (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 389
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 388] = return_data.size
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 389] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 393] = 32
                                                mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 425] = 32
                                                mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 457] = 'SafeERC20: low-level call failed'
                                                revert with memory
                                                  from (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 389
                                                   len ceil32(return_data.size) + 100
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 420] == bool(mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 420])
                                                if not mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 420]:
                                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 389] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 393] = 32
                                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 425] = 42
                                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 457] = 'SafeERC20: ERC20 operation did n'
                                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 489] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                                                    revert with memory
                                                      from (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 389
                                                       len ceil32(return_data.size) + 132
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 389] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 393] = ext_call.return_data[0]
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 425] = 0
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 457] = 160
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 553] = 2
                                            idx = 0
                                            s = (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 585
                                            t = ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 160
                                            while idx < mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 128]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 489] = this.address
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 521] = block.timestamp
                                            require ext_code.size(address(liquidityRouterAddress))
                                            call address(liquidityRouterAddress).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 128]) + -mem[64] + 581]
                        else:
                            mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 128] = 3
                            mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 160] = arg1
                            mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 192] = WNATIVEAddress
                            mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 224] = earnTokenAddress
                            if arg1 != earnTokenAddress:
                                if arg1 != stakeTokenAddress:
                                    mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 260] = this.address
                                    if uint8(stor12.field_160):
                                        mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 292] = address(swapRouterAddress)
                                        require ext_code.size(arg1)
                                        staticcall arg1.0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args this.address, address(swapRouterAddress)
                                        mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 256] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > !ext_call.return_data[0]:
                                            revert with 0, 17
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 292] = address(swapRouterAddress)
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 324] = 2 * ext_call.return_data[0]
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 256] = 68
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 292 len 28] = Mask(224, 0, stor10)
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 288 len 4] = approve(address arg1, uint256 arg2)
                                        mem[64] = (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 420
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 356] = 32
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 388] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(arg1):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 420 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor10), uint32(stor10), 2 * ext_call.return_data[0], 0
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 488] = 0
                                        call arg1 with:
                                           funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor10), uint32(stor10), 2 * ext_call.return_data[0], 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor10), uint32(stor10), 2 * ext_call.return_data[0], 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if ext_call.return_data[0]:
                                                    revert with memory
                                                      from 128
                                                       len ext_call.return_data[0]
                                                mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 420] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 424] = 32
                                                mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 456] = 32
                                                mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 488] = 'SafeERC20: low-level call failed'
                                                revert with memory
                                                  from (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 420
                                                   len ceil32(return_data.size) + 100
                                            if ext_call.return_data[0]:
                                                require ext_call.return_data[0] >= 32
                                                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                                                if not uint32(this.address), mem[132 len 28]:
                                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 420] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 424] = 32
                                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 456] = 42
                                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 488] = 'SafeERC20: ERC20 operation did n'
                                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 520] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                                                    revert with memory
                                                      from (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 420
                                                       len ceil32(return_data.size) + 132
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 420] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 424] = ext_call.return_data[0]
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 456] = 0
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 488] = 160
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 584] = 3
                                            idx = 0
                                            s = (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 616
                                            t = ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 160
                                            while idx < mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 128]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 520] = this.address
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 552] = block.timestamp
                                            require ext_code.size(address(swapRouterAddress))
                                            call address(swapRouterAddress).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + (32 * mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 128]) + -mem[64] + 612]
                                        else:
                                            mem[64] = (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 421
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 420] = return_data.size
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 421] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 425] = 32
                                                mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 457] = 32
                                                mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 489] = 'SafeERC20: low-level call failed'
                                                revert with memory
                                                  from (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 421
                                                   len ceil32(return_data.size) + 100
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 452] == bool(mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 452])
                                                if not mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 452]:
                                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 421] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 425] = 32
                                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 457] = 42
                                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 489] = 'SafeERC20: ERC20 operation did n'
                                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 521] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                                                    revert with memory
                                                      from (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 421
                                                       len ceil32(return_data.size) + 132
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 421] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 457] = 0
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 489] = 160
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 585] = 3
                                            idx = 0
                                            s = (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 617
                                            t = ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 160
                                            while idx < mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 128]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 521] = this.address
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 553] = block.timestamp
                                            require ext_code.size(address(swapRouterAddress))
                                            call address(swapRouterAddress).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 128]) + -mem[64] + 613]
                                    else:
                                        mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 292] = address(liquidityRouterAddress)
                                        require ext_code.size(arg1)
                                        staticcall arg1.0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args this.address, address(liquidityRouterAddress)
                                        mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 256] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > !ext_call.return_data[0]:
                                            revert with 0, 17
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 292] = address(liquidityRouterAddress)
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 324] = 2 * ext_call.return_data[0]
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 256] = 68
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 292 len 28] = Mask(224, 0, stor11)
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 288 len 4] = approve(address arg1, uint256 arg2)
                                        mem[64] = (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 420
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 356] = 32
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 388] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(arg1):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 420 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor11), uint32(stor11), 2 * ext_call.return_data[0], 0
                                        mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 488] = 0
                                        call arg1 with:
                                           funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor11), uint32(stor11), 2 * ext_call.return_data[0], 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor11), uint32(stor11), 2 * ext_call.return_data[0], 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if ext_call.return_data[0]:
                                                    revert with memory
                                                      from 128
                                                       len ext_call.return_data[0]
                                                mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 420] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 424] = 32
                                                mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 456] = 32
                                                mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 488] = 'SafeERC20: low-level call failed'
                                                revert with memory
                                                  from (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 420
                                                   len ceil32(return_data.size) + 100
                                            if ext_call.return_data[0]:
                                                require ext_call.return_data[0] >= 32
                                                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                                                if not uint32(this.address), mem[132 len 28]:
                                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 420] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 424] = 32
                                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 456] = 42
                                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 488] = 'SafeERC20: ERC20 operation did n'
                                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 520] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                                                    revert with memory
                                                      from (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 420
                                                       len ceil32(return_data.size) + 132
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 420] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 424] = ext_call.return_data[0]
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 456] = 0
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 488] = 160
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 584] = 3
                                            idx = 0
                                            s = (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 616
                                            t = ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 160
                                            while idx < mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 128]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 520] = this.address
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 552] = block.timestamp
                                            require ext_code.size(address(liquidityRouterAddress))
                                            call address(liquidityRouterAddress).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + (32 * mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 128]) + -mem[64] + 612]
                                        else:
                                            mem[64] = (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 421
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 420] = return_data.size
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 421] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 425] = 32
                                                mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 457] = 32
                                                mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 489] = 'SafeERC20: low-level call failed'
                                                revert with memory
                                                  from (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 421
                                                   len ceil32(return_data.size) + 100
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 452] == bool(mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 452])
                                                if not mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + 452]:
                                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 421] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 425] = 32
                                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 457] = 42
                                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 489] = 'SafeERC20: ERC20 operation did n'
                                                    mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 521] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                                                    revert with memory
                                                      from (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 421
                                                       len ceil32(return_data.size) + 132
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 421] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 457] = 0
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 489] = 160
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 585] = 3
                                            idx = 0
                                            s = (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 617
                                            t = ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 160
                                            while idx < mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 128]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 521] = this.address
                                            mem[(2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + 553] = block.timestamp
                                            require ext_code.size(address(liquidityRouterAddress))
                                            call address(liquidityRouterAddress).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + (32 * swapPath[address(arg1)][stor8].field_0) + ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + (32 * swapPath[address(arg1)][stor8].field_0) + 128]) + -mem[64] + 613]
                emit TokenToEarn(arg1);
    stor1 = 1
}



}
