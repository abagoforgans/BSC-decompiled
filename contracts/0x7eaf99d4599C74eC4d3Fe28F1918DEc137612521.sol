contract main {




// =====================  Runtime code  =====================


#
#  - sub_3368fc3d(?)
#  - transferAssets(address arg1, address arg2, uint256 arg3)
#  - sub_58ca9a58(?)
#  - sub_94756816(?)
#  - removeLiquidity(address arg1, address arg2, uint256 arg3)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
array of uint256 poolName;
array of uint256 stor52;
address sub_ca29e8c8Address;
address operationsAddress;
uint128 stor55; offset 160
address _factoryAddress;
uint256 stor55;
address sub_8921bb67Address;
address sub_d736164dAddress;
uint8 isPermissioned; offset 160
uint8 sub_fd88af9f; offset 168
uint128 stor58; offset 168
uint128 stor58; offset 160
address governanceAddress;
uint256 stor59;
mapping of uint8 stor60;
mapping of uint8 stor61;
mapping of uint8 stor62;
mapping of struct sub_7b4b46e6;
mapping of uint256 nonce;
mapping of struct sub_0a1fb35f;

function sub_0a1fb35f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_0a1fb35f[arg1].field_0, 
           sub_0a1fb35f[arg1].field_0,
           sub_0a1fb35f[arg1].field_256,
           sub_0a1fb35f[arg1].field_256,
           sub_0a1fb35f[arg1].field_512,
           bool(sub_0a1fb35f[arg1].field_672)
}

function sub_131fdde1(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor62[arg1])
}

function sub_1bfae6f2(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor60[arg1])
}

function getGovernance() {
    return governanceAddress
}

function getNonce(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return nonce[address(arg1)]
}

function sub_366e4fce(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_0a1fb35f[address(arg1)].field_512
}

function sub_4af49dec(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_0a1fb35f[address(arg1)].field_256
}

function sub_75c9f7fb(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return nonce[arg1]
}

function sub_75e46940(?) {
    return sub_d736164dAddress
}

function getSigner() {
    return sub_ca29e8c8Address
}

function sub_7b4b46e6(?) {
    require calldata.size - 4 >= 32
    return sub_7b4b46e6[arg1].field_0
}

function sub_8921bb67(?) {
    return sub_8921bb67Address
}

function sub_9344ea6e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_0a1fb35f[address(arg1)].field_384
}

function sub_9c97f354(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor61[arg1])
}

function sub_ab99f7f9(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(sub_0a1fb35f[address(arg1)].field_672)
}

function getCap(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_0a1fb35f[address(arg1)].field_128
}

function _factory() {
    return _factoryAddress
}

function sub_c74e6d80(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_0a1fb35f[address(arg1)].field_0
}

function sub_ca29e8c8(?) {
    return sub_ca29e8c8Address
}

function getPoolName() {
    return poolName[0 len poolName.length]
}

function sub_d736164d(?) {
    return sub_d736164dAddress
}

function isPermissioned() {
    return bool(isPermissioned)
}

function sub_e327b0fb(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor60[address(arg1)])
}

function sub_ef5aa195(?) {
    return operationsAddress
}

function getOperations() {
    return operationsAddress
}

function sub_fd88af9f(?) {
    return bool(sub_fd88af9f)
}

function _fallback() payable {
    revert
}

function getFlag(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 / 96 <= stor59:
        return bool(Mask(256, -(arg1 % 96) - 160, sub_7b4b46e6[arg1 / 96].field_0) << -(arg1 % 96) - 160)
    else:
        return 0
}

function sub_9d0fd55e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if operationsAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'HashflowPool: Account not authorized to perform this operation'
    sub_d736164dAddress = address(arg1)
}

function sub_2e26065e(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if operationsAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'HashflowPool: Account not authorized to perform this operation'
    Mask(88, 0, stor58.field_168) = Mask(88, 0, bool(arg1))
}

