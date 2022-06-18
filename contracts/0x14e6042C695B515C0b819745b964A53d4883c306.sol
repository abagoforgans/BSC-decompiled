contract main {




// =====================  Runtime code  =====================


#
#  - harvest(address arg1)
#  - unpause()
#  - harvest()
#  - panic()
#  - beforeDeposit()
#  - pause()
#  - managerHarvest()
#
const MAX_CALL_FEE = 111

const WITHDRAWAL_MAX = 10000

const STRATEGIST_FEE = 112

const MAX_FEE = 1000

const WITHDRAWAL_FEE_CAP = 50


uint8 paused; offset 160
address owner;
address keeperAddress;
address strategistAddress;
address unirouterAddress;
uint32 stor4;
address vaultAddress;
uint256 stor4;
address beefyFeeRecipientAddress;
uint256 withdrawalFee;
uint256 callFee;
uint256 beefyFee;
uint8 sub_9f8b5da1;
address gaspriceAddress; offset 8
address nativeAddress;
address outputAddress;
address wantAddress;
address lpToken0Address;
address lpToken1Address;
address chefAddress;
uint32 stor16;
uint256 poolId;
uint8 harvestOnDeposit;
uint256 lastHarvest;
array of struct sub_277e5cfd;
array of struct outputToNativeRoute;
array of struct outputToLp0Route;
array of struct outputToLp1Route;

function native() payable {
    return nativeAddress
}

function want() payable {
    return wantAddress
}

function chef() payable {
    return chefAddress
}

function strategist() payable {
    return strategistAddress
}

function unirouter() payable {
    return unirouterAddress
}

function sub_277e5cfd(?) payable {
    return sub_277e5cfd[0 len sub_277e5cfd.length].field_0
}

function outputToLp0Route(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < outputToLp0Route.length
    return outputToLp0Route[arg1].field_0
}

function poolId() payable {
    return uint256(poolId)
}

function paused() payable {
    return bool(paused)
}

function lpToken0() payable {
    return lpToken0Address
}

function gasprice() payable {
    return gaspriceAddress
}

function lpToken1() payable {
    return lpToken1Address
}

function harvestOnDeposit() payable {
    return bool(harvestOnDeposit)
}

function withdrawalFee() payable {
    return withdrawalFee
}

function owner() payable {
    return owner
}

function beefyFeeRecipient() payable {
    return beefyFeeRecipientAddress
}

function callFee() payable {
    return callFee
}

function sub_9f8b5da1(?) payable {
    return bool(sub_9f8b5da1)
}

function keeper() payable {
    return keeperAddress
}

function outputToNativeRoute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < outputToNativeRoute.length
    return outputToNativeRoute[arg1].field_0
}

function beefyFee() payable {
    return beefyFee
}

function lastHarvest() payable {
    return lastHarvest
}

function output() payable {
    return outputAddress
}

function vault() payable {
    return address(vaultAddress)
}

function outputToLp1Route(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < outputToLp1Route.length
    return outputToLp1Route[arg1].field_0
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

function setStrategist(address arg1) payable {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        revert with 0, '!strategist'
    strategistAddress = arg1
}

function setUnirouter(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    unirouterAddress = arg1
}

function setVault(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    address(vaultAddress) = arg1
}

function setKeeper(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    keeperAddress = arg1
}

function setBeefyFeeRecipient(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    beefyFeeRecipientAddress = arg1
}

function setShouldGasThrottle(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    sub_9f8b5da1 = uint8(arg1)
}

function setWithdrawalFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    if arg1 > 50:
        revert with 0, '!cap'
    withdrawalFee = arg1
}

function setCallFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    if arg1 > 111:
        revert with 0, '!cap'
    callFee = arg1
    beefyFee = -arg1 + 888
}

function balanceOfWant() payable {
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOfPool() payable {
    require ext_code.size(chefAddress)
    staticcall chefAddress.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args uint256(poolId), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0]
}

