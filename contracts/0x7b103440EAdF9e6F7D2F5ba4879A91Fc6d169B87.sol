contract main {




// =====================  Runtime code  =====================


#
#  - sub_d49fab8a(?)
#
const sub_95c2ba47(?) = 5


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address stor101;
address uSDTokenAddress;
address swapRouterAddress;
address stor104;
address stor105;
address sub_2aa8195eAddress;
address sub_c6c1decdAddress;
address oracleContractAddress;
uint256 stor109;
uint256 stor110;
uint256 stor111;
uint256 stor112;
uint256 stor113;
uint256 stor114;
uint256 stor115;
uint256 stor116;
uint256 stor117;
uint8 stor118;
uint8 stor118; offset 8
uint256 stor118; offset 8
array of struct sub_f1b17a8b;
array of struct stakers;
array of struct sub_de09ee20;
array of struct sub_850fa7cb;
address sub_e8153c93Address;
address rewardManagerAddress;
address wrappedTokenAddress;
array of struct stor126;
array of struct stor127;
uint256 launchDate;
uint256 lockTime;
uint256 maturityTime;
uint256 sub_51eacbf0;
uint256 sub_aa7bcb57;
uint256 prizeAmount;
uint256 sub_73f31703;
uint256 sub_6847d0c5;
uint256 minimumStakeAmount;
uint256 totalStaked;
uint256 sub_d025188b;
uint256 sub_e425df8c;
uint256 sub_eb850ae1;
uint256 sub_f3d9dc0d;
uint256 oracleDecimals;
bool stor143; offset 256
uint8 sub_a08b2c79;
uint8 sub_4bc4eeb2; offset 8
uint8 isActive; offset 16
uint8 isLocked; offset 24
uint8 isMatured; offset 32
uint8 sub_d7efb6b7; offset 40
uint8 sub_8cf0e21e; offset 48
uint256 stor143; offset 40
uint256 stor143; offset 16
uint256 stor143;

function lockTime() payable {
    return lockTime
}

function rewardManager() payable {
    return rewardManagerAddress
}

function isActive() payable {
    return bool(isActive)
}

function sub_2aa8195e(?) payable {
    return sub_2aa8195eAddress
}

function sub_4bc4eeb2(?) payable {
    return bool(sub_4bc4eeb2)
}

function maturityTime() payable {
    return maturityTime
}

function sub_51eacbf0(?) payable {
    return sub_51eacbf0
}

function sub_6847d0c5(?) payable {
    return sub_6847d0c5
}

function minimumStakeAmount() payable {
    return minimumStakeAmount
}

function getSwapRouter() payable {
    return swapRouterAddress
}

function sub_73f31703(?) payable {
    return sub_73f31703
}

function prizeAmount() payable {
    return prizeAmount
}

function isMatured() payable {
    return bool(isMatured)
}

function totalStaked() payable {
    return totalStaked
}

function sub_850fa7cb(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < sub_850fa7cb[arg1].field_0
    return sub_850fa7cb[arg1][arg2].field_0, 
           sub_850fa7cb[arg1][arg2].field_256,
           sub_850fa7cb[arg1][arg2].field_512,
           sub_850fa7cb[arg1][arg2].field_768,
           sub_850fa7cb[arg1][arg2].field_1024,
           sub_850fa7cb[arg1][arg2].field_1280,
           sub_850fa7cb[arg1][arg2].field_1536,
           bool(sub_850fa7cb[arg1][arg2].field_1792),
           bool(sub_850fa7cb[arg1][arg2].field_1800)
}

function sub_8cf0e21e(?) payable {
    return bool(sub_8cf0e21e)
}

function owner() payable {
    return owner
}

function wrappedToken() payable {
    return wrappedTokenAddress
}

function sub_a08b2c79(?) payable {
    return bool(sub_a08b2c79)
}

function isLocked() payable {
    return bool(isLocked)
}

function sub_aa7bcb57(?) payable {
    return sub_aa7bcb57
}

function oracleContract() payable {
    return oracleContractAddress
}

function sub_c6c1decd(?) payable {
    return sub_c6c1decdAddress
}

function sub_d025188b(?) payable {
    return sub_d025188b
}

function sub_d7efb6b7(?) payable {
    return bool(sub_d7efb6b7)
}

function sub_de09ee20(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_de09ee20.length
    return sub_de09ee20[arg1].field_0, sub_de09ee20[arg1].field_256
}

function sub_e425df8c(?) payable {
    return sub_e425df8c
}

function oracleDecimals() payable {
    return oracleDecimals
}

function sub_e8153c93(?) payable {
    return sub_e8153c93Address
}

function sub_eb850ae1(?) payable {
    return sub_eb850ae1
}

function sub_f1b17a8b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_f1b17a8b.length
    return sub_f1b17a8b[arg1].field_0, sub_f1b17a8b[arg1].field_256
}

function sub_f3d9dc0d(?) payable {
    return sub_f3d9dc0d
}

function getUSDToken() payable {
    return uSDTokenAddress
}

function launchDate() payable {
    return launchDate
}

function stakers(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < stakers.length
    return stakers[arg1].field_0, stakers[arg1].field_256
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_df7f92e0(?) payable {
    if sub_c6c1decdAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '0300 caller is not a pool creator'
    oracleContractAddress = 0
}

function lockPool() payable {
    if sub_c6c1decdAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '0300 caller is not a pool creator'
    isLocked = 1
    emit PoolLocked()
}

function deletePool() payable {
    if sub_c6c1decdAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '0300 caller is not a pool creator'
    sub_d7efb6b7 = 1
    emit PoolDeleted()
}

function declareEmergency() payable {
    if sub_c6c1decdAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '0300 caller is not a pool creator'
    uint256(stor143.field_0) = 1
    isLocked = 1
    emit PoolLocked()
}

function lps() payable {
    return stor109, 
           stor110,
           stor111,
           stor112,
           stor113,
           stor114,
           stor115,
           stor116,
           stor117,
           bool(uint8(stor118.field_0)),
           bool(uint8(stor118.field_8))
}

function getPathForUSDToWrappedToken() payable {
    mem[128] = stor104
    mem[160] = stor105
    mem[192] = 32
    idx = 0
    s = 128
    t = 256
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return Array(len=2, data=mem[256 len 64])
}

function getUSDBalance() payable {
    require ext_code.size(uSDTokenAddress)
    staticcall uSDTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getWrappedTokenBalance() payable {
    require ext_code.size(wrappedTokenAddress)
    staticcall wrappedTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getDecimals() payable {
    require ext_code.size(stor101)
    staticcall stor101.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    return ext_call.return_data[31 len 1]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_2342e480(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require ext_code.size(0x77d1b776f3b99b85fbe0fc777008abcac3a12c20)
    delegate 0x77d1b776f3b99b85fbe0fc777008abcac3a12c20.0x4f160423 with:
         gas gas_remaining wei
        args sha3(address(arg1), 122), arg2, 109
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function getStakingReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0x3d22ad37588c9052e26d932c0c5ba6851518f062)
    delegate 0x3d22ad37588c9052e26d932c0c5ba6851518f062.0xd4675770 with:
         gas gas_remaining wei
        args sha3(address(arg1), 122), 109
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function getPrize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0x3d22ad37588c9052e26d932c0c5ba6851518f062)
    delegate 0x3d22ad37588c9052e26d932c0c5ba6851518f062.0x32a1b321 with:
         gas gas_remaining wei
        args sha3(address(arg1), 122), 109, 119
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return delegate.return_data[0], delegate.return_data[32]
}

function getLatestPrice() payable {
    require ext_code.size(stor101)
    staticcall stor101.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[32] >= 0:
        return ext_call.return_data[32]
    else:
        return 0
}

function sub_b7b30170(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require ext_code.size(0x77d1b776f3b99b85fbe0fc777008abcac3a12c20)
    delegate 0x77d1b776f3b99b85fbe0fc777008abcac3a12c20.0xf7ac9cba with:
         gas gas_remaining wei
        args 0, uint32(sha3(address(arg1), 122)), arg2, 109, 119
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return delegate.return_data[0], delegate.return_data[32]
}

function sub_a118c9a7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if sub_c6c1decdAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '0300 caller is not a pool creator'
    if bool(arg1) == bool(isActive):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not changing the activation status'
    Mask(240, 0, stor143.field_16) = Mask(240, 0, bool(arg1))
    if not uint8(bool(arg1)) and True:
        emit 0x763d36bf 
    else:
        emit 0x3d31b97e 
}

function getStakingTax(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if sub_6847d0c5 <= arg2:
        return 0, arg1
    if sub_6847d0c5 < arg2:
        revert with 0, 17
    if not sub_6847d0c5 - arg2:
        return 0, arg1
    if arg1 and sub_6847d0c5 - arg2 > -1 / arg1:
        revert with 0, 17
    if arg1 and sub_6847d0c5 - arg2 > -1 / arg1:
        revert with 0, 17
    if arg1 < (sub_6847d0c5 * arg1) - (arg2 * arg1) / 10000:
        revert with 0, 17
    return (sub_6847d0c5 * arg1) - (arg2 * arg1) / 10000, arg1 - ((sub_6847d0c5 * arg1) - (arg2 * arg1) / 10000)
}

function sub_37c4f6a4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if uint8(stor0.field_8):
        stor101 = address(arg1)
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            stor101 = address(arg1)
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            stor101 = address(arg1)
            uint8(stor0.field_8) = 0
}

