contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, address arg2, address arg3, uint256 arg4)
#  - tokenToEarn(address arg1)
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
address swapRouterAddress;
address liquidityRouterAddress;
uint8 stor12; offset 160
uint128 stor12; offset 160
address WNATIVEAddress;
array of address swapPath;
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
    require arg3 < uint256(swapPath[arg1][arg2])
    return address(swapPath[arg1][arg2][arg3])
}

function liquidityRouter() {
    return liquidityRouterAddress
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
    return swapRouterAddress
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
    uint256(swapPath[address(arg1)][address(arg2)]) = arg3.length
    if not arg3.length:
        idx = 0
        while uint256(swapPath[address(arg1)][address(arg2)]) > idx:
            uint256(swapPath[address(arg1)][address(arg2)][idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = arg3 + 36
        while arg3 + (32 * arg3.length) + 36 > idx:
            address(swapPath[address(arg1)][address(arg2)][s]) = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
        while uint256(swapPath[address(arg1)][address(arg2)]) > idx:
            uint256(swapPath[address(arg1)][address(arg2)][idx]) = 0
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
    swapRouterAddress = address(arg7)
    require cd[228] == address(cd[228])
    liquidityRouterAddress = address(cd[228])
    require cd[260] == address(cd[260])
    WNATIVEAddress = address(cd[260])
    if not arg2:
        uint256(swapPath[stor8][stor5]) = ('cd', 292).length
        if not ('cd', 292).length:
            idx = 0
            while uint256(swapPath[stor8][stor5]) > idx:
                uint256(swapPath[stor8][stor5][idx]) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = cd[292] + 36
            while cd[292] + (32 * ('cd', 292).length) + 36 > idx:
                address(swapPath[stor8][stor5][s]) = address(cd[idx])
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ('cd', 292).length) + 31) >> 5
            while uint256(swapPath[stor8][stor5]) > idx:
                uint256(swapPath[stor8][stor5][idx]) = 0
                idx = idx + 1
                continue 
        uint256(swapPath[stor5][stor8]) = ('cd', 356).length
        if not ('cd', 356).length:
            idx = 0
            while uint256(swapPath[stor5][stor8]) > idx:
                uint256(swapPath[stor5][stor8][idx]) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = cd[356] + 36
            while cd[356] + (32 * ('cd', 356).length) + 36 > idx:
                address(swapPath[stor5][stor8][s]) = address(cd[idx])
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ('cd', 356).length) + 31) >> 5
            while uint256(swapPath[stor5][stor8]) > idx:
                uint256(swapPath[stor5][stor8][idx]) = 0
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
        uint256(swapPath[stor8][stor6]) = ('cd', 292).length
        if not ('cd', 292).length:
            idx = 0
            while uint256(swapPath[stor8][stor6]) > idx:
                uint256(swapPath[stor8][stor6][idx]) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = cd[292] + 36
            while cd[292] + (32 * ('cd', 292).length) + 36 > idx:
                address(swapPath[stor8][stor6][s]) = address(cd[idx])
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ('cd', 292).length) + 31) >> 5
            while uint256(swapPath[stor8][stor6]) > idx:
                uint256(swapPath[stor8][stor6][idx]) = 0
                idx = idx + 1
                continue 
        uint256(swapPath[stor8][stor7]) = ('cd', 324).length
        if not ('cd', 324).length:
            idx = 0
            while uint256(swapPath[stor8][stor7]) > idx:
                uint256(swapPath[stor8][stor7][idx]) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = cd[324] + 36
            while cd[324] + (32 * ('cd', 324).length) + 36 > idx:
                address(swapPath[stor8][stor7][s]) = address(cd[idx])
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ('cd', 324).length) + 31) >> 5
            while uint256(swapPath[stor8][stor7]) > idx:
                uint256(swapPath[stor8][stor7][idx]) = 0
                idx = idx + 1
                continue 
        uint256(swapPath[stor6][stor8]) = ('cd', 356).length
        if not ('cd', 356).length:
            idx = 0
            while uint256(swapPath[stor6][stor8]) > idx:
                uint256(swapPath[stor6][stor8][idx]) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = cd[356] + 36
            while cd[356] + (32 * ('cd', 356).length) + 36 > idx:
                address(swapPath[stor6][stor8][s]) = address(cd[idx])
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ('cd', 356).length) + 31) >> 5
            while uint256(swapPath[stor6][stor8]) > idx:
                uint256(swapPath[stor6][stor8][idx]) = 0
                idx = idx + 1
                continue 
        uint256(swapPath[stor7][stor8]) = ('cd', 388).length
        if not ('cd', 388).length:
            idx = 0
            while uint256(swapPath[stor7][stor8]) > idx:
                uint256(swapPath[stor7][stor8][idx]) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = cd[388] + 36
            while cd[388] + (32 * ('cd', 388).length) + 36 > idx:
                address(swapPath[stor7][stor8][s]) = address(cd[idx])
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ('cd', 388).length) + 31) >> 5
            while uint256(swapPath[stor7][stor8]) > idx:
                uint256(swapPath[stor7][stor8][idx]) = 0
                idx = idx + 1
                continue 
    pid = arg1
    emit Initialize()
}

