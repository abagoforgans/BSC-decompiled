contract main {




// =====================  Runtime code  =====================


#
#  - sub_6048ab15(?)
#  - sub_f1979220(?)
#
const getBalance = eth.balance(this.address)

const chi = 0x4946c0e9f43f4dee607b0ef1fa1c


array of address sub_f8a64f9a;
address owner;
address CHIAddress;
address sub_cc2ca7a5Address;
address ROUTERAddress;
address sub_2d7f13afAddress;
address stor6;
address stor7;
uint128 stor8; offset 168
uint128 stor8; offset 160
address stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11; offset 32
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint8 stor15;

function sub_2d7f13af(?) {
    return sub_2d7f13afAddress
}

function ROUTER() {
    return ROUTERAddress
}

function CHI() {
    return CHIAddress
}

function getOwner() {
    return owner
}

function sub_cc2ca7a5(?) {
    return sub_cc2ca7a5Address
}

function sub_f8a64f9a(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_f8a64f9a.length
    return sub_f8a64f9a[arg1]
}

function deposit() payable {
  stop
}

function _fallback() payable {
    revert
}

function sub_950d511d(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    stor13 = arg1
}

function sub_59986050(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == owner
    stor7 = address(arg1)
}

function sub_32527b95(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    require msg.sender == owner
    stor15 = uint8(bool(arg1))
}

function sub_0ba098ac(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == owner
    ROUTERAddress = address(arg1)
}

function sub_7a6976b5(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == owner
    address(stor8.field_0) = address(arg1)
}

function sub_13bf1cc0(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    require msg.sender == owner
    Mask(96, 0, stor8.field_160) = Mask(96, 0, bool(arg1))
}

function sub_167f1be3(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    require msg.sender == owner
    Mask(88, 0, stor8.field_168) = Mask(88, 0, bool(arg1))
}

function sub_fab00b2d(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    if arg1 and 100 > -1 / arg1:
        revert with 'NH{q', 17
    stor10 = 100 * arg1
}

function withdraw() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_805f4202(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    idx = 0
    while idx < arg1:
        mem[96 len 3688] = code.data[19076 len 3688]
        create contract with 0 wei
                        code: code.data[19076 len 3688]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        sub_f8a64f9a.length++
        mem[0] = 0
        sub_f8a64f9a[sub_f8a64f9a.length] = address(create.new_address)
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_318b2a68(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == owner
    idx = arg1
    while idx < arg2:
        if idx >= sub_f8a64f9a.length:
            revert with 'NH{q', 50
        mem[0] = 0
        require ext_code.size(sub_f8a64f9a[idx])
        call sub_f8a64f9a[idx].0x3ccfd60b with:
             gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _9 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_9] == bool(mem[_9])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function withdrawERC(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not arg2:
        revert with 'NH{q', 18
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0] / arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function getPath(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_2d7f13afAddress == sub_cc2ca7a5Address:
        if not arg1:
            mem[128] = sub_cc2ca7a5Address
            mem[160] = stor6
        else:
            mem[128] = stor6
            mem[160] = sub_cc2ca7a5Address
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
    if not arg1:
        mem[128] = sub_cc2ca7a5Address
        mem[160] = sub_2d7f13afAddress
        mem[192] = stor6
    else:
        mem[128] = stor6
        mem[160] = sub_2d7f13afAddress
        mem[192] = sub_cc2ca7a5Address
    mem[224] = 32
    idx = 0
    s = 128
    t = 288
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return Array(len=3, data=mem[288 len 96])
}

function sub_7f764e9c(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require msg.sender == owner
    idx = arg3
    while idx < arg4:
        if idx >= sub_f8a64f9a.length:
            revert with 'NH{q', 50
        mem[0] = 0
        mem[mem[64] + 4] = sub_f8a64f9a[idx]
        require ext_code.size(address(arg1))
        staticcall address(arg1).balanceOf(address arg1) with:
                gas gas_remaining wei
               args sub_f8a64f9a[idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _11 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_11] == mem[_11]
        if mem[_11] > 0:
            mem[mem[64]] = 0xa4ef9df400000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = arg2
            require ext_code.size(sub_f8a64f9a[idx])
            call sub_f8a64f9a[idx].0xa4ef9df4 with:
                 gas gas_remaining wei
                args address(arg1), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_ec767092(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    idx = arg3
    while idx < arg4:
        if idx >= sub_f8a64f9a.length:
            revert with 'NH{q', 50
        mem[0] = 0
        mem[mem[64] + 4] = sub_f8a64f9a[idx]
        require ext_code.size(stor6)
        staticcall stor6.balanceOf(address arg1) with:
                gas gas_remaining wei
               args sub_f8a64f9a[idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _13 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_13] == mem[_13]
        if mem[_13] > 0:
            mem[mem[64]] = 0xdd1ea60000000000000000000000000000000000000000000000000000000 * 24 * 3600
            mem[mem[64] + 4] = stor6
            mem[mem[64] + 36] = arg1
            mem[mem[64] + 68] = arg2
            mem[mem[64] + 100] = ROUTERAddress
            require ext_code.size(sub_f8a64f9a[idx])
            call sub_f8a64f9a[idx].0xc257efe6 with:
                 gas gas_remaining wei
                args stor6, arg1, arg2, ROUTERAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if calldata.size > 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if 21000 > -gas_remaining - 1:
        revert with 'NH{q', 17
    if gas_remaining + 21000 < gas_remaining:
        revert with 'NH{q', 17
    if 21000 > -(16 * calldata.size) - 1:
        revert with 'NH{q', 17
    if (16 * calldata.size) + 21000 > -14155:
        revert with 'NH{q', 17
    require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
    call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeFromUpTo(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, (16 * calldata.size) + 35154 / 41947
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_76594e77(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require msg.sender == owner
    stor6 = address(arg1)
    sub_2d7f13afAddress = address(arg2)
    stor9 = arg3
    if not stor9:
        if arg4 and 1 > -1 / arg4:
            revert with 'NH{q', 17
        uint256(stor11.field_0) = arg4
    else:
        if bool(bool(stor9 < 78)) or bool(bool(stor9 < 32)):
            if 10^stor9 > -1:
                revert with 'NH{q', 17
            if arg4 and 10^stor9 > -1 / arg4:
                revert with 'NH{q', 17
            uint256(stor11.field_0) = arg4 * 10^stor9
        else:
            s = 10
            t = 1
            idx = stor9
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = t * s
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 'NH{q', 17
            if arg4 and t * s > -1 / arg4:
                revert with 'NH{q', 17
            uint256(stor11.field_0) = arg4 * t * s
    if not stor9:
        if arg5 and 1 > -1 / arg5:
            revert with 'NH{q', 17
        stor12 = arg5
    else:
        if bool(bool(stor9 < 78)) or bool(bool(stor9 < 32)):
            if 10^stor9 > -1:
                revert with 'NH{q', 17
            if arg5 and 10^stor9 > -1 / arg5:
                revert with 'NH{q', 17
            stor12 = arg5 * 10^stor9
        else:
            s = 10
            t = 1
            idx = stor9
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = t * s
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 'NH{q', 17
            if arg5 and t * s > -1 / arg5:
                revert with 'NH{q', 17
            stor12 = arg5 * t * s
    stor14 = 0
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args ROUTERAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_cc2ca7a5Address)
    call sub_cc2ca7a5Address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args ROUTERAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(stor8.field_0))
    call address(stor8.field_0).0xb43bd604 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), ROUTERAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_cb1044e9(?) {
    if sub_2d7f13afAddress == sub_cc2ca7a5Address:
        mem[96] = 2
        mem[128] = sub_cc2ca7a5Address
        mem[160] = stor6
        if block.timestamp > -10:
            revert with 'NH{q', 17
        mem[192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
        mem[196] = 0
        mem[228] = 128
        mem[324] = 2
        idx = 0
        s = 128
        t = 356
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[260] = this.address
        mem[292] = block.timestamp + 9
        require ext_code.size(ROUTERAddress)
        call ROUTERAddress.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value 10^10 wei
             gas gas_remaining wei
            args 0, 128, address(this.address), block.timestamp + 9, 2, mem[356 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _33 = mem[192 len 4], 0
        require mem[192 len 4], 0 <= test266151307()
        require mem[192 len 4], 0 + 223 < return_data.size + 192
        _35 = mem[mem[192 len 4], 0 + 192]
        if mem[mem[192 len 4], 0 + 192] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
        require _33 + (32 * _35) + 32 <= return_data.size
        idx = 0
        s = _33 + 224
        t = ceil32(return_data.size) + 224
        while idx < _35:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
    else:
        mem[96] = 3
        mem[128] = sub_cc2ca7a5Address
        mem[160] = sub_2d7f13afAddress
        mem[192] = stor6
        if block.timestamp > -10:
            revert with 'NH{q', 17
        mem[224] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
        mem[228] = 0
        mem[260] = 128
        mem[356] = 3
        idx = 0
        s = 128
        t = 388
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[292] = this.address
        mem[324] = block.timestamp + 9
        require ext_code.size(ROUTERAddress)
        call ROUTERAddress.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value 10^10 wei
             gas gas_remaining wei
            args 0, 128, address(this.address), block.timestamp + 9, 3, mem[388 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 32
        _32 = mem[224 len 4], 0
        require mem[224 len 4], 0 <= test266151307()
        require mem[224 len 4], 0 + 255 < return_data.size + 224
        _34 = mem[mem[224 len 4], 0 + 224]
        if mem[mem[224 len 4], 0 + 224] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], 0 + 224]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225
        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
        require _32 + (32 * _34) + 32 <= return_data.size
        idx = 0
        s = _32 + 256
        t = ceil32(return_data.size) + 256
        while idx < _34:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
}

function sub_47f7cb48(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        mem[128] = stor6
        if sub_2d7f13afAddress == sub_cc2ca7a5Address:
            mem[160] = sub_cc2ca7a5Address
            if block.timestamp > -10:
                revert with 'NH{q', 17
            mem[192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[196] = arg2
            idx = 0
            s = 128
            t = 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(ROUTERAddress)
            call ROUTERAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg2, 0, 160, owner, block.timestamp + 9, 2, mem[388 len 64]
        else:
            mem[160] = sub_2d7f13afAddress
            mem[192] = sub_cc2ca7a5Address
            if block.timestamp > -10:
                revert with 'NH{q', 17
            mem[224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[228] = arg2
            idx = 0
            s = 128
            t = 420
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(ROUTERAddress)
            call ROUTERAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg2, 0, 160, owner, block.timestamp + 9, 3, mem[420 len 96]
    else:
        require ext_code.size(stor6)
        staticcall stor6.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if not arg1:
            revert with 'NH{q', 18
        mem[ceil32(return_data.size) + 128] = stor6
        if sub_2d7f13afAddress == sub_cc2ca7a5Address:
            mem[ceil32(return_data.size) + 160] = sub_cc2ca7a5Address
            if block.timestamp > -10:
                revert with 'NH{q', 17
            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = ext_call.return_data[0] / arg1
            idx = 0
            s = ceil32(return_data.size) + 128
            t = ceil32(return_data.size) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(ROUTERAddress)
            call ROUTERAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0] / arg1, 0, 160, owner, block.timestamp + 9, 2, mem[ceil32(return_data.size) + 388 len 64]
        else:
            mem[ceil32(return_data.size) + 160] = sub_2d7f13afAddress
            mem[ceil32(return_data.size) + 192] = sub_cc2ca7a5Address
            if block.timestamp > -10:
                revert with 'NH{q', 17
            mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 228] = ext_call.return_data[0] / arg1
            idx = 0
            s = ceil32(return_data.size) + 128
            t = ceil32(return_data.size) + 420
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(ROUTERAddress)
            call ROUTERAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0] / arg1, 0, 160, owner, block.timestamp + 9, 3, mem[ceil32(return_data.size) + 420 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ee0be597(?) {
    if sub_2d7f13afAddress == sub_cc2ca7a5Address:
        mem[96] = 2
        mem[128] = sub_cc2ca7a5Address
        mem[160] = stor6
        mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[196] = uint256(stor11.field_0)
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
        require ext_code.size(ROUTERAddress)
        staticcall ROUTERAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args uint256(stor11.field_0), Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _41 = mem[192 len 4], Mask(224, 0, stor11.field_32)
        require mem[192 len 4], Mask(224, 0, stor11.field_32) <= test266151307()
        require mem[192 len 4], Mask(224, 0, stor11.field_32) + 223 < return_data.size + 192
        _43 = mem[mem[192 len 4], Mask(224, 0, stor11.field_32) + 192]
        if mem[mem[192 len 4], Mask(224, 0, stor11.field_32) + 192] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 0, stor11.field_32) + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 0, stor11.field_32) + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 0, stor11.field_32) + 192]) + 193
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 0, stor11.field_32) + 192]
        require _41 + (32 * _43) + 32 <= return_data.size
        idx = 0
        s = _41 + 224
        t = ceil32(return_data.size) + 224
        while idx < _43:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 0 >= _43:
            revert with 'NH{q', 50
        mem[mem[64]] = mem[ceil32(return_data.size) + 224]
    else:
        mem[96] = 3
        mem[128] = sub_cc2ca7a5Address
        mem[160] = sub_2d7f13afAddress
        mem[192] = stor6
        mem[224] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[228] = uint256(stor11.field_0)
        mem[260] = 64
        mem[292] = 3
        idx = 0
        s = 128
        t = 324
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(ROUTERAddress)
        staticcall ROUTERAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args uint256(stor11.field_0), Array(len=3, data=mem[324 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 32
        _40 = mem[224 len 4], Mask(224, 0, stor11.field_32)
        require mem[224 len 4], Mask(224, 0, stor11.field_32) <= test266151307()
        require mem[224 len 4], Mask(224, 0, stor11.field_32) + 255 < return_data.size + 224
        _42 = mem[mem[224 len 4], Mask(224, 0, stor11.field_32) + 224]
        if mem[mem[224 len 4], Mask(224, 0, stor11.field_32) + 224] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[224 len 4], Mask(224, 0, stor11.field_32) + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], Mask(224, 0, stor11.field_32) + 224]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], Mask(224, 0, stor11.field_32) + 224]) + 225
        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 0, stor11.field_32) + 224]
        require _40 + (32 * _42) + 32 <= return_data.size
        idx = 0
        s = _40 + 256
        t = ceil32(return_data.size) + 256
        while idx < _42:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 0 >= _42:
            revert with 'NH{q', 50
        mem[mem[64]] = mem[ceil32(return_data.size) + 256]
    return memory
      from mem[64]
       len 32
}