function sub_4c7c77fc(?) payable {
    require calldata.size - 4 >= 64
    if arg2 > arg1:
        return 0
    if arg1 <= sub_d025188b:
        if arg1 > !arg2:
            revert with 0, 17
        if arg1 + arg2 >= sub_d025188b:
            return 0
        if arg1 > !arg2:
            revert with 0, 17
        if sub_d025188b < arg1 + arg2:
            revert with 0, 17
        return (sub_d025188b - arg1 - arg2)
    if arg1 < arg2:
        revert with 0, 17
    if arg1 - arg2 <= sub_d025188b:
        return 0
    if arg1 < arg2:
        revert with 0, 17
    if arg1 - arg2 < sub_d025188b:
        revert with 0, 17
    return (arg1 - arg2 - sub_d025188b)
}

function withdrawStuckTokens(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3
    if sub_c6c1decdAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '0300 caller is not a pool creator'
    if sub_e8153c93Address == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '0370 totems can not be transfered'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_a8f7b346(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if uint8(stor0.field_8):
        swapRouterAddress = address(arg1)
        stor104 = address(arg2)
        stor105 = address(arg3)
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            swapRouterAddress = address(arg1)
            stor104 = address(arg2)
            stor105 = address(arg3)
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            swapRouterAddress = address(arg1)
            stor104 = address(arg2)
            stor105 = address(arg3)
            uint8(stor0.field_8) = 0
}

function emergentWithdraw() payable {
    if not sub_a08b2c79:
        revert with 0, 'it's not an emergency'
    require ext_code.size(0x8bb1fb368152c5c2b772e1c5c0d6b506c330d41f)
    delegate 0x8bb1fb368152c5c2b772e1c5c0d6b506c330d41f.0x66f1dee with:
         gas gas_remaining wei
        args sha3(address(msg.sender), 122)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0]:
        require ext_code.size(0x3d22ad37588c9052e26d932c0c5ba6851518f062)
        delegate 0x3d22ad37588c9052e26d932c0c5ba6851518f062.0xf66d9a4d with:
             gas gas_remaining wei
            args sha3(address(msg.sender), 122)
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_e8153c93Address)
        call sub_e8153c93Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, delegate.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit Unstake(delegate.return_data[0], msg.sender);
}

function sub_a7a48681(?) payable {
    require calldata.size - 4 >= 32
    if sub_c6c1decdAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '0300 caller is not a pool creator'
    if launchDate > !lockTime:
        revert with 0, 17
    if launchDate + lockTime > !maturityTime:
        revert with 0, 17
    if block.timestamp < launchDate + lockTime + maturityTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    '0350 Can't set maturing price before the maturity time'
    if not oracleContractAddress:
        sub_d025188b = arg1
        stor112 = arg1
    else:
        require ext_code.size(stor101)
        staticcall stor101.latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
        if ext_call.return_data[32] >= 0:
            sub_d025188b = ext_call.return_data[32]
            stor112 = ext_call.return_data[32]
        else:
            sub_d025188b = 0
            stor112 = 0
}

function hasUnStaked(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    mem[64] = (32 * sub_850fa7cb[address(arg1)].field_0) + 128
    mem[96] = sub_850fa7cb[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < sub_850fa7cb[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 122)
        _20 = mem[64]
        mem[64] = mem[64] + 288
        mem[_20] = sub_850fa7cb[address(arg1)][idx].field_0
        mem[_20 + 32] = sub_850fa7cb[address(arg1)][idx].field_256
        mem[_20 + 64] = sub_850fa7cb[address(arg1)][idx].field_512
        mem[_20 + 96] = sub_850fa7cb[address(arg1)][idx].field_768
        mem[_20 + 128] = sub_850fa7cb[address(arg1)][idx].field_1024
        mem[_20 + 160] = sub_850fa7cb[address(arg1)][idx].field_1280
        mem[_20 + 192] = sub_850fa7cb[address(arg1)][idx].field_1536
        mem[_20 + 224] = bool(sub_850fa7cb[address(arg1)][idx].field_1792)
        mem[_20 + 256] = bool(sub_850fa7cb[address(arg1)][idx].field_1800)
        mem[s] = _20
        s = s + 32
        idx = idx + 1
        continue 
    if mem[96] <= 0:
        revert with 0, '0380 this address didn't stake in this pool'
    if arg2 >= mem[96]:
        revert with 0, '0381 this index exceeds'
    if arg2 >= mem[96]:
        revert with 0, 50
    if not mem[mem[(32 * arg2) + 128] + 256]:
        return 0
    return 1
}

function getStakers() payable {
    if stakers.length > test266151307():
        revert with 0, 65
    mem[96] = stakers.length
    if stakers.length:
        mem[128 len 32 * stakers.length] = call.data[calldata.size len 32 * stakers.length]
    if stakers.length > test266151307():
        revert with 0, 65
    mem[(32 * stakers.length) + 128] = stakers.length
    mem[64] = (64 * stakers.length) + 160
    if stakers.length:
        mem[(32 * stakers.length) + 160 len 32 * stakers.length] = call.data[calldata.size len 32 * stakers.length]
    idx = 0
    while idx < stakers.length:
        if idx >= stakers.length:
            revert with 0, 50
        mem[(32 * idx) + 128] = stakers[idx].field_0
        if idx >= stakers.length:
            revert with 0, 50
        mem[0] = 120
        if idx >= mem[(32 * stakers.length) + 128]:
            revert with 0, 50
        mem[(32 * idx) + (32 * stakers.length) + 160] = stakers[idx].field_256
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[(64 * stakers.length) + 160] = 64
    mem[(64 * stakers.length) + 224] = stakers.length
    idx = 0
    s = 128
    t = mem[64] + 96
    while idx < stakers.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(64 * stakers.length) + 192] = (32 * stakers.length) + 96
    mem[(98 * stakers.length) + 256] = mem[(32 * stakers.length) + 128]
    mem[(98 * stakers.length) + 288 len 32 * mem[(32 * stakers.length) + 128]] = mem[(32 * stakers.length) + 160 len 32 * mem[(32 * stakers.length) + 128]]
    return memory
      from mem[64]
       len (98 * stakers.length) + (32 * mem[(32 * stakers.length) + 128]) + -mem[64] + 288
}

