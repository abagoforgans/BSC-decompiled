contract main {




// =====================  Runtime code  =====================


#
#  - buy(uint256 arg1)
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address governorAddress; offset 16
array of uint256 stor1;
uint256 begin;
uint256 span;
address stor4;
address stor5;
array of uint256 sub_b5aa5ace;
uint256 sub_2a9cef9b;
uint256 sub_707e2577;
uint256 sub_e1b3dc0c;
uint256 stor13; offset 1
uint256 sub_d7d674b0;
array of uint256 sub_45259a06;
array of uint256 sub_f527a5d8;
mapping of uint8 stor16;
address storFEB5;

function governor() payable {
    return governorAddress
}

function begin() payable {
    return begin
}

function span() payable {
    return span
}

function sub_2a9cef9b(?) payable {
    return sub_2a9cef9b
}

function sub_45259a06(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_45259a06.length
    return sub_45259a06[arg1]
}

function sub_707e2577(?) payable {
    return sub_707e2577
}

function sub_b5aa5ace(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 4
    return sub_b5aa5ace[arg1]
}

function sub_b9c4def0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor16[arg1])
}

function sub_d7d674b0(?) payable {
    return sub_d7d674b0
}

function sub_e1b3dc0c(?) payable {
    return sub_e1b3dc0c
}

function currency() payable {
    return address(stor1.length)
}

function sub_f527a5d8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_f527a5d8.length
    return sub_f527a5d8[arg1]
}

function _fallback() payable {
    revert
}

function renounceGovernorship() payable {
    if governorAddress != msg.sender:
        require msg.sender == storFEB5
    emit GovernorshipTransferred(governorAddress, 0);
    governorAddress = 0
}

function sub_26c64e45(?) payable {
    require calldata.size - 4 >= 32
    if not stor16[msg.sender]:
        if governorAddress != msg.sender:
            revert with 0, 'No permission'
    sub_d7d674b0 = arg1
}

function sub_f6979e71(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if governorAddress != msg.sender:
        require msg.sender == storFEB5
    stor16[address(arg1)] = uint8(bool(arg2))
}

function transferGovernorship(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governorAddress != msg.sender:
        require msg.sender == storFEB5
    require arg1
    emit GovernorshipTransferred(governorAddress, arg1);
    governorAddress = arg1
}

function sub_a188cd62(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    if governorAddress != msg.sender:
        require msg.sender == storFEB5
    stor4 = address(arg1)
    address(stor1.length) = address(arg4)
    begin = arg2
    span = arg3
    stor5 = address(arg5)
}