function setHarvestOnDeposit(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    harvestOnDeposit = uint8(arg1)
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    if not uint8(arg1):
        withdrawalFee = 10
    else:
        withdrawalFee = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_59e79138(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + ('cd', 4).length + 36 <= calldata.size
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    sub_277e5cfd.length = (2 * ('cd', 4).length) + 1
    s = 0
    idx = cd[4] + 36
    while cd[4] + ('cd', 4).length + 36 > idx:
        sub_277e5cfd[s].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
    while sub_277e5cfd.length + 31 / 32 > idx:
        sub_277e5cfd[idx].field_0 = 0
        idx = idx + 1
        continue 
}

function balanceOf() payable {
    require ext_code.size(chefAddress)
    staticcall chefAddress.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args uint256(poolId), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function outputToLp0() payable {
    if outputToLp0Route.length:
        mem[128] = address(outputToLp0Route.field_0)
        if (32 * outputToLp0Route.length) + 32 > 64:
            mem[160] = address(outputToLp0Route.field_256)
            idx = 160
            s = 1
            while (32 * outputToLp0Route.length) + 96 > idx:
                mem[idx + 32] = outputToLp0Route[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * outputToLp0Route.length) + 128] = 32
    mem[(32 * outputToLp0Route.length) + 160] = outputToLp0Route.length
    mem[(32 * outputToLp0Route.length) + 192 len floor32(outputToLp0Route.length)] = mem[128 len floor32(outputToLp0Route.length)]
    return memory
      from (32 * outputToLp0Route.length) + 128
       len (96 * outputToLp0Route.length) + 64
}

function outputToNative() payable {
    if outputToNativeRoute.length:
        mem[128] = address(outputToNativeRoute.field_0)
        if (32 * outputToNativeRoute.length) + 32 > 64:
            mem[160] = address(outputToNativeRoute.field_256)
            idx = 160
            s = 1
            while (32 * outputToNativeRoute.length) + 96 > idx:
                mem[idx + 32] = outputToNativeRoute[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * outputToNativeRoute.length) + 128] = 32
    mem[(32 * outputToNativeRoute.length) + 160] = outputToNativeRoute.length
    mem[(32 * outputToNativeRoute.length) + 192 len floor32(outputToNativeRoute.length)] = mem[128 len floor32(outputToNativeRoute.length)]
    return memory
      from (32 * outputToNativeRoute.length) + 128
       len (96 * outputToNativeRoute.length) + 64
}

function retireStrat() payable {
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(chefAddress)
    call chefAddress.emergencyWithdraw(uint256 arg1) with:
         gas gas_remaining wei
        args uint256(poolId)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wantAddress)
    call wantAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(vaultAddress), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function outputToLp1() payable {
    if not outputToLp1Route.length:
        mem[(32 * outputToLp1Route.length) + 128] = 32
        mem[(32 * outputToLp1Route.length) + 160] = outputToLp1Route.length
        mem[(32 * outputToLp1Route.length) + 192 len floor32(outputToLp1Route.length)] = mem[128 len floor32(outputToLp1Route.length)]
        return memory
          from (32 * outputToLp1Route.length) + 128
           len (96 * outputToLp1Route.length) + 64
    mem[128] = address(outputToLp1Route.field_0)
    idx = 128
    s = 0
    while (32 * outputToLp1Route.length) + 96 > idx:
        mem[idx + 32] = outputToLp1Route[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * outputToLp1Route.length) + 192 len floor32(outputToLp1Route.length)] = mem[128 len floor32(outputToLp1Route.length)]
    return Array(len=outputToLp1Route.length, data=mem[128 len floor32(outputToLp1Route.length)], mem[(32 * outputToLp1Route.length) + floor32(outputToLp1Route.length) + 192 len (32 * outputToLp1Route.length) - floor32(outputToLp1Route.length)]), 
}