function sub_b5ee5cae(?) payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    s = 0
    while idx < sub_f8a64f9a.length:
        mem[0] = 0
        mem[mem[64] + 4] = sub_f8a64f9a[idx]
        require ext_code.size(stor6)
        staticcall stor6.balanceOf(address arg1) with:
                gas gas_remaining wei
               args sub_f8a64f9a[idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _18 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_18] == mem[_18]
        if s > -mem[_18] - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + mem[_18]
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor6)
    staticcall stor6.balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _17 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_17] == mem[_17]
    if s * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length > -mem[_17] - 1:
        revert with 'NH{q', 17
    mem[mem[64]] = (s * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length * sub_f8a64f9a.length) + mem[_17]
    return memory
      from mem[64]
       len 32
}

function sub_e99786d2(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint256(stor11.field_0) and arg1 > -1 / uint256(stor11.field_0):
        revert with 'NH{q', 17
    if sub_2d7f13afAddress == sub_cc2ca7a5Address:
        mem[96] = 2
        mem[128] = sub_cc2ca7a5Address
        mem[160] = stor6
        mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[196] = uint256(stor11.field_0) * arg1
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
        require ext_code.size(ROUTERAddress)
        staticcall ROUTERAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args uint256(stor11.field_0) * arg1, Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _41 = mem[192 len 4], Mask(224, 32, uint256(stor11.field_0) * arg1) >> 32
        require mem[192 len 4], Mask(224, 32, uint256(stor11.field_0) * arg1) >> 32 <= test266151307()
        require mem[192 len 4], Mask(224, 32, uint256(stor11.field_0) * arg1) >> 32 + 223 < return_data.size + 192
        _43 = mem[mem[192 len 4], Mask(224, 32, uint256(stor11.field_0) * arg1) >> 32 + 192]
        if mem[mem[192 len 4], Mask(224, 32, uint256(stor11.field_0) * arg1) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, uint256(stor11.field_0) * arg1) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, uint256(stor11.field_0) * arg1) >> 32 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, uint256(stor11.field_0) * arg1) >> 32 + 192]) + 193
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, uint256(stor11.field_0) * arg1) >> 32 + 192]
        require _41 + (32 * _43) + 32 <= return_data.size
        idx = 0
        s = _41 + 224
        t = ceil32(return_data.size) + 224
        while idx < _43:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 0 >= _43:
            revert with 'NH{q', 50
        mem[mem[64]] = mem[ceil32(return_data.size) + 224]
    else:
        mem[96] = 3
        mem[128] = sub_cc2ca7a5Address
        mem[160] = sub_2d7f13afAddress
        mem[192] = stor6
        mem[224] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[228] = uint256(stor11.field_0) * arg1
        mem[260] = 64
        mem[292] = 3
        idx = 0
        s = 128
        t = 324
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(ROUTERAddress)
        staticcall ROUTERAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args uint256(stor11.field_0) * arg1, Array(len=3, data=mem[324 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 32
        _40 = mem[224 len 4], Mask(224, 32, uint256(stor11.field_0) * arg1) >> 32
        require mem[224 len 4], Mask(224, 32, uint256(stor11.field_0) * arg1) >> 32 <= test266151307()
        require mem[224 len 4], Mask(224, 32, uint256(stor11.field_0) * arg1) >> 32 + 255 < return_data.size + 224
        _42 = mem[mem[224 len 4], Mask(224, 32, uint256(stor11.field_0) * arg1) >> 32 + 224]
        if mem[mem[224 len 4], Mask(224, 32, uint256(stor11.field_0) * arg1) >> 32 + 224] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[224 len 4], Mask(224, 32, uint256(stor11.field_0) * arg1) >> 32 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], Mask(224, 32, uint256(stor11.field_0) * arg1) >> 32 + 224]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], Mask(224, 32, uint256(stor11.field_0) * arg1) >> 32 + 224]) + 225
        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, uint256(stor11.field_0) * arg1) >> 32 + 224]
        require _40 + (32 * _42) + 32 <= return_data.size
        idx = 0
        s = _40 + 256
        t = ceil32(return_data.size) + 256
        while idx < _42:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 0 >= _42:
            revert with 'NH{q', 50
        mem[mem[64]] = mem[ceil32(return_data.size) + 256]
    return memory
      from mem[64]
       len 32
}