function withdrawETH(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governorAddress != msg.sender:
        require msg.sender == storFEB5
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function __Governable_init_unchained(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        governorAddress = arg1
        emit GovernorshipTransferred(0, arg1);
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            governorAddress = arg1
            emit GovernorshipTransferred(0, arg1);
        else:
            uint16(stor0.field_0) = 257
            governorAddress = arg1
            emit GovernorshipTransferred(0, arg1);
            uint8(stor0.field_8) = 0
}

function sub_bb242d5b(?) payable {
    require calldata.size - 4 >= 128
    if not arg3:
        return arg1
    if arg3 <= arg4 / 2:
        if arg2 and arg3 > -1 / arg2:
            revert with 0, 17
        if arg4 < arg3:
            revert with 0, 17
        if arg1 and arg4 - arg3 > -1 / arg1:
            revert with 0, 17
        if (arg4 * arg1) - (arg3 * arg1) > !(arg2 * arg3):
            revert with 0, 17
        if not arg4:
            revert with 0, 18
        return ((arg4 * arg1) - (arg3 * arg1) + (arg2 * arg3) / arg4)
    if arg2 and arg4 / 2 > -1 / arg2:
        revert with 0, 17
    if arg4 < arg4 / 2:
        revert with 0, 17
    if arg1 and arg4 - (arg4 / 2) > -1 / arg1:
        revert with 0, 17
    if (arg4 * arg1) - (arg4 / 2 * arg1) > !(arg2 * arg4 / 2):
        revert with 0, 17
    if not arg4:
        revert with 0, 18
    return ((arg4 * arg1) - (arg4 / 2 * arg1) + (arg2 * arg4 / 2) / arg4)
}

function sub_87536143(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if not stor16[msg.sender]:
        if governorAddress != msg.sender:
            revert with 0, 'No permission'
    sub_707e2577 = cd[4]
    sub_45259a06.length = ('cd', 36).length
    if not ('cd', 36).length:
        idx = 0
        while sub_45259a06.length > idx:
            sub_45259a06[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[36] + 36
        while cd[36] + (32 * ('cd', 36).length) + 36 > idx:
            sub_45259a06[s] = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5
        while sub_45259a06.length > idx:
            sub_45259a06[idx] = 0
            idx = idx + 1
            continue 
}

function sub_0c63fcfc(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    if uint8(stor0.field_8):
        governorAddress = address(arg1)
        emit GovernorshipTransferred(0, address(arg1));
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            governorAddress = address(arg1)
            emit GovernorshipTransferred(0, address(arg1));
        else:
            uint16(stor0.field_0) = 257
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                governorAddress = address(arg1)
                emit GovernorshipTransferred(0, address(arg1));
            else:
                uint16(stor0.field_0) = 257
                governorAddress = address(arg1)
                emit GovernorshipTransferred(0, address(arg1));
                uint8(stor0.field_8) = 0
    sub_d7d674b0 = 24 * 3600
    if governorAddress != msg.sender:
        require msg.sender == storFEB5
    stor4 = address(arg2)
    address(stor1.length) = address(arg5)
    begin = arg3
    span = arg4
    stor5 = address(arg6)
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function rescueTokens(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if governorAddress != msg.sender:
        require msg.sender == storFEB5
    mem[100] = this.address
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = 100
    mem[ceil32(return_data.size) + 132 len 28] = address(this.address) << 64
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(return_data.size) + 228 len 128] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(arg2), ext_call.return_data[0], mem[ceil32(return_data.size) + 228 len 28]
    call arg1.mem[ceil32(return_data.size) + 228 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + 232 len 96]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
    else:
        mem[ceil32(return_data.size) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 260] == bool(mem[ceil32(return_data.size) + 260])
            if not mem[ceil32(return_data.size) + 260]:
                revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
}

function withdrawToken() payable {
    if governorAddress != msg.sender:
        require msg.sender == storFEB5
        if governorAddress != msg.sender:
            require msg.sender == storFEB5
    mem[100] = this.address
    staticcall address(stor1.length).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = 100
    mem[ceil32(return_data.size) + 132 len 28] = address(this.address) << 64
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(return_data.size) + 228 len 128] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, msg.sender, ext_call.return_data[0], mem[ceil32(return_data.size) + 228 len 28]
    call address(stor1.length).mem[ceil32(return_data.size) + 228 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + 232 len 96]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
    else:
        mem[ceil32(return_data.size) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 260] == bool(mem[ceil32(return_data.size) + 260])
            if not mem[ceil32(return_data.size) + 260]:
                revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
}

function withdrawToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governorAddress != msg.sender:
        require msg.sender == storFEB5
        if governorAddress != msg.sender:
            require msg.sender == storFEB5
    mem[100] = this.address
    staticcall address(stor1.length).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = 100
    mem[ceil32(return_data.size) + 132 len 28] = address(this.address) << 64
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(return_data.size) + 228 len 128] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(arg1), ext_call.return_data[0], mem[ceil32(return_data.size) + 228 len 28]
    call address(stor1.length).mem[ceil32(return_data.size) + 228 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + 232 len 96]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
    else:
        mem[ceil32(return_data.size) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 260] == bool(mem[ceil32(return_data.size) + 260])
            if not mem[ceil32(return_data.size) + 260]:
                revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
}