function getReserves(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        return eth.balance(this.address)
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_f5eece6e(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if operationsAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'HashflowPool: Account not authorized to perform this operation'
    stor60[address(arg1)] = uint8(bool(arg2))
    emit 0xf90ee003: address(this.address), address(arg1), bool(arg2)
}

function sub_8325a8ec(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if operationsAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'HashflowPool: Account not authorized to perform this operation'
    require ext_code.size(address(arg1))
    call address(arg1).rebaseOptIn() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function updateSigner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if operationsAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'HashflowPool: Account not authorized to perform this operation'
    sub_ca29e8c8Address = arg1
    if stor59 + 1 >= stor59:
        if var22002 >= stor59 + 1:
        sub_7b4b46e6[var22002].field_0 = arg1
        sub_7b4b46e6[var22002].field_160 = 0
        s = var22002
        while stor59 + 1 >= stor59:
            if s >= stor59:
            mem[0] = s + 1
            mem[32] = 63
            sub_7b4b46e6[s + 1].field_0 = arg1
            sub_7b4b46e6[s + 1].field_160 = 0
            s = s + 1
            continue 
    revert with 0, 'SafeMath: addition overflow'
}

function sub_5f4894ce(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require ext_code.size(sub_0a1fb35f[address(arg1)].field_512)
    staticcall sub_0a1fb35f[address(arg1)].field_512.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        if not sub_0a1fb35f[address(arg1)].field_256:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / sub_0a1fb35f[address(arg1)].field_256)
    if ext_call.return_data[0] * arg2 / arg2 != ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not sub_0a1fb35f[address(arg1)].field_256:
        revert with 0, 'SafeMath: division by zero', 0
    return (ext_call.return_data[0] * arg2 / sub_0a1fb35f[address(arg1)].field_256)
}

function sub_80339267(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(sub_0a1fb35f[address(arg1)].field_512)
    staticcall sub_0a1fb35f[address(arg1)].field_512.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_0a1fb35f[address(arg1)].field_512)
    staticcall sub_0a1fb35f[address(arg1)].field_512.0x70a08231 with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / ext_call.return_data[0])
    if sub_0a1fb35f[address(arg1)].field_256 * ext_call.return_data[0] / ext_call.return_data[0] != sub_0a1fb35f[address(arg1)].field_256:
        revert with 0, 'SafeMath: multiplication overflow'
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero', 0
    return (sub_0a1fb35f[address(arg1)].field_256 * ext_call.return_data[0] / ext_call.return_data[0])
}

function sub_85b2c14a(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if operationsAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'HashflowPool: Account not authorized to perform this operation'
    if arg2 < sub_0a1fb35f[address(arg1)].field_256:
        revert with 0, 'HashflowPool: Cap must be greater than the net payout'
    require ext_code.size(governanceAddress)
    staticcall governanceAddress.0x10cc947 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2:
        if ext_call.return_data[0] * arg2 / arg2 != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
    sub_0a1fb35f[address(arg1)].field_0 = 0
    sub_0a1fb35f[address(arg1)].field_128 = arg2
    sub_0a1fb35f[address(arg1)].field_256 = 0
    sub_0a1fb35f[address(arg1)].field_256 = sub_0a1fb35f[address(arg1)].field_256
    sub_0a1fb35f[address(arg1)].field_384 = sub_0a1fb35f[address(arg1)].field_384
    sub_0a1fb35f[address(arg1)].field_512 = sub_0a1fb35f[address(arg1)].field_512
    sub_0a1fb35f[address(arg1)].field_672 = Mask(96, 0, bool(sub_0a1fb35f[address(arg1)].field_672))
    emit 0xbfe2bc87: address(this.address), address(arg1), arg2
}

function sub_95551c85(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[36] == bool(cd[36])
    if operationsAddress != msg.sender:
        revert with 0, 'HashflowPool: Account not authorized to perform this operation'
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 4).length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 61
        stor61[mem[(32 * idx) + 140 len 20]] = uint8(bool(cd[36]))
        idx = idx + 1
        continue 
    mem[(32 * ('cd', 4).length) + 128] = this.address
    mem[(32 * ('cd', 4).length) + 160] = 96
    mem[(32 * ('cd', 4).length) + 224] = ('cd', 4).length
    idx = 0
    s = (32 * ('cd', 4).length) + 256
    t = 128
    while idx < ('cd', 4).length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * ('cd', 4).length) + 192] = bool(cd[36])
    emit 0xb5591c7f: mem[(32 * ('cd', 4).length) + 128 len (96 * ('cd', 4).length) + 128]
}

function sub_9cee5114(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[36] == bool(cd[36])
    if operationsAddress != msg.sender:
        revert with 0, 'HashflowPool: Account not authorized to perform this operation'
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 4).length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 62
        stor62[mem[(32 * idx) + 140 len 20]] = uint8(bool(cd[36]))
        idx = idx + 1
        continue 
    mem[(32 * ('cd', 4).length) + 128] = this.address
    mem[(32 * ('cd', 4).length) + 160] = 96
    mem[(32 * ('cd', 4).length) + 224] = ('cd', 4).length
    idx = 0
    s = (32 * ('cd', 4).length) + 256
    t = 128
    while idx < ('cd', 4).length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * ('cd', 4).length) + 192] = bool(cd[36])
    emit 0xbda1d359: mem[(32 * ('cd', 4).length) + 128 len (96 * ('cd', 4).length) + 128]
}