function deposit() payable {
    if paused:
        revert with 0, 'Pausable: paused'
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(chefAddress)
        call chefAddress.deposit(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args uint256(poolId), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(chefAddress)
        staticcall chefAddress.userInfo(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args uint256(poolId), this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        emit Deposit((2 * ext_call.return_data[0]));
}

function rewardsAvailable() payable {
    mem[128] = uint256(sub_277e5cfd.field_0)
    idx = 128
    s = 0
    while sub_277e5cfd.length + 96 > idx:
        mem[idx + 32] = sub_277e5cfd[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(sub_277e5cfd.length) + 128] = 17
    mem[ceil32(sub_277e5cfd.length) + 224 len floor32(sub_277e5cfd.length)] = mem[128 len floor32(sub_277e5cfd.length)]
    mem[ceil32(sub_277e5cfd.length) + floor32(sub_277e5cfd.length) + 224] = 256^(-sub_277e5cfd.length % 32 + 32) - 1 and mem[ceil32(sub_277e5cfd.length) + floor32(sub_277e5cfd.length) + 224] or mem[floor32(sub_277e5cfd.length) + 128] and !(256^(-sub_277e5cfd.length % 32 + 32) - 1)
    mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 224 len 0] = None
    mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 239 len 17] = Mask(136, 0, '(uint256,address)')
    mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 277] = uint256(poolId)
    mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 309] = this.address
    mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 241] = 68
    mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 341 len floor32(mem[ceil32(sub_277e5cfd.length) + 192])] = mem[ceil32(sub_277e5cfd.length) + 224 len floor32(mem[ceil32(sub_277e5cfd.length) + 192])]
    mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + floor32(mem[ceil32(sub_277e5cfd.length) + 192]) + 341] = 256^(-(mem[ceil32(sub_277e5cfd.length) + 192] % 32) + 32) - 1 and mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + floor32(mem[ceil32(sub_277e5cfd.length) + 192]) + 341] or mem[ceil32(sub_277e5cfd.length) + floor32(mem[ceil32(sub_277e5cfd.length) + 192]) + 224] and !(256^(-(mem[ceil32(sub_277e5cfd.length) + 192] % 32) + 32) - 1)
    if not ext_code.size(chefAddress):
        revert with 0, 
                    32,
                    36,
                    0x72416464726573733a207374617469632063616c6c20746f206e6f6e2d636f6e74726163,
                    mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 541 len 28]
    mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 437 len 64] = Mask(32, 224, sha3(mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 341 len mem[ceil32(sub_277e5cfd.length) + 192]])) >> 224, uint256(poolId), Mask(224, 32, this.address) >> 32
    mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 529 len 4] = 0
    staticcall chefAddress with:
         funct uint32(stor16)
            gas gas_remaining wei
           args Mask(224, 32, this.address) << 224, mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 501 len 4]
    if not return_data.size:
        if not ext_call.success:
            if sub_277e5cfd.length:
                revert with memory
                  from 128
                   len sub_277e5cfd.length
            revert with 0, 
                        32,
                        37,
                        0x6c416464726573733a206c6f772d6c6576656c207374617469632063616c6c206661696c65,
                        mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 410 len 27],
                        mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 464 len 5]
        require sub_277e5cfd.length >= 32
        return memory
          from 128
           len 32
    mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 469 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 
                    32,
                    37,
                    0x6c416464726573733a206c6f772d6c6576656c207374617469632063616c6c206661696c65,
                    mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 410 len 27],
                    mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 464 len 5]
    require return_data.size >= 32
    mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 438] = mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 469]
    return memory
      from ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 438
       len 32
}