function getEstimatedWrappedTokenForUSD(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[96] = 2
    mem[128] = stor104
    mem[160] = stor105
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg1
    mem[228] = 64
    mem[260] = 2
    idx = 0
    s = 128
    t = 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(swapRouterAddress)
    staticcall swapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _20 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223 < return_data.size + 192
    _21 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    if mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 > test266151307() or (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require return_data.size >= _20 + (32 * _21) + 32
    mem[ceil32(return_data.size) + 224 len 32 * _21] = mem[_20 + 224 len 32 * _21]
    if 1 >= _21:
        revert with 0, 50
    mem[mem[64]] = mem[ceil32(return_data.size) + 256]
    return memory
      from mem[64]
       len 32
}

function sub_444a4902(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 1600
    require calldata.size >= 804
    require calldata.size >= 1604
    if sub_c6c1decdAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '0300 caller is not a pool creator'
    if not sub_de09ee20.length:
        idx = 0
        while idx < 25:
            require cd[((32 * idx) + 4)] == address(cd[((32 * idx) + 4)])
            if not address(cd[((32 * idx) + 4)]):
                emit PoolSorted()
            _15 = mem[64]
            mem[64] = mem[64] + 64
            if idx >= 25:
                revert with 0, 50
            require cd[((32 * idx) + 4)] == address(cd[((32 * idx) + 4)])
            mem[_15] = address(cd[((32 * idx) + 4)])
            if idx >= 25:
                revert with 0, 50
            mem[_15 + 32] = cd[((32 * idx) + 804)]
            sub_de09ee20.length++
            mem[0] = 121
            sub_de09ee20[sub_de09ee20.length].field_0 = address(cd[((32 * idx) + 4)])
            sub_de09ee20[sub_de09ee20.length].field_256 = cd[((32 * idx) + 804)]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        sub_de09ee20.length = 0
        idx = 0
        while 2 * sub_de09ee20.length > idx:
            sub_de09ee20[idx].field_0 = 0
            sub_de09ee20[idx].field_256 = 0
            idx = idx + 2
            continue 
        idx = 0
        while idx < 25:
            require cd[((32 * idx) + 4)] == address(cd[((32 * idx) + 4)])
            if not address(cd[((32 * idx) + 4)]):
                emit PoolSorted()
            _26 = mem[64]
            mem[64] = mem[64] + 64
            if idx >= 25:
                revert with 0, 50
            require cd[((32 * idx) + 4)] == address(cd[((32 * idx) + 4)])
            mem[_26] = address(cd[((32 * idx) + 4)])
            if idx >= 25:
                revert with 0, 50
            mem[_26 + 32] = cd[((32 * idx) + 804)]
            sub_de09ee20.length++
            mem[0] = 121
            sub_de09ee20[sub_de09ee20.length].field_0 = address(cd[((32 * idx) + 4)])
            sub_de09ee20[sub_de09ee20.length].field_256 = cd[((32 * idx) + 804)]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    emit PoolSorted()
}

function getAveragePricePrediction() payable {
    mem[64] = 96
    if 0 == totalStaked:
        return 0
    idx = 0
    s = 0
    while idx < stakers.length:
        mem[32] = 122
        if stakers[idx].field_256 >= sub_850fa7cb[stor120[idx].field_0].field_0:
            revert with 0, 50
        mem[0] = sha3(stakers[idx].field_0, 122)
        _14 = mem[64]
        mem[64] = mem[64] + 288
        mem[_14] = sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_0
        mem[_14 + 32] = sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_256
        mem[_14 + 64] = sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_512
        mem[_14 + 96] = sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_768
        mem[_14 + 128] = sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_1024
        mem[_14 + 160] = sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_1280
        mem[_14 + 192] = sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_1536
        mem[_14 + 224] = bool(sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_1792)
        mem[_14 + 256] = bool(sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_1800)
        if sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_1024 and sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_0 > -1 / sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_1024:
            revert with 0, 17
        if s > !(sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_1024 * sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_0):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + (sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_1024 * sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_0)
        continue 
    if not totalStaked:
        revert with 0, 18
    return (s * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length / totalStaked)
}

function poolType() payable {
    if bool(stor127.length):
        if bool(stor127.length) == stor127.length.field_1 < 32:
            revert with 0, 34
        if bool(stor127.length):
            if bool(stor127.length) == stor127.length.field_1 < 32:
                revert with 0, 34
            if stor127.length.field_1:
                if 31 < stor127.length.field_1:
                    mem[128] = uint256(stor127.field_0)
                    idx = 128
                    s = 0
                    while stor127.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor127[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor127.length.field_1), data=mem[128 len ceil32(stor127.length.field_1)])
                mem[128] = 256 * stor127.length.field_8
        else:
            if bool(stor127.length) == stor127.length.field_1 < 32:
                revert with 0, 34
            if stor127.length.field_1:
                if 31 < stor127.length.field_1:
                    mem[128] = uint256(stor127.field_0)
                    idx = 128
                    s = 0
                    while stor127.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor127[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor127.length.field_1), data=mem[128 len ceil32(stor127.length.field_1)])
                mem[128] = 256 * stor127.length.field_8
        mem[ceil32(stor127.length.field_1) + 192 len ceil32(stor127.length.field_1)] = mem[128 len ceil32(stor127.length.field_1)]
        if ceil32(stor127.length.field_1) > stor127.length.field_1:
            mem[ceil32(stor127.length.field_1) + stor127.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor127.length.field_1), data=mem[128 len ceil32(stor127.length.field_1)], mem[(2 * ceil32(stor127.length.field_1)) + 192 len 2 * ceil32(stor127.length.field_1)]), 
    if bool(stor127.length) == stor127.length.field_1 < 32:
        revert with 0, 34
    if bool(stor127.length):
        if bool(stor127.length) == stor127.length.field_1 < 32:
            revert with 0, 34
        if stor127.length.field_1:
            if 31 < stor127.length.field_1:
                mem[128] = uint256(stor127.field_0)
                idx = 128
                s = 0
                while stor127.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor127[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor127.length % 128, data=mem[128 len ceil32(stor127.length.field_1)])
            mem[128] = 256 * stor127.length.field_8
    else:
        if bool(stor127.length) == stor127.length.field_1 < 32:
            revert with 0, 34
        if stor127.length.field_1:
            if 31 < stor127.length.field_1:
                mem[128] = uint256(stor127.field_0)
                idx = 128
                s = 0
                while stor127.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor127[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor127.length % 128, data=mem[128 len ceil32(stor127.length.field_1)])
            mem[128] = 256 * stor127.length.field_8
    mem[ceil32(stor127.length.field_1) + 192 len ceil32(stor127.length.field_1)] = mem[128 len ceil32(stor127.length.field_1)]
    if ceil32(stor127.length.field_1) > stor127.length.field_1:
        mem[ceil32(stor127.length.field_1) + stor127.length.field_1 + 192] = 0
    return Array(len=stor127.length % 128, data=mem[128 len ceil32(stor127.length.field_1)], mem[(2 * ceil32(stor127.length.field_1)) + 192 len 2 * ceil32(stor127.length.field_1)]), 
}

function sub_238a6c74(?) payable {
    if bool(stor126.length):
        if bool(stor126.length) == stor126.length.field_1 < 32:
            revert with 0, 34
        if bool(stor126.length):
            if bool(stor126.length) == stor126.length.field_1 < 32:
                revert with 0, 34
            if stor126.length.field_1:
                if 31 < stor126.length.field_1:
                    mem[128] = uint256(stor126.field_0)
                    idx = 128
                    s = 0
                    while stor126.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor126[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor126.length.field_1), data=mem[128 len ceil32(stor126.length.field_1)])
                mem[128] = 256 * stor126.length.field_8
        else:
            if bool(stor126.length) == stor126.length.field_1 < 32:
                revert with 0, 34
            if stor126.length.field_1:
                if 31 < stor126.length.field_1:
                    mem[128] = uint256(stor126.field_0)
                    idx = 128
                    s = 0
                    while stor126.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor126[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor126.length.field_1), data=mem[128 len ceil32(stor126.length.field_1)])
                mem[128] = 256 * stor126.length.field_8
        mem[ceil32(stor126.length.field_1) + 192 len ceil32(stor126.length.field_1)] = mem[128 len ceil32(stor126.length.field_1)]
        if ceil32(stor126.length.field_1) > stor126.length.field_1:
            mem[ceil32(stor126.length.field_1) + stor126.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor126.length.field_1), data=mem[128 len ceil32(stor126.length.field_1)], mem[(2 * ceil32(stor126.length.field_1)) + 192 len 2 * ceil32(stor126.length.field_1)]), 
    if bool(stor126.length) == stor126.length.field_1 < 32:
        revert with 0, 34
    if bool(stor126.length):
        if bool(stor126.length) == stor126.length.field_1 < 32:
            revert with 0, 34
        if stor126.length.field_1:
            if 31 < stor126.length.field_1:
                mem[128] = uint256(stor126.field_0)
                idx = 128
                s = 0
                while stor126.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor126[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor126.length % 128, data=mem[128 len ceil32(stor126.length.field_1)])
            mem[128] = 256 * stor126.length.field_8
    else:
        if bool(stor126.length) == stor126.length.field_1 < 32:
            revert with 0, 34
        if stor126.length.field_1:
            if 31 < stor126.length.field_1:
                mem[128] = uint256(stor126.field_0)
                idx = 128
                s = 0
                while stor126.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor126[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor126.length % 128, data=mem[128 len ceil32(stor126.length.field_1)])
            mem[128] = 256 * stor126.length.field_8
    mem[ceil32(stor126.length.field_1) + 192 len ceil32(stor126.length.field_1)] = mem[128 len ceil32(stor126.length.field_1)]
    if ceil32(stor126.length.field_1) > stor126.length.field_1:
        mem[ceil32(stor126.length.field_1) + stor126.length.field_1 + 192] = 0
    return Array(len=stor126.length % 128, data=mem[128 len ceil32(stor126.length.field_1)], mem[(2 * ceil32(stor126.length.field_1)) + 192 len 2 * ceil32(stor126.length.field_1)]), 
}