function sub_a5451f10(?) {
    require calldata.size - 4 >= 256
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    require cd[68] == address(cd[68])
    require cd[100] == address(cd[100])
    require cd[132] == address(cd[132])
    require cd[164] == address(cd[164])
    require cd[196] == address(cd[196])
    require cd[228] == bool(cd[228])
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
    poolName.length = (2 * ('cd', 4).length) + 1
    s = 0
    idx = cd[4] + 36
    while cd[4] + ('cd', 4).length + 36 > idx:
        poolName[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
    while poolName.length + 31 / 32 > idx:
        poolName[idx] = 0
        idx = idx + 1
        continue 
    stor52.length = (2 * ('cd', 36).length) + 1
    s = 0
    idx = cd[36] + 36
    while cd[36] + ('cd', 36).length + 36 > idx:
        stor52[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
    while stor52.length + 31 / 32 > idx:
        stor52[idx] = 0
        idx = idx + 1
        continue 
    sub_ca29e8c8Address = address(cd[68])
    operationsAddress = address(cd[100])
    sub_8921bb67Address = address(cd[132])
    uint256(stor55.field_0) = Mask(96, 0, stor55.field_160)
    governanceAddress = address(cd[164])
    Mask(96, 0, stor58.field_160) = Mask(96, 0, bool(cd[228]))
    stor60[address(cd[196])] = 1
    stor59 = 14
    idx = 0
    while idx < 15:
        mem[0] = idx
        mem[32] = 63
        sub_7b4b46e6[idx].field_0 = address(cd[68])
        sub_7b4b46e6[idx].field_160 = 0
        idx = idx + 1
        continue 
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function sub_583766a0(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if operationsAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'HashflowPool: Account not authorized to perform this operation'
    if sub_0a1fb35f[address(arg1)].field_672:
        revert with 0, 'HashflowPool: asset already listed.'
    require ext_code.size(address(arg2))
    staticcall address(arg2).0xfd88af9f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'HashflowPool: fromPool should be in migration mode'
    require ext_code.size(address(arg2))
    staticcall address(arg2).0xd736164d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'HashflowPool: fromPool should migrate to current pool'
    require ext_code.size(address(arg2))
    staticcall address(arg2).0xab99f7f9 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'HashflowPool: token not listed on fromPool'
    require ext_code.size(address(arg2))
    staticcall address(arg2).0xb3aefb75 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x4af49dec with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(governanceAddress)
    staticcall governanceAddress.0x10cc947 with:
            gas gas_remaining wei
    mem[(7 * ceil32(return_data.size)) + 672] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
    mem[(8 * ceil32(return_data.size)) + 672] = 26
    mem[(8 * ceil32(return_data.size)) + 704] = 'SafeMath: division by zero'
    mem[(8 * ceil32(return_data.size)) + 740] = address(arg1)
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x366e4fce with:
            gas gas_remaining wei
           args address(arg1)
    mem[(8 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(7 * ceil32(return_data.size)) + 608] = ext_call.return_data[12 len 20]
    sub_0a1fb35f[address(arg1)].field_0 = 0
    sub_0a1fb35f[address(arg1)].field_128 = uint128(ext_call.return_data[0])
    sub_0a1fb35f[address(arg1)].field_256 = uint128(ext_call.return_data[0])
    sub_0a1fb35f[address(arg1)].field_384 = 0
    sub_0a1fb35f[address(arg1)].field_512 = 0
    sub_0a1fb35f[address(arg1)].field_512 = mem[(7 * ceil32(return_data.size)) + 620 len 20]
    sub_0a1fb35f[address(arg1)].field_672 = 1
    emit 0x3d883dc6: address(this.address), address(arg1), ext_call.return_data[0]
}

function addLiquidity(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not stor60[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'HashflowPool: Unauthorized router'
    if sub_fd88af9f:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'HashflowPool: Pool must not be in migrate mode'
    if isPermissioned:
        if not stor62[address(arg2)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'HashflowPool: Lp account must be whitelisted'
    require ext_code.size(sub_0a1fb35f[address(arg1)].field_512)
    staticcall sub_0a1fb35f[address(arg1)].field_512.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0 == sub_0a1fb35f[address(arg1)].field_256:
        if not arg3:
            if sub_0a1fb35f[address(arg1)].field_128 < uint128(arg3 + sub_0a1fb35f[address(arg1)].field_256):
                revert with 0, 'HashflowPool: Deposit exceeds cap'
            sub_0a1fb35f[address(arg1)].field_128 = sub_0a1fb35f[address(arg1)].field_128
            sub_0a1fb35f[address(arg1)].field_256 = 0
            sub_0a1fb35f[address(arg1)].field_384 = sub_0a1fb35f[address(arg1)].field_384
            sub_0a1fb35f[address(arg1)].field_512 = 0
            sub_0a1fb35f[address(arg1)].field_512 = sub_0a1fb35f[address(arg1)].field_512
            sub_0a1fb35f[address(arg1)].field_672 = Mask(96, 0, bool(sub_0a1fb35f[address(arg1)].field_672))
            require ext_code.size(sub_0a1fb35f[address(arg1)].field_512)
            call sub_0a1fb35f[address(arg1)].field_512.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x6ade31a6: address(this.address), address(arg1), address(arg2), arg3, 0
        else:
            if 100 * arg3 / arg3 != 100:
                revert with 0, 'SafeMath: multiplication overflow'
            if sub_0a1fb35f[address(arg1)].field_128 < uint128(arg3 + sub_0a1fb35f[address(arg1)].field_256):
                revert with 0, 'HashflowPool: Deposit exceeds cap'
            sub_0a1fb35f[address(arg1)].field_128 = sub_0a1fb35f[address(arg1)].field_128
            sub_0a1fb35f[address(arg1)].field_256 = 0
            sub_0a1fb35f[address(arg1)].field_384 = sub_0a1fb35f[address(arg1)].field_384
            sub_0a1fb35f[address(arg1)].field_512 = 0
            sub_0a1fb35f[address(arg1)].field_512 = sub_0a1fb35f[address(arg1)].field_512
            sub_0a1fb35f[address(arg1)].field_672 = Mask(96, 0, bool(sub_0a1fb35f[address(arg1)].field_672))
            require ext_code.size(sub_0a1fb35f[address(arg1)].field_512)
            call sub_0a1fb35f[address(arg1)].field_512.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), 100 * arg3 / 2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x6ade31a6: address(this.address), address(arg1), address(arg2), arg3, 100 * arg3 / 2
    else:
        if not arg3:
            if not sub_0a1fb35f[address(arg1)].field_256:
                revert with 0, 'SafeMath: division by zero', 0
            if sub_0a1fb35f[address(arg1)].field_128 < uint128(arg3 + sub_0a1fb35f[address(arg1)].field_256):
                revert with 0, 'HashflowPool: Deposit exceeds cap'
            sub_0a1fb35f[address(arg1)].field_128 = sub_0a1fb35f[address(arg1)].field_128
            sub_0a1fb35f[address(arg1)].field_256 = 0
            sub_0a1fb35f[address(arg1)].field_384 = sub_0a1fb35f[address(arg1)].field_384
            sub_0a1fb35f[address(arg1)].field_512 = 0
            sub_0a1fb35f[address(arg1)].field_512 = sub_0a1fb35f[address(arg1)].field_512
            sub_0a1fb35f[address(arg1)].field_672 = Mask(96, 0, bool(sub_0a1fb35f[address(arg1)].field_672))
            require ext_code.size(sub_0a1fb35f[address(arg1)].field_512)
            call sub_0a1fb35f[address(arg1)].field_512.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), 0 / sub_0a1fb35f[address(arg1)].field_256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x6ade31a6: address(this.address), address(arg1), address(arg2), arg3, 0 / sub_0a1fb35f[address(arg1)].field_256
        else:
            if ext_call.return_data[0] * arg3 / arg3 != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if not sub_0a1fb35f[address(arg1)].field_256:
                revert with 0, 'SafeMath: division by zero', 0
            if sub_0a1fb35f[address(arg1)].field_128 < uint128(arg3 + sub_0a1fb35f[address(arg1)].field_256):
                revert with 0, 'HashflowPool: Deposit exceeds cap'
            sub_0a1fb35f[address(arg1)].field_128 = sub_0a1fb35f[address(arg1)].field_128
            sub_0a1fb35f[address(arg1)].field_256 = 0
            sub_0a1fb35f[address(arg1)].field_384 = sub_0a1fb35f[address(arg1)].field_384
            sub_0a1fb35f[address(arg1)].field_512 = 0
            sub_0a1fb35f[address(arg1)].field_512 = sub_0a1fb35f[address(arg1)].field_512
            sub_0a1fb35f[address(arg1)].field_672 = Mask(96, 0, bool(sub_0a1fb35f[address(arg1)].field_672))
            require ext_code.size(sub_0a1fb35f[address(arg1)].field_512)
            call sub_0a1fb35f[address(arg1)].field_512.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), ext_call.return_data[0] * arg3 / sub_0a1fb35f[address(arg1)].field_256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x6ade31a6: address(this.address), address(arg1), address(arg2), arg3, ext_call.return_data[0] * arg3 / sub_0a1fb35f[address(arg1)].field_256
}



}