function deposit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if stor2:
        revert with 0, 'Pausable: paused'
    require ext_code.size(yieldWolfAddress)
    call yieldWolfAddress.depositFee() with:
         gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 and ext_call.return_data[0] > -1 / arg1:
        revert with 0, 17
    if arg1 < arg1 * ext_call.return_data[0] / 10000:
        revert with 0, 17
    if not arg1 * ext_call.return_data[0] / 10000:
        mem[ceil32(return_data.size) + 100] = this.address
        require ext_code.size(stakeTokenAddress)
        staticcall stakeTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 132] = this.address
        require ext_code.size(address(masterChefAddress))
        staticcall address(masterChefAddress).0x93f1a40b with:
                gas gas_remaining wei
               args pid, this.address
        mem[(2 * ceil32(return_data.size)) + 96 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[0] > !ext_call.return_data[0]:
            revert with 0, 17
        if 2 * ext_call.return_data[0] < arg1 - (arg1 * ext_call.return_data[0] / 10000):
            revert with 0, 17
        mem[(4 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(stakeTokenAddress)
        staticcall stakeTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(6 * ceil32(return_data.size)) + 100] = this.address
        mem[(6 * ceil32(return_data.size)) + 132] = address(masterChefAddress)
        require ext_code.size(stakeTokenAddress)
        staticcall stakeTokenAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(masterChefAddress)
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > !ext_call.return_data[0]:
            revert with 0, 17
        mem[(7 * ceil32(return_data.size)) + 132] = address(masterChefAddress)
        mem[(7 * ceil32(return_data.size)) + 164] = 2 * ext_call.return_data[0]
        mem[(7 * ceil32(return_data.size)) + 96] = 68
        mem[(7 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor3)
        mem[(7 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
        mem[(7 * ceil32(return_data.size)) + 196] = 32
        mem[(7 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(stakeTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(7 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 2 * ext_call.return_data[0], 0
        mem[(7 * ceil32(return_data.size)) + 328] = 0
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
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(7 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(7 * ceil32(return_data.size)) + 292] == bool(mem[(7 * ceil32(return_data.size)) + 292])
                if not mem[(7 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        require ext_code.size(address(masterChefAddress))
        call address(masterChefAddress).0xe2bbb158 with:
             gas gas_remaining wei
            args pid, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
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
    else:
        require ext_code.size(yieldWolfAddress)
        call yieldWolfAddress.0x41275358 with:
             gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(2 * ceil32(return_data.size)) + 132] = ext_call.return_data[12 len 20]
        mem[(2 * ceil32(return_data.size)) + 164] = arg1 * ext_call.return_data[0] / 10000
        mem[(2 * ceil32(return_data.size)) + 96] = 68
        mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[(2 * ceil32(return_data.size)) + 196] = 32
        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(stakeTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 260 len 96] = 0, ext_call.return_data[12 len 20], arg1 * ext_call.return_data[0] / 10000, 0
        mem[(2 * ceil32(return_data.size)) + 328] = 0
        call stakeTokenAddress with:
           funct Mask(32, 224, 0, ext_call.return_data[12 len 20], arg1 * ext_call.return_data[0] / 10000, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, ext_call.return_data[12 len 20], arg1 * ext_call.return_data[0] / 10000, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[(2 * ceil32(return_data.size)) + 264] = this.address
            require ext_code.size(stakeTokenAddress)
            staticcall stakeTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(4 * ceil32(return_data.size)) + 296] = this.address
            require ext_code.size(address(masterChefAddress))
            staticcall address(masterChefAddress).0x93f1a40b with:
                    gas gas_remaining wei
                   args pid, this.address
            mem[(4 * ceil32(return_data.size)) + 260 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if ext_call.return_data[0] > !ext_call.return_data[0]:
                revert with 0, 17
            if 2 * ext_call.return_data[0] < arg1 - (arg1 * ext_call.return_data[0] / 10000):
                revert with 0, 17
            mem[(6 * ceil32(return_data.size)) + 264] = this.address
            require ext_code.size(stakeTokenAddress)
            staticcall stakeTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(6 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(7 * ceil32(return_data.size)) + 264] = this.address
            mem[(7 * ceil32(return_data.size)) + 296] = address(masterChefAddress)
            require ext_code.size(stakeTokenAddress)
            staticcall stakeTokenAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(masterChefAddress)
            mem[(7 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > !ext_call.return_data[0]:
                revert with 0, 17
            mem[(8 * ceil32(return_data.size)) + 296] = address(masterChefAddress)
            mem[(8 * ceil32(return_data.size)) + 328] = 2 * ext_call.return_data[0]
            mem[(8 * ceil32(return_data.size)) + 260] = 68
            mem[(8 * ceil32(return_data.size)) + 292 len 4] = approve(address arg1, uint256 arg2)
            mem[(8 * ceil32(return_data.size)) + 360] = 32
            mem[(8 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(stakeTokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(8 * ceil32(return_data.size)) + 424 len 96] = 0, address(masterChefAddress), 2 * ext_call.return_data[0], 0
            mem[(8 * ceil32(return_data.size)) + 492] = 0
            call stakeTokenAddress with:
               funct Mask(32, 224, 0, address(masterChefAddress), 2 * ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, address(masterChefAddress), 2 * ext_call.return_data[0], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(address(masterChefAddress))
                call address(masterChefAddress).0xe2bbb158 with:
                     gas gas_remaining wei
                    args pid, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
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
                       args pid, this.address, mem[(10 * ceil32(return_data.size)) + 492 len 17 * ceil32(return_data.size)]
            else:
                mem[(8 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(8 * ceil32(return_data.size)) + 456] == bool(mem[(8 * ceil32(return_data.size)) + 456])
                    if not mem[(8 * ceil32(return_data.size)) + 456]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(address(masterChefAddress))
                call address(masterChefAddress).0xe2bbb158 with:
                     gas gas_remaining wei
                    args pid, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
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
                       args pid, this.address, mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 493 len 17 * ceil32(return_data.size)]
        else:
            mem[(2 * ceil32(return_data.size)) + 260] = return_data.size
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
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = this.address
            require ext_code.size(stakeTokenAddress)
            staticcall stakeTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = this.address
            require ext_code.size(address(masterChefAddress))
            staticcall address(masterChefAddress).0x93f1a40b with:
                    gas gas_remaining wei
                   args pid, this.address
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if ext_call.return_data[0] > !ext_call.return_data[0]:
                revert with 0, 17
            if 2 * ext_call.return_data[0] < arg1 - (arg1 * ext_call.return_data[0] / 10000):
                revert with 0, 17
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = this.address
            require ext_code.size(stakeTokenAddress)
            staticcall stakeTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = this.address
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(masterChefAddress)
            require ext_code.size(stakeTokenAddress)
            staticcall stakeTokenAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(masterChefAddress)
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > !ext_call.return_data[0]:
                revert with 0, 17
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(masterChefAddress)
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 2 * ext_call.return_data[0]
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = approve(address arg1, uint256 arg2)
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(stakeTokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(masterChefAddress), 2 * ext_call.return_data[0], 0
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
            call stakeTokenAddress with:
               funct Mask(32, 224, 0, address(masterChefAddress), 2 * ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, address(masterChefAddress), 2 * ext_call.return_data[0], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(address(masterChefAddress))
                call address(masterChefAddress).0xe2bbb158 with:
                     gas gas_remaining wei
                    args pid, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
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
                       args pid, this.address, mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 493 len 17 * ceil32(return_data.size)]
            else:
                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(12 * ceil32(return_data.size)) + 526 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                    if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                        revert with 0, 
                                    'SafeERC20: ERC20 operation did not succeed',
                                    mem[(12 * ceil32(return_data.size)) + 558 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                require ext_code.size(address(masterChefAddress))
                call address(masterChefAddress).0xe2bbb158 with:
                     gas gas_remaining wei
                    args pid, ext_call.return_data[0], mem[(12 * ceil32(return_data.size)) + 494 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
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
                       args pid, this.address, mem[(13 * ceil32(return_data.size)) + 494 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 0, 17
    if 2 * ext_call.return_data[0] < (2 * ext_call.return_data[0]) - arg1 + (arg1 * ext_call.return_data[0] / 10000):
        revert with 0, 17
    if not (2 * ext_call.return_data[0]) - arg1 + (arg1 * ext_call.return_data[0] / 10000):
        if sharesTotal > !(arg1 - (arg1 * ext_call.return_data[0] / 10000)):
            revert with 0, 17
        sharesTotal = sharesTotal + arg1 - (arg1 * ext_call.return_data[0] / 10000)
        stor1 = 1
        return (arg1 - (arg1 * ext_call.return_data[0] / 10000))
    if sharesTotal <= 0:
        if sharesTotal > !(arg1 - (arg1 * ext_call.return_data[0] / 10000)):
            revert with 0, 17
        sharesTotal = sharesTotal + arg1 - (arg1 * ext_call.return_data[0] / 10000)
        stor1 = 1
        return (arg1 - (arg1 * ext_call.return_data[0] / 10000))
    if arg1 - (arg1 * ext_call.return_data[0] / 10000) and sharesTotal > -1 / arg1 - (arg1 * ext_call.return_data[0] / 10000):
        revert with 0, 17
    if not (2 * ext_call.return_data[0]) - arg1 + (arg1 * ext_call.return_data[0] / 10000):
        revert with 0, 18
    if sharesTotal > !((ext_call.return_data[0] * sharesTotal) + (ext_call.return_data[0] * sharesTotal) - (ext_call.return_data[0] * sharesTotal) - (ext_call.return_data[0] * sharesTotal) + (arg1 * sharesTotal) - (arg1 * ext_call.return_data[0] / 10000 * sharesTotal) / (2 * ext_call.return_data[0]) - arg1 + (arg1 * ext_call.return_data[0] / 10000)):
        revert with 0, 17
    sharesTotal += (ext_call.return_data[0] * sharesTotal) + (ext_call.return_data[0] * sharesTotal) - (ext_call.return_data[0] * sharesTotal) - (ext_call.return_data[0] * sharesTotal) + (arg1 * sharesTotal) - (arg1 * ext_call.return_data[0] / 10000 * sharesTotal) / (2 * ext_call.return_data[0]) - arg1 + (arg1 * ext_call.return_data[0] / 10000)
    stor1 = 1
    return ((ext_call.return_data[0] * sharesTotal) + (ext_call.return_data[0] * sharesTotal) - (ext_call.return_data[0] * sharesTotal) - (ext_call.return_data[0] * sharesTotal) + (arg1 * sharesTotal) - (arg1 * ext_call.return_data[0] / 10000 * sharesTotal) / (2 * ext_call.return_data[0]) - arg1 + (arg1 * ext_call.return_data[0] / 10000))
}



}
