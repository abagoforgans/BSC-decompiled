contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(address arg1)
#  - sub_6aed3222(?)
#  - sub_aec2a1e2(?)
#  - unstake(address arg1)
#
address owner;
uint256 fee;
mapping of address sub_c5975788;
mapping of uint8 stor3;
array of struct sub_25ee8d47;
mapping of struct sub_fc62b0a7;
mapping of uint8 stor6;
mapping of uint256 receivedTokens;
address systemAddress;

function sub_25ee8d47(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_25ee8d47[address(arg1)].field_0
}

function sub_44c78058(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return bool(stor6[arg1][arg2])
}

function sub_57a03cf2(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor3[arg1])
}

function receivedTokens(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return receivedTokens[arg1][arg2]
}

function owner() {
    return owner
}

function system() {
    return systemAddress
}

function getOption(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 < sub_25ee8d47[address(arg1)].field_0
    return sub_25ee8d47[address(arg1)][arg2].field_0, 
           sub_25ee8d47[address(arg1)][arg2].field_256,
           uint128(sub_25ee8d47[address(arg1)][arg2].field_512),
           uint128(sub_25ee8d47[address(arg1)][arg2].field_640)
}

function sub_c5975788(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_c5975788[arg1]
}

function fee() {
    return fee
}

function sub_fc62b0a7(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_fc62b0a7[address(arg1)][address(arg2)].field_0, 
           sub_fc62b0a7[address(arg1)][address(arg2)].field_256,
           sub_fc62b0a7[address(arg1)][address(arg2)].field_512,
           uint128(sub_fc62b0a7[address(arg1)][address(arg2)].field_768),
           uint128(sub_fc62b0a7[address(arg1)][address(arg2)].field_896)
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setSystem(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    systemAddress = arg1
    return 1
}

function setFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if systemAddress != msg.sender:
        revert with 0, 'Caller is not the system'
    fee = arg1
    return 1
}