function claimReward() payable {
    require ext_code.size(0x3d22ad37588c9052e26d932c0c5ba6851518f062)
    delegate 0x3d22ad37588c9052e26d932c0c5ba6851518f062.0xd4675770 with:
         gas gas_remaining wei
        args sha3(address(msg.sender), 122), 109
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x3d22ad37588c9052e26d932c0c5ba6851518f062)
    delegate 0x3d22ad37588c9052e26d932c0c5ba6851518f062.0x32a1b321 with:
         gas gas_remaining wei
        args sha3(address(msg.sender), 122), 109, 119
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if delegate.return_data[0] > !delegate.return_data[0]:
        revert with 0, 17
    if isMatured:
        if sub_73f31703:
            if delegate.return_data[32]:
                require ext_code.size(0x3d22ad37588c9052e26d932c0c5ba6851518f062)
                delegate 0x3d22ad37588c9052e26d932c0c5ba6851518f062.0x47dc9eee with:
                     gas gas_remaining wei
                    args sha3(address(msg.sender), 122)
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(wrappedTokenAddress)
                call wrappedTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, delegate.return_data[32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, '0320'
                emit 0xd93fc6d1: delegate.return_data[32], msg.sender
        if delegate.return_data[0]:
            require ext_code.size(0x3d22ad37588c9052e26d932c0c5ba6851518f062)
            delegate 0x3d22ad37588c9052e26d932c0c5ba6851518f062.0x47dc9eee with:
                 gas gas_remaining wei
                args sha3(address(msg.sender), 122)
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x8bb1fb368152c5c2b772e1c5c0d6b506c330d41f)
        delegate 0x8bb1fb368152c5c2b772e1c5c0d6b506c330d41f.0x66f1dee with:
             gas gas_remaining wei
            args sha3(address(msg.sender), 122)
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if delegate.return_data[0]:
            require ext_code.size(0x3d22ad37588c9052e26d932c0c5ba6851518f062)
            delegate 0x3d22ad37588c9052e26d932c0c5ba6851518f062.0xf66d9a4d with:
                 gas gas_remaining wei
                args sha3(address(msg.sender), 122)
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_e8153c93Address)
            call sub_e8153c93Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, delegate.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit Unstake(delegate.return_data[0], msg.sender);
    if uint255(delegate.return_data[0]):
        require ext_code.size(sub_e8153c93Address)
        staticcall sub_e8153c93Address.0x70a08231 with:
                gas gas_remaining wei
               args rewardManagerAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 2 * delegate.return_data[0]:
            revert with 0, 'Not enough balance in reward manager'
        require ext_code.size(0x3d22ad37588c9052e26d932c0c5ba6851518f062)
        delegate 0x3d22ad37588c9052e26d932c0c5ba6851518f062.0x4142c652 with:
             gas gas_remaining wei
            args sha3(address(msg.sender), 122), 109
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(rewardManagerAddress)
        call rewardManagerAddress.rewardUser(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, 2 * delegate.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x115e2fe7: delegate.return_data[0], msg.sender
        emit WithdrawTotemPrize(delegate.return_data[0], msg.sender);
}

function indexedClaimReward(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_850fa7cb[address(msg.sender)].field_0 < arg1:
        revert with 0, 'Index does not exist'
    if not sub_850fa7cb[address(msg.sender)].field_0:
        revert with 0, 'User does not have any stakes'
    require ext_code.size(0x77d1b776f3b99b85fbe0fc777008abcac3a12c20)
    delegate 0x77d1b776f3b99b85fbe0fc777008abcac3a12c20.0x4f160423 with:
         gas gas_remaining wei
        args sha3(address(msg.sender), 122), arg1, 109
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x77d1b776f3b99b85fbe0fc777008abcac3a12c20)
    delegate 0x77d1b776f3b99b85fbe0fc777008abcac3a12c20.0xf7ac9cba with:
         gas gas_remaining wei
        args sha3(address(msg.sender), 122), arg1, 109, 119
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if delegate.return_data[0] > !delegate.return_data[0]:
        revert with 0, 17
    if isMatured:
        if sub_73f31703:
            if delegate.return_data[32]:
                require ext_code.size(0x77d1b776f3b99b85fbe0fc777008abcac3a12c20)
                delegate 0x77d1b776f3b99b85fbe0fc777008abcac3a12c20.0x93aaeaf9 with:
                     gas gas_remaining wei
                    args sha3(address(msg.sender), 122), arg1
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(wrappedTokenAddress)
                call wrappedTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, delegate.return_data[32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, '0330'
                emit 0xd93fc6d1: delegate.return_data[32], msg.sender
        require ext_code.size(0x77d1b776f3b99b85fbe0fc777008abcac3a12c20)
        if delegate.return_data[0]:
            delegate 0x77d1b776f3b99b85fbe0fc777008abcac3a12c20.0x93aaeaf9 with:
                 gas gas_remaining wei
                args sha3(address(msg.sender), 122), arg1
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
        delegate 0x77d1b776f3b99b85fbe0fc777008abcac3a12c20.0x5eac7af3 with:
             gas gas_remaining wei
            args sha3(address(msg.sender), 122), arg1
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if delegate.return_data[0]:
            require ext_code.size(0x77d1b776f3b99b85fbe0fc777008abcac3a12c20)
            delegate 0x77d1b776f3b99b85fbe0fc777008abcac3a12c20.0xec8ecc02 with:
                 gas gas_remaining wei
                args sha3(address(msg.sender), 122), arg1
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_e8153c93Address)
            call sub_e8153c93Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, delegate.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit Unstake(delegate.return_data[0], msg.sender);
    if uint255(delegate.return_data[0]):
        require ext_code.size(sub_e8153c93Address)
        staticcall sub_e8153c93Address.0x70a08231 with:
                gas gas_remaining wei
               args rewardManagerAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 2 * delegate.return_data[0]:
            revert with 0, 'Not enough balance in reward manager'
        require ext_code.size(0x77d1b776f3b99b85fbe0fc777008abcac3a12c20)
        delegate 0x77d1b776f3b99b85fbe0fc777008abcac3a12c20.0xeaff3050 with:
             gas gas_remaining wei
            args sha3(address(msg.sender), 122), arg1, 109
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(rewardManagerAddress)
        call rewardManagerAddress.rewardUser(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, 2 * delegate.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x115e2fe7: delegate.return_data[0], msg.sender
        emit WithdrawTotemPrize(delegate.return_data[0], msg.sender);
}

function purchaseWrappedToken(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if sub_c6c1decdAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '0300 caller is not a pool creator'
    if sub_73f31703 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '0340 The pool is only TOTM rewarder'
    if arg1 <= 0:
        revert with 0, '0341 Amount can't be zero'
    if arg2 < block.timestamp:
        revert with 0, '0342 Deadline is low'
    mem[100] = swapRouterAddress
    mem[132] = arg1
    require ext_code.size(uSDTokenAddress)
    call uSDTokenAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args swapRouterAddress, arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit ApproveTokens(arg1, swapRouterAddress);
    mem[ceil32(return_data.size) + 96] = 2
    mem[ceil32(return_data.size) + 128] = stor104
    mem[ceil32(return_data.size) + 160] = stor105
    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg1
    mem[ceil32(return_data.size) + 228] = 64
    mem[ceil32(return_data.size) + 260] = 2
    idx = 0
    s = ceil32(return_data.size) + 128
    t = ceil32(return_data.size) + 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(swapRouterAddress)
    staticcall swapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _44 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _45 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
        revert with 0, 65
    if (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 < 0:
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
    mem[(2 * ceil32(return_data.size)) + 192] = _45
    require return_data.size >= _44 + (32 * _45) + 32
    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _45] = mem[ceil32(return_data.size) + _44 + 224 len 32 * _45]
    if 1 >= _45:
        revert with 0, 50
    _64 = mem[(2 * ceil32(return_data.size)) + 256]
    if mem[(2 * ceil32(return_data.size)) + 256] and 300 > -1 / mem[(2 * ceil32(return_data.size)) + 256]:
        revert with 0, 17
    if mem[(2 * ceil32(return_data.size)) + 256] < 300 * mem[(2 * ceil32(return_data.size)) + 256] / 10000:
        revert with 0, 17
    require this.address
    _65 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if not mem[_65]:
        revert with 0, 50
    mem[_65 + 32] = stor104
    if 1 >= mem[_65]:
        revert with 0, 50
    mem[_65 + 64] = stor105
    mem[_65 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[_65 + 100] = arg1
    mem[_65 + 132] = _64 - (300 * _64 / 10000)
    mem[_65 + 164] = 160
    mem[_65 + 260] = mem[_65]
    idx = 0
    s = _65 + 32
    t = _65 + 292
    while idx < mem[_65]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_65 + 196] = this.address
    mem[_65 + 228] = arg2
    require ext_code.size(swapRouterAddress)
    call swapRouterAddress.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _65 + (32 * mem[_65]) + -mem[64] + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _79 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_79] <= test266151307()
    require _79 + mem[_79] + 31 < _79 + return_data.size
    if mem[_79 + mem[_79]] > test266151307():
        revert with 0, 65
    if _79 + ceil32(return_data.size) + (32 * mem[_79 + mem[_79]]) + 32 > test266151307() or (32 * mem[_79 + mem[_79]]) + 32 < 0:
        revert with 0, 65
    require return_data.size >= mem[_79] + (32 * mem[_79 + mem[_79]]) + 32
}