function sub_281a320f(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_2d7f13afAddress == sub_cc2ca7a5Address:
        mem[96] = 2
        mem[128] = sub_cc2ca7a5Address
        mem[160] = stor6
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
        require ext_code.size(ROUTERAddress)
        staticcall ROUTERAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg1, Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _103 = mem[192 len 4], Mask(224, 32, arg1) >> 32
        require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223 < return_data.size + 192
        _105 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
        if mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
        require _103 + (32 * _105) + 32 <= return_data.size
        idx = 0
        s = _103 + 224
        t = ceil32(return_data.size) + 224
        while idx < _105:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if sub_2d7f13afAddress == sub_cc2ca7a5Address:
            _185 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_185]:
                revert with 'NH{q', 50
            mem[_185 + 32] = sub_cc2ca7a5Address
            if 1 >= mem[_185]:
                revert with 'NH{q', 50
            mem[_185 + 64] = stor6
            mem[_185 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_185 + 100] = arg1
            mem[_185 + 132] = 64
            mem[_185 + 164] = mem[_185]
            idx = 0
            s = _185 + 32
            t = _185 + 196
            while idx < mem[_185]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(ROUTERAddress)
            staticcall ROUTERAddress.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _185 + (32 * mem[_185]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _263 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _267 = mem[_263]
            require mem[_263] <= test266151307()
            require _263 + mem[_263] + 31 < _263 + return_data.size
            _271 = mem[_263 + mem[_263]]
            if mem[_263 + mem[_263]] > test266151307():
                revert with 'NH{q', 65
            if _263 + ceil32(return_data.size) + floor32(mem[_263 + mem[_263]]) + 1 > test266151307() or floor32(mem[_263 + mem[_263]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _263 + ceil32(return_data.size) + floor32(mem[_263 + mem[_263]]) + 1
            mem[_263 + ceil32(return_data.size)] = _271
            require _267 + (32 * _271) + 32 <= return_data.size
            idx = 0
            s = _263 + _267 + 32
            t = _263 + ceil32(return_data.size) + 32
            while idx < _271:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _271 < 1:
                revert with 'NH{q', 17
            if _271 - 1 >= mem[ceil32(return_data.size) + 192]:
                revert with 'NH{q', 50
            mem[mem[64]] = mem[(32 * _271 - 1) + ceil32(return_data.size) + 224]
        else:
            _184 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            if 0 >= mem[_184]:
                revert with 'NH{q', 50
            mem[_184 + 32] = sub_cc2ca7a5Address
            if 1 >= mem[_184]:
                revert with 'NH{q', 50
            mem[_184 + 64] = sub_2d7f13afAddress
            if 2 >= mem[_184]:
                revert with 'NH{q', 50
            mem[_184 + 96] = stor6
            mem[_184 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_184 + 132] = arg1
            mem[_184 + 164] = 64
            mem[_184 + 196] = mem[_184]
            idx = 0
            s = _184 + 32
            t = _184 + 228
            while idx < mem[_184]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(ROUTERAddress)
            staticcall ROUTERAddress.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _184 + (32 * mem[_184]) + -mem[64] + 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _262 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _266 = mem[_262]
            require mem[_262] <= test266151307()
            require _262 + mem[_262] + 31 < _262 + return_data.size
            _270 = mem[_262 + mem[_262]]
            if mem[_262 + mem[_262]] > test266151307():
                revert with 'NH{q', 65
            if _262 + ceil32(return_data.size) + floor32(mem[_262 + mem[_262]]) + 1 > test266151307() or floor32(mem[_262 + mem[_262]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _262 + ceil32(return_data.size) + floor32(mem[_262 + mem[_262]]) + 1
            mem[_262 + ceil32(return_data.size)] = _270
            require _266 + (32 * _270) + 32 <= return_data.size
            idx = 0
            s = _262 + _266 + 32
            t = _262 + ceil32(return_data.size) + 32
            while idx < _270:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _270 < 1:
                revert with 'NH{q', 17
            if _270 - 1 >= mem[ceil32(return_data.size) + 192]:
                revert with 'NH{q', 50
            mem[mem[64]] = mem[(32 * _270 - 1) + ceil32(return_data.size) + 224]
    else:
        mem[96] = 3
        mem[128] = sub_cc2ca7a5Address
        mem[160] = sub_2d7f13afAddress
        mem[192] = stor6
        mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[228] = arg1
        mem[260] = 64
        mem[292] = 3
        idx = 0
        s = 128
        t = 324
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(ROUTERAddress)
        staticcall ROUTERAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg1, Array(len=3, data=mem[324 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 32
        _102 = mem[224 len 4], Mask(224, 32, arg1) >> 32
        require mem[224 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require mem[224 len 4], Mask(224, 32, arg1) >> 32 + 255 < return_data.size + 224
        _104 = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
        if mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 225
        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
        require _102 + (32 * _104) + 32 <= return_data.size
        idx = 0
        s = _102 + 256
        t = ceil32(return_data.size) + 256
        while idx < _104:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if sub_2d7f13afAddress == sub_cc2ca7a5Address:
            _183 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_183]:
                revert with 'NH{q', 50
            mem[_183 + 32] = sub_cc2ca7a5Address
            if 1 >= mem[_183]:
                revert with 'NH{q', 50
            mem[_183 + 64] = stor6
            mem[_183 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_183 + 100] = arg1
            mem[_183 + 132] = 64
            mem[_183 + 164] = mem[_183]
            idx = 0
            s = _183 + 32
            t = _183 + 196
            while idx < mem[_183]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(ROUTERAddress)
            staticcall ROUTERAddress.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _183 + (32 * mem[_183]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _261 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _265 = mem[_261]
            require mem[_261] <= test266151307()
            require _261 + mem[_261] + 31 < _261 + return_data.size
            _269 = mem[_261 + mem[_261]]
            if mem[_261 + mem[_261]] > test266151307():
                revert with 'NH{q', 65
            if _261 + ceil32(return_data.size) + floor32(mem[_261 + mem[_261]]) + 1 > test266151307() or floor32(mem[_261 + mem[_261]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _261 + ceil32(return_data.size) + floor32(mem[_261 + mem[_261]]) + 1
            mem[_261 + ceil32(return_data.size)] = _269
            require _265 + (32 * _269) + 32 <= return_data.size
            idx = 0
            s = _261 + _265 + 32
            t = _261 + ceil32(return_data.size) + 32
            while idx < _269:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _269 < 1:
                revert with 'NH{q', 17
            if _269 - 1 >= mem[ceil32(return_data.size) + 224]:
                revert with 'NH{q', 50
            mem[mem[64]] = mem[(32 * _269 - 1) + ceil32(return_data.size) + 256]
        else:
            _182 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            if 0 >= mem[_182]:
                revert with 'NH{q', 50
            mem[_182 + 32] = sub_cc2ca7a5Address
            if 1 >= mem[_182]:
                revert with 'NH{q', 50
            mem[_182 + 64] = sub_2d7f13afAddress
            if 2 >= mem[_182]:
                revert with 'NH{q', 50
            mem[_182 + 96] = stor6
            mem[_182 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_182 + 132] = arg1
            mem[_182 + 164] = 64
            mem[_182 + 196] = mem[_182]
            idx = 0
            s = _182 + 32
            t = _182 + 228
            while idx < mem[_182]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(ROUTERAddress)
            staticcall ROUTERAddress.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _182 + (32 * mem[_182]) + -mem[64] + 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _260 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _264 = mem[_260]
            require mem[_260] <= test266151307()
            require _260 + mem[_260] + 31 < _260 + return_data.size
            _268 = mem[_260 + mem[_260]]
            if mem[_260 + mem[_260]] > test266151307():
                revert with 'NH{q', 65
            if _260 + ceil32(return_data.size) + floor32(mem[_260 + mem[_260]]) + 1 > test266151307() or floor32(mem[_260 + mem[_260]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _260 + ceil32(return_data.size) + floor32(mem[_260 + mem[_260]]) + 1
            mem[_260 + ceil32(return_data.size)] = _268
            require _264 + (32 * _268) + 32 <= return_data.size
            idx = 0
            s = _260 + _264 + 32
            t = _260 + ceil32(return_data.size) + 32
            while idx < _268:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _268 < 1:
                revert with 'NH{q', 17
            if _268 - 1 >= mem[ceil32(return_data.size) + 224]:
                revert with 'NH{q', 50
            mem[mem[64]] = mem[(32 * _268 - 1) + ceil32(return_data.size) + 256]
    return memory
      from mem[64]
       len 32
}

function sub_13dab3c8(?) {
    mem[100] = this.address
    require ext_code.size(stor6)
    staticcall stor6.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if 10000 < stor10:
        revert with 'NH{q', 17
    if -stor10 + 10000 > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
        revert with 'NH{q', 17
    if sub_2d7f13afAddress == sub_cc2ca7a5Address:
        mem[ceil32(return_data.size) + 96] = 2
        mem[ceil32(return_data.size) + 128] = sub_cc2ca7a5Address
        mem[ceil32(return_data.size) + 160] = stor6
        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = (-1 * 10^10 * stor10) + 10^14 / 10000
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
        require ext_code.size(ROUTERAddress)
        staticcall ROUTERAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args (-1 * 10^10 * stor10) + 10^14 / 10000, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _107 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (-1 * 10^10 * stor10) + 10^14 / 10000) >> 32
        require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (-1 * 10^10 * stor10) + 10^14 / 10000) >> 32 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (-1 * 10^10 * stor10) + 10^14 / 10000) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
        _109 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (-1 * 10^10 * stor10) + 10^14 / 10000) >> 32 + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (-1 * 10^10 * stor10) + 10^14 / 10000) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (-1 * 10^10 * stor10) + 10^14 / 10000) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (-1 * 10^10 * stor10) + 10^14 / 10000) >> 32 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (-1 * 10^10 * stor10) + 10^14 / 10000) >> 32 + 192]) + 193
        mem[(2 * ceil32(return_data.size)) + 192] = _109
        require _107 + (32 * _109) + 32 <= return_data.size
        idx = 0
        s = ceil32(return_data.size) + _107 + 224
        t = (2 * ceil32(return_data.size)) + 224
        while idx < _109:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if sub_2d7f13afAddress == sub_cc2ca7a5Address:
            _189 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_189]:
                revert with 'NH{q', 50
            mem[_189 + 32] = sub_cc2ca7a5Address
            if 1 >= mem[_189]:
                revert with 'NH{q', 50
            mem[_189 + 64] = stor6
            mem[_189 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_189 + 100] = (-1 * 10^10 * stor10) + 10^14 / 10000
            mem[_189 + 132] = 64
            mem[_189 + 164] = mem[_189]
            idx = 0
            s = _189 + 32
            t = _189 + 196
            while idx < mem[_189]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(ROUTERAddress)
            staticcall ROUTERAddress.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _189 + (32 * mem[_189]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _267 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _271 = mem[_267]
            require mem[_267] <= test266151307()
            require _267 + mem[_267] + 31 < _267 + return_data.size
            _275 = mem[_267 + mem[_267]]
            if mem[_267 + mem[_267]] > test266151307():
                revert with 'NH{q', 65
            if _267 + ceil32(return_data.size) + floor32(mem[_267 + mem[_267]]) + 1 > test266151307() or floor32(mem[_267 + mem[_267]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _267 + ceil32(return_data.size) + floor32(mem[_267 + mem[_267]]) + 1
            mem[_267 + ceil32(return_data.size)] = _275
            require _271 + (32 * _275) + 32 <= return_data.size
            idx = 0
            s = _267 + _271 + 32
            t = _267 + ceil32(return_data.size) + 32
            while idx < _275:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _275 < 1:
                revert with 'NH{q', 17
            if _275 - 1 >= mem[(2 * ceil32(return_data.size)) + 192]:
                revert with 'NH{q', 50
            mem[mem[64]] = mem[(32 * _275 - 1) + (2 * ceil32(return_data.size)) + 224] > ext_call.return_data[0]
        else:
            _188 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            if 0 >= mem[_188]:
                revert with 'NH{q', 50
            mem[_188 + 32] = sub_cc2ca7a5Address
            if 1 >= mem[_188]:
                revert with 'NH{q', 50
            mem[_188 + 64] = sub_2d7f13afAddress
            if 2 >= mem[_188]:
                revert with 'NH{q', 50
            mem[_188 + 96] = stor6
            mem[_188 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_188 + 132] = (-1 * 10^10 * stor10) + 10^14 / 10000
            mem[_188 + 164] = 64
            mem[_188 + 196] = mem[_188]
            idx = 0
            s = _188 + 32
            t = _188 + 228
            while idx < mem[_188]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(ROUTERAddress)
            staticcall ROUTERAddress.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _188 + (32 * mem[_188]) + -mem[64] + 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _266 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _270 = mem[_266]
            require mem[_266] <= test266151307()
            require _266 + mem[_266] + 31 < _266 + return_data.size
            _274 = mem[_266 + mem[_266]]
            if mem[_266 + mem[_266]] > test266151307():
                revert with 'NH{q', 65
            if _266 + ceil32(return_data.size) + floor32(mem[_266 + mem[_266]]) + 1 > test266151307() or floor32(mem[_266 + mem[_266]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _266 + ceil32(return_data.size) + floor32(mem[_266 + mem[_266]]) + 1
            mem[_266 + ceil32(return_data.size)] = _274
            require _270 + (32 * _274) + 32 <= return_data.size
            idx = 0
            s = _266 + _270 + 32
            t = _266 + ceil32(return_data.size) + 32
            while idx < _274:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _274 < 1:
                revert with 'NH{q', 17
            if _274 - 1 >= mem[(2 * ceil32(return_data.size)) + 192]:
                revert with 'NH{q', 50
            mem[mem[64]] = mem[(32 * _274 - 1) + (2 * ceil32(return_data.size)) + 224] > ext_call.return_data[0]
    else:
        mem[ceil32(return_data.size) + 96] = 3
        mem[ceil32(return_data.size) + 128] = sub_cc2ca7a5Address
        mem[ceil32(return_data.size) + 160] = sub_2d7f13afAddress
        mem[ceil32(return_data.size) + 192] = stor6
        mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 228] = (-1 * 10^10 * stor10) + 10^14 / 10000
        mem[ceil32(return_data.size) + 260] = 64
        mem[ceil32(return_data.size) + 292] = 3
        idx = 0
        s = ceil32(return_data.size) + 128
        t = ceil32(return_data.size) + 324
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(ROUTERAddress)
        staticcall ROUTERAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args (-1 * 10^10 * stor10) + 10^14 / 10000, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _106 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, (-1 * 10^10 * stor10) + 10^14 / 10000) >> 32
        require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, (-1 * 10^10 * stor10) + 10^14 / 10000) >> 32 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, (-1 * 10^10 * stor10) + 10^14 / 10000) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
        _108 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, (-1 * 10^10 * stor10) + 10^14 / 10000) >> 32 + 224]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, (-1 * 10^10 * stor10) + 10^14 / 10000) >> 32 + 224] > test266151307():
            revert with 'NH{q', 65
        if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, (-1 * 10^10 * stor10) + 10^14 / 10000) >> 32 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, (-1 * 10^10 * stor10) + 10^14 / 10000) >> 32 + 224]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, (-1 * 10^10 * stor10) + 10^14 / 10000) >> 32 + 224]) + 225
        mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, (-1 * 10^10 * stor10) + 10^14 / 10000) >> 32 + 224]
        require _106 + (32 * _108) + 32 <= return_data.size
        idx = 0
        s = ceil32(return_data.size) + _106 + 256
        t = (2 * ceil32(return_data.size)) + 256
        while idx < _108:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if sub_2d7f13afAddress == sub_cc2ca7a5Address:
            _187 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_187]:
                revert with 'NH{q', 50
            mem[_187 + 32] = sub_cc2ca7a5Address
            if 1 >= mem[_187]:
                revert with 'NH{q', 50
            mem[_187 + 64] = stor6
            mem[_187 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_187 + 100] = (-1 * 10^10 * stor10) + 10^14 / 10000
            mem[_187 + 132] = 64
            mem[_187 + 164] = mem[_187]
            idx = 0
            s = _187 + 32
            t = _187 + 196
            while idx < mem[_187]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(ROUTERAddress)
            staticcall ROUTERAddress.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _187 + (32 * mem[_187]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _265 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _269 = mem[_265]
            require mem[_265] <= test266151307()
            require _265 + mem[_265] + 31 < _265 + return_data.size
            _273 = mem[_265 + mem[_265]]
            if mem[_265 + mem[_265]] > test266151307():
                revert with 'NH{q', 65
            if _265 + ceil32(return_data.size) + floor32(mem[_265 + mem[_265]]) + 1 > test266151307() or floor32(mem[_265 + mem[_265]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _265 + ceil32(return_data.size) + floor32(mem[_265 + mem[_265]]) + 1
            mem[_265 + ceil32(return_data.size)] = _273
            require _269 + (32 * _273) + 32 <= return_data.size
            idx = 0
            s = _265 + _269 + 32
            t = _265 + ceil32(return_data.size) + 32
            while idx < _273:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _273 < 1:
                revert with 'NH{q', 17
            if _273 - 1 >= mem[(2 * ceil32(return_data.size)) + 224]:
                revert with 'NH{q', 50
            mem[mem[64]] = mem[(32 * _273 - 1) + (2 * ceil32(return_data.size)) + 256] > ext_call.return_data[0]
        else:
            _186 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            if 0 >= mem[_186]:
                revert with 'NH{q', 50
            mem[_186 + 32] = sub_cc2ca7a5Address
            if 1 >= mem[_186]:
                revert with 'NH{q', 50
            mem[_186 + 64] = sub_2d7f13afAddress
            if 2 >= mem[_186]:
                revert with 'NH{q', 50
            mem[_186 + 96] = stor6
            mem[_186 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_186 + 132] = (-1 * 10^10 * stor10) + 10^14 / 10000
            mem[_186 + 164] = 64
            mem[_186 + 196] = mem[_186]
            idx = 0
            s = _186 + 32
            t = _186 + 228
            while idx < mem[_186]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(ROUTERAddress)
            staticcall ROUTERAddress.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _186 + (32 * mem[_186]) + -mem[64] + 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _264 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _268 = mem[_264]
            require mem[_264] <= test266151307()
            require _264 + mem[_264] + 31 < _264 + return_data.size
            _272 = mem[_264 + mem[_264]]
            if mem[_264 + mem[_264]] > test266151307():
                revert with 'NH{q', 65
            if _264 + ceil32(return_data.size) + floor32(mem[_264 + mem[_264]]) + 1 > test266151307() or floor32(mem[_264 + mem[_264]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _264 + ceil32(return_data.size) + floor32(mem[_264 + mem[_264]]) + 1
            mem[_264 + ceil32(return_data.size)] = _272
            require _268 + (32 * _272) + 32 <= return_data.size
            idx = 0
            s = _264 + _268 + 32
            t = _264 + ceil32(return_data.size) + 32
            while idx < _272:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _272 < 1:
                revert with 'NH{q', 17
            if _272 - 1 >= mem[(2 * ceil32(return_data.size)) + 224]:
                revert with 'NH{q', 50
            mem[mem[64]] = mem[(32 * _272 - 1) + (2 * ceil32(return_data.size)) + 256] > ext_call.return_data[0]
    return memory
      from mem[64]
       len 32
}



}
