contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint64 arg1)
#
const SYMBOL = 'HT', 0


address owner;
mapping of struct stor1;
mapping of address stor2;
mapping of address stor99;

function owner() {
    return owner
}

function sub_23057706(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg1.length) + 128 > test266151307() or ceil32(arg1.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = stor2[arg1[all]]
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function sub_dfc14c02(?) {
    require calldata.size - 4 >= 96
    require arg1 == uint128(arg1)
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg3.length) + 128 > test266151307() or ceil32(arg3.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    mem[ceil32(arg3.length) + 128 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    mem[ceil32(arg3.length) + arg3.length + 128] = 2
    if not stor[mem[arg3.length + 160 len ceil32(arg3.length)]][Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0)]:
        revert with 0, 'Invalid symbol'
    mem[ceil32(arg3.length) + 128 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    mem[ceil32(arg3.length) + arg3.length + 128] = 2
    require ext_code.size(stor[mem[arg3.length + 160 len ceil32(arg3.length)]][Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0)])
    call stor[mem[arg3.length + 160 len ceil32(arg3.length)]][Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0)].0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, ext_call.return_data[4 len 28] == bool(0, ext_call.return_data[4 len 28])
    emit 0x2b4cf48d: arg2, Array(len=arg3.length, data=arg3[all]), uint128(arg1), msg.sender
}