function stake(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not isActive:
        revert with 0, '0313 pool is not active'
    if block.timestamp <= launchDate:
        revert with 0, '0313 pool is not active'
    if launchDate > !lockTime:
        revert with 0, 17
    if block.timestamp >= launchDate + lockTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '0316 Can not stake after lock date'
    if isLocked:
        revert with 0, '0310 Pool is locked'
    if arg1 < minimumStakeAmount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '0311 Amount can't be less than the minimum'
    if sub_51eacbf0 and 5 > -1 / sub_51eacbf0:
        revert with 0, 17
    require ext_code.size(sub_e8153c93Address)
    call sub_e8153c93Address.taxRate() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_e8153c93Address)
    call sub_e8153c93Address.taxExempt(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        if sub_51eacbf0 > !(5 * sub_51eacbf0 / 100):
            revert with 0, 17
        if totalStaked > !arg1:
            revert with 0, 17
        if totalStaked + arg1 < 0:
            revert with 0, 17
        if totalStaked + arg1 > sub_51eacbf0 + (5 * sub_51eacbf0 / 100):
            revert with 0, '0312 Can't stake above size allocation'
        if sub_6847d0c5 <= ext_call.return_data[0]:
            if arg1 > -1:
                revert with 0, 17
            require ext_code.size(sub_e8153c93Address)
            call sub_e8153c93Address.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if arg1 < 0:
                revert with 0, 17
            if totalStaked > !arg1:
                revert with 0, 17
            totalStaked += arg1
            stakers.length++
            stakers[stakers.length].field_0 = msg.sender
            stakers[stakers.length].field_256 = sub_850fa7cb[address(msg.sender)].field_0
            sub_850fa7cb[address(msg.sender)].field_0++
            sub_850fa7cb[address(msg.sender)][sub_850fa7cb[address(msg.sender)].field_0].field_0 = arg1
            sub_850fa7cb[address(msg.sender)][sub_850fa7cb[address(msg.sender)].field_0].field_256 = block.timestamp
            sub_850fa7cb[address(msg.sender)][sub_850fa7cb[address(msg.sender)].field_0].field_512 = 0
            sub_850fa7cb[address(msg.sender)][sub_850fa7cb[address(msg.sender)].field_0].field_768 = block.timestamp
            sub_850fa7cb[address(msg.sender)][sub_850fa7cb[address(msg.sender)].field_0].field_1024 = arg2
            sub_850fa7cb[address(msg.sender)][sub_850fa7cb[address(msg.sender)].field_0].field_1280 = -1
            sub_850fa7cb[address(msg.sender)][sub_850fa7cb[address(msg.sender)].field_0].field_1536 = -1
            sub_850fa7cb[address(msg.sender)][sub_850fa7cb[address(msg.sender)].field_0].field_1792 = 0
            sub_850fa7cb[address(msg.sender)][sub_850fa7cb[address(msg.sender)].field_0].field_1800 = 0
            if totalStaked >= sub_51eacbf0:
                isLocked = 1
                emit PoolLocked()
            emit Stake(arg1, arg2, sub_850fa7cb[address(msg.sender)].field_0, msg.sender);
        else:
            if sub_6847d0c5 < ext_call.return_data[0]:
                revert with 0, 17
            if not sub_6847d0c5 - ext_call.return_data[0]:
                if arg1 > -1:
                    revert with 0, 17
                require ext_code.size(sub_e8153c93Address)
                call sub_e8153c93Address.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if arg1 < 0:
                    revert with 0, 17
                if totalStaked > !arg1:
                    revert with 0, 17
                totalStaked += arg1
                stakers.length++
                stakers[stakers.length].field_0 = msg.sender
                stakers[stakers.length].field_256 = sub_850fa7cb[address(msg.sender)].field_0
                sub_850fa7cb[address(msg.sender)].field_0++
                sub_850fa7cb[address(msg.sender)][sub_850fa7cb[address(msg.sender)].field_0].field_0 = arg1
                sub_850fa7cb[address(msg.sender)][sub_850fa7cb[address(msg.sender)].field_0].field_256 = block.timestamp
                sub_850fa7cb[address(msg.sender)][sub_850fa7cb[address(msg.sender)].field_0].field_512 = 0
                sub_850fa7cb[address(msg.sender)][sub_850fa7cb[address(msg.sender)].field_0].field_768 = block.timestamp
                sub_850fa7cb[address(msg.sender)][sub_850fa7cb[address(msg.sender)].field_0].field_1024 = arg2
                sub_850fa7cb[address(msg.sender)][sub_850fa7cb[address(msg.sender)].field_0].field_1280 = -1
                sub_850fa7cb[address(msg.sender)][sub_850fa7cb[address(msg.sender)].field_0].field_1536 = -1
                sub_850fa7cb[address(msg.sender)][sub_850fa7cb[address(msg.sender)].field_0].field_1792 = 0
                sub_850fa7cb[address(msg.sender)][sub_850fa7cb[address(msg.sender)].field_0].field_1800 = 0
                if totalStaked >= sub_51eacbf0:
                    isLocked = 1
                    emit PoolLocked()
                emit Stake(arg1, arg2, sub_850fa7cb[address(msg.sender)].field_0, msg.sender);
            else:
                if arg1 and sub_6847d0c5 - ext_call.return_data[0] > -1 / arg1:
                    revert with 0, 17
                if arg1 and sub_6847d0c5 - ext_call.return_data[0] > -1 / arg1:
                    revert with 0, 17
                if arg1 < (sub_6847d0c5 * arg1) - (ext_call.return_data[0] * arg1) / 10000:
                    revert with 0, 17
                if arg1 - ((sub_6847d0c5 * arg1) - (ext_call.return_data[0] * arg1) / 10000) > !((sub_6847d0c5 * arg1) - (ext_call.return_data[0] * arg1) / 10000):
                    revert with 0, 17
                require ext_code.size(sub_e8153c93Address)
                call sub_e8153c93Address.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if arg1 - ((sub_6847d0c5 * arg1) - (ext_call.return_data[0] * arg1) / 10000) < 0:
                    revert with 0, 17
                if (sub_6847d0c5 * arg1) - (ext_call.return_data[0] * arg1) / 10000:
                    require ext_code.size(sub_e8153c93Address)
                    call sub_e8153c93Address.0x4a5db0a9 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(sub_e8153c93Address)
                    call sub_e8153c93Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), (sub_6847d0c5 * arg1) - (ext_call.return_data[0] * arg1) / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if totalStaked > !(arg1 - ((sub_6847d0c5 * arg1) - (ext_call.return_data[0] * arg1) / 10000)):
                    revert with 0, 17
                totalStaked = totalStaked + arg1 - ((sub_6847d0c5 * arg1) - (ext_call.return_data[0] * arg1) / 10000)
                stakers.length++
                stakers[stakers.length].field_0 = msg.sender
                stakers[stakers.length].field_256 = sub_850fa7cb[address(msg.sender)].field_0
                sub_850fa7cb[address(msg.sender)].field_0++
                sub_850fa7cb[address(msg.sender)][sub_850fa7cb[address(msg.sender)].field_0].field_0 = arg1 - ((sub_6847d0c5 * arg1) - (ext_call.return_data[0] * arg1) / 10000)
                sub_850fa7cb[address(msg.sender)][sub_850fa7cb[address(msg.sender)].field_0].field_256 = block.timestamp
                sub_850fa7cb[address(msg.sender)][sub_850fa7cb[address(msg.sender)].field_0].field_512 = 0
                sub_850fa7cb[address(msg.sender)][sub_850fa7cb[address(msg.sender)].field_0].field_768 = block.timestamp
                sub_850fa7cb[address(msg.sender)][sub_850fa7cb[address(msg.sender)].field_0].field_1024 = arg2
                sub_850fa7cb[address(msg.sender)][sub_850fa7cb[address(msg.sender)].field_0].field_1280 = -1
                sub_850fa7cb[address(msg.sender)][sub_850fa7cb[address(msg.sender)].field_0].field_1536 = -1
                sub_850fa7cb[address(msg.sender)][sub_850fa7cb[address(msg.sender)].field_0].field_1792 = 0
                sub_850fa7cb[address(msg.sender)][sub_850fa7cb[address(msg.sender)].field_0].field_1800 = 0
                if totalStaked >= sub_51eacbf0:
                    isLocked = 1
                    emit PoolLocked()
                emit Stake(arg1 - ((sub_6847d0c5 * arg1) - (ext_call.return_data[0] * arg1) / 10000), arg2, sub_850fa7cb[address(msg.sender)].field_0, msg.sender);
    else:
        if arg1 and ext_call.return_data[0] > -1 / arg1:
            revert with 0, 17
        if sub_51eacbf0 > !(5 * sub_51eacbf0 / 100):
            revert with 0, 17
        if totalStaked > !arg1:
            revert with 0, 17
        if totalStaked + arg1 < arg1 * ext_call.return_data[0] / 10000:
            revert with 0, 17
        if totalStaked + arg1 - (arg1 * ext_call.return_data[0] / 10000) > sub_51eacbf0 + (5 * sub_51eacbf0 / 100):
            revert with 0, '0312 Can't stake above size allocation'
        if sub_6847d0c5 <= ext_call.return_data[0]:
            if arg1 > -1:
                revert with 0, 17
            require ext_code.size(sub_e8153c93Address)
            call sub_e8153c93Address.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if arg1 < arg1 * ext_call.return_data[0] / 10000:
                revert with 0, 17
            if totalStaked > !(arg1 - (arg1 * ext_call.return_data[0] / 10000)):
                revert with 0, 17
            totalStaked = totalStaked + arg1 - (arg1 * ext_call.return_data[0] / 10000)
            stakers.length++
            stakers[stakers.length].field_0 = msg.sender
            stakers[stakers.length].field_256 = sub_850fa7cb[address(msg.sender)].field_0
            sub_850fa7cb[address(msg.sender)].field_0++
            sub_850fa7cb[address(msg.sender)][sub_850fa7cb[address(msg.sender)].field_0].field_0 = arg1 - (arg1 * ext_call.return_data[0] / 10000)
            sub_850fa7cb[address(msg.sender)][sub_850fa7cb[address(msg.sender)].field_0].field_256 = block.timestamp
            sub_850fa7cb[address(msg.sender)][sub_850fa7cb[address(msg.sender)].field_0].field_512 = 0
            sub_850fa7cb[address(msg.sender)][sub_850fa7cb[address(msg.sender)].field_0].field_768 = block.timestamp
            sub_850fa7cb[address(msg.sender)][sub_850fa7cb[address(msg.sender)].field_0].field_1024 = arg2
            sub_850fa7cb[address(msg.sender)][sub_850fa7cb[address(msg.sender)].field_0].field_1280 = -1
            sub_850fa7cb[address(msg.sender)][sub_850fa7cb[address(msg.sender)].field_0].field_1536 = -1
            sub_850fa7cb[address(msg.sender)][sub_850fa7cb[address(msg.sender)].field_0].field_1792 = 0
            sub_850fa7cb[address(msg.sender)][sub_850fa7cb[address(msg.sender)].field_0].field_1800 = 0
            if totalStaked >= sub_51eacbf0:
                isLocked = 1
                emit PoolLocked()
            emit Stake(arg1 - (arg1 * ext_call.return_data[0] / 10000), arg2, sub_850fa7cb[address(msg.sender)].field_0, msg.sender);
        else:
            if sub_6847d0c5 < ext_call.return_data[0]:
                revert with 0, 17
            if not sub_6847d0c5 - ext_call.return_data[0]:
                if arg1 > -1:
                    revert with 0, 17
                require ext_code.size(sub_e8153c93Address)
                call sub_e8153c93Address.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if arg1 < arg1 * ext_call.return_data[0] / 10000:
                    revert with 0, 17
                if totalStaked > !(arg1 - (arg1 * ext_call.return_data[0] / 10000)):
                    revert with 0, 17
                totalStaked = totalStaked + arg1 - (arg1 * ext_call.return_data[0] / 10000)
                stakers.length++
                stakers[stakers.length].field_0 = msg.sender
                stakers[stakers.length].field_256 = sub_850fa7cb[address(msg.sender)].field_0
                sub_850fa7cb[address(msg.sender)].field_0++
                sub_850fa7cb[address(msg.sender)][sub_850fa7cb[address(msg.sender)].field_0].field_0 = arg1 - (arg1 * ext_call.return_data[0] / 10000)
                sub_850fa7cb[address(msg.sender)][sub_850fa7cb[address(msg.sender)].field_0].field_256 = block.timestamp
                sub_850fa7cb[address(msg.sender)][sub_850fa7cb[address(msg.sender)].field_0].field_512 = 0
                sub_850fa7cb[address(msg.sender)][sub_850fa7cb[address(msg.sender)].field_0].field_768 = block.timestamp
                sub_850fa7cb[address(msg.sender)][sub_850fa7cb[address(msg.sender)].field_0].field_1024 = arg2
                sub_850fa7cb[address(msg.sender)][sub_850fa7cb[address(msg.sender)].field_0].field_1280 = -1
                sub_850fa7cb[address(msg.sender)][sub_850fa7cb[address(msg.sender)].field_0].field_1536 = -1
                sub_850fa7cb[address(msg.sender)][sub_850fa7cb[address(msg.sender)].field_0].field_1792 = 0
                sub_850fa7cb[address(msg.sender)][sub_850fa7cb[address(msg.sender)].field_0].field_1800 = 0
                if totalStaked >= sub_51eacbf0:
                    isLocked = 1
                    emit PoolLocked()
                emit Stake(arg1 - (arg1 * ext_call.return_data[0] / 10000), arg2, sub_850fa7cb[address(msg.sender)].field_0, msg.sender);
            else:
                if arg1 and sub_6847d0c5 - ext_call.return_data[0] > -1 / arg1:
                    revert with 0, 17
                if arg1 and sub_6847d0c5 - ext_call.return_data[0] > -1 / arg1:
                    revert with 0, 17
                if arg1 < (sub_6847d0c5 * arg1) - (ext_call.return_data[0] * arg1) / 10000:
                    revert with 0, 17
                if arg1 - ((sub_6847d0c5 * arg1) - (ext_call.return_data[0] * arg1) / 10000) > !((sub_6847d0c5 * arg1) - (ext_call.return_data[0] * arg1) / 10000):
                    revert with 0, 17
                require ext_code.size(sub_e8153c93Address)
                call sub_e8153c93Address.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if arg1 - ((sub_6847d0c5 * arg1) - (ext_call.return_data[0] * arg1) / 10000) < arg1 * ext_call.return_data[0] / 10000:
                    revert with 0, 17
                if (sub_6847d0c5 * arg1) - (ext_call.return_data[0] * arg1) / 10000:
                    require ext_code.size(sub_e8153c93Address)
                    call sub_e8153c93Address.0x4a5db0a9 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(sub_e8153c93Address)
                    call sub_e8153c93Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), (sub_6847d0c5 * arg1) - (ext_call.return_data[0] * arg1) / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if totalStaked > !(arg1 - ((sub_6847d0c5 * arg1) - (ext_call.return_data[0] * arg1) / 10000) - (arg1 * ext_call.return_data[0] / 10000)):
                    revert with 0, 17
                totalStaked = totalStaked + arg1 - ((sub_6847d0c5 * arg1) - (ext_call.return_data[0] * arg1) / 10000) - (arg1 * ext_call.return_data[0] / 10000)
                stakers.length++
                stakers[stakers.length].field_0 = msg.sender
                stakers[stakers.length].field_256 = sub_850fa7cb[address(msg.sender)].field_0
                sub_850fa7cb[address(msg.sender)].field_0++
                sub_850fa7cb[address(msg.sender)][sub_850fa7cb[address(msg.sender)].field_0].field_0 = arg1 - ((sub_6847d0c5 * arg1) - (ext_call.return_data[0] * arg1) / 10000) - (arg1 * ext_call.return_data[0] / 10000)
                sub_850fa7cb[address(msg.sender)][sub_850fa7cb[address(msg.sender)].field_0].field_256 = block.timestamp
                sub_850fa7cb[address(msg.sender)][sub_850fa7cb[address(msg.sender)].field_0].field_512 = 0
                sub_850fa7cb[address(msg.sender)][sub_850fa7cb[address(msg.sender)].field_0].field_768 = block.timestamp
                sub_850fa7cb[address(msg.sender)][sub_850fa7cb[address(msg.sender)].field_0].field_1024 = arg2
                sub_850fa7cb[address(msg.sender)][sub_850fa7cb[address(msg.sender)].field_0].field_1280 = -1
                sub_850fa7cb[address(msg.sender)][sub_850fa7cb[address(msg.sender)].field_0].field_1536 = -1
                sub_850fa7cb[address(msg.sender)][sub_850fa7cb[address(msg.sender)].field_0].field_1792 = 0
                sub_850fa7cb[address(msg.sender)][sub_850fa7cb[address(msg.sender)].field_0].field_1800 = 0
                if totalStaked >= sub_51eacbf0:
                    isLocked = 1
                    emit PoolLocked()
                emit Stake(arg1 - ((sub_6847d0c5 * arg1) - (ext_call.return_data[0] * arg1) / 10000) - (arg1 * ext_call.return_data[0] / 10000), arg2, sub_850fa7cb[address(msg.sender)].field_0, msg.sender);
}

