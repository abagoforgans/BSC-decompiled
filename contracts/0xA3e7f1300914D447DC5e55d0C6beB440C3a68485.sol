contract main {




// =====================  Runtime code  =====================


#
#  - sub_74bcecdb(?)
#
address stor0;
array of address sub_7285fd3a;
address WBNBAddress;
address ROUTERAddress;
address sub_93a39776Address;
uint8 stor5; offset 160
uint128 stor5; offset 160
address stor5;
uint256 stor6;
uint256 stor7; offset 32
uint256 stor7;
uint8 stor8;
uint256 stor9; offset 32
uint256 stor9;

function ROUTER() {
    return ROUTERAddress
}

function sub_638c9dd8(?) {
    return sub_7285fd3a.length
}

function sub_7285fd3a(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_7285fd3a.length
    return address(sub_7285fd3a[arg1])
}

function WBNB() {
    return WBNBAddress
}

function sub_93a39776(?) {
    return sub_93a39776Address
}

function deposit() payable {
  stop
}

function _fallback() payable {
    revert
}

function withdraw() {
    require msg.sender == stor0
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function approve(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args ROUTERAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_7d500ab7(?) {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == bool(arg3)
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == bool(arg6)
    require arg7 == arg7
    require msg.sender == stor0
    sub_93a39776Address = address(arg1)
    address(stor5.field_0) = address(arg2)
    Mask(96, 0, stor5.field_160) = Mask(96, 0, bool(arg3))
    stor6 = arg4
    uint256(stor7.field_0) = arg5
    stor8 = uint8(bool(arg6))
    uint256(stor9.field_0) = arg7
}

function sub_5e5ad066(?) payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == stor0
    idx = 0
    while idx < sub_7285fd3a.length:
        mem[0] = 1
        require ext_code.size(address(sub_7285fd3a[idx]))
        call address(sub_7285fd3a[idx]).0x3ccfd60b with:
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

function sub_5a092a86(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    sub_7285fd3a.length = 0
    idx = 0
    while sub_7285fd3a.length > idx:
        uint256(sub_7285fd3a[idx]) = 0
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg1:
        mem[96 len 5059] = code.data[11781 len 5059]
        create contract with 0 wei
                        code: code.data[11781 len 5059]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        sub_7285fd3a.length++
        mem[0] = 1
        address(sub_7285fd3a[sub_7285fd3a.length]) = address(create.new_address)
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function getPath(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_93a39776Address == WBNBAddress:
        mem[128] = sub_93a39776Address
        mem[160] = arg1
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
    mem[128] = WBNBAddress
    mem[160] = sub_93a39776Address
    mem[192] = arg1
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

function sub_5fcdb883(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == stor0
    idx = 0
    while idx < sub_7285fd3a.length:
        mem[0] = 1
        mem[mem[64] + 4] = address(sub_7285fd3a[idx])
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args address(sub_7285fd3a[idx])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _13 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_13] == mem[_13]
        if mem[_13] > 0:
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = sub_93a39776Address
            require ext_code.size(address(sub_7285fd3a[idx]))
            call address(sub_7285fd3a[idx]).sell(address arg1, address arg2) with:
                 gas gas_remaining wei
                args address(arg1), sub_93a39776Address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _17 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_17] == bool(mem[_17])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sell(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    mem[128] = arg1
    mem[160] = sub_93a39776Address
    if block.timestamp > -10:
        revert with 'NH{q', 17
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args ROUTERAddress, -1
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if sub_93a39776Address != WBNBAddress:
        mem[(2 * ceil32(return_data.size)) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
        idx = 0
        s = 128
        t = (2 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(ROUTERAddress)
        call ROUTERAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, stor0, block.timestamp + 9, 2, mem[(2 * ceil32(return_data.size)) + 388 len 64]
    else:
        mem[(2 * ceil32(return_data.size)) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
        idx = 0
        s = 128
        t = (2 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(ROUTERAddress)
        call ROUTERAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, stor0, block.timestamp + 9, 2, mem[(2 * ceil32(return_data.size)) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_3160a1fb(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if bool(arg2) == 1:
        idx = 0
        s = 0
        while idx < sub_7285fd3a.length:
            mem[0] = 1
            mem[mem[64] + 4] = address(sub_7285fd3a[idx])
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(sub_7285fd3a[idx])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _19 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_19] == mem[_19]
            if s > -mem[_19] - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + mem[_19]
            continue 
        return (s * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length * sub_7285fd3a.length)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_f9148525(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if msg.sender == address(stor5.field_0):
        if block.timestamp > -10:
            revert with 'NH{q', 17
        if sub_93a39776Address == WBNBAddress:
            mem[96] = 2
            mem[128] = sub_93a39776Address
            mem[160] = address(arg1)
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = uint256(stor7.field_0)
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
                   args uint256(stor7.field_0), Array(len=2, data=mem[292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _226 = mem[192 len 4], Mask(224, 0, stor7.field_32)
            require mem[192 len 4], Mask(224, 0, stor7.field_32) <= test266151307()
            require mem[192 len 4], Mask(224, 0, stor7.field_32) + 223 < return_data.size + 192
            _230 = mem[mem[192 len 4], Mask(224, 0, stor7.field_32) + 192]
            if mem[mem[192 len 4], Mask(224, 0, stor7.field_32) + 192] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 0, stor7.field_32) + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 0, stor7.field_32) + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 0, stor7.field_32) + 192]) + 193
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 0, stor7.field_32) + 192]
            require _226 + (32 * _230) + 32 <= return_data.size
            idx = _226 + 224
            s = ceil32(return_data.size) + 224
            while idx < _226 + (32 * _230) + 224:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            if _230 < 1:
                revert with 'NH{q', 17
            if _230 - 1 >= _230:
                revert with 'NH{q', 50
            _462 = mem[(32 * _230 - 1) + ceil32(return_data.size) + 224]
            if sub_93a39776Address == WBNBAddress:
                _468 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_468]:
                    revert with 'NH{q', 50
                mem[_468 + 32] = sub_93a39776Address
                if 1 >= mem[_468]:
                    revert with 'NH{q', 50
                mem[_468 + 64] = address(arg1)
                mem[_468 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[_468 + 100] = 0
                mem[_468 + 132] = 128
                mem[_468 + 228] = mem[_468]
                idx = 0
                s = _468 + 32
                t = _468 + 260
                while idx < mem[_468]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_468 + 164] = this.address
                mem[_468 + 196] = block.timestamp + 9
                require ext_code.size(ROUTERAddress)
                call ROUTERAddress.mem[mem[64] len 4] with:
                   value uint256(stor7.field_0) wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _468 + (32 * mem[_468]) + -mem[64] + 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _680 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _688 = mem[_680]
                require mem[_680] <= test266151307()
                require _680 + mem[_680] + 31 < _680 + return_data.size
                _696 = mem[_680 + mem[_680]]
                if mem[_680 + mem[_680]] > test266151307():
                    revert with 'NH{q', 65
                if _680 + ceil32(return_data.size) + floor32(mem[_680 + mem[_680]]) + 1 > test266151307() or floor32(mem[_680 + mem[_680]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _680 + ceil32(return_data.size) + floor32(mem[_680 + mem[_680]]) + 1
                mem[_680 + ceil32(return_data.size)] = _696
                require _688 + (32 * _696) + 32 <= return_data.size
                idx = _680 + _688 + 32
                s = _680 + ceil32(return_data.size) + 32
                while idx < _680 + _688 + (32 * _696) + 32:
                    require mem[idx] == mem[idx]
                    mem[s] = mem[idx]
                    idx = idx + 32
                    s = s + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _840 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _848 = mem[_840]
                require mem[_840] == mem[_840]
                if 10000 < stor6:
                    revert with 'NH{q', 17
                if _462 and -stor6 + 10000 > -1 / _462:
                    revert with 'NH{q', 17
                if (10000 * _462) - (stor6 * _462) / 10000 > mem[_840]:
                    stor8 = 1
                    revert with 0, 'HP/HT'
                Mask(96, 0, stor5.field_160) = 0
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = _848
                require ext_code.size(address(arg1))
                call address(arg1).0xa9059cbb with:
                     gas gas_remaining wei
                    args stor0, _848
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _888 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_888] == bool(mem[_888])
                if not mem[_888]:
                    revert with 0, 'HP/HT'
            else:
                _467 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                if 0 >= mem[_467]:
                    revert with 'NH{q', 50
                mem[_467 + 32] = WBNBAddress
                if 1 >= mem[_467]:
                    revert with 'NH{q', 50
                mem[_467 + 64] = sub_93a39776Address
                if 2 >= mem[_467]:
                    revert with 'NH{q', 50
                mem[_467 + 96] = address(arg1)
                mem[_467 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[_467 + 132] = 0
                mem[_467 + 164] = 128
                mem[_467 + 260] = mem[_467]
                idx = 0
                s = _467 + 32
                t = _467 + 292
                while idx < mem[_467]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_467 + 196] = this.address
                mem[_467 + 228] = block.timestamp + 9
                require ext_code.size(ROUTERAddress)
                call ROUTERAddress.mem[mem[64] len 4] with:
                   value uint256(stor7.field_0) wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _467 + (32 * mem[_467]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _679 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _687 = mem[_679]
                require mem[_679] <= test266151307()
                require _679 + mem[_679] + 31 < _679 + return_data.size
                _695 = mem[_679 + mem[_679]]
                if mem[_679 + mem[_679]] > test266151307():
                    revert with 'NH{q', 65
                if _679 + ceil32(return_data.size) + floor32(mem[_679 + mem[_679]]) + 1 > test266151307() or floor32(mem[_679 + mem[_679]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _679 + ceil32(return_data.size) + floor32(mem[_679 + mem[_679]]) + 1
                mem[_679 + ceil32(return_data.size)] = _695
                require _687 + (32 * _695) + 32 <= return_data.size
                idx = _679 + _687 + 32
                s = _679 + ceil32(return_data.size) + 32
                while idx < _679 + _687 + (32 * _695) + 32:
                    require mem[idx] == mem[idx]
                    mem[s] = mem[idx]
                    idx = idx + 32
                    s = s + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _839 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _847 = mem[_839]
                require mem[_839] == mem[_839]
                if 10000 < stor6:
                    revert with 'NH{q', 17
                if _462 and -stor6 + 10000 > -1 / _462:
                    revert with 'NH{q', 17
                if (10000 * _462) - (stor6 * _462) / 10000 > mem[_839]:
                    stor8 = 1
                    revert with 0, 'HP/HT'
                Mask(96, 0, stor5.field_160) = 0
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = _847
                require ext_code.size(address(arg1))
                call address(arg1).0xa9059cbb with:
                     gas gas_remaining wei
                    args stor0, _847
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _887 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_887] == bool(mem[_887])
                if not mem[_887]:
                    revert with 0, 'HP/HT'
        else:
            mem[96] = 3
            mem[128] = WBNBAddress
            mem[160] = sub_93a39776Address
            mem[192] = address(arg1)
            mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[228] = uint256(stor7.field_0)
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
                   args uint256(stor7.field_0), Array(len=3, data=mem[324 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 224
            require return_data.size >= 32
            _225 = mem[224 len 4], Mask(224, 0, stor7.field_32)
            require mem[224 len 4], Mask(224, 0, stor7.field_32) <= test266151307()
            require mem[224 len 4], Mask(224, 0, stor7.field_32) + 255 < return_data.size + 224
            _229 = mem[mem[224 len 4], Mask(224, 0, stor7.field_32) + 224]
            if mem[mem[224 len 4], Mask(224, 0, stor7.field_32) + 224] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[224 len 4], Mask(224, 0, stor7.field_32) + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], Mask(224, 0, stor7.field_32) + 224]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], Mask(224, 0, stor7.field_32) + 224]) + 225
            mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 0, stor7.field_32) + 224]
            require _225 + (32 * _229) + 32 <= return_data.size
            idx = _225 + 256
            s = ceil32(return_data.size) + 256
            while idx < _225 + (32 * _229) + 256:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            if _229 < 1:
                revert with 'NH{q', 17
            if _229 - 1 >= _229:
                revert with 'NH{q', 50
            _461 = mem[(32 * _229 - 1) + ceil32(return_data.size) + 256]
            if sub_93a39776Address == WBNBAddress:
                _466 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_466]:
                    revert with 'NH{q', 50
                mem[_466 + 32] = sub_93a39776Address
                if 1 >= mem[_466]:
                    revert with 'NH{q', 50
                mem[_466 + 64] = address(arg1)
                mem[_466 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[_466 + 100] = 0
                mem[_466 + 132] = 128
                mem[_466 + 228] = mem[_466]
                idx = 0
                s = _466 + 32
                t = _466 + 260
                while idx < mem[_466]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_466 + 164] = this.address
                mem[_466 + 196] = block.timestamp + 9
                require ext_code.size(ROUTERAddress)
                call ROUTERAddress.mem[mem[64] len 4] with:
                   value uint256(stor7.field_0) wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _466 + (32 * mem[_466]) + -mem[64] + 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _678 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _686 = mem[_678]
                require mem[_678] <= test266151307()
                require _678 + mem[_678] + 31 < _678 + return_data.size
                _694 = mem[_678 + mem[_678]]
                if mem[_678 + mem[_678]] > test266151307():
                    revert with 'NH{q', 65
                if _678 + ceil32(return_data.size) + floor32(mem[_678 + mem[_678]]) + 1 > test266151307() or floor32(mem[_678 + mem[_678]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _678 + ceil32(return_data.size) + floor32(mem[_678 + mem[_678]]) + 1
                mem[_678 + ceil32(return_data.size)] = _694
                require _686 + (32 * _694) + 32 <= return_data.size
                idx = _678 + _686 + 32
                s = _678 + ceil32(return_data.size) + 32
                while idx < _678 + _686 + (32 * _694) + 32:
                    require mem[idx] == mem[idx]
                    mem[s] = mem[idx]
                    idx = idx + 32
                    s = s + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _838 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _846 = mem[_838]
                require mem[_838] == mem[_838]
                if 10000 < stor6:
                    revert with 'NH{q', 17
                if _461 and -stor6 + 10000 > -1 / _461:
                    revert with 'NH{q', 17
                if (10000 * _461) - (stor6 * _461) / 10000 > mem[_838]:
                    stor8 = 1
                    revert with 0, 'HP/HT'
                Mask(96, 0, stor5.field_160) = 0
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = _846
                require ext_code.size(address(arg1))
                call address(arg1).0xa9059cbb with:
                     gas gas_remaining wei
                    args stor0, _846
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _886 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_886] == bool(mem[_886])
                if not mem[_886]:
                    revert with 0, 'HP/HT'
            else:
                _465 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                if 0 >= mem[_465]:
                    revert with 'NH{q', 50
                mem[_465 + 32] = WBNBAddress
                if 1 >= mem[_465]:
                    revert with 'NH{q', 50
                mem[_465 + 64] = sub_93a39776Address
                if 2 >= mem[_465]:
                    revert with 'NH{q', 50
                mem[_465 + 96] = address(arg1)
                mem[_465 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[_465 + 132] = 0
                mem[_465 + 164] = 128
                mem[_465 + 260] = mem[_465]
                idx = 0
                s = _465 + 32
                t = _465 + 292
                while idx < mem[_465]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_465 + 196] = this.address
                mem[_465 + 228] = block.timestamp + 9
                require ext_code.size(ROUTERAddress)
                call ROUTERAddress.mem[mem[64] len 4] with:
                   value uint256(stor7.field_0) wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _465 + (32 * mem[_465]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _677 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _685 = mem[_677]
                require mem[_677] <= test266151307()
                require _677 + mem[_677] + 31 < _677 + return_data.size
                _693 = mem[_677 + mem[_677]]
                if mem[_677 + mem[_677]] > test266151307():
                    revert with 'NH{q', 65
                if _677 + ceil32(return_data.size) + floor32(mem[_677 + mem[_677]]) + 1 > test266151307() or floor32(mem[_677 + mem[_677]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _677 + ceil32(return_data.size) + floor32(mem[_677 + mem[_677]]) + 1
                mem[_677 + ceil32(return_data.size)] = _693
                require _685 + (32 * _693) + 32 <= return_data.size
                idx = _677 + _685 + 32
                s = _677 + ceil32(return_data.size) + 32
                while idx < _677 + _685 + (32 * _693) + 32:
                    require mem[idx] == mem[idx]
                    mem[s] = mem[idx]
                    idx = idx + 32
                    s = s + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _837 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _845 = mem[_837]
                require mem[_837] == mem[_837]
                if 10000 < stor6:
                    revert with 'NH{q', 17
                if _461 and -stor6 + 10000 > -1 / _461:
                    revert with 'NH{q', 17
                if (10000 * _461) - (stor6 * _461) / 10000 > mem[_837]:
                    stor8 = 1
                    revert with 0, 'HP/HT'
                Mask(96, 0, stor5.field_160) = 0
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = _845
                require ext_code.size(address(arg1))
                call address(arg1).0xa9059cbb with:
                     gas gas_remaining wei
                    args stor0, _845
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _885 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_885] == bool(mem[_885])
                if not mem[_885]:
                    revert with 0, 'HP/HT'
    else:
        if stor8:
            revert with 0, 'Locked'
        if block.timestamp > -10:
            revert with 'NH{q', 17
        if sub_93a39776Address == WBNBAddress:
            mem[96] = 2
            mem[128] = sub_93a39776Address
            mem[160] = address(arg1)
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = uint256(stor7.field_0)
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
                   args uint256(stor7.field_0), Array(len=2, data=mem[292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _228 = mem[192 len 4], Mask(224, 0, stor7.field_32)
            require mem[192 len 4], Mask(224, 0, stor7.field_32) <= test266151307()
            require mem[192 len 4], Mask(224, 0, stor7.field_32) + 223 < return_data.size + 192
            _232 = mem[mem[192 len 4], Mask(224, 0, stor7.field_32) + 192]
            if mem[mem[192 len 4], Mask(224, 0, stor7.field_32) + 192] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 0, stor7.field_32) + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 0, stor7.field_32) + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 0, stor7.field_32) + 192]) + 193
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 0, stor7.field_32) + 192]
            require _228 + (32 * _232) + 32 <= return_data.size
            idx = _228 + 224
            s = ceil32(return_data.size) + 224
            while idx < _228 + (32 * _232) + 224:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            if _232 < 1:
                revert with 'NH{q', 17
            if _232 - 1 >= _232:
                revert with 'NH{q', 50
            _464 = mem[(32 * _232 - 1) + ceil32(return_data.size) + 224]
            if sub_93a39776Address == WBNBAddress:
                _472 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_472]:
                    revert with 'NH{q', 50
                mem[_472 + 32] = sub_93a39776Address
                if 1 >= mem[_472]:
                    revert with 'NH{q', 50
                mem[_472 + 64] = address(arg1)
                mem[_472 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[_472 + 100] = 0
                mem[_472 + 132] = 128
                mem[_472 + 228] = mem[_472]
                idx = 0
                s = _472 + 32
                t = _472 + 260
                while idx < mem[_472]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_472 + 164] = this.address
                mem[_472 + 196] = block.timestamp + 9
                require ext_code.size(ROUTERAddress)
                call ROUTERAddress.mem[mem[64] len 4] with:
                   value uint256(stor7.field_0) wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _472 + (32 * mem[_472]) + -mem[64] + 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _684 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _692 = mem[_684]
                require mem[_684] <= test266151307()
                require _684 + mem[_684] + 31 < _684 + return_data.size
                _700 = mem[_684 + mem[_684]]
                if mem[_684 + mem[_684]] > test266151307():
                    revert with 'NH{q', 65
                if _684 + ceil32(return_data.size) + floor32(mem[_684 + mem[_684]]) + 1 > test266151307() or floor32(mem[_684 + mem[_684]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _684 + ceil32(return_data.size) + floor32(mem[_684 + mem[_684]]) + 1
                mem[_684 + ceil32(return_data.size)] = _700
                require _692 + (32 * _700) + 32 <= return_data.size
                idx = _684 + _692 + 32
                s = _684 + ceil32(return_data.size) + 32
                while idx < _684 + _692 + (32 * _700) + 32:
                    require mem[idx] == mem[idx]
                    mem[s] = mem[idx]
                    idx = idx + 32
                    s = s + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _844 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _852 = mem[_844]
                require mem[_844] == mem[_844]
                if 10000 < stor6:
                    revert with 'NH{q', 17
                if _464 and -stor6 + 10000 > -1 / _464:
                    revert with 'NH{q', 17
                if (10000 * _464) - (stor6 * _464) / 10000 > mem[_844]:
                    stor8 = 1
                    revert with 0, 'HP/HT'
                Mask(96, 0, stor5.field_160) = 0
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = _852
                require ext_code.size(address(arg1))
                call address(arg1).0xa9059cbb with:
                     gas gas_remaining wei
                    args stor0, _852
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _892 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_892] == bool(mem[_892])
                if not mem[_892]:
                    revert with 0, 'HP/HT'
            else:
                _471 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                if 0 >= mem[_471]:
                    revert with 'NH{q', 50
                mem[_471 + 32] = WBNBAddress
                if 1 >= mem[_471]:
                    revert with 'NH{q', 50
                mem[_471 + 64] = sub_93a39776Address
                if 2 >= mem[_471]:
                    revert with 'NH{q', 50
                mem[_471 + 96] = address(arg1)
                mem[_471 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[_471 + 132] = 0
                mem[_471 + 164] = 128
                mem[_471 + 260] = mem[_471]
                idx = 0
                s = _471 + 32
                t = _471 + 292
                while idx < mem[_471]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_471 + 196] = this.address
                mem[_471 + 228] = block.timestamp + 9
                require ext_code.size(ROUTERAddress)
                call ROUTERAddress.mem[mem[64] len 4] with:
                   value uint256(stor7.field_0) wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _471 + (32 * mem[_471]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _683 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _691 = mem[_683]
                require mem[_683] <= test266151307()
                require _683 + mem[_683] + 31 < _683 + return_data.size
                _699 = mem[_683 + mem[_683]]
                if mem[_683 + mem[_683]] > test266151307():
                    revert with 'NH{q', 65
                if _683 + ceil32(return_data.size) + floor32(mem[_683 + mem[_683]]) + 1 > test266151307() or floor32(mem[_683 + mem[_683]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _683 + ceil32(return_data.size) + floor32(mem[_683 + mem[_683]]) + 1
                mem[_683 + ceil32(return_data.size)] = _699
                require _691 + (32 * _699) + 32 <= return_data.size
                idx = _683 + _691 + 32
                s = _683 + ceil32(return_data.size) + 32
                while idx < _683 + _691 + (32 * _699) + 32:
                    require mem[idx] == mem[idx]
                    mem[s] = mem[idx]
                    idx = idx + 32
                    s = s + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _843 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _851 = mem[_843]
                require mem[_843] == mem[_843]
                if 10000 < stor6:
                    revert with 'NH{q', 17
                if _464 and -stor6 + 10000 > -1 / _464:
                    revert with 'NH{q', 17
                if (10000 * _464) - (stor6 * _464) / 10000 > mem[_843]:
                    stor8 = 1
                    revert with 0, 'HP/HT'
                Mask(96, 0, stor5.field_160) = 0
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = _851
                require ext_code.size(address(arg1))
                call address(arg1).0xa9059cbb with:
                     gas gas_remaining wei
                    args stor0, _851
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _891 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_891] == bool(mem[_891])
                if not mem[_891]:
                    revert with 0, 'HP/HT'
        else:
            mem[96] = 3
            mem[128] = WBNBAddress
            mem[160] = sub_93a39776Address
            mem[192] = address(arg1)
            mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[228] = uint256(stor7.field_0)
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
                   args uint256(stor7.field_0), Array(len=3, data=mem[324 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 224
            require return_data.size >= 32
            _227 = mem[224 len 4], Mask(224, 0, stor7.field_32)
            require mem[224 len 4], Mask(224, 0, stor7.field_32) <= test266151307()
            require mem[224 len 4], Mask(224, 0, stor7.field_32) + 255 < return_data.size + 224
            _231 = mem[mem[224 len 4], Mask(224, 0, stor7.field_32) + 224]
            if mem[mem[224 len 4], Mask(224, 0, stor7.field_32) + 224] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[224 len 4], Mask(224, 0, stor7.field_32) + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], Mask(224, 0, stor7.field_32) + 224]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], Mask(224, 0, stor7.field_32) + 224]) + 225
            mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 0, stor7.field_32) + 224]
            require _227 + (32 * _231) + 32 <= return_data.size
            idx = _227 + 256
            s = ceil32(return_data.size) + 256
            while idx < _227 + (32 * _231) + 256:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            if _231 < 1:
                revert with 'NH{q', 17
            if _231 - 1 >= _231:
                revert with 'NH{q', 50
            _463 = mem[(32 * _231 - 1) + ceil32(return_data.size) + 256]
            if sub_93a39776Address == WBNBAddress:
                _470 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_470]:
                    revert with 'NH{q', 50
                mem[_470 + 32] = sub_93a39776Address
                if 1 >= mem[_470]:
                    revert with 'NH{q', 50
                mem[_470 + 64] = address(arg1)
                mem[_470 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[_470 + 100] = 0
                mem[_470 + 132] = 128
                mem[_470 + 228] = mem[_470]
                idx = 0
                s = _470 + 32
                t = _470 + 260
                while idx < mem[_470]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_470 + 164] = this.address
                mem[_470 + 196] = block.timestamp + 9
                require ext_code.size(ROUTERAddress)
                call ROUTERAddress.mem[mem[64] len 4] with:
                   value uint256(stor7.field_0) wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _470 + (32 * mem[_470]) + -mem[64] + 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _682 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _690 = mem[_682]
                require mem[_682] <= test266151307()
                require _682 + mem[_682] + 31 < _682 + return_data.size
                _698 = mem[_682 + mem[_682]]
                if mem[_682 + mem[_682]] > test266151307():
                    revert with 'NH{q', 65
                if _682 + ceil32(return_data.size) + floor32(mem[_682 + mem[_682]]) + 1 > test266151307() or floor32(mem[_682 + mem[_682]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _682 + ceil32(return_data.size) + floor32(mem[_682 + mem[_682]]) + 1
                mem[_682 + ceil32(return_data.size)] = _698
                require _690 + (32 * _698) + 32 <= return_data.size
                idx = _682 + _690 + 32
                s = _682 + ceil32(return_data.size) + 32
                while idx < _682 + _690 + (32 * _698) + 32:
                    require mem[idx] == mem[idx]
                    mem[s] = mem[idx]
                    idx = idx + 32
                    s = s + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _842 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _850 = mem[_842]
                require mem[_842] == mem[_842]
                if 10000 < stor6:
                    revert with 'NH{q', 17
                if _463 and -stor6 + 10000 > -1 / _463:
                    revert with 'NH{q', 17
                if (10000 * _463) - (stor6 * _463) / 10000 > mem[_842]:
                    stor8 = 1
                    revert with 0, 'HP/HT'
                Mask(96, 0, stor5.field_160) = 0
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = _850
                require ext_code.size(address(arg1))
                call address(arg1).0xa9059cbb with:
                     gas gas_remaining wei
                    args stor0, _850
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _890 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_890] == bool(mem[_890])
                if not mem[_890]:
                    revert with 0, 'HP/HT'
            else:
                _469 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                if 0 >= mem[_469]:
                    revert with 'NH{q', 50
                mem[_469 + 32] = WBNBAddress
                if 1 >= mem[_469]:
                    revert with 'NH{q', 50
                mem[_469 + 64] = sub_93a39776Address
                if 2 >= mem[_469]:
                    revert with 'NH{q', 50
                mem[_469 + 96] = address(arg1)
                mem[_469 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[_469 + 132] = 0
                mem[_469 + 164] = 128
                mem[_469 + 260] = mem[_469]
                idx = 0
                s = _469 + 32
                t = _469 + 292
                while idx < mem[_469]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_469 + 196] = this.address
                mem[_469 + 228] = block.timestamp + 9
                require ext_code.size(ROUTERAddress)
                call ROUTERAddress.mem[mem[64] len 4] with:
                   value uint256(stor7.field_0) wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _469 + (32 * mem[_469]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _681 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _689 = mem[_681]
                require mem[_681] <= test266151307()
                require _681 + mem[_681] + 31 < _681 + return_data.size
                _697 = mem[_681 + mem[_681]]
                if mem[_681 + mem[_681]] > test266151307():
                    revert with 'NH{q', 65
                if _681 + ceil32(return_data.size) + floor32(mem[_681 + mem[_681]]) + 1 > test266151307() or floor32(mem[_681 + mem[_681]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _681 + ceil32(return_data.size) + floor32(mem[_681 + mem[_681]]) + 1
                mem[_681 + ceil32(return_data.size)] = _697
                require _689 + (32 * _697) + 32 <= return_data.size
                idx = _681 + _689 + 32
                s = _681 + ceil32(return_data.size) + 32
                while idx < _681 + _689 + (32 * _697) + 32:
                    require mem[idx] == mem[idx]
                    mem[s] = mem[idx]
                    idx = idx + 32
                    s = s + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _841 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _849 = mem[_841]
                require mem[_841] == mem[_841]
                if 10000 < stor6:
                    revert with 'NH{q', 17
                if _463 and -stor6 + 10000 > -1 / _463:
                    revert with 'NH{q', 17
                if (10000 * _463) - (stor6 * _463) / 10000 > mem[_841]:
                    stor8 = 1
                    revert with 0, 'HP/HT'
                Mask(96, 0, stor5.field_160) = 0
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = _849
                require ext_code.size(address(arg1))
                call address(arg1).0xa9059cbb with:
                     gas gas_remaining wei
                    args stor0, _849
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _889 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_889] == bool(mem[_889])
                if not mem[_889]:
                    revert with 0, 'HP/HT'
}

function swap(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender == address(stor5.field_0):
        if eth.balance(this.address) <= 0:
            revert with 0, 'Locked'
        if sub_93a39776Address == WBNBAddress:
            mem[96] = 2
            mem[128] = sub_93a39776Address
            mem[160] = arg1
            mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[196] = uint256(stor9.field_0)
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
                   args uint256(stor9.field_0), Array(len=2, data=mem[292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _810 = mem[192 len 4], Mask(224, 0, stor9.field_32)
            require mem[192 len 4], Mask(224, 0, stor9.field_32) <= test266151307()
            require mem[192 len 4], Mask(224, 0, stor9.field_32) + 223 < return_data.size + 192
            _814 = mem[mem[192 len 4], Mask(224, 0, stor9.field_32) + 192]
            if mem[mem[192 len 4], Mask(224, 0, stor9.field_32) + 192] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 0, stor9.field_32) + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 0, stor9.field_32) + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 0, stor9.field_32) + 192]) + 193
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 0, stor9.field_32) + 192]
            require _810 + (32 * _814) + 32 <= return_data.size
            idx = _810 + 224
            s = ceil32(return_data.size) + 224
            while idx < _810 + (32 * _814) + 224:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            if 0 >= _814:
                revert with 'NH{q', 50
            if mem[ceil32(return_data.size) + 224] > eth.balance(this.address):
                revert with 0, 'Locked'
            if bool(uint8(stor5.field_160)) != 1:
                if block.timestamp > -10:
                    revert with 'NH{q', 17
                if sub_93a39776Address == WBNBAddress:
                    _1752 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_1752]:
                        revert with 'NH{q', 50
                    mem[_1752 + 32] = sub_93a39776Address
                    if 1 >= mem[_1752]:
                        revert with 'NH{q', 50
                    mem[_1752 + 64] = arg1
                    mem[_1752 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[_1752 + 100] = uint256(stor9.field_0)
                    mem[_1752 + 132] = 128
                    mem[_1752 + 228] = mem[_1752]
                    idx = 0
                    s = _1752 + 32
                    t = _1752 + 260
                    while idx < mem[_1752]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1752 + 164] = this.address
                    mem[_1752 + 196] = block.timestamp + 9
                    require ext_code.size(ROUTERAddress)
                    call ROUTERAddress.mem[mem[64] len 4] with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1752 + (32 * mem[_1752]) + -mem[64] + 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2820 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2844 = mem[_2820]
                    require mem[_2820] <= test266151307()
                    require _2820 + mem[_2820] + 31 < _2820 + return_data.size
                    _2852 = mem[_2820 + mem[_2820]]
                    if mem[_2820 + mem[_2820]] > test266151307():
                        revert with 'NH{q', 65
                    if _2820 + ceil32(return_data.size) + floor32(mem[_2820 + mem[_2820]]) + 1 > test266151307() or floor32(mem[_2820 + mem[_2820]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _2820 + ceil32(return_data.size) + floor32(mem[_2820 + mem[_2820]]) + 1
                    mem[_2820 + ceil32(return_data.size)] = _2852
                    require _2844 + (32 * _2852) + 32 <= return_data.size
                    idx = _2820 + _2844 + 32
                    s = _2820 + ceil32(return_data.size) + 32
                    while idx < _2820 + _2844 + (32 * _2852) + 32:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                else:
                    _1751 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    if 0 >= mem[_1751]:
                        revert with 'NH{q', 50
                    mem[_1751 + 32] = WBNBAddress
                    if 1 >= mem[_1751]:
                        revert with 'NH{q', 50
                    mem[_1751 + 64] = sub_93a39776Address
                    if 2 >= mem[_1751]:
                        revert with 'NH{q', 50
                    mem[_1751 + 96] = arg1
                    mem[_1751 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[_1751 + 132] = uint256(stor9.field_0)
                    mem[_1751 + 164] = 128
                    mem[_1751 + 260] = mem[_1751]
                    idx = 0
                    s = _1751 + 32
                    t = _1751 + 292
                    while idx < mem[_1751]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1751 + 196] = this.address
                    mem[_1751 + 228] = block.timestamp + 9
                    require ext_code.size(ROUTERAddress)
                    call ROUTERAddress.mem[mem[64] len 4] with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1751 + (32 * mem[_1751]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2819 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2843 = mem[_2819]
                    require mem[_2819] <= test266151307()
                    require _2819 + mem[_2819] + 31 < _2819 + return_data.size
                    _2851 = mem[_2819 + mem[_2819]]
                    if mem[_2819 + mem[_2819]] > test266151307():
                        revert with 'NH{q', 65
                    if _2819 + ceil32(return_data.size) + floor32(mem[_2819 + mem[_2819]]) + 1 > test266151307() or floor32(mem[_2819 + mem[_2819]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _2819 + ceil32(return_data.size) + floor32(mem[_2819 + mem[_2819]]) + 1
                    mem[_2819 + ceil32(return_data.size)] = _2851
                    require _2843 + (32 * _2851) + 32 <= return_data.size
                    idx = _2819 + _2843 + 32
                    s = _2819 + ceil32(return_data.size) + 32
                    while idx < _2819 + _2843 + (32 * _2851) + 32:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
            else:
                if msg.sender == address(stor5.field_0):
                    if block.timestamp > -10:
                        revert with 'NH{q', 17
                    if sub_93a39776Address == WBNBAddress:
                        _1776 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_1776]:
                            revert with 'NH{q', 50
                        mem[_1776 + 32] = sub_93a39776Address
                        if 1 >= mem[_1776]:
                            revert with 'NH{q', 50
                        mem[_1776 + 64] = arg1
                        mem[_1776 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1776 + 100] = uint256(stor7.field_0)
                        mem[_1776 + 132] = 64
                        mem[_1776 + 164] = mem[_1776]
                        idx = 0
                        s = _1776 + 32
                        t = _1776 + 196
                        while idx < mem[_1776]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(ROUTERAddress)
                        staticcall ROUTERAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1776 + (32 * mem[_1776]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2766 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2782 = mem[_2766]
                        require mem[_2766] <= test266151307()
                        require _2766 + mem[_2766] + 31 < _2766 + return_data.size
                        _2798 = mem[_2766 + mem[_2766]]
                        if mem[_2766 + mem[_2766]] > test266151307():
                            revert with 'NH{q', 65
                        if _2766 + ceil32(return_data.size) + floor32(mem[_2766 + mem[_2766]]) + 1 > test266151307() or floor32(mem[_2766 + mem[_2766]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2766 + ceil32(return_data.size) + floor32(mem[_2766 + mem[_2766]]) + 1
                        mem[_2766 + ceil32(return_data.size)] = _2798
                        require _2782 + (32 * _2798) + 32 <= return_data.size
                        idx = _2766 + _2782 + 32
                        s = _2766 + ceil32(return_data.size) + 32
                        while idx < _2766 + _2782 + (32 * _2798) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if _2798 < 1:
                            revert with 'NH{q', 17
                        if _2798 - 1 >= _2798:
                            revert with 'NH{q', 50
                        _4086 = mem[(32 * _2798 - 1) + _2766 + ceil32(return_data.size) + 32]
                        if sub_93a39776Address == WBNBAddress:
                            _4108 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_4108]:
                                revert with 'NH{q', 50
                            mem[_4108 + 32] = sub_93a39776Address
                            if 1 >= mem[_4108]:
                                revert with 'NH{q', 50
                            mem[_4108 + 64] = arg1
                            mem[_4108 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4108 + 100] = 0
                            mem[_4108 + 132] = 128
                            mem[_4108 + 228] = mem[_4108]
                            idx = 0
                            s = _4108 + 32
                            t = _4108 + 260
                            while idx < mem[_4108]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4108 + 164] = this.address
                            mem[_4108 + 196] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4108 + (32 * mem[_4108]) + -mem[64] + 256]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5564 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5596 = mem[_5564]
                            require mem[_5564] <= test266151307()
                            require _5564 + mem[_5564] + 31 < _5564 + return_data.size
                            _5628 = mem[_5564 + mem[_5564]]
                            if mem[_5564 + mem[_5564]] > test266151307():
                                revert with 'NH{q', 65
                            if _5564 + ceil32(return_data.size) + floor32(mem[_5564 + mem[_5564]]) + 1 > test266151307() or floor32(mem[_5564 + mem[_5564]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5564 + ceil32(return_data.size) + floor32(mem[_5564 + mem[_5564]]) + 1
                            mem[_5564 + ceil32(return_data.size)] = _5628
                            require _5596 + (32 * _5628) + 32 <= return_data.size
                            idx = _5564 + _5596 + 32
                            s = _5564 + ceil32(return_data.size) + 32
                            while idx < _5564 + _5596 + (32 * _5628) + 32:
                                require mem[idx] == mem[idx]
                                mem[s] = mem[idx]
                                idx = idx + 32
                                s = s + 32
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7004 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7036 = mem[_7004]
                            require mem[_7004] == mem[_7004]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4086 and -stor6 + 10000 > -1 / _4086:
                                revert with 'NH{q', 17
                            if (10000 * _4086) - (stor6 * _4086) / 10000 > mem[_7004]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _7036
                            require ext_code.size(arg1)
                            call arg1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _7036
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7196 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7196] == bool(mem[_7196])
                            if not mem[_7196]:
                                revert with 0, 'HP/HT'
                            if block.timestamp > -10:
                                revert with 'NH{q', 17
                            if sub_93a39776Address == WBNBAddress:
                                _7336 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                if 0 >= mem[_7336]:
                                    revert with 'NH{q', 50
                                mem[_7336 + 32] = sub_93a39776Address
                                if 1 >= mem[_7336]:
                                    revert with 'NH{q', 50
                                mem[_7336 + 64] = arg1
                                mem[_7336 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7336 + 100] = uint256(stor9.field_0)
                                mem[_7336 + 132] = 128
                                mem[_7336 + 228] = mem[_7336]
                                idx = 0
                                s = _7336 + 32
                                t = _7336 + 260
                                while idx < mem[_7336]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7336 + 164] = this.address
                                mem[_7336 + 196] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7336 + (32 * mem[_7336]) + -mem[64] + 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8264 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8328 = mem[_8264]
                                require mem[_8264] <= test266151307()
                                require _8264 + mem[_8264] + 31 < _8264 + return_data.size
                                _8392 = mem[_8264 + mem[_8264]]
                                if mem[_8264 + mem[_8264]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8264 + ceil32(return_data.size) + floor32(mem[_8264 + mem[_8264]]) + 1 > test266151307() or floor32(mem[_8264 + mem[_8264]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8264 + ceil32(return_data.size) + floor32(mem[_8264 + mem[_8264]]) + 1
                                mem[_8264 + ceil32(return_data.size)] = _8392
                                require _8328 + (32 * _8392) + 32 <= return_data.size
                                idx = _8264 + _8328 + 32
                                s = _8264 + ceil32(return_data.size) + 32
                                while idx < _8264 + _8328 + (32 * _8392) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                            else:
                                _7335 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                if 0 >= mem[_7335]:
                                    revert with 'NH{q', 50
                                mem[_7335 + 32] = WBNBAddress
                                if 1 >= mem[_7335]:
                                    revert with 'NH{q', 50
                                mem[_7335 + 64] = sub_93a39776Address
                                if 2 >= mem[_7335]:
                                    revert with 'NH{q', 50
                                mem[_7335 + 96] = arg1
                                mem[_7335 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7335 + 132] = uint256(stor9.field_0)
                                mem[_7335 + 164] = 128
                                mem[_7335 + 260] = mem[_7335]
                                idx = 0
                                s = _7335 + 32
                                t = _7335 + 292
                                while idx < mem[_7335]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7335 + 196] = this.address
                                mem[_7335 + 228] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7335 + (32 * mem[_7335]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8263 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8327 = mem[_8263]
                                require mem[_8263] <= test266151307()
                                require _8263 + mem[_8263] + 31 < _8263 + return_data.size
                                _8391 = mem[_8263 + mem[_8263]]
                                if mem[_8263 + mem[_8263]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8263 + ceil32(return_data.size) + floor32(mem[_8263 + mem[_8263]]) + 1 > test266151307() or floor32(mem[_8263 + mem[_8263]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8263 + ceil32(return_data.size) + floor32(mem[_8263 + mem[_8263]]) + 1
                                mem[_8263 + ceil32(return_data.size)] = _8391
                                require _8327 + (32 * _8391) + 32 <= return_data.size
                                idx = _8263 + _8327 + 32
                                s = _8263 + ceil32(return_data.size) + 32
                                while idx < _8263 + _8327 + (32 * _8391) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                        else:
                            _4107 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            if 0 >= mem[_4107]:
                                revert with 'NH{q', 50
                            mem[_4107 + 32] = WBNBAddress
                            if 1 >= mem[_4107]:
                                revert with 'NH{q', 50
                            mem[_4107 + 64] = sub_93a39776Address
                            if 2 >= mem[_4107]:
                                revert with 'NH{q', 50
                            mem[_4107 + 96] = arg1
                            mem[_4107 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4107 + 132] = 0
                            mem[_4107 + 164] = 128
                            mem[_4107 + 260] = mem[_4107]
                            idx = 0
                            s = _4107 + 32
                            t = _4107 + 292
                            while idx < mem[_4107]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4107 + 196] = this.address
                            mem[_4107 + 228] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4107 + (32 * mem[_4107]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5563 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5595 = mem[_5563]
                            require mem[_5563] <= test266151307()
                            require _5563 + mem[_5563] + 31 < _5563 + return_data.size
                            _5627 = mem[_5563 + mem[_5563]]
                            if mem[_5563 + mem[_5563]] > test266151307():
                                revert with 'NH{q', 65
                            if _5563 + ceil32(return_data.size) + floor32(mem[_5563 + mem[_5563]]) + 1 > test266151307() or floor32(mem[_5563 + mem[_5563]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5563 + ceil32(return_data.size) + floor32(mem[_5563 + mem[_5563]]) + 1
                            mem[_5563 + ceil32(return_data.size)] = _5627
                            require _5595 + (32 * _5627) + 32 <= return_data.size
                            idx = _5563 + _5595 + 32
                            s = _5563 + ceil32(return_data.size) + 32
                            while idx < _5563 + _5595 + (32 * _5627) + 32:
                                require mem[idx] == mem[idx]
                                mem[s] = mem[idx]
                                idx = idx + 32
                                s = s + 32
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7003 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7035 = mem[_7003]
                            require mem[_7003] == mem[_7003]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4086 and -stor6 + 10000 > -1 / _4086:
                                revert with 'NH{q', 17
                            if (10000 * _4086) - (stor6 * _4086) / 10000 > mem[_7003]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _7035
                            require ext_code.size(arg1)
                            call arg1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _7035
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7195 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7195] == bool(mem[_7195])
                            if not mem[_7195]:
                                revert with 0, 'HP/HT'
                            if block.timestamp > -10:
                                revert with 'NH{q', 17
                            if sub_93a39776Address == WBNBAddress:
                                _7334 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                if 0 >= mem[_7334]:
                                    revert with 'NH{q', 50
                                mem[_7334 + 32] = sub_93a39776Address
                                if 1 >= mem[_7334]:
                                    revert with 'NH{q', 50
                                mem[_7334 + 64] = arg1
                                mem[_7334 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7334 + 100] = uint256(stor9.field_0)
                                mem[_7334 + 132] = 128
                                mem[_7334 + 228] = mem[_7334]
                                idx = 0
                                s = _7334 + 32
                                t = _7334 + 260
                                while idx < mem[_7334]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7334 + 164] = this.address
                                mem[_7334 + 196] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7334 + (32 * mem[_7334]) + -mem[64] + 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8262 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8326 = mem[_8262]
                                require mem[_8262] <= test266151307()
                                require _8262 + mem[_8262] + 31 < _8262 + return_data.size
                                _8390 = mem[_8262 + mem[_8262]]
                                if mem[_8262 + mem[_8262]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8262 + ceil32(return_data.size) + floor32(mem[_8262 + mem[_8262]]) + 1 > test266151307() or floor32(mem[_8262 + mem[_8262]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8262 + ceil32(return_data.size) + floor32(mem[_8262 + mem[_8262]]) + 1
                                mem[_8262 + ceil32(return_data.size)] = _8390
                                require _8326 + (32 * _8390) + 32 <= return_data.size
                                idx = _8262 + _8326 + 32
                                s = _8262 + ceil32(return_data.size) + 32
                                while idx < _8262 + _8326 + (32 * _8390) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                            else:
                                _7333 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                if 0 >= mem[_7333]:
                                    revert with 'NH{q', 50
                                mem[_7333 + 32] = WBNBAddress
                                if 1 >= mem[_7333]:
                                    revert with 'NH{q', 50
                                mem[_7333 + 64] = sub_93a39776Address
                                if 2 >= mem[_7333]:
                                    revert with 'NH{q', 50
                                mem[_7333 + 96] = arg1
                                mem[_7333 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7333 + 132] = uint256(stor9.field_0)
                                mem[_7333 + 164] = 128
                                mem[_7333 + 260] = mem[_7333]
                                idx = 0
                                s = _7333 + 32
                                t = _7333 + 292
                                while idx < mem[_7333]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7333 + 196] = this.address
                                mem[_7333 + 228] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7333 + (32 * mem[_7333]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8261 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8325 = mem[_8261]
                                require mem[_8261] <= test266151307()
                                require _8261 + mem[_8261] + 31 < _8261 + return_data.size
                                _8389 = mem[_8261 + mem[_8261]]
                                if mem[_8261 + mem[_8261]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8261 + ceil32(return_data.size) + floor32(mem[_8261 + mem[_8261]]) + 1 > test266151307() or floor32(mem[_8261 + mem[_8261]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8261 + ceil32(return_data.size) + floor32(mem[_8261 + mem[_8261]]) + 1
                                mem[_8261 + ceil32(return_data.size)] = _8389
                                require _8325 + (32 * _8389) + 32 <= return_data.size
                                idx = _8261 + _8325 + 32
                                s = _8261 + ceil32(return_data.size) + 32
                                while idx < _8261 + _8325 + (32 * _8389) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                    else:
                        _1775 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if 0 >= mem[_1775]:
                            revert with 'NH{q', 50
                        mem[_1775 + 32] = WBNBAddress
                        if 1 >= mem[_1775]:
                            revert with 'NH{q', 50
                        mem[_1775 + 64] = sub_93a39776Address
                        if 2 >= mem[_1775]:
                            revert with 'NH{q', 50
                        mem[_1775 + 96] = arg1
                        mem[_1775 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1775 + 132] = uint256(stor7.field_0)
                        mem[_1775 + 164] = 64
                        mem[_1775 + 196] = mem[_1775]
                        idx = 0
                        s = _1775 + 32
                        t = _1775 + 228
                        while idx < mem[_1775]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(ROUTERAddress)
                        staticcall ROUTERAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1775 + (32 * mem[_1775]) + -mem[64] + 224]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2765 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2781 = mem[_2765]
                        require mem[_2765] <= test266151307()
                        require _2765 + mem[_2765] + 31 < _2765 + return_data.size
                        _2797 = mem[_2765 + mem[_2765]]
                        if mem[_2765 + mem[_2765]] > test266151307():
                            revert with 'NH{q', 65
                        if _2765 + ceil32(return_data.size) + floor32(mem[_2765 + mem[_2765]]) + 1 > test266151307() or floor32(mem[_2765 + mem[_2765]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2765 + ceil32(return_data.size) + floor32(mem[_2765 + mem[_2765]]) + 1
                        mem[_2765 + ceil32(return_data.size)] = _2797
                        require _2781 + (32 * _2797) + 32 <= return_data.size
                        idx = _2765 + _2781 + 32
                        s = _2765 + ceil32(return_data.size) + 32
                        while idx < _2765 + _2781 + (32 * _2797) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if _2797 < 1:
                            revert with 'NH{q', 17
                        if _2797 - 1 >= _2797:
                            revert with 'NH{q', 50
                        _4085 = mem[(32 * _2797 - 1) + _2765 + ceil32(return_data.size) + 32]
                        if sub_93a39776Address == WBNBAddress:
                            _4106 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_4106]:
                                revert with 'NH{q', 50
                            mem[_4106 + 32] = sub_93a39776Address
                            if 1 >= mem[_4106]:
                                revert with 'NH{q', 50
                            mem[_4106 + 64] = arg1
                            mem[_4106 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4106 + 100] = 0
                            mem[_4106 + 132] = 128
                            mem[_4106 + 228] = mem[_4106]
                            idx = 0
                            s = _4106 + 32
                            t = _4106 + 260
                            while idx < mem[_4106]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4106 + 164] = this.address
                            mem[_4106 + 196] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4106 + (32 * mem[_4106]) + -mem[64] + 256]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5562 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5594 = mem[_5562]
                            require mem[_5562] <= test266151307()
                            require _5562 + mem[_5562] + 31 < _5562 + return_data.size
                            _5626 = mem[_5562 + mem[_5562]]
                            if mem[_5562 + mem[_5562]] > test266151307():
                                revert with 'NH{q', 65
                            if _5562 + ceil32(return_data.size) + floor32(mem[_5562 + mem[_5562]]) + 1 > test266151307() or floor32(mem[_5562 + mem[_5562]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5562 + ceil32(return_data.size) + floor32(mem[_5562 + mem[_5562]]) + 1
                            mem[_5562 + ceil32(return_data.size)] = _5626
                            require _5594 + (32 * _5626) + 32 <= return_data.size
                            idx = _5562 + _5594 + 32
                            s = _5562 + ceil32(return_data.size) + 32
                            while idx < _5562 + _5594 + (32 * _5626) + 32:
                                require mem[idx] == mem[idx]
                                mem[s] = mem[idx]
                                idx = idx + 32
                                s = s + 32
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7002 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7034 = mem[_7002]
                            require mem[_7002] == mem[_7002]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4085 and -stor6 + 10000 > -1 / _4085:
                                revert with 'NH{q', 17
                            if (10000 * _4085) - (stor6 * _4085) / 10000 > mem[_7002]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _7034
                            require ext_code.size(arg1)
                            call arg1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _7034
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7194 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7194] == bool(mem[_7194])
                            if not mem[_7194]:
                                revert with 0, 'HP/HT'
                            if block.timestamp > -10:
                                revert with 'NH{q', 17
                            if sub_93a39776Address == WBNBAddress:
                                _7332 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                if 0 >= mem[_7332]:
                                    revert with 'NH{q', 50
                                mem[_7332 + 32] = sub_93a39776Address
                                if 1 >= mem[_7332]:
                                    revert with 'NH{q', 50
                                mem[_7332 + 64] = arg1
                                mem[_7332 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7332 + 100] = uint256(stor9.field_0)
                                mem[_7332 + 132] = 128
                                mem[_7332 + 228] = mem[_7332]
                                idx = 0
                                s = _7332 + 32
                                t = _7332 + 260
                                while idx < mem[_7332]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7332 + 164] = this.address
                                mem[_7332 + 196] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7332 + (32 * mem[_7332]) + -mem[64] + 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8260 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8324 = mem[_8260]
                                require mem[_8260] <= test266151307()
                                require _8260 + mem[_8260] + 31 < _8260 + return_data.size
                                _8388 = mem[_8260 + mem[_8260]]
                                if mem[_8260 + mem[_8260]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8260 + ceil32(return_data.size) + floor32(mem[_8260 + mem[_8260]]) + 1 > test266151307() or floor32(mem[_8260 + mem[_8260]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8260 + ceil32(return_data.size) + floor32(mem[_8260 + mem[_8260]]) + 1
                                mem[_8260 + ceil32(return_data.size)] = _8388
                                require _8324 + (32 * _8388) + 32 <= return_data.size
                                idx = _8260 + _8324 + 32
                                s = _8260 + ceil32(return_data.size) + 32
                                while idx < _8260 + _8324 + (32 * _8388) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                            else:
                                _7331 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                if 0 >= mem[_7331]:
                                    revert with 'NH{q', 50
                                mem[_7331 + 32] = WBNBAddress
                                if 1 >= mem[_7331]:
                                    revert with 'NH{q', 50
                                mem[_7331 + 64] = sub_93a39776Address
                                if 2 >= mem[_7331]:
                                    revert with 'NH{q', 50
                                mem[_7331 + 96] = arg1
                                mem[_7331 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7331 + 132] = uint256(stor9.field_0)
                                mem[_7331 + 164] = 128
                                mem[_7331 + 260] = mem[_7331]
                                idx = 0
                                s = _7331 + 32
                                t = _7331 + 292
                                while idx < mem[_7331]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7331 + 196] = this.address
                                mem[_7331 + 228] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7331 + (32 * mem[_7331]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8259 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8323 = mem[_8259]
                                require mem[_8259] <= test266151307()
                                require _8259 + mem[_8259] + 31 < _8259 + return_data.size
                                _8387 = mem[_8259 + mem[_8259]]
                                if mem[_8259 + mem[_8259]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8259 + ceil32(return_data.size) + floor32(mem[_8259 + mem[_8259]]) + 1 > test266151307() or floor32(mem[_8259 + mem[_8259]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8259 + ceil32(return_data.size) + floor32(mem[_8259 + mem[_8259]]) + 1
                                mem[_8259 + ceil32(return_data.size)] = _8387
                                require _8323 + (32 * _8387) + 32 <= return_data.size
                                idx = _8259 + _8323 + 32
                                s = _8259 + ceil32(return_data.size) + 32
                                while idx < _8259 + _8323 + (32 * _8387) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                        else:
                            _4105 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            if 0 >= mem[_4105]:
                                revert with 'NH{q', 50
                            mem[_4105 + 32] = WBNBAddress
                            if 1 >= mem[_4105]:
                                revert with 'NH{q', 50
                            mem[_4105 + 64] = sub_93a39776Address
                            if 2 >= mem[_4105]:
                                revert with 'NH{q', 50
                            mem[_4105 + 96] = arg1
                            mem[_4105 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4105 + 132] = 0
                            mem[_4105 + 164] = 128
                            mem[_4105 + 260] = mem[_4105]
                            idx = 0
                            s = _4105 + 32
                            t = _4105 + 292
                            while idx < mem[_4105]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4105 + 196] = this.address
                            mem[_4105 + 228] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4105 + (32 * mem[_4105]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5561 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5593 = mem[_5561]
                            require mem[_5561] <= test266151307()
                            require _5561 + mem[_5561] + 31 < _5561 + return_data.size
                            _5625 = mem[_5561 + mem[_5561]]
                            if mem[_5561 + mem[_5561]] > test266151307():
                                revert with 'NH{q', 65
                            if _5561 + ceil32(return_data.size) + floor32(mem[_5561 + mem[_5561]]) + 1 > test266151307() or floor32(mem[_5561 + mem[_5561]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5561 + ceil32(return_data.size) + floor32(mem[_5561 + mem[_5561]]) + 1
                            mem[_5561 + ceil32(return_data.size)] = _5625
                            require _5593 + (32 * _5625) + 32 <= return_data.size
                            idx = _5561 + _5593 + 32
                            s = _5561 + ceil32(return_data.size) + 32
                            while idx < _5561 + _5593 + (32 * _5625) + 32:
                                require mem[idx] == mem[idx]
                                mem[s] = mem[idx]
                                idx = idx + 32
                                s = s + 32
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7001 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7033 = mem[_7001]
                            require mem[_7001] == mem[_7001]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4085 and -stor6 + 10000 > -1 / _4085:
                                revert with 'NH{q', 17
                            if (10000 * _4085) - (stor6 * _4085) / 10000 > mem[_7001]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _7033
                            require ext_code.size(arg1)
                            call arg1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _7033
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7193 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7193] == bool(mem[_7193])
                            if not mem[_7193]:
                                revert with 0, 'HP/HT'
                            if block.timestamp > -10:
                                revert with 'NH{q', 17
                            if sub_93a39776Address == WBNBAddress:
                                _7330 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                if 0 >= mem[_7330]:
                                    revert with 'NH{q', 50
                                mem[_7330 + 32] = sub_93a39776Address
                                if 1 >= mem[_7330]:
                                    revert with 'NH{q', 50
                                mem[_7330 + 64] = arg1
                                mem[_7330 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7330 + 100] = uint256(stor9.field_0)
                                mem[_7330 + 132] = 128
                                mem[_7330 + 228] = mem[_7330]
                                idx = 0
                                s = _7330 + 32
                                t = _7330 + 260
                                while idx < mem[_7330]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7330 + 164] = this.address
                                mem[_7330 + 196] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7330 + (32 * mem[_7330]) + -mem[64] + 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8258 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8322 = mem[_8258]
                                require mem[_8258] <= test266151307()
                                require _8258 + mem[_8258] + 31 < _8258 + return_data.size
                                _8386 = mem[_8258 + mem[_8258]]
                                if mem[_8258 + mem[_8258]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8258 + ceil32(return_data.size) + floor32(mem[_8258 + mem[_8258]]) + 1 > test266151307() or floor32(mem[_8258 + mem[_8258]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8258 + ceil32(return_data.size) + floor32(mem[_8258 + mem[_8258]]) + 1
                                mem[_8258 + ceil32(return_data.size)] = _8386
                                require _8322 + (32 * _8386) + 32 <= return_data.size
                                idx = _8258 + _8322 + 32
                                s = _8258 + ceil32(return_data.size) + 32
                                while idx < _8258 + _8322 + (32 * _8386) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                            else:
                                _7329 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                if 0 >= mem[_7329]:
                                    revert with 'NH{q', 50
                                mem[_7329 + 32] = WBNBAddress
                                if 1 >= mem[_7329]:
                                    revert with 'NH{q', 50
                                mem[_7329 + 64] = sub_93a39776Address
                                if 2 >= mem[_7329]:
                                    revert with 'NH{q', 50
                                mem[_7329 + 96] = arg1
                                mem[_7329 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7329 + 132] = uint256(stor9.field_0)
                                mem[_7329 + 164] = 128
                                mem[_7329 + 260] = mem[_7329]
                                idx = 0
                                s = _7329 + 32
                                t = _7329 + 292
                                while idx < mem[_7329]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7329 + 196] = this.address
                                mem[_7329 + 228] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7329 + (32 * mem[_7329]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8257 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8321 = mem[_8257]
                                require mem[_8257] <= test266151307()
                                require _8257 + mem[_8257] + 31 < _8257 + return_data.size
                                _8385 = mem[_8257 + mem[_8257]]
                                if mem[_8257 + mem[_8257]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8257 + ceil32(return_data.size) + floor32(mem[_8257 + mem[_8257]]) + 1 > test266151307() or floor32(mem[_8257 + mem[_8257]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8257 + ceil32(return_data.size) + floor32(mem[_8257 + mem[_8257]]) + 1
                                mem[_8257 + ceil32(return_data.size)] = _8385
                                require _8321 + (32 * _8385) + 32 <= return_data.size
                                idx = _8257 + _8321 + 32
                                s = _8257 + ceil32(return_data.size) + 32
                                while idx < _8257 + _8321 + (32 * _8385) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                else:
                    if stor8:
                        revert with 0, 'Locked'
                    if block.timestamp > -10:
                        revert with 'NH{q', 17
                    if sub_93a39776Address == WBNBAddress:
                        _1790 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_1790]:
                            revert with 'NH{q', 50
                        mem[_1790 + 32] = sub_93a39776Address
                        if 1 >= mem[_1790]:
                            revert with 'NH{q', 50
                        mem[_1790 + 64] = arg1
                        mem[_1790 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1790 + 100] = uint256(stor7.field_0)
                        mem[_1790 + 132] = 64
                        mem[_1790 + 164] = mem[_1790]
                        idx = 0
                        s = _1790 + 32
                        t = _1790 + 196
                        while idx < mem[_1790]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(ROUTERAddress)
                        staticcall ROUTERAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1790 + (32 * mem[_1790]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2768 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2784 = mem[_2768]
                        require mem[_2768] <= test266151307()
                        require _2768 + mem[_2768] + 31 < _2768 + return_data.size
                        _2800 = mem[_2768 + mem[_2768]]
                        if mem[_2768 + mem[_2768]] > test266151307():
                            revert with 'NH{q', 65
                        if _2768 + ceil32(return_data.size) + floor32(mem[_2768 + mem[_2768]]) + 1 > test266151307() or floor32(mem[_2768 + mem[_2768]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2768 + ceil32(return_data.size) + floor32(mem[_2768 + mem[_2768]]) + 1
                        mem[_2768 + ceil32(return_data.size)] = _2800
                        require _2784 + (32 * _2800) + 32 <= return_data.size
                        idx = _2768 + _2784 + 32
                        s = _2768 + ceil32(return_data.size) + 32
                        while idx < _2768 + _2784 + (32 * _2800) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if _2800 < 1:
                            revert with 'NH{q', 17
                        if _2800 - 1 >= _2800:
                            revert with 'NH{q', 50
                        _4088 = mem[(32 * _2800 - 1) + _2768 + ceil32(return_data.size) + 32]
                        if sub_93a39776Address == WBNBAddress:
                            _4112 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_4112]:
                                revert with 'NH{q', 50
                            mem[_4112 + 32] = sub_93a39776Address
                            if 1 >= mem[_4112]:
                                revert with 'NH{q', 50
                            mem[_4112 + 64] = arg1
                            mem[_4112 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4112 + 100] = 0
                            mem[_4112 + 132] = 128
                            mem[_4112 + 228] = mem[_4112]
                            idx = 0
                            s = _4112 + 32
                            t = _4112 + 260
                            while idx < mem[_4112]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4112 + 164] = this.address
                            mem[_4112 + 196] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4112 + (32 * mem[_4112]) + -mem[64] + 256]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5568 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5600 = mem[_5568]
                            require mem[_5568] <= test266151307()
                            require _5568 + mem[_5568] + 31 < _5568 + return_data.size
                            _5632 = mem[_5568 + mem[_5568]]
                            if mem[_5568 + mem[_5568]] > test266151307():
                                revert with 'NH{q', 65
                            if _5568 + ceil32(return_data.size) + floor32(mem[_5568 + mem[_5568]]) + 1 > test266151307() or floor32(mem[_5568 + mem[_5568]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5568 + ceil32(return_data.size) + floor32(mem[_5568 + mem[_5568]]) + 1
                            mem[_5568 + ceil32(return_data.size)] = _5632
                            require _5600 + (32 * _5632) + 32 <= return_data.size
                            idx = _5568 + _5600 + 32
                            s = _5568 + ceil32(return_data.size) + 32
                            while idx < _5568 + _5600 + (32 * _5632) + 32:
                                require mem[idx] == mem[idx]
                                mem[s] = mem[idx]
                                idx = idx + 32
                                s = s + 32
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7008 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7040 = mem[_7008]
                            require mem[_7008] == mem[_7008]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4088 and -stor6 + 10000 > -1 / _4088:
                                revert with 'NH{q', 17
                            if (10000 * _4088) - (stor6 * _4088) / 10000 > mem[_7008]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _7040
                            require ext_code.size(arg1)
                            call arg1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _7040
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7200 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7200] == bool(mem[_7200])
                            if not mem[_7200]:
                                revert with 0, 'HP/HT'
                            if block.timestamp > -10:
                                revert with 'NH{q', 17
                            if sub_93a39776Address == WBNBAddress:
                                _7344 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                if 0 >= mem[_7344]:
                                    revert with 'NH{q', 50
                                mem[_7344 + 32] = sub_93a39776Address
                                if 1 >= mem[_7344]:
                                    revert with 'NH{q', 50
                                mem[_7344 + 64] = arg1
                                mem[_7344 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7344 + 100] = uint256(stor9.field_0)
                                mem[_7344 + 132] = 128
                                mem[_7344 + 228] = mem[_7344]
                                idx = 0
                                s = _7344 + 32
                                t = _7344 + 260
                                while idx < mem[_7344]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7344 + 164] = this.address
                                mem[_7344 + 196] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7344 + (32 * mem[_7344]) + -mem[64] + 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8272 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8336 = mem[_8272]
                                require mem[_8272] <= test266151307()
                                require _8272 + mem[_8272] + 31 < _8272 + return_data.size
                                _8400 = mem[_8272 + mem[_8272]]
                                if mem[_8272 + mem[_8272]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8272 + ceil32(return_data.size) + floor32(mem[_8272 + mem[_8272]]) + 1 > test266151307() or floor32(mem[_8272 + mem[_8272]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8272 + ceil32(return_data.size) + floor32(mem[_8272 + mem[_8272]]) + 1
                                mem[_8272 + ceil32(return_data.size)] = _8400
                                require _8336 + (32 * _8400) + 32 <= return_data.size
                                idx = _8272 + _8336 + 32
                                s = _8272 + ceil32(return_data.size) + 32
                                while idx < _8272 + _8336 + (32 * _8400) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                            else:
                                _7343 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                if 0 >= mem[_7343]:
                                    revert with 'NH{q', 50
                                mem[_7343 + 32] = WBNBAddress
                                if 1 >= mem[_7343]:
                                    revert with 'NH{q', 50
                                mem[_7343 + 64] = sub_93a39776Address
                                if 2 >= mem[_7343]:
                                    revert with 'NH{q', 50
                                mem[_7343 + 96] = arg1
                                mem[_7343 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7343 + 132] = uint256(stor9.field_0)
                                mem[_7343 + 164] = 128
                                mem[_7343 + 260] = mem[_7343]
                                idx = 0
                                s = _7343 + 32
                                t = _7343 + 292
                                while idx < mem[_7343]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7343 + 196] = this.address
                                mem[_7343 + 228] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7343 + (32 * mem[_7343]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8271 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8335 = mem[_8271]
                                require mem[_8271] <= test266151307()
                                require _8271 + mem[_8271] + 31 < _8271 + return_data.size
                                _8399 = mem[_8271 + mem[_8271]]
                                if mem[_8271 + mem[_8271]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8271 + ceil32(return_data.size) + floor32(mem[_8271 + mem[_8271]]) + 1 > test266151307() or floor32(mem[_8271 + mem[_8271]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8271 + ceil32(return_data.size) + floor32(mem[_8271 + mem[_8271]]) + 1
                                mem[_8271 + ceil32(return_data.size)] = _8399
                                require _8335 + (32 * _8399) + 32 <= return_data.size
                                idx = _8271 + _8335 + 32
                                s = _8271 + ceil32(return_data.size) + 32
                                while idx < _8271 + _8335 + (32 * _8399) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                        else:
                            _4111 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            if 0 >= mem[_4111]:
                                revert with 'NH{q', 50
                            mem[_4111 + 32] = WBNBAddress
                            if 1 >= mem[_4111]:
                                revert with 'NH{q', 50
                            mem[_4111 + 64] = sub_93a39776Address
                            if 2 >= mem[_4111]:
                                revert with 'NH{q', 50
                            mem[_4111 + 96] = arg1
                            mem[_4111 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4111 + 132] = 0
                            mem[_4111 + 164] = 128
                            mem[_4111 + 260] = mem[_4111]
                            idx = 0
                            s = _4111 + 32
                            t = _4111 + 292
                            while idx < mem[_4111]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4111 + 196] = this.address
                            mem[_4111 + 228] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4111 + (32 * mem[_4111]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5567 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5599 = mem[_5567]
                            require mem[_5567] <= test266151307()
                            require _5567 + mem[_5567] + 31 < _5567 + return_data.size
                            _5631 = mem[_5567 + mem[_5567]]
                            if mem[_5567 + mem[_5567]] > test266151307():
                                revert with 'NH{q', 65
                            if _5567 + ceil32(return_data.size) + floor32(mem[_5567 + mem[_5567]]) + 1 > test266151307() or floor32(mem[_5567 + mem[_5567]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5567 + ceil32(return_data.size) + floor32(mem[_5567 + mem[_5567]]) + 1
                            mem[_5567 + ceil32(return_data.size)] = _5631
                            require _5599 + (32 * _5631) + 32 <= return_data.size
                            idx = _5567 + _5599 + 32
                            s = _5567 + ceil32(return_data.size) + 32
                            while idx < _5567 + _5599 + (32 * _5631) + 32:
                                require mem[idx] == mem[idx]
                                mem[s] = mem[idx]
                                idx = idx + 32
                                s = s + 32
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7007 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7039 = mem[_7007]
                            require mem[_7007] == mem[_7007]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4088 and -stor6 + 10000 > -1 / _4088:
                                revert with 'NH{q', 17
                            if (10000 * _4088) - (stor6 * _4088) / 10000 > mem[_7007]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _7039
                            require ext_code.size(arg1)
                            call arg1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _7039
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7199 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7199] == bool(mem[_7199])
                            if not mem[_7199]:
                                revert with 0, 'HP/HT'
                            if block.timestamp > -10:
                                revert with 'NH{q', 17
                            if sub_93a39776Address == WBNBAddress:
                                _7342 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                if 0 >= mem[_7342]:
                                    revert with 'NH{q', 50
                                mem[_7342 + 32] = sub_93a39776Address
                                if 1 >= mem[_7342]:
                                    revert with 'NH{q', 50
                                mem[_7342 + 64] = arg1
                                mem[_7342 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7342 + 100] = uint256(stor9.field_0)
                                mem[_7342 + 132] = 128
                                mem[_7342 + 228] = mem[_7342]
                                idx = 0
                                s = _7342 + 32
                                t = _7342 + 260
                                while idx < mem[_7342]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7342 + 164] = this.address
                                mem[_7342 + 196] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7342 + (32 * mem[_7342]) + -mem[64] + 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8270 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8334 = mem[_8270]
                                require mem[_8270] <= test266151307()
                                require _8270 + mem[_8270] + 31 < _8270 + return_data.size
                                _8398 = mem[_8270 + mem[_8270]]
                                if mem[_8270 + mem[_8270]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8270 + ceil32(return_data.size) + floor32(mem[_8270 + mem[_8270]]) + 1 > test266151307() or floor32(mem[_8270 + mem[_8270]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8270 + ceil32(return_data.size) + floor32(mem[_8270 + mem[_8270]]) + 1
                                mem[_8270 + ceil32(return_data.size)] = _8398
                                require _8334 + (32 * _8398) + 32 <= return_data.size
                                idx = _8270 + _8334 + 32
                                s = _8270 + ceil32(return_data.size) + 32
                                while idx < _8270 + _8334 + (32 * _8398) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                            else:
                                _7341 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                if 0 >= mem[_7341]:
                                    revert with 'NH{q', 50
                                mem[_7341 + 32] = WBNBAddress
                                if 1 >= mem[_7341]:
                                    revert with 'NH{q', 50
                                mem[_7341 + 64] = sub_93a39776Address
                                if 2 >= mem[_7341]:
                                    revert with 'NH{q', 50
                                mem[_7341 + 96] = arg1
                                mem[_7341 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7341 + 132] = uint256(stor9.field_0)
                                mem[_7341 + 164] = 128
                                mem[_7341 + 260] = mem[_7341]
                                idx = 0
                                s = _7341 + 32
                                t = _7341 + 292
                                while idx < mem[_7341]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7341 + 196] = this.address
                                mem[_7341 + 228] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7341 + (32 * mem[_7341]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8269 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8333 = mem[_8269]
                                require mem[_8269] <= test266151307()
                                require _8269 + mem[_8269] + 31 < _8269 + return_data.size
                                _8397 = mem[_8269 + mem[_8269]]
                                if mem[_8269 + mem[_8269]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8269 + ceil32(return_data.size) + floor32(mem[_8269 + mem[_8269]]) + 1 > test266151307() or floor32(mem[_8269 + mem[_8269]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8269 + ceil32(return_data.size) + floor32(mem[_8269 + mem[_8269]]) + 1
                                mem[_8269 + ceil32(return_data.size)] = _8397
                                require _8333 + (32 * _8397) + 32 <= return_data.size
                                idx = _8269 + _8333 + 32
                                s = _8269 + ceil32(return_data.size) + 32
                                while idx < _8269 + _8333 + (32 * _8397) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                    else:
                        _1789 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if 0 >= mem[_1789]:
                            revert with 'NH{q', 50
                        mem[_1789 + 32] = WBNBAddress
                        if 1 >= mem[_1789]:
                            revert with 'NH{q', 50
                        mem[_1789 + 64] = sub_93a39776Address
                        if 2 >= mem[_1789]:
                            revert with 'NH{q', 50
                        mem[_1789 + 96] = arg1
                        mem[_1789 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1789 + 132] = uint256(stor7.field_0)
                        mem[_1789 + 164] = 64
                        mem[_1789 + 196] = mem[_1789]
                        idx = 0
                        s = _1789 + 32
                        t = _1789 + 228
                        while idx < mem[_1789]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(ROUTERAddress)
                        staticcall ROUTERAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1789 + (32 * mem[_1789]) + -mem[64] + 224]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2767 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2783 = mem[_2767]
                        require mem[_2767] <= test266151307()
                        require _2767 + mem[_2767] + 31 < _2767 + return_data.size
                        _2799 = mem[_2767 + mem[_2767]]
                        if mem[_2767 + mem[_2767]] > test266151307():
                            revert with 'NH{q', 65
                        if _2767 + ceil32(return_data.size) + floor32(mem[_2767 + mem[_2767]]) + 1 > test266151307() or floor32(mem[_2767 + mem[_2767]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2767 + ceil32(return_data.size) + floor32(mem[_2767 + mem[_2767]]) + 1
                        mem[_2767 + ceil32(return_data.size)] = _2799
                        require _2783 + (32 * _2799) + 32 <= return_data.size
                        idx = _2767 + _2783 + 32
                        s = _2767 + ceil32(return_data.size) + 32
                        while idx < _2767 + _2783 + (32 * _2799) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if _2799 < 1:
                            revert with 'NH{q', 17
                        if _2799 - 1 >= _2799:
                            revert with 'NH{q', 50
                        _4087 = mem[(32 * _2799 - 1) + _2767 + ceil32(return_data.size) + 32]
                        if sub_93a39776Address == WBNBAddress:
                            _4110 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_4110]:
                                revert with 'NH{q', 50
                            mem[_4110 + 32] = sub_93a39776Address
                            if 1 >= mem[_4110]:
                                revert with 'NH{q', 50
                            mem[_4110 + 64] = arg1
                            mem[_4110 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4110 + 100] = 0
                            mem[_4110 + 132] = 128
                            mem[_4110 + 228] = mem[_4110]
                            idx = 0
                            s = _4110 + 32
                            t = _4110 + 260
                            while idx < mem[_4110]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4110 + 164] = this.address
                            mem[_4110 + 196] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4110 + (32 * mem[_4110]) + -mem[64] + 256]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5566 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5598 = mem[_5566]
                            require mem[_5566] <= test266151307()
                            require _5566 + mem[_5566] + 31 < _5566 + return_data.size
                            _5630 = mem[_5566 + mem[_5566]]
                            if mem[_5566 + mem[_5566]] > test266151307():
                                revert with 'NH{q', 65
                            if _5566 + ceil32(return_data.size) + floor32(mem[_5566 + mem[_5566]]) + 1 > test266151307() or floor32(mem[_5566 + mem[_5566]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5566 + ceil32(return_data.size) + floor32(mem[_5566 + mem[_5566]]) + 1
                            mem[_5566 + ceil32(return_data.size)] = _5630
                            require _5598 + (32 * _5630) + 32 <= return_data.size
                            idx = _5566 + _5598 + 32
                            s = _5566 + ceil32(return_data.size) + 32
                            while idx < _5566 + _5598 + (32 * _5630) + 32:
                                require mem[idx] == mem[idx]
                                mem[s] = mem[idx]
                                idx = idx + 32
                                s = s + 32
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7006 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7038 = mem[_7006]
                            require mem[_7006] == mem[_7006]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4087 and -stor6 + 10000 > -1 / _4087:
                                revert with 'NH{q', 17
                            if (10000 * _4087) - (stor6 * _4087) / 10000 > mem[_7006]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _7038
                            require ext_code.size(arg1)
                            call arg1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _7038
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7198 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7198] == bool(mem[_7198])
                            if not mem[_7198]:
                                revert with 0, 'HP/HT'
                            if block.timestamp > -10:
                                revert with 'NH{q', 17
                            if sub_93a39776Address == WBNBAddress:
                                _7340 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                if 0 >= mem[_7340]:
                                    revert with 'NH{q', 50
                                mem[_7340 + 32] = sub_93a39776Address
                                if 1 >= mem[_7340]:
                                    revert with 'NH{q', 50
                                mem[_7340 + 64] = arg1
                                mem[_7340 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7340 + 100] = uint256(stor9.field_0)
                                mem[_7340 + 132] = 128
                                mem[_7340 + 228] = mem[_7340]
                                idx = 0
                                s = _7340 + 32
                                t = _7340 + 260
                                while idx < mem[_7340]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7340 + 164] = this.address
                                mem[_7340 + 196] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7340 + (32 * mem[_7340]) + -mem[64] + 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8268 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8332 = mem[_8268]
                                require mem[_8268] <= test266151307()
                                require _8268 + mem[_8268] + 31 < _8268 + return_data.size
                                _8396 = mem[_8268 + mem[_8268]]
                                if mem[_8268 + mem[_8268]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8268 + ceil32(return_data.size) + floor32(mem[_8268 + mem[_8268]]) + 1 > test266151307() or floor32(mem[_8268 + mem[_8268]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8268 + ceil32(return_data.size) + floor32(mem[_8268 + mem[_8268]]) + 1
                                mem[_8268 + ceil32(return_data.size)] = _8396
                                require _8332 + (32 * _8396) + 32 <= return_data.size
                                idx = _8268 + _8332 + 32
                                s = _8268 + ceil32(return_data.size) + 32
                                while idx < _8268 + _8332 + (32 * _8396) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                            else:
                                _7339 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                if 0 >= mem[_7339]:
                                    revert with 'NH{q', 50
                                mem[_7339 + 32] = WBNBAddress
                                if 1 >= mem[_7339]:
                                    revert with 'NH{q', 50
                                mem[_7339 + 64] = sub_93a39776Address
                                if 2 >= mem[_7339]:
                                    revert with 'NH{q', 50
                                mem[_7339 + 96] = arg1
                                mem[_7339 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7339 + 132] = uint256(stor9.field_0)
                                mem[_7339 + 164] = 128
                                mem[_7339 + 260] = mem[_7339]
                                idx = 0
                                s = _7339 + 32
                                t = _7339 + 292
                                while idx < mem[_7339]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7339 + 196] = this.address
                                mem[_7339 + 228] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7339 + (32 * mem[_7339]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8267 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8331 = mem[_8267]
                                require mem[_8267] <= test266151307()
                                require _8267 + mem[_8267] + 31 < _8267 + return_data.size
                                _8395 = mem[_8267 + mem[_8267]]
                                if mem[_8267 + mem[_8267]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8267 + ceil32(return_data.size) + floor32(mem[_8267 + mem[_8267]]) + 1 > test266151307() or floor32(mem[_8267 + mem[_8267]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8267 + ceil32(return_data.size) + floor32(mem[_8267 + mem[_8267]]) + 1
                                mem[_8267 + ceil32(return_data.size)] = _8395
                                require _8331 + (32 * _8395) + 32 <= return_data.size
                                idx = _8267 + _8331 + 32
                                s = _8267 + ceil32(return_data.size) + 32
                                while idx < _8267 + _8331 + (32 * _8395) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                        else:
                            _4109 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            if 0 >= mem[_4109]:
                                revert with 'NH{q', 50
                            mem[_4109 + 32] = WBNBAddress
                            if 1 >= mem[_4109]:
                                revert with 'NH{q', 50
                            mem[_4109 + 64] = sub_93a39776Address
                            if 2 >= mem[_4109]:
                                revert with 'NH{q', 50
                            mem[_4109 + 96] = arg1
                            mem[_4109 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4109 + 132] = 0
                            mem[_4109 + 164] = 128
                            mem[_4109 + 260] = mem[_4109]
                            idx = 0
                            s = _4109 + 32
                            t = _4109 + 292
                            while idx < mem[_4109]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4109 + 196] = this.address
                            mem[_4109 + 228] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4109 + (32 * mem[_4109]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5565 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5597 = mem[_5565]
                            require mem[_5565] <= test266151307()
                            require _5565 + mem[_5565] + 31 < _5565 + return_data.size
                            _5629 = mem[_5565 + mem[_5565]]
                            if mem[_5565 + mem[_5565]] > test266151307():
                                revert with 'NH{q', 65
                            if _5565 + ceil32(return_data.size) + floor32(mem[_5565 + mem[_5565]]) + 1 > test266151307() or floor32(mem[_5565 + mem[_5565]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5565 + ceil32(return_data.size) + floor32(mem[_5565 + mem[_5565]]) + 1
                            mem[_5565 + ceil32(return_data.size)] = _5629
                            require _5597 + (32 * _5629) + 32 <= return_data.size
                            idx = _5565 + _5597 + 32
                            s = _5565 + ceil32(return_data.size) + 32
                            while idx < _5565 + _5597 + (32 * _5629) + 32:
                                require mem[idx] == mem[idx]
                                mem[s] = mem[idx]
                                idx = idx + 32
                                s = s + 32
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7005 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7037 = mem[_7005]
                            require mem[_7005] == mem[_7005]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4087 and -stor6 + 10000 > -1 / _4087:
                                revert with 'NH{q', 17
                            if (10000 * _4087) - (stor6 * _4087) / 10000 > mem[_7005]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _7037
                            require ext_code.size(arg1)
                            call arg1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _7037
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7197 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7197] == bool(mem[_7197])
                            if not mem[_7197]:
                                revert with 0, 'HP/HT'
                            if block.timestamp > -10:
                                revert with 'NH{q', 17
                            if sub_93a39776Address == WBNBAddress:
                                _7338 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                if 0 >= mem[_7338]:
                                    revert with 'NH{q', 50
                                mem[_7338 + 32] = sub_93a39776Address
                                if 1 >= mem[_7338]:
                                    revert with 'NH{q', 50
                                mem[_7338 + 64] = arg1
                                mem[_7338 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7338 + 100] = uint256(stor9.field_0)
                                mem[_7338 + 132] = 128
                                mem[_7338 + 228] = mem[_7338]
                                idx = 0
                                s = _7338 + 32
                                t = _7338 + 260
                                while idx < mem[_7338]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7338 + 164] = this.address
                                mem[_7338 + 196] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7338 + (32 * mem[_7338]) + -mem[64] + 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8266 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8330 = mem[_8266]
                                require mem[_8266] <= test266151307()
                                require _8266 + mem[_8266] + 31 < _8266 + return_data.size
                                _8394 = mem[_8266 + mem[_8266]]
                                if mem[_8266 + mem[_8266]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8266 + ceil32(return_data.size) + floor32(mem[_8266 + mem[_8266]]) + 1 > test266151307() or floor32(mem[_8266 + mem[_8266]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8266 + ceil32(return_data.size) + floor32(mem[_8266 + mem[_8266]]) + 1
                                mem[_8266 + ceil32(return_data.size)] = _8394
                                require _8330 + (32 * _8394) + 32 <= return_data.size
                                idx = _8266 + _8330 + 32
                                s = _8266 + ceil32(return_data.size) + 32
                                while idx < _8266 + _8330 + (32 * _8394) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                            else:
                                _7337 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                if 0 >= mem[_7337]:
                                    revert with 'NH{q', 50
                                mem[_7337 + 32] = WBNBAddress
                                if 1 >= mem[_7337]:
                                    revert with 'NH{q', 50
                                mem[_7337 + 64] = sub_93a39776Address
                                if 2 >= mem[_7337]:
                                    revert with 'NH{q', 50
                                mem[_7337 + 96] = arg1
                                mem[_7337 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7337 + 132] = uint256(stor9.field_0)
                                mem[_7337 + 164] = 128
                                mem[_7337 + 260] = mem[_7337]
                                idx = 0
                                s = _7337 + 32
                                t = _7337 + 292
                                while idx < mem[_7337]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7337 + 196] = this.address
                                mem[_7337 + 228] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7337 + (32 * mem[_7337]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8265 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8329 = mem[_8265]
                                require mem[_8265] <= test266151307()
                                require _8265 + mem[_8265] + 31 < _8265 + return_data.size
                                _8393 = mem[_8265 + mem[_8265]]
                                if mem[_8265 + mem[_8265]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8265 + ceil32(return_data.size) + floor32(mem[_8265 + mem[_8265]]) + 1 > test266151307() or floor32(mem[_8265 + mem[_8265]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8265 + ceil32(return_data.size) + floor32(mem[_8265 + mem[_8265]]) + 1
                                mem[_8265 + ceil32(return_data.size)] = _8393
                                require _8329 + (32 * _8393) + 32 <= return_data.size
                                idx = _8265 + _8329 + 32
                                s = _8265 + ceil32(return_data.size) + 32
                                while idx < _8265 + _8329 + (32 * _8393) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
        else:
            mem[96] = 3
            mem[128] = WBNBAddress
            mem[160] = sub_93a39776Address
            mem[192] = arg1
            mem[224] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[228] = uint256(stor9.field_0)
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
                   args uint256(stor9.field_0), Array(len=3, data=mem[324 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 224
            require return_data.size >= 32
            _809 = mem[224 len 4], Mask(224, 0, stor9.field_32)
            require mem[224 len 4], Mask(224, 0, stor9.field_32) <= test266151307()
            require mem[224 len 4], Mask(224, 0, stor9.field_32) + 255 < return_data.size + 224
            _813 = mem[mem[224 len 4], Mask(224, 0, stor9.field_32) + 224]
            if mem[mem[224 len 4], Mask(224, 0, stor9.field_32) + 224] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[224 len 4], Mask(224, 0, stor9.field_32) + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], Mask(224, 0, stor9.field_32) + 224]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], Mask(224, 0, stor9.field_32) + 224]) + 225
            mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 0, stor9.field_32) + 224]
            require _809 + (32 * _813) + 32 <= return_data.size
            idx = _809 + 256
            s = ceil32(return_data.size) + 256
            while idx < _809 + (32 * _813) + 256:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            if 0 >= _813:
                revert with 'NH{q', 50
            if mem[ceil32(return_data.size) + 256] > eth.balance(this.address):
                revert with 0, 'Locked'
            if bool(uint8(stor5.field_160)) != 1:
                if block.timestamp > -10:
                    revert with 'NH{q', 17
                if sub_93a39776Address == WBNBAddress:
                    _1750 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_1750]:
                        revert with 'NH{q', 50
                    mem[_1750 + 32] = sub_93a39776Address
                    if 1 >= mem[_1750]:
                        revert with 'NH{q', 50
                    mem[_1750 + 64] = arg1
                    mem[_1750 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[_1750 + 100] = uint256(stor9.field_0)
                    mem[_1750 + 132] = 128
                    mem[_1750 + 228] = mem[_1750]
                    idx = 0
                    s = _1750 + 32
                    t = _1750 + 260
                    while idx < mem[_1750]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1750 + 164] = this.address
                    mem[_1750 + 196] = block.timestamp + 9
                    require ext_code.size(ROUTERAddress)
                    call ROUTERAddress.mem[mem[64] len 4] with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1750 + (32 * mem[_1750]) + -mem[64] + 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2818 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2842 = mem[_2818]
                    require mem[_2818] <= test266151307()
                    require _2818 + mem[_2818] + 31 < _2818 + return_data.size
                    _2850 = mem[_2818 + mem[_2818]]
                    if mem[_2818 + mem[_2818]] > test266151307():
                        revert with 'NH{q', 65
                    if _2818 + ceil32(return_data.size) + floor32(mem[_2818 + mem[_2818]]) + 1 > test266151307() or floor32(mem[_2818 + mem[_2818]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _2818 + ceil32(return_data.size) + floor32(mem[_2818 + mem[_2818]]) + 1
                    mem[_2818 + ceil32(return_data.size)] = _2850
                    require _2842 + (32 * _2850) + 32 <= return_data.size
                    idx = _2818 + _2842 + 32
                    s = _2818 + ceil32(return_data.size) + 32
                    while idx < _2818 + _2842 + (32 * _2850) + 32:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                else:
                    _1749 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    if 0 >= mem[_1749]:
                        revert with 'NH{q', 50
                    mem[_1749 + 32] = WBNBAddress
                    if 1 >= mem[_1749]:
                        revert with 'NH{q', 50
                    mem[_1749 + 64] = sub_93a39776Address
                    if 2 >= mem[_1749]:
                        revert with 'NH{q', 50
                    mem[_1749 + 96] = arg1
                    mem[_1749 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[_1749 + 132] = uint256(stor9.field_0)
                    mem[_1749 + 164] = 128
                    mem[_1749 + 260] = mem[_1749]
                    idx = 0
                    s = _1749 + 32
                    t = _1749 + 292
                    while idx < mem[_1749]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1749 + 196] = this.address
                    mem[_1749 + 228] = block.timestamp + 9
                    require ext_code.size(ROUTERAddress)
                    call ROUTERAddress.mem[mem[64] len 4] with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1749 + (32 * mem[_1749]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2817 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2841 = mem[_2817]
                    require mem[_2817] <= test266151307()
                    require _2817 + mem[_2817] + 31 < _2817 + return_data.size
                    _2849 = mem[_2817 + mem[_2817]]
                    if mem[_2817 + mem[_2817]] > test266151307():
                        revert with 'NH{q', 65
                    if _2817 + ceil32(return_data.size) + floor32(mem[_2817 + mem[_2817]]) + 1 > test266151307() or floor32(mem[_2817 + mem[_2817]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _2817 + ceil32(return_data.size) + floor32(mem[_2817 + mem[_2817]]) + 1
                    mem[_2817 + ceil32(return_data.size)] = _2849
                    require _2841 + (32 * _2849) + 32 <= return_data.size
                    idx = _2817 + _2841 + 32
                    s = _2817 + ceil32(return_data.size) + 32
                    while idx < _2817 + _2841 + (32 * _2849) + 32:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
            else:
                if msg.sender == address(stor5.field_0):
                    if block.timestamp > -10:
                        revert with 'NH{q', 17
                    if sub_93a39776Address == WBNBAddress:
                        _1772 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_1772]:
                            revert with 'NH{q', 50
                        mem[_1772 + 32] = sub_93a39776Address
                        if 1 >= mem[_1772]:
                            revert with 'NH{q', 50
                        mem[_1772 + 64] = arg1
                        mem[_1772 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1772 + 100] = uint256(stor7.field_0)
                        mem[_1772 + 132] = 64
                        mem[_1772 + 164] = mem[_1772]
                        idx = 0
                        s = _1772 + 32
                        t = _1772 + 196
                        while idx < mem[_1772]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(ROUTERAddress)
                        staticcall ROUTERAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1772 + (32 * mem[_1772]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2762 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2778 = mem[_2762]
                        require mem[_2762] <= test266151307()
                        require _2762 + mem[_2762] + 31 < _2762 + return_data.size
                        _2794 = mem[_2762 + mem[_2762]]
                        if mem[_2762 + mem[_2762]] > test266151307():
                            revert with 'NH{q', 65
                        if _2762 + ceil32(return_data.size) + floor32(mem[_2762 + mem[_2762]]) + 1 > test266151307() or floor32(mem[_2762 + mem[_2762]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2762 + ceil32(return_data.size) + floor32(mem[_2762 + mem[_2762]]) + 1
                        mem[_2762 + ceil32(return_data.size)] = _2794
                        require _2778 + (32 * _2794) + 32 <= return_data.size
                        idx = _2762 + _2778 + 32
                        s = _2762 + ceil32(return_data.size) + 32
                        while idx < _2762 + _2778 + (32 * _2794) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if _2794 < 1:
                            revert with 'NH{q', 17
                        if _2794 - 1 >= _2794:
                            revert with 'NH{q', 50
                        _4082 = mem[(32 * _2794 - 1) + _2762 + ceil32(return_data.size) + 32]
                        if sub_93a39776Address == WBNBAddress:
                            _4100 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_4100]:
                                revert with 'NH{q', 50
                            mem[_4100 + 32] = sub_93a39776Address
                            if 1 >= mem[_4100]:
                                revert with 'NH{q', 50
                            mem[_4100 + 64] = arg1
                            mem[_4100 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4100 + 100] = 0
                            mem[_4100 + 132] = 128
                            mem[_4100 + 228] = mem[_4100]
                            idx = 0
                            s = _4100 + 32
                            t = _4100 + 260
                            while idx < mem[_4100]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4100 + 164] = this.address
                            mem[_4100 + 196] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4100 + (32 * mem[_4100]) + -mem[64] + 256]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5556 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5588 = mem[_5556]
                            require mem[_5556] <= test266151307()
                            require _5556 + mem[_5556] + 31 < _5556 + return_data.size
                            _5620 = mem[_5556 + mem[_5556]]
                            if mem[_5556 + mem[_5556]] > test266151307():
                                revert with 'NH{q', 65
                            if _5556 + ceil32(return_data.size) + floor32(mem[_5556 + mem[_5556]]) + 1 > test266151307() or floor32(mem[_5556 + mem[_5556]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5556 + ceil32(return_data.size) + floor32(mem[_5556 + mem[_5556]]) + 1
                            mem[_5556 + ceil32(return_data.size)] = _5620
                            require _5588 + (32 * _5620) + 32 <= return_data.size
                            idx = _5556 + _5588 + 32
                            s = _5556 + ceil32(return_data.size) + 32
                            while idx < _5556 + _5588 + (32 * _5620) + 32:
                                require mem[idx] == mem[idx]
                                mem[s] = mem[idx]
                                idx = idx + 32
                                s = s + 32
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6996 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7028 = mem[_6996]
                            require mem[_6996] == mem[_6996]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4082 and -stor6 + 10000 > -1 / _4082:
                                revert with 'NH{q', 17
                            if (10000 * _4082) - (stor6 * _4082) / 10000 > mem[_6996]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _7028
                            require ext_code.size(arg1)
                            call arg1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _7028
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7188 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7188] == bool(mem[_7188])
                            if not mem[_7188]:
                                revert with 0, 'HP/HT'
                            if block.timestamp > -10:
                                revert with 'NH{q', 17
                            if sub_93a39776Address == WBNBAddress:
                                _7320 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                if 0 >= mem[_7320]:
                                    revert with 'NH{q', 50
                                mem[_7320 + 32] = sub_93a39776Address
                                if 1 >= mem[_7320]:
                                    revert with 'NH{q', 50
                                mem[_7320 + 64] = arg1
                                mem[_7320 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7320 + 100] = uint256(stor9.field_0)
                                mem[_7320 + 132] = 128
                                mem[_7320 + 228] = mem[_7320]
                                idx = 0
                                s = _7320 + 32
                                t = _7320 + 260
                                while idx < mem[_7320]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7320 + 164] = this.address
                                mem[_7320 + 196] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7320 + (32 * mem[_7320]) + -mem[64] + 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8248 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8312 = mem[_8248]
                                require mem[_8248] <= test266151307()
                                require _8248 + mem[_8248] + 31 < _8248 + return_data.size
                                _8376 = mem[_8248 + mem[_8248]]
                                if mem[_8248 + mem[_8248]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8248 + ceil32(return_data.size) + floor32(mem[_8248 + mem[_8248]]) + 1 > test266151307() or floor32(mem[_8248 + mem[_8248]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8248 + ceil32(return_data.size) + floor32(mem[_8248 + mem[_8248]]) + 1
                                mem[_8248 + ceil32(return_data.size)] = _8376
                                require _8312 + (32 * _8376) + 32 <= return_data.size
                                idx = _8248 + _8312 + 32
                                s = _8248 + ceil32(return_data.size) + 32
                                while idx < _8248 + _8312 + (32 * _8376) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                            else:
                                _7319 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                if 0 >= mem[_7319]:
                                    revert with 'NH{q', 50
                                mem[_7319 + 32] = WBNBAddress
                                if 1 >= mem[_7319]:
                                    revert with 'NH{q', 50
                                mem[_7319 + 64] = sub_93a39776Address
                                if 2 >= mem[_7319]:
                                    revert with 'NH{q', 50
                                mem[_7319 + 96] = arg1
                                mem[_7319 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7319 + 132] = uint256(stor9.field_0)
                                mem[_7319 + 164] = 128
                                mem[_7319 + 260] = mem[_7319]
                                idx = 0
                                s = _7319 + 32
                                t = _7319 + 292
                                while idx < mem[_7319]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7319 + 196] = this.address
                                mem[_7319 + 228] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7319 + (32 * mem[_7319]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8247 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8311 = mem[_8247]
                                require mem[_8247] <= test266151307()
                                require _8247 + mem[_8247] + 31 < _8247 + return_data.size
                                _8375 = mem[_8247 + mem[_8247]]
                                if mem[_8247 + mem[_8247]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8247 + ceil32(return_data.size) + floor32(mem[_8247 + mem[_8247]]) + 1 > test266151307() or floor32(mem[_8247 + mem[_8247]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8247 + ceil32(return_data.size) + floor32(mem[_8247 + mem[_8247]]) + 1
                                mem[_8247 + ceil32(return_data.size)] = _8375
                                require _8311 + (32 * _8375) + 32 <= return_data.size
                                idx = _8247 + _8311 + 32
                                s = _8247 + ceil32(return_data.size) + 32
                                while idx < _8247 + _8311 + (32 * _8375) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                        else:
                            _4099 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            if 0 >= mem[_4099]:
                                revert with 'NH{q', 50
                            mem[_4099 + 32] = WBNBAddress
                            if 1 >= mem[_4099]:
                                revert with 'NH{q', 50
                            mem[_4099 + 64] = sub_93a39776Address
                            if 2 >= mem[_4099]:
                                revert with 'NH{q', 50
                            mem[_4099 + 96] = arg1
                            mem[_4099 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4099 + 132] = 0
                            mem[_4099 + 164] = 128
                            mem[_4099 + 260] = mem[_4099]
                            idx = 0
                            s = _4099 + 32
                            t = _4099 + 292
                            while idx < mem[_4099]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4099 + 196] = this.address
                            mem[_4099 + 228] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4099 + (32 * mem[_4099]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5555 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5587 = mem[_5555]
                            require mem[_5555] <= test266151307()
                            require _5555 + mem[_5555] + 31 < _5555 + return_data.size
                            _5619 = mem[_5555 + mem[_5555]]
                            if mem[_5555 + mem[_5555]] > test266151307():
                                revert with 'NH{q', 65
                            if _5555 + ceil32(return_data.size) + floor32(mem[_5555 + mem[_5555]]) + 1 > test266151307() or floor32(mem[_5555 + mem[_5555]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5555 + ceil32(return_data.size) + floor32(mem[_5555 + mem[_5555]]) + 1
                            mem[_5555 + ceil32(return_data.size)] = _5619
                            require _5587 + (32 * _5619) + 32 <= return_data.size
                            idx = _5555 + _5587 + 32
                            s = _5555 + ceil32(return_data.size) + 32
                            while idx < _5555 + _5587 + (32 * _5619) + 32:
                                require mem[idx] == mem[idx]
                                mem[s] = mem[idx]
                                idx = idx + 32
                                s = s + 32
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6995 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7027 = mem[_6995]
                            require mem[_6995] == mem[_6995]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4082 and -stor6 + 10000 > -1 / _4082:
                                revert with 'NH{q', 17
                            if (10000 * _4082) - (stor6 * _4082) / 10000 > mem[_6995]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _7027
                            require ext_code.size(arg1)
                            call arg1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _7027
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7187 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7187] == bool(mem[_7187])
                            if not mem[_7187]:
                                revert with 0, 'HP/HT'
                            if block.timestamp > -10:
                                revert with 'NH{q', 17
                            if sub_93a39776Address == WBNBAddress:
                                _7318 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                if 0 >= mem[_7318]:
                                    revert with 'NH{q', 50
                                mem[_7318 + 32] = sub_93a39776Address
                                if 1 >= mem[_7318]:
                                    revert with 'NH{q', 50
                                mem[_7318 + 64] = arg1
                                mem[_7318 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7318 + 100] = uint256(stor9.field_0)
                                mem[_7318 + 132] = 128
                                mem[_7318 + 228] = mem[_7318]
                                idx = 0
                                s = _7318 + 32
                                t = _7318 + 260
                                while idx < mem[_7318]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7318 + 164] = this.address
                                mem[_7318 + 196] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7318 + (32 * mem[_7318]) + -mem[64] + 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8246 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8310 = mem[_8246]
                                require mem[_8246] <= test266151307()
                                require _8246 + mem[_8246] + 31 < _8246 + return_data.size
                                _8374 = mem[_8246 + mem[_8246]]
                                if mem[_8246 + mem[_8246]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8246 + ceil32(return_data.size) + floor32(mem[_8246 + mem[_8246]]) + 1 > test266151307() or floor32(mem[_8246 + mem[_8246]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8246 + ceil32(return_data.size) + floor32(mem[_8246 + mem[_8246]]) + 1
                                mem[_8246 + ceil32(return_data.size)] = _8374
                                require _8310 + (32 * _8374) + 32 <= return_data.size
                                idx = _8246 + _8310 + 32
                                s = _8246 + ceil32(return_data.size) + 32
                                while idx < _8246 + _8310 + (32 * _8374) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                            else:
                                _7317 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                if 0 >= mem[_7317]:
                                    revert with 'NH{q', 50
                                mem[_7317 + 32] = WBNBAddress
                                if 1 >= mem[_7317]:
                                    revert with 'NH{q', 50
                                mem[_7317 + 64] = sub_93a39776Address
                                if 2 >= mem[_7317]:
                                    revert with 'NH{q', 50
                                mem[_7317 + 96] = arg1
                                mem[_7317 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7317 + 132] = uint256(stor9.field_0)
                                mem[_7317 + 164] = 128
                                mem[_7317 + 260] = mem[_7317]
                                idx = 0
                                s = _7317 + 32
                                t = _7317 + 292
                                while idx < mem[_7317]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7317 + 196] = this.address
                                mem[_7317 + 228] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7317 + (32 * mem[_7317]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8245 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8309 = mem[_8245]
                                require mem[_8245] <= test266151307()
                                require _8245 + mem[_8245] + 31 < _8245 + return_data.size
                                _8373 = mem[_8245 + mem[_8245]]
                                if mem[_8245 + mem[_8245]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8245 + ceil32(return_data.size) + floor32(mem[_8245 + mem[_8245]]) + 1 > test266151307() or floor32(mem[_8245 + mem[_8245]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8245 + ceil32(return_data.size) + floor32(mem[_8245 + mem[_8245]]) + 1
                                mem[_8245 + ceil32(return_data.size)] = _8373
                                require _8309 + (32 * _8373) + 32 <= return_data.size
                                idx = _8245 + _8309 + 32
                                s = _8245 + ceil32(return_data.size) + 32
                                while idx < _8245 + _8309 + (32 * _8373) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                    else:
                        _1771 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if 0 >= mem[_1771]:
                            revert with 'NH{q', 50
                        mem[_1771 + 32] = WBNBAddress
                        if 1 >= mem[_1771]:
                            revert with 'NH{q', 50
                        mem[_1771 + 64] = sub_93a39776Address
                        if 2 >= mem[_1771]:
                            revert with 'NH{q', 50
                        mem[_1771 + 96] = arg1
                        mem[_1771 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1771 + 132] = uint256(stor7.field_0)
                        mem[_1771 + 164] = 64
                        mem[_1771 + 196] = mem[_1771]
                        idx = 0
                        s = _1771 + 32
                        t = _1771 + 228
                        while idx < mem[_1771]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(ROUTERAddress)
                        staticcall ROUTERAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1771 + (32 * mem[_1771]) + -mem[64] + 224]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2761 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2777 = mem[_2761]
                        require mem[_2761] <= test266151307()
                        require _2761 + mem[_2761] + 31 < _2761 + return_data.size
                        _2793 = mem[_2761 + mem[_2761]]
                        if mem[_2761 + mem[_2761]] > test266151307():
                            revert with 'NH{q', 65
                        if _2761 + ceil32(return_data.size) + floor32(mem[_2761 + mem[_2761]]) + 1 > test266151307() or floor32(mem[_2761 + mem[_2761]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2761 + ceil32(return_data.size) + floor32(mem[_2761 + mem[_2761]]) + 1
                        mem[_2761 + ceil32(return_data.size)] = _2793
                        require _2777 + (32 * _2793) + 32 <= return_data.size
                        idx = _2761 + _2777 + 32
                        s = _2761 + ceil32(return_data.size) + 32
                        while idx < _2761 + _2777 + (32 * _2793) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if _2793 < 1:
                            revert with 'NH{q', 17
                        if _2793 - 1 >= _2793:
                            revert with 'NH{q', 50
                        _4081 = mem[(32 * _2793 - 1) + _2761 + ceil32(return_data.size) + 32]
                        if sub_93a39776Address == WBNBAddress:
                            _4098 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_4098]:
                                revert with 'NH{q', 50
                            mem[_4098 + 32] = sub_93a39776Address
                            if 1 >= mem[_4098]:
                                revert with 'NH{q', 50
                            mem[_4098 + 64] = arg1
                            mem[_4098 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4098 + 100] = 0
                            mem[_4098 + 132] = 128
                            mem[_4098 + 228] = mem[_4098]
                            idx = 0
                            s = _4098 + 32
                            t = _4098 + 260
                            while idx < mem[_4098]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4098 + 164] = this.address
                            mem[_4098 + 196] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4098 + (32 * mem[_4098]) + -mem[64] + 256]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5554 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5586 = mem[_5554]
                            require mem[_5554] <= test266151307()
                            require _5554 + mem[_5554] + 31 < _5554 + return_data.size
                            _5618 = mem[_5554 + mem[_5554]]
                            if mem[_5554 + mem[_5554]] > test266151307():
                                revert with 'NH{q', 65
                            if _5554 + ceil32(return_data.size) + floor32(mem[_5554 + mem[_5554]]) + 1 > test266151307() or floor32(mem[_5554 + mem[_5554]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5554 + ceil32(return_data.size) + floor32(mem[_5554 + mem[_5554]]) + 1
                            mem[_5554 + ceil32(return_data.size)] = _5618
                            require _5586 + (32 * _5618) + 32 <= return_data.size
                            idx = _5554 + _5586 + 32
                            s = _5554 + ceil32(return_data.size) + 32
                            while idx < _5554 + _5586 + (32 * _5618) + 32:
                                require mem[idx] == mem[idx]
                                mem[s] = mem[idx]
                                idx = idx + 32
                                s = s + 32
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6994 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7026 = mem[_6994]
                            require mem[_6994] == mem[_6994]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4081 and -stor6 + 10000 > -1 / _4081:
                                revert with 'NH{q', 17
                            if (10000 * _4081) - (stor6 * _4081) / 10000 > mem[_6994]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _7026
                            require ext_code.size(arg1)
                            call arg1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _7026
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7186 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7186] == bool(mem[_7186])
                            if not mem[_7186]:
                                revert with 0, 'HP/HT'
                            if block.timestamp > -10:
                                revert with 'NH{q', 17
                            if sub_93a39776Address == WBNBAddress:
                                _7316 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                if 0 >= mem[_7316]:
                                    revert with 'NH{q', 50
                                mem[_7316 + 32] = sub_93a39776Address
                                if 1 >= mem[_7316]:
                                    revert with 'NH{q', 50
                                mem[_7316 + 64] = arg1
                                mem[_7316 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7316 + 100] = uint256(stor9.field_0)
                                mem[_7316 + 132] = 128
                                mem[_7316 + 228] = mem[_7316]
                                idx = 0
                                s = _7316 + 32
                                t = _7316 + 260
                                while idx < mem[_7316]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7316 + 164] = this.address
                                mem[_7316 + 196] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7316 + (32 * mem[_7316]) + -mem[64] + 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8244 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8308 = mem[_8244]
                                require mem[_8244] <= test266151307()
                                require _8244 + mem[_8244] + 31 < _8244 + return_data.size
                                _8372 = mem[_8244 + mem[_8244]]
                                if mem[_8244 + mem[_8244]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8244 + ceil32(return_data.size) + floor32(mem[_8244 + mem[_8244]]) + 1 > test266151307() or floor32(mem[_8244 + mem[_8244]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8244 + ceil32(return_data.size) + floor32(mem[_8244 + mem[_8244]]) + 1
                                mem[_8244 + ceil32(return_data.size)] = _8372
                                require _8308 + (32 * _8372) + 32 <= return_data.size
                                idx = _8244 + _8308 + 32
                                s = _8244 + ceil32(return_data.size) + 32
                                while idx < _8244 + _8308 + (32 * _8372) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                            else:
                                _7315 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                if 0 >= mem[_7315]:
                                    revert with 'NH{q', 50
                                mem[_7315 + 32] = WBNBAddress
                                if 1 >= mem[_7315]:
                                    revert with 'NH{q', 50
                                mem[_7315 + 64] = sub_93a39776Address
                                if 2 >= mem[_7315]:
                                    revert with 'NH{q', 50
                                mem[_7315 + 96] = arg1
                                mem[_7315 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7315 + 132] = uint256(stor9.field_0)
                                mem[_7315 + 164] = 128
                                mem[_7315 + 260] = mem[_7315]
                                idx = 0
                                s = _7315 + 32
                                t = _7315 + 292
                                while idx < mem[_7315]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7315 + 196] = this.address
                                mem[_7315 + 228] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7315 + (32 * mem[_7315]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8243 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8307 = mem[_8243]
                                require mem[_8243] <= test266151307()
                                require _8243 + mem[_8243] + 31 < _8243 + return_data.size
                                _8371 = mem[_8243 + mem[_8243]]
                                if mem[_8243 + mem[_8243]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8243 + ceil32(return_data.size) + floor32(mem[_8243 + mem[_8243]]) + 1 > test266151307() or floor32(mem[_8243 + mem[_8243]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8243 + ceil32(return_data.size) + floor32(mem[_8243 + mem[_8243]]) + 1
                                mem[_8243 + ceil32(return_data.size)] = _8371
                                require _8307 + (32 * _8371) + 32 <= return_data.size
                                idx = _8243 + _8307 + 32
                                s = _8243 + ceil32(return_data.size) + 32
                                while idx < _8243 + _8307 + (32 * _8371) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                        else:
                            _4097 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            if 0 >= mem[_4097]:
                                revert with 'NH{q', 50
                            mem[_4097 + 32] = WBNBAddress
                            if 1 >= mem[_4097]:
                                revert with 'NH{q', 50
                            mem[_4097 + 64] = sub_93a39776Address
                            if 2 >= mem[_4097]:
                                revert with 'NH{q', 50
                            mem[_4097 + 96] = arg1
                            mem[_4097 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4097 + 132] = 0
                            mem[_4097 + 164] = 128
                            mem[_4097 + 260] = mem[_4097]
                            idx = 0
                            s = _4097 + 32
                            t = _4097 + 292
                            while idx < mem[_4097]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4097 + 196] = this.address
                            mem[_4097 + 228] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4097 + (32 * mem[_4097]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5553 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5585 = mem[_5553]
                            require mem[_5553] <= test266151307()
                            require _5553 + mem[_5553] + 31 < _5553 + return_data.size
                            _5617 = mem[_5553 + mem[_5553]]
                            if mem[_5553 + mem[_5553]] > test266151307():
                                revert with 'NH{q', 65
                            if _5553 + ceil32(return_data.size) + floor32(mem[_5553 + mem[_5553]]) + 1 > test266151307() or floor32(mem[_5553 + mem[_5553]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5553 + ceil32(return_data.size) + floor32(mem[_5553 + mem[_5553]]) + 1
                            mem[_5553 + ceil32(return_data.size)] = _5617
                            require _5585 + (32 * _5617) + 32 <= return_data.size
                            idx = _5553 + _5585 + 32
                            s = _5553 + ceil32(return_data.size) + 32
                            while idx < _5553 + _5585 + (32 * _5617) + 32:
                                require mem[idx] == mem[idx]
                                mem[s] = mem[idx]
                                idx = idx + 32
                                s = s + 32
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6993 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7025 = mem[_6993]
                            require mem[_6993] == mem[_6993]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4081 and -stor6 + 10000 > -1 / _4081:
                                revert with 'NH{q', 17
                            if (10000 * _4081) - (stor6 * _4081) / 10000 > mem[_6993]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _7025
                            require ext_code.size(arg1)
                            call arg1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _7025
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7185 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7185] == bool(mem[_7185])
                            if not mem[_7185]:
                                revert with 0, 'HP/HT'
                            if block.timestamp > -10:
                                revert with 'NH{q', 17
                            if sub_93a39776Address == WBNBAddress:
                                _7314 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                if 0 >= mem[_7314]:
                                    revert with 'NH{q', 50
                                mem[_7314 + 32] = sub_93a39776Address
                                if 1 >= mem[_7314]:
                                    revert with 'NH{q', 50
                                mem[_7314 + 64] = arg1
                                mem[_7314 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7314 + 100] = uint256(stor9.field_0)
                                mem[_7314 + 132] = 128
                                mem[_7314 + 228] = mem[_7314]
                                idx = 0
                                s = _7314 + 32
                                t = _7314 + 260
                                while idx < mem[_7314]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7314 + 164] = this.address
                                mem[_7314 + 196] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7314 + (32 * mem[_7314]) + -mem[64] + 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8242 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8306 = mem[_8242]
                                require mem[_8242] <= test266151307()
                                require _8242 + mem[_8242] + 31 < _8242 + return_data.size
                                _8370 = mem[_8242 + mem[_8242]]
                                if mem[_8242 + mem[_8242]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8242 + ceil32(return_data.size) + floor32(mem[_8242 + mem[_8242]]) + 1 > test266151307() or floor32(mem[_8242 + mem[_8242]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8242 + ceil32(return_data.size) + floor32(mem[_8242 + mem[_8242]]) + 1
                                mem[_8242 + ceil32(return_data.size)] = _8370
                                require _8306 + (32 * _8370) + 32 <= return_data.size
                                idx = _8242 + _8306 + 32
                                s = _8242 + ceil32(return_data.size) + 32
                                while idx < _8242 + _8306 + (32 * _8370) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                            else:
                                _7313 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                if 0 >= mem[_7313]:
                                    revert with 'NH{q', 50
                                mem[_7313 + 32] = WBNBAddress
                                if 1 >= mem[_7313]:
                                    revert with 'NH{q', 50
                                mem[_7313 + 64] = sub_93a39776Address
                                if 2 >= mem[_7313]:
                                    revert with 'NH{q', 50
                                mem[_7313 + 96] = arg1
                                mem[_7313 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7313 + 132] = uint256(stor9.field_0)
                                mem[_7313 + 164] = 128
                                mem[_7313 + 260] = mem[_7313]
                                idx = 0
                                s = _7313 + 32
                                t = _7313 + 292
                                while idx < mem[_7313]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7313 + 196] = this.address
                                mem[_7313 + 228] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7313 + (32 * mem[_7313]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8241 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8305 = mem[_8241]
                                require mem[_8241] <= test266151307()
                                require _8241 + mem[_8241] + 31 < _8241 + return_data.size
                                _8369 = mem[_8241 + mem[_8241]]
                                if mem[_8241 + mem[_8241]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8241 + ceil32(return_data.size) + floor32(mem[_8241 + mem[_8241]]) + 1 > test266151307() or floor32(mem[_8241 + mem[_8241]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8241 + ceil32(return_data.size) + floor32(mem[_8241 + mem[_8241]]) + 1
                                mem[_8241 + ceil32(return_data.size)] = _8369
                                require _8305 + (32 * _8369) + 32 <= return_data.size
                                idx = _8241 + _8305 + 32
                                s = _8241 + ceil32(return_data.size) + 32
                                while idx < _8241 + _8305 + (32 * _8369) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                else:
                    if stor8:
                        revert with 0, 'Locked'
                    if block.timestamp > -10:
                        revert with 'NH{q', 17
                    if sub_93a39776Address == WBNBAddress:
                        _1787 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_1787]:
                            revert with 'NH{q', 50
                        mem[_1787 + 32] = sub_93a39776Address
                        if 1 >= mem[_1787]:
                            revert with 'NH{q', 50
                        mem[_1787 + 64] = arg1
                        mem[_1787 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1787 + 100] = uint256(stor7.field_0)
                        mem[_1787 + 132] = 64
                        mem[_1787 + 164] = mem[_1787]
                        idx = 0
                        s = _1787 + 32
                        t = _1787 + 196
                        while idx < mem[_1787]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(ROUTERAddress)
                        staticcall ROUTERAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1787 + (32 * mem[_1787]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2764 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2780 = mem[_2764]
                        require mem[_2764] <= test266151307()
                        require _2764 + mem[_2764] + 31 < _2764 + return_data.size
                        _2796 = mem[_2764 + mem[_2764]]
                        if mem[_2764 + mem[_2764]] > test266151307():
                            revert with 'NH{q', 65
                        if _2764 + ceil32(return_data.size) + floor32(mem[_2764 + mem[_2764]]) + 1 > test266151307() or floor32(mem[_2764 + mem[_2764]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2764 + ceil32(return_data.size) + floor32(mem[_2764 + mem[_2764]]) + 1
                        mem[_2764 + ceil32(return_data.size)] = _2796
                        require _2780 + (32 * _2796) + 32 <= return_data.size
                        idx = _2764 + _2780 + 32
                        s = _2764 + ceil32(return_data.size) + 32
                        while idx < _2764 + _2780 + (32 * _2796) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if _2796 < 1:
                            revert with 'NH{q', 17
                        if _2796 - 1 >= _2796:
                            revert with 'NH{q', 50
                        _4084 = mem[(32 * _2796 - 1) + _2764 + ceil32(return_data.size) + 32]
                        if sub_93a39776Address == WBNBAddress:
                            _4104 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_4104]:
                                revert with 'NH{q', 50
                            mem[_4104 + 32] = sub_93a39776Address
                            if 1 >= mem[_4104]:
                                revert with 'NH{q', 50
                            mem[_4104 + 64] = arg1
                            mem[_4104 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4104 + 100] = 0
                            mem[_4104 + 132] = 128
                            mem[_4104 + 228] = mem[_4104]
                            idx = 0
                            s = _4104 + 32
                            t = _4104 + 260
                            while idx < mem[_4104]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4104 + 164] = this.address
                            mem[_4104 + 196] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4104 + (32 * mem[_4104]) + -mem[64] + 256]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5560 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5592 = mem[_5560]
                            require mem[_5560] <= test266151307()
                            require _5560 + mem[_5560] + 31 < _5560 + return_data.size
                            _5624 = mem[_5560 + mem[_5560]]
                            if mem[_5560 + mem[_5560]] > test266151307():
                                revert with 'NH{q', 65
                            if _5560 + ceil32(return_data.size) + floor32(mem[_5560 + mem[_5560]]) + 1 > test266151307() or floor32(mem[_5560 + mem[_5560]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5560 + ceil32(return_data.size) + floor32(mem[_5560 + mem[_5560]]) + 1
                            mem[_5560 + ceil32(return_data.size)] = _5624
                            require _5592 + (32 * _5624) + 32 <= return_data.size
                            idx = _5560 + _5592 + 32
                            s = _5560 + ceil32(return_data.size) + 32
                            while idx < _5560 + _5592 + (32 * _5624) + 32:
                                require mem[idx] == mem[idx]
                                mem[s] = mem[idx]
                                idx = idx + 32
                                s = s + 32
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7000 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7032 = mem[_7000]
                            require mem[_7000] == mem[_7000]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4084 and -stor6 + 10000 > -1 / _4084:
                                revert with 'NH{q', 17
                            if (10000 * _4084) - (stor6 * _4084) / 10000 > mem[_7000]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _7032
                            require ext_code.size(arg1)
                            call arg1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _7032
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7192 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7192] == bool(mem[_7192])
                            if not mem[_7192]:
                                revert with 0, 'HP/HT'
                            if block.timestamp > -10:
                                revert with 'NH{q', 17
                            if sub_93a39776Address == WBNBAddress:
                                _7328 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                if 0 >= mem[_7328]:
                                    revert with 'NH{q', 50
                                mem[_7328 + 32] = sub_93a39776Address
                                if 1 >= mem[_7328]:
                                    revert with 'NH{q', 50
                                mem[_7328 + 64] = arg1
                                mem[_7328 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7328 + 100] = uint256(stor9.field_0)
                                mem[_7328 + 132] = 128
                                mem[_7328 + 228] = mem[_7328]
                                idx = 0
                                s = _7328 + 32
                                t = _7328 + 260
                                while idx < mem[_7328]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7328 + 164] = this.address
                                mem[_7328 + 196] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7328 + (32 * mem[_7328]) + -mem[64] + 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8256 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8320 = mem[_8256]
                                require mem[_8256] <= test266151307()
                                require _8256 + mem[_8256] + 31 < _8256 + return_data.size
                                _8384 = mem[_8256 + mem[_8256]]
                                if mem[_8256 + mem[_8256]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8256 + ceil32(return_data.size) + floor32(mem[_8256 + mem[_8256]]) + 1 > test266151307() or floor32(mem[_8256 + mem[_8256]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8256 + ceil32(return_data.size) + floor32(mem[_8256 + mem[_8256]]) + 1
                                mem[_8256 + ceil32(return_data.size)] = _8384
                                require _8320 + (32 * _8384) + 32 <= return_data.size
                                idx = _8256 + _8320 + 32
                                s = _8256 + ceil32(return_data.size) + 32
                                while idx < _8256 + _8320 + (32 * _8384) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                            else:
                                _7327 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                if 0 >= mem[_7327]:
                                    revert with 'NH{q', 50
                                mem[_7327 + 32] = WBNBAddress
                                if 1 >= mem[_7327]:
                                    revert with 'NH{q', 50
                                mem[_7327 + 64] = sub_93a39776Address
                                if 2 >= mem[_7327]:
                                    revert with 'NH{q', 50
                                mem[_7327 + 96] = arg1
                                mem[_7327 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7327 + 132] = uint256(stor9.field_0)
                                mem[_7327 + 164] = 128
                                mem[_7327 + 260] = mem[_7327]
                                idx = 0
                                s = _7327 + 32
                                t = _7327 + 292
                                while idx < mem[_7327]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7327 + 196] = this.address
                                mem[_7327 + 228] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7327 + (32 * mem[_7327]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8255 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8319 = mem[_8255]
                                require mem[_8255] <= test266151307()
                                require _8255 + mem[_8255] + 31 < _8255 + return_data.size
                                _8383 = mem[_8255 + mem[_8255]]
                                if mem[_8255 + mem[_8255]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8255 + ceil32(return_data.size) + floor32(mem[_8255 + mem[_8255]]) + 1 > test266151307() or floor32(mem[_8255 + mem[_8255]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8255 + ceil32(return_data.size) + floor32(mem[_8255 + mem[_8255]]) + 1
                                mem[_8255 + ceil32(return_data.size)] = _8383
                                require _8319 + (32 * _8383) + 32 <= return_data.size
                                idx = _8255 + _8319 + 32
                                s = _8255 + ceil32(return_data.size) + 32
                                while idx < _8255 + _8319 + (32 * _8383) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                        else:
                            _4103 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            if 0 >= mem[_4103]:
                                revert with 'NH{q', 50
                            mem[_4103 + 32] = WBNBAddress
                            if 1 >= mem[_4103]:
                                revert with 'NH{q', 50
                            mem[_4103 + 64] = sub_93a39776Address
                            if 2 >= mem[_4103]:
                                revert with 'NH{q', 50
                            mem[_4103 + 96] = arg1
                            mem[_4103 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4103 + 132] = 0
                            mem[_4103 + 164] = 128
                            mem[_4103 + 260] = mem[_4103]
                            idx = 0
                            s = _4103 + 32
                            t = _4103 + 292
                            while idx < mem[_4103]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4103 + 196] = this.address
                            mem[_4103 + 228] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4103 + (32 * mem[_4103]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5559 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5591 = mem[_5559]
                            require mem[_5559] <= test266151307()
                            require _5559 + mem[_5559] + 31 < _5559 + return_data.size
                            _5623 = mem[_5559 + mem[_5559]]
                            if mem[_5559 + mem[_5559]] > test266151307():
                                revert with 'NH{q', 65
                            if _5559 + ceil32(return_data.size) + floor32(mem[_5559 + mem[_5559]]) + 1 > test266151307() or floor32(mem[_5559 + mem[_5559]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5559 + ceil32(return_data.size) + floor32(mem[_5559 + mem[_5559]]) + 1
                            mem[_5559 + ceil32(return_data.size)] = _5623
                            require _5591 + (32 * _5623) + 32 <= return_data.size
                            idx = _5559 + _5591 + 32
                            s = _5559 + ceil32(return_data.size) + 32
                            while idx < _5559 + _5591 + (32 * _5623) + 32:
                                require mem[idx] == mem[idx]
                                mem[s] = mem[idx]
                                idx = idx + 32
                                s = s + 32
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6999 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7031 = mem[_6999]
                            require mem[_6999] == mem[_6999]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4084 and -stor6 + 10000 > -1 / _4084:
                                revert with 'NH{q', 17
                            if (10000 * _4084) - (stor6 * _4084) / 10000 > mem[_6999]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _7031
                            require ext_code.size(arg1)
                            call arg1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _7031
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7191 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7191] == bool(mem[_7191])
                            if not mem[_7191]:
                                revert with 0, 'HP/HT'
                            if block.timestamp > -10:
                                revert with 'NH{q', 17
                            if sub_93a39776Address == WBNBAddress:
                                _7326 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                if 0 >= mem[_7326]:
                                    revert with 'NH{q', 50
                                mem[_7326 + 32] = sub_93a39776Address
                                if 1 >= mem[_7326]:
                                    revert with 'NH{q', 50
                                mem[_7326 + 64] = arg1
                                mem[_7326 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7326 + 100] = uint256(stor9.field_0)
                                mem[_7326 + 132] = 128
                                mem[_7326 + 228] = mem[_7326]
                                idx = 0
                                s = _7326 + 32
                                t = _7326 + 260
                                while idx < mem[_7326]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7326 + 164] = this.address
                                mem[_7326 + 196] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7326 + (32 * mem[_7326]) + -mem[64] + 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8254 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8318 = mem[_8254]
                                require mem[_8254] <= test266151307()
                                require _8254 + mem[_8254] + 31 < _8254 + return_data.size
                                _8382 = mem[_8254 + mem[_8254]]
                                if mem[_8254 + mem[_8254]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8254 + ceil32(return_data.size) + floor32(mem[_8254 + mem[_8254]]) + 1 > test266151307() or floor32(mem[_8254 + mem[_8254]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8254 + ceil32(return_data.size) + floor32(mem[_8254 + mem[_8254]]) + 1
                                mem[_8254 + ceil32(return_data.size)] = _8382
                                require _8318 + (32 * _8382) + 32 <= return_data.size
                                idx = _8254 + _8318 + 32
                                s = _8254 + ceil32(return_data.size) + 32
                                while idx < _8254 + _8318 + (32 * _8382) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                            else:
                                _7325 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                if 0 >= mem[_7325]:
                                    revert with 'NH{q', 50
                                mem[_7325 + 32] = WBNBAddress
                                if 1 >= mem[_7325]:
                                    revert with 'NH{q', 50
                                mem[_7325 + 64] = sub_93a39776Address
                                if 2 >= mem[_7325]:
                                    revert with 'NH{q', 50
                                mem[_7325 + 96] = arg1
                                mem[_7325 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7325 + 132] = uint256(stor9.field_0)
                                mem[_7325 + 164] = 128
                                mem[_7325 + 260] = mem[_7325]
                                idx = 0
                                s = _7325 + 32
                                t = _7325 + 292
                                while idx < mem[_7325]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7325 + 196] = this.address
                                mem[_7325 + 228] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7325 + (32 * mem[_7325]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8253 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8317 = mem[_8253]
                                require mem[_8253] <= test266151307()
                                require _8253 + mem[_8253] + 31 < _8253 + return_data.size
                                _8381 = mem[_8253 + mem[_8253]]
                                if mem[_8253 + mem[_8253]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8253 + ceil32(return_data.size) + floor32(mem[_8253 + mem[_8253]]) + 1 > test266151307() or floor32(mem[_8253 + mem[_8253]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8253 + ceil32(return_data.size) + floor32(mem[_8253 + mem[_8253]]) + 1
                                mem[_8253 + ceil32(return_data.size)] = _8381
                                require _8317 + (32 * _8381) + 32 <= return_data.size
                                idx = _8253 + _8317 + 32
                                s = _8253 + ceil32(return_data.size) + 32
                                while idx < _8253 + _8317 + (32 * _8381) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                    else:
                        _1786 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if 0 >= mem[_1786]:
                            revert with 'NH{q', 50
                        mem[_1786 + 32] = WBNBAddress
                        if 1 >= mem[_1786]:
                            revert with 'NH{q', 50
                        mem[_1786 + 64] = sub_93a39776Address
                        if 2 >= mem[_1786]:
                            revert with 'NH{q', 50
                        mem[_1786 + 96] = arg1
                        mem[_1786 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1786 + 132] = uint256(stor7.field_0)
                        mem[_1786 + 164] = 64
                        mem[_1786 + 196] = mem[_1786]
                        idx = 0
                        s = _1786 + 32
                        t = _1786 + 228
                        while idx < mem[_1786]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(ROUTERAddress)
                        staticcall ROUTERAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1786 + (32 * mem[_1786]) + -mem[64] + 224]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2763 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2779 = mem[_2763]
                        require mem[_2763] <= test266151307()
                        require _2763 + mem[_2763] + 31 < _2763 + return_data.size
                        _2795 = mem[_2763 + mem[_2763]]
                        if mem[_2763 + mem[_2763]] > test266151307():
                            revert with 'NH{q', 65
                        if _2763 + ceil32(return_data.size) + floor32(mem[_2763 + mem[_2763]]) + 1 > test266151307() or floor32(mem[_2763 + mem[_2763]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2763 + ceil32(return_data.size) + floor32(mem[_2763 + mem[_2763]]) + 1
                        mem[_2763 + ceil32(return_data.size)] = _2795
                        require _2779 + (32 * _2795) + 32 <= return_data.size
                        idx = _2763 + _2779 + 32
                        s = _2763 + ceil32(return_data.size) + 32
                        while idx < _2763 + _2779 + (32 * _2795) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if _2795 < 1:
                            revert with 'NH{q', 17
                        if _2795 - 1 >= _2795:
                            revert with 'NH{q', 50
                        _4083 = mem[(32 * _2795 - 1) + _2763 + ceil32(return_data.size) + 32]
                        if sub_93a39776Address == WBNBAddress:
                            _4102 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_4102]:
                                revert with 'NH{q', 50
                            mem[_4102 + 32] = sub_93a39776Address
                            if 1 >= mem[_4102]:
                                revert with 'NH{q', 50
                            mem[_4102 + 64] = arg1
                            mem[_4102 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4102 + 100] = 0
                            mem[_4102 + 132] = 128
                            mem[_4102 + 228] = mem[_4102]
                            idx = 0
                            s = _4102 + 32
                            t = _4102 + 260
                            while idx < mem[_4102]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4102 + 164] = this.address
                            mem[_4102 + 196] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4102 + (32 * mem[_4102]) + -mem[64] + 256]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5558 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5590 = mem[_5558]
                            require mem[_5558] <= test266151307()
                            require _5558 + mem[_5558] + 31 < _5558 + return_data.size
                            _5622 = mem[_5558 + mem[_5558]]
                            if mem[_5558 + mem[_5558]] > test266151307():
                                revert with 'NH{q', 65
                            if _5558 + ceil32(return_data.size) + floor32(mem[_5558 + mem[_5558]]) + 1 > test266151307() or floor32(mem[_5558 + mem[_5558]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5558 + ceil32(return_data.size) + floor32(mem[_5558 + mem[_5558]]) + 1
                            mem[_5558 + ceil32(return_data.size)] = _5622
                            require _5590 + (32 * _5622) + 32 <= return_data.size
                            idx = _5558 + _5590 + 32
                            s = _5558 + ceil32(return_data.size) + 32
                            while idx < _5558 + _5590 + (32 * _5622) + 32:
                                require mem[idx] == mem[idx]
                                mem[s] = mem[idx]
                                idx = idx + 32
                                s = s + 32
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6998 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7030 = mem[_6998]
                            require mem[_6998] == mem[_6998]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4083 and -stor6 + 10000 > -1 / _4083:
                                revert with 'NH{q', 17
                            if (10000 * _4083) - (stor6 * _4083) / 10000 > mem[_6998]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _7030
                            require ext_code.size(arg1)
                            call arg1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _7030
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7190 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7190] == bool(mem[_7190])
                            if not mem[_7190]:
                                revert with 0, 'HP/HT'
                            if block.timestamp > -10:
                                revert with 'NH{q', 17
                            if sub_93a39776Address == WBNBAddress:
                                _7324 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                if 0 >= mem[_7324]:
                                    revert with 'NH{q', 50
                                mem[_7324 + 32] = sub_93a39776Address
                                if 1 >= mem[_7324]:
                                    revert with 'NH{q', 50
                                mem[_7324 + 64] = arg1
                                mem[_7324 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7324 + 100] = uint256(stor9.field_0)
                                mem[_7324 + 132] = 128
                                mem[_7324 + 228] = mem[_7324]
                                idx = 0
                                s = _7324 + 32
                                t = _7324 + 260
                                while idx < mem[_7324]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7324 + 164] = this.address
                                mem[_7324 + 196] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7324 + (32 * mem[_7324]) + -mem[64] + 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8252 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8316 = mem[_8252]
                                require mem[_8252] <= test266151307()
                                require _8252 + mem[_8252] + 31 < _8252 + return_data.size
                                _8380 = mem[_8252 + mem[_8252]]
                                if mem[_8252 + mem[_8252]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8252 + ceil32(return_data.size) + floor32(mem[_8252 + mem[_8252]]) + 1 > test266151307() or floor32(mem[_8252 + mem[_8252]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8252 + ceil32(return_data.size) + floor32(mem[_8252 + mem[_8252]]) + 1
                                mem[_8252 + ceil32(return_data.size)] = _8380
                                require _8316 + (32 * _8380) + 32 <= return_data.size
                                idx = _8252 + _8316 + 32
                                s = _8252 + ceil32(return_data.size) + 32
                                while idx < _8252 + _8316 + (32 * _8380) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                            else:
                                _7323 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                if 0 >= mem[_7323]:
                                    revert with 'NH{q', 50
                                mem[_7323 + 32] = WBNBAddress
                                if 1 >= mem[_7323]:
                                    revert with 'NH{q', 50
                                mem[_7323 + 64] = sub_93a39776Address
                                if 2 >= mem[_7323]:
                                    revert with 'NH{q', 50
                                mem[_7323 + 96] = arg1
                                mem[_7323 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7323 + 132] = uint256(stor9.field_0)
                                mem[_7323 + 164] = 128
                                mem[_7323 + 260] = mem[_7323]
                                idx = 0
                                s = _7323 + 32
                                t = _7323 + 292
                                while idx < mem[_7323]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7323 + 196] = this.address
                                mem[_7323 + 228] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7323 + (32 * mem[_7323]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8251 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8315 = mem[_8251]
                                require mem[_8251] <= test266151307()
                                require _8251 + mem[_8251] + 31 < _8251 + return_data.size
                                _8379 = mem[_8251 + mem[_8251]]
                                if mem[_8251 + mem[_8251]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8251 + ceil32(return_data.size) + floor32(mem[_8251 + mem[_8251]]) + 1 > test266151307() or floor32(mem[_8251 + mem[_8251]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8251 + ceil32(return_data.size) + floor32(mem[_8251 + mem[_8251]]) + 1
                                mem[_8251 + ceil32(return_data.size)] = _8379
                                require _8315 + (32 * _8379) + 32 <= return_data.size
                                idx = _8251 + _8315 + 32
                                s = _8251 + ceil32(return_data.size) + 32
                                while idx < _8251 + _8315 + (32 * _8379) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                        else:
                            _4101 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            if 0 >= mem[_4101]:
                                revert with 'NH{q', 50
                            mem[_4101 + 32] = WBNBAddress
                            if 1 >= mem[_4101]:
                                revert with 'NH{q', 50
                            mem[_4101 + 64] = sub_93a39776Address
                            if 2 >= mem[_4101]:
                                revert with 'NH{q', 50
                            mem[_4101 + 96] = arg1
                            mem[_4101 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4101 + 132] = 0
                            mem[_4101 + 164] = 128
                            mem[_4101 + 260] = mem[_4101]
                            idx = 0
                            s = _4101 + 32
                            t = _4101 + 292
                            while idx < mem[_4101]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4101 + 196] = this.address
                            mem[_4101 + 228] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4101 + (32 * mem[_4101]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5557 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5589 = mem[_5557]
                            require mem[_5557] <= test266151307()
                            require _5557 + mem[_5557] + 31 < _5557 + return_data.size
                            _5621 = mem[_5557 + mem[_5557]]
                            if mem[_5557 + mem[_5557]] > test266151307():
                                revert with 'NH{q', 65
                            if _5557 + ceil32(return_data.size) + floor32(mem[_5557 + mem[_5557]]) + 1 > test266151307() or floor32(mem[_5557 + mem[_5557]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5557 + ceil32(return_data.size) + floor32(mem[_5557 + mem[_5557]]) + 1
                            mem[_5557 + ceil32(return_data.size)] = _5621
                            require _5589 + (32 * _5621) + 32 <= return_data.size
                            idx = _5557 + _5589 + 32
                            s = _5557 + ceil32(return_data.size) + 32
                            while idx < _5557 + _5589 + (32 * _5621) + 32:
                                require mem[idx] == mem[idx]
                                mem[s] = mem[idx]
                                idx = idx + 32
                                s = s + 32
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6997 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7029 = mem[_6997]
                            require mem[_6997] == mem[_6997]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4083 and -stor6 + 10000 > -1 / _4083:
                                revert with 'NH{q', 17
                            if (10000 * _4083) - (stor6 * _4083) / 10000 > mem[_6997]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _7029
                            require ext_code.size(arg1)
                            call arg1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _7029
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7189 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7189] == bool(mem[_7189])
                            if not mem[_7189]:
                                revert with 0, 'HP/HT'
                            if block.timestamp > -10:
                                revert with 'NH{q', 17
                            if sub_93a39776Address == WBNBAddress:
                                _7322 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                if 0 >= mem[_7322]:
                                    revert with 'NH{q', 50
                                mem[_7322 + 32] = sub_93a39776Address
                                if 1 >= mem[_7322]:
                                    revert with 'NH{q', 50
                                mem[_7322 + 64] = arg1
                                mem[_7322 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7322 + 100] = uint256(stor9.field_0)
                                mem[_7322 + 132] = 128
                                mem[_7322 + 228] = mem[_7322]
                                idx = 0
                                s = _7322 + 32
                                t = _7322 + 260
                                while idx < mem[_7322]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7322 + 164] = this.address
                                mem[_7322 + 196] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7322 + (32 * mem[_7322]) + -mem[64] + 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8250 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8314 = mem[_8250]
                                require mem[_8250] <= test266151307()
                                require _8250 + mem[_8250] + 31 < _8250 + return_data.size
                                _8378 = mem[_8250 + mem[_8250]]
                                if mem[_8250 + mem[_8250]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8250 + ceil32(return_data.size) + floor32(mem[_8250 + mem[_8250]]) + 1 > test266151307() or floor32(mem[_8250 + mem[_8250]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8250 + ceil32(return_data.size) + floor32(mem[_8250 + mem[_8250]]) + 1
                                mem[_8250 + ceil32(return_data.size)] = _8378
                                require _8314 + (32 * _8378) + 32 <= return_data.size
                                idx = _8250 + _8314 + 32
                                s = _8250 + ceil32(return_data.size) + 32
                                while idx < _8250 + _8314 + (32 * _8378) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                            else:
                                _7321 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                if 0 >= mem[_7321]:
                                    revert with 'NH{q', 50
                                mem[_7321 + 32] = WBNBAddress
                                if 1 >= mem[_7321]:
                                    revert with 'NH{q', 50
                                mem[_7321 + 64] = sub_93a39776Address
                                if 2 >= mem[_7321]:
                                    revert with 'NH{q', 50
                                mem[_7321 + 96] = arg1
                                mem[_7321 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7321 + 132] = uint256(stor9.field_0)
                                mem[_7321 + 164] = 128
                                mem[_7321 + 260] = mem[_7321]
                                idx = 0
                                s = _7321 + 32
                                t = _7321 + 292
                                while idx < mem[_7321]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7321 + 196] = this.address
                                mem[_7321 + 228] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7321 + (32 * mem[_7321]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8249 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8313 = mem[_8249]
                                require mem[_8249] <= test266151307()
                                require _8249 + mem[_8249] + 31 < _8249 + return_data.size
                                _8377 = mem[_8249 + mem[_8249]]
                                if mem[_8249 + mem[_8249]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8249 + ceil32(return_data.size) + floor32(mem[_8249 + mem[_8249]]) + 1 > test266151307() or floor32(mem[_8249 + mem[_8249]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8249 + ceil32(return_data.size) + floor32(mem[_8249 + mem[_8249]]) + 1
                                mem[_8249 + ceil32(return_data.size)] = _8377
                                require _8313 + (32 * _8377) + 32 <= return_data.size
                                idx = _8249 + _8313 + 32
                                s = _8249 + ceil32(return_data.size) + 32
                                while idx < _8249 + _8313 + (32 * _8377) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
    else:
        if stor8:
            revert with 0, 'Locked'
        if eth.balance(this.address) <= 0:
            revert with 0, 'Locked'
        if sub_93a39776Address == WBNBAddress:
            mem[96] = 2
            mem[128] = sub_93a39776Address
            mem[160] = arg1
            mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[196] = uint256(stor9.field_0)
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
                   args uint256(stor9.field_0), Array(len=2, data=mem[292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _812 = mem[192 len 4], Mask(224, 0, stor9.field_32)
            require mem[192 len 4], Mask(224, 0, stor9.field_32) <= test266151307()
            require mem[192 len 4], Mask(224, 0, stor9.field_32) + 223 < return_data.size + 192
            _816 = mem[mem[192 len 4], Mask(224, 0, stor9.field_32) + 192]
            if mem[mem[192 len 4], Mask(224, 0, stor9.field_32) + 192] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 0, stor9.field_32) + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 0, stor9.field_32) + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 0, stor9.field_32) + 192]) + 193
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 0, stor9.field_32) + 192]
            require _812 + (32 * _816) + 32 <= return_data.size
            idx = _812 + 224
            s = ceil32(return_data.size) + 224
            while idx < _812 + (32 * _816) + 224:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            if 0 >= _816:
                revert with 'NH{q', 50
            if mem[ceil32(return_data.size) + 224] > eth.balance(this.address):
                revert with 0, 'Locked'
            if bool(uint8(stor5.field_160)) != 1:
                if block.timestamp > -10:
                    revert with 'NH{q', 17
                if sub_93a39776Address == WBNBAddress:
                    _1756 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_1756]:
                        revert with 'NH{q', 50
                    mem[_1756 + 32] = sub_93a39776Address
                    if 1 >= mem[_1756]:
                        revert with 'NH{q', 50
                    mem[_1756 + 64] = arg1
                    mem[_1756 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[_1756 + 100] = uint256(stor9.field_0)
                    mem[_1756 + 132] = 128
                    mem[_1756 + 228] = mem[_1756]
                    idx = 0
                    s = _1756 + 32
                    t = _1756 + 260
                    while idx < mem[_1756]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1756 + 164] = this.address
                    mem[_1756 + 196] = block.timestamp + 9
                    require ext_code.size(ROUTERAddress)
                    call ROUTERAddress.mem[mem[64] len 4] with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1756 + (32 * mem[_1756]) + -mem[64] + 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2824 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2848 = mem[_2824]
                    require mem[_2824] <= test266151307()
                    require _2824 + mem[_2824] + 31 < _2824 + return_data.size
                    _2856 = mem[_2824 + mem[_2824]]
                    if mem[_2824 + mem[_2824]] > test266151307():
                        revert with 'NH{q', 65
                    if _2824 + ceil32(return_data.size) + floor32(mem[_2824 + mem[_2824]]) + 1 > test266151307() or floor32(mem[_2824 + mem[_2824]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _2824 + ceil32(return_data.size) + floor32(mem[_2824 + mem[_2824]]) + 1
                    mem[_2824 + ceil32(return_data.size)] = _2856
                    require _2848 + (32 * _2856) + 32 <= return_data.size
                    idx = _2824 + _2848 + 32
                    s = _2824 + ceil32(return_data.size) + 32
                    while idx < _2824 + _2848 + (32 * _2856) + 32:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                else:
                    _1755 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    if 0 >= mem[_1755]:
                        revert with 'NH{q', 50
                    mem[_1755 + 32] = WBNBAddress
                    if 1 >= mem[_1755]:
                        revert with 'NH{q', 50
                    mem[_1755 + 64] = sub_93a39776Address
                    if 2 >= mem[_1755]:
                        revert with 'NH{q', 50
                    mem[_1755 + 96] = arg1
                    mem[_1755 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[_1755 + 132] = uint256(stor9.field_0)
                    mem[_1755 + 164] = 128
                    mem[_1755 + 260] = mem[_1755]
                    idx = 0
                    s = _1755 + 32
                    t = _1755 + 292
                    while idx < mem[_1755]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1755 + 196] = this.address
                    mem[_1755 + 228] = block.timestamp + 9
                    require ext_code.size(ROUTERAddress)
                    call ROUTERAddress.mem[mem[64] len 4] with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1755 + (32 * mem[_1755]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2823 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2847 = mem[_2823]
                    require mem[_2823] <= test266151307()
                    require _2823 + mem[_2823] + 31 < _2823 + return_data.size
                    _2855 = mem[_2823 + mem[_2823]]
                    if mem[_2823 + mem[_2823]] > test266151307():
                        revert with 'NH{q', 65
                    if _2823 + ceil32(return_data.size) + floor32(mem[_2823 + mem[_2823]]) + 1 > test266151307() or floor32(mem[_2823 + mem[_2823]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _2823 + ceil32(return_data.size) + floor32(mem[_2823 + mem[_2823]]) + 1
                    mem[_2823 + ceil32(return_data.size)] = _2855
                    require _2847 + (32 * _2855) + 32 <= return_data.size
                    idx = _2823 + _2847 + 32
                    s = _2823 + ceil32(return_data.size) + 32
                    while idx < _2823 + _2847 + (32 * _2855) + 32:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
            else:
                if msg.sender == address(stor5.field_0):
                    if block.timestamp > -10:
                        revert with 'NH{q', 17
                    if sub_93a39776Address == WBNBAddress:
                        _1784 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_1784]:
                            revert with 'NH{q', 50
                        mem[_1784 + 32] = sub_93a39776Address
                        if 1 >= mem[_1784]:
                            revert with 'NH{q', 50
                        mem[_1784 + 64] = arg1
                        mem[_1784 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1784 + 100] = uint256(stor7.field_0)
                        mem[_1784 + 132] = 64
                        mem[_1784 + 164] = mem[_1784]
                        idx = 0
                        s = _1784 + 32
                        t = _1784 + 196
                        while idx < mem[_1784]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(ROUTERAddress)
                        staticcall ROUTERAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1784 + (32 * mem[_1784]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2774 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2790 = mem[_2774]
                        require mem[_2774] <= test266151307()
                        require _2774 + mem[_2774] + 31 < _2774 + return_data.size
                        _2806 = mem[_2774 + mem[_2774]]
                        if mem[_2774 + mem[_2774]] > test266151307():
                            revert with 'NH{q', 65
                        if _2774 + ceil32(return_data.size) + floor32(mem[_2774 + mem[_2774]]) + 1 > test266151307() or floor32(mem[_2774 + mem[_2774]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2774 + ceil32(return_data.size) + floor32(mem[_2774 + mem[_2774]]) + 1
                        mem[_2774 + ceil32(return_data.size)] = _2806
                        require _2790 + (32 * _2806) + 32 <= return_data.size
                        idx = _2774 + _2790 + 32
                        s = _2774 + ceil32(return_data.size) + 32
                        while idx < _2774 + _2790 + (32 * _2806) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if _2806 < 1:
                            revert with 'NH{q', 17
                        if _2806 - 1 >= _2806:
                            revert with 'NH{q', 50
                        _4094 = mem[(32 * _2806 - 1) + _2774 + ceil32(return_data.size) + 32]
                        if sub_93a39776Address == WBNBAddress:
                            _4124 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_4124]:
                                revert with 'NH{q', 50
                            mem[_4124 + 32] = sub_93a39776Address
                            if 1 >= mem[_4124]:
                                revert with 'NH{q', 50
                            mem[_4124 + 64] = arg1
                            mem[_4124 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4124 + 100] = 0
                            mem[_4124 + 132] = 128
                            mem[_4124 + 228] = mem[_4124]
                            idx = 0
                            s = _4124 + 32
                            t = _4124 + 260
                            while idx < mem[_4124]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4124 + 164] = this.address
                            mem[_4124 + 196] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4124 + (32 * mem[_4124]) + -mem[64] + 256]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5580 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5612 = mem[_5580]
                            require mem[_5580] <= test266151307()
                            require _5580 + mem[_5580] + 31 < _5580 + return_data.size
                            _5644 = mem[_5580 + mem[_5580]]
                            if mem[_5580 + mem[_5580]] > test266151307():
                                revert with 'NH{q', 65
                            if _5580 + ceil32(return_data.size) + floor32(mem[_5580 + mem[_5580]]) + 1 > test266151307() or floor32(mem[_5580 + mem[_5580]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5580 + ceil32(return_data.size) + floor32(mem[_5580 + mem[_5580]]) + 1
                            mem[_5580 + ceil32(return_data.size)] = _5644
                            require _5612 + (32 * _5644) + 32 <= return_data.size
                            idx = _5580 + _5612 + 32
                            s = _5580 + ceil32(return_data.size) + 32
                            while idx < _5580 + _5612 + (32 * _5644) + 32:
                                require mem[idx] == mem[idx]
                                mem[s] = mem[idx]
                                idx = idx + 32
                                s = s + 32
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7020 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7052 = mem[_7020]
                            require mem[_7020] == mem[_7020]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4094 and -stor6 + 10000 > -1 / _4094:
                                revert with 'NH{q', 17
                            if (10000 * _4094) - (stor6 * _4094) / 10000 > mem[_7020]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _7052
                            require ext_code.size(arg1)
                            call arg1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _7052
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7212 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7212] == bool(mem[_7212])
                            if not mem[_7212]:
                                revert with 0, 'HP/HT'
                            if block.timestamp > -10:
                                revert with 'NH{q', 17
                            if sub_93a39776Address == WBNBAddress:
                                _7368 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                if 0 >= mem[_7368]:
                                    revert with 'NH{q', 50
                                mem[_7368 + 32] = sub_93a39776Address
                                if 1 >= mem[_7368]:
                                    revert with 'NH{q', 50
                                mem[_7368 + 64] = arg1
                                mem[_7368 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7368 + 100] = uint256(stor9.field_0)
                                mem[_7368 + 132] = 128
                                mem[_7368 + 228] = mem[_7368]
                                idx = 0
                                s = _7368 + 32
                                t = _7368 + 260
                                while idx < mem[_7368]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7368 + 164] = this.address
                                mem[_7368 + 196] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7368 + (32 * mem[_7368]) + -mem[64] + 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8296 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8360 = mem[_8296]
                                require mem[_8296] <= test266151307()
                                require _8296 + mem[_8296] + 31 < _8296 + return_data.size
                                _8424 = mem[_8296 + mem[_8296]]
                                if mem[_8296 + mem[_8296]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8296 + ceil32(return_data.size) + floor32(mem[_8296 + mem[_8296]]) + 1 > test266151307() or floor32(mem[_8296 + mem[_8296]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8296 + ceil32(return_data.size) + floor32(mem[_8296 + mem[_8296]]) + 1
                                mem[_8296 + ceil32(return_data.size)] = _8424
                                require _8360 + (32 * _8424) + 32 <= return_data.size
                                idx = _8296 + _8360 + 32
                                s = _8296 + ceil32(return_data.size) + 32
                                while idx < _8296 + _8360 + (32 * _8424) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                            else:
                                _7367 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                if 0 >= mem[_7367]:
                                    revert with 'NH{q', 50
                                mem[_7367 + 32] = WBNBAddress
                                if 1 >= mem[_7367]:
                                    revert with 'NH{q', 50
                                mem[_7367 + 64] = sub_93a39776Address
                                if 2 >= mem[_7367]:
                                    revert with 'NH{q', 50
                                mem[_7367 + 96] = arg1
                                mem[_7367 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7367 + 132] = uint256(stor9.field_0)
                                mem[_7367 + 164] = 128
                                mem[_7367 + 260] = mem[_7367]
                                idx = 0
                                s = _7367 + 32
                                t = _7367 + 292
                                while idx < mem[_7367]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7367 + 196] = this.address
                                mem[_7367 + 228] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7367 + (32 * mem[_7367]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8295 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8359 = mem[_8295]
                                require mem[_8295] <= test266151307()
                                require _8295 + mem[_8295] + 31 < _8295 + return_data.size
                                _8423 = mem[_8295 + mem[_8295]]
                                if mem[_8295 + mem[_8295]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8295 + ceil32(return_data.size) + floor32(mem[_8295 + mem[_8295]]) + 1 > test266151307() or floor32(mem[_8295 + mem[_8295]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8295 + ceil32(return_data.size) + floor32(mem[_8295 + mem[_8295]]) + 1
                                mem[_8295 + ceil32(return_data.size)] = _8423
                                require _8359 + (32 * _8423) + 32 <= return_data.size
                                idx = _8295 + _8359 + 32
                                s = _8295 + ceil32(return_data.size) + 32
                                while idx < _8295 + _8359 + (32 * _8423) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                        else:
                            _4123 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            if 0 >= mem[_4123]:
                                revert with 'NH{q', 50
                            mem[_4123 + 32] = WBNBAddress
                            if 1 >= mem[_4123]:
                                revert with 'NH{q', 50
                            mem[_4123 + 64] = sub_93a39776Address
                            if 2 >= mem[_4123]:
                                revert with 'NH{q', 50
                            mem[_4123 + 96] = arg1
                            mem[_4123 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4123 + 132] = 0
                            mem[_4123 + 164] = 128
                            mem[_4123 + 260] = mem[_4123]
                            idx = 0
                            s = _4123 + 32
                            t = _4123 + 292
                            while idx < mem[_4123]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4123 + 196] = this.address
                            mem[_4123 + 228] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4123 + (32 * mem[_4123]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5579 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5611 = mem[_5579]
                            require mem[_5579] <= test266151307()
                            require _5579 + mem[_5579] + 31 < _5579 + return_data.size
                            _5643 = mem[_5579 + mem[_5579]]
                            if mem[_5579 + mem[_5579]] > test266151307():
                                revert with 'NH{q', 65
                            if _5579 + ceil32(return_data.size) + floor32(mem[_5579 + mem[_5579]]) + 1 > test266151307() or floor32(mem[_5579 + mem[_5579]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5579 + ceil32(return_data.size) + floor32(mem[_5579 + mem[_5579]]) + 1
                            mem[_5579 + ceil32(return_data.size)] = _5643
                            require _5611 + (32 * _5643) + 32 <= return_data.size
                            idx = _5579 + _5611 + 32
                            s = _5579 + ceil32(return_data.size) + 32
                            while idx < _5579 + _5611 + (32 * _5643) + 32:
                                require mem[idx] == mem[idx]
                                mem[s] = mem[idx]
                                idx = idx + 32
                                s = s + 32
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7019 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7051 = mem[_7019]
                            require mem[_7019] == mem[_7019]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4094 and -stor6 + 10000 > -1 / _4094:
                                revert with 'NH{q', 17
                            if (10000 * _4094) - (stor6 * _4094) / 10000 > mem[_7019]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _7051
                            require ext_code.size(arg1)
                            call arg1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _7051
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7211 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7211] == bool(mem[_7211])
                            if not mem[_7211]:
                                revert with 0, 'HP/HT'
                            if block.timestamp > -10:
                                revert with 'NH{q', 17
                            if sub_93a39776Address == WBNBAddress:
                                _7366 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                if 0 >= mem[_7366]:
                                    revert with 'NH{q', 50
                                mem[_7366 + 32] = sub_93a39776Address
                                if 1 >= mem[_7366]:
                                    revert with 'NH{q', 50
                                mem[_7366 + 64] = arg1
                                mem[_7366 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7366 + 100] = uint256(stor9.field_0)
                                mem[_7366 + 132] = 128
                                mem[_7366 + 228] = mem[_7366]
                                idx = 0
                                s = _7366 + 32
                                t = _7366 + 260
                                while idx < mem[_7366]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7366 + 164] = this.address
                                mem[_7366 + 196] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7366 + (32 * mem[_7366]) + -mem[64] + 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8294 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8358 = mem[_8294]
                                require mem[_8294] <= test266151307()
                                require _8294 + mem[_8294] + 31 < _8294 + return_data.size
                                _8422 = mem[_8294 + mem[_8294]]
                                if mem[_8294 + mem[_8294]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8294 + ceil32(return_data.size) + floor32(mem[_8294 + mem[_8294]]) + 1 > test266151307() or floor32(mem[_8294 + mem[_8294]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8294 + ceil32(return_data.size) + floor32(mem[_8294 + mem[_8294]]) + 1
                                mem[_8294 + ceil32(return_data.size)] = _8422
                                require _8358 + (32 * _8422) + 32 <= return_data.size
                                idx = _8294 + _8358 + 32
                                s = _8294 + ceil32(return_data.size) + 32
                                while idx < _8294 + _8358 + (32 * _8422) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                            else:
                                _7365 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                if 0 >= mem[_7365]:
                                    revert with 'NH{q', 50
                                mem[_7365 + 32] = WBNBAddress
                                if 1 >= mem[_7365]:
                                    revert with 'NH{q', 50
                                mem[_7365 + 64] = sub_93a39776Address
                                if 2 >= mem[_7365]:
                                    revert with 'NH{q', 50
                                mem[_7365 + 96] = arg1
                                mem[_7365 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7365 + 132] = uint256(stor9.field_0)
                                mem[_7365 + 164] = 128
                                mem[_7365 + 260] = mem[_7365]
                                idx = 0
                                s = _7365 + 32
                                t = _7365 + 292
                                while idx < mem[_7365]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7365 + 196] = this.address
                                mem[_7365 + 228] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7365 + (32 * mem[_7365]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8293 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8357 = mem[_8293]
                                require mem[_8293] <= test266151307()
                                require _8293 + mem[_8293] + 31 < _8293 + return_data.size
                                _8421 = mem[_8293 + mem[_8293]]
                                if mem[_8293 + mem[_8293]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8293 + ceil32(return_data.size) + floor32(mem[_8293 + mem[_8293]]) + 1 > test266151307() or floor32(mem[_8293 + mem[_8293]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8293 + ceil32(return_data.size) + floor32(mem[_8293 + mem[_8293]]) + 1
                                mem[_8293 + ceil32(return_data.size)] = _8421
                                require _8357 + (32 * _8421) + 32 <= return_data.size
                                idx = _8293 + _8357 + 32
                                s = _8293 + ceil32(return_data.size) + 32
                                while idx < _8293 + _8357 + (32 * _8421) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                    else:
                        _1783 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if 0 >= mem[_1783]:
                            revert with 'NH{q', 50
                        mem[_1783 + 32] = WBNBAddress
                        if 1 >= mem[_1783]:
                            revert with 'NH{q', 50
                        mem[_1783 + 64] = sub_93a39776Address
                        if 2 >= mem[_1783]:
                            revert with 'NH{q', 50
                        mem[_1783 + 96] = arg1
                        mem[_1783 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1783 + 132] = uint256(stor7.field_0)
                        mem[_1783 + 164] = 64
                        mem[_1783 + 196] = mem[_1783]
                        idx = 0
                        s = _1783 + 32
                        t = _1783 + 228
                        while idx < mem[_1783]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(ROUTERAddress)
                        staticcall ROUTERAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1783 + (32 * mem[_1783]) + -mem[64] + 224]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2773 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2789 = mem[_2773]
                        require mem[_2773] <= test266151307()
                        require _2773 + mem[_2773] + 31 < _2773 + return_data.size
                        _2805 = mem[_2773 + mem[_2773]]
                        if mem[_2773 + mem[_2773]] > test266151307():
                            revert with 'NH{q', 65
                        if _2773 + ceil32(return_data.size) + floor32(mem[_2773 + mem[_2773]]) + 1 > test266151307() or floor32(mem[_2773 + mem[_2773]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2773 + ceil32(return_data.size) + floor32(mem[_2773 + mem[_2773]]) + 1
                        mem[_2773 + ceil32(return_data.size)] = _2805
                        require _2789 + (32 * _2805) + 32 <= return_data.size
                        idx = _2773 + _2789 + 32
                        s = _2773 + ceil32(return_data.size) + 32
                        while idx < _2773 + _2789 + (32 * _2805) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if _2805 < 1:
                            revert with 'NH{q', 17
                        if _2805 - 1 >= _2805:
                            revert with 'NH{q', 50
                        _4093 = mem[(32 * _2805 - 1) + _2773 + ceil32(return_data.size) + 32]
                        if sub_93a39776Address == WBNBAddress:
                            _4122 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_4122]:
                                revert with 'NH{q', 50
                            mem[_4122 + 32] = sub_93a39776Address
                            if 1 >= mem[_4122]:
                                revert with 'NH{q', 50
                            mem[_4122 + 64] = arg1
                            mem[_4122 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4122 + 100] = 0
                            mem[_4122 + 132] = 128
                            mem[_4122 + 228] = mem[_4122]
                            idx = 0
                            s = _4122 + 32
                            t = _4122 + 260
                            while idx < mem[_4122]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4122 + 164] = this.address
                            mem[_4122 + 196] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4122 + (32 * mem[_4122]) + -mem[64] + 256]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5578 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5610 = mem[_5578]
                            require mem[_5578] <= test266151307()
                            require _5578 + mem[_5578] + 31 < _5578 + return_data.size
                            _5642 = mem[_5578 + mem[_5578]]
                            if mem[_5578 + mem[_5578]] > test266151307():
                                revert with 'NH{q', 65
                            if _5578 + ceil32(return_data.size) + floor32(mem[_5578 + mem[_5578]]) + 1 > test266151307() or floor32(mem[_5578 + mem[_5578]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5578 + ceil32(return_data.size) + floor32(mem[_5578 + mem[_5578]]) + 1
                            mem[_5578 + ceil32(return_data.size)] = _5642
                            require _5610 + (32 * _5642) + 32 <= return_data.size
                            idx = _5578 + _5610 + 32
                            s = _5578 + ceil32(return_data.size) + 32
                            while idx < _5578 + _5610 + (32 * _5642) + 32:
                                require mem[idx] == mem[idx]
                                mem[s] = mem[idx]
                                idx = idx + 32
                                s = s + 32
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7018 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7050 = mem[_7018]
                            require mem[_7018] == mem[_7018]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4093 and -stor6 + 10000 > -1 / _4093:
                                revert with 'NH{q', 17
                            if (10000 * _4093) - (stor6 * _4093) / 10000 > mem[_7018]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _7050
                            require ext_code.size(arg1)
                            call arg1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _7050
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7210 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7210] == bool(mem[_7210])
                            if not mem[_7210]:
                                revert with 0, 'HP/HT'
                            if block.timestamp > -10:
                                revert with 'NH{q', 17
                            if sub_93a39776Address == WBNBAddress:
                                _7364 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                if 0 >= mem[_7364]:
                                    revert with 'NH{q', 50
                                mem[_7364 + 32] = sub_93a39776Address
                                if 1 >= mem[_7364]:
                                    revert with 'NH{q', 50
                                mem[_7364 + 64] = arg1
                                mem[_7364 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7364 + 100] = uint256(stor9.field_0)
                                mem[_7364 + 132] = 128
                                mem[_7364 + 228] = mem[_7364]
                                idx = 0
                                s = _7364 + 32
                                t = _7364 + 260
                                while idx < mem[_7364]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7364 + 164] = this.address
                                mem[_7364 + 196] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7364 + (32 * mem[_7364]) + -mem[64] + 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8292 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8356 = mem[_8292]
                                require mem[_8292] <= test266151307()
                                require _8292 + mem[_8292] + 31 < _8292 + return_data.size
                                _8420 = mem[_8292 + mem[_8292]]
                                if mem[_8292 + mem[_8292]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8292 + ceil32(return_data.size) + floor32(mem[_8292 + mem[_8292]]) + 1 > test266151307() or floor32(mem[_8292 + mem[_8292]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8292 + ceil32(return_data.size) + floor32(mem[_8292 + mem[_8292]]) + 1
                                mem[_8292 + ceil32(return_data.size)] = _8420
                                require _8356 + (32 * _8420) + 32 <= return_data.size
                                idx = _8292 + _8356 + 32
                                s = _8292 + ceil32(return_data.size) + 32
                                while idx < _8292 + _8356 + (32 * _8420) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                            else:
                                _7363 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                if 0 >= mem[_7363]:
                                    revert with 'NH{q', 50
                                mem[_7363 + 32] = WBNBAddress
                                if 1 >= mem[_7363]:
                                    revert with 'NH{q', 50
                                mem[_7363 + 64] = sub_93a39776Address
                                if 2 >= mem[_7363]:
                                    revert with 'NH{q', 50
                                mem[_7363 + 96] = arg1
                                mem[_7363 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7363 + 132] = uint256(stor9.field_0)
                                mem[_7363 + 164] = 128
                                mem[_7363 + 260] = mem[_7363]
                                idx = 0
                                s = _7363 + 32
                                t = _7363 + 292
                                while idx < mem[_7363]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7363 + 196] = this.address
                                mem[_7363 + 228] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7363 + (32 * mem[_7363]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8291 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8355 = mem[_8291]
                                require mem[_8291] <= test266151307()
                                require _8291 + mem[_8291] + 31 < _8291 + return_data.size
                                _8419 = mem[_8291 + mem[_8291]]
                                if mem[_8291 + mem[_8291]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8291 + ceil32(return_data.size) + floor32(mem[_8291 + mem[_8291]]) + 1 > test266151307() or floor32(mem[_8291 + mem[_8291]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8291 + ceil32(return_data.size) + floor32(mem[_8291 + mem[_8291]]) + 1
                                mem[_8291 + ceil32(return_data.size)] = _8419
                                require _8355 + (32 * _8419) + 32 <= return_data.size
                                idx = _8291 + _8355 + 32
                                s = _8291 + ceil32(return_data.size) + 32
                                while idx < _8291 + _8355 + (32 * _8419) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                        else:
                            _4121 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            if 0 >= mem[_4121]:
                                revert with 'NH{q', 50
                            mem[_4121 + 32] = WBNBAddress
                            if 1 >= mem[_4121]:
                                revert with 'NH{q', 50
                            mem[_4121 + 64] = sub_93a39776Address
                            if 2 >= mem[_4121]:
                                revert with 'NH{q', 50
                            mem[_4121 + 96] = arg1
                            mem[_4121 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4121 + 132] = 0
                            mem[_4121 + 164] = 128
                            mem[_4121 + 260] = mem[_4121]
                            idx = 0
                            s = _4121 + 32
                            t = _4121 + 292
                            while idx < mem[_4121]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4121 + 196] = this.address
                            mem[_4121 + 228] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4121 + (32 * mem[_4121]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5577 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5609 = mem[_5577]
                            require mem[_5577] <= test266151307()
                            require _5577 + mem[_5577] + 31 < _5577 + return_data.size
                            _5641 = mem[_5577 + mem[_5577]]
                            if mem[_5577 + mem[_5577]] > test266151307():
                                revert with 'NH{q', 65
                            if _5577 + ceil32(return_data.size) + floor32(mem[_5577 + mem[_5577]]) + 1 > test266151307() or floor32(mem[_5577 + mem[_5577]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5577 + ceil32(return_data.size) + floor32(mem[_5577 + mem[_5577]]) + 1
                            mem[_5577 + ceil32(return_data.size)] = _5641
                            require _5609 + (32 * _5641) + 32 <= return_data.size
                            idx = _5577 + _5609 + 32
                            s = _5577 + ceil32(return_data.size) + 32
                            while idx < _5577 + _5609 + (32 * _5641) + 32:
                                require mem[idx] == mem[idx]
                                mem[s] = mem[idx]
                                idx = idx + 32
                                s = s + 32
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7017 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7049 = mem[_7017]
                            require mem[_7017] == mem[_7017]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4093 and -stor6 + 10000 > -1 / _4093:
                                revert with 'NH{q', 17
                            if (10000 * _4093) - (stor6 * _4093) / 10000 > mem[_7017]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _7049
                            require ext_code.size(arg1)
                            call arg1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _7049
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7209 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7209] == bool(mem[_7209])
                            if not mem[_7209]:
                                revert with 0, 'HP/HT'
                            if block.timestamp > -10:
                                revert with 'NH{q', 17
                            if sub_93a39776Address == WBNBAddress:
                                _7362 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                if 0 >= mem[_7362]:
                                    revert with 'NH{q', 50
                                mem[_7362 + 32] = sub_93a39776Address
                                if 1 >= mem[_7362]:
                                    revert with 'NH{q', 50
                                mem[_7362 + 64] = arg1
                                mem[_7362 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7362 + 100] = uint256(stor9.field_0)
                                mem[_7362 + 132] = 128
                                mem[_7362 + 228] = mem[_7362]
                                idx = 0
                                s = _7362 + 32
                                t = _7362 + 260
                                while idx < mem[_7362]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7362 + 164] = this.address
                                mem[_7362 + 196] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7362 + (32 * mem[_7362]) + -mem[64] + 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8290 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8354 = mem[_8290]
                                require mem[_8290] <= test266151307()
                                require _8290 + mem[_8290] + 31 < _8290 + return_data.size
                                _8418 = mem[_8290 + mem[_8290]]
                                if mem[_8290 + mem[_8290]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8290 + ceil32(return_data.size) + floor32(mem[_8290 + mem[_8290]]) + 1 > test266151307() or floor32(mem[_8290 + mem[_8290]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8290 + ceil32(return_data.size) + floor32(mem[_8290 + mem[_8290]]) + 1
                                mem[_8290 + ceil32(return_data.size)] = _8418
                                require _8354 + (32 * _8418) + 32 <= return_data.size
                                idx = _8290 + _8354 + 32
                                s = _8290 + ceil32(return_data.size) + 32
                                while idx < _8290 + _8354 + (32 * _8418) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                            else:
                                _7361 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                if 0 >= mem[_7361]:
                                    revert with 'NH{q', 50
                                mem[_7361 + 32] = WBNBAddress
                                if 1 >= mem[_7361]:
                                    revert with 'NH{q', 50
                                mem[_7361 + 64] = sub_93a39776Address
                                if 2 >= mem[_7361]:
                                    revert with 'NH{q', 50
                                mem[_7361 + 96] = arg1
                                mem[_7361 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7361 + 132] = uint256(stor9.field_0)
                                mem[_7361 + 164] = 128
                                mem[_7361 + 260] = mem[_7361]
                                idx = 0
                                s = _7361 + 32
                                t = _7361 + 292
                                while idx < mem[_7361]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7361 + 196] = this.address
                                mem[_7361 + 228] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7361 + (32 * mem[_7361]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8289 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8353 = mem[_8289]
                                require mem[_8289] <= test266151307()
                                require _8289 + mem[_8289] + 31 < _8289 + return_data.size
                                _8417 = mem[_8289 + mem[_8289]]
                                if mem[_8289 + mem[_8289]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8289 + ceil32(return_data.size) + floor32(mem[_8289 + mem[_8289]]) + 1 > test266151307() or floor32(mem[_8289 + mem[_8289]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8289 + ceil32(return_data.size) + floor32(mem[_8289 + mem[_8289]]) + 1
                                mem[_8289 + ceil32(return_data.size)] = _8417
                                require _8353 + (32 * _8417) + 32 <= return_data.size
                                idx = _8289 + _8353 + 32
                                s = _8289 + ceil32(return_data.size) + 32
                                while idx < _8289 + _8353 + (32 * _8417) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                else:
                    if stor8:
                        revert with 0, 'Locked'
                    if block.timestamp > -10:
                        revert with 'NH{q', 17
                    if sub_93a39776Address == WBNBAddress:
                        _1796 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_1796]:
                            revert with 'NH{q', 50
                        mem[_1796 + 32] = sub_93a39776Address
                        if 1 >= mem[_1796]:
                            revert with 'NH{q', 50
                        mem[_1796 + 64] = arg1
                        mem[_1796 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1796 + 100] = uint256(stor7.field_0)
                        mem[_1796 + 132] = 64
                        mem[_1796 + 164] = mem[_1796]
                        idx = 0
                        s = _1796 + 32
                        t = _1796 + 196
                        while idx < mem[_1796]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(ROUTERAddress)
                        staticcall ROUTERAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1796 + (32 * mem[_1796]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2776 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2792 = mem[_2776]
                        require mem[_2776] <= test266151307()
                        require _2776 + mem[_2776] + 31 < _2776 + return_data.size
                        _2808 = mem[_2776 + mem[_2776]]
                        if mem[_2776 + mem[_2776]] > test266151307():
                            revert with 'NH{q', 65
                        if _2776 + ceil32(return_data.size) + floor32(mem[_2776 + mem[_2776]]) + 1 > test266151307() or floor32(mem[_2776 + mem[_2776]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2776 + ceil32(return_data.size) + floor32(mem[_2776 + mem[_2776]]) + 1
                        mem[_2776 + ceil32(return_data.size)] = _2808
                        require _2792 + (32 * _2808) + 32 <= return_data.size
                        idx = _2776 + _2792 + 32
                        s = _2776 + ceil32(return_data.size) + 32
                        while idx < _2776 + _2792 + (32 * _2808) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if _2808 < 1:
                            revert with 'NH{q', 17
                        if _2808 - 1 >= _2808:
                            revert with 'NH{q', 50
                        _4096 = mem[(32 * _2808 - 1) + _2776 + ceil32(return_data.size) + 32]
                        if sub_93a39776Address == WBNBAddress:
                            _4128 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_4128]:
                                revert with 'NH{q', 50
                            mem[_4128 + 32] = sub_93a39776Address
                            if 1 >= mem[_4128]:
                                revert with 'NH{q', 50
                            mem[_4128 + 64] = arg1
                            mem[_4128 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4128 + 100] = 0
                            mem[_4128 + 132] = 128
                            mem[_4128 + 228] = mem[_4128]
                            idx = 0
                            s = _4128 + 32
                            t = _4128 + 260
                            while idx < mem[_4128]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4128 + 164] = this.address
                            mem[_4128 + 196] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4128 + (32 * mem[_4128]) + -mem[64] + 256]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5584 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5616 = mem[_5584]
                            require mem[_5584] <= test266151307()
                            require _5584 + mem[_5584] + 31 < _5584 + return_data.size
                            _5648 = mem[_5584 + mem[_5584]]
                            if mem[_5584 + mem[_5584]] > test266151307():
                                revert with 'NH{q', 65
                            if _5584 + ceil32(return_data.size) + floor32(mem[_5584 + mem[_5584]]) + 1 > test266151307() or floor32(mem[_5584 + mem[_5584]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5584 + ceil32(return_data.size) + floor32(mem[_5584 + mem[_5584]]) + 1
                            mem[_5584 + ceil32(return_data.size)] = _5648
                            require _5616 + (32 * _5648) + 32 <= return_data.size
                            idx = _5584 + _5616 + 32
                            s = _5584 + ceil32(return_data.size) + 32
                            while idx < _5584 + _5616 + (32 * _5648) + 32:
                                require mem[idx] == mem[idx]
                                mem[s] = mem[idx]
                                idx = idx + 32
                                s = s + 32
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7024 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7056 = mem[_7024]
                            require mem[_7024] == mem[_7024]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4096 and -stor6 + 10000 > -1 / _4096:
                                revert with 'NH{q', 17
                            if (10000 * _4096) - (stor6 * _4096) / 10000 > mem[_7024]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _7056
                            require ext_code.size(arg1)
                            call arg1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _7056
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7216 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7216] == bool(mem[_7216])
                            if not mem[_7216]:
                                revert with 0, 'HP/HT'
                            if block.timestamp > -10:
                                revert with 'NH{q', 17
                            if sub_93a39776Address == WBNBAddress:
                                _7376 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                if 0 >= mem[_7376]:
                                    revert with 'NH{q', 50
                                mem[_7376 + 32] = sub_93a39776Address
                                if 1 >= mem[_7376]:
                                    revert with 'NH{q', 50
                                mem[_7376 + 64] = arg1
                                mem[_7376 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7376 + 100] = uint256(stor9.field_0)
                                mem[_7376 + 132] = 128
                                mem[_7376 + 228] = mem[_7376]
                                idx = 0
                                s = _7376 + 32
                                t = _7376 + 260
                                while idx < mem[_7376]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7376 + 164] = this.address
                                mem[_7376 + 196] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7376 + (32 * mem[_7376]) + -mem[64] + 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8304 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8368 = mem[_8304]
                                require mem[_8304] <= test266151307()
                                require _8304 + mem[_8304] + 31 < _8304 + return_data.size
                                _8432 = mem[_8304 + mem[_8304]]
                                if mem[_8304 + mem[_8304]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8304 + ceil32(return_data.size) + floor32(mem[_8304 + mem[_8304]]) + 1 > test266151307() or floor32(mem[_8304 + mem[_8304]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8304 + ceil32(return_data.size) + floor32(mem[_8304 + mem[_8304]]) + 1
                                mem[_8304 + ceil32(return_data.size)] = _8432
                                require _8368 + (32 * _8432) + 32 <= return_data.size
                                idx = _8304 + _8368 + 32
                                s = _8304 + ceil32(return_data.size) + 32
                                while idx < _8304 + _8368 + (32 * _8432) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                            else:
                                _7375 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                if 0 >= mem[_7375]:
                                    revert with 'NH{q', 50
                                mem[_7375 + 32] = WBNBAddress
                                if 1 >= mem[_7375]:
                                    revert with 'NH{q', 50
                                mem[_7375 + 64] = sub_93a39776Address
                                if 2 >= mem[_7375]:
                                    revert with 'NH{q', 50
                                mem[_7375 + 96] = arg1
                                mem[_7375 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7375 + 132] = uint256(stor9.field_0)
                                mem[_7375 + 164] = 128
                                mem[_7375 + 260] = mem[_7375]
                                idx = 0
                                s = _7375 + 32
                                t = _7375 + 292
                                while idx < mem[_7375]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7375 + 196] = this.address
                                mem[_7375 + 228] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7375 + (32 * mem[_7375]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8303 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8367 = mem[_8303]
                                require mem[_8303] <= test266151307()
                                require _8303 + mem[_8303] + 31 < _8303 + return_data.size
                                _8431 = mem[_8303 + mem[_8303]]
                                if mem[_8303 + mem[_8303]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8303 + ceil32(return_data.size) + floor32(mem[_8303 + mem[_8303]]) + 1 > test266151307() or floor32(mem[_8303 + mem[_8303]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8303 + ceil32(return_data.size) + floor32(mem[_8303 + mem[_8303]]) + 1
                                mem[_8303 + ceil32(return_data.size)] = _8431
                                require _8367 + (32 * _8431) + 32 <= return_data.size
                                idx = _8303 + _8367 + 32
                                s = _8303 + ceil32(return_data.size) + 32
                                while idx < _8303 + _8367 + (32 * _8431) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                        else:
                            _4127 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            if 0 >= mem[_4127]:
                                revert with 'NH{q', 50
                            mem[_4127 + 32] = WBNBAddress
                            if 1 >= mem[_4127]:
                                revert with 'NH{q', 50
                            mem[_4127 + 64] = sub_93a39776Address
                            if 2 >= mem[_4127]:
                                revert with 'NH{q', 50
                            mem[_4127 + 96] = arg1
                            mem[_4127 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4127 + 132] = 0
                            mem[_4127 + 164] = 128
                            mem[_4127 + 260] = mem[_4127]
                            idx = 0
                            s = _4127 + 32
                            t = _4127 + 292
                            while idx < mem[_4127]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4127 + 196] = this.address
                            mem[_4127 + 228] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4127 + (32 * mem[_4127]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5583 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5615 = mem[_5583]
                            require mem[_5583] <= test266151307()
                            require _5583 + mem[_5583] + 31 < _5583 + return_data.size
                            _5647 = mem[_5583 + mem[_5583]]
                            if mem[_5583 + mem[_5583]] > test266151307():
                                revert with 'NH{q', 65
                            if _5583 + ceil32(return_data.size) + floor32(mem[_5583 + mem[_5583]]) + 1 > test266151307() or floor32(mem[_5583 + mem[_5583]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5583 + ceil32(return_data.size) + floor32(mem[_5583 + mem[_5583]]) + 1
                            mem[_5583 + ceil32(return_data.size)] = _5647
                            require _5615 + (32 * _5647) + 32 <= return_data.size
                            idx = _5583 + _5615 + 32
                            s = _5583 + ceil32(return_data.size) + 32
                            while idx < _5583 + _5615 + (32 * _5647) + 32:
                                require mem[idx] == mem[idx]
                                mem[s] = mem[idx]
                                idx = idx + 32
                                s = s + 32
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7023 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7055 = mem[_7023]
                            require mem[_7023] == mem[_7023]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4096 and -stor6 + 10000 > -1 / _4096:
                                revert with 'NH{q', 17
                            if (10000 * _4096) - (stor6 * _4096) / 10000 > mem[_7023]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _7055
                            require ext_code.size(arg1)
                            call arg1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _7055
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7215 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7215] == bool(mem[_7215])
                            if not mem[_7215]:
                                revert with 0, 'HP/HT'
                            if block.timestamp > -10:
                                revert with 'NH{q', 17
                            if sub_93a39776Address == WBNBAddress:
                                _7374 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                if 0 >= mem[_7374]:
                                    revert with 'NH{q', 50
                                mem[_7374 + 32] = sub_93a39776Address
                                if 1 >= mem[_7374]:
                                    revert with 'NH{q', 50
                                mem[_7374 + 64] = arg1
                                mem[_7374 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7374 + 100] = uint256(stor9.field_0)
                                mem[_7374 + 132] = 128
                                mem[_7374 + 228] = mem[_7374]
                                idx = 0
                                s = _7374 + 32
                                t = _7374 + 260
                                while idx < mem[_7374]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7374 + 164] = this.address
                                mem[_7374 + 196] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7374 + (32 * mem[_7374]) + -mem[64] + 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8302 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8366 = mem[_8302]
                                require mem[_8302] <= test266151307()
                                require _8302 + mem[_8302] + 31 < _8302 + return_data.size
                                _8430 = mem[_8302 + mem[_8302]]
                                if mem[_8302 + mem[_8302]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8302 + ceil32(return_data.size) + floor32(mem[_8302 + mem[_8302]]) + 1 > test266151307() or floor32(mem[_8302 + mem[_8302]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8302 + ceil32(return_data.size) + floor32(mem[_8302 + mem[_8302]]) + 1
                                mem[_8302 + ceil32(return_data.size)] = _8430
                                require _8366 + (32 * _8430) + 32 <= return_data.size
                                idx = _8302 + _8366 + 32
                                s = _8302 + ceil32(return_data.size) + 32
                                while idx < _8302 + _8366 + (32 * _8430) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                            else:
                                _7373 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                if 0 >= mem[_7373]:
                                    revert with 'NH{q', 50
                                mem[_7373 + 32] = WBNBAddress
                                if 1 >= mem[_7373]:
                                    revert with 'NH{q', 50
                                mem[_7373 + 64] = sub_93a39776Address
                                if 2 >= mem[_7373]:
                                    revert with 'NH{q', 50
                                mem[_7373 + 96] = arg1
                                mem[_7373 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7373 + 132] = uint256(stor9.field_0)
                                mem[_7373 + 164] = 128
                                mem[_7373 + 260] = mem[_7373]
                                idx = 0
                                s = _7373 + 32
                                t = _7373 + 292
                                while idx < mem[_7373]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7373 + 196] = this.address
                                mem[_7373 + 228] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7373 + (32 * mem[_7373]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8301 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8365 = mem[_8301]
                                require mem[_8301] <= test266151307()
                                require _8301 + mem[_8301] + 31 < _8301 + return_data.size
                                _8429 = mem[_8301 + mem[_8301]]
                                if mem[_8301 + mem[_8301]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8301 + ceil32(return_data.size) + floor32(mem[_8301 + mem[_8301]]) + 1 > test266151307() or floor32(mem[_8301 + mem[_8301]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8301 + ceil32(return_data.size) + floor32(mem[_8301 + mem[_8301]]) + 1
                                mem[_8301 + ceil32(return_data.size)] = _8429
                                require _8365 + (32 * _8429) + 32 <= return_data.size
                                idx = _8301 + _8365 + 32
                                s = _8301 + ceil32(return_data.size) + 32
                                while idx < _8301 + _8365 + (32 * _8429) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                    else:
                        _1795 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if 0 >= mem[_1795]:
                            revert with 'NH{q', 50
                        mem[_1795 + 32] = WBNBAddress
                        if 1 >= mem[_1795]:
                            revert with 'NH{q', 50
                        mem[_1795 + 64] = sub_93a39776Address
                        if 2 >= mem[_1795]:
                            revert with 'NH{q', 50
                        mem[_1795 + 96] = arg1
                        mem[_1795 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1795 + 132] = uint256(stor7.field_0)
                        mem[_1795 + 164] = 64
                        mem[_1795 + 196] = mem[_1795]
                        idx = 0
                        s = _1795 + 32
                        t = _1795 + 228
                        while idx < mem[_1795]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(ROUTERAddress)
                        staticcall ROUTERAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1795 + (32 * mem[_1795]) + -mem[64] + 224]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2775 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2791 = mem[_2775]
                        require mem[_2775] <= test266151307()
                        require _2775 + mem[_2775] + 31 < _2775 + return_data.size
                        _2807 = mem[_2775 + mem[_2775]]
                        if mem[_2775 + mem[_2775]] > test266151307():
                            revert with 'NH{q', 65
                        if _2775 + ceil32(return_data.size) + floor32(mem[_2775 + mem[_2775]]) + 1 > test266151307() or floor32(mem[_2775 + mem[_2775]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2775 + ceil32(return_data.size) + floor32(mem[_2775 + mem[_2775]]) + 1
                        mem[_2775 + ceil32(return_data.size)] = _2807
                        require _2791 + (32 * _2807) + 32 <= return_data.size
                        idx = _2775 + _2791 + 32
                        s = _2775 + ceil32(return_data.size) + 32
                        while idx < _2775 + _2791 + (32 * _2807) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if _2807 < 1:
                            revert with 'NH{q', 17
                        if _2807 - 1 >= _2807:
                            revert with 'NH{q', 50
                        _4095 = mem[(32 * _2807 - 1) + _2775 + ceil32(return_data.size) + 32]
                        if sub_93a39776Address == WBNBAddress:
                            _4126 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_4126]:
                                revert with 'NH{q', 50
                            mem[_4126 + 32] = sub_93a39776Address
                            if 1 >= mem[_4126]:
                                revert with 'NH{q', 50
                            mem[_4126 + 64] = arg1
                            mem[_4126 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4126 + 100] = 0
                            mem[_4126 + 132] = 128
                            mem[_4126 + 228] = mem[_4126]
                            idx = 0
                            s = _4126 + 32
                            t = _4126 + 260
                            while idx < mem[_4126]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4126 + 164] = this.address
                            mem[_4126 + 196] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4126 + (32 * mem[_4126]) + -mem[64] + 256]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5582 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5614 = mem[_5582]
                            require mem[_5582] <= test266151307()
                            require _5582 + mem[_5582] + 31 < _5582 + return_data.size
                            _5646 = mem[_5582 + mem[_5582]]
                            if mem[_5582 + mem[_5582]] > test266151307():
                                revert with 'NH{q', 65
                            if _5582 + ceil32(return_data.size) + floor32(mem[_5582 + mem[_5582]]) + 1 > test266151307() or floor32(mem[_5582 + mem[_5582]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5582 + ceil32(return_data.size) + floor32(mem[_5582 + mem[_5582]]) + 1
                            mem[_5582 + ceil32(return_data.size)] = _5646
                            require _5614 + (32 * _5646) + 32 <= return_data.size
                            idx = _5582 + _5614 + 32
                            s = _5582 + ceil32(return_data.size) + 32
                            while idx < _5582 + _5614 + (32 * _5646) + 32:
                                require mem[idx] == mem[idx]
                                mem[s] = mem[idx]
                                idx = idx + 32
                                s = s + 32
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7022 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7054 = mem[_7022]
                            require mem[_7022] == mem[_7022]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4095 and -stor6 + 10000 > -1 / _4095:
                                revert with 'NH{q', 17
                            if (10000 * _4095) - (stor6 * _4095) / 10000 > mem[_7022]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _7054
                            require ext_code.size(arg1)
                            call arg1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _7054
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7214 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7214] == bool(mem[_7214])
                            if not mem[_7214]:
                                revert with 0, 'HP/HT'
                            if block.timestamp > -10:
                                revert with 'NH{q', 17
                            if sub_93a39776Address == WBNBAddress:
                                _7372 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                if 0 >= mem[_7372]:
                                    revert with 'NH{q', 50
                                mem[_7372 + 32] = sub_93a39776Address
                                if 1 >= mem[_7372]:
                                    revert with 'NH{q', 50
                                mem[_7372 + 64] = arg1
                                mem[_7372 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7372 + 100] = uint256(stor9.field_0)
                                mem[_7372 + 132] = 128
                                mem[_7372 + 228] = mem[_7372]
                                idx = 0
                                s = _7372 + 32
                                t = _7372 + 260
                                while idx < mem[_7372]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7372 + 164] = this.address
                                mem[_7372 + 196] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7372 + (32 * mem[_7372]) + -mem[64] + 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8300 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8364 = mem[_8300]
                                require mem[_8300] <= test266151307()
                                require _8300 + mem[_8300] + 31 < _8300 + return_data.size
                                _8428 = mem[_8300 + mem[_8300]]
                                if mem[_8300 + mem[_8300]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8300 + ceil32(return_data.size) + floor32(mem[_8300 + mem[_8300]]) + 1 > test266151307() or floor32(mem[_8300 + mem[_8300]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8300 + ceil32(return_data.size) + floor32(mem[_8300 + mem[_8300]]) + 1
                                mem[_8300 + ceil32(return_data.size)] = _8428
                                require _8364 + (32 * _8428) + 32 <= return_data.size
                                idx = _8300 + _8364 + 32
                                s = _8300 + ceil32(return_data.size) + 32
                                while idx < _8300 + _8364 + (32 * _8428) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                            else:
                                _7371 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                if 0 >= mem[_7371]:
                                    revert with 'NH{q', 50
                                mem[_7371 + 32] = WBNBAddress
                                if 1 >= mem[_7371]:
                                    revert with 'NH{q', 50
                                mem[_7371 + 64] = sub_93a39776Address
                                if 2 >= mem[_7371]:
                                    revert with 'NH{q', 50
                                mem[_7371 + 96] = arg1
                                mem[_7371 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7371 + 132] = uint256(stor9.field_0)
                                mem[_7371 + 164] = 128
                                mem[_7371 + 260] = mem[_7371]
                                idx = 0
                                s = _7371 + 32
                                t = _7371 + 292
                                while idx < mem[_7371]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7371 + 196] = this.address
                                mem[_7371 + 228] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7371 + (32 * mem[_7371]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8299 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8363 = mem[_8299]
                                require mem[_8299] <= test266151307()
                                require _8299 + mem[_8299] + 31 < _8299 + return_data.size
                                _8427 = mem[_8299 + mem[_8299]]
                                if mem[_8299 + mem[_8299]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8299 + ceil32(return_data.size) + floor32(mem[_8299 + mem[_8299]]) + 1 > test266151307() or floor32(mem[_8299 + mem[_8299]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8299 + ceil32(return_data.size) + floor32(mem[_8299 + mem[_8299]]) + 1
                                mem[_8299 + ceil32(return_data.size)] = _8427
                                require _8363 + (32 * _8427) + 32 <= return_data.size
                                idx = _8299 + _8363 + 32
                                s = _8299 + ceil32(return_data.size) + 32
                                while idx < _8299 + _8363 + (32 * _8427) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                        else:
                            _4125 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            if 0 >= mem[_4125]:
                                revert with 'NH{q', 50
                            mem[_4125 + 32] = WBNBAddress
                            if 1 >= mem[_4125]:
                                revert with 'NH{q', 50
                            mem[_4125 + 64] = sub_93a39776Address
                            if 2 >= mem[_4125]:
                                revert with 'NH{q', 50
                            mem[_4125 + 96] = arg1
                            mem[_4125 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4125 + 132] = 0
                            mem[_4125 + 164] = 128
                            mem[_4125 + 260] = mem[_4125]
                            idx = 0
                            s = _4125 + 32
                            t = _4125 + 292
                            while idx < mem[_4125]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4125 + 196] = this.address
                            mem[_4125 + 228] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4125 + (32 * mem[_4125]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5581 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5613 = mem[_5581]
                            require mem[_5581] <= test266151307()
                            require _5581 + mem[_5581] + 31 < _5581 + return_data.size
                            _5645 = mem[_5581 + mem[_5581]]
                            if mem[_5581 + mem[_5581]] > test266151307():
                                revert with 'NH{q', 65
                            if _5581 + ceil32(return_data.size) + floor32(mem[_5581 + mem[_5581]]) + 1 > test266151307() or floor32(mem[_5581 + mem[_5581]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5581 + ceil32(return_data.size) + floor32(mem[_5581 + mem[_5581]]) + 1
                            mem[_5581 + ceil32(return_data.size)] = _5645
                            require _5613 + (32 * _5645) + 32 <= return_data.size
                            idx = _5581 + _5613 + 32
                            s = _5581 + ceil32(return_data.size) + 32
                            while idx < _5581 + _5613 + (32 * _5645) + 32:
                                require mem[idx] == mem[idx]
                                mem[s] = mem[idx]
                                idx = idx + 32
                                s = s + 32
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7021 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7053 = mem[_7021]
                            require mem[_7021] == mem[_7021]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4095 and -stor6 + 10000 > -1 / _4095:
                                revert with 'NH{q', 17
                            if (10000 * _4095) - (stor6 * _4095) / 10000 > mem[_7021]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _7053
                            require ext_code.size(arg1)
                            call arg1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _7053
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7213 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7213] == bool(mem[_7213])
                            if not mem[_7213]:
                                revert with 0, 'HP/HT'
                            if block.timestamp > -10:
                                revert with 'NH{q', 17
                            if sub_93a39776Address == WBNBAddress:
                                _7370 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                if 0 >= mem[_7370]:
                                    revert with 'NH{q', 50
                                mem[_7370 + 32] = sub_93a39776Address
                                if 1 >= mem[_7370]:
                                    revert with 'NH{q', 50
                                mem[_7370 + 64] = arg1
                                mem[_7370 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7370 + 100] = uint256(stor9.field_0)
                                mem[_7370 + 132] = 128
                                mem[_7370 + 228] = mem[_7370]
                                idx = 0
                                s = _7370 + 32
                                t = _7370 + 260
                                while idx < mem[_7370]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7370 + 164] = this.address
                                mem[_7370 + 196] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7370 + (32 * mem[_7370]) + -mem[64] + 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8298 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8362 = mem[_8298]
                                require mem[_8298] <= test266151307()
                                require _8298 + mem[_8298] + 31 < _8298 + return_data.size
                                _8426 = mem[_8298 + mem[_8298]]
                                if mem[_8298 + mem[_8298]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8298 + ceil32(return_data.size) + floor32(mem[_8298 + mem[_8298]]) + 1 > test266151307() or floor32(mem[_8298 + mem[_8298]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8298 + ceil32(return_data.size) + floor32(mem[_8298 + mem[_8298]]) + 1
                                mem[_8298 + ceil32(return_data.size)] = _8426
                                require _8362 + (32 * _8426) + 32 <= return_data.size
                                idx = _8298 + _8362 + 32
                                s = _8298 + ceil32(return_data.size) + 32
                                while idx < _8298 + _8362 + (32 * _8426) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                            else:
                                _7369 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                if 0 >= mem[_7369]:
                                    revert with 'NH{q', 50
                                mem[_7369 + 32] = WBNBAddress
                                if 1 >= mem[_7369]:
                                    revert with 'NH{q', 50
                                mem[_7369 + 64] = sub_93a39776Address
                                if 2 >= mem[_7369]:
                                    revert with 'NH{q', 50
                                mem[_7369 + 96] = arg1
                                mem[_7369 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7369 + 132] = uint256(stor9.field_0)
                                mem[_7369 + 164] = 128
                                mem[_7369 + 260] = mem[_7369]
                                idx = 0
                                s = _7369 + 32
                                t = _7369 + 292
                                while idx < mem[_7369]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7369 + 196] = this.address
                                mem[_7369 + 228] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7369 + (32 * mem[_7369]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8297 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8361 = mem[_8297]
                                require mem[_8297] <= test266151307()
                                require _8297 + mem[_8297] + 31 < _8297 + return_data.size
                                _8425 = mem[_8297 + mem[_8297]]
                                if mem[_8297 + mem[_8297]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8297 + ceil32(return_data.size) + floor32(mem[_8297 + mem[_8297]]) + 1 > test266151307() or floor32(mem[_8297 + mem[_8297]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8297 + ceil32(return_data.size) + floor32(mem[_8297 + mem[_8297]]) + 1
                                mem[_8297 + ceil32(return_data.size)] = _8425
                                require _8361 + (32 * _8425) + 32 <= return_data.size
                                idx = _8297 + _8361 + 32
                                s = _8297 + ceil32(return_data.size) + 32
                                while idx < _8297 + _8361 + (32 * _8425) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
        else:
            mem[96] = 3
            mem[128] = WBNBAddress
            mem[160] = sub_93a39776Address
            mem[192] = arg1
            mem[224] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[228] = uint256(stor9.field_0)
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
                   args uint256(stor9.field_0), Array(len=3, data=mem[324 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 224
            require return_data.size >= 32
            _811 = mem[224 len 4], Mask(224, 0, stor9.field_32)
            require mem[224 len 4], Mask(224, 0, stor9.field_32) <= test266151307()
            require mem[224 len 4], Mask(224, 0, stor9.field_32) + 255 < return_data.size + 224
            _815 = mem[mem[224 len 4], Mask(224, 0, stor9.field_32) + 224]
            if mem[mem[224 len 4], Mask(224, 0, stor9.field_32) + 224] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[224 len 4], Mask(224, 0, stor9.field_32) + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], Mask(224, 0, stor9.field_32) + 224]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], Mask(224, 0, stor9.field_32) + 224]) + 225
            mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 0, stor9.field_32) + 224]
            require _811 + (32 * _815) + 32 <= return_data.size
            idx = _811 + 256
            s = ceil32(return_data.size) + 256
            while idx < _811 + (32 * _815) + 256:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            if 0 >= _815:
                revert with 'NH{q', 50
            if mem[ceil32(return_data.size) + 256] > eth.balance(this.address):
                revert with 0, 'Locked'
            if bool(uint8(stor5.field_160)) != 1:
                if block.timestamp > -10:
                    revert with 'NH{q', 17
                if sub_93a39776Address == WBNBAddress:
                    _1754 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_1754]:
                        revert with 'NH{q', 50
                    mem[_1754 + 32] = sub_93a39776Address
                    if 1 >= mem[_1754]:
                        revert with 'NH{q', 50
                    mem[_1754 + 64] = arg1
                    mem[_1754 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[_1754 + 100] = uint256(stor9.field_0)
                    mem[_1754 + 132] = 128
                    mem[_1754 + 228] = mem[_1754]
                    idx = 0
                    s = _1754 + 32
                    t = _1754 + 260
                    while idx < mem[_1754]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1754 + 164] = this.address
                    mem[_1754 + 196] = block.timestamp + 9
                    require ext_code.size(ROUTERAddress)
                    call ROUTERAddress.mem[mem[64] len 4] with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1754 + (32 * mem[_1754]) + -mem[64] + 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2822 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2846 = mem[_2822]
                    require mem[_2822] <= test266151307()
                    require _2822 + mem[_2822] + 31 < _2822 + return_data.size
                    _2854 = mem[_2822 + mem[_2822]]
                    if mem[_2822 + mem[_2822]] > test266151307():
                        revert with 'NH{q', 65
                    if _2822 + ceil32(return_data.size) + floor32(mem[_2822 + mem[_2822]]) + 1 > test266151307() or floor32(mem[_2822 + mem[_2822]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _2822 + ceil32(return_data.size) + floor32(mem[_2822 + mem[_2822]]) + 1
                    mem[_2822 + ceil32(return_data.size)] = _2854
                    require _2846 + (32 * _2854) + 32 <= return_data.size
                    idx = _2822 + _2846 + 32
                    s = _2822 + ceil32(return_data.size) + 32
                    while idx < _2822 + _2846 + (32 * _2854) + 32:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                else:
                    _1753 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    if 0 >= mem[_1753]:
                        revert with 'NH{q', 50
                    mem[_1753 + 32] = WBNBAddress
                    if 1 >= mem[_1753]:
                        revert with 'NH{q', 50
                    mem[_1753 + 64] = sub_93a39776Address
                    if 2 >= mem[_1753]:
                        revert with 'NH{q', 50
                    mem[_1753 + 96] = arg1
                    mem[_1753 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[_1753 + 132] = uint256(stor9.field_0)
                    mem[_1753 + 164] = 128
                    mem[_1753 + 260] = mem[_1753]
                    idx = 0
                    s = _1753 + 32
                    t = _1753 + 292
                    while idx < mem[_1753]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1753 + 196] = this.address
                    mem[_1753 + 228] = block.timestamp + 9
                    require ext_code.size(ROUTERAddress)
                    call ROUTERAddress.mem[mem[64] len 4] with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1753 + (32 * mem[_1753]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2821 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2845 = mem[_2821]
                    require mem[_2821] <= test266151307()
                    require _2821 + mem[_2821] + 31 < _2821 + return_data.size
                    _2853 = mem[_2821 + mem[_2821]]
                    if mem[_2821 + mem[_2821]] > test266151307():
                        revert with 'NH{q', 65
                    if _2821 + ceil32(return_data.size) + floor32(mem[_2821 + mem[_2821]]) + 1 > test266151307() or floor32(mem[_2821 + mem[_2821]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _2821 + ceil32(return_data.size) + floor32(mem[_2821 + mem[_2821]]) + 1
                    mem[_2821 + ceil32(return_data.size)] = _2853
                    require _2845 + (32 * _2853) + 32 <= return_data.size
                    idx = _2821 + _2845 + 32
                    s = _2821 + ceil32(return_data.size) + 32
                    while idx < _2821 + _2845 + (32 * _2853) + 32:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
            else:
                if msg.sender == address(stor5.field_0):
                    if block.timestamp > -10:
                        revert with 'NH{q', 17
                    if sub_93a39776Address == WBNBAddress:
                        _1780 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_1780]:
                            revert with 'NH{q', 50
                        mem[_1780 + 32] = sub_93a39776Address
                        if 1 >= mem[_1780]:
                            revert with 'NH{q', 50
                        mem[_1780 + 64] = arg1
                        mem[_1780 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1780 + 100] = uint256(stor7.field_0)
                        mem[_1780 + 132] = 64
                        mem[_1780 + 164] = mem[_1780]
                        idx = 0
                        s = _1780 + 32
                        t = _1780 + 196
                        while idx < mem[_1780]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(ROUTERAddress)
                        staticcall ROUTERAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1780 + (32 * mem[_1780]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2770 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2786 = mem[_2770]
                        require mem[_2770] <= test266151307()
                        require _2770 + mem[_2770] + 31 < _2770 + return_data.size
                        _2802 = mem[_2770 + mem[_2770]]
                        if mem[_2770 + mem[_2770]] > test266151307():
                            revert with 'NH{q', 65
                        if _2770 + ceil32(return_data.size) + floor32(mem[_2770 + mem[_2770]]) + 1 > test266151307() or floor32(mem[_2770 + mem[_2770]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2770 + ceil32(return_data.size) + floor32(mem[_2770 + mem[_2770]]) + 1
                        mem[_2770 + ceil32(return_data.size)] = _2802
                        require _2786 + (32 * _2802) + 32 <= return_data.size
                        idx = _2770 + _2786 + 32
                        s = _2770 + ceil32(return_data.size) + 32
                        while idx < _2770 + _2786 + (32 * _2802) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if _2802 < 1:
                            revert with 'NH{q', 17
                        if _2802 - 1 >= _2802:
                            revert with 'NH{q', 50
                        _4090 = mem[(32 * _2802 - 1) + _2770 + ceil32(return_data.size) + 32]
                        if sub_93a39776Address == WBNBAddress:
                            _4116 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_4116]:
                                revert with 'NH{q', 50
                            mem[_4116 + 32] = sub_93a39776Address
                            if 1 >= mem[_4116]:
                                revert with 'NH{q', 50
                            mem[_4116 + 64] = arg1
                            mem[_4116 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4116 + 100] = 0
                            mem[_4116 + 132] = 128
                            mem[_4116 + 228] = mem[_4116]
                            idx = 0
                            s = _4116 + 32
                            t = _4116 + 260
                            while idx < mem[_4116]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4116 + 164] = this.address
                            mem[_4116 + 196] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4116 + (32 * mem[_4116]) + -mem[64] + 256]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5572 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5604 = mem[_5572]
                            require mem[_5572] <= test266151307()
                            require _5572 + mem[_5572] + 31 < _5572 + return_data.size
                            _5636 = mem[_5572 + mem[_5572]]
                            if mem[_5572 + mem[_5572]] > test266151307():
                                revert with 'NH{q', 65
                            if _5572 + ceil32(return_data.size) + floor32(mem[_5572 + mem[_5572]]) + 1 > test266151307() or floor32(mem[_5572 + mem[_5572]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5572 + ceil32(return_data.size) + floor32(mem[_5572 + mem[_5572]]) + 1
                            mem[_5572 + ceil32(return_data.size)] = _5636
                            require _5604 + (32 * _5636) + 32 <= return_data.size
                            idx = _5572 + _5604 + 32
                            s = _5572 + ceil32(return_data.size) + 32
                            while idx < _5572 + _5604 + (32 * _5636) + 32:
                                require mem[idx] == mem[idx]
                                mem[s] = mem[idx]
                                idx = idx + 32
                                s = s + 32
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7012 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7044 = mem[_7012]
                            require mem[_7012] == mem[_7012]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4090 and -stor6 + 10000 > -1 / _4090:
                                revert with 'NH{q', 17
                            if (10000 * _4090) - (stor6 * _4090) / 10000 > mem[_7012]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _7044
                            require ext_code.size(arg1)
                            call arg1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _7044
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7204 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7204] == bool(mem[_7204])
                            if not mem[_7204]:
                                revert with 0, 'HP/HT'
                            if block.timestamp > -10:
                                revert with 'NH{q', 17
                            if sub_93a39776Address == WBNBAddress:
                                _7352 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                if 0 >= mem[_7352]:
                                    revert with 'NH{q', 50
                                mem[_7352 + 32] = sub_93a39776Address
                                if 1 >= mem[_7352]:
                                    revert with 'NH{q', 50
                                mem[_7352 + 64] = arg1
                                mem[_7352 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7352 + 100] = uint256(stor9.field_0)
                                mem[_7352 + 132] = 128
                                mem[_7352 + 228] = mem[_7352]
                                idx = 0
                                s = _7352 + 32
                                t = _7352 + 260
                                while idx < mem[_7352]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7352 + 164] = this.address
                                mem[_7352 + 196] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7352 + (32 * mem[_7352]) + -mem[64] + 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8280 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8344 = mem[_8280]
                                require mem[_8280] <= test266151307()
                                require _8280 + mem[_8280] + 31 < _8280 + return_data.size
                                _8408 = mem[_8280 + mem[_8280]]
                                if mem[_8280 + mem[_8280]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8280 + ceil32(return_data.size) + floor32(mem[_8280 + mem[_8280]]) + 1 > test266151307() or floor32(mem[_8280 + mem[_8280]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8280 + ceil32(return_data.size) + floor32(mem[_8280 + mem[_8280]]) + 1
                                mem[_8280 + ceil32(return_data.size)] = _8408
                                require _8344 + (32 * _8408) + 32 <= return_data.size
                                idx = _8280 + _8344 + 32
                                s = _8280 + ceil32(return_data.size) + 32
                                while idx < _8280 + _8344 + (32 * _8408) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                            else:
                                _7351 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                if 0 >= mem[_7351]:
                                    revert with 'NH{q', 50
                                mem[_7351 + 32] = WBNBAddress
                                if 1 >= mem[_7351]:
                                    revert with 'NH{q', 50
                                mem[_7351 + 64] = sub_93a39776Address
                                if 2 >= mem[_7351]:
                                    revert with 'NH{q', 50
                                mem[_7351 + 96] = arg1
                                mem[_7351 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7351 + 132] = uint256(stor9.field_0)
                                mem[_7351 + 164] = 128
                                mem[_7351 + 260] = mem[_7351]
                                idx = 0
                                s = _7351 + 32
                                t = _7351 + 292
                                while idx < mem[_7351]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7351 + 196] = this.address
                                mem[_7351 + 228] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7351 + (32 * mem[_7351]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8279 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8343 = mem[_8279]
                                require mem[_8279] <= test266151307()
                                require _8279 + mem[_8279] + 31 < _8279 + return_data.size
                                _8407 = mem[_8279 + mem[_8279]]
                                if mem[_8279 + mem[_8279]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8279 + ceil32(return_data.size) + floor32(mem[_8279 + mem[_8279]]) + 1 > test266151307() or floor32(mem[_8279 + mem[_8279]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8279 + ceil32(return_data.size) + floor32(mem[_8279 + mem[_8279]]) + 1
                                mem[_8279 + ceil32(return_data.size)] = _8407
                                require _8343 + (32 * _8407) + 32 <= return_data.size
                                idx = _8279 + _8343 + 32
                                s = _8279 + ceil32(return_data.size) + 32
                                while idx < _8279 + _8343 + (32 * _8407) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                        else:
                            _4115 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            if 0 >= mem[_4115]:
                                revert with 'NH{q', 50
                            mem[_4115 + 32] = WBNBAddress
                            if 1 >= mem[_4115]:
                                revert with 'NH{q', 50
                            mem[_4115 + 64] = sub_93a39776Address
                            if 2 >= mem[_4115]:
                                revert with 'NH{q', 50
                            mem[_4115 + 96] = arg1
                            mem[_4115 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4115 + 132] = 0
                            mem[_4115 + 164] = 128
                            mem[_4115 + 260] = mem[_4115]
                            idx = 0
                            s = _4115 + 32
                            t = _4115 + 292
                            while idx < mem[_4115]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4115 + 196] = this.address
                            mem[_4115 + 228] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4115 + (32 * mem[_4115]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5571 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5603 = mem[_5571]
                            require mem[_5571] <= test266151307()
                            require _5571 + mem[_5571] + 31 < _5571 + return_data.size
                            _5635 = mem[_5571 + mem[_5571]]
                            if mem[_5571 + mem[_5571]] > test266151307():
                                revert with 'NH{q', 65
                            if _5571 + ceil32(return_data.size) + floor32(mem[_5571 + mem[_5571]]) + 1 > test266151307() or floor32(mem[_5571 + mem[_5571]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5571 + ceil32(return_data.size) + floor32(mem[_5571 + mem[_5571]]) + 1
                            mem[_5571 + ceil32(return_data.size)] = _5635
                            require _5603 + (32 * _5635) + 32 <= return_data.size
                            idx = _5571 + _5603 + 32
                            s = _5571 + ceil32(return_data.size) + 32
                            while idx < _5571 + _5603 + (32 * _5635) + 32:
                                require mem[idx] == mem[idx]
                                mem[s] = mem[idx]
                                idx = idx + 32
                                s = s + 32
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7011 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7043 = mem[_7011]
                            require mem[_7011] == mem[_7011]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4090 and -stor6 + 10000 > -1 / _4090:
                                revert with 'NH{q', 17
                            if (10000 * _4090) - (stor6 * _4090) / 10000 > mem[_7011]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _7043
                            require ext_code.size(arg1)
                            call arg1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _7043
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7203 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7203] == bool(mem[_7203])
                            if not mem[_7203]:
                                revert with 0, 'HP/HT'
                            if block.timestamp > -10:
                                revert with 'NH{q', 17
                            if sub_93a39776Address == WBNBAddress:
                                _7350 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                if 0 >= mem[_7350]:
                                    revert with 'NH{q', 50
                                mem[_7350 + 32] = sub_93a39776Address
                                if 1 >= mem[_7350]:
                                    revert with 'NH{q', 50
                                mem[_7350 + 64] = arg1
                                mem[_7350 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7350 + 100] = uint256(stor9.field_0)
                                mem[_7350 + 132] = 128
                                mem[_7350 + 228] = mem[_7350]
                                idx = 0
                                s = _7350 + 32
                                t = _7350 + 260
                                while idx < mem[_7350]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7350 + 164] = this.address
                                mem[_7350 + 196] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7350 + (32 * mem[_7350]) + -mem[64] + 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8278 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8342 = mem[_8278]
                                require mem[_8278] <= test266151307()
                                require _8278 + mem[_8278] + 31 < _8278 + return_data.size
                                _8406 = mem[_8278 + mem[_8278]]
                                if mem[_8278 + mem[_8278]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8278 + ceil32(return_data.size) + floor32(mem[_8278 + mem[_8278]]) + 1 > test266151307() or floor32(mem[_8278 + mem[_8278]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8278 + ceil32(return_data.size) + floor32(mem[_8278 + mem[_8278]]) + 1
                                mem[_8278 + ceil32(return_data.size)] = _8406
                                require _8342 + (32 * _8406) + 32 <= return_data.size
                                idx = _8278 + _8342 + 32
                                s = _8278 + ceil32(return_data.size) + 32
                                while idx < _8278 + _8342 + (32 * _8406) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                            else:
                                _7349 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                if 0 >= mem[_7349]:
                                    revert with 'NH{q', 50
                                mem[_7349 + 32] = WBNBAddress
                                if 1 >= mem[_7349]:
                                    revert with 'NH{q', 50
                                mem[_7349 + 64] = sub_93a39776Address
                                if 2 >= mem[_7349]:
                                    revert with 'NH{q', 50
                                mem[_7349 + 96] = arg1
                                mem[_7349 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7349 + 132] = uint256(stor9.field_0)
                                mem[_7349 + 164] = 128
                                mem[_7349 + 260] = mem[_7349]
                                idx = 0
                                s = _7349 + 32
                                t = _7349 + 292
                                while idx < mem[_7349]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7349 + 196] = this.address
                                mem[_7349 + 228] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7349 + (32 * mem[_7349]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8277 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8341 = mem[_8277]
                                require mem[_8277] <= test266151307()
                                require _8277 + mem[_8277] + 31 < _8277 + return_data.size
                                _8405 = mem[_8277 + mem[_8277]]
                                if mem[_8277 + mem[_8277]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8277 + ceil32(return_data.size) + floor32(mem[_8277 + mem[_8277]]) + 1 > test266151307() or floor32(mem[_8277 + mem[_8277]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8277 + ceil32(return_data.size) + floor32(mem[_8277 + mem[_8277]]) + 1
                                mem[_8277 + ceil32(return_data.size)] = _8405
                                require _8341 + (32 * _8405) + 32 <= return_data.size
                                idx = _8277 + _8341 + 32
                                s = _8277 + ceil32(return_data.size) + 32
                                while idx < _8277 + _8341 + (32 * _8405) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                    else:
                        _1779 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if 0 >= mem[_1779]:
                            revert with 'NH{q', 50
                        mem[_1779 + 32] = WBNBAddress
                        if 1 >= mem[_1779]:
                            revert with 'NH{q', 50
                        mem[_1779 + 64] = sub_93a39776Address
                        if 2 >= mem[_1779]:
                            revert with 'NH{q', 50
                        mem[_1779 + 96] = arg1
                        mem[_1779 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1779 + 132] = uint256(stor7.field_0)
                        mem[_1779 + 164] = 64
                        mem[_1779 + 196] = mem[_1779]
                        idx = 0
                        s = _1779 + 32
                        t = _1779 + 228
                        while idx < mem[_1779]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(ROUTERAddress)
                        staticcall ROUTERAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1779 + (32 * mem[_1779]) + -mem[64] + 224]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2769 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2785 = mem[_2769]
                        require mem[_2769] <= test266151307()
                        require _2769 + mem[_2769] + 31 < _2769 + return_data.size
                        _2801 = mem[_2769 + mem[_2769]]
                        if mem[_2769 + mem[_2769]] > test266151307():
                            revert with 'NH{q', 65
                        if _2769 + ceil32(return_data.size) + floor32(mem[_2769 + mem[_2769]]) + 1 > test266151307() or floor32(mem[_2769 + mem[_2769]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2769 + ceil32(return_data.size) + floor32(mem[_2769 + mem[_2769]]) + 1
                        mem[_2769 + ceil32(return_data.size)] = _2801
                        require _2785 + (32 * _2801) + 32 <= return_data.size
                        idx = _2769 + _2785 + 32
                        s = _2769 + ceil32(return_data.size) + 32
                        while idx < _2769 + _2785 + (32 * _2801) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if _2801 < 1:
                            revert with 'NH{q', 17
                        if _2801 - 1 >= _2801:
                            revert with 'NH{q', 50
                        _4089 = mem[(32 * _2801 - 1) + _2769 + ceil32(return_data.size) + 32]
                        if sub_93a39776Address == WBNBAddress:
                            _4114 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_4114]:
                                revert with 'NH{q', 50
                            mem[_4114 + 32] = sub_93a39776Address
                            if 1 >= mem[_4114]:
                                revert with 'NH{q', 50
                            mem[_4114 + 64] = arg1
                            mem[_4114 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4114 + 100] = 0
                            mem[_4114 + 132] = 128
                            mem[_4114 + 228] = mem[_4114]
                            idx = 0
                            s = _4114 + 32
                            t = _4114 + 260
                            while idx < mem[_4114]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4114 + 164] = this.address
                            mem[_4114 + 196] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4114 + (32 * mem[_4114]) + -mem[64] + 256]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5570 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5602 = mem[_5570]
                            require mem[_5570] <= test266151307()
                            require _5570 + mem[_5570] + 31 < _5570 + return_data.size
                            _5634 = mem[_5570 + mem[_5570]]
                            if mem[_5570 + mem[_5570]] > test266151307():
                                revert with 'NH{q', 65
                            if _5570 + ceil32(return_data.size) + floor32(mem[_5570 + mem[_5570]]) + 1 > test266151307() or floor32(mem[_5570 + mem[_5570]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5570 + ceil32(return_data.size) + floor32(mem[_5570 + mem[_5570]]) + 1
                            mem[_5570 + ceil32(return_data.size)] = _5634
                            require _5602 + (32 * _5634) + 32 <= return_data.size
                            idx = _5570 + _5602 + 32
                            s = _5570 + ceil32(return_data.size) + 32
                            while idx < _5570 + _5602 + (32 * _5634) + 32:
                                require mem[idx] == mem[idx]
                                mem[s] = mem[idx]
                                idx = idx + 32
                                s = s + 32
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7010 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7042 = mem[_7010]
                            require mem[_7010] == mem[_7010]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4089 and -stor6 + 10000 > -1 / _4089:
                                revert with 'NH{q', 17
                            if (10000 * _4089) - (stor6 * _4089) / 10000 > mem[_7010]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _7042
                            require ext_code.size(arg1)
                            call arg1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _7042
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7202 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7202] == bool(mem[_7202])
                            if not mem[_7202]:
                                revert with 0, 'HP/HT'
                            if block.timestamp > -10:
                                revert with 'NH{q', 17
                            if sub_93a39776Address == WBNBAddress:
                                _7348 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                if 0 >= mem[_7348]:
                                    revert with 'NH{q', 50
                                mem[_7348 + 32] = sub_93a39776Address
                                if 1 >= mem[_7348]:
                                    revert with 'NH{q', 50
                                mem[_7348 + 64] = arg1
                                mem[_7348 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7348 + 100] = uint256(stor9.field_0)
                                mem[_7348 + 132] = 128
                                mem[_7348 + 228] = mem[_7348]
                                idx = 0
                                s = _7348 + 32
                                t = _7348 + 260
                                while idx < mem[_7348]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7348 + 164] = this.address
                                mem[_7348 + 196] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7348 + (32 * mem[_7348]) + -mem[64] + 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8276 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8340 = mem[_8276]
                                require mem[_8276] <= test266151307()
                                require _8276 + mem[_8276] + 31 < _8276 + return_data.size
                                _8404 = mem[_8276 + mem[_8276]]
                                if mem[_8276 + mem[_8276]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8276 + ceil32(return_data.size) + floor32(mem[_8276 + mem[_8276]]) + 1 > test266151307() or floor32(mem[_8276 + mem[_8276]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8276 + ceil32(return_data.size) + floor32(mem[_8276 + mem[_8276]]) + 1
                                mem[_8276 + ceil32(return_data.size)] = _8404
                                require _8340 + (32 * _8404) + 32 <= return_data.size
                                idx = _8276 + _8340 + 32
                                s = _8276 + ceil32(return_data.size) + 32
                                while idx < _8276 + _8340 + (32 * _8404) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                            else:
                                _7347 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                if 0 >= mem[_7347]:
                                    revert with 'NH{q', 50
                                mem[_7347 + 32] = WBNBAddress
                                if 1 >= mem[_7347]:
                                    revert with 'NH{q', 50
                                mem[_7347 + 64] = sub_93a39776Address
                                if 2 >= mem[_7347]:
                                    revert with 'NH{q', 50
                                mem[_7347 + 96] = arg1
                                mem[_7347 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7347 + 132] = uint256(stor9.field_0)
                                mem[_7347 + 164] = 128
                                mem[_7347 + 260] = mem[_7347]
                                idx = 0
                                s = _7347 + 32
                                t = _7347 + 292
                                while idx < mem[_7347]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7347 + 196] = this.address
                                mem[_7347 + 228] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7347 + (32 * mem[_7347]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8275 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8339 = mem[_8275]
                                require mem[_8275] <= test266151307()
                                require _8275 + mem[_8275] + 31 < _8275 + return_data.size
                                _8403 = mem[_8275 + mem[_8275]]
                                if mem[_8275 + mem[_8275]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8275 + ceil32(return_data.size) + floor32(mem[_8275 + mem[_8275]]) + 1 > test266151307() or floor32(mem[_8275 + mem[_8275]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8275 + ceil32(return_data.size) + floor32(mem[_8275 + mem[_8275]]) + 1
                                mem[_8275 + ceil32(return_data.size)] = _8403
                                require _8339 + (32 * _8403) + 32 <= return_data.size
                                idx = _8275 + _8339 + 32
                                s = _8275 + ceil32(return_data.size) + 32
                                while idx < _8275 + _8339 + (32 * _8403) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                        else:
                            _4113 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            if 0 >= mem[_4113]:
                                revert with 'NH{q', 50
                            mem[_4113 + 32] = WBNBAddress
                            if 1 >= mem[_4113]:
                                revert with 'NH{q', 50
                            mem[_4113 + 64] = sub_93a39776Address
                            if 2 >= mem[_4113]:
                                revert with 'NH{q', 50
                            mem[_4113 + 96] = arg1
                            mem[_4113 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4113 + 132] = 0
                            mem[_4113 + 164] = 128
                            mem[_4113 + 260] = mem[_4113]
                            idx = 0
                            s = _4113 + 32
                            t = _4113 + 292
                            while idx < mem[_4113]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4113 + 196] = this.address
                            mem[_4113 + 228] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4113 + (32 * mem[_4113]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5569 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5601 = mem[_5569]
                            require mem[_5569] <= test266151307()
                            require _5569 + mem[_5569] + 31 < _5569 + return_data.size
                            _5633 = mem[_5569 + mem[_5569]]
                            if mem[_5569 + mem[_5569]] > test266151307():
                                revert with 'NH{q', 65
                            if _5569 + ceil32(return_data.size) + floor32(mem[_5569 + mem[_5569]]) + 1 > test266151307() or floor32(mem[_5569 + mem[_5569]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5569 + ceil32(return_data.size) + floor32(mem[_5569 + mem[_5569]]) + 1
                            mem[_5569 + ceil32(return_data.size)] = _5633
                            require _5601 + (32 * _5633) + 32 <= return_data.size
                            idx = _5569 + _5601 + 32
                            s = _5569 + ceil32(return_data.size) + 32
                            while idx < _5569 + _5601 + (32 * _5633) + 32:
                                require mem[idx] == mem[idx]
                                mem[s] = mem[idx]
                                idx = idx + 32
                                s = s + 32
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7009 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7041 = mem[_7009]
                            require mem[_7009] == mem[_7009]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4089 and -stor6 + 10000 > -1 / _4089:
                                revert with 'NH{q', 17
                            if (10000 * _4089) - (stor6 * _4089) / 10000 > mem[_7009]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _7041
                            require ext_code.size(arg1)
                            call arg1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _7041
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7201 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7201] == bool(mem[_7201])
                            if not mem[_7201]:
                                revert with 0, 'HP/HT'
                            if block.timestamp > -10:
                                revert with 'NH{q', 17
                            if sub_93a39776Address == WBNBAddress:
                                _7346 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                if 0 >= mem[_7346]:
                                    revert with 'NH{q', 50
                                mem[_7346 + 32] = sub_93a39776Address
                                if 1 >= mem[_7346]:
                                    revert with 'NH{q', 50
                                mem[_7346 + 64] = arg1
                                mem[_7346 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7346 + 100] = uint256(stor9.field_0)
                                mem[_7346 + 132] = 128
                                mem[_7346 + 228] = mem[_7346]
                                idx = 0
                                s = _7346 + 32
                                t = _7346 + 260
                                while idx < mem[_7346]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7346 + 164] = this.address
                                mem[_7346 + 196] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7346 + (32 * mem[_7346]) + -mem[64] + 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8274 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8338 = mem[_8274]
                                require mem[_8274] <= test266151307()
                                require _8274 + mem[_8274] + 31 < _8274 + return_data.size
                                _8402 = mem[_8274 + mem[_8274]]
                                if mem[_8274 + mem[_8274]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8274 + ceil32(return_data.size) + floor32(mem[_8274 + mem[_8274]]) + 1 > test266151307() or floor32(mem[_8274 + mem[_8274]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8274 + ceil32(return_data.size) + floor32(mem[_8274 + mem[_8274]]) + 1
                                mem[_8274 + ceil32(return_data.size)] = _8402
                                require _8338 + (32 * _8402) + 32 <= return_data.size
                                idx = _8274 + _8338 + 32
                                s = _8274 + ceil32(return_data.size) + 32
                                while idx < _8274 + _8338 + (32 * _8402) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                            else:
                                _7345 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                if 0 >= mem[_7345]:
                                    revert with 'NH{q', 50
                                mem[_7345 + 32] = WBNBAddress
                                if 1 >= mem[_7345]:
                                    revert with 'NH{q', 50
                                mem[_7345 + 64] = sub_93a39776Address
                                if 2 >= mem[_7345]:
                                    revert with 'NH{q', 50
                                mem[_7345 + 96] = arg1
                                mem[_7345 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7345 + 132] = uint256(stor9.field_0)
                                mem[_7345 + 164] = 128
                                mem[_7345 + 260] = mem[_7345]
                                idx = 0
                                s = _7345 + 32
                                t = _7345 + 292
                                while idx < mem[_7345]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7345 + 196] = this.address
                                mem[_7345 + 228] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7345 + (32 * mem[_7345]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8273 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8337 = mem[_8273]
                                require mem[_8273] <= test266151307()
                                require _8273 + mem[_8273] + 31 < _8273 + return_data.size
                                _8401 = mem[_8273 + mem[_8273]]
                                if mem[_8273 + mem[_8273]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8273 + ceil32(return_data.size) + floor32(mem[_8273 + mem[_8273]]) + 1 > test266151307() or floor32(mem[_8273 + mem[_8273]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8273 + ceil32(return_data.size) + floor32(mem[_8273 + mem[_8273]]) + 1
                                mem[_8273 + ceil32(return_data.size)] = _8401
                                require _8337 + (32 * _8401) + 32 <= return_data.size
                                idx = _8273 + _8337 + 32
                                s = _8273 + ceil32(return_data.size) + 32
                                while idx < _8273 + _8337 + (32 * _8401) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                else:
                    if stor8:
                        revert with 0, 'Locked'
                    if block.timestamp > -10:
                        revert with 'NH{q', 17
                    if sub_93a39776Address == WBNBAddress:
                        _1793 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_1793]:
                            revert with 'NH{q', 50
                        mem[_1793 + 32] = sub_93a39776Address
                        if 1 >= mem[_1793]:
                            revert with 'NH{q', 50
                        mem[_1793 + 64] = arg1
                        mem[_1793 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1793 + 100] = uint256(stor7.field_0)
                        mem[_1793 + 132] = 64
                        mem[_1793 + 164] = mem[_1793]
                        idx = 0
                        s = _1793 + 32
                        t = _1793 + 196
                        while idx < mem[_1793]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(ROUTERAddress)
                        staticcall ROUTERAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1793 + (32 * mem[_1793]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2772 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2788 = mem[_2772]
                        require mem[_2772] <= test266151307()
                        require _2772 + mem[_2772] + 31 < _2772 + return_data.size
                        _2804 = mem[_2772 + mem[_2772]]
                        if mem[_2772 + mem[_2772]] > test266151307():
                            revert with 'NH{q', 65
                        if _2772 + ceil32(return_data.size) + floor32(mem[_2772 + mem[_2772]]) + 1 > test266151307() or floor32(mem[_2772 + mem[_2772]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2772 + ceil32(return_data.size) + floor32(mem[_2772 + mem[_2772]]) + 1
                        mem[_2772 + ceil32(return_data.size)] = _2804
                        require _2788 + (32 * _2804) + 32 <= return_data.size
                        idx = _2772 + _2788 + 32
                        s = _2772 + ceil32(return_data.size) + 32
                        while idx < _2772 + _2788 + (32 * _2804) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if _2804 < 1:
                            revert with 'NH{q', 17
                        if _2804 - 1 >= _2804:
                            revert with 'NH{q', 50
                        _4092 = mem[(32 * _2804 - 1) + _2772 + ceil32(return_data.size) + 32]
                        if sub_93a39776Address == WBNBAddress:
                            _4120 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_4120]:
                                revert with 'NH{q', 50
                            mem[_4120 + 32] = sub_93a39776Address
                            if 1 >= mem[_4120]:
                                revert with 'NH{q', 50
                            mem[_4120 + 64] = arg1
                            mem[_4120 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4120 + 100] = 0
                            mem[_4120 + 132] = 128
                            mem[_4120 + 228] = mem[_4120]
                            idx = 0
                            s = _4120 + 32
                            t = _4120 + 260
                            while idx < mem[_4120]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4120 + 164] = this.address
                            mem[_4120 + 196] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4120 + (32 * mem[_4120]) + -mem[64] + 256]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5576 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5608 = mem[_5576]
                            require mem[_5576] <= test266151307()
                            require _5576 + mem[_5576] + 31 < _5576 + return_data.size
                            _5640 = mem[_5576 + mem[_5576]]
                            if mem[_5576 + mem[_5576]] > test266151307():
                                revert with 'NH{q', 65
                            if _5576 + ceil32(return_data.size) + floor32(mem[_5576 + mem[_5576]]) + 1 > test266151307() or floor32(mem[_5576 + mem[_5576]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5576 + ceil32(return_data.size) + floor32(mem[_5576 + mem[_5576]]) + 1
                            mem[_5576 + ceil32(return_data.size)] = _5640
                            require _5608 + (32 * _5640) + 32 <= return_data.size
                            idx = _5576 + _5608 + 32
                            s = _5576 + ceil32(return_data.size) + 32
                            while idx < _5576 + _5608 + (32 * _5640) + 32:
                                require mem[idx] == mem[idx]
                                mem[s] = mem[idx]
                                idx = idx + 32
                                s = s + 32
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7016 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7048 = mem[_7016]
                            require mem[_7016] == mem[_7016]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4092 and -stor6 + 10000 > -1 / _4092:
                                revert with 'NH{q', 17
                            if (10000 * _4092) - (stor6 * _4092) / 10000 > mem[_7016]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _7048
                            require ext_code.size(arg1)
                            call arg1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _7048
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7208 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7208] == bool(mem[_7208])
                            if not mem[_7208]:
                                revert with 0, 'HP/HT'
                            if block.timestamp > -10:
                                revert with 'NH{q', 17
                            if sub_93a39776Address == WBNBAddress:
                                _7360 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                if 0 >= mem[_7360]:
                                    revert with 'NH{q', 50
                                mem[_7360 + 32] = sub_93a39776Address
                                if 1 >= mem[_7360]:
                                    revert with 'NH{q', 50
                                mem[_7360 + 64] = arg1
                                mem[_7360 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7360 + 100] = uint256(stor9.field_0)
                                mem[_7360 + 132] = 128
                                mem[_7360 + 228] = mem[_7360]
                                idx = 0
                                s = _7360 + 32
                                t = _7360 + 260
                                while idx < mem[_7360]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7360 + 164] = this.address
                                mem[_7360 + 196] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7360 + (32 * mem[_7360]) + -mem[64] + 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8288 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8352 = mem[_8288]
                                require mem[_8288] <= test266151307()
                                require _8288 + mem[_8288] + 31 < _8288 + return_data.size
                                _8416 = mem[_8288 + mem[_8288]]
                                if mem[_8288 + mem[_8288]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8288 + ceil32(return_data.size) + floor32(mem[_8288 + mem[_8288]]) + 1 > test266151307() or floor32(mem[_8288 + mem[_8288]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8288 + ceil32(return_data.size) + floor32(mem[_8288 + mem[_8288]]) + 1
                                mem[_8288 + ceil32(return_data.size)] = _8416
                                require _8352 + (32 * _8416) + 32 <= return_data.size
                                idx = _8288 + _8352 + 32
                                s = _8288 + ceil32(return_data.size) + 32
                                while idx < _8288 + _8352 + (32 * _8416) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                            else:
                                _7359 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                if 0 >= mem[_7359]:
                                    revert with 'NH{q', 50
                                mem[_7359 + 32] = WBNBAddress
                                if 1 >= mem[_7359]:
                                    revert with 'NH{q', 50
                                mem[_7359 + 64] = sub_93a39776Address
                                if 2 >= mem[_7359]:
                                    revert with 'NH{q', 50
                                mem[_7359 + 96] = arg1
                                mem[_7359 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7359 + 132] = uint256(stor9.field_0)
                                mem[_7359 + 164] = 128
                                mem[_7359 + 260] = mem[_7359]
                                idx = 0
                                s = _7359 + 32
                                t = _7359 + 292
                                while idx < mem[_7359]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7359 + 196] = this.address
                                mem[_7359 + 228] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7359 + (32 * mem[_7359]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8287 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8351 = mem[_8287]
                                require mem[_8287] <= test266151307()
                                require _8287 + mem[_8287] + 31 < _8287 + return_data.size
                                _8415 = mem[_8287 + mem[_8287]]
                                if mem[_8287 + mem[_8287]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8287 + ceil32(return_data.size) + floor32(mem[_8287 + mem[_8287]]) + 1 > test266151307() or floor32(mem[_8287 + mem[_8287]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8287 + ceil32(return_data.size) + floor32(mem[_8287 + mem[_8287]]) + 1
                                mem[_8287 + ceil32(return_data.size)] = _8415
                                require _8351 + (32 * _8415) + 32 <= return_data.size
                                idx = _8287 + _8351 + 32
                                s = _8287 + ceil32(return_data.size) + 32
                                while idx < _8287 + _8351 + (32 * _8415) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                        else:
                            _4119 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            if 0 >= mem[_4119]:
                                revert with 'NH{q', 50
                            mem[_4119 + 32] = WBNBAddress
                            if 1 >= mem[_4119]:
                                revert with 'NH{q', 50
                            mem[_4119 + 64] = sub_93a39776Address
                            if 2 >= mem[_4119]:
                                revert with 'NH{q', 50
                            mem[_4119 + 96] = arg1
                            mem[_4119 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4119 + 132] = 0
                            mem[_4119 + 164] = 128
                            mem[_4119 + 260] = mem[_4119]
                            idx = 0
                            s = _4119 + 32
                            t = _4119 + 292
                            while idx < mem[_4119]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4119 + 196] = this.address
                            mem[_4119 + 228] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4119 + (32 * mem[_4119]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5575 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5607 = mem[_5575]
                            require mem[_5575] <= test266151307()
                            require _5575 + mem[_5575] + 31 < _5575 + return_data.size
                            _5639 = mem[_5575 + mem[_5575]]
                            if mem[_5575 + mem[_5575]] > test266151307():
                                revert with 'NH{q', 65
                            if _5575 + ceil32(return_data.size) + floor32(mem[_5575 + mem[_5575]]) + 1 > test266151307() or floor32(mem[_5575 + mem[_5575]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5575 + ceil32(return_data.size) + floor32(mem[_5575 + mem[_5575]]) + 1
                            mem[_5575 + ceil32(return_data.size)] = _5639
                            require _5607 + (32 * _5639) + 32 <= return_data.size
                            idx = _5575 + _5607 + 32
                            s = _5575 + ceil32(return_data.size) + 32
                            while idx < _5575 + _5607 + (32 * _5639) + 32:
                                require mem[idx] == mem[idx]
                                mem[s] = mem[idx]
                                idx = idx + 32
                                s = s + 32
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7015 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7047 = mem[_7015]
                            require mem[_7015] == mem[_7015]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4092 and -stor6 + 10000 > -1 / _4092:
                                revert with 'NH{q', 17
                            if (10000 * _4092) - (stor6 * _4092) / 10000 > mem[_7015]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _7047
                            require ext_code.size(arg1)
                            call arg1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _7047
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7207 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7207] == bool(mem[_7207])
                            if not mem[_7207]:
                                revert with 0, 'HP/HT'
                            if block.timestamp > -10:
                                revert with 'NH{q', 17
                            if sub_93a39776Address == WBNBAddress:
                                _7358 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                if 0 >= mem[_7358]:
                                    revert with 'NH{q', 50
                                mem[_7358 + 32] = sub_93a39776Address
                                if 1 >= mem[_7358]:
                                    revert with 'NH{q', 50
                                mem[_7358 + 64] = arg1
                                mem[_7358 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7358 + 100] = uint256(stor9.field_0)
                                mem[_7358 + 132] = 128
                                mem[_7358 + 228] = mem[_7358]
                                idx = 0
                                s = _7358 + 32
                                t = _7358 + 260
                                while idx < mem[_7358]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7358 + 164] = this.address
                                mem[_7358 + 196] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7358 + (32 * mem[_7358]) + -mem[64] + 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8286 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8350 = mem[_8286]
                                require mem[_8286] <= test266151307()
                                require _8286 + mem[_8286] + 31 < _8286 + return_data.size
                                _8414 = mem[_8286 + mem[_8286]]
                                if mem[_8286 + mem[_8286]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8286 + ceil32(return_data.size) + floor32(mem[_8286 + mem[_8286]]) + 1 > test266151307() or floor32(mem[_8286 + mem[_8286]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8286 + ceil32(return_data.size) + floor32(mem[_8286 + mem[_8286]]) + 1
                                mem[_8286 + ceil32(return_data.size)] = _8414
                                require _8350 + (32 * _8414) + 32 <= return_data.size
                                idx = _8286 + _8350 + 32
                                s = _8286 + ceil32(return_data.size) + 32
                                while idx < _8286 + _8350 + (32 * _8414) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                            else:
                                _7357 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                if 0 >= mem[_7357]:
                                    revert with 'NH{q', 50
                                mem[_7357 + 32] = WBNBAddress
                                if 1 >= mem[_7357]:
                                    revert with 'NH{q', 50
                                mem[_7357 + 64] = sub_93a39776Address
                                if 2 >= mem[_7357]:
                                    revert with 'NH{q', 50
                                mem[_7357 + 96] = arg1
                                mem[_7357 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7357 + 132] = uint256(stor9.field_0)
                                mem[_7357 + 164] = 128
                                mem[_7357 + 260] = mem[_7357]
                                idx = 0
                                s = _7357 + 32
                                t = _7357 + 292
                                while idx < mem[_7357]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7357 + 196] = this.address
                                mem[_7357 + 228] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7357 + (32 * mem[_7357]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8285 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8349 = mem[_8285]
                                require mem[_8285] <= test266151307()
                                require _8285 + mem[_8285] + 31 < _8285 + return_data.size
                                _8413 = mem[_8285 + mem[_8285]]
                                if mem[_8285 + mem[_8285]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8285 + ceil32(return_data.size) + floor32(mem[_8285 + mem[_8285]]) + 1 > test266151307() or floor32(mem[_8285 + mem[_8285]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8285 + ceil32(return_data.size) + floor32(mem[_8285 + mem[_8285]]) + 1
                                mem[_8285 + ceil32(return_data.size)] = _8413
                                require _8349 + (32 * _8413) + 32 <= return_data.size
                                idx = _8285 + _8349 + 32
                                s = _8285 + ceil32(return_data.size) + 32
                                while idx < _8285 + _8349 + (32 * _8413) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                    else:
                        _1792 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if 0 >= mem[_1792]:
                            revert with 'NH{q', 50
                        mem[_1792 + 32] = WBNBAddress
                        if 1 >= mem[_1792]:
                            revert with 'NH{q', 50
                        mem[_1792 + 64] = sub_93a39776Address
                        if 2 >= mem[_1792]:
                            revert with 'NH{q', 50
                        mem[_1792 + 96] = arg1
                        mem[_1792 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1792 + 132] = uint256(stor7.field_0)
                        mem[_1792 + 164] = 64
                        mem[_1792 + 196] = mem[_1792]
                        idx = 0
                        s = _1792 + 32
                        t = _1792 + 228
                        while idx < mem[_1792]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(ROUTERAddress)
                        staticcall ROUTERAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1792 + (32 * mem[_1792]) + -mem[64] + 224]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2771 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2787 = mem[_2771]
                        require mem[_2771] <= test266151307()
                        require _2771 + mem[_2771] + 31 < _2771 + return_data.size
                        _2803 = mem[_2771 + mem[_2771]]
                        if mem[_2771 + mem[_2771]] > test266151307():
                            revert with 'NH{q', 65
                        if _2771 + ceil32(return_data.size) + floor32(mem[_2771 + mem[_2771]]) + 1 > test266151307() or floor32(mem[_2771 + mem[_2771]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2771 + ceil32(return_data.size) + floor32(mem[_2771 + mem[_2771]]) + 1
                        mem[_2771 + ceil32(return_data.size)] = _2803
                        require _2787 + (32 * _2803) + 32 <= return_data.size
                        idx = _2771 + _2787 + 32
                        s = _2771 + ceil32(return_data.size) + 32
                        while idx < _2771 + _2787 + (32 * _2803) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if _2803 < 1:
                            revert with 'NH{q', 17
                        if _2803 - 1 >= _2803:
                            revert with 'NH{q', 50
                        _4091 = mem[(32 * _2803 - 1) + _2771 + ceil32(return_data.size) + 32]
                        if sub_93a39776Address == WBNBAddress:
                            _4118 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_4118]:
                                revert with 'NH{q', 50
                            mem[_4118 + 32] = sub_93a39776Address
                            if 1 >= mem[_4118]:
                                revert with 'NH{q', 50
                            mem[_4118 + 64] = arg1
                            mem[_4118 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4118 + 100] = 0
                            mem[_4118 + 132] = 128
                            mem[_4118 + 228] = mem[_4118]
                            idx = 0
                            s = _4118 + 32
                            t = _4118 + 260
                            while idx < mem[_4118]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4118 + 164] = this.address
                            mem[_4118 + 196] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4118 + (32 * mem[_4118]) + -mem[64] + 256]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5574 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5606 = mem[_5574]
                            require mem[_5574] <= test266151307()
                            require _5574 + mem[_5574] + 31 < _5574 + return_data.size
                            _5638 = mem[_5574 + mem[_5574]]
                            if mem[_5574 + mem[_5574]] > test266151307():
                                revert with 'NH{q', 65
                            if _5574 + ceil32(return_data.size) + floor32(mem[_5574 + mem[_5574]]) + 1 > test266151307() or floor32(mem[_5574 + mem[_5574]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5574 + ceil32(return_data.size) + floor32(mem[_5574 + mem[_5574]]) + 1
                            mem[_5574 + ceil32(return_data.size)] = _5638
                            require _5606 + (32 * _5638) + 32 <= return_data.size
                            idx = _5574 + _5606 + 32
                            s = _5574 + ceil32(return_data.size) + 32
                            while idx < _5574 + _5606 + (32 * _5638) + 32:
                                require mem[idx] == mem[idx]
                                mem[s] = mem[idx]
                                idx = idx + 32
                                s = s + 32
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7014 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7046 = mem[_7014]
                            require mem[_7014] == mem[_7014]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4091 and -stor6 + 10000 > -1 / _4091:
                                revert with 'NH{q', 17
                            if (10000 * _4091) - (stor6 * _4091) / 10000 > mem[_7014]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _7046
                            require ext_code.size(arg1)
                            call arg1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _7046
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7206 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7206] == bool(mem[_7206])
                            if not mem[_7206]:
                                revert with 0, 'HP/HT'
                            if block.timestamp > -10:
                                revert with 'NH{q', 17
                            if sub_93a39776Address == WBNBAddress:
                                _7356 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                if 0 >= mem[_7356]:
                                    revert with 'NH{q', 50
                                mem[_7356 + 32] = sub_93a39776Address
                                if 1 >= mem[_7356]:
                                    revert with 'NH{q', 50
                                mem[_7356 + 64] = arg1
                                mem[_7356 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7356 + 100] = uint256(stor9.field_0)
                                mem[_7356 + 132] = 128
                                mem[_7356 + 228] = mem[_7356]
                                idx = 0
                                s = _7356 + 32
                                t = _7356 + 260
                                while idx < mem[_7356]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7356 + 164] = this.address
                                mem[_7356 + 196] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7356 + (32 * mem[_7356]) + -mem[64] + 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8284 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8348 = mem[_8284]
                                require mem[_8284] <= test266151307()
                                require _8284 + mem[_8284] + 31 < _8284 + return_data.size
                                _8412 = mem[_8284 + mem[_8284]]
                                if mem[_8284 + mem[_8284]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8284 + ceil32(return_data.size) + floor32(mem[_8284 + mem[_8284]]) + 1 > test266151307() or floor32(mem[_8284 + mem[_8284]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8284 + ceil32(return_data.size) + floor32(mem[_8284 + mem[_8284]]) + 1
                                mem[_8284 + ceil32(return_data.size)] = _8412
                                require _8348 + (32 * _8412) + 32 <= return_data.size
                                idx = _8284 + _8348 + 32
                                s = _8284 + ceil32(return_data.size) + 32
                                while idx < _8284 + _8348 + (32 * _8412) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                            else:
                                _7355 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                if 0 >= mem[_7355]:
                                    revert with 'NH{q', 50
                                mem[_7355 + 32] = WBNBAddress
                                if 1 >= mem[_7355]:
                                    revert with 'NH{q', 50
                                mem[_7355 + 64] = sub_93a39776Address
                                if 2 >= mem[_7355]:
                                    revert with 'NH{q', 50
                                mem[_7355 + 96] = arg1
                                mem[_7355 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7355 + 132] = uint256(stor9.field_0)
                                mem[_7355 + 164] = 128
                                mem[_7355 + 260] = mem[_7355]
                                idx = 0
                                s = _7355 + 32
                                t = _7355 + 292
                                while idx < mem[_7355]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7355 + 196] = this.address
                                mem[_7355 + 228] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7355 + (32 * mem[_7355]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8283 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8347 = mem[_8283]
                                require mem[_8283] <= test266151307()
                                require _8283 + mem[_8283] + 31 < _8283 + return_data.size
                                _8411 = mem[_8283 + mem[_8283]]
                                if mem[_8283 + mem[_8283]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8283 + ceil32(return_data.size) + floor32(mem[_8283 + mem[_8283]]) + 1 > test266151307() or floor32(mem[_8283 + mem[_8283]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8283 + ceil32(return_data.size) + floor32(mem[_8283 + mem[_8283]]) + 1
                                mem[_8283 + ceil32(return_data.size)] = _8411
                                require _8347 + (32 * _8411) + 32 <= return_data.size
                                idx = _8283 + _8347 + 32
                                s = _8283 + ceil32(return_data.size) + 32
                                while idx < _8283 + _8347 + (32 * _8411) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                        else:
                            _4117 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            if 0 >= mem[_4117]:
                                revert with 'NH{q', 50
                            mem[_4117 + 32] = WBNBAddress
                            if 1 >= mem[_4117]:
                                revert with 'NH{q', 50
                            mem[_4117 + 64] = sub_93a39776Address
                            if 2 >= mem[_4117]:
                                revert with 'NH{q', 50
                            mem[_4117 + 96] = arg1
                            mem[_4117 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4117 + 132] = 0
                            mem[_4117 + 164] = 128
                            mem[_4117 + 260] = mem[_4117]
                            idx = 0
                            s = _4117 + 32
                            t = _4117 + 292
                            while idx < mem[_4117]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4117 + 196] = this.address
                            mem[_4117 + 228] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4117 + (32 * mem[_4117]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5573 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5605 = mem[_5573]
                            require mem[_5573] <= test266151307()
                            require _5573 + mem[_5573] + 31 < _5573 + return_data.size
                            _5637 = mem[_5573 + mem[_5573]]
                            if mem[_5573 + mem[_5573]] > test266151307():
                                revert with 'NH{q', 65
                            if _5573 + ceil32(return_data.size) + floor32(mem[_5573 + mem[_5573]]) + 1 > test266151307() or floor32(mem[_5573 + mem[_5573]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5573 + ceil32(return_data.size) + floor32(mem[_5573 + mem[_5573]]) + 1
                            mem[_5573 + ceil32(return_data.size)] = _5637
                            require _5605 + (32 * _5637) + 32 <= return_data.size
                            idx = _5573 + _5605 + 32
                            s = _5573 + ceil32(return_data.size) + 32
                            while idx < _5573 + _5605 + (32 * _5637) + 32:
                                require mem[idx] == mem[idx]
                                mem[s] = mem[idx]
                                idx = idx + 32
                                s = s + 32
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7013 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7045 = mem[_7013]
                            require mem[_7013] == mem[_7013]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4091 and -stor6 + 10000 > -1 / _4091:
                                revert with 'NH{q', 17
                            if (10000 * _4091) - (stor6 * _4091) / 10000 > mem[_7013]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _7045
                            require ext_code.size(arg1)
                            call arg1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _7045
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7205 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7205] == bool(mem[_7205])
                            if not mem[_7205]:
                                revert with 0, 'HP/HT'
                            if block.timestamp > -10:
                                revert with 'NH{q', 17
                            if sub_93a39776Address == WBNBAddress:
                                _7354 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                if 0 >= mem[_7354]:
                                    revert with 'NH{q', 50
                                mem[_7354 + 32] = sub_93a39776Address
                                if 1 >= mem[_7354]:
                                    revert with 'NH{q', 50
                                mem[_7354 + 64] = arg1
                                mem[_7354 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7354 + 100] = uint256(stor9.field_0)
                                mem[_7354 + 132] = 128
                                mem[_7354 + 228] = mem[_7354]
                                idx = 0
                                s = _7354 + 32
                                t = _7354 + 260
                                while idx < mem[_7354]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7354 + 164] = this.address
                                mem[_7354 + 196] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7354 + (32 * mem[_7354]) + -mem[64] + 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8282 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8346 = mem[_8282]
                                require mem[_8282] <= test266151307()
                                require _8282 + mem[_8282] + 31 < _8282 + return_data.size
                                _8410 = mem[_8282 + mem[_8282]]
                                if mem[_8282 + mem[_8282]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8282 + ceil32(return_data.size) + floor32(mem[_8282 + mem[_8282]]) + 1 > test266151307() or floor32(mem[_8282 + mem[_8282]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8282 + ceil32(return_data.size) + floor32(mem[_8282 + mem[_8282]]) + 1
                                mem[_8282 + ceil32(return_data.size)] = _8410
                                require _8346 + (32 * _8410) + 32 <= return_data.size
                                idx = _8282 + _8346 + 32
                                s = _8282 + ceil32(return_data.size) + 32
                                while idx < _8282 + _8346 + (32 * _8410) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
                            else:
                                _7353 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                if 0 >= mem[_7353]:
                                    revert with 'NH{q', 50
                                mem[_7353 + 32] = WBNBAddress
                                if 1 >= mem[_7353]:
                                    revert with 'NH{q', 50
                                mem[_7353 + 64] = sub_93a39776Address
                                if 2 >= mem[_7353]:
                                    revert with 'NH{q', 50
                                mem[_7353 + 96] = arg1
                                mem[_7353 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_7353 + 132] = uint256(stor9.field_0)
                                mem[_7353 + 164] = 128
                                mem[_7353 + 260] = mem[_7353]
                                idx = 0
                                s = _7353 + 32
                                t = _7353 + 292
                                while idx < mem[_7353]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7353 + 196] = this.address
                                mem[_7353 + 228] = block.timestamp + 9
                                require ext_code.size(ROUTERAddress)
                                call ROUTERAddress.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7353 + (32 * mem[_7353]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8281 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8345 = mem[_8281]
                                require mem[_8281] <= test266151307()
                                require _8281 + mem[_8281] + 31 < _8281 + return_data.size
                                _8409 = mem[_8281 + mem[_8281]]
                                if mem[_8281 + mem[_8281]] > test266151307():
                                    revert with 'NH{q', 65
                                if _8281 + ceil32(return_data.size) + floor32(mem[_8281 + mem[_8281]]) + 1 > test266151307() or floor32(mem[_8281 + mem[_8281]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _8281 + ceil32(return_data.size) + floor32(mem[_8281 + mem[_8281]]) + 1
                                mem[_8281 + ceil32(return_data.size)] = _8409
                                require _8345 + (32 * _8409) + 32 <= return_data.size
                                idx = _8281 + _8345 + 32
                                s = _8281 + ceil32(return_data.size) + 32
                                while idx < _8281 + _8345 + (32 * _8409) + 32:
                                    require mem[idx] == mem[idx]
                                    mem[s] = mem[idx]
                                    idx = idx + 32
                                    s = s + 32
                                    continue 
}



}
