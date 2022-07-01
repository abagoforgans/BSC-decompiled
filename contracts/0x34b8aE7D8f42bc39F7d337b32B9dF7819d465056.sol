contract main {




// =====================  Runtime code  =====================


address sub_d483a2aaAddress;
uint256 sub_701c580c;
address sub_76aa6d62Address;
address sub_47a3a62aAddress;
uint256 sub_61f8967c;
uint256 maxfee;
uint256 sub_bf47553e;
mapping of struct stor7;
mapping of uint8 stor8;

function getRole(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor8[address(arg1)])
}

function sub_47a3a62a(?) {
    return sub_47a3a62aAddress
}

function sub_61f8967c(?) {
    return sub_61f8967c
}

function sub_701c580c(?) {
    return sub_701c580c
}

function sub_76aa6d62(?) {
    return sub_76aa6d62Address
}

function sub_bf47553e(?) {
    return sub_bf47553e
}

function sub_d483a2aa(?) {
    return sub_d483a2aaAddress
}

function maxfee() {
    return maxfee
}

function sub_dbdc2311(?) {
    require calldata.size - 4 >= 32
    require stor8[msg.sender]
    sub_bf47553e = arg1
}

function setMaxFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require stor8[msg.sender]
    maxfee = arg1
}

function sub_c4db6be5(?) {
    require calldata.size - 4 >= 32
    require stor8[msg.sender]
    require arg1 <= 10000
    sub_701c580c = arg1
}

function setBaseAddr(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require stor8[msg.sender]
    sub_d483a2aaAddress = arg1
}

function sub_a7a84e3b(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require stor8[msg.sender]
    require arg2 <= 10000
    stor7[address(arg1)].field_1280 = arg2
}

function setRole(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require stor8[msg.sender]
    stor8[address(arg1)] = uint8(arg2)
}

function sub_01b478f5(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require stor8[msg.sender]
    sub_76aa6d62Address = address(arg1)
    sub_47a3a62aAddress = address(arg2)
}

function sub_6c7416e4(?) {
    require calldata.size - 4 >= 32
    if 1 > !arg1:
        revert with 0, 17
    s = arg1
    t = arg1 + 1 / 2
    while t < s:
        if not t:
            revert with 0, 18
        if arg1 / t > !t:
            revert with 0, 17
        s = t
        t = (arg1 / t) + t / 2
        continue 
    return s
}