function addERC20(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'owner only'
    mem[96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _5 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _7 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + ceil32(mem[mem[96] + 96]) + 128 > test266151307() or ceil32(mem[mem[96] + 96]) + 32 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(mem[mem[96] + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _7
    require _5 + _7 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_7)] = mem[_5 + 128 len ceil32(_7)]
    if ceil32(_7) <= _7:
        _25 = mem[64]
        mem[mem[64] len ceil32(_7)] = mem[ceil32(return_data.size) + 128 len ceil32(_7)]
        mem[mem[64] + _7] = 2
        stor[sha3(mem[mem[64] len _25 + _7 + -mem[64] + 32])] = arg1
    else:
        mem[ceil32(return_data.size) + _7 + 128] = 0
        _26 = mem[64]
        mem[mem[64] len ceil32(_7)] = mem[ceil32(return_data.size) + 128 len ceil32(_7)]
        mem[mem[64] + _7] = 2
        stor[sha3(mem[mem[64] len _26 + _7 + -mem[64] + 32])] = arg1
}

function _fallback() payable {
    if 1 >= calldata.size:
        revert with 'NH{q', 50
    if 0 == ':':
        if 0 >= calldata.size:
            revert with 'NH{q', 50
        if 0 == 'p':
            require 2 <= calldata.size
            require calldata.size <= calldata.size
            idx = 0
            while idx < calldata.size - 2:
                if idx >= calldata.size - 2:
                    revert with 'NH{q', 50
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            emit 0x2b4cf48d: msg.value, 96, 0, 2, 'HT', 0, msg.sender
        else:
            if 0 >= calldata.size:
                revert with 'NH{q', 50
            if 0 == 'r':
                require 2 <= calldata.size
                require calldata.size <= calldata.size
                if floor32(calldata.size + 29) <= calldata.size - 2:
                    emit 0x3d084832: msg.value, 96, 160, 2, 'HT', 0, calldata.size - 2, call.data[2 len calldata.size - 2], Mask(8 * floor32(calldata.size + 29) + -calldata.size + 2, -(8 * floor32(calldata.size + 29) + -calldata.size + 2) + 256, 0) >> -(8 * floor32(calldata.size + 29) + -calldata.size + 2) + 256, msg.sender
                else:
                    emit 0x3d084832: msg.value, 96, 160, 2, 'HT', 0, calldata.size - 2, Mask(8 * calldata.size - 2, -(8 * calldata.size - 2) + 256, call.data[2 len calldata.size - 2], Mask(8 * floor32(calldata.size + 29) + -calldata.size + 2, -(8 * floor32(calldata.size + 29) + -calldata.size + 2) + 256, 0) >> -(8 * floor32(calldata.size + 29) + -calldata.size + 2) + 256) << (8 * calldata.size - 2) - 256, Mask(8 * floor32(calldata.size + 29) + -calldata.size + 2, -(8 * floor32(calldata.size + 29) + -calldata.size + 2) + 256, 0) >> -(8 * floor32(calldata.size + 29) + -calldata.size + 2) + 256, msg.sender
}

function sub_2baf9b78(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint64(arg1)
    if bool(stor1[arg1].field_512):
        if bool(stor1[arg1].field_512) == uint255(stor1[arg1].field_513) < 32:
            revert with 'NH{q', 34
        if bool(stor1[arg1].field_512):
            if bool(stor1[arg1].field_512) == uint255(stor1[arg1].field_513) < 32:
                revert with 'NH{q', 34
            if uint255(stor1[arg1].field_513):
                if 31 >= uint255(stor1[arg1].field_513):
                    mem[128] = 256 * Mask(248, 0, stor1[arg1].field_520)
                else:
                    mem[128] = uint256(stor1[arg1][2].field_0)
                    idx = 128
                    s = 0
                    while uint255(stor1[arg1].field_513) + 96 > idx:
                        mem[idx + 32] = uint256(stor1[arg1][s + 2].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor1[arg1].field_512) == stor1[arg1].field_513 % 128 < 32:
                revert with 'NH{q', 34
            if stor1[arg1].field_513 % 128:
                if 31 >= stor1[arg1].field_513 % 128:
                    mem[128] = 256 * Mask(248, 0, stor1[arg1].field_520)
                else:
                    mem[128] = uint256(stor1[arg1][2].field_0)
                    idx = 128
                    s = 0
                    while stor1[arg1].field_513 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor1[arg1][s + 2].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        return stor1[arg1].field_0, 
               uint256(stor1[arg1].field_256),
               Array(len=2 * Mask(256, -1, uint255(stor1[arg1].field_513)), data=mem[128 len ceil32(uint255(stor1[arg1].field_513))])
    if bool(stor1[arg1].field_512) == stor1[arg1].field_513 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor1[arg1].field_512):
        if bool(stor1[arg1].field_512) == uint255(stor1[arg1].field_513) < 32:
            revert with 'NH{q', 34
        if uint255(stor1[arg1].field_513):
            if 31 >= uint255(stor1[arg1].field_513):
                mem[128] = 256 * Mask(248, 0, stor1[arg1].field_520)
            else:
                mem[128] = uint256(stor1[arg1][2].field_0)
                idx = 128
                s = 0
                while uint255(stor1[arg1].field_513) + 96 > idx:
                    mem[idx + 32] = uint256(stor1[arg1][s + 2].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor1[arg1].field_512) == stor1[arg1].field_513 % 128 < 32:
            revert with 'NH{q', 34
        if stor1[arg1].field_513 % 128:
            if 31 >= stor1[arg1].field_513 % 128:
                mem[128] = 256 * Mask(248, 0, stor1[arg1].field_520)
            else:
                mem[128] = uint256(stor1[arg1][2].field_0)
                idx = 128
                s = 0
                while stor1[arg1].field_513 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor1[arg1][s + 2].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    return stor1[arg1].field_0, 
           uint256(stor1[arg1].field_256),
           Array(len=stor1[arg1].field_512 % 128, data=mem[128 len ceil32(stor1[arg1].field_513 % 128)])
}