function sub_ebcc52e8(?) payable {
    mem[96 len 128] = call.data[calldata.size len 128]
    mem[224 len 128] = call.data[calldata.size len 128]
    mem[352] = 2
    mem[64] = 448
    mem[384 len 64] = call.data[calldata.size len 64]
    mem[416] = address(stor1.length)
    idx = 0
    while idx < 4:
        mem[mem[64] + 4] = idx
        staticcall stor4.0xd2bf518c with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _25 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_25] == mem[_25 + 12 len 20]
        if 0 >= mem[352]:
            revert with 0, 50
        mem[384] = mem[_25 + 12 len 20]
        _29 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 10^18
        mem[mem[64] + 36] = 64
        _30 = mem[352]
        mem[mem[64] + 68] = mem[352]
        s = 0
        t = mem[64] + 100
        u = 384
        while s < _30:
            mem[t] = mem[u + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        staticcall stor5.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _29 + (32 * _30) + -mem[64] + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _45 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _46 = mem[_45]
        require mem[_45] <= test266151307()
        require _45 + return_data.size > _45 + mem[_45] + 31
        _47 = mem[_45 + mem[_45]]
        if mem[_45 + mem[_45]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_45 + mem[_45]]) + 1 < 0 or _45 + ceil32(return_data.size) + ceil32(32 * mem[_45 + mem[_45]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _45 + ceil32(return_data.size) + ceil32(32 * mem[_45 + mem[_45]]) + 1
        mem[_45 + ceil32(return_data.size)] = _47
        require _46 + (32 * _47) + 32 <= return_data.size
        t = _45 + ceil32(return_data.size) + 32
        s = _45 + _46 + 32
        while s < _45 + _46 + (32 * _47) + 32:
            mem[t] = mem[s]
            t = t + 32
            s = s + 32
            continue 
        if mem[352] < 1:
            revert with 0, 17
        if mem[352] - 1 >= _47:
            revert with 0, 50
        if idx >= 4:
            revert with 0, 50
        mem[(32 * idx) + 224] = mem[(32 * mem[352] - 1) + _45 + ceil32(return_data.size) + 32]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[mem[64] len 128] = mem[224 len 128]
    return memory
      from mem[64]
       len 128
}

function getPrice(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    s = 128
    idx = arg1 + 36
    while idx < arg1 + (32 * arg1.length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if arg1.length <= 1:
        revert with 0, 'path >=2'
    mem[ceil32(32 * arg1.length) + 97] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * arg1.length) + 101] = 10^18
    mem[ceil32(32 * arg1.length) + 133] = 64
    mem[ceil32(32 * arg1.length) + 165] = arg1.length
    idx = 0
    s = ceil32(32 * arg1.length) + 197
    t = 128
    while idx < arg1.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall stor5.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args 10^18, 64, arg1.length, mem[ceil32(32 * arg1.length) + 197 len 32 * arg1.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(32 * arg1.length) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(32 * arg1.length) + ceil32(return_data.size) + 97
    require return_data.size >= 32
    _39 = mem[ceil32(32 * arg1.length) + 97 len 4], 232830643
    require mem[ceil32(32 * arg1.length) + 97 len 4], 232830643 <= test266151307()
    require ceil32(32 * arg1.length) + return_data.size + 97 > ceil32(32 * arg1.length) + mem[ceil32(32 * arg1.length) + 97 len 4], 232830643 + 128
    _40 = mem[ceil32(32 * arg1.length) + mem[ceil32(32 * arg1.length) + 97 len 4], 232830643 + 97]
    if mem[ceil32(32 * arg1.length) + mem[ceil32(32 * arg1.length) + 97 len 4], 232830643 + 97] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(32 * arg1.length) + mem[ceil32(32 * arg1.length) + 97 len 4], 232830643 + 97]) + 1 < 0 or ceil32(32 * arg1.length) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(32 * arg1.length) + mem[ceil32(32 * arg1.length) + 97 len 4], 232830643 + 97]) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * arg1.length) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(32 * arg1.length) + mem[ceil32(32 * arg1.length) + 97 len 4], 232830643 + 97]) + 98
    mem[ceil32(32 * arg1.length) + ceil32(return_data.size) + 97] = mem[ceil32(32 * arg1.length) + mem[ceil32(32 * arg1.length) + 97 len 4], 232830643 + 97]
    require _39 + (32 * _40) + 32 <= return_data.size
    mem[ceil32(32 * arg1.length) + ceil32(return_data.size) + 129 len ceil32(32 * _40)] = mem[ceil32(32 * arg1.length) + _39 + 129 len ceil32(32 * _40)]
    if arg1.length < 1:
        revert with 0, 17
    if arg1.length - 1 >= _40:
        revert with 0, 50
    return memory
      from (32 * arg1.length - 1) + ceil32(32 * arg1.length) + ceil32(return_data.size) + 129
       len 32
}