function addLiquidity(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_e0895e5f(?) {
    require calldata.size - 4 >= 224
    require cd[4] == address(cd[4])
    require 67 < calldata.size
    require 228 <= calldata.size
    idx = 36
    s = 96
    while idx < 228:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require stor8[msg.sender]
    s = 0
    idx = 96
    while 288 > idx:
        stor7[address(cd[4])][s].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 6
    while 6 > idx:
        stor7[address(cd[4])][idx].field_0 = 0
        idx = idx + 1
        continue 
}

function sub_6fc0a16a(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require stor8[msg.sender]
    if not address(arg1):
        call address(arg2) with:
           value arg3 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        call address(arg1).transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sendFee() {
    if sub_61f8967c > 0x1111111111111111111111111111111111111111111111111111111111111111:
        revert with 0, 17
    call sub_d483a2aaAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_76aa6d62Address, 15 * sub_61f8967c / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if sub_61f8967c > 0x303030303030303030303030303030303030303030303030303030303030303:
        revert with 0, 17
    call sub_d483a2aaAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_47a3a62aAddress, 85 * sub_61f8967c / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    sub_61f8967c = 0
}

function sub_b42f4331(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not stor7[address(arg1)].field_768:
        if arg2 and stor7[address(arg1)].field_256 > -1 / arg2:
            revert with 0, 17
        return (arg2 * stor7[address(arg1)].field_256)
    if bool(bool(stor7[address(arg1)].field_768 < 78)) or bool(bool(stor7[address(arg1)].field_768 < 32)):
        if arg2 and stor7[address(arg1)].field_256 > -1 / arg2:
            revert with 0, 17
        if not 10^stor7[address(arg1)].field_768:
            revert with 0, 18
        return (arg2 * stor7[address(arg1)].field_256 / 10^stor7[address(arg1)].field_768)
    s = 10
    t = 1
    idx = stor7[address(arg1)].field_768
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    if arg2 and stor7[address(arg1)].field_256 > -1 / arg2:
        revert with 0, 17
    if not s * t:
        revert with 0, 18
    return (arg2 * stor7[address(arg1)].field_256 / s * t)
}

function getPair(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 548] = msg.sender
    mem[ceil32(return_data.size) + 580] = this.address
    staticcall arg1.allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[ceil32(return_data.size) + 544] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 548] = msg.sender
    staticcall sub_d483a2aaAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[(2 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 548] = msg.sender
    mem[(4 * ceil32(return_data.size)) + 580] = this.address
    staticcall sub_d483a2aaAddress.allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[(4 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(6 * ceil32(return_data.size)) + 548] = this.address
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = (7 * ceil32(return_data.size)) + 544
    s = 0
    while (7 * ceil32(return_data.size)) + 736 > idx + 32:
        mem[idx + 32] = stor7[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return mem[(7 * ceil32(return_data.size)) + 576 len 160] >> 1280, 
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0]
}

function sub_64eae9ec(?) {
    require calldata.size - 4 >= 128
    if arg2 > 0x1fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if Mask(253, 0, arg2) and arg3 > -1 / 8 * arg2:
        revert with 0, 17
    if not arg1:
        if 0 > !(8 * arg2 * arg3):
            revert with 0, 17
        if 1 > !(8 * arg2 * arg3):
            revert with 0, 17
        s = 8 * arg2 * arg3
        t = (8 * arg2 * arg3) + 1 / 2
        while t < s:
            if not t:
                revert with 0, 18
            if 8 * arg2 * arg3 / t > !t:
                revert with 0, 17
            s = t
            t = (8 * arg2 * arg3 / t) + t / 2
            continue 
        if arg1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if s <= 2 * arg1:
            return 0
        if arg2 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if not arg4:
            if arg1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if s < 2 * arg1:
                revert with 0, 17
            if s - (2 * arg1) and 1 > -1 / s - (2 * arg1):
                revert with 0, 17
            if not 2 * arg2:
                revert with 0, 18
            return (s - (2 * arg1) / 2 * arg2)
        if bool(bool(arg4 < 78)) or bool(bool(arg4 < 32)):
            if arg1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if s < 2 * arg1:
                revert with 0, 17
            if s - (2 * arg1) and 10^arg4 > -1 / s - (2 * arg1):
                revert with 0, 17
            if not 2 * arg2:
                revert with 0, 18
            return ((s * 10^arg4) - (2 * arg1 * 10^arg4) / 2 * arg2)
        t = 10
        u = 1
        idx = arg4
        while idx > 1:
            if t > -1 / t:
                revert with 0, 17
            if not bool(idx):
                t = t * t
                u = u
                idx = uint255(idx) * 0.5
                continue 
            t = t * t
            u = t * u
            idx = uint255(idx) * 0.5
            continue 
        if u > -1 / t:
            revert with 0, 17
        if arg1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if s < 2 * arg1:
            revert with 0, 17
        if s - (2 * arg1) and t * u > -1 / s - (2 * arg1):
            revert with 0, 17
        if not 2 * arg2:
            revert with 0, 18
        return ((s * t * u) - (2 * arg1 * t * u) / 2 * arg2)
    if arg1 == 1:
        if 4 > !(8 * arg2 * arg3):
            revert with 0, 17
        if 1 > !((8 * arg2 * arg3) + 4):
            revert with 0, 17
        s = (8 * arg2 * arg3) + 4
        t = (8 * arg2 * arg3) + 5 / 2
        while t < s:
            if not t:
                revert with 0, 18
            if (8 * arg2 * arg3) + 4 / t > !t:
                revert with 0, 17
            s = t
            t = ((8 * arg2 * arg3) + 4 / t) + t / 2
            continue 
        if arg1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if s <= 2 * arg1:
            return 0
        if arg2 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if not arg4:
            if arg1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if s < 2 * arg1:
                revert with 0, 17
            if s - (2 * arg1) and 1 > -1 / s - (2 * arg1):
                revert with 0, 17
            if not 2 * arg2:
                revert with 0, 18
            return (s - (2 * arg1) / 2 * arg2)
        if bool(bool(arg4 < 78)) or bool(bool(arg4 < 32)):
            if arg1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if s < 2 * arg1:
                revert with 0, 17
            if s - (2 * arg1) and 10^arg4 > -1 / s - (2 * arg1):
                revert with 0, 17
            if not 2 * arg2:
                revert with 0, 18
            return ((s * 10^arg4) - (2 * arg1 * 10^arg4) / 2 * arg2)
        t = 10
        u = 1
        idx = arg4
        while idx > 1:
            if t > -1 / t:
                revert with 0, 17
            if not bool(idx):
                t = t * t
                u = u
                idx = uint255(idx) * 0.5
                continue 
            t = t * t
            u = t * u
            idx = uint255(idx) * 0.5
            continue 
        if u > -1 / t:
            revert with 0, 17
        if arg1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if s < 2 * arg1:
            revert with 0, 17
        if s - (2 * arg1) and t * u > -1 / s - (2 * arg1):
            revert with 0, 17
        if not 2 * arg2:
            revert with 0, 18
        return ((s * t * u) - (2 * arg1 * t * u) / 2 * arg2)
    if arg1 == 2:
        if 16 > !(8 * arg2 * arg3):
            revert with 0, 17
        if 1 > !((8 * arg2 * arg3) + 16):
            revert with 0, 17
        s = (8 * arg2 * arg3) + 16
        t = (8 * arg2 * arg3) + 17 / 2
        while t < s:
            if not t:
                revert with 0, 18
            if (8 * arg2 * arg3) + 16 / t > !t:
                revert with 0, 17
            s = t
            t = ((8 * arg2 * arg3) + 16 / t) + t / 2
            continue 
        if arg1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if s <= 2 * arg1:
            return 0
        if arg2 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if not arg4:
            if arg1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if s < 2 * arg1:
                revert with 0, 17
            if s - (2 * arg1) and 1 > -1 / s - (2 * arg1):
                revert with 0, 17
            if not 2 * arg2:
                revert with 0, 18
            return (s - (2 * arg1) / 2 * arg2)
        if bool(bool(arg4 < 78)) or bool(bool(arg4 < 32)):
            if arg1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if s < 2 * arg1:
                revert with 0, 17
            if s - (2 * arg1) and 10^arg4 > -1 / s - (2 * arg1):
                revert with 0, 17
            if not 2 * arg2:
                revert with 0, 18
            return ((s * 10^arg4) - (2 * arg1 * 10^arg4) / 2 * arg2)
        t = 10
        u = 1
        idx = arg4
        while idx > 1:
            if t > -1 / t:
                revert with 0, 17
            if not bool(idx):
                t = t * t
                u = u
                idx = uint255(idx) * 0.5
                continue 
            t = t * t
            u = t * u
            idx = uint255(idx) * 0.5
            continue 
        if u > -1 / t:
            revert with 0, 17
        if arg1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if s < 2 * arg1:
            revert with 0, 17
        if s - (2 * arg1) and t * u > -1 / s - (2 * arg1):
            revert with 0, 17
        if not 2 * arg2:
            revert with 0, 18
        return ((s * t * u) - (2 * arg1 * t * u) / 2 * arg2)
    if bool(bool(arg1 < 11)) or bool(bool(arg1 < 307)):
        if arg1^2 > 0x3fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if 4 * arg1^2 > !(8 * arg2 * arg3):
            revert with 0, 17
        if 1 > !((4 * arg1^2) + (8 * arg2 * arg3)):
            revert with 0, 17
        s = (4 * arg1^2) + (8 * arg2 * arg3)
        t = (4 * arg1^2) + (8 * arg2 * arg3) + 1 / 2
        while t < s:
            if not t:
                revert with 0, 18
            if (4 * arg1^2) + (8 * arg2 * arg3) / t > !t:
                revert with 0, 17
            s = t
            t = ((4 * arg1^2) + (8 * arg2 * arg3) / t) + t / 2
            continue 
        if arg1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if s <= 2 * arg1:
            return 0
        if arg2 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if not arg4:
            if arg1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if s < 2 * arg1:
                revert with 0, 17
            if s - (2 * arg1) and 1 > -1 / s - (2 * arg1):
                revert with 0, 17
            if not 2 * arg2:
                revert with 0, 18
            return (s - (2 * arg1) / 2 * arg2)
        if bool(bool(arg4 < 78)) or bool(bool(arg4 < 32)):
            if arg1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if s < 2 * arg1:
                revert with 0, 17
            if s - (2 * arg1) and 10^arg4 > -1 / s - (2 * arg1):
                revert with 0, 17
            if not 2 * arg2:
                revert with 0, 18
            return ((s * 10^arg4) - (2 * arg1 * 10^arg4) / 2 * arg2)
        t = 10
        u = 1
        idx = arg4
        while idx > 1:
            if t > -1 / t:
                revert with 0, 17
            if not bool(idx):
                t = t * t
                u = u
                idx = uint255(idx) * 0.5
                continue 
            t = t * t
            u = t * u
            idx = uint255(idx) * 0.5
            continue 
        if u > -1 / t:
            revert with 0, 17
        if arg1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if s < 2 * arg1:
            revert with 0, 17
        if s - (2 * arg1) and t * u > -1 / s - (2 * arg1):
            revert with 0, 17
        if not 2 * arg2:
            revert with 0, 18
        return ((s * t * u) - (2 * arg1 * t * u) / 2 * arg2)
    s = arg1
    idx = 2
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        s = s * s
        idx = uint255(idx) * 0.5
        continue 
    if 1 > -1 / s:
        revert with 0, 17
    if s > 0x3fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if 4 * s > !(8 * arg2 * arg3):
        revert with 0, 17
    if 1 > !((4 * s) + (8 * arg2 * arg3)):
        revert with 0, 17
    t = (4 * s) + (8 * arg2 * arg3)
    u = (4 * s) + (8 * arg2 * arg3) + 1 / 2
    while u < t:
        if not u:
            revert with 0, 18
        if (4 * s) + (8 * arg2 * arg3) / u > !u:
            revert with 0, 17
        t = u
        u = ((4 * s) + (8 * arg2 * arg3) / u) + u / 2
        continue 
    if arg1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if t <= 2 * arg1:
        return 0
    if arg2 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if not arg4:
        if arg1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if t < 2 * arg1:
            revert with 0, 17
        if t - (2 * arg1) and 1 > -1 / t - (2 * arg1):
            revert with 0, 17
        if not 2 * arg2:
            revert with 0, 18
        return (t - (2 * arg1) / 2 * arg2)
    if bool(bool(arg4 < 78)) or bool(bool(arg4 < 32)):
        if arg1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if t < 2 * arg1:
            revert with 0, 17
        if t - (2 * arg1) and 10^arg4 > -1 / t - (2 * arg1):
            revert with 0, 17
        if not 2 * arg2:
            revert with 0, 18
        return ((t * 10^arg4) - (2 * arg1 * 10^arg4) / 2 * arg2)
    s = 10
    u = 1
    idx = arg4
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            u = u
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        u = s * u
        idx = uint255(idx) * 0.5
        continue 
    if u > -1 / s:
        revert with 0, 17
    if arg1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if t < 2 * arg1:
        revert with 0, 17
    if t - (2 * arg1) and s * u > -1 / t - (2 * arg1):
        revert with 0, 17
    if not 2 * arg2:
        revert with 0, 18
    return ((t * s * u) - (2 * arg1 * s * u) / 2 * arg2)
}

function sub_8325aca9(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if not stor7[address(arg1)].field_768:
        if arg2 and stor7[address(arg1)].field_256 > -1 / arg2:
            revert with 0, 17
        if arg3 != 1:
            if stor7[address(arg1)].field_0 > !(arg2 * stor7[address(arg1)].field_256 / 2):
                revert with 0, 17
            if not stor7[address(arg1)].field_768:
                if arg2 and stor7[address(arg1)].field_0 + (arg2 * stor7[address(arg1)].field_256 / 2) > -1 / arg2:
                    revert with 0, 17
                return (stor7[address(arg1)].field_0 * arg2) + (arg2 * stor7[address(arg1)].field_256 / 2 * arg2), 
                       arg2 * stor7[address(arg1)].field_256
            if bool(bool(stor7[address(arg1)].field_768 < 78)) or bool(bool(stor7[address(arg1)].field_768 < 32)):
                if arg2 and stor7[address(arg1)].field_0 + (arg2 * stor7[address(arg1)].field_256 / 2) > -1 / arg2:
                    revert with 0, 17
                if not 10^stor7[address(arg1)].field_768:
                    revert with 0, 18
                return (stor7[address(arg1)].field_0 * arg2) + (arg2 * stor7[address(arg1)].field_256 / 2 * arg2) / 10^stor7[address(arg1)].field_768, 
                       arg2 * stor7[address(arg1)].field_256
            s = 10
            t = 1
            idx = stor7[address(arg1)].field_768
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if arg2 and stor7[address(arg1)].field_0 + (arg2 * stor7[address(arg1)].field_256 / 2) > -1 / arg2:
                revert with 0, 17
            if not s * t:
                revert with 0, 18
            return (stor7[address(arg1)].field_0 * arg2) + (arg2 * stor7[address(arg1)].field_256 / 2 * arg2) / s * t, 
                   arg2 * stor7[address(arg1)].field_256
        if stor7[address(arg1)].field_0 < arg2 * stor7[address(arg1)].field_256 / 2:
            revert with 0, 17
        if not stor7[address(arg1)].field_768:
            if arg2 and stor7[address(arg1)].field_0 - (arg2 * stor7[address(arg1)].field_256 / 2) > -1 / arg2:
                revert with 0, 17
            return (stor7[address(arg1)].field_0 * arg2) - (arg2 * stor7[address(arg1)].field_256 / 2 * arg2), 
                   arg2 * stor7[address(arg1)].field_256
        if bool(bool(stor7[address(arg1)].field_768 < 78)) or bool(bool(stor7[address(arg1)].field_768 < 32)):
            if arg2 and stor7[address(arg1)].field_0 - (arg2 * stor7[address(arg1)].field_256 / 2) > -1 / arg2:
                revert with 0, 17
            if not 10^stor7[address(arg1)].field_768:
                revert with 0, 18
            return (stor7[address(arg1)].field_0 * arg2) - (arg2 * stor7[address(arg1)].field_256 / 2 * arg2) / 10^stor7[address(arg1)].field_768, 
                   arg2 * stor7[address(arg1)].field_256
        s = 10
        t = 1
        idx = stor7[address(arg1)].field_768
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 0, 17
        if arg2 and stor7[address(arg1)].field_0 - (arg2 * stor7[address(arg1)].field_256 / 2) > -1 / arg2:
            revert with 0, 17
        if not s * t:
            revert with 0, 18
        return (stor7[address(arg1)].field_0 * arg2) - (arg2 * stor7[address(arg1)].field_256 / 2 * arg2) / s * t, 
               arg2 * stor7[address(arg1)].field_256
    if bool(bool(stor7[address(arg1)].field_768 < 78)) or bool(bool(stor7[address(arg1)].field_768 < 32)):
        if arg2 and stor7[address(arg1)].field_256 > -1 / arg2:
            revert with 0, 17
        if not 10^stor7[address(arg1)].field_768:
            revert with 0, 18
        if arg3 != 1:
            if stor7[address(arg1)].field_0 > !(arg2 * stor7[address(arg1)].field_256 / 10^stor7[address(arg1)].field_768 / 2):
                revert with 0, 17
            if not stor7[address(arg1)].field_768:
                if arg2 and stor7[address(arg1)].field_0 + (arg2 * stor7[address(arg1)].field_256 / 10^stor7[address(arg1)].field_768 / 2) > -1 / arg2:
                    revert with 0, 17
                return (stor7[address(arg1)].field_0 * arg2) + (arg2 * stor7[address(arg1)].field_256 / 10^stor7[address(arg1)].field_768 / 2 * arg2), 
                       arg2 * stor7[address(arg1)].field_256 / 10^stor7[address(arg1)].field_768
            if bool(bool(stor7[address(arg1)].field_768 < 78)) or bool(bool(stor7[address(arg1)].field_768 < 32)):
                if arg2 and stor7[address(arg1)].field_0 + (arg2 * stor7[address(arg1)].field_256 / 10^stor7[address(arg1)].field_768 / 2) > -1 / arg2:
                    revert with 0, 17
                if not 10^stor7[address(arg1)].field_768:
                    revert with 0, 18
                return (stor7[address(arg1)].field_0 * arg2) + (arg2 * stor7[address(arg1)].field_256 / 10^stor7[address(arg1)].field_768 / 2 * arg2) / 10^stor7[address(arg1)].field_768, 
                       arg2 * stor7[address(arg1)].field_256 / 10^stor7[address(arg1)].field_768
            s = 10
            t = 1
            idx = stor7[address(arg1)].field_768
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if arg2 and stor7[address(arg1)].field_0 + (arg2 * stor7[address(arg1)].field_256 / 10^stor7[address(arg1)].field_768 / 2) > -1 / arg2:
                revert with 0, 17
            if not s * t:
                revert with 0, 18
            return (stor7[address(arg1)].field_0 * arg2) + (arg2 * stor7[address(arg1)].field_256 / 10^stor7[address(arg1)].field_768 / 2 * arg2) / s * t, 
                   arg2 * stor7[address(arg1)].field_256 / 10^stor7[address(arg1)].field_768
        if stor7[address(arg1)].field_0 < arg2 * stor7[address(arg1)].field_256 / 10^stor7[address(arg1)].field_768 / 2:
            revert with 0, 17
        if not stor7[address(arg1)].field_768:
            if arg2 and stor7[address(arg1)].field_0 - (arg2 * stor7[address(arg1)].field_256 / 10^stor7[address(arg1)].field_768 / 2) > -1 / arg2:
                revert with 0, 17
            return (stor7[address(arg1)].field_0 * arg2) - (arg2 * stor7[address(arg1)].field_256 / 10^stor7[address(arg1)].field_768 / 2 * arg2), 
                   arg2 * stor7[address(arg1)].field_256 / 10^stor7[address(arg1)].field_768
        if bool(bool(stor7[address(arg1)].field_768 < 78)) or bool(bool(stor7[address(arg1)].field_768 < 32)):
            if arg2 and stor7[address(arg1)].field_0 - (arg2 * stor7[address(arg1)].field_256 / 10^stor7[address(arg1)].field_768 / 2) > -1 / arg2:
                revert with 0, 17
            if not 10^stor7[address(arg1)].field_768:
                revert with 0, 18
            return (stor7[address(arg1)].field_0 * arg2) - (arg2 * stor7[address(arg1)].field_256 / 10^stor7[address(arg1)].field_768 / 2 * arg2) / 10^stor7[address(arg1)].field_768, 
                   arg2 * stor7[address(arg1)].field_256 / 10^stor7[address(arg1)].field_768
        s = 10
        t = 1
        idx = stor7[address(arg1)].field_768
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 0, 17
        if arg2 and stor7[address(arg1)].field_0 - (arg2 * stor7[address(arg1)].field_256 / 10^stor7[address(arg1)].field_768 / 2) > -1 / arg2:
            revert with 0, 17
        if not s * t:
            revert with 0, 18
        return (stor7[address(arg1)].field_0 * arg2) - (arg2 * stor7[address(arg1)].field_256 / 10^stor7[address(arg1)].field_768 / 2 * arg2) / s * t, 
               arg2 * stor7[address(arg1)].field_256 / 10^stor7[address(arg1)].field_768
    s = 10
    t = 1
    idx = stor7[address(arg1)].field_768
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    if arg2 and stor7[address(arg1)].field_256 > -1 / arg2:
        revert with 0, 17
    if not s * t:
        revert with 0, 18
    if arg3 != 1:
        if stor7[address(arg1)].field_0 > !(arg2 * stor7[address(arg1)].field_256 / s * t / 2):
            revert with 0, 17
        if not stor7[address(arg1)].field_768:
            if arg2 and stor7[address(arg1)].field_0 + (arg2 * stor7[address(arg1)].field_256 / s * t / 2) > -1 / arg2:
                revert with 0, 17
            return (stor7[address(arg1)].field_0 * arg2) + (arg2 * stor7[address(arg1)].field_256 / s * t / 2 * arg2), 
                   arg2 * stor7[address(arg1)].field_256 / s * t
        if bool(bool(stor7[address(arg1)].field_768 < 78)) or bool(bool(stor7[address(arg1)].field_768 < 32)):
            if arg2 and stor7[address(arg1)].field_0 + (arg2 * stor7[address(arg1)].field_256 / s * t / 2) > -1 / arg2:
                revert with 0, 17
            if not 10^stor7[address(arg1)].field_768:
                revert with 0, 18
            return (stor7[address(arg1)].field_0 * arg2) + (arg2 * stor7[address(arg1)].field_256 / s * t / 2 * arg2) / 10^stor7[address(arg1)].field_768, 
                   arg2 * stor7[address(arg1)].field_256 / s * t
        u = 10
        v = 1
        idx = stor7[address(arg1)].field_768
        while idx > 1:
            if u > -1 / u:
                revert with 0, 17
            if not bool(idx):
                u = u * u
                v = v
                idx = uint255(idx) * 0.5
                continue 
            u = u * u
            v = u * v
            idx = uint255(idx) * 0.5
            continue 
        if v > -1 / u:
            revert with 0, 17
        if arg2 and stor7[address(arg1)].field_0 + (arg2 * stor7[address(arg1)].field_256 / s * t / 2) > -1 / arg2:
            revert with 0, 17
        if not u * v:
            revert with 0, 18
        return (stor7[address(arg1)].field_0 * arg2) + (arg2 * stor7[address(arg1)].field_256 / s * t / 2 * arg2) / u * v, 
               arg2 * stor7[address(arg1)].field_256 / s * t
    if stor7[address(arg1)].field_0 < arg2 * stor7[address(arg1)].field_256 / s * t / 2:
        revert with 0, 17
    if not stor7[address(arg1)].field_768:
        if arg2 and stor7[address(arg1)].field_0 - (arg2 * stor7[address(arg1)].field_256 / s * t / 2) > -1 / arg2:
            revert with 0, 17
        return (stor7[address(arg1)].field_0 * arg2) - (arg2 * stor7[address(arg1)].field_256 / s * t / 2 * arg2), 
               arg2 * stor7[address(arg1)].field_256 / s * t
    if bool(bool(stor7[address(arg1)].field_768 < 78)) or bool(bool(stor7[address(arg1)].field_768 < 32)):
        if arg2 and stor7[address(arg1)].field_0 - (arg2 * stor7[address(arg1)].field_256 / s * t / 2) > -1 / arg2:
            revert with 0, 17
        if not 10^stor7[address(arg1)].field_768:
            revert with 0, 18
        return (stor7[address(arg1)].field_0 * arg2) - (arg2 * stor7[address(arg1)].field_256 / s * t / 2 * arg2) / 10^stor7[address(arg1)].field_768, 
               arg2 * stor7[address(arg1)].field_256 / s * t
    u = 10
    v = 1
    idx = stor7[address(arg1)].field_768
    while idx > 1:
        if u > -1 / u:
            revert with 0, 17
        if not bool(idx):
            u = u * u
            v = v
            idx = uint255(idx) * 0.5
            continue 
        u = u * u
        v = u * v
        idx = uint255(idx) * 0.5
        continue 
    if v > -1 / u:
        revert with 0, 17
    if arg2 and stor7[address(arg1)].field_0 - (arg2 * stor7[address(arg1)].field_256 / s * t / 2) > -1 / arg2:
        revert with 0, 17
    if not u * v:
        revert with 0, 18
    return (stor7[address(arg1)].field_0 * arg2) - (arg2 * stor7[address(arg1)].field_256 / s * t / 2 * arg2) / u * v, 
           arg2 * stor7[address(arg1)].field_256 / s * t
}

function swap(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if sub_d483a2aaAddress != arg1:
        if sub_d483a2aaAddress == arg2:
            require stor7[address(arg1)].field_1024 < block.timestamp
            require stor7[address(arg1)].field_0
            call arg1.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if 10000 < stor7[address(arg1)].field_1280:
                revert with 0, 17
            if arg3 and -stor7[address(arg1)].field_1280 + 10000 > -1 / arg3:
                revert with 0, 17
            if not stor7[address(arg1)].field_768:
                if (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 and stor7[address(arg1)].field_256 > -1 / (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000:
                    revert with 0, 17
                if stor7[address(arg1)].field_0 < (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 2:
                    revert with 0, 17
                if not stor7[address(arg1)].field_768:
                    if (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 and stor7[address(arg1)].field_0 - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 2) > -1 / (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000:
                        revert with 0, 17
                    if stor7[address(arg1)].field_0 < (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256:
                        revert with 0, 17
                    stor7[address(arg1)].field_0 += -1 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256
                    require stor7[address(arg1)].field_0 >= stor7[address(arg1)].field_512
                    if (stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) and sub_bf47553e > -1 / (stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000):
                        revert with 0, 17
                    if sub_61f8967c > !((stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * sub_bf47553e) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * sub_bf47553e) / 10000):
                        revert with 0, 17
                    sub_61f8967c += (stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * sub_bf47553e) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * sub_bf47553e) / 10000
                    if (stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) < (stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * sub_bf47553e) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * sub_bf47553e) / 10000:
                        revert with 0, 17
                    call sub_d483a2aaAddress.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, (stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * sub_bf47553e) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * sub_bf47553e) / 10000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    emit Swap((stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000), stor7[address(arg1)].field_0, stor7[address(arg1)].field_0, arg1, arg2);
                else:
                    if bool(bool(stor7[address(arg1)].field_768 < 78)) or bool(bool(stor7[address(arg1)].field_768 < 32)):
                        if (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 and stor7[address(arg1)].field_0 - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 2) > -1 / (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000:
                            revert with 0, 17
                        if not 10^stor7[address(arg1)].field_768:
                            revert with 0, 18
                        if stor7[address(arg1)].field_0 < (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256:
                            revert with 0, 17
                        stor7[address(arg1)].field_0 += -1 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256
                        require stor7[address(arg1)].field_0 >= stor7[address(arg1)].field_512
                        if (stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) / 10^stor7[address(arg1)].field_768 and sub_bf47553e > -1 / (stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) / 10^stor7[address(arg1)].field_768:
                            revert with 0, 17
                        if sub_61f8967c > !((stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) / 10^stor7[address(arg1)].field_768 * sub_bf47553e / 10000):
                            revert with 0, 17
                        sub_61f8967c += (stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) / 10^stor7[address(arg1)].field_768 * sub_bf47553e / 10000
                        if (stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) / 10^stor7[address(arg1)].field_768 < (stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) / 10^stor7[address(arg1)].field_768 * sub_bf47553e / 10000:
                            revert with 0, 17
                        call sub_d483a2aaAddress.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, ((stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) / 10^stor7[address(arg1)].field_768) - ((stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) / 10^stor7[address(arg1)].field_768 * sub_bf47553e / 10000)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        emit Swap((stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) / 10^stor7[address(arg1)].field_768, stor7[address(arg1)].field_0, stor7[address(arg1)].field_0, arg1, arg2);
                    else:
                        s = 10
                        t = 1
                        idx = stor7[address(arg1)].field_768
                        while idx > 1:
                            if s > -1 / s:
                                revert with 0, 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = s * t
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 0, 17
                        if (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 and stor7[address(arg1)].field_0 - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 2) > -1 / (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000:
                            revert with 0, 17
                        if not s * t:
                            revert with 0, 18
                        if stor7[address(arg1)].field_0 < (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256:
                            revert with 0, 17
                        stor7[address(arg1)].field_0 += -1 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256
                        require stor7[address(arg1)].field_0 >= stor7[address(arg1)].field_512
                        if (stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) / s * t and sub_bf47553e > -1 / (stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) / s * t:
                            revert with 0, 17
                        if sub_61f8967c > !((stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) / s * t * sub_bf47553e / 10000):
                            revert with 0, 17
                        sub_61f8967c += (stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) / s * t * sub_bf47553e / 10000
                        if (stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) / s * t < (stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) / s * t * sub_bf47553e / 10000:
                            revert with 0, 17
                        call sub_d483a2aaAddress.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, ((stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) / s * t) - ((stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) / s * t * sub_bf47553e / 10000)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        emit Swap((stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) / s * t, stor7[address(arg1)].field_0, stor7[address(arg1)].field_0, arg1, arg2);
            else:
                if bool(bool(stor7[address(arg1)].field_768 < 78)) or bool(bool(stor7[address(arg1)].field_768 < 32)):
                    if (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 and stor7[address(arg1)].field_256 > -1 / (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000:
                        revert with 0, 17
                    if not 10^stor7[address(arg1)].field_768:
                        revert with 0, 18
                    if stor7[address(arg1)].field_0 < (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 10^stor7[address(arg1)].field_768 / 2:
                        revert with 0, 17
                    if not stor7[address(arg1)].field_768:
                        if (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 and stor7[address(arg1)].field_0 - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 10^stor7[address(arg1)].field_768 / 2) > -1 / (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000:
                            revert with 0, 17
                        if stor7[address(arg1)].field_0 < (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 10^stor7[address(arg1)].field_768:
                            revert with 0, 17
                        stor7[address(arg1)].field_0 -= (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 10^stor7[address(arg1)].field_768
                        require stor7[address(arg1)].field_0 >= stor7[address(arg1)].field_512
                        if (stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 10^stor7[address(arg1)].field_768 / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) and sub_bf47553e > -1 / (stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 10^stor7[address(arg1)].field_768 / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000):
                            revert with 0, 17
                        if sub_61f8967c > !((stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * sub_bf47553e) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 10^stor7[address(arg1)].field_768 / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * sub_bf47553e) / 10000):
                            revert with 0, 17
                        sub_61f8967c += (stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * sub_bf47553e) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 10^stor7[address(arg1)].field_768 / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * sub_bf47553e) / 10000
                        if (stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 10^stor7[address(arg1)].field_768 / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) < (stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * sub_bf47553e) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 10^stor7[address(arg1)].field_768 / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * sub_bf47553e) / 10000:
                            revert with 0, 17
                        call sub_d483a2aaAddress.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, (stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 10^stor7[address(arg1)].field_768 / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * sub_bf47553e) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 10^stor7[address(arg1)].field_768 / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * sub_bf47553e) / 10000)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        emit Swap((stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 10^stor7[address(arg1)].field_768 / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000), stor7[address(arg1)].field_0, stor7[address(arg1)].field_0, arg1, arg2);
                    else:
                        if bool(bool(stor7[address(arg1)].field_768 < 78)) or bool(bool(stor7[address(arg1)].field_768 < 32)):
                            if (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 and stor7[address(arg1)].field_0 - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 10^stor7[address(arg1)].field_768 / 2) > -1 / (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000:
                                revert with 0, 17
                            if not 10^stor7[address(arg1)].field_768:
                                revert with 0, 18
                            if stor7[address(arg1)].field_0 < (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 10^stor7[address(arg1)].field_768:
                                revert with 0, 17
                            stor7[address(arg1)].field_0 -= (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 10^stor7[address(arg1)].field_768
                            require stor7[address(arg1)].field_0 >= stor7[address(arg1)].field_512
                            if (stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 10^stor7[address(arg1)].field_768 / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) / 10^stor7[address(arg1)].field_768 and sub_bf47553e > -1 / (stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 10^stor7[address(arg1)].field_768 / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) / 10^stor7[address(arg1)].field_768:
                                revert with 0, 17
                            if sub_61f8967c > !((stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 10^stor7[address(arg1)].field_768 / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) / 10^stor7[address(arg1)].field_768 * sub_bf47553e / 10000):
                                revert with 0, 17
                            sub_61f8967c += (stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 10^stor7[address(arg1)].field_768 / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) / 10^stor7[address(arg1)].field_768 * sub_bf47553e / 10000
                            if (stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 10^stor7[address(arg1)].field_768 / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) / 10^stor7[address(arg1)].field_768 < (stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 10^stor7[address(arg1)].field_768 / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) / 10^stor7[address(arg1)].field_768 * sub_bf47553e / 10000:
                                revert with 0, 17
                            call sub_d483a2aaAddress.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, ((stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 10^stor7[address(arg1)].field_768 / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) / 10^stor7[address(arg1)].field_768) - ((stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 10^stor7[address(arg1)].field_768 / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) / 10^stor7[address(arg1)].field_768 * sub_bf47553e / 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            emit Swap((stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 10^stor7[address(arg1)].field_768 / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) / 10^stor7[address(arg1)].field_768, stor7[address(arg1)].field_0, stor7[address(arg1)].field_0, arg1, arg2);
                        else:
                            s = 10
                            t = 1
                            idx = stor7[address(arg1)].field_768
                            while idx > 1:
                                if s > -1 / s:
                                    revert with 0, 17
                                if not bool(idx):
                                    s = s * s
                                    t = t
                                    idx = uint255(idx) * 0.5
                                    continue 
                                s = s * s
                                t = s * t
                                idx = uint255(idx) * 0.5
                                continue 
                            if t > -1 / s:
                                revert with 0, 17
                            if (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 and stor7[address(arg1)].field_0 - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 10^stor7[address(arg1)].field_768 / 2) > -1 / (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000:
                                revert with 0, 17
                            if not s * t:
                                revert with 0, 18
                            if stor7[address(arg1)].field_0 < (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 10^stor7[address(arg1)].field_768:
                                revert with 0, 17
                            stor7[address(arg1)].field_0 -= (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 10^stor7[address(arg1)].field_768
                            require stor7[address(arg1)].field_0 >= stor7[address(arg1)].field_512
                            if (stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 10^stor7[address(arg1)].field_768 / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) / s * t and sub_bf47553e > -1 / (stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 10^stor7[address(arg1)].field_768 / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) / s * t:
                                revert with 0, 17
                            if sub_61f8967c > !((stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 10^stor7[address(arg1)].field_768 / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) / s * t * sub_bf47553e / 10000):
                                revert with 0, 17
                            sub_61f8967c += (stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 10^stor7[address(arg1)].field_768 / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) / s * t * sub_bf47553e / 10000
                            if (stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 10^stor7[address(arg1)].field_768 / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) / s * t < (stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 10^stor7[address(arg1)].field_768 / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) / s * t * sub_bf47553e / 10000:
                                revert with 0, 17
                            call sub_d483a2aaAddress.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, ((stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 10^stor7[address(arg1)].field_768 / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) / s * t) - ((stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 10^stor7[address(arg1)].field_768 / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) / s * t * sub_bf47553e / 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            emit Swap((stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / 10^stor7[address(arg1)].field_768 / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) / s * t, stor7[address(arg1)].field_0, stor7[address(arg1)].field_0, arg1, arg2);
                else:
                    s = 10
                    t = 1
                    idx = stor7[address(arg1)].field_768
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 and stor7[address(arg1)].field_256 > -1 / (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    if stor7[address(arg1)].field_0 < (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / s * t / 2:
                        revert with 0, 17
                    if not stor7[address(arg1)].field_768:
                        if (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 and stor7[address(arg1)].field_0 - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / s * t / 2) > -1 / (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000:
                            revert with 0, 17
                        if stor7[address(arg1)].field_0 < (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / s * t:
                            revert with 0, 17
                        stor7[address(arg1)].field_0 -= (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / s * t
                        require stor7[address(arg1)].field_0 >= stor7[address(arg1)].field_512
                        if (stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / s * t / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) and sub_bf47553e > -1 / (stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / s * t / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000):
                            revert with 0, 17
                        if sub_61f8967c > !((stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * sub_bf47553e) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / s * t / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * sub_bf47553e) / 10000):
                            revert with 0, 17
                        sub_61f8967c += (stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * sub_bf47553e) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / s * t / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * sub_bf47553e) / 10000
                        if (stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / s * t / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) < (stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * sub_bf47553e) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / s * t / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * sub_bf47553e) / 10000:
                            revert with 0, 17
                        call sub_d483a2aaAddress.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, (stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / s * t / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * sub_bf47553e) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / s * t / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * sub_bf47553e) / 10000)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        emit Swap((stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / s * t / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000), stor7[address(arg1)].field_0, stor7[address(arg1)].field_0, arg1, arg2);
                    else:
                        if bool(bool(stor7[address(arg1)].field_768 < 78)) or bool(bool(stor7[address(arg1)].field_768 < 32)):
                            if (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 and stor7[address(arg1)].field_0 - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / s * t / 2) > -1 / (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000:
                                revert with 0, 17
                            if not 10^stor7[address(arg1)].field_768:
                                revert with 0, 18
                            if stor7[address(arg1)].field_0 < (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / s * t:
                                revert with 0, 17
                            stor7[address(arg1)].field_0 -= (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / s * t
                            require stor7[address(arg1)].field_0 >= stor7[address(arg1)].field_512
                            if (stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / s * t / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) / 10^stor7[address(arg1)].field_768 and sub_bf47553e > -1 / (stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / s * t / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) / 10^stor7[address(arg1)].field_768:
                                revert with 0, 17
                            if sub_61f8967c > !((stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / s * t / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) / 10^stor7[address(arg1)].field_768 * sub_bf47553e / 10000):
                                revert with 0, 17
                            sub_61f8967c += (stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / s * t / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) / 10^stor7[address(arg1)].field_768 * sub_bf47553e / 10000
                            if (stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / s * t / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) / 10^stor7[address(arg1)].field_768 < (stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / s * t / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) / 10^stor7[address(arg1)].field_768 * sub_bf47553e / 10000:
                                revert with 0, 17
                            call sub_d483a2aaAddress.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, ((stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / s * t / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) / 10^stor7[address(arg1)].field_768) - ((stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / s * t / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) / 10^stor7[address(arg1)].field_768 * sub_bf47553e / 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            emit Swap((stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / s * t / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) / 10^stor7[address(arg1)].field_768, stor7[address(arg1)].field_0, stor7[address(arg1)].field_0, arg1, arg2);
                        else:
                            u = 10
                            v = 1
                            idx = stor7[address(arg1)].field_768
                            while idx > 1:
                                if u > -1 / u:
                                    revert with 0, 17
                                if not bool(idx):
                                    u = u * u
                                    v = v
                                    idx = uint255(idx) * 0.5
                                    continue 
                                u = u * u
                                v = u * v
                                idx = uint255(idx) * 0.5
                                continue 
                            if v > -1 / u:
                                revert with 0, 17
                            if (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 and stor7[address(arg1)].field_0 - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / s * t / 2) > -1 / (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000:
                                revert with 0, 17
                            if not u * v:
                                revert with 0, 18
                            if stor7[address(arg1)].field_0 < (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / s * t:
                                revert with 0, 17
                            stor7[address(arg1)].field_0 -= (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / s * t
                            require stor7[address(arg1)].field_0 >= stor7[address(arg1)].field_512
                            if (stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / s * t / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) / u * v and sub_bf47553e > -1 / (stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / s * t / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) / u * v:
                                revert with 0, 17
                            if sub_61f8967c > !((stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / s * t / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) / u * v * sub_bf47553e / 10000):
                                revert with 0, 17
                            sub_61f8967c += (stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / s * t / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) / u * v * sub_bf47553e / 10000
                            if (stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / s * t / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) / u * v < (stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / s * t / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) / u * v * sub_bf47553e / 10000:
                                revert with 0, 17
                            call sub_d483a2aaAddress.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, ((stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / s * t / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) / u * v) - ((stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / s * t / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) / u * v * sub_bf47553e / 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            emit Swap((stor7[address(arg1)].field_0 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) - ((10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000 * stor7[address(arg1)].field_256 / s * t / 2 * (10000 * arg3) - (stor7[address(arg1)].field_1280 * arg3) / 10000) / u * v, stor7[address(arg1)].field_0, stor7[address(arg1)].field_0, arg1, arg2);
    else:
        require stor7[address(arg2)].field_1024 < block.timestamp
        require stor7[address(arg2)].field_0
        call sub_d483a2aaAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if 10000 < sub_701c580c:
            revert with 0, 17
        if arg3 and -sub_701c580c + 10000 > -1 / arg3:
            revert with 0, 17
        if (10000 * arg3) - (sub_701c580c * arg3) / 10000 and sub_bf47553e > -1 / (10000 * arg3) - (sub_701c580c * arg3) / 10000:
            revert with 0, 17
        if sub_61f8967c > !((10000 * arg3) - (sub_701c580c * arg3) / 10000 * sub_bf47553e / 10000):
            revert with 0, 17
        sub_61f8967c += (10000 * arg3) - (sub_701c580c * arg3) / 10000 * sub_bf47553e / 10000
        if (10000 * arg3) - (sub_701c580c * arg3) / 10000 < (10000 * arg3) - (sub_701c580c * arg3) / 10000 * sub_bf47553e / 10000:
            revert with 0, 17
        if stor7[address(arg2)].field_256 > 0x1fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if stor7[address(arg2)].field_256 and ((10000 * arg3) - (sub_701c580c * arg3) / 10000) - ((10000 * arg3) - (sub_701c580c * arg3) / 10000 * sub_bf47553e / 10000) > -1 / 8 * stor7[address(arg2)].field_256:
            revert with 0, 17
        if not stor7[address(arg2)].field_0:
            if 0 > !(((10000 * arg3) - (sub_701c580c * arg3) / 10000 * 8 * stor7[address(arg2)].field_256) - ((10000 * arg3) - (sub_701c580c * arg3) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(arg2)].field_256)):
                revert with 0, 17
            if 1 > !(((10000 * arg3) - (sub_701c580c * arg3) / 10000 * 8 * stor7[address(arg2)].field_256) - ((10000 * arg3) - (sub_701c580c * arg3) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(arg2)].field_256)):
                revert with 0, 17
            s = ((10000 * arg3) - (sub_701c580c * arg3) / 10000 * 8 * stor7[address(arg2)].field_256) - ((10000 * arg3) - (sub_701c580c * arg3) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(arg2)].field_256)
            t = ((10000 * arg3) - (sub_701c580c * arg3) / 10000 * 8 * stor7[address(arg2)].field_256) + (-1 * (10000 * arg3) - (sub_701c580c * arg3) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(arg2)].field_256) + 1 / 2
            while t < s:
                if not t:
                    revert with 0, 18
                if ((10000 * arg3) - (sub_701c580c * arg3) / 10000 * 8 * stor7[address(arg2)].field_256) - ((10000 * arg3) - (sub_701c580c * arg3) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(arg2)].field_256) / t > !t:
                    revert with 0, 17
                s = t
                t = (((10000 * arg3) - (sub_701c580c * arg3) / 10000 * 8 * stor7[address(arg2)].field_256) - ((10000 * arg3) - (sub_701c580c * arg3) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(arg2)].field_256) / t) + t / 2
                continue 
            if stor7[address(arg2)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if s <= 2 * stor7[address(arg2)].field_0:
                if not stor7[address(arg2)].field_768:
                    if False and stor7[address(arg2)].field_256 > 0:
                        revert with 0, 17
                    if stor7[address(arg2)].field_0 > -1:
                        revert with 0, 17
                else:
                    if bool(bool(stor7[address(arg2)].field_768 < 78)) or bool(bool(stor7[address(arg2)].field_768 < 32)):
                        if False and stor7[address(arg2)].field_256 > 0:
                            revert with 0, 17
                        if not 10^stor7[address(arg2)].field_768:
                            revert with 0, 18
                        if stor7[address(arg2)].field_0 > !(0 / 10^stor7[address(arg2)].field_768):
                            revert with 0, 17
                        stor7[address(arg2)].field_0 += 0 / 10^stor7[address(arg2)].field_768
                    else:
                        s = 10
                        t = 1
                        idx = stor7[address(arg2)].field_768
                        while idx > 1:
                            if s > -1 / s:
                                revert with 0, 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = s * t
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 0, 17
                        if False and stor7[address(arg2)].field_256 > 0:
                            revert with 0, 17
                        if not s * t:
                            revert with 0, 18
                        if stor7[address(arg2)].field_0 > !(0 / s * t):
                            revert with 0, 17
                        stor7[address(arg2)].field_0 += 0 / s * t
                call arg2.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, 0
            else:
                if stor7[address(arg2)].field_256 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if not stor7[address(arg2)].field_768:
                    if stor7[address(arg2)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if s < 2 * stor7[address(arg2)].field_0:
                        revert with 0, 17
                    if s - (2 * stor7[address(arg2)].field_0) and 1 > -1 / s - (2 * stor7[address(arg2)].field_0):
                        revert with 0, 17
                    if not 2 * stor7[address(arg2)].field_256:
                        revert with 0, 18
                    if not stor7[address(arg2)].field_768:
                        if s - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256 and stor7[address(arg2)].field_256 > -1 / s - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256:
                            revert with 0, 17
                        if stor7[address(arg2)].field_0 > !(s - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256):
                            revert with 0, 17
                        stor7[address(arg2)].field_0 += s - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256
                    else:
                        if bool(bool(stor7[address(arg2)].field_768 < 78)) or bool(bool(stor7[address(arg2)].field_768 < 32)):
                            if s - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256 and stor7[address(arg2)].field_256 > -1 / s - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256:
                                revert with 0, 17
                            if not 10^stor7[address(arg2)].field_768:
                                revert with 0, 18
                            if stor7[address(arg2)].field_0 > !(s - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / 10^stor7[address(arg2)].field_768):
                                revert with 0, 17
                            stor7[address(arg2)].field_0 += s - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / 10^stor7[address(arg2)].field_768
                        else:
                            t = 10
                            u = 1
                            idx = stor7[address(arg2)].field_768
                            while idx > 1:
                                if t > -1 / t:
                                    revert with 0, 17
                                if not bool(idx):
                                    t = t * t
                                    u = u
                                    idx = uint255(idx) * 0.5
                                    continue 
                                t = t * t
                                u = t * u
                                idx = uint255(idx) * 0.5
                                continue 
                            if u > -1 / t:
                                revert with 0, 17
                            if s - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256 and stor7[address(arg2)].field_256 > -1 / s - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256:
                                revert with 0, 17
                            if not t * u:
                                revert with 0, 18
                            if stor7[address(arg2)].field_0 > !(s - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / t * u):
                                revert with 0, 17
                            stor7[address(arg2)].field_0 += s - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / t * u
                    call arg2.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, s - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256
                else:
                    if bool(bool(stor7[address(arg2)].field_768 < 78)) or bool(bool(stor7[address(arg2)].field_768 < 32)):
                        if stor7[address(arg2)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if s < 2 * stor7[address(arg2)].field_0:
                            revert with 0, 17
                        if s - (2 * stor7[address(arg2)].field_0) and 10^stor7[address(arg2)].field_768 > -1 / s - (2 * stor7[address(arg2)].field_0):
                            revert with 0, 17
                        if not 2 * stor7[address(arg2)].field_256:
                            revert with 0, 18
                        if not stor7[address(arg2)].field_768:
                            if (s * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256 and stor7[address(arg2)].field_256 > -1 / (s * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256:
                                revert with 0, 17
                            if stor7[address(arg2)].field_0 > !((s * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256):
                                revert with 0, 17
                            stor7[address(arg2)].field_0 += (s * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256
                        else:
                            if bool(bool(stor7[address(arg2)].field_768 < 78)) or bool(bool(stor7[address(arg2)].field_768 < 32)):
                                if (s * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256 and stor7[address(arg2)].field_256 > -1 / (s * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256:
                                    revert with 0, 17
                                if not 10^stor7[address(arg2)].field_768:
                                    revert with 0, 18
                                if stor7[address(arg2)].field_0 > !((s * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / 10^stor7[address(arg2)].field_768):
                                    revert with 0, 17
                                stor7[address(arg2)].field_0 += (s * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / 10^stor7[address(arg2)].field_768
                            else:
                                t = 10
                                u = 1
                                idx = stor7[address(arg2)].field_768
                                while idx > 1:
                                    if t > -1 / t:
                                        revert with 0, 17
                                    if not bool(idx):
                                        t = t * t
                                        u = u
                                        idx = uint255(idx) * 0.5
                                        continue 
                                    t = t * t
                                    u = t * u
                                    idx = uint255(idx) * 0.5
                                    continue 
                                if u > -1 / t:
                                    revert with 0, 17
                                if (s * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256 and stor7[address(arg2)].field_256 > -1 / (s * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256:
                                    revert with 0, 17
                                if not t * u:
                                    revert with 0, 18
                                if stor7[address(arg2)].field_0 > !((s * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / t * u):
                                    revert with 0, 17
                                stor7[address(arg2)].field_0 += (s * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / t * u
                        call arg2.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, (s * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256
                    else:
                        t = 10
                        u = 1
                        idx = stor7[address(arg2)].field_768
                        while idx > 1:
                            if t > -1 / t:
                                revert with 0, 17
                            if not bool(idx):
                                t = t * t
                                u = u
                                idx = uint255(idx) * 0.5
                                continue 
                            t = t * t
                            u = t * u
                            idx = uint255(idx) * 0.5
                            continue 
                        if u > -1 / t:
                            revert with 0, 17
                        if stor7[address(arg2)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if s < 2 * stor7[address(arg2)].field_0:
                            revert with 0, 17
                        if s - (2 * stor7[address(arg2)].field_0) and t * u > -1 / s - (2 * stor7[address(arg2)].field_0):
                            revert with 0, 17
                        if not 2 * stor7[address(arg2)].field_256:
                            revert with 0, 18
                        if not stor7[address(arg2)].field_768:
                            if (s * t * u) - (2 * stor7[address(arg2)].field_0 * t * u) / 2 * stor7[address(arg2)].field_256 and stor7[address(arg2)].field_256 > -1 / (s * t * u) - (2 * stor7[address(arg2)].field_0 * t * u) / 2 * stor7[address(arg2)].field_256:
                                revert with 0, 17
                            if stor7[address(arg2)].field_0 > !((s * t * u) - (2 * stor7[address(arg2)].field_0 * t * u) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256):
                                revert with 0, 17
                            stor7[address(arg2)].field_0 += (s * t * u) - (2 * stor7[address(arg2)].field_0 * t * u) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256
                        else:
                            if bool(bool(stor7[address(arg2)].field_768 < 78)) or bool(bool(stor7[address(arg2)].field_768 < 32)):
                                if (s * t * u) - (2 * stor7[address(arg2)].field_0 * t * u) / 2 * stor7[address(arg2)].field_256 and stor7[address(arg2)].field_256 > -1 / (s * t * u) - (2 * stor7[address(arg2)].field_0 * t * u) / 2 * stor7[address(arg2)].field_256:
                                    revert with 0, 17
                                if not 10^stor7[address(arg2)].field_768:
                                    revert with 0, 18
                                if stor7[address(arg2)].field_0 > !((s * t * u) - (2 * stor7[address(arg2)].field_0 * t * u) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / 10^stor7[address(arg2)].field_768):
                                    revert with 0, 17
                                stor7[address(arg2)].field_0 += (s * t * u) - (2 * stor7[address(arg2)].field_0 * t * u) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / 10^stor7[address(arg2)].field_768
                            else:
                                v = 10
                                w = 1
                                idx = stor7[address(arg2)].field_768
                                while idx > 1:
                                    if v > -1 / v:
                                        revert with 0, 17
                                    if not bool(idx):
                                        v = v * v
                                        w = w
                                        idx = uint255(idx) * 0.5
                                        continue 
                                    v = v * v
                                    w = v * w
                                    idx = uint255(idx) * 0.5
                                    continue 
                                if w > -1 / v:
                                    revert with 0, 17
                                if (s * t * u) - (2 * stor7[address(arg2)].field_0 * t * u) / 2 * stor7[address(arg2)].field_256 and stor7[address(arg2)].field_256 > -1 / (s * t * u) - (2 * stor7[address(arg2)].field_0 * t * u) / 2 * stor7[address(arg2)].field_256:
                                    revert with 0, 17
                                if not v * w:
                                    revert with 0, 18
                                if stor7[address(arg2)].field_0 > !((s * t * u) - (2 * stor7[address(arg2)].field_0 * t * u) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / v * w):
                                    revert with 0, 17
                                stor7[address(arg2)].field_0 += (s * t * u) - (2 * stor7[address(arg2)].field_0 * t * u) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / v * w
                        call arg2.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, (s * t * u) - (2 * stor7[address(arg2)].field_0 * t * u) / 2 * stor7[address(arg2)].field_256
        else:
            if stor7[address(arg2)].field_0 == 1:
                if 4 > !(((10000 * arg3) - (sub_701c580c * arg3) / 10000 * 8 * stor7[address(arg2)].field_256) - ((10000 * arg3) - (sub_701c580c * arg3) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(arg2)].field_256)):
                    revert with 0, 17
                if 1 > !(((10000 * arg3) - (sub_701c580c * arg3) / 10000 * 8 * stor7[address(arg2)].field_256) + (-1 * (10000 * arg3) - (sub_701c580c * arg3) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(arg2)].field_256) + 4):
                    revert with 0, 17
                s = ((10000 * arg3) - (sub_701c580c * arg3) / 10000 * 8 * stor7[address(arg2)].field_256) + (-1 * (10000 * arg3) - (sub_701c580c * arg3) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(arg2)].field_256) + 4
                t = ((10000 * arg3) - (sub_701c580c * arg3) / 10000 * 8 * stor7[address(arg2)].field_256) + (-1 * (10000 * arg3) - (sub_701c580c * arg3) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(arg2)].field_256) + 5 / 2
                while t < s:
                    if not t:
                        revert with 0, 18
                    if ((10000 * arg3) - (sub_701c580c * arg3) / 10000 * 8 * stor7[address(arg2)].field_256) + (-1 * (10000 * arg3) - (sub_701c580c * arg3) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(arg2)].field_256) + 4 / t > !t:
                        revert with 0, 17
                    s = t
                    t = (((10000 * arg3) - (sub_701c580c * arg3) / 10000 * 8 * stor7[address(arg2)].field_256) + (-1 * (10000 * arg3) - (sub_701c580c * arg3) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(arg2)].field_256) + 4 / t) + t / 2
                    continue 
                if stor7[address(arg2)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if s <= 2 * stor7[address(arg2)].field_0:
                    if not stor7[address(arg2)].field_768:
                        if False and stor7[address(arg2)].field_256 > 0:
                            revert with 0, 17
                        if stor7[address(arg2)].field_0 > -1:
                            revert with 0, 17
                    else:
                        if bool(bool(stor7[address(arg2)].field_768 < 78)) or bool(bool(stor7[address(arg2)].field_768 < 32)):
                            if False and stor7[address(arg2)].field_256 > 0:
                                revert with 0, 17
                            if not 10^stor7[address(arg2)].field_768:
                                revert with 0, 18
                            if stor7[address(arg2)].field_0 > !(0 / 10^stor7[address(arg2)].field_768):
                                revert with 0, 17
                            stor7[address(arg2)].field_0 += 0 / 10^stor7[address(arg2)].field_768
                        else:
                            s = 10
                            t = 1
                            idx = stor7[address(arg2)].field_768
                            while idx > 1:
                                if s > -1 / s:
                                    revert with 0, 17
                                if not bool(idx):
                                    s = s * s
                                    t = t
                                    idx = uint255(idx) * 0.5
                                    continue 
                                s = s * s
                                t = s * t
                                idx = uint255(idx) * 0.5
                                continue 
                            if t > -1 / s:
                                revert with 0, 17
                            if False and stor7[address(arg2)].field_256 > 0:
                                revert with 0, 17
                            if not s * t:
                                revert with 0, 18
                            if stor7[address(arg2)].field_0 > !(0 / s * t):
                                revert with 0, 17
                            stor7[address(arg2)].field_0 += 0 / s * t
                    call arg2.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, 0
                else:
                    if stor7[address(arg2)].field_256 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if not stor7[address(arg2)].field_768:
                        if stor7[address(arg2)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if s < 2 * stor7[address(arg2)].field_0:
                            revert with 0, 17
                        if s - (2 * stor7[address(arg2)].field_0) and 1 > -1 / s - (2 * stor7[address(arg2)].field_0):
                            revert with 0, 17
                        if not 2 * stor7[address(arg2)].field_256:
                            revert with 0, 18
                        if not stor7[address(arg2)].field_768:
                            if s - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256 and stor7[address(arg2)].field_256 > -1 / s - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256:
                                revert with 0, 17
                            if stor7[address(arg2)].field_0 > !(s - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256):
                                revert with 0, 17
                            stor7[address(arg2)].field_0 += s - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256
                        else:
                            if bool(bool(stor7[address(arg2)].field_768 < 78)) or bool(bool(stor7[address(arg2)].field_768 < 32)):
                                if s - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256 and stor7[address(arg2)].field_256 > -1 / s - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256:
                                    revert with 0, 17
                                if not 10^stor7[address(arg2)].field_768:
                                    revert with 0, 18
                                if stor7[address(arg2)].field_0 > !(s - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / 10^stor7[address(arg2)].field_768):
                                    revert with 0, 17
                                stor7[address(arg2)].field_0 += s - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / 10^stor7[address(arg2)].field_768
                            else:
                                t = 10
                                u = 1
                                idx = stor7[address(arg2)].field_768
                                while idx > 1:
                                    if t > -1 / t:
                                        revert with 0, 17
                                    if not bool(idx):
                                        t = t * t
                                        u = u
                                        idx = uint255(idx) * 0.5
                                        continue 
                                    t = t * t
                                    u = t * u
                                    idx = uint255(idx) * 0.5
                                    continue 
                                if u > -1 / t:
                                    revert with 0, 17
                                if s - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256 and stor7[address(arg2)].field_256 > -1 / s - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256:
                                    revert with 0, 17
                                if not t * u:
                                    revert with 0, 18
                                if stor7[address(arg2)].field_0 > !(s - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / t * u):
                                    revert with 0, 17
                                stor7[address(arg2)].field_0 += s - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / t * u
                        call arg2.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, s - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256
                    else:
                        if bool(bool(stor7[address(arg2)].field_768 < 78)) or bool(bool(stor7[address(arg2)].field_768 < 32)):
                            if stor7[address(arg2)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 17
                            if s < 2 * stor7[address(arg2)].field_0:
                                revert with 0, 17
                            if s - (2 * stor7[address(arg2)].field_0) and 10^stor7[address(arg2)].field_768 > -1 / s - (2 * stor7[address(arg2)].field_0):
                                revert with 0, 17
                            if not 2 * stor7[address(arg2)].field_256:
                                revert with 0, 18
                            if not stor7[address(arg2)].field_768:
                                if (s * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256 and stor7[address(arg2)].field_256 > -1 / (s * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256:
                                    revert with 0, 17
                                if stor7[address(arg2)].field_0 > !((s * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256):
                                    revert with 0, 17
                                stor7[address(arg2)].field_0 += (s * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256
                            else:
                                if bool(bool(stor7[address(arg2)].field_768 < 78)) or bool(bool(stor7[address(arg2)].field_768 < 32)):
                                    if (s * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256 and stor7[address(arg2)].field_256 > -1 / (s * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256:
                                        revert with 0, 17
                                    if not 10^stor7[address(arg2)].field_768:
                                        revert with 0, 18
                                    if stor7[address(arg2)].field_0 > !((s * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / 10^stor7[address(arg2)].field_768):
                                        revert with 0, 17
                                    stor7[address(arg2)].field_0 += (s * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / 10^stor7[address(arg2)].field_768
                                else:
                                    t = 10
                                    u = 1
                                    idx = stor7[address(arg2)].field_768
                                    while idx > 1:
                                        if t > -1 / t:
                                            revert with 0, 17
                                        if not bool(idx):
                                            t = t * t
                                            u = u
                                            idx = uint255(idx) * 0.5
                                            continue 
                                        t = t * t
                                        u = t * u
                                        idx = uint255(idx) * 0.5
                                        continue 
                                    if u > -1 / t:
                                        revert with 0, 17
                                    if (s * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256 and stor7[address(arg2)].field_256 > -1 / (s * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256:
                                        revert with 0, 17
                                    if not t * u:
                                        revert with 0, 18
                                    if stor7[address(arg2)].field_0 > !((s * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / t * u):
                                        revert with 0, 17
                                    stor7[address(arg2)].field_0 += (s * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / t * u
                            call arg2.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, (s * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256
                        else:
                            t = 10
                            u = 1
                            idx = stor7[address(arg2)].field_768
                            while idx > 1:
                                if t > -1 / t:
                                    revert with 0, 17
                                if not bool(idx):
                                    t = t * t
                                    u = u
                                    idx = uint255(idx) * 0.5
                                    continue 
                                t = t * t
                                u = t * u
                                idx = uint255(idx) * 0.5
                                continue 
                            if u > -1 / t:
                                revert with 0, 17
                            if stor7[address(arg2)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 17
                            if s < 2 * stor7[address(arg2)].field_0:
                                revert with 0, 17
                            if s - (2 * stor7[address(arg2)].field_0) and t * u > -1 / s - (2 * stor7[address(arg2)].field_0):
                                revert with 0, 17
                            if not 2 * stor7[address(arg2)].field_256:
                                revert with 0, 18
                            if not stor7[address(arg2)].field_768:
                                if (s * t * u) - (2 * stor7[address(arg2)].field_0 * t * u) / 2 * stor7[address(arg2)].field_256 and stor7[address(arg2)].field_256 > -1 / (s * t * u) - (2 * stor7[address(arg2)].field_0 * t * u) / 2 * stor7[address(arg2)].field_256:
                                    revert with 0, 17
                                if stor7[address(arg2)].field_0 > !((s * t * u) - (2 * stor7[address(arg2)].field_0 * t * u) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256):
                                    revert with 0, 17
                                stor7[address(arg2)].field_0 += (s * t * u) - (2 * stor7[address(arg2)].field_0 * t * u) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256
                            else:
                                if bool(bool(stor7[address(arg2)].field_768 < 78)) or bool(bool(stor7[address(arg2)].field_768 < 32)):
                                    if (s * t * u) - (2 * stor7[address(arg2)].field_0 * t * u) / 2 * stor7[address(arg2)].field_256 and stor7[address(arg2)].field_256 > -1 / (s * t * u) - (2 * stor7[address(arg2)].field_0 * t * u) / 2 * stor7[address(arg2)].field_256:
                                        revert with 0, 17
                                    if not 10^stor7[address(arg2)].field_768:
                                        revert with 0, 18
                                    if stor7[address(arg2)].field_0 > !((s * t * u) - (2 * stor7[address(arg2)].field_0 * t * u) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / 10^stor7[address(arg2)].field_768):
                                        revert with 0, 17
                                    stor7[address(arg2)].field_0 += (s * t * u) - (2 * stor7[address(arg2)].field_0 * t * u) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / 10^stor7[address(arg2)].field_768
                                else:
                                    v = 10
                                    w = 1
                                    idx = stor7[address(arg2)].field_768
                                    while idx > 1:
                                        if v > -1 / v:
                                            revert with 0, 17
                                        if not bool(idx):
                                            v = v * v
                                            w = w
                                            idx = uint255(idx) * 0.5
                                            continue 
                                        v = v * v
                                        w = v * w
                                        idx = uint255(idx) * 0.5
                                        continue 
                                    if w > -1 / v:
                                        revert with 0, 17
                                    if (s * t * u) - (2 * stor7[address(arg2)].field_0 * t * u) / 2 * stor7[address(arg2)].field_256 and stor7[address(arg2)].field_256 > -1 / (s * t * u) - (2 * stor7[address(arg2)].field_0 * t * u) / 2 * stor7[address(arg2)].field_256:
                                        revert with 0, 17
                                    if not v * w:
                                        revert with 0, 18
                                    if stor7[address(arg2)].field_0 > !((s * t * u) - (2 * stor7[address(arg2)].field_0 * t * u) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / v * w):
                                        revert with 0, 17
                                    stor7[address(arg2)].field_0 += (s * t * u) - (2 * stor7[address(arg2)].field_0 * t * u) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / v * w
                            call arg2.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, (s * t * u) - (2 * stor7[address(arg2)].field_0 * t * u) / 2 * stor7[address(arg2)].field_256
            else:
                if stor7[address(arg2)].field_0 == 2:
                    if 16 > !(((10000 * arg3) - (sub_701c580c * arg3) / 10000 * 8 * stor7[address(arg2)].field_256) - ((10000 * arg3) - (sub_701c580c * arg3) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(arg2)].field_256)):
                        revert with 0, 17
                    if 1 > !(((10000 * arg3) - (sub_701c580c * arg3) / 10000 * 8 * stor7[address(arg2)].field_256) + (-1 * (10000 * arg3) - (sub_701c580c * arg3) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(arg2)].field_256) + 16):
                        revert with 0, 17
                    s = ((10000 * arg3) - (sub_701c580c * arg3) / 10000 * 8 * stor7[address(arg2)].field_256) + (-1 * (10000 * arg3) - (sub_701c580c * arg3) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(arg2)].field_256) + 16
                    t = ((10000 * arg3) - (sub_701c580c * arg3) / 10000 * 8 * stor7[address(arg2)].field_256) + (-1 * (10000 * arg3) - (sub_701c580c * arg3) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(arg2)].field_256) + 17 / 2
                    while t < s:
                        if not t:
                            revert with 0, 18
                        if ((10000 * arg3) - (sub_701c580c * arg3) / 10000 * 8 * stor7[address(arg2)].field_256) + (-1 * (10000 * arg3) - (sub_701c580c * arg3) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(arg2)].field_256) + 16 / t > !t:
                            revert with 0, 17
                        s = t
                        t = (((10000 * arg3) - (sub_701c580c * arg3) / 10000 * 8 * stor7[address(arg2)].field_256) + (-1 * (10000 * arg3) - (sub_701c580c * arg3) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(arg2)].field_256) + 16 / t) + t / 2
                        continue 
                    if stor7[address(arg2)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if s <= 2 * stor7[address(arg2)].field_0:
                        if not stor7[address(arg2)].field_768:
                            if False and stor7[address(arg2)].field_256 > 0:
                                revert with 0, 17
                            if stor7[address(arg2)].field_0 > -1:
                                revert with 0, 17
                        else:
                            if bool(bool(stor7[address(arg2)].field_768 < 78)) or bool(bool(stor7[address(arg2)].field_768 < 32)):
                                if False and stor7[address(arg2)].field_256 > 0:
                                    revert with 0, 17
                                if not 10^stor7[address(arg2)].field_768:
                                    revert with 0, 18
                                if stor7[address(arg2)].field_0 > !(0 / 10^stor7[address(arg2)].field_768):
                                    revert with 0, 17
                                stor7[address(arg2)].field_0 += 0 / 10^stor7[address(arg2)].field_768
                            else:
                                s = 10
                                t = 1
                                idx = stor7[address(arg2)].field_768
                                while idx > 1:
                                    if s > -1 / s:
                                        revert with 0, 17
                                    if not bool(idx):
                                        s = s * s
                                        t = t
                                        idx = uint255(idx) * 0.5
                                        continue 
                                    s = s * s
                                    t = s * t
                                    idx = uint255(idx) * 0.5
                                    continue 
                                if t > -1 / s:
                                    revert with 0, 17
                                if False and stor7[address(arg2)].field_256 > 0:
                                    revert with 0, 17
                                if not s * t:
                                    revert with 0, 18
                                if stor7[address(arg2)].field_0 > !(0 / s * t):
                                    revert with 0, 17
                                stor7[address(arg2)].field_0 += 0 / s * t
                        call arg2.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0
                    else:
                        if stor7[address(arg2)].field_256 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if not stor7[address(arg2)].field_768:
                            if stor7[address(arg2)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 17
                            if s < 2 * stor7[address(arg2)].field_0:
                                revert with 0, 17
                            if s - (2 * stor7[address(arg2)].field_0) and 1 > -1 / s - (2 * stor7[address(arg2)].field_0):
                                revert with 0, 17
                            if not 2 * stor7[address(arg2)].field_256:
                                revert with 0, 18
                            if not stor7[address(arg2)].field_768:
                                if s - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256 and stor7[address(arg2)].field_256 > -1 / s - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256:
                                    revert with 0, 17
                                if stor7[address(arg2)].field_0 > !(s - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256):
                                    revert with 0, 17
                                stor7[address(arg2)].field_0 += s - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256
                            else:
                                if bool(bool(stor7[address(arg2)].field_768 < 78)) or bool(bool(stor7[address(arg2)].field_768 < 32)):
                                    if s - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256 and stor7[address(arg2)].field_256 > -1 / s - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256:
                                        revert with 0, 17
                                    if not 10^stor7[address(arg2)].field_768:
                                        revert with 0, 18
                                    if stor7[address(arg2)].field_0 > !(s - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / 10^stor7[address(arg2)].field_768):
                                        revert with 0, 17
                                    stor7[address(arg2)].field_0 += s - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / 10^stor7[address(arg2)].field_768
                                else:
                                    t = 10
                                    u = 1
                                    idx = stor7[address(arg2)].field_768
                                    while idx > 1:
                                        if t > -1 / t:
                                            revert with 0, 17
                                        if not bool(idx):
                                            t = t * t
                                            u = u
                                            idx = uint255(idx) * 0.5
                                            continue 
                                        t = t * t
                                        u = t * u
                                        idx = uint255(idx) * 0.5
                                        continue 
                                    if u > -1 / t:
                                        revert with 0, 17
                                    if s - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256 and stor7[address(arg2)].field_256 > -1 / s - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256:
                                        revert with 0, 17
                                    if not t * u:
                                        revert with 0, 18
                                    if stor7[address(arg2)].field_0 > !(s - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / t * u):
                                        revert with 0, 17
                                    stor7[address(arg2)].field_0 += s - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / t * u
                            call arg2.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, s - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256
                        else:
                            if bool(bool(stor7[address(arg2)].field_768 < 78)) or bool(bool(stor7[address(arg2)].field_768 < 32)):
                                if stor7[address(arg2)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 17
                                if s < 2 * stor7[address(arg2)].field_0:
                                    revert with 0, 17
                                if s - (2 * stor7[address(arg2)].field_0) and 10^stor7[address(arg2)].field_768 > -1 / s - (2 * stor7[address(arg2)].field_0):
                                    revert with 0, 17
                                if not 2 * stor7[address(arg2)].field_256:
                                    revert with 0, 18
                                if not stor7[address(arg2)].field_768:
                                    if (s * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256 and stor7[address(arg2)].field_256 > -1 / (s * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256:
                                        revert with 0, 17
                                    if stor7[address(arg2)].field_0 > !((s * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256):
                                        revert with 0, 17
                                    stor7[address(arg2)].field_0 += (s * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256
                                else:
                                    if bool(bool(stor7[address(arg2)].field_768 < 78)) or bool(bool(stor7[address(arg2)].field_768 < 32)):
                                        if (s * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256 and stor7[address(arg2)].field_256 > -1 / (s * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256:
                                            revert with 0, 17
                                        if not 10^stor7[address(arg2)].field_768:
                                            revert with 0, 18
                                        if stor7[address(arg2)].field_0 > !((s * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / 10^stor7[address(arg2)].field_768):
                                            revert with 0, 17
                                        stor7[address(arg2)].field_0 += (s * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / 10^stor7[address(arg2)].field_768
                                    else:
                                        t = 10
                                        u = 1
                                        idx = stor7[address(arg2)].field_768
                                        while idx > 1:
                                            if t > -1 / t:
                                                revert with 0, 17
                                            if not bool(idx):
                                                t = t * t
                                                u = u
                                                idx = uint255(idx) * 0.5
                                                continue 
                                            t = t * t
                                            u = t * u
                                            idx = uint255(idx) * 0.5
                                            continue 
                                        if u > -1 / t:
                                            revert with 0, 17
                                        if (s * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256 and stor7[address(arg2)].field_256 > -1 / (s * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256:
                                            revert with 0, 17
                                        if not t * u:
                                            revert with 0, 18
                                        if stor7[address(arg2)].field_0 > !((s * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / t * u):
                                            revert with 0, 17
                                        stor7[address(arg2)].field_0 += (s * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / t * u
                                call arg2.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, (s * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256
                            else:
                                t = 10
                                u = 1
                                idx = stor7[address(arg2)].field_768
                                while idx > 1:
                                    if t > -1 / t:
                                        revert with 0, 17
                                    if not bool(idx):
                                        t = t * t
                                        u = u
                                        idx = uint255(idx) * 0.5
                                        continue 
                                    t = t * t
                                    u = t * u
                                    idx = uint255(idx) * 0.5
                                    continue 
                                if u > -1 / t:
                                    revert with 0, 17
                                if stor7[address(arg2)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 17
                                if s < 2 * stor7[address(arg2)].field_0:
                                    revert with 0, 17
                                if s - (2 * stor7[address(arg2)].field_0) and t * u > -1 / s - (2 * stor7[address(arg2)].field_0):
                                    revert with 0, 17
                                if not 2 * stor7[address(arg2)].field_256:
                                    revert with 0, 18
                                if not stor7[address(arg2)].field_768:
                                    if (s * t * u) - (2 * stor7[address(arg2)].field_0 * t * u) / 2 * stor7[address(arg2)].field_256 and stor7[address(arg2)].field_256 > -1 / (s * t * u) - (2 * stor7[address(arg2)].field_0 * t * u) / 2 * stor7[address(arg2)].field_256:
                                        revert with 0, 17
                                    if stor7[address(arg2)].field_0 > !((s * t * u) - (2 * stor7[address(arg2)].field_0 * t * u) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256):
                                        revert with 0, 17
                                    stor7[address(arg2)].field_0 += (s * t * u) - (2 * stor7[address(arg2)].field_0 * t * u) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256
                                else:
                                    if bool(bool(stor7[address(arg2)].field_768 < 78)) or bool(bool(stor7[address(arg2)].field_768 < 32)):
                                        if (s * t * u) - (2 * stor7[address(arg2)].field_0 * t * u) / 2 * stor7[address(arg2)].field_256 and stor7[address(arg2)].field_256 > -1 / (s * t * u) - (2 * stor7[address(arg2)].field_0 * t * u) / 2 * stor7[address(arg2)].field_256:
                                            revert with 0, 17
                                        if not 10^stor7[address(arg2)].field_768:
                                            revert with 0, 18
                                        if stor7[address(arg2)].field_0 > !((s * t * u) - (2 * stor7[address(arg2)].field_0 * t * u) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / 10^stor7[address(arg2)].field_768):
                                            revert with 0, 17
                                        stor7[address(arg2)].field_0 += (s * t * u) - (2 * stor7[address(arg2)].field_0 * t * u) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / 10^stor7[address(arg2)].field_768
                                    else:
                                        v = 10
                                        w = 1
                                        idx = stor7[address(arg2)].field_768
                                        while idx > 1:
                                            if v > -1 / v:
                                                revert with 0, 17
                                            if not bool(idx):
                                                v = v * v
                                                w = w
                                                idx = uint255(idx) * 0.5
                                                continue 
                                            v = v * v
                                            w = v * w
                                            idx = uint255(idx) * 0.5
                                            continue 
                                        if w > -1 / v:
                                            revert with 0, 17
                                        if (s * t * u) - (2 * stor7[address(arg2)].field_0 * t * u) / 2 * stor7[address(arg2)].field_256 and stor7[address(arg2)].field_256 > -1 / (s * t * u) - (2 * stor7[address(arg2)].field_0 * t * u) / 2 * stor7[address(arg2)].field_256:
                                            revert with 0, 17
                                        if not v * w:
                                            revert with 0, 18
                                        if stor7[address(arg2)].field_0 > !((s * t * u) - (2 * stor7[address(arg2)].field_0 * t * u) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / v * w):
                                            revert with 0, 17
                                        stor7[address(arg2)].field_0 += (s * t * u) - (2 * stor7[address(arg2)].field_0 * t * u) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / v * w
                                call arg2.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, (s * t * u) - (2 * stor7[address(arg2)].field_0 * t * u) / 2 * stor7[address(arg2)].field_256
                else:
                    if bool(bool(stor7[address(arg2)].field_0 < 11)) or bool(bool(stor7[address(arg2)].field_0 < 307)):
                        if stor7[address(arg2)].field_0^2 > 0x3fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if 4 * stor7[address(arg2)].field_0^2 > !(((10000 * arg3) - (sub_701c580c * arg3) / 10000 * 8 * stor7[address(arg2)].field_256) - ((10000 * arg3) - (sub_701c580c * arg3) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(arg2)].field_256)):
                            revert with 0, 17
                        if 1 > !((4 * stor7[address(arg2)].field_0^2) + ((10000 * arg3) - (sub_701c580c * arg3) / 10000 * 8 * stor7[address(arg2)].field_256) - ((10000 * arg3) - (sub_701c580c * arg3) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(arg2)].field_256)):
                            revert with 0, 17
                        s = (4 * stor7[address(arg2)].field_0^2) + ((10000 * arg3) - (sub_701c580c * arg3) / 10000 * 8 * stor7[address(arg2)].field_256) - ((10000 * arg3) - (sub_701c580c * arg3) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(arg2)].field_256)
                        t = (4 * stor7[address(arg2)].field_0^2) + ((10000 * arg3) - (sub_701c580c * arg3) / 10000 * 8 * stor7[address(arg2)].field_256) + (-1 * (10000 * arg3) - (sub_701c580c * arg3) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(arg2)].field_256) + 1 / 2
                        while t < s:
                            if not t:
                                revert with 0, 18
                            if (4 * stor7[address(arg2)].field_0^2) + ((10000 * arg3) - (sub_701c580c * arg3) / 10000 * 8 * stor7[address(arg2)].field_256) - ((10000 * arg3) - (sub_701c580c * arg3) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(arg2)].field_256) / t > !t:
                                revert with 0, 17
                            s = t
                            t = ((4 * stor7[address(arg2)].field_0^2) + ((10000 * arg3) - (sub_701c580c * arg3) / 10000 * 8 * stor7[address(arg2)].field_256) - ((10000 * arg3) - (sub_701c580c * arg3) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(arg2)].field_256) / t) + t / 2
                            continue 
                        if stor7[address(arg2)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if s <= 2 * stor7[address(arg2)].field_0:
                            if not stor7[address(arg2)].field_768:
                                if False and stor7[address(arg2)].field_256 > 0:
                                    revert with 0, 17
                                if stor7[address(arg2)].field_0 > -1:
                                    revert with 0, 17
                            else:
                                if bool(bool(stor7[address(arg2)].field_768 < 78)) or bool(bool(stor7[address(arg2)].field_768 < 32)):
                                    if False and stor7[address(arg2)].field_256 > 0:
                                        revert with 0, 17
                                    if not 10^stor7[address(arg2)].field_768:
                                        revert with 0, 18
                                    if stor7[address(arg2)].field_0 > !(0 / 10^stor7[address(arg2)].field_768):
                                        revert with 0, 17
                                    stor7[address(arg2)].field_0 += 0 / 10^stor7[address(arg2)].field_768
                                else:
                                    s = 10
                                    t = 1
                                    idx = stor7[address(arg2)].field_768
                                    while idx > 1:
                                        if s > -1 / s:
                                            revert with 0, 17
                                        if not bool(idx):
                                            s = s * s
                                            t = t
                                            idx = uint255(idx) * 0.5
                                            continue 
                                        s = s * s
                                        t = s * t
                                        idx = uint255(idx) * 0.5
                                        continue 
                                    if t > -1 / s:
                                        revert with 0, 17
                                    if False and stor7[address(arg2)].field_256 > 0:
                                        revert with 0, 17
                                    if not s * t:
                                        revert with 0, 18
                                    if stor7[address(arg2)].field_0 > !(0 / s * t):
                                        revert with 0, 17
                                    stor7[address(arg2)].field_0 += 0 / s * t
                            call arg2.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                        else:
                            if stor7[address(arg2)].field_256 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 17
                            if not stor7[address(arg2)].field_768:
                                if stor7[address(arg2)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 17
                                if s < 2 * stor7[address(arg2)].field_0:
                                    revert with 0, 17
                                if s - (2 * stor7[address(arg2)].field_0) and 1 > -1 / s - (2 * stor7[address(arg2)].field_0):
                                    revert with 0, 17
                                if not 2 * stor7[address(arg2)].field_256:
                                    revert with 0, 18
                                if not stor7[address(arg2)].field_768:
                                    if s - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256 and stor7[address(arg2)].field_256 > -1 / s - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256:
                                        revert with 0, 17
                                    if stor7[address(arg2)].field_0 > !(s - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256):
                                        revert with 0, 17
                                    stor7[address(arg2)].field_0 += s - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256
                                else:
                                    if bool(bool(stor7[address(arg2)].field_768 < 78)) or bool(bool(stor7[address(arg2)].field_768 < 32)):
                                        if s - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256 and stor7[address(arg2)].field_256 > -1 / s - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256:
                                            revert with 0, 17
                                        if not 10^stor7[address(arg2)].field_768:
                                            revert with 0, 18
                                        if stor7[address(arg2)].field_0 > !(s - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / 10^stor7[address(arg2)].field_768):
                                            revert with 0, 17
                                        stor7[address(arg2)].field_0 += s - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / 10^stor7[address(arg2)].field_768
                                    else:
                                        t = 10
                                        u = 1
                                        idx = stor7[address(arg2)].field_768
                                        while idx > 1:
                                            if t > -1 / t:
                                                revert with 0, 17
                                            if not bool(idx):
                                                t = t * t
                                                u = u
                                                idx = uint255(idx) * 0.5
                                                continue 
                                            t = t * t
                                            u = t * u
                                            idx = uint255(idx) * 0.5
                                            continue 
                                        if u > -1 / t:
                                            revert with 0, 17
                                        if s - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256 and stor7[address(arg2)].field_256 > -1 / s - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256:
                                            revert with 0, 17
                                        if not t * u:
                                            revert with 0, 18
                                        if stor7[address(arg2)].field_0 > !(s - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / t * u):
                                            revert with 0, 17
                                        stor7[address(arg2)].field_0 += s - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / t * u
                                call arg2.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, s - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256
                            else:
                                if bool(bool(stor7[address(arg2)].field_768 < 78)) or bool(bool(stor7[address(arg2)].field_768 < 32)):
                                    if stor7[address(arg2)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 17
                                    if s < 2 * stor7[address(arg2)].field_0:
                                        revert with 0, 17
                                    if s - (2 * stor7[address(arg2)].field_0) and 10^stor7[address(arg2)].field_768 > -1 / s - (2 * stor7[address(arg2)].field_0):
                                        revert with 0, 17
                                    if not 2 * stor7[address(arg2)].field_256:
                                        revert with 0, 18
                                    if not stor7[address(arg2)].field_768:
                                        if (s * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256 and stor7[address(arg2)].field_256 > -1 / (s * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256:
                                            revert with 0, 17
                                        if stor7[address(arg2)].field_0 > !((s * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256):
                                            revert with 0, 17
                                        stor7[address(arg2)].field_0 += (s * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256
                                    else:
                                        if bool(bool(stor7[address(arg2)].field_768 < 78)) or bool(bool(stor7[address(arg2)].field_768 < 32)):
                                            if (s * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256 and stor7[address(arg2)].field_256 > -1 / (s * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256:
                                                revert with 0, 17
                                            if not 10^stor7[address(arg2)].field_768:
                                                revert with 0, 18
                                            if stor7[address(arg2)].field_0 > !((s * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / 10^stor7[address(arg2)].field_768):
                                                revert with 0, 17
                                            stor7[address(arg2)].field_0 += (s * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / 10^stor7[address(arg2)].field_768
                                        else:
                                            t = 10
                                            u = 1
                                            idx = stor7[address(arg2)].field_768
                                            while idx > 1:
                                                if t > -1 / t:
                                                    revert with 0, 17
                                                if not bool(idx):
                                                    t = t * t
                                                    u = u
                                                    idx = uint255(idx) * 0.5
                                                    continue 
                                                t = t * t
                                                u = t * u
                                                idx = uint255(idx) * 0.5
                                                continue 
                                            if u > -1 / t:
                                                revert with 0, 17
                                            if (s * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256 and stor7[address(arg2)].field_256 > -1 / (s * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256:
                                                revert with 0, 17
                                            if not t * u:
                                                revert with 0, 18
                                            if stor7[address(arg2)].field_0 > !((s * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / t * u):
                                                revert with 0, 17
                                            stor7[address(arg2)].field_0 += (s * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / t * u
                                    call arg2.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, (s * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256
                                else:
                                    t = 10
                                    u = 1
                                    idx = stor7[address(arg2)].field_768
                                    while idx > 1:
                                        if t > -1 / t:
                                            revert with 0, 17
                                        if not bool(idx):
                                            t = t * t
                                            u = u
                                            idx = uint255(idx) * 0.5
                                            continue 
                                        t = t * t
                                        u = t * u
                                        idx = uint255(idx) * 0.5
                                        continue 
                                    if u > -1 / t:
                                        revert with 0, 17
                                    if stor7[address(arg2)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 17
                                    if s < 2 * stor7[address(arg2)].field_0:
                                        revert with 0, 17
                                    if s - (2 * stor7[address(arg2)].field_0) and t * u > -1 / s - (2 * stor7[address(arg2)].field_0):
                                        revert with 0, 17
                                    if not 2 * stor7[address(arg2)].field_256:
                                        revert with 0, 18
                                    if not stor7[address(arg2)].field_768:
                                        if (s * t * u) - (2 * stor7[address(arg2)].field_0 * t * u) / 2 * stor7[address(arg2)].field_256 and stor7[address(arg2)].field_256 > -1 / (s * t * u) - (2 * stor7[address(arg2)].field_0 * t * u) / 2 * stor7[address(arg2)].field_256:
                                            revert with 0, 17
                                        if stor7[address(arg2)].field_0 > !((s * t * u) - (2 * stor7[address(arg2)].field_0 * t * u) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256):
                                            revert with 0, 17
                                        stor7[address(arg2)].field_0 += (s * t * u) - (2 * stor7[address(arg2)].field_0 * t * u) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256
                                    else:
                                        if bool(bool(stor7[address(arg2)].field_768 < 78)) or bool(bool(stor7[address(arg2)].field_768 < 32)):
                                            if (s * t * u) - (2 * stor7[address(arg2)].field_0 * t * u) / 2 * stor7[address(arg2)].field_256 and stor7[address(arg2)].field_256 > -1 / (s * t * u) - (2 * stor7[address(arg2)].field_0 * t * u) / 2 * stor7[address(arg2)].field_256:
                                                revert with 0, 17
                                            if not 10^stor7[address(arg2)].field_768:
                                                revert with 0, 18
                                            if stor7[address(arg2)].field_0 > !((s * t * u) - (2 * stor7[address(arg2)].field_0 * t * u) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / 10^stor7[address(arg2)].field_768):
                                                revert with 0, 17
                                            stor7[address(arg2)].field_0 += (s * t * u) - (2 * stor7[address(arg2)].field_0 * t * u) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / 10^stor7[address(arg2)].field_768
                                        else:
                                            v = 10
                                            w = 1
                                            idx = stor7[address(arg2)].field_768
                                            while idx > 1:
                                                if v > -1 / v:
                                                    revert with 0, 17
                                                if not bool(idx):
                                                    v = v * v
                                                    w = w
                                                    idx = uint255(idx) * 0.5
                                                    continue 
                                                v = v * v
                                                w = v * w
                                                idx = uint255(idx) * 0.5
                                                continue 
                                            if w > -1 / v:
                                                revert with 0, 17
                                            if (s * t * u) - (2 * stor7[address(arg2)].field_0 * t * u) / 2 * stor7[address(arg2)].field_256 and stor7[address(arg2)].field_256 > -1 / (s * t * u) - (2 * stor7[address(arg2)].field_0 * t * u) / 2 * stor7[address(arg2)].field_256:
                                                revert with 0, 17
                                            if not v * w:
                                                revert with 0, 18
                                            if stor7[address(arg2)].field_0 > !((s * t * u) - (2 * stor7[address(arg2)].field_0 * t * u) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / v * w):
                                                revert with 0, 17
                                            stor7[address(arg2)].field_0 += (s * t * u) - (2 * stor7[address(arg2)].field_0 * t * u) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / v * w
                                    call arg2.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, (s * t * u) - (2 * stor7[address(arg2)].field_0 * t * u) / 2 * stor7[address(arg2)].field_256
                    else:
                        s = stor7[address(arg2)].field_0
                        idx = 2
                        while idx > 1:
                            if s > -1 / s:
                                revert with 0, 17
                            s = s * s
                            idx = uint255(idx) * 0.5
                            continue 
                        if 1 > -1 / s:
                            revert with 0, 17
                        if s > 0x3fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if 4 * s > !(((10000 * arg3) - (sub_701c580c * arg3) / 10000 * 8 * stor7[address(arg2)].field_256) - ((10000 * arg3) - (sub_701c580c * arg3) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(arg2)].field_256)):
                            revert with 0, 17
                        if 1 > !((4 * s) + ((10000 * arg3) - (sub_701c580c * arg3) / 10000 * 8 * stor7[address(arg2)].field_256) - ((10000 * arg3) - (sub_701c580c * arg3) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(arg2)].field_256)):
                            revert with 0, 17
                        t = (4 * s) + ((10000 * arg3) - (sub_701c580c * arg3) / 10000 * 8 * stor7[address(arg2)].field_256) - ((10000 * arg3) - (sub_701c580c * arg3) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(arg2)].field_256)
                        u = (4 * s) + ((10000 * arg3) - (sub_701c580c * arg3) / 10000 * 8 * stor7[address(arg2)].field_256) + (-1 * (10000 * arg3) - (sub_701c580c * arg3) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(arg2)].field_256) + 1 / 2
                        while u < t:
                            if not u:
                                revert with 0, 18
                            if (4 * s) + ((10000 * arg3) - (sub_701c580c * arg3) / 10000 * 8 * stor7[address(arg2)].field_256) - ((10000 * arg3) - (sub_701c580c * arg3) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(arg2)].field_256) / u > !u:
                                revert with 0, 17
                            t = u
                            u = ((4 * s) + ((10000 * arg3) - (sub_701c580c * arg3) / 10000 * 8 * stor7[address(arg2)].field_256) - ((10000 * arg3) - (sub_701c580c * arg3) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(arg2)].field_256) / u) + u / 2
                            continue 
                        if stor7[address(arg2)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if t <= 2 * stor7[address(arg2)].field_0:
                            if not stor7[address(arg2)].field_768:
                                if False and stor7[address(arg2)].field_256 > 0:
                                    revert with 0, 17
                                if stor7[address(arg2)].field_0 > -1:
                                    revert with 0, 17
                            else:
                                if bool(bool(stor7[address(arg2)].field_768 < 78)) or bool(bool(stor7[address(arg2)].field_768 < 32)):
                                    if False and stor7[address(arg2)].field_256 > 0:
                                        revert with 0, 17
                                    if not 10^stor7[address(arg2)].field_768:
                                        revert with 0, 18
                                    if stor7[address(arg2)].field_0 > !(0 / 10^stor7[address(arg2)].field_768):
                                        revert with 0, 17
                                    stor7[address(arg2)].field_0 += 0 / 10^stor7[address(arg2)].field_768
                                else:
                                    s = 10
                                    t = 1
                                    idx = stor7[address(arg2)].field_768
                                    while idx > 1:
                                        if s > -1 / s:
                                            revert with 0, 17
                                        if not bool(idx):
                                            s = s * s
                                            t = t
                                            idx = uint255(idx) * 0.5
                                            continue 
                                        s = s * s
                                        t = s * t
                                        idx = uint255(idx) * 0.5
                                        continue 
                                    if t > -1 / s:
                                        revert with 0, 17
                                    if False and stor7[address(arg2)].field_256 > 0:
                                        revert with 0, 17
                                    if not s * t:
                                        revert with 0, 18
                                    if stor7[address(arg2)].field_0 > !(0 / s * t):
                                        revert with 0, 17
                                    stor7[address(arg2)].field_0 += 0 / s * t
                            call arg2.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                        else:
                            if stor7[address(arg2)].field_256 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 17
                            if not stor7[address(arg2)].field_768:
                                if stor7[address(arg2)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 17
                                if t < 2 * stor7[address(arg2)].field_0:
                                    revert with 0, 17
                                if t - (2 * stor7[address(arg2)].field_0) and 1 > -1 / t - (2 * stor7[address(arg2)].field_0):
                                    revert with 0, 17
                                if not 2 * stor7[address(arg2)].field_256:
                                    revert with 0, 18
                                if not stor7[address(arg2)].field_768:
                                    if t - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256 and stor7[address(arg2)].field_256 > -1 / t - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256:
                                        revert with 0, 17
                                    if stor7[address(arg2)].field_0 > !(t - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256):
                                        revert with 0, 17
                                    stor7[address(arg2)].field_0 += t - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256
                                else:
                                    if bool(bool(stor7[address(arg2)].field_768 < 78)) or bool(bool(stor7[address(arg2)].field_768 < 32)):
                                        if t - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256 and stor7[address(arg2)].field_256 > -1 / t - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256:
                                            revert with 0, 17
                                        if not 10^stor7[address(arg2)].field_768:
                                            revert with 0, 18
                                        if stor7[address(arg2)].field_0 > !(t - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / 10^stor7[address(arg2)].field_768):
                                            revert with 0, 17
                                        stor7[address(arg2)].field_0 += t - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / 10^stor7[address(arg2)].field_768
                                    else:
                                        s = 10
                                        u = 1
                                        idx = stor7[address(arg2)].field_768
                                        while idx > 1:
                                            if s > -1 / s:
                                                revert with 0, 17
                                            if not bool(idx):
                                                s = s * s
                                                u = u
                                                idx = uint255(idx) * 0.5
                                                continue 
                                            s = s * s
                                            u = s * u
                                            idx = uint255(idx) * 0.5
                                            continue 
                                        if u > -1 / s:
                                            revert with 0, 17
                                        if t - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256 and stor7[address(arg2)].field_256 > -1 / t - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256:
                                            revert with 0, 17
                                        if not s * u:
                                            revert with 0, 18
                                        if stor7[address(arg2)].field_0 > !(t - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / s * u):
                                            revert with 0, 17
                                        stor7[address(arg2)].field_0 += t - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / s * u
                                call arg2.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, t - (2 * stor7[address(arg2)].field_0) / 2 * stor7[address(arg2)].field_256
                            else:
                                if bool(bool(stor7[address(arg2)].field_768 < 78)) or bool(bool(stor7[address(arg2)].field_768 < 32)):
                                    if stor7[address(arg2)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 17
                                    if t < 2 * stor7[address(arg2)].field_0:
                                        revert with 0, 17
                                    if t - (2 * stor7[address(arg2)].field_0) and 10^stor7[address(arg2)].field_768 > -1 / t - (2 * stor7[address(arg2)].field_0):
                                        revert with 0, 17
                                    if not 2 * stor7[address(arg2)].field_256:
                                        revert with 0, 18
                                    if not stor7[address(arg2)].field_768:
                                        if (t * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256 and stor7[address(arg2)].field_256 > -1 / (t * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256:
                                            revert with 0, 17
                                        if stor7[address(arg2)].field_0 > !((t * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256):
                                            revert with 0, 17
                                        stor7[address(arg2)].field_0 += (t * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256
                                    else:
                                        if bool(bool(stor7[address(arg2)].field_768 < 78)) or bool(bool(stor7[address(arg2)].field_768 < 32)):
                                            if (t * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256 and stor7[address(arg2)].field_256 > -1 / (t * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256:
                                                revert with 0, 17
                                            if not 10^stor7[address(arg2)].field_768:
                                                revert with 0, 18
                                            if stor7[address(arg2)].field_0 > !((t * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / 10^stor7[address(arg2)].field_768):
                                                revert with 0, 17
                                            stor7[address(arg2)].field_0 += (t * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / 10^stor7[address(arg2)].field_768
                                        else:
                                            s = 10
                                            u = 1
                                            idx = stor7[address(arg2)].field_768
                                            while idx > 1:
                                                if s > -1 / s:
                                                    revert with 0, 17
                                                if not bool(idx):
                                                    s = s * s
                                                    u = u
                                                    idx = uint255(idx) * 0.5
                                                    continue 
                                                s = s * s
                                                u = s * u
                                                idx = uint255(idx) * 0.5
                                                continue 
                                            if u > -1 / s:
                                                revert with 0, 17
                                            if (t * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256 and stor7[address(arg2)].field_256 > -1 / (t * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256:
                                                revert with 0, 17
                                            if not s * u:
                                                revert with 0, 18
                                            if stor7[address(arg2)].field_0 > !((t * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / s * u):
                                                revert with 0, 17
                                            stor7[address(arg2)].field_0 += (t * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / s * u
                                    call arg2.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, (t * 10^stor7[address(arg2)].field_768) - (2 * stor7[address(arg2)].field_0 * 10^stor7[address(arg2)].field_768) / 2 * stor7[address(arg2)].field_256
                                else:
                                    s = 10
                                    u = 1
                                    idx = stor7[address(arg2)].field_768
                                    while idx > 1:
                                        if s > -1 / s:
                                            revert with 0, 17
                                        if not bool(idx):
                                            s = s * s
                                            u = u
                                            idx = uint255(idx) * 0.5
                                            continue 
                                        s = s * s
                                        u = s * u
                                        idx = uint255(idx) * 0.5
                                        continue 
                                    if u > -1 / s:
                                        revert with 0, 17
                                    if stor7[address(arg2)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 17
                                    if t < 2 * stor7[address(arg2)].field_0:
                                        revert with 0, 17
                                    if t - (2 * stor7[address(arg2)].field_0) and s * u > -1 / t - (2 * stor7[address(arg2)].field_0):
                                        revert with 0, 17
                                    if not 2 * stor7[address(arg2)].field_256:
                                        revert with 0, 18
                                    if not stor7[address(arg2)].field_768:
                                        if (t * s * u) - (2 * stor7[address(arg2)].field_0 * s * u) / 2 * stor7[address(arg2)].field_256 and stor7[address(arg2)].field_256 > -1 / (t * s * u) - (2 * stor7[address(arg2)].field_0 * s * u) / 2 * stor7[address(arg2)].field_256:
                                            revert with 0, 17
                                        if stor7[address(arg2)].field_0 > !((t * s * u) - (2 * stor7[address(arg2)].field_0 * s * u) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256):
                                            revert with 0, 17
                                        stor7[address(arg2)].field_0 += (t * s * u) - (2 * stor7[address(arg2)].field_0 * s * u) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256
                                    else:
                                        if bool(bool(stor7[address(arg2)].field_768 < 78)) or bool(bool(stor7[address(arg2)].field_768 < 32)):
                                            if (t * s * u) - (2 * stor7[address(arg2)].field_0 * s * u) / 2 * stor7[address(arg2)].field_256 and stor7[address(arg2)].field_256 > -1 / (t * s * u) - (2 * stor7[address(arg2)].field_0 * s * u) / 2 * stor7[address(arg2)].field_256:
                                                revert with 0, 17
                                            if not 10^stor7[address(arg2)].field_768:
                                                revert with 0, 18
                                            if stor7[address(arg2)].field_0 > !((t * s * u) - (2 * stor7[address(arg2)].field_0 * s * u) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / 10^stor7[address(arg2)].field_768):
                                                revert with 0, 17
                                            stor7[address(arg2)].field_0 += (t * s * u) - (2 * stor7[address(arg2)].field_0 * s * u) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / 10^stor7[address(arg2)].field_768
                                        else:
                                            v = 10
                                            w = 1
                                            idx = stor7[address(arg2)].field_768
                                            while idx > 1:
                                                if v > -1 / v:
                                                    revert with 0, 17
                                                if not bool(idx):
                                                    v = v * v
                                                    w = w
                                                    idx = uint255(idx) * 0.5
                                                    continue 
                                                v = v * v
                                                w = v * w
                                                idx = uint255(idx) * 0.5
                                                continue 
                                            if w > -1 / v:
                                                revert with 0, 17
                                            if (t * s * u) - (2 * stor7[address(arg2)].field_0 * s * u) / 2 * stor7[address(arg2)].field_256 and stor7[address(arg2)].field_256 > -1 / (t * s * u) - (2 * stor7[address(arg2)].field_0 * s * u) / 2 * stor7[address(arg2)].field_256:
                                                revert with 0, 17
                                            if not v * w:
                                                revert with 0, 18
                                            if stor7[address(arg2)].field_0 > !((t * s * u) - (2 * stor7[address(arg2)].field_0 * s * u) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / v * w):
                                                revert with 0, 17
                                            stor7[address(arg2)].field_0 += (t * s * u) - (2 * stor7[address(arg2)].field_0 * s * u) / 2 * stor7[address(arg2)].field_256 * stor7[address(arg2)].field_256 / v * w
                                    call arg2.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, (t * s * u) - (2 * stor7[address(arg2)].field_0 * s * u) / 2 * stor7[address(arg2)].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit Swap((10000 * arg3) - (sub_701c580c * arg3) / 10000, stor7[address(arg2)].field_0, stor7[address(arg2)].field_0, arg1, arg2);
    if sub_61f8967c > maxfee:
        if sub_61f8967c > 0x1111111111111111111111111111111111111111111111111111111111111111:
            revert with 0, 17
        call sub_d483a2aaAddress.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_76aa6d62Address, 15 * sub_61f8967c / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if sub_61f8967c > 0x303030303030303030303030303030303030303030303030303030303030303:
            revert with 0, 17
        call sub_d483a2aaAddress.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_47a3a62aAddress, 85 * sub_61f8967c / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        sub_61f8967c = 0
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x76aa6d62(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x61f8967c(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x61f8967c(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_61f8967c
                if uint32(call.func_hash) >> 224 != unknown_0x64eae9ec(?????):
                    if unknown_0x6c7416e4(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if 1 > !cd[4]:
                            revert with 0, 17
                        s = cd[4]
                        t = cd[4] + 1 / 2
                        while t < s:
                            if not t:
                                revert with 0, 18
                            if cd[4] / t > !t:
                                revert with 0, 17
                            s = t
                            t = (cd[4] / t) + t / 2
                            continue 
                        return s
                    if uint32(call.func_hash) >> 224 != unknown_0x6fc0a16a(?????):
                        if unknown_0x701c580c(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return sub_701c580c
                        require unknown_0x710e5d2f(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require stor8[msg.sender]
                        maxfee = cd[4]
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 96
                        require cd[4] == address(cd[4])
                        require cd[36] == address(cd[36])
                        require stor8[msg.sender]
                        if not address(cd[4]):
                            call address(cd[36]) with:
                               value cd[68] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            call address(cd[4]).transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(cd[36]), cd[68]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require not msg.value
                require calldata.size - 4 >= 128
                if cd[36] > 0x1fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if Mask(253, 0, cd[36]) and cd[68] > -1 / 8 * cd[36]:
                    revert with 0, 17
                if not cd[4]:
                    if 0 > !(8 * cd[36] * cd[68]):
                        revert with 0, 17
                    if 1 > !(8 * cd[36] * cd[68]):
                        revert with 0, 17
                    s = 8 * cd[36] * cd[68]
                    t = (8 * cd[36] * cd[68]) + 1 / 2
                    while t < s:
                        if not t:
                            revert with 0, 18
                        if 8 * cd[36] * cd[68] / t > !t:
                            revert with 0, 17
                        s = t
                        t = (8 * cd[36] * cd[68] / t) + t / 2
                        continue 
                    if cd[4] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if s <= 2 * cd[4]:
                        return 0
                    if cd[36] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if not cd[100]:
                        if cd[4] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if s < 2 * cd[4]:
                            revert with 0, 17
                        if s - (2 * cd[4]) and 1 > -1 / s - (2 * cd[4]):
                            revert with 0, 17
                        if not 2 * cd[36]:
                            revert with 0, 18
                        return (s - (2 * cd[4]) / 2 * cd[36])
                    if bool(bool(cd[100] < 78)) or bool(bool(cd[100] < 32)):
                        if cd[4] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if s < 2 * cd[4]:
                            revert with 0, 17
                        if s - (2 * cd[4]) and 10^cd[100] > -1 / s - (2 * cd[4]):
                            revert with 0, 17
                        if not 2 * cd[36]:
                            revert with 0, 18
                        return ((s * 10^cd[100]) - (2 * cd[4] * 10^cd[100]) / 2 * cd[36])
                    t = 10
                    u = 1
                    idx = cd[100]
                    while idx > 1:
                        if t > -1 / t:
                            revert with 0, 17
                        if not bool(idx):
                            t = t * t
                            u = u
                            idx = uint255(idx) * 0.5
                            continue 
                        t = t * t
                        u = t * u
                        idx = uint255(idx) * 0.5
                        continue 
                    if u > -1 / t:
                        revert with 0, 17
                    if cd[4] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if s < 2 * cd[4]:
                        revert with 0, 17
                    if s - (2 * cd[4]) and t * u > -1 / s - (2 * cd[4]):
                        revert with 0, 17
                    if not 2 * cd[36]:
                        revert with 0, 18
                    return ((s * t * u) - (2 * cd[4] * t * u) / 2 * cd[36])
                if cd[4] == 1:
                    if 4 > !(8 * cd[36] * cd[68]):
                        revert with 0, 17
                    if 1 > !((8 * cd[36] * cd[68]) + 4):
                        revert with 0, 17
                    s = (8 * cd[36] * cd[68]) + 4
                    t = (8 * cd[36] * cd[68]) + 5 / 2
                    while t < s:
                        if not t:
                            revert with 0, 18
                        if (8 * cd[36] * cd[68]) + 4 / t > !t:
                            revert with 0, 17
                        s = t
                        t = ((8 * cd[36] * cd[68]) + 4 / t) + t / 2
                        continue 
                    if cd[4] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if s <= 2 * cd[4]:
                        return 0
                    if cd[36] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if not cd[100]:
                        if cd[4] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if s < 2 * cd[4]:
                            revert with 0, 17
                        if s - (2 * cd[4]) and 1 > -1 / s - (2 * cd[4]):
                            revert with 0, 17
                        if not 2 * cd[36]:
                            revert with 0, 18
                        return (s - (2 * cd[4]) / 2 * cd[36])
                    if bool(bool(cd[100] < 78)) or bool(bool(cd[100] < 32)):
                        if cd[4] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if s < 2 * cd[4]:
                            revert with 0, 17
                        if s - (2 * cd[4]) and 10^cd[100] > -1 / s - (2 * cd[4]):
                            revert with 0, 17
                        if not 2 * cd[36]:
                            revert with 0, 18
                        return ((s * 10^cd[100]) - (2 * cd[4] * 10^cd[100]) / 2 * cd[36])
                    t = 10
                    u = 1
                    idx = cd[100]
                    while idx > 1:
                        if t > -1 / t:
                            revert with 0, 17
                        if not bool(idx):
                            t = t * t
                            u = u
                            idx = uint255(idx) * 0.5
                            continue 
                        t = t * t
                        u = t * u
                        idx = uint255(idx) * 0.5
                        continue 
                    if u > -1 / t:
                        revert with 0, 17
                    if cd[4] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if s < 2 * cd[4]:
                        revert with 0, 17
                    if s - (2 * cd[4]) and t * u > -1 / s - (2 * cd[4]):
                        revert with 0, 17
                    if not 2 * cd[36]:
                        revert with 0, 18
                    return ((s * t * u) - (2 * cd[4] * t * u) / 2 * cd[36])
                if cd[4] == 2:
                    if 16 > !(8 * cd[36] * cd[68]):
                        revert with 0, 17
                    if 1 > !((8 * cd[36] * cd[68]) + 16):
                        revert with 0, 17
                    s = (8 * cd[36] * cd[68]) + 16
                    t = (8 * cd[36] * cd[68]) + 17 / 2
                    while t < s:
                        if not t:
                            revert with 0, 18
                        if (8 * cd[36] * cd[68]) + 16 / t > !t:
                            revert with 0, 17
                        s = t
                        t = ((8 * cd[36] * cd[68]) + 16 / t) + t / 2
                        continue 
                    if cd[4] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if s <= 2 * cd[4]:
                        return 0
                    if cd[36] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if not cd[100]:
                        if cd[4] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if s < 2 * cd[4]:
                            revert with 0, 17
                        if s - (2 * cd[4]) and 1 > -1 / s - (2 * cd[4]):
                            revert with 0, 17
                        if not 2 * cd[36]:
                            revert with 0, 18
                        return (s - (2 * cd[4]) / 2 * cd[36])
                    if bool(bool(cd[100] < 78)) or bool(bool(cd[100] < 32)):
                        if cd[4] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if s < 2 * cd[4]:
                            revert with 0, 17
                        if s - (2 * cd[4]) and 10^cd[100] > -1 / s - (2 * cd[4]):
                            revert with 0, 17
                        if not 2 * cd[36]:
                            revert with 0, 18
                        return ((s * 10^cd[100]) - (2 * cd[4] * 10^cd[100]) / 2 * cd[36])
                    t = 10
                    u = 1
                    idx = cd[100]
                    while idx > 1:
                        if t > -1 / t:
                            revert with 0, 17
                        if not bool(idx):
                            t = t * t
                            u = u
                            idx = uint255(idx) * 0.5
                            continue 
                        t = t * t
                        u = t * u
                        idx = uint255(idx) * 0.5
                        continue 
                    if u > -1 / t:
                        revert with 0, 17
                    if cd[4] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if s < 2 * cd[4]:
                        revert with 0, 17
                    if s - (2 * cd[4]) and t * u > -1 / s - (2 * cd[4]):
                        revert with 0, 17
                    if not 2 * cd[36]:
                        revert with 0, 18
                    return ((s * t * u) - (2 * cd[4] * t * u) / 2 * cd[36])
                if bool(bool(cd[4] < 11)) or bool(bool(cd[4] < 307)):
                    if cd[4]^2 > 0x3fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 4 * cd[4]^2 > !(8 * cd[36] * cd[68]):
                        revert with 0, 17
                    if 1 > !((4 * cd[4]^2) + (8 * cd[36] * cd[68])):
                        revert with 0, 17
                    s = (4 * cd[4]^2) + (8 * cd[36] * cd[68])
                    t = (4 * cd[4]^2) + (8 * cd[36] * cd[68]) + 1 / 2
                    while t < s:
                        if not t:
                            revert with 0, 18
                        if (4 * cd[4]^2) + (8 * cd[36] * cd[68]) / t > !t:
                            revert with 0, 17
                        s = t
                        t = ((4 * cd[4]^2) + (8 * cd[36] * cd[68]) / t) + t / 2
                        continue 
                    if cd[4] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if s <= 2 * cd[4]:
                        return 0
                    if cd[36] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if not cd[100]:
                        if cd[4] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if s < 2 * cd[4]:
                            revert with 0, 17
                        if s - (2 * cd[4]) and 1 > -1 / s - (2 * cd[4]):
                            revert with 0, 17
                        if not 2 * cd[36]:
                            revert with 0, 18
                        return (s - (2 * cd[4]) / 2 * cd[36])
                    if bool(bool(cd[100] < 78)) or bool(bool(cd[100] < 32)):
                        if cd[4] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if s < 2 * cd[4]:
                            revert with 0, 17
                        if s - (2 * cd[4]) and 10^cd[100] > -1 / s - (2 * cd[4]):
                            revert with 0, 17
                        if not 2 * cd[36]:
                            revert with 0, 18
                        return ((s * 10^cd[100]) - (2 * cd[4] * 10^cd[100]) / 2 * cd[36])
                    t = 10
                    u = 1
                    idx = cd[100]
                    while idx > 1:
                        if t > -1 / t:
                            revert with 0, 17
                        if not bool(idx):
                            t = t * t
                            u = u
                            idx = uint255(idx) * 0.5
                            continue 
                        t = t * t
                        u = t * u
                        idx = uint255(idx) * 0.5
                        continue 
                    if u > -1 / t:
                        revert with 0, 17
                    if cd[4] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if s < 2 * cd[4]:
                        revert with 0, 17
                    if s - (2 * cd[4]) and t * u > -1 / s - (2 * cd[4]):
                        revert with 0, 17
                    if not 2 * cd[36]:
                        revert with 0, 18
                    return ((s * t * u) - (2 * cd[4] * t * u) / 2 * cd[36])
                s = cd[4]
                idx = 2
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    s = s * s
                    idx = uint255(idx) * 0.5
                    continue 
                if 1 > -1 / s:
                    revert with 0, 17
                if s > 0x3fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 4 * s > !(8 * cd[36] * cd[68]):
                    revert with 0, 17
                if 1 > !((4 * s) + (8 * cd[36] * cd[68])):
                    revert with 0, 17
                t = (4 * s) + (8 * cd[36] * cd[68])
                u = (4 * s) + (8 * cd[36] * cd[68]) + 1 / 2
                while u < t:
                    if not u:
                        revert with 0, 18
                    if (4 * s) + (8 * cd[36] * cd[68]) / u > !u:
                        revert with 0, 17
                    t = u
                    u = ((4 * s) + (8 * cd[36] * cd[68]) / u) + u / 2
                    continue 
                if cd[4] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if t <= 2 * cd[4]:
                    return 0
                if cd[36] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if not cd[100]:
                    if cd[4] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if t < 2 * cd[4]:
                        revert with 0, 17
                    if t - (2 * cd[4]) and 1 > -1 / t - (2 * cd[4]):
                        revert with 0, 17
                    if not 2 * cd[36]:
                        revert with 0, 18
                    return (t - (2 * cd[4]) / 2 * cd[36])
                if bool(bool(cd[100] < 78)) or bool(bool(cd[100] < 32)):
                    if cd[4] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if t < 2 * cd[4]:
                        revert with 0, 17
                    if t - (2 * cd[4]) and 10^cd[100] > -1 / t - (2 * cd[4]):
                        revert with 0, 17
                    if not 2 * cd[36]:
                        revert with 0, 18
                    return ((t * 10^cd[100]) - (2 * cd[4] * 10^cd[100]) / 2 * cd[36])
                s = 10
                u = 1
                idx = cd[100]
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        u = u
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    u = s * u
                    idx = uint255(idx) * 0.5
                    continue 
                if u > -1 / s:
                    revert with 0, 17
                if cd[4] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if t < 2 * cd[4]:
                    revert with 0, 17
                if t - (2 * cd[4]) and s * u > -1 / t - (2 * cd[4]):
                    revert with 0, 17
                if not 2 * cd[36]:
                    revert with 0, 18
                return ((t * s * u) - (2 * cd[4] * s * u) / 2 * cd[36])
            if unknown_0x01b478f5(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require cd[4] == address(cd[4])
                require cd[36] == address(cd[36])
                require stor8[msg.sender]
                sub_76aa6d62Address = address(cd[4])
                sub_47a3a62aAddress = address(cd[36])
            if uint32(call.func_hash) >> 224 != unknown_0x1a788a02(?????):
                if unknown_0x3527c83e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    require cd[36] == bool(cd[36])
                    require stor8[msg.sender]
                    stor8[address(cd[4])] = uint8(bool(cd[36]))
                else:
                    if unknown_0x44276733(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        return bool(stor8[address(cd[4])])
                    if unknown_0x47a3a62a(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_47a3a62aAddress
                    require unknown_0x56688700(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    call address(cd[4]).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, cd[36]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require not msg.value
            require calldata.size - 4 >= 32
            require cd[4] == address(cd[4])
            staticcall address(cd[4]).0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(return_data.size) + 580] = msg.sender
            mem[ceil32(return_data.size) + 612] = this.address
            staticcall address(cd[4]).allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args msg.sender, this.address
            mem[ceil32(return_data.size) + 576] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(2 * ceil32(return_data.size)) + 580] = msg.sender
            staticcall sub_d483a2aaAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[(2 * ceil32(return_data.size)) + 576] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(4 * ceil32(return_data.size)) + 580] = msg.sender
            mem[(4 * ceil32(return_data.size)) + 612] = this.address
            staticcall sub_d483a2aaAddress.allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args msg.sender, this.address
            mem[(4 * ceil32(return_data.size)) + 576] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(6 * ceil32(return_data.size)) + 580] = this.address
            staticcall address(cd[4]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = (7 * ceil32(return_data.size)) + 576
            s = 0
            while (7 * ceil32(return_data.size)) + 768 > idx + 32:
                mem[idx + 32] = stor7[address(cd[4])][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            return mem[(7 * ceil32(return_data.size)) + 608 len 160] >> 1280, 
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0]
        if unknown_0xc4db6be5(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x76aa6d62(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return sub_76aa6d62Address
            if uint32(call.func_hash) >> 224 != unknown_0x8325aca9(?????):
                if unknown_0xa7a84e3b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    require stor8[msg.sender]
                    require cd[36] <= 10000
                    stor7[address(cd[4])].field_1280 = cd[36]
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0xae39279f(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0xb42f4331(?????):
                            require unknown_0xbf47553e(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            return sub_bf47553e
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[4] == address(cd[4])
                        if not stor7[address(cd[4])].field_768:
                            if cd[36] and stor7[address(cd[4])].field_256 > -1 / cd[36]:
                                revert with 0, 17
                            return (cd[36] * stor7[address(cd[4])].field_256)
                        if bool(bool(stor7[address(cd[4])].field_768 < 78)) or bool(bool(stor7[address(cd[4])].field_768 < 32)):
                            if cd[36] and stor7[address(cd[4])].field_256 > -1 / cd[36]:
                                revert with 0, 17
                            if not 10^stor7[address(cd[4])].field_768:
                                revert with 0, 18
                            return (cd[36] * stor7[address(cd[4])].field_256 / 10^stor7[address(cd[4])].field_768)
                        s = 10
                        t = 1
                        idx = stor7[address(cd[4])].field_768
                        while idx > 1:
                            if s > -1 / s:
                                revert with 0, 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = s * t
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 0, 17
                        if cd[36] and stor7[address(cd[4])].field_256 > -1 / cd[36]:
                            revert with 0, 17
                        if not s * t:
                            revert with 0, 18
                        return (cd[36] * stor7[address(cd[4])].field_256 / s * t)
                    require not msg.value
                    if sub_61f8967c > 0x1111111111111111111111111111111111111111111111111111111111111111:
                        revert with 0, 17
                    call sub_d483a2aaAddress.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_76aa6d62Address, 15 * sub_61f8967c / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if sub_61f8967c > 0x303030303030303030303030303030303030303030303030303030303030303:
                        revert with 0, 17
                    call sub_d483a2aaAddress.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_47a3a62aAddress, 85 * sub_61f8967c / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    sub_61f8967c = 0
            require not msg.value
            require calldata.size - 4 >= 96
            require cd[4] == address(cd[4])
            if not stor7[address(cd[4])].field_768:
                if cd[36] and stor7[address(cd[4])].field_256 > -1 / cd[36]:
                    revert with 0, 17
                if cd[68] != 1:
                    if stor7[address(cd[4])].field_0 > !(cd[36] * stor7[address(cd[4])].field_256 / 2):
                        revert with 0, 17
                    if not stor7[address(cd[4])].field_768:
                        if cd[36] and stor7[address(cd[4])].field_0 + (cd[36] * stor7[address(cd[4])].field_256 / 2) > -1 / cd[36]:
                            revert with 0, 17
                        return (stor7[address(cd[4])].field_0 * cd[36]) + (cd[36] * stor7[address(cd[4])].field_256 / 2 * cd[36]), 
                               cd[36] * stor7[address(cd[4])].field_256
                    if bool(bool(stor7[address(cd[4])].field_768 < 78)) or bool(bool(stor7[address(cd[4])].field_768 < 32)):
                        if cd[36] and stor7[address(cd[4])].field_0 + (cd[36] * stor7[address(cd[4])].field_256 / 2) > -1 / cd[36]:
                            revert with 0, 17
                        if not 10^stor7[address(cd[4])].field_768:
                            revert with 0, 18
                        return (stor7[address(cd[4])].field_0 * cd[36]) + (cd[36] * stor7[address(cd[4])].field_256 / 2 * cd[36]) / 10^stor7[address(cd[4])].field_768, 
                               cd[36] * stor7[address(cd[4])].field_256
                    s = 10
                    t = 1
                    idx = stor7[address(cd[4])].field_768
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if cd[36] and stor7[address(cd[4])].field_0 + (cd[36] * stor7[address(cd[4])].field_256 / 2) > -1 / cd[36]:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    return (stor7[address(cd[4])].field_0 * cd[36]) + (cd[36] * stor7[address(cd[4])].field_256 / 2 * cd[36]) / s * t, 
                           cd[36] * stor7[address(cd[4])].field_256
                if stor7[address(cd[4])].field_0 < cd[36] * stor7[address(cd[4])].field_256 / 2:
                    revert with 0, 17
                if not stor7[address(cd[4])].field_768:
                    if cd[36] and stor7[address(cd[4])].field_0 - (cd[36] * stor7[address(cd[4])].field_256 / 2) > -1 / cd[36]:
                        revert with 0, 17
                    return (stor7[address(cd[4])].field_0 * cd[36]) - (cd[36] * stor7[address(cd[4])].field_256 / 2 * cd[36]), 
                           cd[36] * stor7[address(cd[4])].field_256
                if bool(bool(stor7[address(cd[4])].field_768 < 78)) or bool(bool(stor7[address(cd[4])].field_768 < 32)):
                    if cd[36] and stor7[address(cd[4])].field_0 - (cd[36] * stor7[address(cd[4])].field_256 / 2) > -1 / cd[36]:
                        revert with 0, 17
                    if not 10^stor7[address(cd[4])].field_768:
                        revert with 0, 18
                    return (stor7[address(cd[4])].field_0 * cd[36]) - (cd[36] * stor7[address(cd[4])].field_256 / 2 * cd[36]) / 10^stor7[address(cd[4])].field_768, 
                           cd[36] * stor7[address(cd[4])].field_256
                s = 10
                t = 1
                idx = stor7[address(cd[4])].field_768
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if cd[36] and stor7[address(cd[4])].field_0 - (cd[36] * stor7[address(cd[4])].field_256 / 2) > -1 / cd[36]:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                return (stor7[address(cd[4])].field_0 * cd[36]) - (cd[36] * stor7[address(cd[4])].field_256 / 2 * cd[36]) / s * t, 
                       cd[36] * stor7[address(cd[4])].field_256
            if bool(bool(stor7[address(cd[4])].field_768 < 78)) or bool(bool(stor7[address(cd[4])].field_768 < 32)):
                if cd[36] and stor7[address(cd[4])].field_256 > -1 / cd[36]:
                    revert with 0, 17
                if not 10^stor7[address(cd[4])].field_768:
                    revert with 0, 18
                if cd[68] != 1:
                    if stor7[address(cd[4])].field_0 > !(cd[36] * stor7[address(cd[4])].field_256 / 10^stor7[address(cd[4])].field_768 / 2):
                        revert with 0, 17
                    if not stor7[address(cd[4])].field_768:
                        if cd[36] and stor7[address(cd[4])].field_0 + (cd[36] * stor7[address(cd[4])].field_256 / 10^stor7[address(cd[4])].field_768 / 2) > -1 / cd[36]:
                            revert with 0, 17
                        return (stor7[address(cd[4])].field_0 * cd[36]) + (cd[36] * stor7[address(cd[4])].field_256 / 10^stor7[address(cd[4])].field_768 / 2 * cd[36]), 
                               cd[36] * stor7[address(cd[4])].field_256 / 10^stor7[address(cd[4])].field_768
                    if bool(bool(stor7[address(cd[4])].field_768 < 78)) or bool(bool(stor7[address(cd[4])].field_768 < 32)):
                        if cd[36] and stor7[address(cd[4])].field_0 + (cd[36] * stor7[address(cd[4])].field_256 / 10^stor7[address(cd[4])].field_768 / 2) > -1 / cd[36]:
                            revert with 0, 17
                        if not 10^stor7[address(cd[4])].field_768:
                            revert with 0, 18
                        return (stor7[address(cd[4])].field_0 * cd[36]) + (cd[36] * stor7[address(cd[4])].field_256 / 10^stor7[address(cd[4])].field_768 / 2 * cd[36]) / 10^stor7[address(cd[4])].field_768, 
                               cd[36] * stor7[address(cd[4])].field_256 / 10^stor7[address(cd[4])].field_768
                    s = 10
                    t = 1
                    idx = stor7[address(cd[4])].field_768
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if cd[36] and stor7[address(cd[4])].field_0 + (cd[36] * stor7[address(cd[4])].field_256 / 10^stor7[address(cd[4])].field_768 / 2) > -1 / cd[36]:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    return (stor7[address(cd[4])].field_0 * cd[36]) + (cd[36] * stor7[address(cd[4])].field_256 / 10^stor7[address(cd[4])].field_768 / 2 * cd[36]) / s * t, 
                           cd[36] * stor7[address(cd[4])].field_256 / 10^stor7[address(cd[4])].field_768
                if stor7[address(cd[4])].field_0 < cd[36] * stor7[address(cd[4])].field_256 / 10^stor7[address(cd[4])].field_768 / 2:
                    revert with 0, 17
                if not stor7[address(cd[4])].field_768:
                    if cd[36] and stor7[address(cd[4])].field_0 - (cd[36] * stor7[address(cd[4])].field_256 / 10^stor7[address(cd[4])].field_768 / 2) > -1 / cd[36]:
                        revert with 0, 17
                    return (stor7[address(cd[4])].field_0 * cd[36]) - (cd[36] * stor7[address(cd[4])].field_256 / 10^stor7[address(cd[4])].field_768 / 2 * cd[36]), 
                           cd[36] * stor7[address(cd[4])].field_256 / 10^stor7[address(cd[4])].field_768
                if bool(bool(stor7[address(cd[4])].field_768 < 78)) or bool(bool(stor7[address(cd[4])].field_768 < 32)):
                    if cd[36] and stor7[address(cd[4])].field_0 - (cd[36] * stor7[address(cd[4])].field_256 / 10^stor7[address(cd[4])].field_768 / 2) > -1 / cd[36]:
                        revert with 0, 17
                    if not 10^stor7[address(cd[4])].field_768:
                        revert with 0, 18
                    return (stor7[address(cd[4])].field_0 * cd[36]) - (cd[36] * stor7[address(cd[4])].field_256 / 10^stor7[address(cd[4])].field_768 / 2 * cd[36]) / 10^stor7[address(cd[4])].field_768, 
                           cd[36] * stor7[address(cd[4])].field_256 / 10^stor7[address(cd[4])].field_768
                s = 10
                t = 1
                idx = stor7[address(cd[4])].field_768
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if cd[36] and stor7[address(cd[4])].field_0 - (cd[36] * stor7[address(cd[4])].field_256 / 10^stor7[address(cd[4])].field_768 / 2) > -1 / cd[36]:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                return (stor7[address(cd[4])].field_0 * cd[36]) - (cd[36] * stor7[address(cd[4])].field_256 / 10^stor7[address(cd[4])].field_768 / 2 * cd[36]) / s * t, 
                       cd[36] * stor7[address(cd[4])].field_256 / 10^stor7[address(cd[4])].field_768
            s = 10
            t = 1
            idx = stor7[address(cd[4])].field_768
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if cd[36] and stor7[address(cd[4])].field_256 > -1 / cd[36]:
                revert with 0, 17
            if not s * t:
                revert with 0, 18
            if cd[68] != 1:
                if stor7[address(cd[4])].field_0 > !(cd[36] * stor7[address(cd[4])].field_256 / s * t / 2):
                    revert with 0, 17
                if not stor7[address(cd[4])].field_768:
                    if cd[36] and stor7[address(cd[4])].field_0 + (cd[36] * stor7[address(cd[4])].field_256 / s * t / 2) > -1 / cd[36]:
                        revert with 0, 17
                    return (stor7[address(cd[4])].field_0 * cd[36]) + (cd[36] * stor7[address(cd[4])].field_256 / s * t / 2 * cd[36]), 
                           cd[36] * stor7[address(cd[4])].field_256 / s * t
                if bool(bool(stor7[address(cd[4])].field_768 < 78)) or bool(bool(stor7[address(cd[4])].field_768 < 32)):
                    if cd[36] and stor7[address(cd[4])].field_0 + (cd[36] * stor7[address(cd[4])].field_256 / s * t / 2) > -1 / cd[36]:
                        revert with 0, 17
                    if not 10^stor7[address(cd[4])].field_768:
                        revert with 0, 18
                    return (stor7[address(cd[4])].field_0 * cd[36]) + (cd[36] * stor7[address(cd[4])].field_256 / s * t / 2 * cd[36]) / 10^stor7[address(cd[4])].field_768, 
                           cd[36] * stor7[address(cd[4])].field_256 / s * t
                u = 10
                v = 1
                idx = stor7[address(cd[4])].field_768
                while idx > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(idx):
                        u = u * u
                        v = v
                        idx = uint255(idx) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    idx = uint255(idx) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if cd[36] and stor7[address(cd[4])].field_0 + (cd[36] * stor7[address(cd[4])].field_256 / s * t / 2) > -1 / cd[36]:
                    revert with 0, 17
                if not u * v:
                    revert with 0, 18
                return (stor7[address(cd[4])].field_0 * cd[36]) + (cd[36] * stor7[address(cd[4])].field_256 / s * t / 2 * cd[36]) / u * v, 
                       cd[36] * stor7[address(cd[4])].field_256 / s * t
            if stor7[address(cd[4])].field_0 < cd[36] * stor7[address(cd[4])].field_256 / s * t / 2:
                revert with 0, 17
            if not stor7[address(cd[4])].field_768:
                if cd[36] and stor7[address(cd[4])].field_0 - (cd[36] * stor7[address(cd[4])].field_256 / s * t / 2) > -1 / cd[36]:
                    revert with 0, 17
                return (stor7[address(cd[4])].field_0 * cd[36]) - (cd[36] * stor7[address(cd[4])].field_256 / s * t / 2 * cd[36]), 
                       cd[36] * stor7[address(cd[4])].field_256 / s * t
            if bool(bool(stor7[address(cd[4])].field_768 < 78)) or bool(bool(stor7[address(cd[4])].field_768 < 32)):
                if cd[36] and stor7[address(cd[4])].field_0 - (cd[36] * stor7[address(cd[4])].field_256 / s * t / 2) > -1 / cd[36]:
                    revert with 0, 17
                if not 10^stor7[address(cd[4])].field_768:
                    revert with 0, 18
                return (stor7[address(cd[4])].field_0 * cd[36]) - (cd[36] * stor7[address(cd[4])].field_256 / s * t / 2 * cd[36]) / 10^stor7[address(cd[4])].field_768, 
                       cd[36] * stor7[address(cd[4])].field_256 / s * t
            u = 10
            v = 1
            idx = stor7[address(cd[4])].field_768
            while idx > 1:
                if u > -1 / u:
                    revert with 0, 17
                if not bool(idx):
                    u = u * u
                    v = v
                    idx = uint255(idx) * 0.5
                    continue 
                u = u * u
                v = u * v
                idx = uint255(idx) * 0.5
                continue 
            if v > -1 / u:
                revert with 0, 17
            if cd[36] and stor7[address(cd[4])].field_0 - (cd[36] * stor7[address(cd[4])].field_256 / s * t / 2) > -1 / cd[36]:
                revert with 0, 17
            if not u * v:
                revert with 0, 18
            return (stor7[address(cd[4])].field_0 * cd[36]) - (cd[36] * stor7[address(cd[4])].field_256 / s * t / 2 * cd[36]) / u * v, 
                   cd[36] * stor7[address(cd[4])].field_256 / s * t
        if unknown_0xde3047ba(?????) > uint32(call.func_hash) >> 224:
            if unknown_0xc4db6be5(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require stor8[msg.sender]
                require cd[4] <= 10000
                sub_701c580c = cd[4]
            else:
                if unknown_0xd483a2aa(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_d483a2aaAddress
                require unknown_0xdbdc2311(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require stor8[msg.sender]
                sub_bf47553e = cd[4]
        else:
            if unknown_0xde3047ba(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return maxfee
            if uint32(call.func_hash) >> 224 != unknown_0xdf791e50(?????):
                if uint32(call.func_hash) >> 224 != unknown_0xe0895e5f(?????):
                    require unknown_0xf28f404b(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    require stor8[msg.sender]
                    sub_d483a2aaAddress = address(cd[4])
                else:
                    require not msg.value
                    require calldata.size - 4 >= 224
                    require cd[4] == address(cd[4])
                    require 67 < calldata.size
                    require 228 <= calldata.size
                    idx = 36
                    s = 128
                    while idx < 228:
                        mem[s] = cd[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    require stor8[msg.sender]
                    s = 0
                    idx = 128
                    while 320 > idx:
                        stor7[address(cd[4])][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 6
                    while 6 > idx:
                        stor7[address(cd[4])][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                require calldata.size - 4 >= 96
                require cd[4] == address(cd[4])
                require cd[36] == address(cd[36])
                if sub_d483a2aaAddress != address(cd[4]):
                    if sub_d483a2aaAddress == address(cd[36]):
                        require stor7[address(cd[4])].field_1024 < block.timestamp
                        require stor7[address(cd[4])].field_0
                        call address(cd[4]).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, cd[68]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if 10000 < stor7[address(cd[4])].field_1280:
                            revert with 0, 17
                        if cd[68] and -stor7[address(cd[4])].field_1280 + 10000 > -1 / cd[68]:
                            revert with 0, 17
                        if not stor7[address(cd[4])].field_768:
                            if (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 and stor7[address(cd[4])].field_256 > -1 / (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000:
                                revert with 0, 17
                            if stor7[address(cd[4])].field_0 < (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 2:
                                revert with 0, 17
                            if not stor7[address(cd[4])].field_768:
                                if (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 and stor7[address(cd[4])].field_0 - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 2) > -1 / (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000:
                                    revert with 0, 17
                                if stor7[address(cd[4])].field_0 < (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256:
                                    revert with 0, 17
                                stor7[address(cd[4])].field_0 += -1 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256
                                require stor7[address(cd[4])].field_0 >= stor7[address(cd[4])].field_512
                                if (stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) and sub_bf47553e > -1 / (stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000):
                                    revert with 0, 17
                                if sub_61f8967c > !((stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * sub_bf47553e) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * sub_bf47553e) / 10000):
                                    revert with 0, 17
                                sub_61f8967c += (stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * sub_bf47553e) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * sub_bf47553e) / 10000
                                if (stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) < (stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * sub_bf47553e) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * sub_bf47553e) / 10000:
                                    revert with 0, 17
                                call sub_d483a2aaAddress.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, (stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * sub_bf47553e) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * sub_bf47553e) / 10000)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                emit Swap((stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000), stor7[address(cd[4])].field_0, stor7[address(cd[4])].field_0, address(cd[4]), address(cd[36]));
                            else:
                                if bool(bool(stor7[address(cd[4])].field_768 < 78)) or bool(bool(stor7[address(cd[4])].field_768 < 32)):
                                    if (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 and stor7[address(cd[4])].field_0 - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 2) > -1 / (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000:
                                        revert with 0, 17
                                    if not 10^stor7[address(cd[4])].field_768:
                                        revert with 0, 18
                                    if stor7[address(cd[4])].field_0 < (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256:
                                        revert with 0, 17
                                    stor7[address(cd[4])].field_0 += -1 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256
                                    require stor7[address(cd[4])].field_0 >= stor7[address(cd[4])].field_512
                                    if (stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) / 10^stor7[address(cd[4])].field_768 and sub_bf47553e > -1 / (stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) / 10^stor7[address(cd[4])].field_768:
                                        revert with 0, 17
                                    if sub_61f8967c > !((stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) / 10^stor7[address(cd[4])].field_768 * sub_bf47553e / 10000):
                                        revert with 0, 17
                                    sub_61f8967c += (stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) / 10^stor7[address(cd[4])].field_768 * sub_bf47553e / 10000
                                    if (stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) / 10^stor7[address(cd[4])].field_768 < (stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) / 10^stor7[address(cd[4])].field_768 * sub_bf47553e / 10000:
                                        revert with 0, 17
                                    call sub_d483a2aaAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, ((stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) / 10^stor7[address(cd[4])].field_768) - ((stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) / 10^stor7[address(cd[4])].field_768 * sub_bf47553e / 10000)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    emit Swap((stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) / 10^stor7[address(cd[4])].field_768, stor7[address(cd[4])].field_0, stor7[address(cd[4])].field_0, address(cd[4]), address(cd[36]));
                                else:
                                    s = 10
                                    t = 1
                                    idx = stor7[address(cd[4])].field_768
                                    while idx > 1:
                                        if s > -1 / s:
                                            revert with 0, 17
                                        if not bool(idx):
                                            s = s * s
                                            t = t
                                            idx = uint255(idx) * 0.5
                                            continue 
                                        s = s * s
                                        t = s * t
                                        idx = uint255(idx) * 0.5
                                        continue 
                                    if t > -1 / s:
                                        revert with 0, 17
                                    if (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 and stor7[address(cd[4])].field_0 - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 2) > -1 / (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000:
                                        revert with 0, 17
                                    if not s * t:
                                        revert with 0, 18
                                    if stor7[address(cd[4])].field_0 < (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256:
                                        revert with 0, 17
                                    stor7[address(cd[4])].field_0 += -1 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256
                                    require stor7[address(cd[4])].field_0 >= stor7[address(cd[4])].field_512
                                    if (stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) / s * t and sub_bf47553e > -1 / (stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) / s * t:
                                        revert with 0, 17
                                    if sub_61f8967c > !((stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) / s * t * sub_bf47553e / 10000):
                                        revert with 0, 17
                                    sub_61f8967c += (stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) / s * t * sub_bf47553e / 10000
                                    if (stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) / s * t < (stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) / s * t * sub_bf47553e / 10000:
                                        revert with 0, 17
                                    call sub_d483a2aaAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, ((stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) / s * t) - ((stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) / s * t * sub_bf47553e / 10000)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    emit Swap((stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) / s * t, stor7[address(cd[4])].field_0, stor7[address(cd[4])].field_0, address(cd[4]), address(cd[36]));
                        else:
                            if bool(bool(stor7[address(cd[4])].field_768 < 78)) or bool(bool(stor7[address(cd[4])].field_768 < 32)):
                                if (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 and stor7[address(cd[4])].field_256 > -1 / (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000:
                                    revert with 0, 17
                                if not 10^stor7[address(cd[4])].field_768:
                                    revert with 0, 18
                                if stor7[address(cd[4])].field_0 < (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 10^stor7[address(cd[4])].field_768 / 2:
                                    revert with 0, 17
                                if not stor7[address(cd[4])].field_768:
                                    if (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 and stor7[address(cd[4])].field_0 - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 10^stor7[address(cd[4])].field_768 / 2) > -1 / (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000:
                                        revert with 0, 17
                                    if stor7[address(cd[4])].field_0 < (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 10^stor7[address(cd[4])].field_768:
                                        revert with 0, 17
                                    stor7[address(cd[4])].field_0 -= (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 10^stor7[address(cd[4])].field_768
                                    require stor7[address(cd[4])].field_0 >= stor7[address(cd[4])].field_512
                                    if (stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 10^stor7[address(cd[4])].field_768 / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) and sub_bf47553e > -1 / (stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 10^stor7[address(cd[4])].field_768 / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000):
                                        revert with 0, 17
                                    if sub_61f8967c > !((stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * sub_bf47553e) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 10^stor7[address(cd[4])].field_768 / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * sub_bf47553e) / 10000):
                                        revert with 0, 17
                                    sub_61f8967c += (stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * sub_bf47553e) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 10^stor7[address(cd[4])].field_768 / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * sub_bf47553e) / 10000
                                    if (stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 10^stor7[address(cd[4])].field_768 / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) < (stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * sub_bf47553e) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 10^stor7[address(cd[4])].field_768 / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * sub_bf47553e) / 10000:
                                        revert with 0, 17
                                    call sub_d483a2aaAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, (stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 10^stor7[address(cd[4])].field_768 / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * sub_bf47553e) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 10^stor7[address(cd[4])].field_768 / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * sub_bf47553e) / 10000)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    emit Swap((stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 10^stor7[address(cd[4])].field_768 / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000), stor7[address(cd[4])].field_0, stor7[address(cd[4])].field_0, address(cd[4]), address(cd[36]));
                                else:
                                    if bool(bool(stor7[address(cd[4])].field_768 < 78)) or bool(bool(stor7[address(cd[4])].field_768 < 32)):
                                        if (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 and stor7[address(cd[4])].field_0 - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 10^stor7[address(cd[4])].field_768 / 2) > -1 / (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000:
                                            revert with 0, 17
                                        if not 10^stor7[address(cd[4])].field_768:
                                            revert with 0, 18
                                        if stor7[address(cd[4])].field_0 < (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 10^stor7[address(cd[4])].field_768:
                                            revert with 0, 17
                                        stor7[address(cd[4])].field_0 -= (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 10^stor7[address(cd[4])].field_768
                                        require stor7[address(cd[4])].field_0 >= stor7[address(cd[4])].field_512
                                        if (stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 10^stor7[address(cd[4])].field_768 / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) / 10^stor7[address(cd[4])].field_768 and sub_bf47553e > -1 / (stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 10^stor7[address(cd[4])].field_768 / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) / 10^stor7[address(cd[4])].field_768:
                                            revert with 0, 17
                                        if sub_61f8967c > !((stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 10^stor7[address(cd[4])].field_768 / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) / 10^stor7[address(cd[4])].field_768 * sub_bf47553e / 10000):
                                            revert with 0, 17
                                        sub_61f8967c += (stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 10^stor7[address(cd[4])].field_768 / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) / 10^stor7[address(cd[4])].field_768 * sub_bf47553e / 10000
                                        if (stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 10^stor7[address(cd[4])].field_768 / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) / 10^stor7[address(cd[4])].field_768 < (stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 10^stor7[address(cd[4])].field_768 / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) / 10^stor7[address(cd[4])].field_768 * sub_bf47553e / 10000:
                                            revert with 0, 17
                                        call sub_d483a2aaAddress.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, ((stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 10^stor7[address(cd[4])].field_768 / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) / 10^stor7[address(cd[4])].field_768) - ((stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 10^stor7[address(cd[4])].field_768 / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) / 10^stor7[address(cd[4])].field_768 * sub_bf47553e / 10000)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        emit Swap((stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 10^stor7[address(cd[4])].field_768 / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) / 10^stor7[address(cd[4])].field_768, stor7[address(cd[4])].field_0, stor7[address(cd[4])].field_0, address(cd[4]), address(cd[36]));
                                    else:
                                        s = 10
                                        t = 1
                                        idx = stor7[address(cd[4])].field_768
                                        while idx > 1:
                                            if s > -1 / s:
                                                revert with 0, 17
                                            if not bool(idx):
                                                s = s * s
                                                t = t
                                                idx = uint255(idx) * 0.5
                                                continue 
                                            s = s * s
                                            t = s * t
                                            idx = uint255(idx) * 0.5
                                            continue 
                                        if t > -1 / s:
                                            revert with 0, 17
                                        if (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 and stor7[address(cd[4])].field_0 - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 10^stor7[address(cd[4])].field_768 / 2) > -1 / (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000:
                                            revert with 0, 17
                                        if not s * t:
                                            revert with 0, 18
                                        if stor7[address(cd[4])].field_0 < (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 10^stor7[address(cd[4])].field_768:
                                            revert with 0, 17
                                        stor7[address(cd[4])].field_0 -= (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 10^stor7[address(cd[4])].field_768
                                        require stor7[address(cd[4])].field_0 >= stor7[address(cd[4])].field_512
                                        if (stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 10^stor7[address(cd[4])].field_768 / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) / s * t and sub_bf47553e > -1 / (stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 10^stor7[address(cd[4])].field_768 / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) / s * t:
                                            revert with 0, 17
                                        if sub_61f8967c > !((stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 10^stor7[address(cd[4])].field_768 / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) / s * t * sub_bf47553e / 10000):
                                            revert with 0, 17
                                        sub_61f8967c += (stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 10^stor7[address(cd[4])].field_768 / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) / s * t * sub_bf47553e / 10000
                                        if (stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 10^stor7[address(cd[4])].field_768 / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) / s * t < (stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 10^stor7[address(cd[4])].field_768 / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) / s * t * sub_bf47553e / 10000:
                                            revert with 0, 17
                                        call sub_d483a2aaAddress.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, ((stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 10^stor7[address(cd[4])].field_768 / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) / s * t) - ((stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 10^stor7[address(cd[4])].field_768 / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) / s * t * sub_bf47553e / 10000)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        emit Swap((stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / 10^stor7[address(cd[4])].field_768 / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) / s * t, stor7[address(cd[4])].field_0, stor7[address(cd[4])].field_0, address(cd[4]), address(cd[36]));
                            else:
                                s = 10
                                t = 1
                                idx = stor7[address(cd[4])].field_768
                                while idx > 1:
                                    if s > -1 / s:
                                        revert with 0, 17
                                    if not bool(idx):
                                        s = s * s
                                        t = t
                                        idx = uint255(idx) * 0.5
                                        continue 
                                    s = s * s
                                    t = s * t
                                    idx = uint255(idx) * 0.5
                                    continue 
                                if t > -1 / s:
                                    revert with 0, 17
                                if (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 and stor7[address(cd[4])].field_256 > -1 / (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000:
                                    revert with 0, 17
                                if not s * t:
                                    revert with 0, 18
                                if stor7[address(cd[4])].field_0 < (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / s * t / 2:
                                    revert with 0, 17
                                if not stor7[address(cd[4])].field_768:
                                    if (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 and stor7[address(cd[4])].field_0 - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / s * t / 2) > -1 / (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000:
                                        revert with 0, 17
                                    if stor7[address(cd[4])].field_0 < (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / s * t:
                                        revert with 0, 17
                                    stor7[address(cd[4])].field_0 -= (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / s * t
                                    require stor7[address(cd[4])].field_0 >= stor7[address(cd[4])].field_512
                                    if (stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / s * t / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) and sub_bf47553e > -1 / (stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / s * t / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000):
                                        revert with 0, 17
                                    if sub_61f8967c > !((stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * sub_bf47553e) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / s * t / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * sub_bf47553e) / 10000):
                                        revert with 0, 17
                                    sub_61f8967c += (stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * sub_bf47553e) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / s * t / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * sub_bf47553e) / 10000
                                    if (stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / s * t / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) < (stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * sub_bf47553e) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / s * t / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * sub_bf47553e) / 10000:
                                        revert with 0, 17
                                    call sub_d483a2aaAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, (stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / s * t / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * sub_bf47553e) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / s * t / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * sub_bf47553e) / 10000)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    emit Swap((stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / s * t / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000), stor7[address(cd[4])].field_0, stor7[address(cd[4])].field_0, address(cd[4]), address(cd[36]));
                                else:
                                    if bool(bool(stor7[address(cd[4])].field_768 < 78)) or bool(bool(stor7[address(cd[4])].field_768 < 32)):
                                        if (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 and stor7[address(cd[4])].field_0 - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / s * t / 2) > -1 / (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000:
                                            revert with 0, 17
                                        if not 10^stor7[address(cd[4])].field_768:
                                            revert with 0, 18
                                        if stor7[address(cd[4])].field_0 < (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / s * t:
                                            revert with 0, 17
                                        stor7[address(cd[4])].field_0 -= (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / s * t
                                        require stor7[address(cd[4])].field_0 >= stor7[address(cd[4])].field_512
                                        if (stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / s * t / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) / 10^stor7[address(cd[4])].field_768 and sub_bf47553e > -1 / (stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / s * t / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) / 10^stor7[address(cd[4])].field_768:
                                            revert with 0, 17
                                        if sub_61f8967c > !((stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / s * t / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) / 10^stor7[address(cd[4])].field_768 * sub_bf47553e / 10000):
                                            revert with 0, 17
                                        sub_61f8967c += (stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / s * t / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) / 10^stor7[address(cd[4])].field_768 * sub_bf47553e / 10000
                                        if (stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / s * t / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) / 10^stor7[address(cd[4])].field_768 < (stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / s * t / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) / 10^stor7[address(cd[4])].field_768 * sub_bf47553e / 10000:
                                            revert with 0, 17
                                        call sub_d483a2aaAddress.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, ((stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / s * t / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) / 10^stor7[address(cd[4])].field_768) - ((stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / s * t / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) / 10^stor7[address(cd[4])].field_768 * sub_bf47553e / 10000)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        emit Swap((stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / s * t / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) / 10^stor7[address(cd[4])].field_768, stor7[address(cd[4])].field_0, stor7[address(cd[4])].field_0, address(cd[4]), address(cd[36]));
                                    else:
                                        u = 10
                                        v = 1
                                        idx = stor7[address(cd[4])].field_768
                                        while idx > 1:
                                            if u > -1 / u:
                                                revert with 0, 17
                                            if not bool(idx):
                                                u = u * u
                                                v = v
                                                idx = uint255(idx) * 0.5
                                                continue 
                                            u = u * u
                                            v = u * v
                                            idx = uint255(idx) * 0.5
                                            continue 
                                        if v > -1 / u:
                                            revert with 0, 17
                                        if (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 and stor7[address(cd[4])].field_0 - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / s * t / 2) > -1 / (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000:
                                            revert with 0, 17
                                        if not u * v:
                                            revert with 0, 18
                                        if stor7[address(cd[4])].field_0 < (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / s * t:
                                            revert with 0, 17
                                        stor7[address(cd[4])].field_0 -= (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / s * t
                                        require stor7[address(cd[4])].field_0 >= stor7[address(cd[4])].field_512
                                        if (stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / s * t / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) / u * v and sub_bf47553e > -1 / (stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / s * t / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) / u * v:
                                            revert with 0, 17
                                        if sub_61f8967c > !((stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / s * t / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) / u * v * sub_bf47553e / 10000):
                                            revert with 0, 17
                                        sub_61f8967c += (stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / s * t / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) / u * v * sub_bf47553e / 10000
                                        if (stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / s * t / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) / u * v < (stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / s * t / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) / u * v * sub_bf47553e / 10000:
                                            revert with 0, 17
                                        call sub_d483a2aaAddress.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, ((stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / s * t / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) / u * v) - ((stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / s * t / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) / u * v * sub_bf47553e / 10000)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        emit Swap((stor7[address(cd[4])].field_0 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) - ((10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000 * stor7[address(cd[4])].field_256 / s * t / 2 * (10000 * cd[68]) - (stor7[address(cd[4])].field_1280 * cd[68]) / 10000) / u * v, stor7[address(cd[4])].field_0, stor7[address(cd[4])].field_0, address(cd[4]), address(cd[36]));
                else:
                    require stor7[address(cd[36])].field_1024 < block.timestamp
                    require stor7[address(cd[36])].field_0
                    call sub_d483a2aaAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, cd[68]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if 10000 < sub_701c580c:
                        revert with 0, 17
                    if cd[68] and -sub_701c580c + 10000 > -1 / cd[68]:
                        revert with 0, 17
                    if (10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 and sub_bf47553e > -1 / (10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000:
                        revert with 0, 17
                    if sub_61f8967c > !((10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * sub_bf47553e / 10000):
                        revert with 0, 17
                    sub_61f8967c += (10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * sub_bf47553e / 10000
                    if (10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 < (10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * sub_bf47553e / 10000:
                        revert with 0, 17
                    if stor7[address(cd[36])].field_256 > 0x1fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if stor7[address(cd[36])].field_256 and ((10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000) - ((10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * sub_bf47553e / 10000) > -1 / 8 * stor7[address(cd[36])].field_256:
                        revert with 0, 17
                    if not stor7[address(cd[36])].field_0:
                        if 0 > !(((10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * 8 * stor7[address(cd[36])].field_256) - ((10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(cd[36])].field_256)):
                            revert with 0, 17
                        if 1 > !(((10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * 8 * stor7[address(cd[36])].field_256) - ((10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(cd[36])].field_256)):
                            revert with 0, 17
                        s = ((10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * 8 * stor7[address(cd[36])].field_256) - ((10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(cd[36])].field_256)
                        t = ((10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * 8 * stor7[address(cd[36])].field_256) + (-1 * (10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(cd[36])].field_256) + 1 / 2
                        while t < s:
                            if not t:
                                revert with 0, 18
                            if ((10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * 8 * stor7[address(cd[36])].field_256) - ((10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(cd[36])].field_256) / t > !t:
                                revert with 0, 17
                            s = t
                            t = (((10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * 8 * stor7[address(cd[36])].field_256) - ((10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(cd[36])].field_256) / t) + t / 2
                            continue 
                        if stor7[address(cd[36])].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if s <= 2 * stor7[address(cd[36])].field_0:
                            if not stor7[address(cd[36])].field_768:
                                if False and stor7[address(cd[36])].field_256 > 0:
                                    revert with 0, 17
                                if stor7[address(cd[36])].field_0 > -1:
                                    revert with 0, 17
                            else:
                                if bool(bool(stor7[address(cd[36])].field_768 < 78)) or bool(bool(stor7[address(cd[36])].field_768 < 32)):
                                    if False and stor7[address(cd[36])].field_256 > 0:
                                        revert with 0, 17
                                    if not 10^stor7[address(cd[36])].field_768:
                                        revert with 0, 18
                                    if stor7[address(cd[36])].field_0 > !(0 / 10^stor7[address(cd[36])].field_768):
                                        revert with 0, 17
                                    stor7[address(cd[36])].field_0 += 0 / 10^stor7[address(cd[36])].field_768
                                else:
                                    s = 10
                                    t = 1
                                    idx = stor7[address(cd[36])].field_768
                                    while idx > 1:
                                        if s > -1 / s:
                                            revert with 0, 17
                                        if not bool(idx):
                                            s = s * s
                                            t = t
                                            idx = uint255(idx) * 0.5
                                            continue 
                                        s = s * s
                                        t = s * t
                                        idx = uint255(idx) * 0.5
                                        continue 
                                    if t > -1 / s:
                                        revert with 0, 17
                                    if False and stor7[address(cd[36])].field_256 > 0:
                                        revert with 0, 17
                                    if not s * t:
                                        revert with 0, 18
                                    if stor7[address(cd[36])].field_0 > !(0 / s * t):
                                        revert with 0, 17
                                    stor7[address(cd[36])].field_0 += 0 / s * t
                            call address(cd[36]).transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                        else:
                            if stor7[address(cd[36])].field_256 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 17
                            if not stor7[address(cd[36])].field_768:
                                if stor7[address(cd[36])].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 17
                                if s < 2 * stor7[address(cd[36])].field_0:
                                    revert with 0, 17
                                if s - (2 * stor7[address(cd[36])].field_0) and 1 > -1 / s - (2 * stor7[address(cd[36])].field_0):
                                    revert with 0, 17
                                if not 2 * stor7[address(cd[36])].field_256:
                                    revert with 0, 18
                                if not stor7[address(cd[36])].field_768:
                                    if s - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256 and stor7[address(cd[36])].field_256 > -1 / s - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256:
                                        revert with 0, 17
                                    if stor7[address(cd[36])].field_0 > !(s - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256):
                                        revert with 0, 17
                                    stor7[address(cd[36])].field_0 += s - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256
                                else:
                                    if bool(bool(stor7[address(cd[36])].field_768 < 78)) or bool(bool(stor7[address(cd[36])].field_768 < 32)):
                                        if s - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256 and stor7[address(cd[36])].field_256 > -1 / s - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256:
                                            revert with 0, 17
                                        if not 10^stor7[address(cd[36])].field_768:
                                            revert with 0, 18
                                        if stor7[address(cd[36])].field_0 > !(s - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / 10^stor7[address(cd[36])].field_768):
                                            revert with 0, 17
                                        stor7[address(cd[36])].field_0 += s - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / 10^stor7[address(cd[36])].field_768
                                    else:
                                        t = 10
                                        u = 1
                                        idx = stor7[address(cd[36])].field_768
                                        while idx > 1:
                                            if t > -1 / t:
                                                revert with 0, 17
                                            if not bool(idx):
                                                t = t * t
                                                u = u
                                                idx = uint255(idx) * 0.5
                                                continue 
                                            t = t * t
                                            u = t * u
                                            idx = uint255(idx) * 0.5
                                            continue 
                                        if u > -1 / t:
                                            revert with 0, 17
                                        if s - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256 and stor7[address(cd[36])].field_256 > -1 / s - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256:
                                            revert with 0, 17
                                        if not t * u:
                                            revert with 0, 18
                                        if stor7[address(cd[36])].field_0 > !(s - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / t * u):
                                            revert with 0, 17
                                        stor7[address(cd[36])].field_0 += s - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / t * u
                                call address(cd[36]).transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, s - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256
                            else:
                                if bool(bool(stor7[address(cd[36])].field_768 < 78)) or bool(bool(stor7[address(cd[36])].field_768 < 32)):
                                    if stor7[address(cd[36])].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 17
                                    if s < 2 * stor7[address(cd[36])].field_0:
                                        revert with 0, 17
                                    if s - (2 * stor7[address(cd[36])].field_0) and 10^stor7[address(cd[36])].field_768 > -1 / s - (2 * stor7[address(cd[36])].field_0):
                                        revert with 0, 17
                                    if not 2 * stor7[address(cd[36])].field_256:
                                        revert with 0, 18
                                    if not stor7[address(cd[36])].field_768:
                                        if (s * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256 and stor7[address(cd[36])].field_256 > -1 / (s * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256:
                                            revert with 0, 17
                                        if stor7[address(cd[36])].field_0 > !((s * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256):
                                            revert with 0, 17
                                        stor7[address(cd[36])].field_0 += (s * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256
                                    else:
                                        if bool(bool(stor7[address(cd[36])].field_768 < 78)) or bool(bool(stor7[address(cd[36])].field_768 < 32)):
                                            if (s * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256 and stor7[address(cd[36])].field_256 > -1 / (s * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256:
                                                revert with 0, 17
                                            if not 10^stor7[address(cd[36])].field_768:
                                                revert with 0, 18
                                            if stor7[address(cd[36])].field_0 > !((s * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / 10^stor7[address(cd[36])].field_768):
                                                revert with 0, 17
                                            stor7[address(cd[36])].field_0 += (s * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / 10^stor7[address(cd[36])].field_768
                                        else:
                                            t = 10
                                            u = 1
                                            idx = stor7[address(cd[36])].field_768
                                            while idx > 1:
                                                if t > -1 / t:
                                                    revert with 0, 17
                                                if not bool(idx):
                                                    t = t * t
                                                    u = u
                                                    idx = uint255(idx) * 0.5
                                                    continue 
                                                t = t * t
                                                u = t * u
                                                idx = uint255(idx) * 0.5
                                                continue 
                                            if u > -1 / t:
                                                revert with 0, 17
                                            if (s * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256 and stor7[address(cd[36])].field_256 > -1 / (s * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256:
                                                revert with 0, 17
                                            if not t * u:
                                                revert with 0, 18
                                            if stor7[address(cd[36])].field_0 > !((s * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / t * u):
                                                revert with 0, 17
                                            stor7[address(cd[36])].field_0 += (s * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / t * u
                                    call address(cd[36]).transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, (s * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256
                                else:
                                    t = 10
                                    u = 1
                                    idx = stor7[address(cd[36])].field_768
                                    while idx > 1:
                                        if t > -1 / t:
                                            revert with 0, 17
                                        if not bool(idx):
                                            t = t * t
                                            u = u
                                            idx = uint255(idx) * 0.5
                                            continue 
                                        t = t * t
                                        u = t * u
                                        idx = uint255(idx) * 0.5
                                        continue 
                                    if u > -1 / t:
                                        revert with 0, 17
                                    if stor7[address(cd[36])].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 17
                                    if s < 2 * stor7[address(cd[36])].field_0:
                                        revert with 0, 17
                                    if s - (2 * stor7[address(cd[36])].field_0) and t * u > -1 / s - (2 * stor7[address(cd[36])].field_0):
                                        revert with 0, 17
                                    if not 2 * stor7[address(cd[36])].field_256:
                                        revert with 0, 18
                                    if not stor7[address(cd[36])].field_768:
                                        if (s * t * u) - (2 * stor7[address(cd[36])].field_0 * t * u) / 2 * stor7[address(cd[36])].field_256 and stor7[address(cd[36])].field_256 > -1 / (s * t * u) - (2 * stor7[address(cd[36])].field_0 * t * u) / 2 * stor7[address(cd[36])].field_256:
                                            revert with 0, 17
                                        if stor7[address(cd[36])].field_0 > !((s * t * u) - (2 * stor7[address(cd[36])].field_0 * t * u) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256):
                                            revert with 0, 17
                                        stor7[address(cd[36])].field_0 += (s * t * u) - (2 * stor7[address(cd[36])].field_0 * t * u) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256
                                    else:
                                        if bool(bool(stor7[address(cd[36])].field_768 < 78)) or bool(bool(stor7[address(cd[36])].field_768 < 32)):
                                            if (s * t * u) - (2 * stor7[address(cd[36])].field_0 * t * u) / 2 * stor7[address(cd[36])].field_256 and stor7[address(cd[36])].field_256 > -1 / (s * t * u) - (2 * stor7[address(cd[36])].field_0 * t * u) / 2 * stor7[address(cd[36])].field_256:
                                                revert with 0, 17
                                            if not 10^stor7[address(cd[36])].field_768:
                                                revert with 0, 18
                                            if stor7[address(cd[36])].field_0 > !((s * t * u) - (2 * stor7[address(cd[36])].field_0 * t * u) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / 10^stor7[address(cd[36])].field_768):
                                                revert with 0, 17
                                            stor7[address(cd[36])].field_0 += (s * t * u) - (2 * stor7[address(cd[36])].field_0 * t * u) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / 10^stor7[address(cd[36])].field_768
                                        else:
                                            v = 10
                                            w = 1
                                            idx = stor7[address(cd[36])].field_768
                                            while idx > 1:
                                                if v > -1 / v:
                                                    revert with 0, 17
                                                if not bool(idx):
                                                    v = v * v
                                                    w = w
                                                    idx = uint255(idx) * 0.5
                                                    continue 
                                                v = v * v
                                                w = v * w
                                                idx = uint255(idx) * 0.5
                                                continue 
                                            if w > -1 / v:
                                                revert with 0, 17
                                            if (s * t * u) - (2 * stor7[address(cd[36])].field_0 * t * u) / 2 * stor7[address(cd[36])].field_256 and stor7[address(cd[36])].field_256 > -1 / (s * t * u) - (2 * stor7[address(cd[36])].field_0 * t * u) / 2 * stor7[address(cd[36])].field_256:
                                                revert with 0, 17
                                            if not v * w:
                                                revert with 0, 18
                                            if stor7[address(cd[36])].field_0 > !((s * t * u) - (2 * stor7[address(cd[36])].field_0 * t * u) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / v * w):
                                                revert with 0, 17
                                            stor7[address(cd[36])].field_0 += (s * t * u) - (2 * stor7[address(cd[36])].field_0 * t * u) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / v * w
                                    call address(cd[36]).transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, (s * t * u) - (2 * stor7[address(cd[36])].field_0 * t * u) / 2 * stor7[address(cd[36])].field_256
                    else:
                        if stor7[address(cd[36])].field_0 == 1:
                            if 4 > !(((10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * 8 * stor7[address(cd[36])].field_256) - ((10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(cd[36])].field_256)):
                                revert with 0, 17
                            if 1 > !(((10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * 8 * stor7[address(cd[36])].field_256) + (-1 * (10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(cd[36])].field_256) + 4):
                                revert with 0, 17
                            s = ((10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * 8 * stor7[address(cd[36])].field_256) + (-1 * (10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(cd[36])].field_256) + 4
                            t = ((10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * 8 * stor7[address(cd[36])].field_256) + (-1 * (10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(cd[36])].field_256) + 5 / 2
                            while t < s:
                                if not t:
                                    revert with 0, 18
                                if ((10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * 8 * stor7[address(cd[36])].field_256) + (-1 * (10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(cd[36])].field_256) + 4 / t > !t:
                                    revert with 0, 17
                                s = t
                                t = (((10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * 8 * stor7[address(cd[36])].field_256) + (-1 * (10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(cd[36])].field_256) + 4 / t) + t / 2
                                continue 
                            if stor7[address(cd[36])].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 17
                            if s <= 2 * stor7[address(cd[36])].field_0:
                                if not stor7[address(cd[36])].field_768:
                                    if False and stor7[address(cd[36])].field_256 > 0:
                                        revert with 0, 17
                                    if stor7[address(cd[36])].field_0 > -1:
                                        revert with 0, 17
                                else:
                                    if bool(bool(stor7[address(cd[36])].field_768 < 78)) or bool(bool(stor7[address(cd[36])].field_768 < 32)):
                                        if False and stor7[address(cd[36])].field_256 > 0:
                                            revert with 0, 17
                                        if not 10^stor7[address(cd[36])].field_768:
                                            revert with 0, 18
                                        if stor7[address(cd[36])].field_0 > !(0 / 10^stor7[address(cd[36])].field_768):
                                            revert with 0, 17
                                        stor7[address(cd[36])].field_0 += 0 / 10^stor7[address(cd[36])].field_768
                                    else:
                                        s = 10
                                        t = 1
                                        idx = stor7[address(cd[36])].field_768
                                        while idx > 1:
                                            if s > -1 / s:
                                                revert with 0, 17
                                            if not bool(idx):
                                                s = s * s
                                                t = t
                                                idx = uint255(idx) * 0.5
                                                continue 
                                            s = s * s
                                            t = s * t
                                            idx = uint255(idx) * 0.5
                                            continue 
                                        if t > -1 / s:
                                            revert with 0, 17
                                        if False and stor7[address(cd[36])].field_256 > 0:
                                            revert with 0, 17
                                        if not s * t:
                                            revert with 0, 18
                                        if stor7[address(cd[36])].field_0 > !(0 / s * t):
                                            revert with 0, 17
                                        stor7[address(cd[36])].field_0 += 0 / s * t
                                call address(cd[36]).transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                            else:
                                if stor7[address(cd[36])].field_256 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 17
                                if not stor7[address(cd[36])].field_768:
                                    if stor7[address(cd[36])].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 17
                                    if s < 2 * stor7[address(cd[36])].field_0:
                                        revert with 0, 17
                                    if s - (2 * stor7[address(cd[36])].field_0) and 1 > -1 / s - (2 * stor7[address(cd[36])].field_0):
                                        revert with 0, 17
                                    if not 2 * stor7[address(cd[36])].field_256:
                                        revert with 0, 18
                                    if not stor7[address(cd[36])].field_768:
                                        if s - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256 and stor7[address(cd[36])].field_256 > -1 / s - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256:
                                            revert with 0, 17
                                        if stor7[address(cd[36])].field_0 > !(s - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256):
                                            revert with 0, 17
                                        stor7[address(cd[36])].field_0 += s - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256
                                    else:
                                        if bool(bool(stor7[address(cd[36])].field_768 < 78)) or bool(bool(stor7[address(cd[36])].field_768 < 32)):
                                            if s - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256 and stor7[address(cd[36])].field_256 > -1 / s - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256:
                                                revert with 0, 17
                                            if not 10^stor7[address(cd[36])].field_768:
                                                revert with 0, 18
                                            if stor7[address(cd[36])].field_0 > !(s - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / 10^stor7[address(cd[36])].field_768):
                                                revert with 0, 17
                                            stor7[address(cd[36])].field_0 += s - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / 10^stor7[address(cd[36])].field_768
                                        else:
                                            t = 10
                                            u = 1
                                            idx = stor7[address(cd[36])].field_768
                                            while idx > 1:
                                                if t > -1 / t:
                                                    revert with 0, 17
                                                if not bool(idx):
                                                    t = t * t
                                                    u = u
                                                    idx = uint255(idx) * 0.5
                                                    continue 
                                                t = t * t
                                                u = t * u
                                                idx = uint255(idx) * 0.5
                                                continue 
                                            if u > -1 / t:
                                                revert with 0, 17
                                            if s - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256 and stor7[address(cd[36])].field_256 > -1 / s - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256:
                                                revert with 0, 17
                                            if not t * u:
                                                revert with 0, 18
                                            if stor7[address(cd[36])].field_0 > !(s - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / t * u):
                                                revert with 0, 17
                                            stor7[address(cd[36])].field_0 += s - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / t * u
                                    call address(cd[36]).transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, s - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256
                                else:
                                    if bool(bool(stor7[address(cd[36])].field_768 < 78)) or bool(bool(stor7[address(cd[36])].field_768 < 32)):
                                        if stor7[address(cd[36])].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 17
                                        if s < 2 * stor7[address(cd[36])].field_0:
                                            revert with 0, 17
                                        if s - (2 * stor7[address(cd[36])].field_0) and 10^stor7[address(cd[36])].field_768 > -1 / s - (2 * stor7[address(cd[36])].field_0):
                                            revert with 0, 17
                                        if not 2 * stor7[address(cd[36])].field_256:
                                            revert with 0, 18
                                        if not stor7[address(cd[36])].field_768:
                                            if (s * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256 and stor7[address(cd[36])].field_256 > -1 / (s * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256:
                                                revert with 0, 17
                                            if stor7[address(cd[36])].field_0 > !((s * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256):
                                                revert with 0, 17
                                            stor7[address(cd[36])].field_0 += (s * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256
                                        else:
                                            if bool(bool(stor7[address(cd[36])].field_768 < 78)) or bool(bool(stor7[address(cd[36])].field_768 < 32)):
                                                if (s * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256 and stor7[address(cd[36])].field_256 > -1 / (s * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256:
                                                    revert with 0, 17
                                                if not 10^stor7[address(cd[36])].field_768:
                                                    revert with 0, 18
                                                if stor7[address(cd[36])].field_0 > !((s * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / 10^stor7[address(cd[36])].field_768):
                                                    revert with 0, 17
                                                stor7[address(cd[36])].field_0 += (s * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / 10^stor7[address(cd[36])].field_768
                                            else:
                                                t = 10
                                                u = 1
                                                idx = stor7[address(cd[36])].field_768
                                                while idx > 1:
                                                    if t > -1 / t:
                                                        revert with 0, 17
                                                    if not bool(idx):
                                                        t = t * t
                                                        u = u
                                                        idx = uint255(idx) * 0.5
                                                        continue 
                                                    t = t * t
                                                    u = t * u
                                                    idx = uint255(idx) * 0.5
                                                    continue 
                                                if u > -1 / t:
                                                    revert with 0, 17
                                                if (s * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256 and stor7[address(cd[36])].field_256 > -1 / (s * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256:
                                                    revert with 0, 17
                                                if not t * u:
                                                    revert with 0, 18
                                                if stor7[address(cd[36])].field_0 > !((s * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / t * u):
                                                    revert with 0, 17
                                                stor7[address(cd[36])].field_0 += (s * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / t * u
                                        call address(cd[36]).transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, (s * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256
                                    else:
                                        t = 10
                                        u = 1
                                        idx = stor7[address(cd[36])].field_768
                                        while idx > 1:
                                            if t > -1 / t:
                                                revert with 0, 17
                                            if not bool(idx):
                                                t = t * t
                                                u = u
                                                idx = uint255(idx) * 0.5
                                                continue 
                                            t = t * t
                                            u = t * u
                                            idx = uint255(idx) * 0.5
                                            continue 
                                        if u > -1 / t:
                                            revert with 0, 17
                                        if stor7[address(cd[36])].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 17
                                        if s < 2 * stor7[address(cd[36])].field_0:
                                            revert with 0, 17
                                        if s - (2 * stor7[address(cd[36])].field_0) and t * u > -1 / s - (2 * stor7[address(cd[36])].field_0):
                                            revert with 0, 17
                                        if not 2 * stor7[address(cd[36])].field_256:
                                            revert with 0, 18
                                        if not stor7[address(cd[36])].field_768:
                                            if (s * t * u) - (2 * stor7[address(cd[36])].field_0 * t * u) / 2 * stor7[address(cd[36])].field_256 and stor7[address(cd[36])].field_256 > -1 / (s * t * u) - (2 * stor7[address(cd[36])].field_0 * t * u) / 2 * stor7[address(cd[36])].field_256:
                                                revert with 0, 17
                                            if stor7[address(cd[36])].field_0 > !((s * t * u) - (2 * stor7[address(cd[36])].field_0 * t * u) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256):
                                                revert with 0, 17
                                            stor7[address(cd[36])].field_0 += (s * t * u) - (2 * stor7[address(cd[36])].field_0 * t * u) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256
                                        else:
                                            if bool(bool(stor7[address(cd[36])].field_768 < 78)) or bool(bool(stor7[address(cd[36])].field_768 < 32)):
                                                if (s * t * u) - (2 * stor7[address(cd[36])].field_0 * t * u) / 2 * stor7[address(cd[36])].field_256 and stor7[address(cd[36])].field_256 > -1 / (s * t * u) - (2 * stor7[address(cd[36])].field_0 * t * u) / 2 * stor7[address(cd[36])].field_256:
                                                    revert with 0, 17
                                                if not 10^stor7[address(cd[36])].field_768:
                                                    revert with 0, 18
                                                if stor7[address(cd[36])].field_0 > !((s * t * u) - (2 * stor7[address(cd[36])].field_0 * t * u) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / 10^stor7[address(cd[36])].field_768):
                                                    revert with 0, 17
                                                stor7[address(cd[36])].field_0 += (s * t * u) - (2 * stor7[address(cd[36])].field_0 * t * u) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / 10^stor7[address(cd[36])].field_768
                                            else:
                                                v = 10
                                                w = 1
                                                idx = stor7[address(cd[36])].field_768
                                                while idx > 1:
                                                    if v > -1 / v:
                                                        revert with 0, 17
                                                    if not bool(idx):
                                                        v = v * v
                                                        w = w
                                                        idx = uint255(idx) * 0.5
                                                        continue 
                                                    v = v * v
                                                    w = v * w
                                                    idx = uint255(idx) * 0.5
                                                    continue 
                                                if w > -1 / v:
                                                    revert with 0, 17
                                                if (s * t * u) - (2 * stor7[address(cd[36])].field_0 * t * u) / 2 * stor7[address(cd[36])].field_256 and stor7[address(cd[36])].field_256 > -1 / (s * t * u) - (2 * stor7[address(cd[36])].field_0 * t * u) / 2 * stor7[address(cd[36])].field_256:
                                                    revert with 0, 17
                                                if not v * w:
                                                    revert with 0, 18
                                                if stor7[address(cd[36])].field_0 > !((s * t * u) - (2 * stor7[address(cd[36])].field_0 * t * u) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / v * w):
                                                    revert with 0, 17
                                                stor7[address(cd[36])].field_0 += (s * t * u) - (2 * stor7[address(cd[36])].field_0 * t * u) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / v * w
                                        call address(cd[36]).transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, (s * t * u) - (2 * stor7[address(cd[36])].field_0 * t * u) / 2 * stor7[address(cd[36])].field_256
                        else:
                            if stor7[address(cd[36])].field_0 == 2:
                                if 16 > !(((10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * 8 * stor7[address(cd[36])].field_256) - ((10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(cd[36])].field_256)):
                                    revert with 0, 17
                                if 1 > !(((10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * 8 * stor7[address(cd[36])].field_256) + (-1 * (10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(cd[36])].field_256) + 16):
                                    revert with 0, 17
                                s = ((10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * 8 * stor7[address(cd[36])].field_256) + (-1 * (10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(cd[36])].field_256) + 16
                                t = ((10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * 8 * stor7[address(cd[36])].field_256) + (-1 * (10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(cd[36])].field_256) + 17 / 2
                                while t < s:
                                    if not t:
                                        revert with 0, 18
                                    if ((10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * 8 * stor7[address(cd[36])].field_256) + (-1 * (10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(cd[36])].field_256) + 16 / t > !t:
                                        revert with 0, 17
                                    s = t
                                    t = (((10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * 8 * stor7[address(cd[36])].field_256) + (-1 * (10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(cd[36])].field_256) + 16 / t) + t / 2
                                    continue 
                                if stor7[address(cd[36])].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 17
                                if s <= 2 * stor7[address(cd[36])].field_0:
                                    if not stor7[address(cd[36])].field_768:
                                        if False and stor7[address(cd[36])].field_256 > 0:
                                            revert with 0, 17
                                        if stor7[address(cd[36])].field_0 > -1:
                                            revert with 0, 17
                                    else:
                                        if bool(bool(stor7[address(cd[36])].field_768 < 78)) or bool(bool(stor7[address(cd[36])].field_768 < 32)):
                                            if False and stor7[address(cd[36])].field_256 > 0:
                                                revert with 0, 17
                                            if not 10^stor7[address(cd[36])].field_768:
                                                revert with 0, 18
                                            if stor7[address(cd[36])].field_0 > !(0 / 10^stor7[address(cd[36])].field_768):
                                                revert with 0, 17
                                            stor7[address(cd[36])].field_0 += 0 / 10^stor7[address(cd[36])].field_768
                                        else:
                                            s = 10
                                            t = 1
                                            idx = stor7[address(cd[36])].field_768
                                            while idx > 1:
                                                if s > -1 / s:
                                                    revert with 0, 17
                                                if not bool(idx):
                                                    s = s * s
                                                    t = t
                                                    idx = uint255(idx) * 0.5
                                                    continue 
                                                s = s * s
                                                t = s * t
                                                idx = uint255(idx) * 0.5
                                                continue 
                                            if t > -1 / s:
                                                revert with 0, 17
                                            if False and stor7[address(cd[36])].field_256 > 0:
                                                revert with 0, 17
                                            if not s * t:
                                                revert with 0, 18
                                            if stor7[address(cd[36])].field_0 > !(0 / s * t):
                                                revert with 0, 17
                                            stor7[address(cd[36])].field_0 += 0 / s * t
                                    call address(cd[36]).transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                else:
                                    if stor7[address(cd[36])].field_256 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 17
                                    if not stor7[address(cd[36])].field_768:
                                        if stor7[address(cd[36])].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 17
                                        if s < 2 * stor7[address(cd[36])].field_0:
                                            revert with 0, 17
                                        if s - (2 * stor7[address(cd[36])].field_0) and 1 > -1 / s - (2 * stor7[address(cd[36])].field_0):
                                            revert with 0, 17
                                        if not 2 * stor7[address(cd[36])].field_256:
                                            revert with 0, 18
                                        if not stor7[address(cd[36])].field_768:
                                            if s - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256 and stor7[address(cd[36])].field_256 > -1 / s - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256:
                                                revert with 0, 17
                                            if stor7[address(cd[36])].field_0 > !(s - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256):
                                                revert with 0, 17
                                            stor7[address(cd[36])].field_0 += s - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256
                                        else:
                                            if bool(bool(stor7[address(cd[36])].field_768 < 78)) or bool(bool(stor7[address(cd[36])].field_768 < 32)):
                                                if s - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256 and stor7[address(cd[36])].field_256 > -1 / s - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256:
                                                    revert with 0, 17
                                                if not 10^stor7[address(cd[36])].field_768:
                                                    revert with 0, 18
                                                if stor7[address(cd[36])].field_0 > !(s - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / 10^stor7[address(cd[36])].field_768):
                                                    revert with 0, 17
                                                stor7[address(cd[36])].field_0 += s - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / 10^stor7[address(cd[36])].field_768
                                            else:
                                                t = 10
                                                u = 1
                                                idx = stor7[address(cd[36])].field_768
                                                while idx > 1:
                                                    if t > -1 / t:
                                                        revert with 0, 17
                                                    if not bool(idx):
                                                        t = t * t
                                                        u = u
                                                        idx = uint255(idx) * 0.5
                                                        continue 
                                                    t = t * t
                                                    u = t * u
                                                    idx = uint255(idx) * 0.5
                                                    continue 
                                                if u > -1 / t:
                                                    revert with 0, 17
                                                if s - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256 and stor7[address(cd[36])].field_256 > -1 / s - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256:
                                                    revert with 0, 17
                                                if not t * u:
                                                    revert with 0, 18
                                                if stor7[address(cd[36])].field_0 > !(s - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / t * u):
                                                    revert with 0, 17
                                                stor7[address(cd[36])].field_0 += s - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / t * u
                                        call address(cd[36]).transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, s - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256
                                    else:
                                        if bool(bool(stor7[address(cd[36])].field_768 < 78)) or bool(bool(stor7[address(cd[36])].field_768 < 32)):
                                            if stor7[address(cd[36])].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 17
                                            if s < 2 * stor7[address(cd[36])].field_0:
                                                revert with 0, 17
                                            if s - (2 * stor7[address(cd[36])].field_0) and 10^stor7[address(cd[36])].field_768 > -1 / s - (2 * stor7[address(cd[36])].field_0):
                                                revert with 0, 17
                                            if not 2 * stor7[address(cd[36])].field_256:
                                                revert with 0, 18
                                            if not stor7[address(cd[36])].field_768:
                                                if (s * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256 and stor7[address(cd[36])].field_256 > -1 / (s * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256:
                                                    revert with 0, 17
                                                if stor7[address(cd[36])].field_0 > !((s * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256):
                                                    revert with 0, 17
                                                stor7[address(cd[36])].field_0 += (s * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256
                                            else:
                                                if bool(bool(stor7[address(cd[36])].field_768 < 78)) or bool(bool(stor7[address(cd[36])].field_768 < 32)):
                                                    if (s * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256 and stor7[address(cd[36])].field_256 > -1 / (s * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256:
                                                        revert with 0, 17
                                                    if not 10^stor7[address(cd[36])].field_768:
                                                        revert with 0, 18
                                                    if stor7[address(cd[36])].field_0 > !((s * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / 10^stor7[address(cd[36])].field_768):
                                                        revert with 0, 17
                                                    stor7[address(cd[36])].field_0 += (s * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / 10^stor7[address(cd[36])].field_768
                                                else:
                                                    t = 10
                                                    u = 1
                                                    idx = stor7[address(cd[36])].field_768
                                                    while idx > 1:
                                                        if t > -1 / t:
                                                            revert with 0, 17
                                                        if not bool(idx):
                                                            t = t * t
                                                            u = u
                                                            idx = uint255(idx) * 0.5
                                                            continue 
                                                        t = t * t
                                                        u = t * u
                                                        idx = uint255(idx) * 0.5
                                                        continue 
                                                    if u > -1 / t:
                                                        revert with 0, 17
                                                    if (s * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256 and stor7[address(cd[36])].field_256 > -1 / (s * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256:
                                                        revert with 0, 17
                                                    if not t * u:
                                                        revert with 0, 18
                                                    if stor7[address(cd[36])].field_0 > !((s * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / t * u):
                                                        revert with 0, 17
                                                    stor7[address(cd[36])].field_0 += (s * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / t * u
                                            call address(cd[36]).transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, (s * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256
                                        else:
                                            t = 10
                                            u = 1
                                            idx = stor7[address(cd[36])].field_768
                                            while idx > 1:
                                                if t > -1 / t:
                                                    revert with 0, 17
                                                if not bool(idx):
                                                    t = t * t
                                                    u = u
                                                    idx = uint255(idx) * 0.5
                                                    continue 
                                                t = t * t
                                                u = t * u
                                                idx = uint255(idx) * 0.5
                                                continue 
                                            if u > -1 / t:
                                                revert with 0, 17
                                            if stor7[address(cd[36])].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 17
                                            if s < 2 * stor7[address(cd[36])].field_0:
                                                revert with 0, 17
                                            if s - (2 * stor7[address(cd[36])].field_0) and t * u > -1 / s - (2 * stor7[address(cd[36])].field_0):
                                                revert with 0, 17
                                            if not 2 * stor7[address(cd[36])].field_256:
                                                revert with 0, 18
                                            if not stor7[address(cd[36])].field_768:
                                                if (s * t * u) - (2 * stor7[address(cd[36])].field_0 * t * u) / 2 * stor7[address(cd[36])].field_256 and stor7[address(cd[36])].field_256 > -1 / (s * t * u) - (2 * stor7[address(cd[36])].field_0 * t * u) / 2 * stor7[address(cd[36])].field_256:
                                                    revert with 0, 17
                                                if stor7[address(cd[36])].field_0 > !((s * t * u) - (2 * stor7[address(cd[36])].field_0 * t * u) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256):
                                                    revert with 0, 17
                                                stor7[address(cd[36])].field_0 += (s * t * u) - (2 * stor7[address(cd[36])].field_0 * t * u) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256
                                            else:
                                                if bool(bool(stor7[address(cd[36])].field_768 < 78)) or bool(bool(stor7[address(cd[36])].field_768 < 32)):
                                                    if (s * t * u) - (2 * stor7[address(cd[36])].field_0 * t * u) / 2 * stor7[address(cd[36])].field_256 and stor7[address(cd[36])].field_256 > -1 / (s * t * u) - (2 * stor7[address(cd[36])].field_0 * t * u) / 2 * stor7[address(cd[36])].field_256:
                                                        revert with 0, 17
                                                    if not 10^stor7[address(cd[36])].field_768:
                                                        revert with 0, 18
                                                    if stor7[address(cd[36])].field_0 > !((s * t * u) - (2 * stor7[address(cd[36])].field_0 * t * u) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / 10^stor7[address(cd[36])].field_768):
                                                        revert with 0, 17
                                                    stor7[address(cd[36])].field_0 += (s * t * u) - (2 * stor7[address(cd[36])].field_0 * t * u) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / 10^stor7[address(cd[36])].field_768
                                                else:
                                                    v = 10
                                                    w = 1
                                                    idx = stor7[address(cd[36])].field_768
                                                    while idx > 1:
                                                        if v > -1 / v:
                                                            revert with 0, 17
                                                        if not bool(idx):
                                                            v = v * v
                                                            w = w
                                                            idx = uint255(idx) * 0.5
                                                            continue 
                                                        v = v * v
                                                        w = v * w
                                                        idx = uint255(idx) * 0.5
                                                        continue 
                                                    if w > -1 / v:
                                                        revert with 0, 17
                                                    if (s * t * u) - (2 * stor7[address(cd[36])].field_0 * t * u) / 2 * stor7[address(cd[36])].field_256 and stor7[address(cd[36])].field_256 > -1 / (s * t * u) - (2 * stor7[address(cd[36])].field_0 * t * u) / 2 * stor7[address(cd[36])].field_256:
                                                        revert with 0, 17
                                                    if not v * w:
                                                        revert with 0, 18
                                                    if stor7[address(cd[36])].field_0 > !((s * t * u) - (2 * stor7[address(cd[36])].field_0 * t * u) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / v * w):
                                                        revert with 0, 17
                                                    stor7[address(cd[36])].field_0 += (s * t * u) - (2 * stor7[address(cd[36])].field_0 * t * u) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / v * w
                                            call address(cd[36]).transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, (s * t * u) - (2 * stor7[address(cd[36])].field_0 * t * u) / 2 * stor7[address(cd[36])].field_256
                            else:
                                if bool(bool(stor7[address(cd[36])].field_0 < 11)) or bool(bool(stor7[address(cd[36])].field_0 < 307)):
                                    if stor7[address(cd[36])].field_0^2 > 0x3fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 17
                                    if 4 * stor7[address(cd[36])].field_0^2 > !(((10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * 8 * stor7[address(cd[36])].field_256) - ((10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(cd[36])].field_256)):
                                        revert with 0, 17
                                    if 1 > !((4 * stor7[address(cd[36])].field_0^2) + ((10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * 8 * stor7[address(cd[36])].field_256) - ((10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(cd[36])].field_256)):
                                        revert with 0, 17
                                    s = (4 * stor7[address(cd[36])].field_0^2) + ((10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * 8 * stor7[address(cd[36])].field_256) - ((10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(cd[36])].field_256)
                                    t = (4 * stor7[address(cd[36])].field_0^2) + ((10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * 8 * stor7[address(cd[36])].field_256) + (-1 * (10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(cd[36])].field_256) + 1 / 2
                                    while t < s:
                                        if not t:
                                            revert with 0, 18
                                        if (4 * stor7[address(cd[36])].field_0^2) + ((10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * 8 * stor7[address(cd[36])].field_256) - ((10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(cd[36])].field_256) / t > !t:
                                            revert with 0, 17
                                        s = t
                                        t = ((4 * stor7[address(cd[36])].field_0^2) + ((10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * 8 * stor7[address(cd[36])].field_256) - ((10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(cd[36])].field_256) / t) + t / 2
                                        continue 
                                    if stor7[address(cd[36])].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 17
                                    if s <= 2 * stor7[address(cd[36])].field_0:
                                        if not stor7[address(cd[36])].field_768:
                                            if False and stor7[address(cd[36])].field_256 > 0:
                                                revert with 0, 17
                                            if stor7[address(cd[36])].field_0 > -1:
                                                revert with 0, 17
                                        else:
                                            if bool(bool(stor7[address(cd[36])].field_768 < 78)) or bool(bool(stor7[address(cd[36])].field_768 < 32)):
                                                if False and stor7[address(cd[36])].field_256 > 0:
                                                    revert with 0, 17
                                                if not 10^stor7[address(cd[36])].field_768:
                                                    revert with 0, 18
                                                if stor7[address(cd[36])].field_0 > !(0 / 10^stor7[address(cd[36])].field_768):
                                                    revert with 0, 17
                                                stor7[address(cd[36])].field_0 += 0 / 10^stor7[address(cd[36])].field_768
                                            else:
                                                s = 10
                                                t = 1
                                                idx = stor7[address(cd[36])].field_768
                                                while idx > 1:
                                                    if s > -1 / s:
                                                        revert with 0, 17
                                                    if not bool(idx):
                                                        s = s * s
                                                        t = t
                                                        idx = uint255(idx) * 0.5
                                                        continue 
                                                    s = s * s
                                                    t = s * t
                                                    idx = uint255(idx) * 0.5
                                                    continue 
                                                if t > -1 / s:
                                                    revert with 0, 17
                                                if False and stor7[address(cd[36])].field_256 > 0:
                                                    revert with 0, 17
                                                if not s * t:
                                                    revert with 0, 18
                                                if stor7[address(cd[36])].field_0 > !(0 / s * t):
                                                    revert with 0, 17
                                                stor7[address(cd[36])].field_0 += 0 / s * t
                                        call address(cd[36]).transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                    else:
                                        if stor7[address(cd[36])].field_256 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 17
                                        if not stor7[address(cd[36])].field_768:
                                            if stor7[address(cd[36])].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 17
                                            if s < 2 * stor7[address(cd[36])].field_0:
                                                revert with 0, 17
                                            if s - (2 * stor7[address(cd[36])].field_0) and 1 > -1 / s - (2 * stor7[address(cd[36])].field_0):
                                                revert with 0, 17
                                            if not 2 * stor7[address(cd[36])].field_256:
                                                revert with 0, 18
                                            if not stor7[address(cd[36])].field_768:
                                                if s - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256 and stor7[address(cd[36])].field_256 > -1 / s - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256:
                                                    revert with 0, 17
                                                if stor7[address(cd[36])].field_0 > !(s - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256):
                                                    revert with 0, 17
                                                stor7[address(cd[36])].field_0 += s - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256
                                            else:
                                                if bool(bool(stor7[address(cd[36])].field_768 < 78)) or bool(bool(stor7[address(cd[36])].field_768 < 32)):
                                                    if s - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256 and stor7[address(cd[36])].field_256 > -1 / s - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256:
                                                        revert with 0, 17
                                                    if not 10^stor7[address(cd[36])].field_768:
                                                        revert with 0, 18
                                                    if stor7[address(cd[36])].field_0 > !(s - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / 10^stor7[address(cd[36])].field_768):
                                                        revert with 0, 17
                                                    stor7[address(cd[36])].field_0 += s - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / 10^stor7[address(cd[36])].field_768
                                                else:
                                                    t = 10
                                                    u = 1
                                                    idx = stor7[address(cd[36])].field_768
                                                    while idx > 1:
                                                        if t > -1 / t:
                                                            revert with 0, 17
                                                        if not bool(idx):
                                                            t = t * t
                                                            u = u
                                                            idx = uint255(idx) * 0.5
                                                            continue 
                                                        t = t * t
                                                        u = t * u
                                                        idx = uint255(idx) * 0.5
                                                        continue 
                                                    if u > -1 / t:
                                                        revert with 0, 17
                                                    if s - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256 and stor7[address(cd[36])].field_256 > -1 / s - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256:
                                                        revert with 0, 17
                                                    if not t * u:
                                                        revert with 0, 18
                                                    if stor7[address(cd[36])].field_0 > !(s - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / t * u):
                                                        revert with 0, 17
                                                    stor7[address(cd[36])].field_0 += s - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / t * u
                                            call address(cd[36]).transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, s - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256
                                        else:
                                            if bool(bool(stor7[address(cd[36])].field_768 < 78)) or bool(bool(stor7[address(cd[36])].field_768 < 32)):
                                                if stor7[address(cd[36])].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 17
                                                if s < 2 * stor7[address(cd[36])].field_0:
                                                    revert with 0, 17
                                                if s - (2 * stor7[address(cd[36])].field_0) and 10^stor7[address(cd[36])].field_768 > -1 / s - (2 * stor7[address(cd[36])].field_0):
                                                    revert with 0, 17
                                                if not 2 * stor7[address(cd[36])].field_256:
                                                    revert with 0, 18
                                                if not stor7[address(cd[36])].field_768:
                                                    if (s * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256 and stor7[address(cd[36])].field_256 > -1 / (s * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256:
                                                        revert with 0, 17
                                                    if stor7[address(cd[36])].field_0 > !((s * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256):
                                                        revert with 0, 17
                                                    stor7[address(cd[36])].field_0 += (s * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256
                                                else:
                                                    if bool(bool(stor7[address(cd[36])].field_768 < 78)) or bool(bool(stor7[address(cd[36])].field_768 < 32)):
                                                        if (s * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256 and stor7[address(cd[36])].field_256 > -1 / (s * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256:
                                                            revert with 0, 17
                                                        if not 10^stor7[address(cd[36])].field_768:
                                                            revert with 0, 18
                                                        if stor7[address(cd[36])].field_0 > !((s * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / 10^stor7[address(cd[36])].field_768):
                                                            revert with 0, 17
                                                        stor7[address(cd[36])].field_0 += (s * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / 10^stor7[address(cd[36])].field_768
                                                    else:
                                                        t = 10
                                                        u = 1
                                                        idx = stor7[address(cd[36])].field_768
                                                        while idx > 1:
                                                            if t > -1 / t:
                                                                revert with 0, 17
                                                            if not bool(idx):
                                                                t = t * t
                                                                u = u
                                                                idx = uint255(idx) * 0.5
                                                                continue 
                                                            t = t * t
                                                            u = t * u
                                                            idx = uint255(idx) * 0.5
                                                            continue 
                                                        if u > -1 / t:
                                                            revert with 0, 17
                                                        if (s * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256 and stor7[address(cd[36])].field_256 > -1 / (s * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256:
                                                            revert with 0, 17
                                                        if not t * u:
                                                            revert with 0, 18
                                                        if stor7[address(cd[36])].field_0 > !((s * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / t * u):
                                                            revert with 0, 17
                                                        stor7[address(cd[36])].field_0 += (s * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / t * u
                                                call address(cd[36]).transfer(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (s * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256
                                            else:
                                                t = 10
                                                u = 1
                                                idx = stor7[address(cd[36])].field_768
                                                while idx > 1:
                                                    if t > -1 / t:
                                                        revert with 0, 17
                                                    if not bool(idx):
                                                        t = t * t
                                                        u = u
                                                        idx = uint255(idx) * 0.5
                                                        continue 
                                                    t = t * t
                                                    u = t * u
                                                    idx = uint255(idx) * 0.5
                                                    continue 
                                                if u > -1 / t:
                                                    revert with 0, 17
                                                if stor7[address(cd[36])].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 17
                                                if s < 2 * stor7[address(cd[36])].field_0:
                                                    revert with 0, 17
                                                if s - (2 * stor7[address(cd[36])].field_0) and t * u > -1 / s - (2 * stor7[address(cd[36])].field_0):
                                                    revert with 0, 17
                                                if not 2 * stor7[address(cd[36])].field_256:
                                                    revert with 0, 18
                                                if not stor7[address(cd[36])].field_768:
                                                    if (s * t * u) - (2 * stor7[address(cd[36])].field_0 * t * u) / 2 * stor7[address(cd[36])].field_256 and stor7[address(cd[36])].field_256 > -1 / (s * t * u) - (2 * stor7[address(cd[36])].field_0 * t * u) / 2 * stor7[address(cd[36])].field_256:
                                                        revert with 0, 17
                                                    if stor7[address(cd[36])].field_0 > !((s * t * u) - (2 * stor7[address(cd[36])].field_0 * t * u) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256):
                                                        revert with 0, 17
                                                    stor7[address(cd[36])].field_0 += (s * t * u) - (2 * stor7[address(cd[36])].field_0 * t * u) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256
                                                else:
                                                    if bool(bool(stor7[address(cd[36])].field_768 < 78)) or bool(bool(stor7[address(cd[36])].field_768 < 32)):
                                                        if (s * t * u) - (2 * stor7[address(cd[36])].field_0 * t * u) / 2 * stor7[address(cd[36])].field_256 and stor7[address(cd[36])].field_256 > -1 / (s * t * u) - (2 * stor7[address(cd[36])].field_0 * t * u) / 2 * stor7[address(cd[36])].field_256:
                                                            revert with 0, 17
                                                        if not 10^stor7[address(cd[36])].field_768:
                                                            revert with 0, 18
                                                        if stor7[address(cd[36])].field_0 > !((s * t * u) - (2 * stor7[address(cd[36])].field_0 * t * u) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / 10^stor7[address(cd[36])].field_768):
                                                            revert with 0, 17
                                                        stor7[address(cd[36])].field_0 += (s * t * u) - (2 * stor7[address(cd[36])].field_0 * t * u) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / 10^stor7[address(cd[36])].field_768
                                                    else:
                                                        v = 10
                                                        w = 1
                                                        idx = stor7[address(cd[36])].field_768
                                                        while idx > 1:
                                                            if v > -1 / v:
                                                                revert with 0, 17
                                                            if not bool(idx):
                                                                v = v * v
                                                                w = w
                                                                idx = uint255(idx) * 0.5
                                                                continue 
                                                            v = v * v
                                                            w = v * w
                                                            idx = uint255(idx) * 0.5
                                                            continue 
                                                        if w > -1 / v:
                                                            revert with 0, 17
                                                        if (s * t * u) - (2 * stor7[address(cd[36])].field_0 * t * u) / 2 * stor7[address(cd[36])].field_256 and stor7[address(cd[36])].field_256 > -1 / (s * t * u) - (2 * stor7[address(cd[36])].field_0 * t * u) / 2 * stor7[address(cd[36])].field_256:
                                                            revert with 0, 17
                                                        if not v * w:
                                                            revert with 0, 18
                                                        if stor7[address(cd[36])].field_0 > !((s * t * u) - (2 * stor7[address(cd[36])].field_0 * t * u) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / v * w):
                                                            revert with 0, 17
                                                        stor7[address(cd[36])].field_0 += (s * t * u) - (2 * stor7[address(cd[36])].field_0 * t * u) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / v * w
                                                call address(cd[36]).transfer(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (s * t * u) - (2 * stor7[address(cd[36])].field_0 * t * u) / 2 * stor7[address(cd[36])].field_256
                                else:
                                    s = stor7[address(cd[36])].field_0
                                    idx = 2
                                    while idx > 1:
                                        if s > -1 / s:
                                            revert with 0, 17
                                        s = s * s
                                        idx = uint255(idx) * 0.5
                                        continue 
                                    if 1 > -1 / s:
                                        revert with 0, 17
                                    if s > 0x3fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 17
                                    if 4 * s > !(((10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * 8 * stor7[address(cd[36])].field_256) - ((10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(cd[36])].field_256)):
                                        revert with 0, 17
                                    if 1 > !((4 * s) + ((10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * 8 * stor7[address(cd[36])].field_256) - ((10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(cd[36])].field_256)):
                                        revert with 0, 17
                                    t = (4 * s) + ((10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * 8 * stor7[address(cd[36])].field_256) - ((10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(cd[36])].field_256)
                                    u = (4 * s) + ((10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * 8 * stor7[address(cd[36])].field_256) + (-1 * (10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(cd[36])].field_256) + 1 / 2
                                    while u < t:
                                        if not u:
                                            revert with 0, 18
                                        if (4 * s) + ((10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * 8 * stor7[address(cd[36])].field_256) - ((10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(cd[36])].field_256) / u > !u:
                                            revert with 0, 17
                                        t = u
                                        u = ((4 * s) + ((10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * 8 * stor7[address(cd[36])].field_256) - ((10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000 * sub_bf47553e / 10000 * 8 * stor7[address(cd[36])].field_256) / u) + u / 2
                                        continue 
                                    if stor7[address(cd[36])].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 17
                                    if t <= 2 * stor7[address(cd[36])].field_0:
                                        if not stor7[address(cd[36])].field_768:
                                            if False and stor7[address(cd[36])].field_256 > 0:
                                                revert with 0, 17
                                            if stor7[address(cd[36])].field_0 > -1:
                                                revert with 0, 17
                                        else:
                                            if bool(bool(stor7[address(cd[36])].field_768 < 78)) or bool(bool(stor7[address(cd[36])].field_768 < 32)):
                                                if False and stor7[address(cd[36])].field_256 > 0:
                                                    revert with 0, 17
                                                if not 10^stor7[address(cd[36])].field_768:
                                                    revert with 0, 18
                                                if stor7[address(cd[36])].field_0 > !(0 / 10^stor7[address(cd[36])].field_768):
                                                    revert with 0, 17
                                                stor7[address(cd[36])].field_0 += 0 / 10^stor7[address(cd[36])].field_768
                                            else:
                                                s = 10
                                                t = 1
                                                idx = stor7[address(cd[36])].field_768
                                                while idx > 1:
                                                    if s > -1 / s:
                                                        revert with 0, 17
                                                    if not bool(idx):
                                                        s = s * s
                                                        t = t
                                                        idx = uint255(idx) * 0.5
                                                        continue 
                                                    s = s * s
                                                    t = s * t
                                                    idx = uint255(idx) * 0.5
                                                    continue 
                                                if t > -1 / s:
                                                    revert with 0, 17
                                                if False and stor7[address(cd[36])].field_256 > 0:
                                                    revert with 0, 17
                                                if not s * t:
                                                    revert with 0, 18
                                                if stor7[address(cd[36])].field_0 > !(0 / s * t):
                                                    revert with 0, 17
                                                stor7[address(cd[36])].field_0 += 0 / s * t
                                        call address(cd[36]).transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                    else:
                                        if stor7[address(cd[36])].field_256 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 17
                                        if not stor7[address(cd[36])].field_768:
                                            if stor7[address(cd[36])].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 17
                                            if t < 2 * stor7[address(cd[36])].field_0:
                                                revert with 0, 17
                                            if t - (2 * stor7[address(cd[36])].field_0) and 1 > -1 / t - (2 * stor7[address(cd[36])].field_0):
                                                revert with 0, 17
                                            if not 2 * stor7[address(cd[36])].field_256:
                                                revert with 0, 18
                                            if not stor7[address(cd[36])].field_768:
                                                if t - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256 and stor7[address(cd[36])].field_256 > -1 / t - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256:
                                                    revert with 0, 17
                                                if stor7[address(cd[36])].field_0 > !(t - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256):
                                                    revert with 0, 17
                                                stor7[address(cd[36])].field_0 += t - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256
                                            else:
                                                if bool(bool(stor7[address(cd[36])].field_768 < 78)) or bool(bool(stor7[address(cd[36])].field_768 < 32)):
                                                    if t - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256 and stor7[address(cd[36])].field_256 > -1 / t - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256:
                                                        revert with 0, 17
                                                    if not 10^stor7[address(cd[36])].field_768:
                                                        revert with 0, 18
                                                    if stor7[address(cd[36])].field_0 > !(t - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / 10^stor7[address(cd[36])].field_768):
                                                        revert with 0, 17
                                                    stor7[address(cd[36])].field_0 += t - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / 10^stor7[address(cd[36])].field_768
                                                else:
                                                    s = 10
                                                    u = 1
                                                    idx = stor7[address(cd[36])].field_768
                                                    while idx > 1:
                                                        if s > -1 / s:
                                                            revert with 0, 17
                                                        if not bool(idx):
                                                            s = s * s
                                                            u = u
                                                            idx = uint255(idx) * 0.5
                                                            continue 
                                                        s = s * s
                                                        u = s * u
                                                        idx = uint255(idx) * 0.5
                                                        continue 
                                                    if u > -1 / s:
                                                        revert with 0, 17
                                                    if t - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256 and stor7[address(cd[36])].field_256 > -1 / t - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256:
                                                        revert with 0, 17
                                                    if not s * u:
                                                        revert with 0, 18
                                                    if stor7[address(cd[36])].field_0 > !(t - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / s * u):
                                                        revert with 0, 17
                                                    stor7[address(cd[36])].field_0 += t - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / s * u
                                            call address(cd[36]).transfer(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, t - (2 * stor7[address(cd[36])].field_0) / 2 * stor7[address(cd[36])].field_256
                                        else:
                                            if bool(bool(stor7[address(cd[36])].field_768 < 78)) or bool(bool(stor7[address(cd[36])].field_768 < 32)):
                                                if stor7[address(cd[36])].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 17
                                                if t < 2 * stor7[address(cd[36])].field_0:
                                                    revert with 0, 17
                                                if t - (2 * stor7[address(cd[36])].field_0) and 10^stor7[address(cd[36])].field_768 > -1 / t - (2 * stor7[address(cd[36])].field_0):
                                                    revert with 0, 17
                                                if not 2 * stor7[address(cd[36])].field_256:
                                                    revert with 0, 18
                                                if not stor7[address(cd[36])].field_768:
                                                    if (t * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256 and stor7[address(cd[36])].field_256 > -1 / (t * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256:
                                                        revert with 0, 17
                                                    if stor7[address(cd[36])].field_0 > !((t * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256):
                                                        revert with 0, 17
                                                    stor7[address(cd[36])].field_0 += (t * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256
                                                else:
                                                    if bool(bool(stor7[address(cd[36])].field_768 < 78)) or bool(bool(stor7[address(cd[36])].field_768 < 32)):
                                                        if (t * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256 and stor7[address(cd[36])].field_256 > -1 / (t * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256:
                                                            revert with 0, 17
                                                        if not 10^stor7[address(cd[36])].field_768:
                                                            revert with 0, 18
                                                        if stor7[address(cd[36])].field_0 > !((t * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / 10^stor7[address(cd[36])].field_768):
                                                            revert with 0, 17
                                                        stor7[address(cd[36])].field_0 += (t * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / 10^stor7[address(cd[36])].field_768
                                                    else:
                                                        s = 10
                                                        u = 1
                                                        idx = stor7[address(cd[36])].field_768
                                                        while idx > 1:
                                                            if s > -1 / s:
                                                                revert with 0, 17
                                                            if not bool(idx):
                                                                s = s * s
                                                                u = u
                                                                idx = uint255(idx) * 0.5
                                                                continue 
                                                            s = s * s
                                                            u = s * u
                                                            idx = uint255(idx) * 0.5
                                                            continue 
                                                        if u > -1 / s:
                                                            revert with 0, 17
                                                        if (t * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256 and stor7[address(cd[36])].field_256 > -1 / (t * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256:
                                                            revert with 0, 17
                                                        if not s * u:
                                                            revert with 0, 18
                                                        if stor7[address(cd[36])].field_0 > !((t * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / s * u):
                                                            revert with 0, 17
                                                        stor7[address(cd[36])].field_0 += (t * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / s * u
                                                call address(cd[36]).transfer(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (t * 10^stor7[address(cd[36])].field_768) - (2 * stor7[address(cd[36])].field_0 * 10^stor7[address(cd[36])].field_768) / 2 * stor7[address(cd[36])].field_256
                                            else:
                                                s = 10
                                                u = 1
                                                idx = stor7[address(cd[36])].field_768
                                                while idx > 1:
                                                    if s > -1 / s:
                                                        revert with 0, 17
                                                    if not bool(idx):
                                                        s = s * s
                                                        u = u
                                                        idx = uint255(idx) * 0.5
                                                        continue 
                                                    s = s * s
                                                    u = s * u
                                                    idx = uint255(idx) * 0.5
                                                    continue 
                                                if u > -1 / s:
                                                    revert with 0, 17
                                                if stor7[address(cd[36])].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 17
                                                if t < 2 * stor7[address(cd[36])].field_0:
                                                    revert with 0, 17
                                                if t - (2 * stor7[address(cd[36])].field_0) and s * u > -1 / t - (2 * stor7[address(cd[36])].field_0):
                                                    revert with 0, 17
                                                if not 2 * stor7[address(cd[36])].field_256:
                                                    revert with 0, 18
                                                if not stor7[address(cd[36])].field_768:
                                                    if (t * s * u) - (2 * stor7[address(cd[36])].field_0 * s * u) / 2 * stor7[address(cd[36])].field_256 and stor7[address(cd[36])].field_256 > -1 / (t * s * u) - (2 * stor7[address(cd[36])].field_0 * s * u) / 2 * stor7[address(cd[36])].field_256:
                                                        revert with 0, 17
                                                    if stor7[address(cd[36])].field_0 > !((t * s * u) - (2 * stor7[address(cd[36])].field_0 * s * u) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256):
                                                        revert with 0, 17
                                                    stor7[address(cd[36])].field_0 += (t * s * u) - (2 * stor7[address(cd[36])].field_0 * s * u) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256
                                                else:
                                                    if bool(bool(stor7[address(cd[36])].field_768 < 78)) or bool(bool(stor7[address(cd[36])].field_768 < 32)):
                                                        if (t * s * u) - (2 * stor7[address(cd[36])].field_0 * s * u) / 2 * stor7[address(cd[36])].field_256 and stor7[address(cd[36])].field_256 > -1 / (t * s * u) - (2 * stor7[address(cd[36])].field_0 * s * u) / 2 * stor7[address(cd[36])].field_256:
                                                            revert with 0, 17
                                                        if not 10^stor7[address(cd[36])].field_768:
                                                            revert with 0, 18
                                                        if stor7[address(cd[36])].field_0 > !((t * s * u) - (2 * stor7[address(cd[36])].field_0 * s * u) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / 10^stor7[address(cd[36])].field_768):
                                                            revert with 0, 17
                                                        stor7[address(cd[36])].field_0 += (t * s * u) - (2 * stor7[address(cd[36])].field_0 * s * u) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / 10^stor7[address(cd[36])].field_768
                                                    else:
                                                        v = 10
                                                        w = 1
                                                        idx = stor7[address(cd[36])].field_768
                                                        while idx > 1:
                                                            if v > -1 / v:
                                                                revert with 0, 17
                                                            if not bool(idx):
                                                                v = v * v
                                                                w = w
                                                                idx = uint255(idx) * 0.5
                                                                continue 
                                                            v = v * v
                                                            w = v * w
                                                            idx = uint255(idx) * 0.5
                                                            continue 
                                                        if w > -1 / v:
                                                            revert with 0, 17
                                                        if (t * s * u) - (2 * stor7[address(cd[36])].field_0 * s * u) / 2 * stor7[address(cd[36])].field_256 and stor7[address(cd[36])].field_256 > -1 / (t * s * u) - (2 * stor7[address(cd[36])].field_0 * s * u) / 2 * stor7[address(cd[36])].field_256:
                                                            revert with 0, 17
                                                        if not v * w:
                                                            revert with 0, 18
                                                        if stor7[address(cd[36])].field_0 > !((t * s * u) - (2 * stor7[address(cd[36])].field_0 * s * u) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / v * w):
                                                            revert with 0, 17
                                                        stor7[address(cd[36])].field_0 += (t * s * u) - (2 * stor7[address(cd[36])].field_0 * s * u) / 2 * stor7[address(cd[36])].field_256 * stor7[address(cd[36])].field_256 / v * w
                                                call address(cd[36]).transfer(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (t * s * u) - (2 * stor7[address(cd[36])].field_0 * s * u) / 2 * stor7[address(cd[36])].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    emit Swap((10000 * cd[68]) - (sub_701c580c * cd[68]) / 10000, stor7[address(cd[36])].field_0, stor7[address(cd[36])].field_0, address(cd[4]), address(cd[36]));
                if sub_61f8967c > maxfee:
                    if sub_61f8967c > 0x1111111111111111111111111111111111111111111111111111111111111111:
                        revert with 0, 17
                    call sub_d483a2aaAddress.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_76aa6d62Address, 15 * sub_61f8967c / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if sub_61f8967c > 0x303030303030303030303030303030303030303030303030303030303030303:
                        revert with 0, 17
                    call sub_d483a2aaAddress.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_47a3a62aAddress, 85 * sub_61f8967c / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    sub_61f8967c = 0
}



}