function sub_e721a6b2(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if sub_c5975788[address(arg1)] != msg.sender:
        revert with 0, 'Caller is not the bonusOwners'
    stor3[address(arg1)] = uint8(bool(arg2))
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    if not arg1:
        revert with 0, 'Zero address not allowed'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_3d9886f6(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require address(arg2)
    if sub_c5975788[address(arg1)] != msg.sender:
        revert with 0, 'Caller is not the vault owner'
    sub_c5975788[address(arg1)] = address(arg2)
    return 1
}

function withdraw(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if sub_c5975788[address(arg1)] != msg.sender:
        revert with 0, 'Caller is not the vault owner'
    require ext_code.size(arg1)
    call arg1.transferToken(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}

function sub_f2b64d80(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).token() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function getOptions(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 4
    mem[64] = (32 * sub_25ee8d47[address(arg1)].field_0) + 128
    mem[96] = sub_25ee8d47[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < sub_25ee8d47[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 4)
        _14 = mem[64]
        mem[64] = mem[64] + 128
        mem[_14] = sub_25ee8d47[address(arg1)][idx].field_0
        mem[_14 + 32] = sub_25ee8d47[address(arg1)][idx].field_256
        mem[_14 + 64] = uint128(sub_25ee8d47[address(arg1)][idx].field_512)
        mem[_14 + 96] = uint128(sub_25ee8d47[address(arg1)][idx].field_640)
        mem[s] = _14
        s = s + 32
        idx = idx + 1
        continue 
    _15 = mem[64]
    mem[mem[64]] = 32
    _16 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _16:
        _23 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_23 + 32]
        mem[t + 64] = mem[_23 + 80 len 16]
        mem[t + 96] = mem[_23 + 112 len 16]
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    return memory
      from mem[64]
       len _15 + (128 * _16) + -mem[64] + 64
}

function sub_03f7de73(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    if systemAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the system or owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).token() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if receivedTokens[ext_call.return_data[12 len 20]][address(arg2)]:
        revert with 0, 'User already received tokens'
    mem[0] = address(arg1)
    mem[32] = 4
    idx = stor[sha3(mem[0 len 64])]
    while idx > 0:
        mem[32] = 4
        require idx - 1 < sub_25ee8d47[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 4)
        if sub_25ee8d47[address(arg1)][idx].field_0 != arg3:
            idx = idx - 1
            continue 
        require idx - 1 < sub_25ee8d47[address(arg1)].field_0
        receivedTokens[address(ext_call.return_data[0])][address(arg2)] = sub_25ee8d47[address(arg1)][idx].field_0
        require idx - 1 < sub_25ee8d47[address(arg1)].field_0
        require idx - 1 < sub_25ee8d47[address(arg1)].field_0
        if not uint128(sub_25ee8d47[address(arg1)][idx].field_0):
            require ext_code.size(address(arg1))
            call address(arg1).transferToken(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg2), sub_25ee8d47[address(arg1)][idx].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            if idx - 1 >= sub_25ee8d47[address(arg1)].field_0:
                revert with 0, 'Wrong option ID'
            if sub_25ee8d47[address(arg1)][idx].field_0 <= 0:
                revert with 0, 'Amount can't be zero'
            require idx - 1 < sub_25ee8d47[address(arg1)].field_0
            require idx - 1 < sub_25ee8d47[address(arg1)].field_0
            sub_fc62b0a7[address(arg1)][address(arg2)].field_0 = sub_25ee8d47[address(arg1)][idx].field_0
            sub_fc62b0a7[address(arg1)][address(arg2)].field_256 = sub_25ee8d47[address(arg1)][idx].field_0 * uint128(sub_25ee8d47[address(arg1)][idx].field_0) * uint128(sub_25ee8d47[address(arg1)][idx].field_0) / 87600000 * 24 * 3600
            sub_fc62b0a7[address(arg1)][address(arg2)].field_512 = block.timestamp
            uint128(sub_fc62b0a7[address(arg1)][address(arg2)].field_768) = uint128(sub_25ee8d47[address(arg1)][idx].field_0)
            uint128(sub_fc62b0a7[address(arg1)][address(arg2)].field_896) = uint128(sub_25ee8d47[address(arg1)][idx].field_0)
            require ext_code.size(address(arg1))
            call address(arg1).transferToken(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(this.address), sub_25ee8d47[address(arg1)][idx].field_0 + (sub_25ee8d47[address(arg1)][idx].field_0 * uint128(sub_25ee8d47[address(arg1)][idx].field_0) * uint128(sub_25ee8d47[address(arg1)][idx].field_0) / 87600000 * 24 * 3600)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit 0x13530d1f: idx - 1, sub_25ee8d47[address(arg1)][idx].field_0, block.timestamp, uint128(sub_25ee8d47[address(arg1)][idx].field_0), uint128(sub_25ee8d47[address(arg1)][idx].field_0), address(arg1), address(arg2)
        return 1
    revert with 0, 'No appropriate stake options'
}

function sub_eb5647ba(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 <= test266151307() and (32 * ('cd', 36).length) + 128 >= 96
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160 <= test266151307() and (32 * ('cd', 68).length) + 160 >= 128
    mem[(32 * ('cd', 36).length) + 128] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 36).length) + 160
    while idx < ('cd', 68).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192 <= test266151307() and (32 * ('cd', 100).length) + 192 >= 160
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192
    while idx < ('cd', 100).length:
        require cd[s] == uint128(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 224 <= test266151307() and (32 * ('cd', 132).length) + 224 >= 192
    mem[64] = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 224
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] = ('cd', 132).length
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    idx = 0
    s = cd[132] + 36
    t = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224
    while idx < ('cd', 132).length:
        require cd[s] == uint128(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if msg.value < fee:
        revert with 0, 'Not enough Deploy fee'
    if sub_c5975788[address(cd[4])] != msg.sender:
        revert with 0, 'Caller is not the bonusOwners'
    if ('cd', 36).length != ('cd', 68).length:
        revert with 0, 'Wrong length'
    if ('cd', 132).length != ('cd', 100).length:
        revert with 0, 'Wrong length'
    if ('cd', 36).length != ('cd', 132).length:
        revert with 0, 'Wrong length'
    mem[0] = address(cd[4])
    mem[32] = 4
    if sub_25ee8d47[address(cd[4])].field_0 <= 0:
        idx = 0
        while idx < ('cd', 36).length:
            mem[0] = address(cd[4])
            mem[32] = 4
            _393 = mem[64]
            mem[64] = mem[64] + 128
            require idx < mem[96]
            mem[_393] = mem[(32 * idx) + 128]
            require idx < mem[(32 * ('cd', 36).length) + 128]
            mem[_393 + 32] = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
            require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
            mem[_393 + 64] = mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 208 len 16]
            require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
            mem[_393 + 96] = mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 240 len 16]
            sub_25ee8d47[address(cd[4])].field_0++
            mem[0] = sha3(address(cd[4]), 4)
            sub_25ee8d47[address(cd[4])][sub_25ee8d47[address(cd[4])].field_0].field_0 = mem[_393]
            sub_25ee8d47[address(cd[4])][sub_25ee8d47[address(cd[4])].field_0].field_256 = mem[_393 + 32]
            uint128(sub_25ee8d47[address(cd[4])][sub_25ee8d47[address(cd[4])].field_0].field_512) = mem[_393 + 80 len 16]
            uint128(sub_25ee8d47[address(cd[4])][sub_25ee8d47[address(cd[4])].field_0].field_640) = mem[_393 + 112 len 16]
            idx = idx + 1
            continue 
        _395 = mem[64]
        mem[mem[64]] = 128
        _402 = mem[96]
        mem[mem[64] + 128] = mem[96]
        mem[mem[64] + 160 len 32 * _402] = mem[128 len 32 * _402]
        mem[mem[64] + 32] = (32 * _402) + 160
        _457 = mem[(32 * ('cd', 36).length) + 128]
        mem[mem[64] + (32 * _402) + 160] = mem[(32 * ('cd', 36).length) + 128]
        mem[mem[64] + (32 * _402) + 192 len 32 * _457] = mem[(32 * ('cd', 36).length) + 160 len 32 * _457]
        mem[mem[64] + 64] = (32 * _402) + (32 * _457) + 192
        _487 = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
        mem[_395 + (32 * _402) + (32 * _457) + 192] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
        idx = 0
        s = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192
        t = _395 + (32 * _402) + (32 * _457) + 224
        while idx < _487:
            mem[t] = mem[s + 16 len 16]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_395 + 96] = (32 * _402) + (32 * _457) + (32 * _487) + 224
        _505 = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
        mem[_395 + (32 * _402) + (32 * _457) + (32 * _487) + 224] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
        idx = 0
        s = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224
        t = _395 + (32 * _402) + (32 * _457) + (32 * _487) + 256
        while idx < _505:
            mem[t] = mem[s + 16 len 16]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        emit 0x21ff484c: mem[mem[64] len _395 + (32 * _402) + (32 * _457) + (32 * _487) + (32 * _505) + -mem[64] + 256], address(cd[4])
    else:
        mem[32] = 4
        sub_25ee8d47[address(cd[4])].field_0 = 0
        mem[0] = sha3(address(cd[4]), 4)
        idx = 0
        while 3 * sub_25ee8d47[address(cd[4])].field_0 > idx:
            sub_25ee8d47[address(cd[4])][idx].field_0 = 0
            sub_25ee8d47[address(cd[4])][idx].field_256 = 0
            uint128(sub_25ee8d47[address(cd[4])][idx].field_512) = 0
            sub_25ee8d47[address(cd[4])][idx].field_512 = uint128(sub_25ee8d47[address(cd[4])][idx].field_512)
            idx = idx + 3
            continue 
        idx = 0
        while idx < ('cd', 36).length:
            mem[0] = address(cd[4])
            mem[32] = 4
            _450 = mem[64]
            mem[64] = mem[64] + 128
            require idx < mem[96]
            mem[_450] = mem[(32 * idx) + 128]
            require idx < mem[(32 * ('cd', 36).length) + 128]
            mem[_450 + 32] = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
            require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
            mem[_450 + 64] = mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 208 len 16]
            require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
            mem[_450 + 96] = mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 240 len 16]
            sub_25ee8d47[address(cd[4])].field_0++
            mem[0] = sha3(address(cd[4]), 4)
            sub_25ee8d47[address(cd[4])][sub_25ee8d47[address(cd[4])].field_0].field_0 = mem[_450]
            sub_25ee8d47[address(cd[4])][sub_25ee8d47[address(cd[4])].field_0].field_256 = mem[_450 + 32]
            uint128(sub_25ee8d47[address(cd[4])][sub_25ee8d47[address(cd[4])].field_0].field_512) = mem[_450 + 80 len 16]
            uint128(sub_25ee8d47[address(cd[4])][sub_25ee8d47[address(cd[4])].field_0].field_640) = mem[_450 + 112 len 16]
            idx = idx + 1
            continue 
        _452 = mem[64]
        mem[mem[64]] = 128
        _460 = mem[96]
        mem[mem[64] + 128] = mem[96]
        mem[mem[64] + 160 len 32 * _460] = mem[128 len 32 * _460]
        mem[mem[64] + 32] = (32 * _460) + 160
        _488 = mem[(32 * ('cd', 36).length) + 128]
        mem[mem[64] + (32 * _460) + 160] = mem[(32 * ('cd', 36).length) + 128]
        mem[mem[64] + (32 * _460) + 192 len 32 * _488] = mem[(32 * ('cd', 36).length) + 160 len 32 * _488]
        mem[mem[64] + 64] = (32 * _460) + (32 * _488) + 192
        _506 = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
        mem[_452 + (32 * _460) + (32 * _488) + 192] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
        idx = 0
        s = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192
        t = _452 + (32 * _460) + (32 * _488) + 224
        while idx < _506:
            mem[t] = mem[s + 16 len 16]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_452 + 96] = (32 * _460) + (32 * _488) + (32 * _506) + 224
        _521 = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
        mem[_452 + (32 * _460) + (32 * _488) + (32 * _506) + 224] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
        idx = 0
        s = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224
        t = _452 + (32 * _460) + (32 * _488) + (32 * _506) + 256
        while idx < _521:
            mem[t] = mem[s + 16 len 16]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        emit 0x21ff484c: mem[mem[64] len _452 + (32 * _460) + (32 * _488) + (32 * _506) + (32 * _521) + -mem[64] + 256], address(cd[4])
    return 1
}



}