function sub_5d1d834b(?) payable {
    mem[96 len 128] = call.data[calldata.size len 128]
    if sub_2a9cef9b == block.timestamp:
        idx = 224
        s = 6
        while 352 > idx + 32:
            mem[idx + 32] = uint256(stor1[s])
            idx = idx + 32
            s = s + 1
            continue 
        return sub_b5aa5ace.length, mem[256 len 96]
    mem[224 len 128] = call.data[calldata.size len 128]
    mem[352 len 128] = call.data[calldata.size len 128]
    mem[480 len 128] = call.data[calldata.size len 128]
    mem[608] = 2
    mem[64] = 704
    mem[640 len 64] = call.data[calldata.size len 64]
    mem[672] = address(stor1.length)
    idx = 0
    while idx < 4:
        mem[mem[64] + 4] = idx
        staticcall stor4.0xd2bf518c with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _29 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_29] == mem[_29 + 12 len 20]
        if 0 >= mem[608]:
            revert with 0, 50
        mem[640] = mem[_29 + 12 len 20]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 10^18
        mem[mem[64] + 36] = 64
        _36 = mem[608]
        mem[mem[64] + 68] = mem[608]
        s = 0
        t = mem[64] + 100
        u = 640
        while s < _36:
            mem[t] = mem[u + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        staticcall stor5.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args 10^18, 64, mem[mem[64] + 68 len (32 * _36) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _53 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _55 = mem[_53]
        require mem[_53] <= test266151307()
        require _53 + return_data.size > _53 + mem[_53] + 31
        _56 = mem[_53 + mem[_53]]
        if mem[_53 + mem[_53]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_53 + mem[_53]]) + 1 < 0 or _53 + ceil32(return_data.size) + ceil32(32 * mem[_53 + mem[_53]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _53 + ceil32(return_data.size) + ceil32(32 * mem[_53 + mem[_53]]) + 1
        mem[_53 + ceil32(return_data.size)] = _56
        require _55 + (32 * _56) + 32 <= return_data.size
        t = _53 + ceil32(return_data.size) + 32
        s = _53 + _55 + 32
        while s < _53 + _55 + (32 * _56) + 32:
            mem[t] = mem[s]
            t = t + 32
            s = s + 32
            continue 
        if mem[608] < 1:
            revert with 0, 17
        if mem[608] - 1 >= _56:
            revert with 0, 50
        if idx >= 4:
            revert with 0, 50
        mem[(32 * idx) + 480] = mem[(32 * mem[608] - 1) + _53 + ceil32(return_data.size) + 32]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < 4:
        if block.timestamp < sub_2a9cef9b:
            revert with 0, 17
        if not block.timestamp - sub_2a9cef9b:
            if idx >= 4:
                revert with 0, 50
            mem[(32 * idx) + 224] = sub_b5aa5ace[idx]
        else:
            if block.timestamp - sub_2a9cef9b <= stor13:
                if mem[(32 * idx) + 480] and block.timestamp - sub_2a9cef9b > -1 / mem[(32 * idx) + 480]:
                    revert with 0, 17
                if sub_d7d674b0 < block.timestamp - sub_2a9cef9b:
                    revert with 0, 17
                if sub_b5aa5ace[idx] and sub_d7d674b0 - block.timestamp + sub_2a9cef9b > -1 / sub_b5aa5ace[idx]:
                    revert with 0, 17
                if (sub_d7d674b0 * sub_b5aa5ace[idx]) - (block.timestamp * sub_b5aa5ace[idx]) + (sub_2a9cef9b * sub_b5aa5ace[idx]) > !((block.timestamp * mem[(32 * idx) + 480]) - (sub_2a9cef9b * mem[(32 * idx) + 480])):
                    revert with 0, 17
                if not sub_d7d674b0:
                    revert with 0, 18
                if idx >= 4:
                    revert with 0, 50
                mem[(32 * idx) + 224] = (sub_d7d674b0 * sub_b5aa5ace[idx]) - (block.timestamp * sub_b5aa5ace[idx]) + (sub_2a9cef9b * sub_b5aa5ace[idx]) + (block.timestamp * mem[(32 * idx) + 480]) - (sub_2a9cef9b * mem[(32 * idx) + 480]) / sub_d7d674b0
            else:
                if mem[(32 * idx) + 480] and stor13 > -1 / mem[(32 * idx) + 480]:
                    revert with 0, 17
                if sub_d7d674b0 < stor13:
                    revert with 0, 17
                if sub_b5aa5ace[idx] and sub_d7d674b0 - stor13 > -1 / sub_b5aa5ace[idx]:
                    revert with 0, 17
                if (sub_d7d674b0 * sub_b5aa5ace[idx]) - (stor13 * sub_b5aa5ace[idx]) > !(mem[(32 * idx) + 480] * stor13):
                    revert with 0, 17
                if not sub_d7d674b0:
                    revert with 0, 18
                if idx >= 4:
                    revert with 0, 50
                mem[(32 * idx) + 224] = (sub_d7d674b0 * sub_b5aa5ace[idx]) - (stor13 * sub_b5aa5ace[idx]) + (mem[(32 * idx) + 480] * stor13) / sub_d7d674b0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[mem[64] len 128] = mem[224 len 128]
    return memory
      from mem[64]
       len 128
}

function sub_ccebe925(?) payable {
    require calldata.size - 4 >= 32
    mem[100] = arg1
    staticcall stor4.0x75bea166 with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 96] = 0
    mem[ceil32(return_data.size) + 128] = 0
    mem[ceil32(return_data.size) + 160] = 0
    mem[ceil32(return_data.size) + 192] = 0
    staticcall address(ext_call.return_data[0]).property() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 224 len 352] = ext_call.return_data[0 len 352]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 352
    require return_data.size >= 64
    if not bool((2 * ceil32(return_data.size)) + 288 <= test266151307()):
        revert with 0, 65
    mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[32]
    require return_data.size - 64 >= 64
    if not bool((2 * ceil32(return_data.size)) + 352 <= test266151307()):
        revert with 0, 65
    mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[64]
    mem[(2 * ceil32(return_data.size)) + 320] = ext_call.return_data[96]
    require return_data.size - 128 >= 64
    if not bool((2 * ceil32(return_data.size)) + 416 <= test266151307()):
        revert with 0, 65
    mem[(2 * ceil32(return_data.size)) + 352] = ext_call.return_data[128]
    mem[(2 * ceil32(return_data.size)) + 384] = ext_call.return_data[160]
    mem[(2 * ceil32(return_data.size)) + 416 len 128] = call.data[calldata.size len 128]
    mem[(2 * ceil32(return_data.size)) + 544 len 128] = call.data[calldata.size len 128]
    mem[(2 * ceil32(return_data.size)) + 672] = 2
    mem[64] = (2 * ceil32(return_data.size)) + 768
    mem[(2 * ceil32(return_data.size)) + 704 len 64] = call.data[calldata.size len 64]
    mem[(2 * ceil32(return_data.size)) + 736] = address(stor1.length)
    idx = 0
    while idx < 4:
        mem[mem[64] + 4] = idx
        staticcall stor4.0xd2bf518c with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _49 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_49] == mem[_49 + 12 len 20]
        if 0 >= mem[(2 * ceil32(return_data.size)) + 672]:
            revert with 0, 50
        mem[(2 * ceil32(return_data.size)) + 704] = mem[_49 + 12 len 20]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 10^18
        mem[mem[64] + 36] = 64
        _60 = mem[(2 * ceil32(return_data.size)) + 672]
        mem[mem[64] + 68] = mem[(2 * ceil32(return_data.size)) + 672]
        s = 0
        t = mem[64] + 100
        u = (2 * ceil32(return_data.size)) + 704
        while s < _60:
            mem[t] = mem[u + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        staticcall stor5.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args 10^18, 64, mem[mem[64] + 68 len (32 * _60) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _128 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _133 = mem[_128]
        require mem[_128] <= test266151307()
        require _128 + return_data.size > _128 + mem[_128] + 31
        _139 = mem[_128 + mem[_128]]
        if mem[_128 + mem[_128]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_128 + mem[_128]]) + 1 < 0 or _128 + ceil32(return_data.size) + ceil32(32 * mem[_128 + mem[_128]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _128 + ceil32(return_data.size) + ceil32(32 * mem[_128 + mem[_128]]) + 1
        mem[_128 + ceil32(return_data.size)] = _139
        require _133 + (32 * _139) + 32 <= return_data.size
        t = _128 + ceil32(return_data.size) + 32
        s = _128 + _133 + 32
        while s < _128 + _133 + (32 * _139) + 32:
            mem[t] = mem[s]
            t = t + 32
            s = s + 32
            continue 
        if mem[(2 * ceil32(return_data.size)) + 672] < 1:
            revert with 0, 17
        if mem[(2 * ceil32(return_data.size)) + 672] - 1 >= _139:
            revert with 0, 50
        if idx >= 4:
            revert with 0, 50
        mem[(32 * idx) + (2 * ceil32(return_data.size)) + 544] = mem[(32 * mem[(2 * ceil32(return_data.size)) + 672] - 1) + _128 + ceil32(return_data.size) + 32]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _50 = mem[64]
    mem[64] = mem[64] + 128
    mem[_50 len 128] = call.data[calldata.size len 128]
    if sub_2a9cef9b == block.timestamp:
        _52 = mem[64]
        mem[64] = mem[64] + 128
        mem[_52] = sub_b5aa5ace.length
        idx = _52
        s = 6
        while _52 + 128 > idx + 32:
            mem[idx + 32] = uint256(stor1[s])
            idx = idx + 32
            s = s + 1
            continue 
        if mem[(2 * ceil32(return_data.size)) + 224] >= 4:
            revert with 0, 50
        if mem[(2 * ceil32(return_data.size)) + 224] >= 4:
            revert with 0, 50
        if mem[(2 * ceil32(return_data.size)) + 224] >= 4:
            revert with 0, 50
        if mem[(2 * ceil32(return_data.size)) + 288] >= 4:
            revert with 0, 50
        if mem[(2 * ceil32(return_data.size)) + 288] >= 4:
            revert with 0, 50
        if mem[(2 * ceil32(return_data.size)) + 288] >= 4:
            revert with 0, 50
        if mem[(32 * mem[(2 * ceil32(return_data.size)) + 224]) + (2 * ceil32(return_data.size)) + 544] > mem[(32 * mem[(2 * ceil32(return_data.size)) + 224]) + _52]:
            if mem[(32 * mem[(2 * ceil32(return_data.size)) + 288]) + (2 * ceil32(return_data.size)) + 544] > mem[(32 * mem[(2 * ceil32(return_data.size)) + 288]) + _52]:
                if mem[(32 * mem[(2 * ceil32(return_data.size)) + 288]) + (2 * ceil32(return_data.size)) + 544] and ext_call.return_data[96] > -1 / mem[(32 * mem[(2 * ceil32(return_data.size)) + 288]) + (2 * ceil32(return_data.size)) + 544]:
                    revert with 0, 17
                if mem[(32 * mem[(2 * ceil32(return_data.size)) + 224]) + (2 * ceil32(return_data.size)) + 544] and ext_call.return_data[32] > -1 / mem[(32 * mem[(2 * ceil32(return_data.size)) + 224]) + (2 * ceil32(return_data.size)) + 544]:
                    revert with 0, 17
                if mem[(32 * mem[(2 * ceil32(return_data.size)) + 224]) + (2 * ceil32(return_data.size)) + 544] * ext_call.return_data[32] / 10^18 > !(mem[(32 * mem[(2 * ceil32(return_data.size)) + 288]) + (2 * ceil32(return_data.size)) + 544] * ext_call.return_data[96] / 10^18):
                    revert with 0, 17
                mem[mem[64]] = (mem[(32 * mem[(2 * ceil32(return_data.size)) + 224]) + (2 * ceil32(return_data.size)) + 544] * ext_call.return_data[32] / 10^18) + (mem[(32 * mem[(2 * ceil32(return_data.size)) + 288]) + (2 * ceil32(return_data.size)) + 544] * ext_call.return_data[96] / 10^18)
            else:
                if mem[(32 * mem[(2 * ceil32(return_data.size)) + 288]) + _52] and ext_call.return_data[96] > -1 / mem[(32 * mem[(2 * ceil32(return_data.size)) + 288]) + _52]:
                    revert with 0, 17
                if mem[(32 * mem[(2 * ceil32(return_data.size)) + 224]) + (2 * ceil32(return_data.size)) + 544] and ext_call.return_data[32] > -1 / mem[(32 * mem[(2 * ceil32(return_data.size)) + 224]) + (2 * ceil32(return_data.size)) + 544]:
                    revert with 0, 17
                if mem[(32 * mem[(2 * ceil32(return_data.size)) + 224]) + (2 * ceil32(return_data.size)) + 544] * ext_call.return_data[32] / 10^18 > !(mem[(32 * mem[(2 * ceil32(return_data.size)) + 288]) + _52] * ext_call.return_data[96] / 10^18):
                    revert with 0, 17
                mem[mem[64]] = (mem[(32 * mem[(2 * ceil32(return_data.size)) + 224]) + (2 * ceil32(return_data.size)) + 544] * ext_call.return_data[32] / 10^18) + (mem[(32 * mem[(2 * ceil32(return_data.size)) + 288]) + _52] * ext_call.return_data[96] / 10^18)
        else:
            if mem[(32 * mem[(2 * ceil32(return_data.size)) + 288]) + (2 * ceil32(return_data.size)) + 544] > mem[(32 * mem[(2 * ceil32(return_data.size)) + 288]) + _52]:
                if mem[(32 * mem[(2 * ceil32(return_data.size)) + 288]) + (2 * ceil32(return_data.size)) + 544] and ext_call.return_data[96] > -1 / mem[(32 * mem[(2 * ceil32(return_data.size)) + 288]) + (2 * ceil32(return_data.size)) + 544]:
                    revert with 0, 17
                if mem[(32 * mem[(2 * ceil32(return_data.size)) + 224]) + _52] and ext_call.return_data[32] > -1 / mem[(32 * mem[(2 * ceil32(return_data.size)) + 224]) + _52]:
                    revert with 0, 17
                if mem[(32 * mem[(2 * ceil32(return_data.size)) + 224]) + _52] * ext_call.return_data[32] / 10^18 > !(mem[(32 * mem[(2 * ceil32(return_data.size)) + 288]) + (2 * ceil32(return_data.size)) + 544] * ext_call.return_data[96] / 10^18):
                    revert with 0, 17
                mem[mem[64]] = (mem[(32 * mem[(2 * ceil32(return_data.size)) + 224]) + _52] * ext_call.return_data[32] / 10^18) + (mem[(32 * mem[(2 * ceil32(return_data.size)) + 288]) + (2 * ceil32(return_data.size)) + 544] * ext_call.return_data[96] / 10^18)
            else:
                if mem[(32 * mem[(2 * ceil32(return_data.size)) + 288]) + _52] and ext_call.return_data[96] > -1 / mem[(32 * mem[(2 * ceil32(return_data.size)) + 288]) + _52]:
                    revert with 0, 17
                if mem[(32 * mem[(2 * ceil32(return_data.size)) + 224]) + _52] and ext_call.return_data[32] > -1 / mem[(32 * mem[(2 * ceil32(return_data.size)) + 224]) + _52]:
                    revert with 0, 17
                if mem[(32 * mem[(2 * ceil32(return_data.size)) + 224]) + _52] * ext_call.return_data[32] / 10^18 > !(mem[(32 * mem[(2 * ceil32(return_data.size)) + 288]) + _52] * ext_call.return_data[96] / 10^18):
                    revert with 0, 17
                mem[mem[64]] = (mem[(32 * mem[(2 * ceil32(return_data.size)) + 224]) + _52] * ext_call.return_data[32] / 10^18) + (mem[(32 * mem[(2 * ceil32(return_data.size)) + 288]) + _52] * ext_call.return_data[96] / 10^18)
    else:
        _53 = mem[64]
        mem[64] = mem[64] + 128
        mem[_53 len 128] = call.data[calldata.size len 128]
        _57 = mem[64]
        mem[64] = mem[64] + 128
        mem[_57 len 128] = call.data[calldata.size len 128]
        _62 = mem[64]
        mem[64] = mem[64] + 128
        mem[_62 len 128] = call.data[calldata.size len 128]
        _66 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_66 + 32 len 64] = call.data[calldata.size len 64]
        if 1 >= mem[_66]:
            revert with 0, 50
        mem[_66 + 64] = address(stor1.length)
        idx = 0
        while idx < 4:
            mem[mem[64] + 4] = idx
            staticcall stor4.0xd2bf518c with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _123 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_123] == mem[_123 + 12 len 20]
            if 0 >= mem[_66]:
                revert with 0, 50
            mem[_66 + 32] = mem[_123 + 12 len 20]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 10^18
            mem[mem[64] + 36] = 64
            _148 = mem[_66]
            mem[mem[64] + 68] = mem[_66]
            s = 0
            t = mem[64] + 100
            u = _66 + 32
            while s < _148:
                mem[t] = mem[u + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            staticcall stor5.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 10^18, 64, mem[mem[64] + 68 len (32 * _148) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _188 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _192 = mem[_188]
            require mem[_188] <= test266151307()
            require _188 + return_data.size > _188 + mem[_188] + 31
            _199 = mem[_188 + mem[_188]]
            if mem[_188 + mem[_188]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_188 + mem[_188]]) + 1 < 0 or _188 + ceil32(return_data.size) + ceil32(32 * mem[_188 + mem[_188]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _188 + ceil32(return_data.size) + ceil32(32 * mem[_188 + mem[_188]]) + 1
            mem[_188 + ceil32(return_data.size)] = _199
            require _192 + (32 * _199) + 32 <= return_data.size
            t = _188 + ceil32(return_data.size) + 32
            s = _188 + _192 + 32
            while s < _188 + _192 + (32 * _199) + 32:
                mem[t] = mem[s]
                t = t + 32
                s = s + 32
                continue 
            if mem[_66] < 1:
                revert with 0, 17
            if mem[_66] - 1 >= _199:
                revert with 0, 50
            if idx >= 4:
                revert with 0, 50
            mem[(32 * idx) + _62] = mem[(32 * mem[_66] - 1) + _188 + ceil32(return_data.size) + 32]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < 4:
            if block.timestamp < sub_2a9cef9b:
                revert with 0, 17
            if not block.timestamp - sub_2a9cef9b:
                if idx >= 4:
                    revert with 0, 50
                mem[(32 * idx) + _53] = sub_b5aa5ace[idx]
            else:
                if block.timestamp - sub_2a9cef9b <= stor13:
                    if mem[(32 * idx) + _62] and block.timestamp - sub_2a9cef9b > -1 / mem[(32 * idx) + _62]:
                        revert with 0, 17
                    if sub_d7d674b0 < block.timestamp - sub_2a9cef9b:
                        revert with 0, 17
                    if sub_b5aa5ace[idx] and sub_d7d674b0 - block.timestamp + sub_2a9cef9b > -1 / sub_b5aa5ace[idx]:
                        revert with 0, 17
                    if (sub_d7d674b0 * sub_b5aa5ace[idx]) - (block.timestamp * sub_b5aa5ace[idx]) + (sub_2a9cef9b * sub_b5aa5ace[idx]) > !((block.timestamp * mem[(32 * idx) + _62]) - (sub_2a9cef9b * mem[(32 * idx) + _62])):
                        revert with 0, 17
                    if not sub_d7d674b0:
                        revert with 0, 18
                    if idx >= 4:
                        revert with 0, 50
                    mem[(32 * idx) + _53] = (sub_d7d674b0 * sub_b5aa5ace[idx]) - (block.timestamp * sub_b5aa5ace[idx]) + (sub_2a9cef9b * sub_b5aa5ace[idx]) + (block.timestamp * mem[(32 * idx) + _62]) - (sub_2a9cef9b * mem[(32 * idx) + _62]) / sub_d7d674b0
                else:
                    if mem[(32 * idx) + _62] and stor13 > -1 / mem[(32 * idx) + _62]:
                        revert with 0, 17
                    if sub_d7d674b0 < stor13:
                        revert with 0, 17
                    if sub_b5aa5ace[idx] and sub_d7d674b0 - stor13 > -1 / sub_b5aa5ace[idx]:
                        revert with 0, 17
                    if (sub_d7d674b0 * sub_b5aa5ace[idx]) - (stor13 * sub_b5aa5ace[idx]) > !(mem[(32 * idx) + _62] * stor13):
                        revert with 0, 17
                    if not sub_d7d674b0:
                        revert with 0, 18
                    if idx >= 4:
                        revert with 0, 50
                    mem[(32 * idx) + _53] = (sub_d7d674b0 * sub_b5aa5ace[idx]) - (stor13 * sub_b5aa5ace[idx]) + (mem[(32 * idx) + _62] * stor13) / sub_d7d674b0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if mem[(2 * ceil32(return_data.size)) + 224] >= 4:
            revert with 0, 50
        if mem[(2 * ceil32(return_data.size)) + 224] >= 4:
            revert with 0, 50
        if mem[(2 * ceil32(return_data.size)) + 224] >= 4:
            revert with 0, 50
        if mem[(2 * ceil32(return_data.size)) + 288] >= 4:
            revert with 0, 50
        if mem[(2 * ceil32(return_data.size)) + 288] >= 4:
            revert with 0, 50
        if mem[(2 * ceil32(return_data.size)) + 288] >= 4:
            revert with 0, 50
        if mem[(32 * mem[(2 * ceil32(return_data.size)) + 224]) + (2 * ceil32(return_data.size)) + 544] > mem[(32 * mem[(2 * ceil32(return_data.size)) + 224]) + _53]:
            if mem[(32 * mem[(2 * ceil32(return_data.size)) + 288]) + (2 * ceil32(return_data.size)) + 544] > mem[(32 * mem[(2 * ceil32(return_data.size)) + 288]) + _53]:
                if mem[(32 * mem[(2 * ceil32(return_data.size)) + 288]) + (2 * ceil32(return_data.size)) + 544] and ext_call.return_data[96] > -1 / mem[(32 * mem[(2 * ceil32(return_data.size)) + 288]) + (2 * ceil32(return_data.size)) + 544]:
                    revert with 0, 17
                if mem[(32 * mem[(2 * ceil32(return_data.size)) + 224]) + (2 * ceil32(return_data.size)) + 544] and ext_call.return_data[32] > -1 / mem[(32 * mem[(2 * ceil32(return_data.size)) + 224]) + (2 * ceil32(return_data.size)) + 544]:
                    revert with 0, 17
                if mem[(32 * mem[(2 * ceil32(return_data.size)) + 224]) + (2 * ceil32(return_data.size)) + 544] * ext_call.return_data[32] / 10^18 > !(mem[(32 * mem[(2 * ceil32(return_data.size)) + 288]) + (2 * ceil32(return_data.size)) + 544] * ext_call.return_data[96] / 10^18):
                    revert with 0, 17
                mem[mem[64]] = (mem[(32 * mem[(2 * ceil32(return_data.size)) + 224]) + (2 * ceil32(return_data.size)) + 544] * ext_call.return_data[32] / 10^18) + (mem[(32 * mem[(2 * ceil32(return_data.size)) + 288]) + (2 * ceil32(return_data.size)) + 544] * ext_call.return_data[96] / 10^18)
            else:
                if mem[(32 * mem[(2 * ceil32(return_data.size)) + 288]) + _53] and ext_call.return_data[96] > -1 / mem[(32 * mem[(2 * ceil32(return_data.size)) + 288]) + _53]:
                    revert with 0, 17
                if mem[(32 * mem[(2 * ceil32(return_data.size)) + 224]) + (2 * ceil32(return_data.size)) + 544] and ext_call.return_data[32] > -1 / mem[(32 * mem[(2 * ceil32(return_data.size)) + 224]) + (2 * ceil32(return_data.size)) + 544]:
                    revert with 0, 17
                if mem[(32 * mem[(2 * ceil32(return_data.size)) + 224]) + (2 * ceil32(return_data.size)) + 544] * ext_call.return_data[32] / 10^18 > !(mem[(32 * mem[(2 * ceil32(return_data.size)) + 288]) + _53] * ext_call.return_data[96] / 10^18):
                    revert with 0, 17
                mem[mem[64]] = (mem[(32 * mem[(2 * ceil32(return_data.size)) + 224]) + (2 * ceil32(return_data.size)) + 544] * ext_call.return_data[32] / 10^18) + (mem[(32 * mem[(2 * ceil32(return_data.size)) + 288]) + _53] * ext_call.return_data[96] / 10^18)
        else:
            if mem[(32 * mem[(2 * ceil32(return_data.size)) + 288]) + (2 * ceil32(return_data.size)) + 544] > mem[(32 * mem[(2 * ceil32(return_data.size)) + 288]) + _53]:
                if mem[(32 * mem[(2 * ceil32(return_data.size)) + 288]) + (2 * ceil32(return_data.size)) + 544] and ext_call.return_data[96] > -1 / mem[(32 * mem[(2 * ceil32(return_data.size)) + 288]) + (2 * ceil32(return_data.size)) + 544]:
                    revert with 0, 17
                if mem[(32 * mem[(2 * ceil32(return_data.size)) + 224]) + _53] and ext_call.return_data[32] > -1 / mem[(32 * mem[(2 * ceil32(return_data.size)) + 224]) + _53]:
                    revert with 0, 17
                if mem[(32 * mem[(2 * ceil32(return_data.size)) + 224]) + _53] * ext_call.return_data[32] / 10^18 > !(mem[(32 * mem[(2 * ceil32(return_data.size)) + 288]) + (2 * ceil32(return_data.size)) + 544] * ext_call.return_data[96] / 10^18):
                    revert with 0, 17
                mem[mem[64]] = (mem[(32 * mem[(2 * ceil32(return_data.size)) + 224]) + _53] * ext_call.return_data[32] / 10^18) + (mem[(32 * mem[(2 * ceil32(return_data.size)) + 288]) + (2 * ceil32(return_data.size)) + 544] * ext_call.return_data[96] / 10^18)
            else:
                if mem[(32 * mem[(2 * ceil32(return_data.size)) + 288]) + _53] and ext_call.return_data[96] > -1 / mem[(32 * mem[(2 * ceil32(return_data.size)) + 288]) + _53]:
                    revert with 0, 17
                if mem[(32 * mem[(2 * ceil32(return_data.size)) + 224]) + _53] and ext_call.return_data[32] > -1 / mem[(32 * mem[(2 * ceil32(return_data.size)) + 224]) + _53]:
                    revert with 0, 17
                if mem[(32 * mem[(2 * ceil32(return_data.size)) + 224]) + _53] * ext_call.return_data[32] / 10^18 > !(mem[(32 * mem[(2 * ceil32(return_data.size)) + 288]) + _53] * ext_call.return_data[96] / 10^18):
                    revert with 0, 17
                mem[mem[64]] = (mem[(32 * mem[(2 * ceil32(return_data.size)) + 224]) + _53] * ext_call.return_data[32] / 10^18) + (mem[(32 * mem[(2 * ceil32(return_data.size)) + 288]) + _53] * ext_call.return_data[96] / 10^18)
    return memory
      from mem[64]
       len 32
}



}