function endPool() payable {
    mem[64] = 96
    if sub_c6c1decdAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '0300 caller is not a pool creator'
    if launchDate > !lockTime:
        revert with 0, 17
    if launchDate + lockTime > !maturityTime:
        revert with 0, 17
    if block.timestamp < launchDate + lockTime + maturityTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '0360 Can't end pool before the maturity time'
    if not sub_73f31703:
        if not stakers.length:
            if sub_e425df8c:
                if 0 == totalStaked:
                    if sub_eb850ae1 > 0:
                        sub_f3d9dc0d = sub_e425df8c
                        stor116 = sub_e425df8c
                    else:
                        if 0 <= sub_d025188b:
                            if 0 > !sub_eb850ae1:
                                revert with 0, 17
                            if sub_eb850ae1 >= sub_d025188b:
                                sub_f3d9dc0d = sub_e425df8c
                                stor116 = sub_e425df8c
                            else:
                                if 0 > !sub_eb850ae1:
                                    revert with 0, 17
                                if sub_d025188b < sub_eb850ae1:
                                    revert with 0, 17
                                if not sub_d025188b - sub_eb850ae1:
                                    sub_f3d9dc0d = sub_e425df8c
                                    stor116 = sub_e425df8c
                        else:
                            if 0 < sub_eb850ae1:
                                revert with 0, 17
                            if -sub_eb850ae1 <= sub_d025188b:
                                sub_f3d9dc0d = sub_e425df8c
                                stor116 = sub_e425df8c
                            else:
                                if 0 < sub_eb850ae1:
                                    revert with 0, 17
                                if -sub_eb850ae1 < sub_d025188b:
                                    revert with 0, 17
                                if not -sub_eb850ae1 - sub_d025188b:
                                    sub_f3d9dc0d = sub_e425df8c
                                    stor116 = sub_e425df8c
                else:
                    idx = 0
                    s = 0
                    while idx < stakers.length:
                        mem[32] = 122
                        if stakers[idx].field_256 >= sub_850fa7cb[stor120[idx].field_0].field_0:
                            revert with 0, 50
                        mem[0] = sha3(stakers[idx].field_0, 122)
                        _652 = mem[64]
                        mem[64] = mem[64] + 288
                        mem[_652] = sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_0
                        mem[_652 + 32] = sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_256
                        mem[_652 + 64] = sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_512
                        mem[_652 + 96] = sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_768
                        mem[_652 + 128] = sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_1024
                        mem[_652 + 160] = sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_1280
                        mem[_652 + 192] = sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_1536
                        mem[_652 + 224] = bool(sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_1792)
                        mem[_652 + 256] = bool(sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_1800)
                        if sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_1024 and sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_0 > -1 / sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_1024:
                            revert with 0, 17
                        if s > !(sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_1024 * sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_0):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_1024 * sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_0)
                        continue 
                    if not totalStaked:
                        revert with 0, 18
                    if sub_eb850ae1 > s * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length / totalStaked:
                        sub_f3d9dc0d = sub_e425df8c
                        stor116 = sub_e425df8c
                    else:
                        if s * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length / totalStaked <= sub_d025188b:
                            if s * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length / totalStaked > !sub_eb850ae1:
                                revert with 0, 17
                            if (s * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length / totalStaked) + sub_eb850ae1 >= sub_d025188b:
                                sub_f3d9dc0d = sub_e425df8c
                                stor116 = sub_e425df8c
                            else:
                                if s * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length / totalStaked > !sub_eb850ae1:
                                    revert with 0, 17
                                if sub_d025188b < (s * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length / totalStaked) + sub_eb850ae1:
                                    revert with 0, 17
                                if not sub_d025188b - (s * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length / totalStaked) - sub_eb850ae1:
                                    sub_f3d9dc0d = sub_e425df8c
                                    stor116 = sub_e425df8c
                        else:
                            if s * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length / totalStaked < sub_eb850ae1:
                                revert with 0, 17
                            if (s * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length / totalStaked) - sub_eb850ae1 <= sub_d025188b:
                                sub_f3d9dc0d = sub_e425df8c
                                stor116 = sub_e425df8c
                            else:
                                if s * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length / totalStaked < sub_eb850ae1:
                                    revert with 0, 17
                                if (s * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length / totalStaked) - sub_eb850ae1 < sub_d025188b:
                                    revert with 0, 17
                                if not (s * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length / totalStaked) - sub_eb850ae1 - sub_d025188b:
                                    sub_f3d9dc0d = sub_e425df8c
                                    stor116 = sub_e425df8c
        else:
            if not sub_de09ee20.length:
                revert with 0, '0362 first should sort'
            if sub_e425df8c:
                if 0 == totalStaked:
                    if sub_eb850ae1 > 0:
                        sub_f3d9dc0d = sub_e425df8c
                        stor116 = sub_e425df8c
                    else:
                        if 0 <= sub_d025188b:
                            if 0 > !sub_eb850ae1:
                                revert with 0, 17
                            if sub_eb850ae1 >= sub_d025188b:
                                sub_f3d9dc0d = sub_e425df8c
                                stor116 = sub_e425df8c
                            else:
                                if 0 > !sub_eb850ae1:
                                    revert with 0, 17
                                if sub_d025188b < sub_eb850ae1:
                                    revert with 0, 17
                                if not sub_d025188b - sub_eb850ae1:
                                    sub_f3d9dc0d = sub_e425df8c
                                    stor116 = sub_e425df8c
                        else:
                            if 0 < sub_eb850ae1:
                                revert with 0, 17
                            if -sub_eb850ae1 <= sub_d025188b:
                                sub_f3d9dc0d = sub_e425df8c
                                stor116 = sub_e425df8c
                            else:
                                if 0 < sub_eb850ae1:
                                    revert with 0, 17
                                if -sub_eb850ae1 < sub_d025188b:
                                    revert with 0, 17
                                if not -sub_eb850ae1 - sub_d025188b:
                                    sub_f3d9dc0d = sub_e425df8c
                                    stor116 = sub_e425df8c
                else:
                    idx = 0
                    s = 0
                    while idx < stakers.length:
                        mem[32] = 122
                        if stakers[idx].field_256 >= sub_850fa7cb[stor120[idx].field_0].field_0:
                            revert with 0, 50
                        mem[0] = sha3(stakers[idx].field_0, 122)
                        _654 = mem[64]
                        mem[64] = mem[64] + 288
                        mem[_654] = sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_0
                        mem[_654 + 32] = sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_256
                        mem[_654 + 64] = sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_512
                        mem[_654 + 96] = sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_768
                        mem[_654 + 128] = sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_1024
                        mem[_654 + 160] = sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_1280
                        mem[_654 + 192] = sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_1536
                        mem[_654 + 224] = bool(sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_1792)
                        mem[_654 + 256] = bool(sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_1800)
                        if sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_1024 and sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_0 > -1 / sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_1024:
                            revert with 0, 17
                        if s > !(sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_1024 * sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_0):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_1024 * sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_0)
                        continue 
                    if not totalStaked:
                        revert with 0, 18
                    if sub_eb850ae1 > s * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length / totalStaked:
                        sub_f3d9dc0d = sub_e425df8c
                        stor116 = sub_e425df8c
                    else:
                        if s * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length / totalStaked <= sub_d025188b:
                            if s * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length / totalStaked > !sub_eb850ae1:
                                revert with 0, 17
                            if (s * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length / totalStaked) + sub_eb850ae1 >= sub_d025188b:
                                sub_f3d9dc0d = sub_e425df8c
                                stor116 = sub_e425df8c
                            else:
                                if s * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length / totalStaked > !sub_eb850ae1:
                                    revert with 0, 17
                                if sub_d025188b < (s * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length / totalStaked) + sub_eb850ae1:
                                    revert with 0, 17
                                if not sub_d025188b - (s * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length / totalStaked) - sub_eb850ae1:
                                    sub_f3d9dc0d = sub_e425df8c
                                    stor116 = sub_e425df8c
                        else:
                            if s * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length / totalStaked < sub_eb850ae1:
                                revert with 0, 17
                            if (s * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length / totalStaked) - sub_eb850ae1 <= sub_d025188b:
                                sub_f3d9dc0d = sub_e425df8c
                                stor116 = sub_e425df8c
                            else:
                                if s * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length / totalStaked < sub_eb850ae1:
                                    revert with 0, 17
                                if (s * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length / totalStaked) - sub_eb850ae1 < sub_d025188b:
                                    revert with 0, 17
                                if not (s * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length / totalStaked) - sub_eb850ae1 - sub_d025188b:
                                    sub_f3d9dc0d = sub_e425df8c
                                    stor116 = sub_e425df8c
    else:
        require ext_code.size(wrappedTokenAddress)
        staticcall wrappedTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, '0361 WrappedToken Rewards not available'
        if not stakers.length:
            if sub_e425df8c:
                if 0 == totalStaked:
                    if sub_eb850ae1 > 0:
                        sub_f3d9dc0d = sub_e425df8c
                        stor116 = sub_e425df8c
                    else:
                        if 0 <= sub_d025188b:
                            if 0 > !sub_eb850ae1:
                                revert with 0, 17
                            if sub_eb850ae1 >= sub_d025188b:
                                sub_f3d9dc0d = sub_e425df8c
                                stor116 = sub_e425df8c
                            else:
                                if 0 > !sub_eb850ae1:
                                    revert with 0, 17
                                if sub_d025188b < sub_eb850ae1:
                                    revert with 0, 17
                                if not sub_d025188b - sub_eb850ae1:
                                    sub_f3d9dc0d = sub_e425df8c
                                    stor116 = sub_e425df8c
                        else:
                            if 0 < sub_eb850ae1:
                                revert with 0, 17
                            if -sub_eb850ae1 <= sub_d025188b:
                                sub_f3d9dc0d = sub_e425df8c
                                stor116 = sub_e425df8c
                            else:
                                if 0 < sub_eb850ae1:
                                    revert with 0, 17
                                if -sub_eb850ae1 < sub_d025188b:
                                    revert with 0, 17
                                if not -sub_eb850ae1 - sub_d025188b:
                                    sub_f3d9dc0d = sub_e425df8c
                                    stor116 = sub_e425df8c
                else:
                    idx = 0
                    s = 0
                    while idx < stakers.length:
                        mem[32] = 122
                        if stakers[idx].field_256 >= sub_850fa7cb[stor120[idx].field_0].field_0:
                            revert with 0, 50
                        mem[0] = sha3(stakers[idx].field_0, 122)
                        _656 = mem[64]
                        mem[64] = mem[64] + 288
                        mem[_656] = sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_0
                        mem[_656 + 32] = sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_256
                        mem[_656 + 64] = sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_512
                        mem[_656 + 96] = sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_768
                        mem[_656 + 128] = sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_1024
                        mem[_656 + 160] = sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_1280
                        mem[_656 + 192] = sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_1536
                        mem[_656 + 224] = bool(sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_1792)
                        mem[_656 + 256] = bool(sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_1800)
                        if sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_1024 and sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_0 > -1 / sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_1024:
                            revert with 0, 17
                        if s > !(sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_1024 * sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_0):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_1024 * sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_0)
                        continue 
                    if not totalStaked:
                        revert with 0, 18
                    if sub_eb850ae1 > s * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length / totalStaked:
                        sub_f3d9dc0d = sub_e425df8c
                        stor116 = sub_e425df8c
                    else:
                        if s * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length / totalStaked <= sub_d025188b:
                            if s * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length / totalStaked > !sub_eb850ae1:
                                revert with 0, 17
                            if (s * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length / totalStaked) + sub_eb850ae1 >= sub_d025188b:
                                sub_f3d9dc0d = sub_e425df8c
                                stor116 = sub_e425df8c
                            else:
                                if s * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length / totalStaked > !sub_eb850ae1:
                                    revert with 0, 17
                                if sub_d025188b < (s * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length / totalStaked) + sub_eb850ae1:
                                    revert with 0, 17
                                if not sub_d025188b - (s * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length / totalStaked) - sub_eb850ae1:
                                    sub_f3d9dc0d = sub_e425df8c
                                    stor116 = sub_e425df8c
                        else:
                            if s * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length / totalStaked < sub_eb850ae1:
                                revert with 0, 17
                            if (s * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length / totalStaked) - sub_eb850ae1 <= sub_d025188b:
                                sub_f3d9dc0d = sub_e425df8c
                                stor116 = sub_e425df8c
                            else:
                                if s * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length / totalStaked < sub_eb850ae1:
                                    revert with 0, 17
                                if (s * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length / totalStaked) - sub_eb850ae1 < sub_d025188b:
                                    revert with 0, 17
                                if not (s * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length / totalStaked) - sub_eb850ae1 - sub_d025188b:
                                    sub_f3d9dc0d = sub_e425df8c
                                    stor116 = sub_e425df8c
        else:
            if not sub_de09ee20.length:
                revert with 0, '0362 first should sort'
            if sub_e425df8c:
                if 0 == totalStaked:
                    if sub_eb850ae1 > 0:
                        sub_f3d9dc0d = sub_e425df8c
                        stor116 = sub_e425df8c
                    else:
                        if 0 <= sub_d025188b:
                            if 0 > !sub_eb850ae1:
                                revert with 0, 17
                            if sub_eb850ae1 >= sub_d025188b:
                                sub_f3d9dc0d = sub_e425df8c
                                stor116 = sub_e425df8c
                            else:
                                if 0 > !sub_eb850ae1:
                                    revert with 0, 17
                                if sub_d025188b < sub_eb850ae1:
                                    revert with 0, 17
                                if not sub_d025188b - sub_eb850ae1:
                                    sub_f3d9dc0d = sub_e425df8c
                                    stor116 = sub_e425df8c
                        else:
                            if 0 < sub_eb850ae1:
                                revert with 0, 17
                            if -sub_eb850ae1 <= sub_d025188b:
                                sub_f3d9dc0d = sub_e425df8c
                                stor116 = sub_e425df8c
                            else:
                                if 0 < sub_eb850ae1:
                                    revert with 0, 17
                                if -sub_eb850ae1 < sub_d025188b:
                                    revert with 0, 17
                                if not -sub_eb850ae1 - sub_d025188b:
                                    sub_f3d9dc0d = sub_e425df8c
                                    stor116 = sub_e425df8c
                else:
                    idx = 0
                    s = 0
                    while idx < stakers.length:
                        mem[32] = 122
                        if stakers[idx].field_256 >= sub_850fa7cb[stor120[idx].field_0].field_0:
                            revert with 0, 50
                        mem[0] = sha3(stakers[idx].field_0, 122)
                        _658 = mem[64]
                        mem[64] = mem[64] + 288
                        mem[_658] = sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_0
                        mem[_658 + 32] = sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_256
                        mem[_658 + 64] = sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_512
                        mem[_658 + 96] = sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_768
                        mem[_658 + 128] = sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_1024
                        mem[_658 + 160] = sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_1280
                        mem[_658 + 192] = sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_1536
                        mem[_658 + 224] = bool(sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_1792)
                        mem[_658 + 256] = bool(sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_1800)
                        if sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_1024 and sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_0 > -1 / sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_1024:
                            revert with 0, 17
                        if s > !(sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_1024 * sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_0):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_1024 * sub_850fa7cb[stor120[idx].field_0][stor120[idx].field_256].field_0)
                        continue 
                    if not totalStaked:
                        revert with 0, 18
                    if sub_eb850ae1 > s * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length / totalStaked:
                        sub_f3d9dc0d = sub_e425df8c
                        stor116 = sub_e425df8c
                    else:
                        if s * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length / totalStaked <= sub_d025188b:
                            if s * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length / totalStaked > !sub_eb850ae1:
                                revert with 0, 17
                            if (s * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length / totalStaked) + sub_eb850ae1 >= sub_d025188b:
                                sub_f3d9dc0d = sub_e425df8c
                                stor116 = sub_e425df8c
                            else:
                                if s * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length / totalStaked > !sub_eb850ae1:
                                    revert with 0, 17
                                if sub_d025188b < (s * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length / totalStaked) + sub_eb850ae1:
                                    revert with 0, 17
                                if not sub_d025188b - (s * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length / totalStaked) - sub_eb850ae1:
                                    sub_f3d9dc0d = sub_e425df8c
                                    stor116 = sub_e425df8c
                        else:
                            if s * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length / totalStaked < sub_eb850ae1:
                                revert with 0, 17
                            if (s * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length / totalStaked) - sub_eb850ae1 <= sub_d025188b:
                                sub_f3d9dc0d = sub_e425df8c
                                stor116 = sub_e425df8c
                            else:
                                if s * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length / totalStaked < sub_eb850ae1:
                                    revert with 0, 17
                                if (s * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length / totalStaked) - sub_eb850ae1 < sub_d025188b:
                                    revert with 0, 17
                                if not (s * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length * stakers.length / totalStaked) - sub_eb850ae1 - sub_d025188b:
                                    sub_f3d9dc0d = sub_e425df8c
                                    stor116 = sub_e425df8c
    if 25 < sub_de09ee20.length:
        idx = 0
        while idx < 25:
            if 1 > !idx:
                revert with 0, 17
            if idx >= sub_de09ee20.length:
                revert with 0, 50
            mem[32] = 122
            if sub_de09ee20[idx].field_256 >= sub_850fa7cb[stor121[idx].field_0].field_0:
                revert with 0, 50
            mem[0] = sha3(sub_de09ee20[idx].field_0, 122)
            sub_850fa7cb[stor121[idx].field_0][stor121[idx].field_256].field_1536 = idx + 1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        idx = 0
        while idx < sub_de09ee20.length:
            if 1 > !idx:
                revert with 0, 17
            if idx >= sub_de09ee20.length:
                revert with 0, 50
            mem[32] = 122
            if sub_de09ee20[idx].field_256 >= sub_850fa7cb[stor121[idx].field_0].field_0:
                revert with 0, 50
            mem[0] = sha3(sub_de09ee20[idx].field_0, 122)
            sub_850fa7cb[stor121[idx].field_0][stor121[idx].field_256].field_1536 = idx + 1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    isLocked = 1
    isMatured = 1
    Mask(216, 0, stor143.field_40) = 0
    stor143.field_256 % 1 = 0
    Mask(248, 0, stor118.field_8) = 1
    emit PoolMatured()
}



}