function callReward() payable {
    mem[96] = sub_277e5cfd.length
    mem[0] = 19
    mem[128] = uint256(sub_277e5cfd.field_0)
    idx = 128
    s = 0
    while sub_277e5cfd.length + 96 > idx:
        mem[idx + 32] = sub_277e5cfd[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(sub_277e5cfd.length) + 128] = 17
    mem[ceil32(sub_277e5cfd.length) + 160] = '(uint256,address)' << 120
    mem[ceil32(sub_277e5cfd.length) + 224 len floor32(sub_277e5cfd.length)] = mem[128 len floor32(sub_277e5cfd.length)]
    mem[ceil32(sub_277e5cfd.length) + floor32(sub_277e5cfd.length) + 224] = 256^(-sub_277e5cfd.length % 32 + 32) - 1 and mem[ceil32(sub_277e5cfd.length) + floor32(sub_277e5cfd.length) + 224] or mem[floor32(sub_277e5cfd.length) + 128] and !(256^(-sub_277e5cfd.length % 32 + 32) - 1)
    mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 224 len 0] = None
    mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 239 len 17] = Mask(136, 0, '(uint256,address)')
    mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 277] = uint256(poolId)
    mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 309] = this.address
    mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 241] = 68
    mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 341 len floor32(mem[ceil32(sub_277e5cfd.length) + 192])] = mem[ceil32(sub_277e5cfd.length) + 224 len floor32(mem[ceil32(sub_277e5cfd.length) + 192])]
    mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + floor32(mem[ceil32(sub_277e5cfd.length) + 192]) + 341] = 256^(-(mem[ceil32(sub_277e5cfd.length) + 192] % 32) + 32) - 1 and mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + floor32(mem[ceil32(sub_277e5cfd.length) + 192]) + 341] or mem[ceil32(sub_277e5cfd.length) + floor32(mem[ceil32(sub_277e5cfd.length) + 192]) + 224] and !(256^(-(mem[ceil32(sub_277e5cfd.length) + 192] % 32) + 32) - 1)
    mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 273 len 4] = Mask(32, 224, sha3(mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 341 len mem[ceil32(sub_277e5cfd.length) + 192]])) >> 224
    mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 341] = 37
    mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 373 len 37] = 0x6c416464726573733a206c6f772d6c6576656c207374617469632063616c6c206661696c65
    if not ext_code.size(chefAddress):
        revert with 0, 
                    32,
                    36,
                    0x72416464726573733a207374617469632063616c6c20746f206e6f6e2d636f6e74726163,
                    mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 541 len 28]
    mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 437 len 64] = mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 273 len 4], uint256(poolId), Mask(224, 32, this.address) >> 32
    mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 529 len 4] = 0
    staticcall chefAddress with:
         funct uint32(stor16)
            gas gas_remaining wei
           args Mask(224, 32, this.address) << 224, mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 501 len 4]
    if not return_data.size:
        if not ext_call.success:
            if sub_277e5cfd.length:
                revert with memory
                  from 128
                   len sub_277e5cfd.length
            revert with 0, 
                        32,
                        37,
                        0x6c416464726573733a206c6f772d6c6576656c207374617469632063616c6c206661696c65,
                        mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 410 len 27],
                        Mask(40, 32, this.address) >> 32
        require sub_277e5cfd.length >= 32
        if not mem[128]:
            return 0
        mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 437] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 441] = mem[128]
        mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 473] = 64
        mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 505] = outputToNativeRoute.length
        if not outputToNativeRoute.length:
            require ext_code.size(unirouterAddress)
            staticcall unirouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args mem[128], 64, outputToNativeRoute.length
            if not ext_call.success:
                return 0
            mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 437 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 437
            require return_data.size >= 32
            _1516 = mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 437 len 4], mem[128 len 28]
            require mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 437 len 4], mem[128 len 28] <= 4294967296
            require mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 437 len 4], mem[128 len 28] + 32 <= return_data.size
            require mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 437 len 4], mem[128 len 28] + 437] <= 4294967296 and mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 437 len 4], mem[128 len 28] + (32 * mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 437 len 4], mem[128 len 28] + 437]) + 32 <= return_data.size
            mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 437] = mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 437 len 4], mem[128 len 28] + 437]
            _1530 = mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + _1516 + 437]
            mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 469 len floor32(mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + _1516 + 437])] = mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + _1516 + 469 len floor32(mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + _1516 + 437])]
            require mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 437] - 1 < mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 437]
            if not mem[(32 * mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 437] - 1) + ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 469]:
                return 0
            if 45 * mem[(32 * mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 437] - 1) + ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 469] / mem[(32 * mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 437] - 1) + ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 469] != 45:
                revert with 0, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * _1530) + ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 570 len 31]
            if not 45 * mem[(32 * mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 437] - 1) + ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 469] / 1000:
                return 0
            if callFee * 45 * mem[(32 * mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 437] - 1) + ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 469] / 1000 / 45 * mem[(32 * mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 437] - 1) + ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 469] / 1000 != callFee:
                revert with 0, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * _1530) + ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 570 len 31]
            mem[(32 * _1530) + ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 469] = callFee * 45 * mem[(32 * mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 437] - 1) + ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 469] / 1000 / 1000
            return memory
              from (32 * _1530) + ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 469
               len 32
        mem[0] = 20
        mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 537] = address(outputToNativeRoute.field_0)
        idx = ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 537
        s = 0
        while ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + (32 * outputToNativeRoute.length) + 537 > idx + 32:
            mem[idx + 32] = outputToNativeRoute[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(unirouterAddress)
        staticcall unirouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args mem[128], Array(len=outputToNativeRoute.length, data=mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 537 len 32 * outputToNativeRoute.length])
        if not ext_call.success:
            return 0
        mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 437 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 437
        require return_data.size >= 32
        _1728 = mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 437 len 4], mem[128 len 28]
        require mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 437 len 4], mem[128 len 28] <= 4294967296
        require mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 437 len 4], mem[128 len 28] + 32 <= return_data.size
        require mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 437 len 4], mem[128 len 28] + 437] <= 4294967296 and mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 437 len 4], mem[128 len 28] + (32 * mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 437 len 4], mem[128 len 28] + 437]) + 32 <= return_data.size
        mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 437] = mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 437 len 4], mem[128 len 28] + 437]
        _1742 = mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + _1728 + 437]
        mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 469 len floor32(mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + _1728 + 437])] = mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + _1728 + 469 len floor32(mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + _1728 + 437])]
        require mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 437] - 1 < mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 437]
        if not mem[(32 * mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 437] - 1) + ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 469]:
            return 0
        if 45 * mem[(32 * mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 437] - 1) + ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 469] / mem[(32 * mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 437] - 1) + ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 469] != 45:
            revert with 0, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(32 * _1742) + ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 570 len 31]
        if not 45 * mem[(32 * mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 437] - 1) + ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 469] / 1000:
            return 0
        if callFee * 45 * mem[(32 * mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 437] - 1) + ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 469] / 1000 / 45 * mem[(32 * mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 437] - 1) + ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 469] / 1000 != callFee:
            revert with 0, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(32 * _1742) + ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 570 len 31]
        mem[(32 * _1742) + ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 469] = callFee * 45 * mem[(32 * mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 437] - 1) + ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 469] / 1000 / 1000
        return memory
          from (32 * _1742) + ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 469
           len 32
    mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 437] = return_data.size
    mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 469 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 
                    32,
                    37,
                    0x6c416464726573733a206c6f772d6c6576656c207374617469632063616c6c206661696c65,
                    mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 410 len 27],
                    return_data.size % 1099511627776
    require return_data.size >= 32
    _1507 = mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 469]
    if not mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 469]:
        return 0
    mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 438] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 442] = _1507
    mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 474] = 64
    mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 506] = outputToNativeRoute.length
    if not outputToNativeRoute.length:
        require ext_code.size(unirouterAddress)
        staticcall unirouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args _1507, 64, outputToNativeRoute.length
        if not ext_call.success:
            return 0
        mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 438 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + ceil32(return_data.size) + 438
        require return_data.size >= 32
        _1518 = mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 438 len 4], Mask(224, 32, _1507) >> 32
        require mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 438 len 4], Mask(224, 32, _1507) >> 32 <= 4294967296
        require mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 438 len 4], Mask(224, 32, _1507) >> 32 + 32 <= return_data.size
        require mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 438 len 4], Mask(224, 32, _1507) >> 32 + 438] <= 4294967296 and mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 438 len 4], Mask(224, 32, _1507) >> 32 + (32 * mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 438 len 4], Mask(224, 32, _1507) >> 32 + 438]) + 32 <= return_data.size
        mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + ceil32(return_data.size) + 438] = mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 438 len 4], Mask(224, 32, _1507) >> 32 + 438]
        _1531 = mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + _1518 + 438]
        mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + ceil32(return_data.size) + 470 len floor32(mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + _1518 + 438])] = mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + _1518 + 470 len floor32(mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + _1518 + 438])]
        mem[64] = (32 * _1531) + ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + ceil32(return_data.size) + 470
        require mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + ceil32(return_data.size) + 438] - 1 < mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + ceil32(return_data.size) + 438]
        if not mem[(32 * mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + ceil32(return_data.size) + 438] - 1) + ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + ceil32(return_data.size) + 470]:
            return 0
        if 45 * mem[(32 * mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + ceil32(return_data.size) + 438] - 1) + ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + ceil32(return_data.size) + 470] / mem[(32 * mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + ceil32(return_data.size) + 438] - 1) + ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + ceil32(return_data.size) + 470] != 45:
            revert with 0, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(32 * _1531) + ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + ceil32(return_data.size) + 571 len 31]
        if not 45 * mem[(32 * mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + ceil32(return_data.size) + 438] - 1) + ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + ceil32(return_data.size) + 470] / 1000:
            return 0
        if callFee * 45 * mem[(32 * mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + ceil32(return_data.size) + 438] - 1) + ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + ceil32(return_data.size) + 470] / 1000 / 45 * mem[(32 * mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + ceil32(return_data.size) + 438] - 1) + ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + ceil32(return_data.size) + 470] / 1000 != callFee:
            revert with 0, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(32 * _1531) + ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + ceil32(return_data.size) + 571 len 31]
        mem[(32 * _1531) + ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + ceil32(return_data.size) + 470] = callFee * 45 * mem[(32 * mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + ceil32(return_data.size) + 438] - 1) + ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + ceil32(return_data.size) + 470] / 1000 / 1000
        return memory
          from (32 * _1531) + ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + ceil32(return_data.size) + 470
           len 32
    mem[0] = 20
    mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 538] = address(outputToNativeRoute.field_0)
    idx = ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 538
    s = 0
    while ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + (32 * outputToNativeRoute.length) + 538 > idx + 32:
        mem[idx + 32] = outputToNativeRoute[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(unirouterAddress)
    staticcall unirouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args _1507, Array(len=outputToNativeRoute.length, data=mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 538 len 32 * outputToNativeRoute.length])
    if not ext_call.success:
        return 0
    mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 438 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + ceil32(return_data.size) + 438
    require return_data.size >= 32
    _1730 = mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 438 len 4], Mask(224, 32, _1507) >> 32
    require mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 438 len 4], Mask(224, 32, _1507) >> 32 <= 4294967296
    require mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 438 len 4], Mask(224, 32, _1507) >> 32 + 32 <= return_data.size
    require mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 438 len 4], Mask(224, 32, _1507) >> 32 + 438] <= 4294967296 and mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 438 len 4], Mask(224, 32, _1507) >> 32 + (32 * mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 438 len 4], Mask(224, 32, _1507) >> 32 + 438]) + 32 <= return_data.size
    mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + ceil32(return_data.size) + 438] = mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 438 len 4], Mask(224, 32, _1507) >> 32 + 438]
    _1743 = mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + _1730 + 438]
    mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + ceil32(return_data.size) + 470 len floor32(mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + _1730 + 438])] = mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + _1730 + 470 len floor32(mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + _1730 + 438])]
    mem[64] = (32 * _1743) + ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + ceil32(return_data.size) + 470
    require mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + ceil32(return_data.size) + 438] - 1 < mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + ceil32(return_data.size) + 438]
    if not mem[(32 * mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + ceil32(return_data.size) + 438] - 1) + ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + ceil32(return_data.size) + 470]:
        return 0
    if 45 * mem[(32 * mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + ceil32(return_data.size) + 438] - 1) + ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + ceil32(return_data.size) + 470] / mem[(32 * mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + ceil32(return_data.size) + 438] - 1) + ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + ceil32(return_data.size) + 470] != 45:
        revert with 0, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[(32 * _1743) + ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + ceil32(return_data.size) + 571 len 31]
    if not 45 * mem[(32 * mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + ceil32(return_data.size) + 438] - 1) + ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + ceil32(return_data.size) + 470] / 1000:
        return 0
    if callFee * 45 * mem[(32 * mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + ceil32(return_data.size) + 438] - 1) + ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + ceil32(return_data.size) + 470] / 1000 / 45 * mem[(32 * mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + ceil32(return_data.size) + 438] - 1) + ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + ceil32(return_data.size) + 470] / 1000 != callFee:
        revert with 0, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[(32 * _1743) + ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + ceil32(return_data.size) + 571 len 31]
    mem[(32 * _1743) + ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + ceil32(return_data.size) + 470] = callFee * 45 * mem[(32 * mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + ceil32(return_data.size) + 438] - 1) + ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + ceil32(return_data.size) + 470] / 1000 / 1000
    return memory
      from (32 * _1743) + ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + ceil32(return_data.size) + 470
       len 32
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg1:
        if ext_call.return_data[0] <= arg1:
            if tx.origin == owner:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
                mem[324 len 0] = 0
                call wantAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0]
                    if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor4):
                        revert with 0, 32, 42, 0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                        0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
            else:
                if paused:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
                    mem[324 len 0] = 0
                    call wantAddress with:
                       funct uint32(stor4)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0]
                        if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor4):
                            revert with 0, 32, 42, 0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                else:
                    if ext_call.return_data[0]:
                        if withdrawalFee * ext_call.return_data[0] / ext_call.return_data[0] != withdrawalFee:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if withdrawalFee * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, ext_call.return_data[0] - (withdrawalFee * ext_call.return_data[0] / 10000)) >> 32
                        call wantAddress with:
                           funct uint32(stor4)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] - (withdrawalFee * ext_call.return_data[0] / 10000)) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address arg1, uint256 arg2), 
                                            Mask(224, 0, stor4),
                                            uint32(stor4),
                                            ext_call.return_data[0] - (withdrawalFee * ext_call.return_data[0] / 10000)
                            if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor4):
                                revert with 0, 32, 42, 0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                    else:
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
                        mem[324 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor4)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0]
                            if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor4):
                                revert with 0, 32, 42, 0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
        else:
            if tx.origin == owner:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1) >> 32
                call wantAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), arg1
                    if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor4):
                        revert with 0, 32, 42, 0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                        0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
            else:
                if paused:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1) >> 32
                    call wantAddress with:
                       funct uint32(stor4)
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), arg1
                        if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor4):
                            revert with 0, 32, 42, 0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                else:
                    if not arg1:
                        if 0 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1) >> 32
                        call wantAddress with:
                           funct uint32(stor4)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), arg1
                            if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor4):
                                revert with 0, 32, 42, 0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                    else:
                        if withdrawalFee * arg1 / arg1 != withdrawalFee:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if withdrawalFee * arg1 / 10000 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1 - (withdrawalFee * arg1 / 10000)) >> 32
                        call wantAddress with:
                           funct uint32(stor4)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1 - (withdrawalFee * arg1 / 10000)) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), arg1 - (withdrawalFee * arg1 / 10000)
                            if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor4):
                                revert with 0, 32, 42, 0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
    else:
        if ext_call.return_data[0] > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(chefAddress)
        call chefAddress.withdraw(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args uint256(poolId), arg1 - ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= arg1:
            if tx.origin == owner:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
                call wantAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0]
                    if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor4):
                        revert with 0, 32, 42, 0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                        0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
            else:
                if paused:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
                    call wantAddress with:
                       funct uint32(stor4)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0]
                        if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor4):
                            revert with 0, 32, 42, 0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                else:
                    if not ext_call.return_data[0]:
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
                        call wantAddress with:
                           funct uint32(stor4)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0]
                            if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor4):
                                revert with 0, 32, 42, 0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                    else:
                        if withdrawalFee * ext_call.return_data[0] / ext_call.return_data[0] != withdrawalFee:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if withdrawalFee * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, ext_call.return_data[0] - (withdrawalFee * ext_call.return_data[0] / 10000)) >> 32
                        call wantAddress with:
                           funct uint32(stor4)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] - (withdrawalFee * ext_call.return_data[0] / 10000)) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address arg1, uint256 arg2), 
                                            Mask(224, 0, stor4),
                                            uint32(stor4),
                                            ext_call.return_data[0] - (withdrawalFee * ext_call.return_data[0] / 10000)
                            if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor4):
                                revert with 0, 32, 42, 0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
        else:
            if tx.origin == owner:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1) >> 32
                call wantAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), arg1
                    if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor4):
                        revert with 0, 32, 42, 0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                        0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
            else:
                if paused:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1) >> 32
                    call wantAddress with:
                       funct uint32(stor4)
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), arg1
                        if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor4):
                            revert with 0, 32, 42, 0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                else:
                    if not arg1:
                        if 0 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1) >> 32
                        call wantAddress with:
                           funct uint32(stor4)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), arg1
                            if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor4):
                                revert with 0, 32, 42, 0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                    else:
                        if withdrawalFee * arg1 / arg1 != withdrawalFee:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if withdrawalFee * arg1 / 10000 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1 - (withdrawalFee * arg1 / 10000)) >> 32
                        call wantAddress with:
                           funct uint32(stor4)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1 - (withdrawalFee * arg1 / 10000)) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), arg1 - (withdrawalFee * arg1 / 10000)
                            if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor4):
                                revert with 0, 32, 42, 0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
    require ext_code.size(chefAddress)
    staticcall chefAddress.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args uint256(poolId), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    emit Withdraw((2 * ext_call.return_data[0]));
}



}