function sub_444a8d3f(?) {
    require calldata.size - 4 >= 128
    require arg1 == uint64(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg4.length) + 128 > test266151307() or ceil32(arg4.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 'owner only'
    if not address(arg2):
        revert with 0, 'user is zero address'
    if stor1[arg1 << 192].field_0:
        revert with 0, 'already exists'
    mem[ceil32(arg4.length) + 128] = 2
    mem[ceil32(arg4.length) + 258 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
    if ceil32(arg4.length) > arg4.length:
        mem[ceil32(arg4.length) + arg4.length + 258] = 0
    if sha3(Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256) == sha3('HT'):
        if eth.balance(this.address) < arg3:
            revert with 0, 'balance not enough'
    else:
        mem[ceil32(arg4.length) + arg4.length + 258 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
        mem[ceil32(arg4.length) + (2 * arg4.length) + 258] = 2
        if not stor[mem[(2 * ceil32(arg4.length)) + arg4.length + 258 len arg4.length + -ceil32(arg4.length) + 32]][Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256]:
            revert with 0, 'Invalid symbol'
        mem[ceil32(arg4.length) + arg4.length + 258 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
        mem[ceil32(arg4.length) + (2 * arg4.length) + 258] = 2
        require ext_code.size(stor[mem[(2 * ceil32(arg4.length)) + arg4.length + 258 len arg4.length + -ceil32(arg4.length) + 32]][Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256])
        staticcall stor[mem[(2 * ceil32(arg4.length)) + arg4.length + 258 len arg4.length + -ceil32(arg4.length) + 32]][Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < arg3:
            revert with 0, 'balance not enough'
    stor1[arg1 << 192].field_0 = address(arg2)
    uint256(stor1[arg1 << 192].field_256) = arg3
    if bool(stor1[arg1 << 192].field_512):
        if bool(stor1[arg1 << 192].field_512) == uint255(stor1[arg1 << 192].field_513) < 32:
            revert with 'NH{q', 34
        if arg4.length:
            uint256(stor1[arg1 << 192][2][].field_0) = Array(len=arg4.length, data=arg4[all])
        else:
            uint256(stor1[arg1 << 192].field_512) = 0
            idx = 0
            while uint255(stor1[arg1 << 192].field_513) + 31 / 32 > idx:
                uint256(stor1[arg1 << 192][idx + 2].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor1[arg1 << 192].field_512) == stor1[arg1 << 192].field_513 % 128 < 32:
            revert with 'NH{q', 34
        if arg4.length:
            uint256(stor1[arg1 << 192][2][].field_0) = Array(len=arg4.length, data=arg4[all])
        else:
            uint256(stor1[arg1 << 192].field_512) = 0
            idx = 0
            while stor1[arg1 << 192].field_513 % 128 + 31 / 32 > idx:
                uint256(stor1[arg1 << 192][idx + 2].field_0) = 0
                idx = idx + 1
                continue 
}

function sub_23443525(?) {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg1.length) + 128 > test266151307() or ceil32(arg1.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg1.length) + ceil32(arg2.length) + 160 > test266151307() or ceil32(arg2.length) + 160 < 128:
        revert with 'NH{q', 65
    mem[ceil32(arg1.length) + 128] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    require arg3 == arg3
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg2.length + 160] = 2
    if not stor[mem[ceil32(arg1.length) + arg2.length + 192 len ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)]:
        revert with 0, 'Invalid symbol'
    if arg1.length <= 0:
        revert with 0, 'Invalid to user address'
    if arg1.length > 12:
        revert with 0, 'Invalid to user address'
    if ceil32(arg2.length) <= arg2.length:
        _117 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + _117 + 160] = 2
        if ceil32(_117) <= _117:
            _198 = sha3(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len _117 - arg2.length + ceil32(arg2.length)])
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 164] = msg.sender
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 196] = this.address
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 228] = arg3
            require ext_code.size(stor[_198])
            call stor[_198].0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg3
        else:
            _204 = sha3(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len _117 - arg2.length + ceil32(arg2.length)])
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 164] = msg.sender
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 196] = this.address
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 228] = arg3
            require ext_code.size(stor[_204])
            call stor[_204].0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg3
    else:
        _119 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + _119 + 160] = 2
        if ceil32(_119) <= _119:
            _201 = sha3(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len _119 - arg2.length + ceil32(arg2.length)])
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 164] = msg.sender
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 196] = this.address
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 228] = arg3
            require ext_code.size(stor[_201])
            call stor[_201].0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg3
        else:
            _207 = sha3(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len _119 - arg2.length + ceil32(arg2.length)])
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 164] = msg.sender
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 196] = this.address
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 228] = arg3
            require ext_code.size(stor[_207])
            call stor[_207].0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg3
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, ext_call.return_data[4 len 28] == bool(0, ext_call.return_data[4 len 28])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + 160] = arg3
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + 192] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + 256] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + 288 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    if ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) > Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 288] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + 224] = ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 128
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 288] = arg1.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 320 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if ceil32(arg1.length) > arg1.length:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + 320] = 0
    emit 0x3d084832: mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + 160 len ceil32(arg1.length) + ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160], msg.sender
}

function sub_a67755c2(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'owner only'
    mem[96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _5 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _7 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + ceil32(mem[mem[96] + 96]) + 128 > test266151307() or ceil32(mem[mem[96] + 96]) + 32 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(mem[mem[96] + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _7
    require _5 + _7 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_7)] = mem[_5 + 128 len ceil32(_7)]
    if ceil32(_7) <= _7:
        _245 = mem[64]
        mem[mem[64] len ceil32(_7)] = mem[ceil32(return_data.size) + 128 len ceil32(_7)]
        mem[mem[64] + _7] = 2
        if stor[sha3(mem[mem[64] len _245 + _7 + -mem[64] + 32])] != address(arg1):
            revert with 0, 'Invalid address'
        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if ceil32(_7) <= _7:
            _501 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _505 = mem[_501]
            require mem[_501] <= test266151307()
            require _501 + mem[_501] + 31 < _501 + return_data.size
            _511 = mem[_501 + mem[_501]]
            if mem[_501 + mem[_501]] > test266151307():
                revert with 'NH{q', 65
            if _501 + ceil32(return_data.size) + ceil32(mem[_501 + mem[_501]]) + 32 > test266151307() or ceil32(mem[_501 + mem[_501]]) + 32 < 0:
                revert with 'NH{q', 65
            mem[64] = _501 + ceil32(return_data.size) + ceil32(mem[_501 + mem[_501]]) + 32
            mem[_501 + ceil32(return_data.size)] = _511
            require _505 + _511 + 32 <= return_data.size
            mem[_501 + ceil32(return_data.size) + 32 len ceil32(_511)] = mem[_501 + _505 + 32 len ceil32(_511)]
            if ceil32(_511) <= _511:
                _713 = mem[64]
                mem[mem[64] len ceil32(_511)] = mem[_501 + ceil32(return_data.size) + 32 len ceil32(_511)]
                mem[mem[64] + _511] = 2
                stor[sha3(mem[mem[64] len _713 + _511 + -mem[64] + 32])] = 0
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if ceil32(_511) <= _511:
                    _969 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _985 = mem[_969]
                    require mem[_969] == mem[_969]
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _985
                    require ext_code.size(address(arg1))
                    call address(arg1).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _985
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1033 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1033] == bool(mem[_1033])
                else:
                    _977 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _993 = mem[_977]
                    require mem[_977] == mem[_977]
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _993
                    require ext_code.size(address(arg1))
                    call address(arg1).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _993
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1041 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1041] == bool(mem[_1041])
            else:
                mem[_501 + ceil32(return_data.size) + _511 + 32] = 0
                _717 = mem[64]
                mem[mem[64] len ceil32(_511)] = mem[_501 + ceil32(return_data.size) + 32 len ceil32(_511)]
                mem[mem[64] + _511] = 2
                stor[sha3(mem[mem[64] len _717 + _511 + -mem[64] + 32])] = 0
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if ceil32(_511) <= _511:
                    _970 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _986 = mem[_970]
                    require mem[_970] == mem[_970]
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _986
                    require ext_code.size(address(arg1))
                    call address(arg1).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _986
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1034 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1034] == bool(mem[_1034])
                else:
                    _978 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _994 = mem[_978]
                    require mem[_978] == mem[_978]
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _994
                    require ext_code.size(address(arg1))
                    call address(arg1).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _994
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1042 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1042] == bool(mem[_1042])
        else:
            _503 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _507 = mem[_503]
            require mem[_503] <= test266151307()
            require _503 + mem[_503] + 31 < _503 + return_data.size
            _515 = mem[_503 + mem[_503]]
            if mem[_503 + mem[_503]] > test266151307():
                revert with 'NH{q', 65
            if _503 + ceil32(return_data.size) + ceil32(mem[_503 + mem[_503]]) + 32 > test266151307() or ceil32(mem[_503 + mem[_503]]) + 32 < 0:
                revert with 'NH{q', 65
            mem[64] = _503 + ceil32(return_data.size) + ceil32(mem[_503 + mem[_503]]) + 32
            mem[_503 + ceil32(return_data.size)] = _515
            require _507 + _515 + 32 <= return_data.size
            mem[_503 + ceil32(return_data.size) + 32 len ceil32(_515)] = mem[_503 + _507 + 32 len ceil32(_515)]
            if ceil32(_515) <= _515:
                _714 = mem[64]
                mem[mem[64] len ceil32(_515)] = mem[_503 + ceil32(return_data.size) + 32 len ceil32(_515)]
                mem[mem[64] + _515] = 2
                stor[sha3(mem[mem[64] len _714 + _515 + -mem[64] + 32])] = 0
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if ceil32(_515) <= _515:
                    _971 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _987 = mem[_971]
                    require mem[_971] == mem[_971]
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _987
                    require ext_code.size(address(arg1))
                    call address(arg1).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _987
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1035 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1035] == bool(mem[_1035])
                else:
                    _979 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _995 = mem[_979]
                    require mem[_979] == mem[_979]
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _995
                    require ext_code.size(address(arg1))
                    call address(arg1).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _995
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1043 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1043] == bool(mem[_1043])
            else:
                mem[_503 + ceil32(return_data.size) + _515 + 32] = 0
                _718 = mem[64]
                mem[mem[64] len ceil32(_515)] = mem[_503 + ceil32(return_data.size) + 32 len ceil32(_515)]
                mem[mem[64] + _515] = 2
                stor[sha3(mem[mem[64] len _718 + _515 + -mem[64] + 32])] = 0
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if ceil32(_515) <= _515:
                    _972 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _988 = mem[_972]
                    require mem[_972] == mem[_972]
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _988
                    require ext_code.size(address(arg1))
                    call address(arg1).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _988
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1036 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1036] == bool(mem[_1036])
                else:
                    _980 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _996 = mem[_980]
                    require mem[_980] == mem[_980]
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _996
                    require ext_code.size(address(arg1))
                    call address(arg1).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _996
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1044 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1044] == bool(mem[_1044])
    else:
        mem[ceil32(return_data.size) + _7 + 128] = 0
        _246 = mem[64]
        mem[mem[64] len ceil32(_7)] = mem[ceil32(return_data.size) + 128 len ceil32(_7)]
        mem[mem[64] + _7] = 2
        if stor[sha3(mem[mem[64] len _246 + _7 + -mem[64] + 32])] != address(arg1):
            revert with 0, 'Invalid address'
        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if ceil32(_7) <= _7:
            _502 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _506 = mem[_502]
            require mem[_502] <= test266151307()
            require _502 + mem[_502] + 31 < _502 + return_data.size
            _513 = mem[_502 + mem[_502]]
            if mem[_502 + mem[_502]] > test266151307():
                revert with 'NH{q', 65
            if _502 + ceil32(return_data.size) + ceil32(mem[_502 + mem[_502]]) + 32 > test266151307() or ceil32(mem[_502 + mem[_502]]) + 32 < 0:
                revert with 'NH{q', 65
            mem[64] = _502 + ceil32(return_data.size) + ceil32(mem[_502 + mem[_502]]) + 32
            mem[_502 + ceil32(return_data.size)] = _513
            require _506 + _513 + 32 <= return_data.size
            mem[_502 + ceil32(return_data.size) + 32 len ceil32(_513)] = mem[_502 + _506 + 32 len ceil32(_513)]
            if ceil32(_513) <= _513:
                mem[mem[64] len ceil32(_513)] = mem[_502 + ceil32(return_data.size) + 32 len ceil32(_513)]
                mem[mem[64] + _513] = 2
                stor[sha3(mem[mem[64] len _513 + 32])] = 0
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if ceil32(_513) <= _513:
                    _973 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _989 = mem[_973]
                    require mem[_973] == mem[_973]
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _989
                    require ext_code.size(address(arg1))
                    call address(arg1).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _989
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1037 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1037] == bool(mem[_1037])
                else:
                    _981 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _997 = mem[_981]
                    require mem[_981] == mem[_981]
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _997
                    require ext_code.size(address(arg1))
                    call address(arg1).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _997
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1045 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1045] == bool(mem[_1045])
            else:
                mem[_502 + ceil32(return_data.size) + _513 + 32] = 0
                mem[mem[64] len ceil32(_513)] = mem[_502 + ceil32(return_data.size) + 32 len ceil32(_513)]
                mem[mem[64] + _513] = 2
                stor[sha3(mem[mem[64] len _513 + 32])] = 0
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if ceil32(_513) <= _513:
                    _974 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _990 = mem[_974]
                    require mem[_974] == mem[_974]
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _990
                    require ext_code.size(address(arg1))
                    call address(arg1).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _990
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1038 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1038] == bool(mem[_1038])
                else:
                    _982 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _998 = mem[_982]
                    require mem[_982] == mem[_982]
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _998
                    require ext_code.size(address(arg1))
                    call address(arg1).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _998
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1046 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1046] == bool(mem[_1046])
        else:
            _504 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _508 = mem[_504]
            require mem[_504] <= test266151307()
            require _504 + mem[_504] + 31 < _504 + return_data.size
            _516 = mem[_504 + mem[_504]]
            if mem[_504 + mem[_504]] > test266151307():
                revert with 'NH{q', 65
            if _504 + ceil32(return_data.size) + ceil32(mem[_504 + mem[_504]]) + 32 > test266151307() or ceil32(mem[_504 + mem[_504]]) + 32 < 0:
                revert with 'NH{q', 65
            mem[64] = _504 + ceil32(return_data.size) + ceil32(mem[_504 + mem[_504]]) + 32
            mem[_504 + ceil32(return_data.size)] = _516
            require _508 + _516 + 32 <= return_data.size
            mem[_504 + ceil32(return_data.size) + 32 len ceil32(_516)] = mem[_504 + _508 + 32 len ceil32(_516)]
            if ceil32(_516) <= _516:
                mem[mem[64] len ceil32(_516)] = mem[_504 + ceil32(return_data.size) + 32 len ceil32(_516)]
                mem[mem[64] + _516] = 2
                stor[sha3(mem[mem[64] len _516 + 32])] = 0
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if ceil32(_516) <= _516:
                    _975 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _991 = mem[_975]
                    require mem[_975] == mem[_975]
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _991
                    require ext_code.size(address(arg1))
                    call address(arg1).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _991
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1039 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1039] == bool(mem[_1039])
                else:
                    _983 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _999 = mem[_983]
                    require mem[_983] == mem[_983]
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _999
                    require ext_code.size(address(arg1))
                    call address(arg1).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _999
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1047 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1047] == bool(mem[_1047])
            else:
                mem[_504 + ceil32(return_data.size) + _516 + 32] = 0
                mem[mem[64] len ceil32(_516)] = mem[_504 + ceil32(return_data.size) + 32 len ceil32(_516)]
                mem[mem[64] + _516] = 2
                stor[sha3(mem[mem[64] len _516 + 32])] = 0
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if ceil32(_516) <= _516:
                    _976 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _992 = mem[_976]
                    require mem[_976] == mem[_976]
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _992
                    require ext_code.size(address(arg1))
                    call address(arg1).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _992
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1040 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1040] == bool(mem[_1040])
                else:
                    _984 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1000 = mem[_984]
                    require mem[_984] == mem[_984]
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _1000
                    require ext_code.size(address(arg1))
                    call address(arg1).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _1000
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1048 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1048] == bool(mem[_1048])
}



}
