contract main {




// =====================  Runtime code  =====================


#
#  - swap(address arg1)
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

function sub_74bcecdb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if msg.sender == address(stor5.field_0):
        if eth.balance(this.address) <= 0:
            revert with 0, 'Locked'
        if sub_93a39776Address == WBNBAddress:
            mem[96] = 2
            mem[128] = sub_93a39776Address
            mem[160] = address(arg1)
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
            _774 = mem[192 len 4], Mask(224, 0, stor9.field_32)
            require mem[192 len 4], Mask(224, 0, stor9.field_32) <= test266151307()
            require mem[192 len 4], Mask(224, 0, stor9.field_32) + 223 < return_data.size + 192
            _778 = mem[mem[192 len 4], Mask(224, 0, stor9.field_32) + 192]
            if mem[mem[192 len 4], Mask(224, 0, stor9.field_32) + 192] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 0, stor9.field_32) + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 0, stor9.field_32) + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 0, stor9.field_32) + 192]) + 193
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 0, stor9.field_32) + 192]
            require _774 + (32 * _778) + 32 <= return_data.size
            idx = _774 + 224
            s = ceil32(return_data.size) + 224
            while idx < _774 + (32 * _778) + 224:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            if 0 >= _778:
                revert with 'NH{q', 50
            if mem[ceil32(return_data.size) + 224] > eth.balance(this.address):
                revert with 0, 'Locked'
            if bool(uint8(stor5.field_160)) != 1:
                idx = 0
                while idx < sub_7285fd3a.length:
                    mem[0] = 1
                    if sub_93a39776Address == WBNBAddress:
                        _2656 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_2656]:
                            revert with 'NH{q', 50
                        mem[_2656 + 32] = sub_93a39776Address
                        if 1 >= mem[_2656]:
                            revert with 'NH{q', 50
                        mem[_2656 + 64] = address(arg1)
                        mem[_2656 + 96] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                        mem[_2656 + 100] = 32
                        mem[_2656 + 132] = mem[_2656]
                        s = 0
                        t = _2656 + 32
                        u = _2656 + 164
                        while s < mem[_2656]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(address(sub_7285fd3a[idx]))
                        call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _2656 + (32 * mem[_2656]) + -mem[64] + 160]
                    else:
                        _2655 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if 0 >= mem[_2655]:
                            revert with 'NH{q', 50
                        mem[_2655 + 32] = WBNBAddress
                        if 1 >= mem[_2655]:
                            revert with 'NH{q', 50
                        mem[_2655 + 64] = sub_93a39776Address
                        if 2 >= mem[_2655]:
                            revert with 'NH{q', 50
                        mem[_2655 + 96] = address(arg1)
                        mem[_2655 + 128] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                        mem[_2655 + 132] = 32
                        mem[_2655 + 164] = mem[_2655]
                        s = 0
                        t = _2655 + 32
                        u = _2655 + 196
                        while s < mem[_2655]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(address(sub_7285fd3a[idx]))
                        call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _2655 + (32 * mem[_2655]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
            else:
                if msg.sender == address(stor5.field_0):
                    if block.timestamp > -10:
                        revert with 'NH{q', 17
                    if sub_93a39776Address == WBNBAddress:
                        _1722 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_1722]:
                            revert with 'NH{q', 50
                        mem[_1722 + 32] = sub_93a39776Address
                        if 1 >= mem[_1722]:
                            revert with 'NH{q', 50
                        mem[_1722 + 64] = address(arg1)
                        mem[_1722 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1722 + 100] = uint256(stor7.field_0)
                        mem[_1722 + 132] = 64
                        mem[_1722 + 164] = mem[_1722]
                        idx = 0
                        s = _1722 + 32
                        t = _1722 + 196
                        while idx < mem[_1722]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(ROUTERAddress)
                        staticcall ROUTERAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1722 + (32 * mem[_1722]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2658 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2682 = mem[_2658]
                        require mem[_2658] <= test266151307()
                        require _2658 + mem[_2658] + 31 < _2658 + return_data.size
                        _2714 = mem[_2658 + mem[_2658]]
                        if mem[_2658 + mem[_2658]] > test266151307():
                            revert with 'NH{q', 65
                        if _2658 + ceil32(return_data.size) + floor32(mem[_2658 + mem[_2658]]) + 1 > test266151307() or floor32(mem[_2658 + mem[_2658]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2658 + ceil32(return_data.size) + floor32(mem[_2658 + mem[_2658]]) + 1
                        mem[_2658 + ceil32(return_data.size)] = _2714
                        require _2682 + (32 * _2714) + 32 <= return_data.size
                        idx = _2658 + _2682 + 32
                        s = _2658 + ceil32(return_data.size) + 32
                        while idx < _2658 + _2682 + (32 * _2714) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if _2714 < 1:
                            revert with 'NH{q', 17
                        if _2714 - 1 >= _2714:
                            revert with 'NH{q', 50
                        _4122 = mem[(32 * _2714 - 1) + _2658 + ceil32(return_data.size) + 32]
                        if sub_93a39776Address == WBNBAddress:
                            _4144 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_4144]:
                                revert with 'NH{q', 50
                            mem[_4144 + 32] = sub_93a39776Address
                            if 1 >= mem[_4144]:
                                revert with 'NH{q', 50
                            mem[_4144 + 64] = address(arg1)
                            mem[_4144 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4144 + 100] = 0
                            mem[_4144 + 132] = 128
                            mem[_4144 + 228] = mem[_4144]
                            idx = 0
                            s = _4144 + 32
                            t = _4144 + 260
                            while idx < mem[_4144]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4144 + 164] = this.address
                            mem[_4144 + 196] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4144 + (32 * mem[_4144]) + -mem[64] + 256]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5504 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5536 = mem[_5504]
                            require mem[_5504] <= test266151307()
                            require _5504 + mem[_5504] + 31 < _5504 + return_data.size
                            _5568 = mem[_5504 + mem[_5504]]
                            if mem[_5504 + mem[_5504]] > test266151307():
                                revert with 'NH{q', 65
                            if _5504 + ceil32(return_data.size) + floor32(mem[_5504 + mem[_5504]]) + 1 > test266151307() or floor32(mem[_5504 + mem[_5504]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5504 + ceil32(return_data.size) + floor32(mem[_5504 + mem[_5504]]) + 1
                            mem[_5504 + ceil32(return_data.size)] = _5568
                            require _5536 + (32 * _5568) + 32 <= return_data.size
                            idx = _5504 + _5536 + 32
                            s = _5504 + ceil32(return_data.size) + 32
                            while idx < _5504 + _5536 + (32 * _5568) + 32:
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
                            _6656 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6688 = mem[_6656]
                            require mem[_6656] == mem[_6656]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4122 and -stor6 + 10000 > -1 / _4122:
                                revert with 'NH{q', 17
                            if (10000 * _4122) - (stor6 * _4122) / 10000 > mem[_6656]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _6688
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _6688
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6848 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6848] == bool(mem[_6848])
                            if not mem[_6848]:
                                revert with 0, 'HP/HT'
                            idx = 0
                            while idx < sub_7285fd3a.length:
                                mem[0] = 1
                                if sub_93a39776Address == WBNBAddress:
                                    _7532 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    if 0 >= mem[_7532]:
                                        revert with 'NH{q', 50
                                    mem[_7532 + 32] = sub_93a39776Address
                                    if 1 >= mem[_7532]:
                                        revert with 'NH{q', 50
                                    mem[_7532 + 64] = address(arg1)
                                    mem[_7532 + 96] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7532 + 100] = 32
                                    mem[_7532 + 132] = mem[_7532]
                                    s = 0
                                    t = _7532 + 32
                                    u = _7532 + 164
                                    while s < mem[_7532]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7532 + (32 * mem[_7532]) + -mem[64] + 160]
                                else:
                                    _7531 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    if 0 >= mem[_7531]:
                                        revert with 'NH{q', 50
                                    mem[_7531 + 32] = WBNBAddress
                                    if 1 >= mem[_7531]:
                                        revert with 'NH{q', 50
                                    mem[_7531 + 64] = sub_93a39776Address
                                    if 2 >= mem[_7531]:
                                        revert with 'NH{q', 50
                                    mem[_7531 + 96] = address(arg1)
                                    mem[_7531 + 128] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7531 + 132] = 32
                                    mem[_7531 + 164] = mem[_7531]
                                    s = 0
                                    t = _7531 + 32
                                    u = _7531 + 196
                                    while s < mem[_7531]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7531 + (32 * mem[_7531]) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                        else:
                            _4143 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            if 0 >= mem[_4143]:
                                revert with 'NH{q', 50
                            mem[_4143 + 32] = WBNBAddress
                            if 1 >= mem[_4143]:
                                revert with 'NH{q', 50
                            mem[_4143 + 64] = sub_93a39776Address
                            if 2 >= mem[_4143]:
                                revert with 'NH{q', 50
                            mem[_4143 + 96] = address(arg1)
                            mem[_4143 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4143 + 132] = 0
                            mem[_4143 + 164] = 128
                            mem[_4143 + 260] = mem[_4143]
                            idx = 0
                            s = _4143 + 32
                            t = _4143 + 292
                            while idx < mem[_4143]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4143 + 196] = this.address
                            mem[_4143 + 228] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4143 + (32 * mem[_4143]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5503 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5535 = mem[_5503]
                            require mem[_5503] <= test266151307()
                            require _5503 + mem[_5503] + 31 < _5503 + return_data.size
                            _5567 = mem[_5503 + mem[_5503]]
                            if mem[_5503 + mem[_5503]] > test266151307():
                                revert with 'NH{q', 65
                            if _5503 + ceil32(return_data.size) + floor32(mem[_5503 + mem[_5503]]) + 1 > test266151307() or floor32(mem[_5503 + mem[_5503]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5503 + ceil32(return_data.size) + floor32(mem[_5503 + mem[_5503]]) + 1
                            mem[_5503 + ceil32(return_data.size)] = _5567
                            require _5535 + (32 * _5567) + 32 <= return_data.size
                            idx = _5503 + _5535 + 32
                            s = _5503 + ceil32(return_data.size) + 32
                            while idx < _5503 + _5535 + (32 * _5567) + 32:
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
                            _6655 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6687 = mem[_6655]
                            require mem[_6655] == mem[_6655]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4122 and -stor6 + 10000 > -1 / _4122:
                                revert with 'NH{q', 17
                            if (10000 * _4122) - (stor6 * _4122) / 10000 > mem[_6655]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _6687
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _6687
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6847 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6847] == bool(mem[_6847])
                            if not mem[_6847]:
                                revert with 0, 'HP/HT'
                            idx = 0
                            while idx < sub_7285fd3a.length:
                                mem[0] = 1
                                if sub_93a39776Address == WBNBAddress:
                                    _7530 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    if 0 >= mem[_7530]:
                                        revert with 'NH{q', 50
                                    mem[_7530 + 32] = sub_93a39776Address
                                    if 1 >= mem[_7530]:
                                        revert with 'NH{q', 50
                                    mem[_7530 + 64] = address(arg1)
                                    mem[_7530 + 96] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7530 + 100] = 32
                                    mem[_7530 + 132] = mem[_7530]
                                    s = 0
                                    t = _7530 + 32
                                    u = _7530 + 164
                                    while s < mem[_7530]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7530 + (32 * mem[_7530]) + -mem[64] + 160]
                                else:
                                    _7529 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    if 0 >= mem[_7529]:
                                        revert with 'NH{q', 50
                                    mem[_7529 + 32] = WBNBAddress
                                    if 1 >= mem[_7529]:
                                        revert with 'NH{q', 50
                                    mem[_7529 + 64] = sub_93a39776Address
                                    if 2 >= mem[_7529]:
                                        revert with 'NH{q', 50
                                    mem[_7529 + 96] = address(arg1)
                                    mem[_7529 + 128] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7529 + 132] = 32
                                    mem[_7529 + 164] = mem[_7529]
                                    s = 0
                                    t = _7529 + 32
                                    u = _7529 + 196
                                    while s < mem[_7529]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7529 + (32 * mem[_7529]) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                    else:
                        _1721 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if 0 >= mem[_1721]:
                            revert with 'NH{q', 50
                        mem[_1721 + 32] = WBNBAddress
                        if 1 >= mem[_1721]:
                            revert with 'NH{q', 50
                        mem[_1721 + 64] = sub_93a39776Address
                        if 2 >= mem[_1721]:
                            revert with 'NH{q', 50
                        mem[_1721 + 96] = address(arg1)
                        mem[_1721 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1721 + 132] = uint256(stor7.field_0)
                        mem[_1721 + 164] = 64
                        mem[_1721 + 196] = mem[_1721]
                        idx = 0
                        s = _1721 + 32
                        t = _1721 + 228
                        while idx < mem[_1721]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(ROUTERAddress)
                        staticcall ROUTERAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1721 + (32 * mem[_1721]) + -mem[64] + 224]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2657 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2681 = mem[_2657]
                        require mem[_2657] <= test266151307()
                        require _2657 + mem[_2657] + 31 < _2657 + return_data.size
                        _2713 = mem[_2657 + mem[_2657]]
                        if mem[_2657 + mem[_2657]] > test266151307():
                            revert with 'NH{q', 65
                        if _2657 + ceil32(return_data.size) + floor32(mem[_2657 + mem[_2657]]) + 1 > test266151307() or floor32(mem[_2657 + mem[_2657]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2657 + ceil32(return_data.size) + floor32(mem[_2657 + mem[_2657]]) + 1
                        mem[_2657 + ceil32(return_data.size)] = _2713
                        require _2681 + (32 * _2713) + 32 <= return_data.size
                        idx = _2657 + _2681 + 32
                        s = _2657 + ceil32(return_data.size) + 32
                        while idx < _2657 + _2681 + (32 * _2713) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if _2713 < 1:
                            revert with 'NH{q', 17
                        if _2713 - 1 >= _2713:
                            revert with 'NH{q', 50
                        _4121 = mem[(32 * _2713 - 1) + _2657 + ceil32(return_data.size) + 32]
                        if sub_93a39776Address == WBNBAddress:
                            _4142 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_4142]:
                                revert with 'NH{q', 50
                            mem[_4142 + 32] = sub_93a39776Address
                            if 1 >= mem[_4142]:
                                revert with 'NH{q', 50
                            mem[_4142 + 64] = address(arg1)
                            mem[_4142 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4142 + 100] = 0
                            mem[_4142 + 132] = 128
                            mem[_4142 + 228] = mem[_4142]
                            idx = 0
                            s = _4142 + 32
                            t = _4142 + 260
                            while idx < mem[_4142]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4142 + 164] = this.address
                            mem[_4142 + 196] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4142 + (32 * mem[_4142]) + -mem[64] + 256]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5502 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5534 = mem[_5502]
                            require mem[_5502] <= test266151307()
                            require _5502 + mem[_5502] + 31 < _5502 + return_data.size
                            _5566 = mem[_5502 + mem[_5502]]
                            if mem[_5502 + mem[_5502]] > test266151307():
                                revert with 'NH{q', 65
                            if _5502 + ceil32(return_data.size) + floor32(mem[_5502 + mem[_5502]]) + 1 > test266151307() or floor32(mem[_5502 + mem[_5502]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5502 + ceil32(return_data.size) + floor32(mem[_5502 + mem[_5502]]) + 1
                            mem[_5502 + ceil32(return_data.size)] = _5566
                            require _5534 + (32 * _5566) + 32 <= return_data.size
                            idx = _5502 + _5534 + 32
                            s = _5502 + ceil32(return_data.size) + 32
                            while idx < _5502 + _5534 + (32 * _5566) + 32:
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
                            _6654 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6686 = mem[_6654]
                            require mem[_6654] == mem[_6654]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4121 and -stor6 + 10000 > -1 / _4121:
                                revert with 'NH{q', 17
                            if (10000 * _4121) - (stor6 * _4121) / 10000 > mem[_6654]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _6686
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _6686
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6846 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6846] == bool(mem[_6846])
                            if not mem[_6846]:
                                revert with 0, 'HP/HT'
                            idx = 0
                            while idx < sub_7285fd3a.length:
                                mem[0] = 1
                                if sub_93a39776Address == WBNBAddress:
                                    _7528 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    if 0 >= mem[_7528]:
                                        revert with 'NH{q', 50
                                    mem[_7528 + 32] = sub_93a39776Address
                                    if 1 >= mem[_7528]:
                                        revert with 'NH{q', 50
                                    mem[_7528 + 64] = address(arg1)
                                    mem[_7528 + 96] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7528 + 100] = 32
                                    mem[_7528 + 132] = mem[_7528]
                                    s = 0
                                    t = _7528 + 32
                                    u = _7528 + 164
                                    while s < mem[_7528]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7528 + (32 * mem[_7528]) + -mem[64] + 160]
                                else:
                                    _7527 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    if 0 >= mem[_7527]:
                                        revert with 'NH{q', 50
                                    mem[_7527 + 32] = WBNBAddress
                                    if 1 >= mem[_7527]:
                                        revert with 'NH{q', 50
                                    mem[_7527 + 64] = sub_93a39776Address
                                    if 2 >= mem[_7527]:
                                        revert with 'NH{q', 50
                                    mem[_7527 + 96] = address(arg1)
                                    mem[_7527 + 128] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7527 + 132] = 32
                                    mem[_7527 + 164] = mem[_7527]
                                    s = 0
                                    t = _7527 + 32
                                    u = _7527 + 196
                                    while s < mem[_7527]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7527 + (32 * mem[_7527]) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                        else:
                            _4141 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            if 0 >= mem[_4141]:
                                revert with 'NH{q', 50
                            mem[_4141 + 32] = WBNBAddress
                            if 1 >= mem[_4141]:
                                revert with 'NH{q', 50
                            mem[_4141 + 64] = sub_93a39776Address
                            if 2 >= mem[_4141]:
                                revert with 'NH{q', 50
                            mem[_4141 + 96] = address(arg1)
                            mem[_4141 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4141 + 132] = 0
                            mem[_4141 + 164] = 128
                            mem[_4141 + 260] = mem[_4141]
                            idx = 0
                            s = _4141 + 32
                            t = _4141 + 292
                            while idx < mem[_4141]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4141 + 196] = this.address
                            mem[_4141 + 228] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4141 + (32 * mem[_4141]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5501 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5533 = mem[_5501]
                            require mem[_5501] <= test266151307()
                            require _5501 + mem[_5501] + 31 < _5501 + return_data.size
                            _5565 = mem[_5501 + mem[_5501]]
                            if mem[_5501 + mem[_5501]] > test266151307():
                                revert with 'NH{q', 65
                            if _5501 + ceil32(return_data.size) + floor32(mem[_5501 + mem[_5501]]) + 1 > test266151307() or floor32(mem[_5501 + mem[_5501]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5501 + ceil32(return_data.size) + floor32(mem[_5501 + mem[_5501]]) + 1
                            mem[_5501 + ceil32(return_data.size)] = _5565
                            require _5533 + (32 * _5565) + 32 <= return_data.size
                            idx = _5501 + _5533 + 32
                            s = _5501 + ceil32(return_data.size) + 32
                            while idx < _5501 + _5533 + (32 * _5565) + 32:
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
                            _6653 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6685 = mem[_6653]
                            require mem[_6653] == mem[_6653]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4121 and -stor6 + 10000 > -1 / _4121:
                                revert with 'NH{q', 17
                            if (10000 * _4121) - (stor6 * _4121) / 10000 > mem[_6653]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _6685
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _6685
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6845 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6845] == bool(mem[_6845])
                            if not mem[_6845]:
                                revert with 0, 'HP/HT'
                            idx = 0
                            while idx < sub_7285fd3a.length:
                                mem[0] = 1
                                if sub_93a39776Address == WBNBAddress:
                                    _7526 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    if 0 >= mem[_7526]:
                                        revert with 'NH{q', 50
                                    mem[_7526 + 32] = sub_93a39776Address
                                    if 1 >= mem[_7526]:
                                        revert with 'NH{q', 50
                                    mem[_7526 + 64] = address(arg1)
                                    mem[_7526 + 96] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7526 + 100] = 32
                                    mem[_7526 + 132] = mem[_7526]
                                    s = 0
                                    t = _7526 + 32
                                    u = _7526 + 164
                                    while s < mem[_7526]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7526 + (32 * mem[_7526]) + -mem[64] + 160]
                                else:
                                    _7525 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    if 0 >= mem[_7525]:
                                        revert with 'NH{q', 50
                                    mem[_7525 + 32] = WBNBAddress
                                    if 1 >= mem[_7525]:
                                        revert with 'NH{q', 50
                                    mem[_7525 + 64] = sub_93a39776Address
                                    if 2 >= mem[_7525]:
                                        revert with 'NH{q', 50
                                    mem[_7525 + 96] = address(arg1)
                                    mem[_7525 + 128] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7525 + 132] = 32
                                    mem[_7525 + 164] = mem[_7525]
                                    s = 0
                                    t = _7525 + 32
                                    u = _7525 + 196
                                    while s < mem[_7525]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7525 + (32 * mem[_7525]) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                else:
                    if stor8:
                        revert with 0, 'Locked'
                    if block.timestamp > -10:
                        revert with 'NH{q', 17
                    if sub_93a39776Address == WBNBAddress:
                        _1732 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_1732]:
                            revert with 'NH{q', 50
                        mem[_1732 + 32] = sub_93a39776Address
                        if 1 >= mem[_1732]:
                            revert with 'NH{q', 50
                        mem[_1732 + 64] = address(arg1)
                        mem[_1732 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1732 + 100] = uint256(stor7.field_0)
                        mem[_1732 + 132] = 64
                        mem[_1732 + 164] = mem[_1732]
                        idx = 0
                        s = _1732 + 32
                        t = _1732 + 196
                        while idx < mem[_1732]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(ROUTERAddress)
                        staticcall ROUTERAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1732 + (32 * mem[_1732]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2660 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2684 = mem[_2660]
                        require mem[_2660] <= test266151307()
                        require _2660 + mem[_2660] + 31 < _2660 + return_data.size
                        _2716 = mem[_2660 + mem[_2660]]
                        if mem[_2660 + mem[_2660]] > test266151307():
                            revert with 'NH{q', 65
                        if _2660 + ceil32(return_data.size) + floor32(mem[_2660 + mem[_2660]]) + 1 > test266151307() or floor32(mem[_2660 + mem[_2660]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2660 + ceil32(return_data.size) + floor32(mem[_2660 + mem[_2660]]) + 1
                        mem[_2660 + ceil32(return_data.size)] = _2716
                        require _2684 + (32 * _2716) + 32 <= return_data.size
                        idx = _2660 + _2684 + 32
                        s = _2660 + ceil32(return_data.size) + 32
                        while idx < _2660 + _2684 + (32 * _2716) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if _2716 < 1:
                            revert with 'NH{q', 17
                        if _2716 - 1 >= _2716:
                            revert with 'NH{q', 50
                        _4124 = mem[(32 * _2716 - 1) + _2660 + ceil32(return_data.size) + 32]
                        if sub_93a39776Address == WBNBAddress:
                            _4148 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_4148]:
                                revert with 'NH{q', 50
                            mem[_4148 + 32] = sub_93a39776Address
                            if 1 >= mem[_4148]:
                                revert with 'NH{q', 50
                            mem[_4148 + 64] = address(arg1)
                            mem[_4148 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4148 + 100] = 0
                            mem[_4148 + 132] = 128
                            mem[_4148 + 228] = mem[_4148]
                            idx = 0
                            s = _4148 + 32
                            t = _4148 + 260
                            while idx < mem[_4148]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4148 + 164] = this.address
                            mem[_4148 + 196] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4148 + (32 * mem[_4148]) + -mem[64] + 256]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5508 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5540 = mem[_5508]
                            require mem[_5508] <= test266151307()
                            require _5508 + mem[_5508] + 31 < _5508 + return_data.size
                            _5572 = mem[_5508 + mem[_5508]]
                            if mem[_5508 + mem[_5508]] > test266151307():
                                revert with 'NH{q', 65
                            if _5508 + ceil32(return_data.size) + floor32(mem[_5508 + mem[_5508]]) + 1 > test266151307() or floor32(mem[_5508 + mem[_5508]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5508 + ceil32(return_data.size) + floor32(mem[_5508 + mem[_5508]]) + 1
                            mem[_5508 + ceil32(return_data.size)] = _5572
                            require _5540 + (32 * _5572) + 32 <= return_data.size
                            idx = _5508 + _5540 + 32
                            s = _5508 + ceil32(return_data.size) + 32
                            while idx < _5508 + _5540 + (32 * _5572) + 32:
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
                            _6660 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6692 = mem[_6660]
                            require mem[_6660] == mem[_6660]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4124 and -stor6 + 10000 > -1 / _4124:
                                revert with 'NH{q', 17
                            if (10000 * _4124) - (stor6 * _4124) / 10000 > mem[_6660]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _6692
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _6692
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6852 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6852] == bool(mem[_6852])
                            if not mem[_6852]:
                                revert with 0, 'HP/HT'
                            idx = 0
                            while idx < sub_7285fd3a.length:
                                mem[0] = 1
                                if sub_93a39776Address == WBNBAddress:
                                    _7540 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    if 0 >= mem[_7540]:
                                        revert with 'NH{q', 50
                                    mem[_7540 + 32] = sub_93a39776Address
                                    if 1 >= mem[_7540]:
                                        revert with 'NH{q', 50
                                    mem[_7540 + 64] = address(arg1)
                                    mem[_7540 + 96] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7540 + 100] = 32
                                    mem[_7540 + 132] = mem[_7540]
                                    s = 0
                                    t = _7540 + 32
                                    u = _7540 + 164
                                    while s < mem[_7540]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7540 + (32 * mem[_7540]) + -mem[64] + 160]
                                else:
                                    _7539 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    if 0 >= mem[_7539]:
                                        revert with 'NH{q', 50
                                    mem[_7539 + 32] = WBNBAddress
                                    if 1 >= mem[_7539]:
                                        revert with 'NH{q', 50
                                    mem[_7539 + 64] = sub_93a39776Address
                                    if 2 >= mem[_7539]:
                                        revert with 'NH{q', 50
                                    mem[_7539 + 96] = address(arg1)
                                    mem[_7539 + 128] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7539 + 132] = 32
                                    mem[_7539 + 164] = mem[_7539]
                                    s = 0
                                    t = _7539 + 32
                                    u = _7539 + 196
                                    while s < mem[_7539]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7539 + (32 * mem[_7539]) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                        else:
                            _4147 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            if 0 >= mem[_4147]:
                                revert with 'NH{q', 50
                            mem[_4147 + 32] = WBNBAddress
                            if 1 >= mem[_4147]:
                                revert with 'NH{q', 50
                            mem[_4147 + 64] = sub_93a39776Address
                            if 2 >= mem[_4147]:
                                revert with 'NH{q', 50
                            mem[_4147 + 96] = address(arg1)
                            mem[_4147 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4147 + 132] = 0
                            mem[_4147 + 164] = 128
                            mem[_4147 + 260] = mem[_4147]
                            idx = 0
                            s = _4147 + 32
                            t = _4147 + 292
                            while idx < mem[_4147]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4147 + 196] = this.address
                            mem[_4147 + 228] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4147 + (32 * mem[_4147]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5507 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5539 = mem[_5507]
                            require mem[_5507] <= test266151307()
                            require _5507 + mem[_5507] + 31 < _5507 + return_data.size
                            _5571 = mem[_5507 + mem[_5507]]
                            if mem[_5507 + mem[_5507]] > test266151307():
                                revert with 'NH{q', 65
                            if _5507 + ceil32(return_data.size) + floor32(mem[_5507 + mem[_5507]]) + 1 > test266151307() or floor32(mem[_5507 + mem[_5507]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5507 + ceil32(return_data.size) + floor32(mem[_5507 + mem[_5507]]) + 1
                            mem[_5507 + ceil32(return_data.size)] = _5571
                            require _5539 + (32 * _5571) + 32 <= return_data.size
                            idx = _5507 + _5539 + 32
                            s = _5507 + ceil32(return_data.size) + 32
                            while idx < _5507 + _5539 + (32 * _5571) + 32:
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
                            _6659 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6691 = mem[_6659]
                            require mem[_6659] == mem[_6659]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4124 and -stor6 + 10000 > -1 / _4124:
                                revert with 'NH{q', 17
                            if (10000 * _4124) - (stor6 * _4124) / 10000 > mem[_6659]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _6691
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _6691
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6851 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6851] == bool(mem[_6851])
                            if not mem[_6851]:
                                revert with 0, 'HP/HT'
                            idx = 0
                            while idx < sub_7285fd3a.length:
                                mem[0] = 1
                                if sub_93a39776Address == WBNBAddress:
                                    _7538 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    if 0 >= mem[_7538]:
                                        revert with 'NH{q', 50
                                    mem[_7538 + 32] = sub_93a39776Address
                                    if 1 >= mem[_7538]:
                                        revert with 'NH{q', 50
                                    mem[_7538 + 64] = address(arg1)
                                    mem[_7538 + 96] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7538 + 100] = 32
                                    mem[_7538 + 132] = mem[_7538]
                                    s = 0
                                    t = _7538 + 32
                                    u = _7538 + 164
                                    while s < mem[_7538]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7538 + (32 * mem[_7538]) + -mem[64] + 160]
                                else:
                                    _7537 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    if 0 >= mem[_7537]:
                                        revert with 'NH{q', 50
                                    mem[_7537 + 32] = WBNBAddress
                                    if 1 >= mem[_7537]:
                                        revert with 'NH{q', 50
                                    mem[_7537 + 64] = sub_93a39776Address
                                    if 2 >= mem[_7537]:
                                        revert with 'NH{q', 50
                                    mem[_7537 + 96] = address(arg1)
                                    mem[_7537 + 128] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7537 + 132] = 32
                                    mem[_7537 + 164] = mem[_7537]
                                    s = 0
                                    t = _7537 + 32
                                    u = _7537 + 196
                                    while s < mem[_7537]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7537 + (32 * mem[_7537]) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                    else:
                        _1731 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if 0 >= mem[_1731]:
                            revert with 'NH{q', 50
                        mem[_1731 + 32] = WBNBAddress
                        if 1 >= mem[_1731]:
                            revert with 'NH{q', 50
                        mem[_1731 + 64] = sub_93a39776Address
                        if 2 >= mem[_1731]:
                            revert with 'NH{q', 50
                        mem[_1731 + 96] = address(arg1)
                        mem[_1731 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1731 + 132] = uint256(stor7.field_0)
                        mem[_1731 + 164] = 64
                        mem[_1731 + 196] = mem[_1731]
                        idx = 0
                        s = _1731 + 32
                        t = _1731 + 228
                        while idx < mem[_1731]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(ROUTERAddress)
                        staticcall ROUTERAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1731 + (32 * mem[_1731]) + -mem[64] + 224]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2659 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2683 = mem[_2659]
                        require mem[_2659] <= test266151307()
                        require _2659 + mem[_2659] + 31 < _2659 + return_data.size
                        _2715 = mem[_2659 + mem[_2659]]
                        if mem[_2659 + mem[_2659]] > test266151307():
                            revert with 'NH{q', 65
                        if _2659 + ceil32(return_data.size) + floor32(mem[_2659 + mem[_2659]]) + 1 > test266151307() or floor32(mem[_2659 + mem[_2659]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2659 + ceil32(return_data.size) + floor32(mem[_2659 + mem[_2659]]) + 1
                        mem[_2659 + ceil32(return_data.size)] = _2715
                        require _2683 + (32 * _2715) + 32 <= return_data.size
                        idx = _2659 + _2683 + 32
                        s = _2659 + ceil32(return_data.size) + 32
                        while idx < _2659 + _2683 + (32 * _2715) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if _2715 < 1:
                            revert with 'NH{q', 17
                        if _2715 - 1 >= _2715:
                            revert with 'NH{q', 50
                        _4123 = mem[(32 * _2715 - 1) + _2659 + ceil32(return_data.size) + 32]
                        if sub_93a39776Address == WBNBAddress:
                            _4146 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_4146]:
                                revert with 'NH{q', 50
                            mem[_4146 + 32] = sub_93a39776Address
                            if 1 >= mem[_4146]:
                                revert with 'NH{q', 50
                            mem[_4146 + 64] = address(arg1)
                            mem[_4146 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4146 + 100] = 0
                            mem[_4146 + 132] = 128
                            mem[_4146 + 228] = mem[_4146]
                            idx = 0
                            s = _4146 + 32
                            t = _4146 + 260
                            while idx < mem[_4146]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4146 + 164] = this.address
                            mem[_4146 + 196] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4146 + (32 * mem[_4146]) + -mem[64] + 256]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5506 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5538 = mem[_5506]
                            require mem[_5506] <= test266151307()
                            require _5506 + mem[_5506] + 31 < _5506 + return_data.size
                            _5570 = mem[_5506 + mem[_5506]]
                            if mem[_5506 + mem[_5506]] > test266151307():
                                revert with 'NH{q', 65
                            if _5506 + ceil32(return_data.size) + floor32(mem[_5506 + mem[_5506]]) + 1 > test266151307() or floor32(mem[_5506 + mem[_5506]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5506 + ceil32(return_data.size) + floor32(mem[_5506 + mem[_5506]]) + 1
                            mem[_5506 + ceil32(return_data.size)] = _5570
                            require _5538 + (32 * _5570) + 32 <= return_data.size
                            idx = _5506 + _5538 + 32
                            s = _5506 + ceil32(return_data.size) + 32
                            while idx < _5506 + _5538 + (32 * _5570) + 32:
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
                            _6658 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6690 = mem[_6658]
                            require mem[_6658] == mem[_6658]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4123 and -stor6 + 10000 > -1 / _4123:
                                revert with 'NH{q', 17
                            if (10000 * _4123) - (stor6 * _4123) / 10000 > mem[_6658]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _6690
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _6690
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6850 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6850] == bool(mem[_6850])
                            if not mem[_6850]:
                                revert with 0, 'HP/HT'
                            idx = 0
                            while idx < sub_7285fd3a.length:
                                mem[0] = 1
                                if sub_93a39776Address == WBNBAddress:
                                    _7536 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    if 0 >= mem[_7536]:
                                        revert with 'NH{q', 50
                                    mem[_7536 + 32] = sub_93a39776Address
                                    if 1 >= mem[_7536]:
                                        revert with 'NH{q', 50
                                    mem[_7536 + 64] = address(arg1)
                                    mem[_7536 + 96] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7536 + 100] = 32
                                    mem[_7536 + 132] = mem[_7536]
                                    s = 0
                                    t = _7536 + 32
                                    u = _7536 + 164
                                    while s < mem[_7536]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7536 + (32 * mem[_7536]) + -mem[64] + 160]
                                else:
                                    _7535 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    if 0 >= mem[_7535]:
                                        revert with 'NH{q', 50
                                    mem[_7535 + 32] = WBNBAddress
                                    if 1 >= mem[_7535]:
                                        revert with 'NH{q', 50
                                    mem[_7535 + 64] = sub_93a39776Address
                                    if 2 >= mem[_7535]:
                                        revert with 'NH{q', 50
                                    mem[_7535 + 96] = address(arg1)
                                    mem[_7535 + 128] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7535 + 132] = 32
                                    mem[_7535 + 164] = mem[_7535]
                                    s = 0
                                    t = _7535 + 32
                                    u = _7535 + 196
                                    while s < mem[_7535]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7535 + (32 * mem[_7535]) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                        else:
                            _4145 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            if 0 >= mem[_4145]:
                                revert with 'NH{q', 50
                            mem[_4145 + 32] = WBNBAddress
                            if 1 >= mem[_4145]:
                                revert with 'NH{q', 50
                            mem[_4145 + 64] = sub_93a39776Address
                            if 2 >= mem[_4145]:
                                revert with 'NH{q', 50
                            mem[_4145 + 96] = address(arg1)
                            mem[_4145 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4145 + 132] = 0
                            mem[_4145 + 164] = 128
                            mem[_4145 + 260] = mem[_4145]
                            idx = 0
                            s = _4145 + 32
                            t = _4145 + 292
                            while idx < mem[_4145]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4145 + 196] = this.address
                            mem[_4145 + 228] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4145 + (32 * mem[_4145]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5505 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5537 = mem[_5505]
                            require mem[_5505] <= test266151307()
                            require _5505 + mem[_5505] + 31 < _5505 + return_data.size
                            _5569 = mem[_5505 + mem[_5505]]
                            if mem[_5505 + mem[_5505]] > test266151307():
                                revert with 'NH{q', 65
                            if _5505 + ceil32(return_data.size) + floor32(mem[_5505 + mem[_5505]]) + 1 > test266151307() or floor32(mem[_5505 + mem[_5505]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5505 + ceil32(return_data.size) + floor32(mem[_5505 + mem[_5505]]) + 1
                            mem[_5505 + ceil32(return_data.size)] = _5569
                            require _5537 + (32 * _5569) + 32 <= return_data.size
                            idx = _5505 + _5537 + 32
                            s = _5505 + ceil32(return_data.size) + 32
                            while idx < _5505 + _5537 + (32 * _5569) + 32:
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
                            _6657 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6689 = mem[_6657]
                            require mem[_6657] == mem[_6657]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4123 and -stor6 + 10000 > -1 / _4123:
                                revert with 'NH{q', 17
                            if (10000 * _4123) - (stor6 * _4123) / 10000 > mem[_6657]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _6689
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _6689
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6849 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6849] == bool(mem[_6849])
                            if not mem[_6849]:
                                revert with 0, 'HP/HT'
                            idx = 0
                            while idx < sub_7285fd3a.length:
                                mem[0] = 1
                                if sub_93a39776Address == WBNBAddress:
                                    _7534 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    if 0 >= mem[_7534]:
                                        revert with 'NH{q', 50
                                    mem[_7534 + 32] = sub_93a39776Address
                                    if 1 >= mem[_7534]:
                                        revert with 'NH{q', 50
                                    mem[_7534 + 64] = address(arg1)
                                    mem[_7534 + 96] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7534 + 100] = 32
                                    mem[_7534 + 132] = mem[_7534]
                                    s = 0
                                    t = _7534 + 32
                                    u = _7534 + 164
                                    while s < mem[_7534]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7534 + (32 * mem[_7534]) + -mem[64] + 160]
                                else:
                                    _7533 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    if 0 >= mem[_7533]:
                                        revert with 'NH{q', 50
                                    mem[_7533 + 32] = WBNBAddress
                                    if 1 >= mem[_7533]:
                                        revert with 'NH{q', 50
                                    mem[_7533 + 64] = sub_93a39776Address
                                    if 2 >= mem[_7533]:
                                        revert with 'NH{q', 50
                                    mem[_7533 + 96] = address(arg1)
                                    mem[_7533 + 128] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7533 + 132] = 32
                                    mem[_7533 + 164] = mem[_7533]
                                    s = 0
                                    t = _7533 + 32
                                    u = _7533 + 196
                                    while s < mem[_7533]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7533 + (32 * mem[_7533]) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
        else:
            mem[96] = 3
            mem[128] = WBNBAddress
            mem[160] = sub_93a39776Address
            mem[192] = address(arg1)
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
            _773 = mem[224 len 4], Mask(224, 0, stor9.field_32)
            require mem[224 len 4], Mask(224, 0, stor9.field_32) <= test266151307()
            require mem[224 len 4], Mask(224, 0, stor9.field_32) + 255 < return_data.size + 224
            _777 = mem[mem[224 len 4], Mask(224, 0, stor9.field_32) + 224]
            if mem[mem[224 len 4], Mask(224, 0, stor9.field_32) + 224] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[224 len 4], Mask(224, 0, stor9.field_32) + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], Mask(224, 0, stor9.field_32) + 224]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], Mask(224, 0, stor9.field_32) + 224]) + 225
            mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 0, stor9.field_32) + 224]
            require _773 + (32 * _777) + 32 <= return_data.size
            idx = _773 + 256
            s = ceil32(return_data.size) + 256
            while idx < _773 + (32 * _777) + 256:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            if 0 >= _777:
                revert with 'NH{q', 50
            if mem[ceil32(return_data.size) + 256] > eth.balance(this.address):
                revert with 0, 'Locked'
            if bool(uint8(stor5.field_160)) != 1:
                idx = 0
                while idx < sub_7285fd3a.length:
                    mem[0] = 1
                    if sub_93a39776Address == WBNBAddress:
                        _2650 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_2650]:
                            revert with 'NH{q', 50
                        mem[_2650 + 32] = sub_93a39776Address
                        if 1 >= mem[_2650]:
                            revert with 'NH{q', 50
                        mem[_2650 + 64] = address(arg1)
                        mem[_2650 + 96] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                        mem[_2650 + 100] = 32
                        mem[_2650 + 132] = mem[_2650]
                        s = 0
                        t = _2650 + 32
                        u = _2650 + 164
                        while s < mem[_2650]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(address(sub_7285fd3a[idx]))
                        call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _2650 + (32 * mem[_2650]) + -mem[64] + 160]
                    else:
                        _2649 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if 0 >= mem[_2649]:
                            revert with 'NH{q', 50
                        mem[_2649 + 32] = WBNBAddress
                        if 1 >= mem[_2649]:
                            revert with 'NH{q', 50
                        mem[_2649 + 64] = sub_93a39776Address
                        if 2 >= mem[_2649]:
                            revert with 'NH{q', 50
                        mem[_2649 + 96] = address(arg1)
                        mem[_2649 + 128] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                        mem[_2649 + 132] = 32
                        mem[_2649 + 164] = mem[_2649]
                        s = 0
                        t = _2649 + 32
                        u = _2649 + 196
                        while s < mem[_2649]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(address(sub_7285fd3a[idx]))
                        call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _2649 + (32 * mem[_2649]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
            else:
                if msg.sender == address(stor5.field_0):
                    if block.timestamp > -10:
                        revert with 'NH{q', 17
                    if sub_93a39776Address == WBNBAddress:
                        _1719 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_1719]:
                            revert with 'NH{q', 50
                        mem[_1719 + 32] = sub_93a39776Address
                        if 1 >= mem[_1719]:
                            revert with 'NH{q', 50
                        mem[_1719 + 64] = address(arg1)
                        mem[_1719 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1719 + 100] = uint256(stor7.field_0)
                        mem[_1719 + 132] = 64
                        mem[_1719 + 164] = mem[_1719]
                        idx = 0
                        s = _1719 + 32
                        t = _1719 + 196
                        while idx < mem[_1719]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(ROUTERAddress)
                        staticcall ROUTERAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1719 + (32 * mem[_1719]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2652 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2676 = mem[_2652]
                        require mem[_2652] <= test266151307()
                        require _2652 + mem[_2652] + 31 < _2652 + return_data.size
                        _2710 = mem[_2652 + mem[_2652]]
                        if mem[_2652 + mem[_2652]] > test266151307():
                            revert with 'NH{q', 65
                        if _2652 + ceil32(return_data.size) + floor32(mem[_2652 + mem[_2652]]) + 1 > test266151307() or floor32(mem[_2652 + mem[_2652]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2652 + ceil32(return_data.size) + floor32(mem[_2652 + mem[_2652]]) + 1
                        mem[_2652 + ceil32(return_data.size)] = _2710
                        require _2676 + (32 * _2710) + 32 <= return_data.size
                        idx = _2652 + _2676 + 32
                        s = _2652 + ceil32(return_data.size) + 32
                        while idx < _2652 + _2676 + (32 * _2710) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if _2710 < 1:
                            revert with 'NH{q', 17
                        if _2710 - 1 >= _2710:
                            revert with 'NH{q', 50
                        _4118 = mem[(32 * _2710 - 1) + _2652 + ceil32(return_data.size) + 32]
                        if sub_93a39776Address == WBNBAddress:
                            _4136 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_4136]:
                                revert with 'NH{q', 50
                            mem[_4136 + 32] = sub_93a39776Address
                            if 1 >= mem[_4136]:
                                revert with 'NH{q', 50
                            mem[_4136 + 64] = address(arg1)
                            mem[_4136 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4136 + 100] = 0
                            mem[_4136 + 132] = 128
                            mem[_4136 + 228] = mem[_4136]
                            idx = 0
                            s = _4136 + 32
                            t = _4136 + 260
                            while idx < mem[_4136]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4136 + 164] = this.address
                            mem[_4136 + 196] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4136 + (32 * mem[_4136]) + -mem[64] + 256]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5496 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5528 = mem[_5496]
                            require mem[_5496] <= test266151307()
                            require _5496 + mem[_5496] + 31 < _5496 + return_data.size
                            _5560 = mem[_5496 + mem[_5496]]
                            if mem[_5496 + mem[_5496]] > test266151307():
                                revert with 'NH{q', 65
                            if _5496 + ceil32(return_data.size) + floor32(mem[_5496 + mem[_5496]]) + 1 > test266151307() or floor32(mem[_5496 + mem[_5496]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5496 + ceil32(return_data.size) + floor32(mem[_5496 + mem[_5496]]) + 1
                            mem[_5496 + ceil32(return_data.size)] = _5560
                            require _5528 + (32 * _5560) + 32 <= return_data.size
                            idx = _5496 + _5528 + 32
                            s = _5496 + ceil32(return_data.size) + 32
                            while idx < _5496 + _5528 + (32 * _5560) + 32:
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
                            _6648 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6680 = mem[_6648]
                            require mem[_6648] == mem[_6648]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4118 and -stor6 + 10000 > -1 / _4118:
                                revert with 'NH{q', 17
                            if (10000 * _4118) - (stor6 * _4118) / 10000 > mem[_6648]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _6680
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _6680
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6840 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6840] == bool(mem[_6840])
                            if not mem[_6840]:
                                revert with 0, 'HP/HT'
                            idx = 0
                            while idx < sub_7285fd3a.length:
                                mem[0] = 1
                                if sub_93a39776Address == WBNBAddress:
                                    _7516 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    if 0 >= mem[_7516]:
                                        revert with 'NH{q', 50
                                    mem[_7516 + 32] = sub_93a39776Address
                                    if 1 >= mem[_7516]:
                                        revert with 'NH{q', 50
                                    mem[_7516 + 64] = address(arg1)
                                    mem[_7516 + 96] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7516 + 100] = 32
                                    mem[_7516 + 132] = mem[_7516]
                                    s = 0
                                    t = _7516 + 32
                                    u = _7516 + 164
                                    while s < mem[_7516]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7516 + (32 * mem[_7516]) + -mem[64] + 160]
                                else:
                                    _7515 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    if 0 >= mem[_7515]:
                                        revert with 'NH{q', 50
                                    mem[_7515 + 32] = WBNBAddress
                                    if 1 >= mem[_7515]:
                                        revert with 'NH{q', 50
                                    mem[_7515 + 64] = sub_93a39776Address
                                    if 2 >= mem[_7515]:
                                        revert with 'NH{q', 50
                                    mem[_7515 + 96] = address(arg1)
                                    mem[_7515 + 128] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7515 + 132] = 32
                                    mem[_7515 + 164] = mem[_7515]
                                    s = 0
                                    t = _7515 + 32
                                    u = _7515 + 196
                                    while s < mem[_7515]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7515 + (32 * mem[_7515]) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                        else:
                            _4135 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            if 0 >= mem[_4135]:
                                revert with 'NH{q', 50
                            mem[_4135 + 32] = WBNBAddress
                            if 1 >= mem[_4135]:
                                revert with 'NH{q', 50
                            mem[_4135 + 64] = sub_93a39776Address
                            if 2 >= mem[_4135]:
                                revert with 'NH{q', 50
                            mem[_4135 + 96] = address(arg1)
                            mem[_4135 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4135 + 132] = 0
                            mem[_4135 + 164] = 128
                            mem[_4135 + 260] = mem[_4135]
                            idx = 0
                            s = _4135 + 32
                            t = _4135 + 292
                            while idx < mem[_4135]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4135 + 196] = this.address
                            mem[_4135 + 228] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4135 + (32 * mem[_4135]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5495 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5527 = mem[_5495]
                            require mem[_5495] <= test266151307()
                            require _5495 + mem[_5495] + 31 < _5495 + return_data.size
                            _5559 = mem[_5495 + mem[_5495]]
                            if mem[_5495 + mem[_5495]] > test266151307():
                                revert with 'NH{q', 65
                            if _5495 + ceil32(return_data.size) + floor32(mem[_5495 + mem[_5495]]) + 1 > test266151307() or floor32(mem[_5495 + mem[_5495]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5495 + ceil32(return_data.size) + floor32(mem[_5495 + mem[_5495]]) + 1
                            mem[_5495 + ceil32(return_data.size)] = _5559
                            require _5527 + (32 * _5559) + 32 <= return_data.size
                            idx = _5495 + _5527 + 32
                            s = _5495 + ceil32(return_data.size) + 32
                            while idx < _5495 + _5527 + (32 * _5559) + 32:
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
                            _6647 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6679 = mem[_6647]
                            require mem[_6647] == mem[_6647]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4118 and -stor6 + 10000 > -1 / _4118:
                                revert with 'NH{q', 17
                            if (10000 * _4118) - (stor6 * _4118) / 10000 > mem[_6647]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _6679
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _6679
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6839 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6839] == bool(mem[_6839])
                            if not mem[_6839]:
                                revert with 0, 'HP/HT'
                            idx = 0
                            while idx < sub_7285fd3a.length:
                                mem[0] = 1
                                if sub_93a39776Address == WBNBAddress:
                                    _7514 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    if 0 >= mem[_7514]:
                                        revert with 'NH{q', 50
                                    mem[_7514 + 32] = sub_93a39776Address
                                    if 1 >= mem[_7514]:
                                        revert with 'NH{q', 50
                                    mem[_7514 + 64] = address(arg1)
                                    mem[_7514 + 96] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7514 + 100] = 32
                                    mem[_7514 + 132] = mem[_7514]
                                    s = 0
                                    t = _7514 + 32
                                    u = _7514 + 164
                                    while s < mem[_7514]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7514 + (32 * mem[_7514]) + -mem[64] + 160]
                                else:
                                    _7513 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    if 0 >= mem[_7513]:
                                        revert with 'NH{q', 50
                                    mem[_7513 + 32] = WBNBAddress
                                    if 1 >= mem[_7513]:
                                        revert with 'NH{q', 50
                                    mem[_7513 + 64] = sub_93a39776Address
                                    if 2 >= mem[_7513]:
                                        revert with 'NH{q', 50
                                    mem[_7513 + 96] = address(arg1)
                                    mem[_7513 + 128] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7513 + 132] = 32
                                    mem[_7513 + 164] = mem[_7513]
                                    s = 0
                                    t = _7513 + 32
                                    u = _7513 + 196
                                    while s < mem[_7513]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7513 + (32 * mem[_7513]) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                    else:
                        _1718 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if 0 >= mem[_1718]:
                            revert with 'NH{q', 50
                        mem[_1718 + 32] = WBNBAddress
                        if 1 >= mem[_1718]:
                            revert with 'NH{q', 50
                        mem[_1718 + 64] = sub_93a39776Address
                        if 2 >= mem[_1718]:
                            revert with 'NH{q', 50
                        mem[_1718 + 96] = address(arg1)
                        mem[_1718 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1718 + 132] = uint256(stor7.field_0)
                        mem[_1718 + 164] = 64
                        mem[_1718 + 196] = mem[_1718]
                        idx = 0
                        s = _1718 + 32
                        t = _1718 + 228
                        while idx < mem[_1718]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(ROUTERAddress)
                        staticcall ROUTERAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1718 + (32 * mem[_1718]) + -mem[64] + 224]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2651 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2675 = mem[_2651]
                        require mem[_2651] <= test266151307()
                        require _2651 + mem[_2651] + 31 < _2651 + return_data.size
                        _2709 = mem[_2651 + mem[_2651]]
                        if mem[_2651 + mem[_2651]] > test266151307():
                            revert with 'NH{q', 65
                        if _2651 + ceil32(return_data.size) + floor32(mem[_2651 + mem[_2651]]) + 1 > test266151307() or floor32(mem[_2651 + mem[_2651]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2651 + ceil32(return_data.size) + floor32(mem[_2651 + mem[_2651]]) + 1
                        mem[_2651 + ceil32(return_data.size)] = _2709
                        require _2675 + (32 * _2709) + 32 <= return_data.size
                        idx = _2651 + _2675 + 32
                        s = _2651 + ceil32(return_data.size) + 32
                        while idx < _2651 + _2675 + (32 * _2709) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if _2709 < 1:
                            revert with 'NH{q', 17
                        if _2709 - 1 >= _2709:
                            revert with 'NH{q', 50
                        _4117 = mem[(32 * _2709 - 1) + _2651 + ceil32(return_data.size) + 32]
                        if sub_93a39776Address == WBNBAddress:
                            _4134 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_4134]:
                                revert with 'NH{q', 50
                            mem[_4134 + 32] = sub_93a39776Address
                            if 1 >= mem[_4134]:
                                revert with 'NH{q', 50
                            mem[_4134 + 64] = address(arg1)
                            mem[_4134 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4134 + 100] = 0
                            mem[_4134 + 132] = 128
                            mem[_4134 + 228] = mem[_4134]
                            idx = 0
                            s = _4134 + 32
                            t = _4134 + 260
                            while idx < mem[_4134]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4134 + 164] = this.address
                            mem[_4134 + 196] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4134 + (32 * mem[_4134]) + -mem[64] + 256]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5494 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5526 = mem[_5494]
                            require mem[_5494] <= test266151307()
                            require _5494 + mem[_5494] + 31 < _5494 + return_data.size
                            _5558 = mem[_5494 + mem[_5494]]
                            if mem[_5494 + mem[_5494]] > test266151307():
                                revert with 'NH{q', 65
                            if _5494 + ceil32(return_data.size) + floor32(mem[_5494 + mem[_5494]]) + 1 > test266151307() or floor32(mem[_5494 + mem[_5494]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5494 + ceil32(return_data.size) + floor32(mem[_5494 + mem[_5494]]) + 1
                            mem[_5494 + ceil32(return_data.size)] = _5558
                            require _5526 + (32 * _5558) + 32 <= return_data.size
                            idx = _5494 + _5526 + 32
                            s = _5494 + ceil32(return_data.size) + 32
                            while idx < _5494 + _5526 + (32 * _5558) + 32:
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
                            _6646 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6678 = mem[_6646]
                            require mem[_6646] == mem[_6646]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4117 and -stor6 + 10000 > -1 / _4117:
                                revert with 'NH{q', 17
                            if (10000 * _4117) - (stor6 * _4117) / 10000 > mem[_6646]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _6678
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _6678
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6838 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6838] == bool(mem[_6838])
                            if not mem[_6838]:
                                revert with 0, 'HP/HT'
                            idx = 0
                            while idx < sub_7285fd3a.length:
                                mem[0] = 1
                                if sub_93a39776Address == WBNBAddress:
                                    _7512 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    if 0 >= mem[_7512]:
                                        revert with 'NH{q', 50
                                    mem[_7512 + 32] = sub_93a39776Address
                                    if 1 >= mem[_7512]:
                                        revert with 'NH{q', 50
                                    mem[_7512 + 64] = address(arg1)
                                    mem[_7512 + 96] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7512 + 100] = 32
                                    mem[_7512 + 132] = mem[_7512]
                                    s = 0
                                    t = _7512 + 32
                                    u = _7512 + 164
                                    while s < mem[_7512]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7512 + (32 * mem[_7512]) + -mem[64] + 160]
                                else:
                                    _7511 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    if 0 >= mem[_7511]:
                                        revert with 'NH{q', 50
                                    mem[_7511 + 32] = WBNBAddress
                                    if 1 >= mem[_7511]:
                                        revert with 'NH{q', 50
                                    mem[_7511 + 64] = sub_93a39776Address
                                    if 2 >= mem[_7511]:
                                        revert with 'NH{q', 50
                                    mem[_7511 + 96] = address(arg1)
                                    mem[_7511 + 128] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7511 + 132] = 32
                                    mem[_7511 + 164] = mem[_7511]
                                    s = 0
                                    t = _7511 + 32
                                    u = _7511 + 196
                                    while s < mem[_7511]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7511 + (32 * mem[_7511]) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                        else:
                            _4133 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            if 0 >= mem[_4133]:
                                revert with 'NH{q', 50
                            mem[_4133 + 32] = WBNBAddress
                            if 1 >= mem[_4133]:
                                revert with 'NH{q', 50
                            mem[_4133 + 64] = sub_93a39776Address
                            if 2 >= mem[_4133]:
                                revert with 'NH{q', 50
                            mem[_4133 + 96] = address(arg1)
                            mem[_4133 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4133 + 132] = 0
                            mem[_4133 + 164] = 128
                            mem[_4133 + 260] = mem[_4133]
                            idx = 0
                            s = _4133 + 32
                            t = _4133 + 292
                            while idx < mem[_4133]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4133 + 196] = this.address
                            mem[_4133 + 228] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4133 + (32 * mem[_4133]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5493 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5525 = mem[_5493]
                            require mem[_5493] <= test266151307()
                            require _5493 + mem[_5493] + 31 < _5493 + return_data.size
                            _5557 = mem[_5493 + mem[_5493]]
                            if mem[_5493 + mem[_5493]] > test266151307():
                                revert with 'NH{q', 65
                            if _5493 + ceil32(return_data.size) + floor32(mem[_5493 + mem[_5493]]) + 1 > test266151307() or floor32(mem[_5493 + mem[_5493]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5493 + ceil32(return_data.size) + floor32(mem[_5493 + mem[_5493]]) + 1
                            mem[_5493 + ceil32(return_data.size)] = _5557
                            require _5525 + (32 * _5557) + 32 <= return_data.size
                            idx = _5493 + _5525 + 32
                            s = _5493 + ceil32(return_data.size) + 32
                            while idx < _5493 + _5525 + (32 * _5557) + 32:
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
                            _6645 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6677 = mem[_6645]
                            require mem[_6645] == mem[_6645]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4117 and -stor6 + 10000 > -1 / _4117:
                                revert with 'NH{q', 17
                            if (10000 * _4117) - (stor6 * _4117) / 10000 > mem[_6645]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _6677
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _6677
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6837 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6837] == bool(mem[_6837])
                            if not mem[_6837]:
                                revert with 0, 'HP/HT'
                            idx = 0
                            while idx < sub_7285fd3a.length:
                                mem[0] = 1
                                if sub_93a39776Address == WBNBAddress:
                                    _7510 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    if 0 >= mem[_7510]:
                                        revert with 'NH{q', 50
                                    mem[_7510 + 32] = sub_93a39776Address
                                    if 1 >= mem[_7510]:
                                        revert with 'NH{q', 50
                                    mem[_7510 + 64] = address(arg1)
                                    mem[_7510 + 96] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7510 + 100] = 32
                                    mem[_7510 + 132] = mem[_7510]
                                    s = 0
                                    t = _7510 + 32
                                    u = _7510 + 164
                                    while s < mem[_7510]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7510 + (32 * mem[_7510]) + -mem[64] + 160]
                                else:
                                    _7509 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    if 0 >= mem[_7509]:
                                        revert with 'NH{q', 50
                                    mem[_7509 + 32] = WBNBAddress
                                    if 1 >= mem[_7509]:
                                        revert with 'NH{q', 50
                                    mem[_7509 + 64] = sub_93a39776Address
                                    if 2 >= mem[_7509]:
                                        revert with 'NH{q', 50
                                    mem[_7509 + 96] = address(arg1)
                                    mem[_7509 + 128] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7509 + 132] = 32
                                    mem[_7509 + 164] = mem[_7509]
                                    s = 0
                                    t = _7509 + 32
                                    u = _7509 + 196
                                    while s < mem[_7509]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7509 + (32 * mem[_7509]) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                else:
                    if stor8:
                        revert with 0, 'Locked'
                    if block.timestamp > -10:
                        revert with 'NH{q', 17
                    if sub_93a39776Address == WBNBAddress:
                        _1730 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_1730]:
                            revert with 'NH{q', 50
                        mem[_1730 + 32] = sub_93a39776Address
                        if 1 >= mem[_1730]:
                            revert with 'NH{q', 50
                        mem[_1730 + 64] = address(arg1)
                        mem[_1730 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1730 + 100] = uint256(stor7.field_0)
                        mem[_1730 + 132] = 64
                        mem[_1730 + 164] = mem[_1730]
                        idx = 0
                        s = _1730 + 32
                        t = _1730 + 196
                        while idx < mem[_1730]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(ROUTERAddress)
                        staticcall ROUTERAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1730 + (32 * mem[_1730]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2654 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2678 = mem[_2654]
                        require mem[_2654] <= test266151307()
                        require _2654 + mem[_2654] + 31 < _2654 + return_data.size
                        _2712 = mem[_2654 + mem[_2654]]
                        if mem[_2654 + mem[_2654]] > test266151307():
                            revert with 'NH{q', 65
                        if _2654 + ceil32(return_data.size) + floor32(mem[_2654 + mem[_2654]]) + 1 > test266151307() or floor32(mem[_2654 + mem[_2654]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2654 + ceil32(return_data.size) + floor32(mem[_2654 + mem[_2654]]) + 1
                        mem[_2654 + ceil32(return_data.size)] = _2712
                        require _2678 + (32 * _2712) + 32 <= return_data.size
                        idx = _2654 + _2678 + 32
                        s = _2654 + ceil32(return_data.size) + 32
                        while idx < _2654 + _2678 + (32 * _2712) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if _2712 < 1:
                            revert with 'NH{q', 17
                        if _2712 - 1 >= _2712:
                            revert with 'NH{q', 50
                        _4120 = mem[(32 * _2712 - 1) + _2654 + ceil32(return_data.size) + 32]
                        if sub_93a39776Address == WBNBAddress:
                            _4140 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_4140]:
                                revert with 'NH{q', 50
                            mem[_4140 + 32] = sub_93a39776Address
                            if 1 >= mem[_4140]:
                                revert with 'NH{q', 50
                            mem[_4140 + 64] = address(arg1)
                            mem[_4140 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4140 + 100] = 0
                            mem[_4140 + 132] = 128
                            mem[_4140 + 228] = mem[_4140]
                            idx = 0
                            s = _4140 + 32
                            t = _4140 + 260
                            while idx < mem[_4140]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4140 + 164] = this.address
                            mem[_4140 + 196] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4140 + (32 * mem[_4140]) + -mem[64] + 256]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5500 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5532 = mem[_5500]
                            require mem[_5500] <= test266151307()
                            require _5500 + mem[_5500] + 31 < _5500 + return_data.size
                            _5564 = mem[_5500 + mem[_5500]]
                            if mem[_5500 + mem[_5500]] > test266151307():
                                revert with 'NH{q', 65
                            if _5500 + ceil32(return_data.size) + floor32(mem[_5500 + mem[_5500]]) + 1 > test266151307() or floor32(mem[_5500 + mem[_5500]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5500 + ceil32(return_data.size) + floor32(mem[_5500 + mem[_5500]]) + 1
                            mem[_5500 + ceil32(return_data.size)] = _5564
                            require _5532 + (32 * _5564) + 32 <= return_data.size
                            idx = _5500 + _5532 + 32
                            s = _5500 + ceil32(return_data.size) + 32
                            while idx < _5500 + _5532 + (32 * _5564) + 32:
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
                            _6652 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6684 = mem[_6652]
                            require mem[_6652] == mem[_6652]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4120 and -stor6 + 10000 > -1 / _4120:
                                revert with 'NH{q', 17
                            if (10000 * _4120) - (stor6 * _4120) / 10000 > mem[_6652]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _6684
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _6684
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6844 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6844] == bool(mem[_6844])
                            if not mem[_6844]:
                                revert with 0, 'HP/HT'
                            idx = 0
                            while idx < sub_7285fd3a.length:
                                mem[0] = 1
                                if sub_93a39776Address == WBNBAddress:
                                    _7524 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    if 0 >= mem[_7524]:
                                        revert with 'NH{q', 50
                                    mem[_7524 + 32] = sub_93a39776Address
                                    if 1 >= mem[_7524]:
                                        revert with 'NH{q', 50
                                    mem[_7524 + 64] = address(arg1)
                                    mem[_7524 + 96] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7524 + 100] = 32
                                    mem[_7524 + 132] = mem[_7524]
                                    s = 0
                                    t = _7524 + 32
                                    u = _7524 + 164
                                    while s < mem[_7524]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7524 + (32 * mem[_7524]) + -mem[64] + 160]
                                else:
                                    _7523 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    if 0 >= mem[_7523]:
                                        revert with 'NH{q', 50
                                    mem[_7523 + 32] = WBNBAddress
                                    if 1 >= mem[_7523]:
                                        revert with 'NH{q', 50
                                    mem[_7523 + 64] = sub_93a39776Address
                                    if 2 >= mem[_7523]:
                                        revert with 'NH{q', 50
                                    mem[_7523 + 96] = address(arg1)
                                    mem[_7523 + 128] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7523 + 132] = 32
                                    mem[_7523 + 164] = mem[_7523]
                                    s = 0
                                    t = _7523 + 32
                                    u = _7523 + 196
                                    while s < mem[_7523]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7523 + (32 * mem[_7523]) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                        else:
                            _4139 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            if 0 >= mem[_4139]:
                                revert with 'NH{q', 50
                            mem[_4139 + 32] = WBNBAddress
                            if 1 >= mem[_4139]:
                                revert with 'NH{q', 50
                            mem[_4139 + 64] = sub_93a39776Address
                            if 2 >= mem[_4139]:
                                revert with 'NH{q', 50
                            mem[_4139 + 96] = address(arg1)
                            mem[_4139 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4139 + 132] = 0
                            mem[_4139 + 164] = 128
                            mem[_4139 + 260] = mem[_4139]
                            idx = 0
                            s = _4139 + 32
                            t = _4139 + 292
                            while idx < mem[_4139]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4139 + 196] = this.address
                            mem[_4139 + 228] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4139 + (32 * mem[_4139]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5499 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5531 = mem[_5499]
                            require mem[_5499] <= test266151307()
                            require _5499 + mem[_5499] + 31 < _5499 + return_data.size
                            _5563 = mem[_5499 + mem[_5499]]
                            if mem[_5499 + mem[_5499]] > test266151307():
                                revert with 'NH{q', 65
                            if _5499 + ceil32(return_data.size) + floor32(mem[_5499 + mem[_5499]]) + 1 > test266151307() or floor32(mem[_5499 + mem[_5499]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5499 + ceil32(return_data.size) + floor32(mem[_5499 + mem[_5499]]) + 1
                            mem[_5499 + ceil32(return_data.size)] = _5563
                            require _5531 + (32 * _5563) + 32 <= return_data.size
                            idx = _5499 + _5531 + 32
                            s = _5499 + ceil32(return_data.size) + 32
                            while idx < _5499 + _5531 + (32 * _5563) + 32:
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
                            _6651 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6683 = mem[_6651]
                            require mem[_6651] == mem[_6651]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4120 and -stor6 + 10000 > -1 / _4120:
                                revert with 'NH{q', 17
                            if (10000 * _4120) - (stor6 * _4120) / 10000 > mem[_6651]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _6683
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _6683
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6843 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6843] == bool(mem[_6843])
                            if not mem[_6843]:
                                revert with 0, 'HP/HT'
                            idx = 0
                            while idx < sub_7285fd3a.length:
                                mem[0] = 1
                                if sub_93a39776Address == WBNBAddress:
                                    _7522 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    if 0 >= mem[_7522]:
                                        revert with 'NH{q', 50
                                    mem[_7522 + 32] = sub_93a39776Address
                                    if 1 >= mem[_7522]:
                                        revert with 'NH{q', 50
                                    mem[_7522 + 64] = address(arg1)
                                    mem[_7522 + 96] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7522 + 100] = 32
                                    mem[_7522 + 132] = mem[_7522]
                                    s = 0
                                    t = _7522 + 32
                                    u = _7522 + 164
                                    while s < mem[_7522]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7522 + (32 * mem[_7522]) + -mem[64] + 160]
                                else:
                                    _7521 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    if 0 >= mem[_7521]:
                                        revert with 'NH{q', 50
                                    mem[_7521 + 32] = WBNBAddress
                                    if 1 >= mem[_7521]:
                                        revert with 'NH{q', 50
                                    mem[_7521 + 64] = sub_93a39776Address
                                    if 2 >= mem[_7521]:
                                        revert with 'NH{q', 50
                                    mem[_7521 + 96] = address(arg1)
                                    mem[_7521 + 128] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7521 + 132] = 32
                                    mem[_7521 + 164] = mem[_7521]
                                    s = 0
                                    t = _7521 + 32
                                    u = _7521 + 196
                                    while s < mem[_7521]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7521 + (32 * mem[_7521]) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                    else:
                        _1729 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if 0 >= mem[_1729]:
                            revert with 'NH{q', 50
                        mem[_1729 + 32] = WBNBAddress
                        if 1 >= mem[_1729]:
                            revert with 'NH{q', 50
                        mem[_1729 + 64] = sub_93a39776Address
                        if 2 >= mem[_1729]:
                            revert with 'NH{q', 50
                        mem[_1729 + 96] = address(arg1)
                        mem[_1729 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1729 + 132] = uint256(stor7.field_0)
                        mem[_1729 + 164] = 64
                        mem[_1729 + 196] = mem[_1729]
                        idx = 0
                        s = _1729 + 32
                        t = _1729 + 228
                        while idx < mem[_1729]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(ROUTERAddress)
                        staticcall ROUTERAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1729 + (32 * mem[_1729]) + -mem[64] + 224]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2653 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2677 = mem[_2653]
                        require mem[_2653] <= test266151307()
                        require _2653 + mem[_2653] + 31 < _2653 + return_data.size
                        _2711 = mem[_2653 + mem[_2653]]
                        if mem[_2653 + mem[_2653]] > test266151307():
                            revert with 'NH{q', 65
                        if _2653 + ceil32(return_data.size) + floor32(mem[_2653 + mem[_2653]]) + 1 > test266151307() or floor32(mem[_2653 + mem[_2653]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2653 + ceil32(return_data.size) + floor32(mem[_2653 + mem[_2653]]) + 1
                        mem[_2653 + ceil32(return_data.size)] = _2711
                        require _2677 + (32 * _2711) + 32 <= return_data.size
                        idx = _2653 + _2677 + 32
                        s = _2653 + ceil32(return_data.size) + 32
                        while idx < _2653 + _2677 + (32 * _2711) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if _2711 < 1:
                            revert with 'NH{q', 17
                        if _2711 - 1 >= _2711:
                            revert with 'NH{q', 50
                        _4119 = mem[(32 * _2711 - 1) + _2653 + ceil32(return_data.size) + 32]
                        if sub_93a39776Address == WBNBAddress:
                            _4138 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_4138]:
                                revert with 'NH{q', 50
                            mem[_4138 + 32] = sub_93a39776Address
                            if 1 >= mem[_4138]:
                                revert with 'NH{q', 50
                            mem[_4138 + 64] = address(arg1)
                            mem[_4138 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4138 + 100] = 0
                            mem[_4138 + 132] = 128
                            mem[_4138 + 228] = mem[_4138]
                            idx = 0
                            s = _4138 + 32
                            t = _4138 + 260
                            while idx < mem[_4138]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4138 + 164] = this.address
                            mem[_4138 + 196] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4138 + (32 * mem[_4138]) + -mem[64] + 256]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5498 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5530 = mem[_5498]
                            require mem[_5498] <= test266151307()
                            require _5498 + mem[_5498] + 31 < _5498 + return_data.size
                            _5562 = mem[_5498 + mem[_5498]]
                            if mem[_5498 + mem[_5498]] > test266151307():
                                revert with 'NH{q', 65
                            if _5498 + ceil32(return_data.size) + floor32(mem[_5498 + mem[_5498]]) + 1 > test266151307() or floor32(mem[_5498 + mem[_5498]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5498 + ceil32(return_data.size) + floor32(mem[_5498 + mem[_5498]]) + 1
                            mem[_5498 + ceil32(return_data.size)] = _5562
                            require _5530 + (32 * _5562) + 32 <= return_data.size
                            idx = _5498 + _5530 + 32
                            s = _5498 + ceil32(return_data.size) + 32
                            while idx < _5498 + _5530 + (32 * _5562) + 32:
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
                            _6650 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6682 = mem[_6650]
                            require mem[_6650] == mem[_6650]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4119 and -stor6 + 10000 > -1 / _4119:
                                revert with 'NH{q', 17
                            if (10000 * _4119) - (stor6 * _4119) / 10000 > mem[_6650]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _6682
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _6682
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6842 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6842] == bool(mem[_6842])
                            if not mem[_6842]:
                                revert with 0, 'HP/HT'
                            idx = 0
                            while idx < sub_7285fd3a.length:
                                mem[0] = 1
                                if sub_93a39776Address == WBNBAddress:
                                    _7520 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    if 0 >= mem[_7520]:
                                        revert with 'NH{q', 50
                                    mem[_7520 + 32] = sub_93a39776Address
                                    if 1 >= mem[_7520]:
                                        revert with 'NH{q', 50
                                    mem[_7520 + 64] = address(arg1)
                                    mem[_7520 + 96] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7520 + 100] = 32
                                    mem[_7520 + 132] = mem[_7520]
                                    s = 0
                                    t = _7520 + 32
                                    u = _7520 + 164
                                    while s < mem[_7520]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7520 + (32 * mem[_7520]) + -mem[64] + 160]
                                else:
                                    _7519 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    if 0 >= mem[_7519]:
                                        revert with 'NH{q', 50
                                    mem[_7519 + 32] = WBNBAddress
                                    if 1 >= mem[_7519]:
                                        revert with 'NH{q', 50
                                    mem[_7519 + 64] = sub_93a39776Address
                                    if 2 >= mem[_7519]:
                                        revert with 'NH{q', 50
                                    mem[_7519 + 96] = address(arg1)
                                    mem[_7519 + 128] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7519 + 132] = 32
                                    mem[_7519 + 164] = mem[_7519]
                                    s = 0
                                    t = _7519 + 32
                                    u = _7519 + 196
                                    while s < mem[_7519]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7519 + (32 * mem[_7519]) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                        else:
                            _4137 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            if 0 >= mem[_4137]:
                                revert with 'NH{q', 50
                            mem[_4137 + 32] = WBNBAddress
                            if 1 >= mem[_4137]:
                                revert with 'NH{q', 50
                            mem[_4137 + 64] = sub_93a39776Address
                            if 2 >= mem[_4137]:
                                revert with 'NH{q', 50
                            mem[_4137 + 96] = address(arg1)
                            mem[_4137 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4137 + 132] = 0
                            mem[_4137 + 164] = 128
                            mem[_4137 + 260] = mem[_4137]
                            idx = 0
                            s = _4137 + 32
                            t = _4137 + 292
                            while idx < mem[_4137]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4137 + 196] = this.address
                            mem[_4137 + 228] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4137 + (32 * mem[_4137]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5497 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5529 = mem[_5497]
                            require mem[_5497] <= test266151307()
                            require _5497 + mem[_5497] + 31 < _5497 + return_data.size
                            _5561 = mem[_5497 + mem[_5497]]
                            if mem[_5497 + mem[_5497]] > test266151307():
                                revert with 'NH{q', 65
                            if _5497 + ceil32(return_data.size) + floor32(mem[_5497 + mem[_5497]]) + 1 > test266151307() or floor32(mem[_5497 + mem[_5497]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5497 + ceil32(return_data.size) + floor32(mem[_5497 + mem[_5497]]) + 1
                            mem[_5497 + ceil32(return_data.size)] = _5561
                            require _5529 + (32 * _5561) + 32 <= return_data.size
                            idx = _5497 + _5529 + 32
                            s = _5497 + ceil32(return_data.size) + 32
                            while idx < _5497 + _5529 + (32 * _5561) + 32:
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
                            _6649 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6681 = mem[_6649]
                            require mem[_6649] == mem[_6649]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4119 and -stor6 + 10000 > -1 / _4119:
                                revert with 'NH{q', 17
                            if (10000 * _4119) - (stor6 * _4119) / 10000 > mem[_6649]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _6681
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _6681
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6841 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6841] == bool(mem[_6841])
                            if not mem[_6841]:
                                revert with 0, 'HP/HT'
                            idx = 0
                            while idx < sub_7285fd3a.length:
                                mem[0] = 1
                                if sub_93a39776Address == WBNBAddress:
                                    _7518 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    if 0 >= mem[_7518]:
                                        revert with 'NH{q', 50
                                    mem[_7518 + 32] = sub_93a39776Address
                                    if 1 >= mem[_7518]:
                                        revert with 'NH{q', 50
                                    mem[_7518 + 64] = address(arg1)
                                    mem[_7518 + 96] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7518 + 100] = 32
                                    mem[_7518 + 132] = mem[_7518]
                                    s = 0
                                    t = _7518 + 32
                                    u = _7518 + 164
                                    while s < mem[_7518]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7518 + (32 * mem[_7518]) + -mem[64] + 160]
                                else:
                                    _7517 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    if 0 >= mem[_7517]:
                                        revert with 'NH{q', 50
                                    mem[_7517 + 32] = WBNBAddress
                                    if 1 >= mem[_7517]:
                                        revert with 'NH{q', 50
                                    mem[_7517 + 64] = sub_93a39776Address
                                    if 2 >= mem[_7517]:
                                        revert with 'NH{q', 50
                                    mem[_7517 + 96] = address(arg1)
                                    mem[_7517 + 128] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7517 + 132] = 32
                                    mem[_7517 + 164] = mem[_7517]
                                    s = 0
                                    t = _7517 + 32
                                    u = _7517 + 196
                                    while s < mem[_7517]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7517 + (32 * mem[_7517]) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
    else:
        if stor8:
            revert with 0, 'Locked'
        if eth.balance(this.address) <= 0:
            revert with 0, 'Locked'
        if sub_93a39776Address == WBNBAddress:
            mem[96] = 2
            mem[128] = sub_93a39776Address
            mem[160] = address(arg1)
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
            _776 = mem[192 len 4], Mask(224, 0, stor9.field_32)
            require mem[192 len 4], Mask(224, 0, stor9.field_32) <= test266151307()
            require mem[192 len 4], Mask(224, 0, stor9.field_32) + 223 < return_data.size + 192
            _780 = mem[mem[192 len 4], Mask(224, 0, stor9.field_32) + 192]
            if mem[mem[192 len 4], Mask(224, 0, stor9.field_32) + 192] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 0, stor9.field_32) + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 0, stor9.field_32) + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 0, stor9.field_32) + 192]) + 193
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 0, stor9.field_32) + 192]
            require _776 + (32 * _780) + 32 <= return_data.size
            idx = _776 + 224
            s = ceil32(return_data.size) + 224
            while idx < _776 + (32 * _780) + 224:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            if 0 >= _780:
                revert with 'NH{q', 50
            if mem[ceil32(return_data.size) + 224] > eth.balance(this.address):
                revert with 0, 'Locked'
            if bool(uint8(stor5.field_160)) != 1:
                idx = 0
                while idx < sub_7285fd3a.length:
                    mem[0] = 1
                    if sub_93a39776Address == WBNBAddress:
                        _2668 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_2668]:
                            revert with 'NH{q', 50
                        mem[_2668 + 32] = sub_93a39776Address
                        if 1 >= mem[_2668]:
                            revert with 'NH{q', 50
                        mem[_2668 + 64] = address(arg1)
                        mem[_2668 + 96] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                        mem[_2668 + 100] = 32
                        mem[_2668 + 132] = mem[_2668]
                        s = 0
                        t = _2668 + 32
                        u = _2668 + 164
                        while s < mem[_2668]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(address(sub_7285fd3a[idx]))
                        call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _2668 + (32 * mem[_2668]) + -mem[64] + 160]
                    else:
                        _2667 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if 0 >= mem[_2667]:
                            revert with 'NH{q', 50
                        mem[_2667 + 32] = WBNBAddress
                        if 1 >= mem[_2667]:
                            revert with 'NH{q', 50
                        mem[_2667 + 64] = sub_93a39776Address
                        if 2 >= mem[_2667]:
                            revert with 'NH{q', 50
                        mem[_2667 + 96] = address(arg1)
                        mem[_2667 + 128] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                        mem[_2667 + 132] = 32
                        mem[_2667 + 164] = mem[_2667]
                        s = 0
                        t = _2667 + 32
                        u = _2667 + 196
                        while s < mem[_2667]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(address(sub_7285fd3a[idx]))
                        call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _2667 + (32 * mem[_2667]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
            else:
                if msg.sender == address(stor5.field_0):
                    if block.timestamp > -10:
                        revert with 'NH{q', 17
                    if sub_93a39776Address == WBNBAddress:
                        _1728 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_1728]:
                            revert with 'NH{q', 50
                        mem[_1728 + 32] = sub_93a39776Address
                        if 1 >= mem[_1728]:
                            revert with 'NH{q', 50
                        mem[_1728 + 64] = address(arg1)
                        mem[_1728 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1728 + 100] = uint256(stor7.field_0)
                        mem[_1728 + 132] = 64
                        mem[_1728 + 164] = mem[_1728]
                        idx = 0
                        s = _1728 + 32
                        t = _1728 + 196
                        while idx < mem[_1728]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(ROUTERAddress)
                        staticcall ROUTERAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1728 + (32 * mem[_1728]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2670 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2694 = mem[_2670]
                        require mem[_2670] <= test266151307()
                        require _2670 + mem[_2670] + 31 < _2670 + return_data.size
                        _2722 = mem[_2670 + mem[_2670]]
                        if mem[_2670 + mem[_2670]] > test266151307():
                            revert with 'NH{q', 65
                        if _2670 + ceil32(return_data.size) + floor32(mem[_2670 + mem[_2670]]) + 1 > test266151307() or floor32(mem[_2670 + mem[_2670]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2670 + ceil32(return_data.size) + floor32(mem[_2670 + mem[_2670]]) + 1
                        mem[_2670 + ceil32(return_data.size)] = _2722
                        require _2694 + (32 * _2722) + 32 <= return_data.size
                        idx = _2670 + _2694 + 32
                        s = _2670 + ceil32(return_data.size) + 32
                        while idx < _2670 + _2694 + (32 * _2722) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if _2722 < 1:
                            revert with 'NH{q', 17
                        if _2722 - 1 >= _2722:
                            revert with 'NH{q', 50
                        _4130 = mem[(32 * _2722 - 1) + _2670 + ceil32(return_data.size) + 32]
                        if sub_93a39776Address == WBNBAddress:
                            _4160 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_4160]:
                                revert with 'NH{q', 50
                            mem[_4160 + 32] = sub_93a39776Address
                            if 1 >= mem[_4160]:
                                revert with 'NH{q', 50
                            mem[_4160 + 64] = address(arg1)
                            mem[_4160 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4160 + 100] = 0
                            mem[_4160 + 132] = 128
                            mem[_4160 + 228] = mem[_4160]
                            idx = 0
                            s = _4160 + 32
                            t = _4160 + 260
                            while idx < mem[_4160]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4160 + 164] = this.address
                            mem[_4160 + 196] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4160 + (32 * mem[_4160]) + -mem[64] + 256]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5520 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5552 = mem[_5520]
                            require mem[_5520] <= test266151307()
                            require _5520 + mem[_5520] + 31 < _5520 + return_data.size
                            _5584 = mem[_5520 + mem[_5520]]
                            if mem[_5520 + mem[_5520]] > test266151307():
                                revert with 'NH{q', 65
                            if _5520 + ceil32(return_data.size) + floor32(mem[_5520 + mem[_5520]]) + 1 > test266151307() or floor32(mem[_5520 + mem[_5520]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5520 + ceil32(return_data.size) + floor32(mem[_5520 + mem[_5520]]) + 1
                            mem[_5520 + ceil32(return_data.size)] = _5584
                            require _5552 + (32 * _5584) + 32 <= return_data.size
                            idx = _5520 + _5552 + 32
                            s = _5520 + ceil32(return_data.size) + 32
                            while idx < _5520 + _5552 + (32 * _5584) + 32:
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
                            _6672 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6704 = mem[_6672]
                            require mem[_6672] == mem[_6672]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4130 and -stor6 + 10000 > -1 / _4130:
                                revert with 'NH{q', 17
                            if (10000 * _4130) - (stor6 * _4130) / 10000 > mem[_6672]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _6704
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _6704
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6864 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6864] == bool(mem[_6864])
                            if not mem[_6864]:
                                revert with 0, 'HP/HT'
                            idx = 0
                            while idx < sub_7285fd3a.length:
                                mem[0] = 1
                                if sub_93a39776Address == WBNBAddress:
                                    _7564 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    if 0 >= mem[_7564]:
                                        revert with 'NH{q', 50
                                    mem[_7564 + 32] = sub_93a39776Address
                                    if 1 >= mem[_7564]:
                                        revert with 'NH{q', 50
                                    mem[_7564 + 64] = address(arg1)
                                    mem[_7564 + 96] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7564 + 100] = 32
                                    mem[_7564 + 132] = mem[_7564]
                                    s = 0
                                    t = _7564 + 32
                                    u = _7564 + 164
                                    while s < mem[_7564]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7564 + (32 * mem[_7564]) + -mem[64] + 160]
                                else:
                                    _7563 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    if 0 >= mem[_7563]:
                                        revert with 'NH{q', 50
                                    mem[_7563 + 32] = WBNBAddress
                                    if 1 >= mem[_7563]:
                                        revert with 'NH{q', 50
                                    mem[_7563 + 64] = sub_93a39776Address
                                    if 2 >= mem[_7563]:
                                        revert with 'NH{q', 50
                                    mem[_7563 + 96] = address(arg1)
                                    mem[_7563 + 128] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7563 + 132] = 32
                                    mem[_7563 + 164] = mem[_7563]
                                    s = 0
                                    t = _7563 + 32
                                    u = _7563 + 196
                                    while s < mem[_7563]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7563 + (32 * mem[_7563]) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                        else:
                            _4159 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            if 0 >= mem[_4159]:
                                revert with 'NH{q', 50
                            mem[_4159 + 32] = WBNBAddress
                            if 1 >= mem[_4159]:
                                revert with 'NH{q', 50
                            mem[_4159 + 64] = sub_93a39776Address
                            if 2 >= mem[_4159]:
                                revert with 'NH{q', 50
                            mem[_4159 + 96] = address(arg1)
                            mem[_4159 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4159 + 132] = 0
                            mem[_4159 + 164] = 128
                            mem[_4159 + 260] = mem[_4159]
                            idx = 0
                            s = _4159 + 32
                            t = _4159 + 292
                            while idx < mem[_4159]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4159 + 196] = this.address
                            mem[_4159 + 228] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4159 + (32 * mem[_4159]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5519 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5551 = mem[_5519]
                            require mem[_5519] <= test266151307()
                            require _5519 + mem[_5519] + 31 < _5519 + return_data.size
                            _5583 = mem[_5519 + mem[_5519]]
                            if mem[_5519 + mem[_5519]] > test266151307():
                                revert with 'NH{q', 65
                            if _5519 + ceil32(return_data.size) + floor32(mem[_5519 + mem[_5519]]) + 1 > test266151307() or floor32(mem[_5519 + mem[_5519]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5519 + ceil32(return_data.size) + floor32(mem[_5519 + mem[_5519]]) + 1
                            mem[_5519 + ceil32(return_data.size)] = _5583
                            require _5551 + (32 * _5583) + 32 <= return_data.size
                            idx = _5519 + _5551 + 32
                            s = _5519 + ceil32(return_data.size) + 32
                            while idx < _5519 + _5551 + (32 * _5583) + 32:
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
                            _6671 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6703 = mem[_6671]
                            require mem[_6671] == mem[_6671]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4130 and -stor6 + 10000 > -1 / _4130:
                                revert with 'NH{q', 17
                            if (10000 * _4130) - (stor6 * _4130) / 10000 > mem[_6671]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _6703
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _6703
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6863 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6863] == bool(mem[_6863])
                            if not mem[_6863]:
                                revert with 0, 'HP/HT'
                            idx = 0
                            while idx < sub_7285fd3a.length:
                                mem[0] = 1
                                if sub_93a39776Address == WBNBAddress:
                                    _7562 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    if 0 >= mem[_7562]:
                                        revert with 'NH{q', 50
                                    mem[_7562 + 32] = sub_93a39776Address
                                    if 1 >= mem[_7562]:
                                        revert with 'NH{q', 50
                                    mem[_7562 + 64] = address(arg1)
                                    mem[_7562 + 96] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7562 + 100] = 32
                                    mem[_7562 + 132] = mem[_7562]
                                    s = 0
                                    t = _7562 + 32
                                    u = _7562 + 164
                                    while s < mem[_7562]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7562 + (32 * mem[_7562]) + -mem[64] + 160]
                                else:
                                    _7561 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    if 0 >= mem[_7561]:
                                        revert with 'NH{q', 50
                                    mem[_7561 + 32] = WBNBAddress
                                    if 1 >= mem[_7561]:
                                        revert with 'NH{q', 50
                                    mem[_7561 + 64] = sub_93a39776Address
                                    if 2 >= mem[_7561]:
                                        revert with 'NH{q', 50
                                    mem[_7561 + 96] = address(arg1)
                                    mem[_7561 + 128] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7561 + 132] = 32
                                    mem[_7561 + 164] = mem[_7561]
                                    s = 0
                                    t = _7561 + 32
                                    u = _7561 + 196
                                    while s < mem[_7561]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7561 + (32 * mem[_7561]) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                    else:
                        _1727 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if 0 >= mem[_1727]:
                            revert with 'NH{q', 50
                        mem[_1727 + 32] = WBNBAddress
                        if 1 >= mem[_1727]:
                            revert with 'NH{q', 50
                        mem[_1727 + 64] = sub_93a39776Address
                        if 2 >= mem[_1727]:
                            revert with 'NH{q', 50
                        mem[_1727 + 96] = address(arg1)
                        mem[_1727 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1727 + 132] = uint256(stor7.field_0)
                        mem[_1727 + 164] = 64
                        mem[_1727 + 196] = mem[_1727]
                        idx = 0
                        s = _1727 + 32
                        t = _1727 + 228
                        while idx < mem[_1727]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(ROUTERAddress)
                        staticcall ROUTERAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1727 + (32 * mem[_1727]) + -mem[64] + 224]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2669 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2693 = mem[_2669]
                        require mem[_2669] <= test266151307()
                        require _2669 + mem[_2669] + 31 < _2669 + return_data.size
                        _2721 = mem[_2669 + mem[_2669]]
                        if mem[_2669 + mem[_2669]] > test266151307():
                            revert with 'NH{q', 65
                        if _2669 + ceil32(return_data.size) + floor32(mem[_2669 + mem[_2669]]) + 1 > test266151307() or floor32(mem[_2669 + mem[_2669]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2669 + ceil32(return_data.size) + floor32(mem[_2669 + mem[_2669]]) + 1
                        mem[_2669 + ceil32(return_data.size)] = _2721
                        require _2693 + (32 * _2721) + 32 <= return_data.size
                        idx = _2669 + _2693 + 32
                        s = _2669 + ceil32(return_data.size) + 32
                        while idx < _2669 + _2693 + (32 * _2721) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if _2721 < 1:
                            revert with 'NH{q', 17
                        if _2721 - 1 >= _2721:
                            revert with 'NH{q', 50
                        _4129 = mem[(32 * _2721 - 1) + _2669 + ceil32(return_data.size) + 32]
                        if sub_93a39776Address == WBNBAddress:
                            _4158 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_4158]:
                                revert with 'NH{q', 50
                            mem[_4158 + 32] = sub_93a39776Address
                            if 1 >= mem[_4158]:
                                revert with 'NH{q', 50
                            mem[_4158 + 64] = address(arg1)
                            mem[_4158 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4158 + 100] = 0
                            mem[_4158 + 132] = 128
                            mem[_4158 + 228] = mem[_4158]
                            idx = 0
                            s = _4158 + 32
                            t = _4158 + 260
                            while idx < mem[_4158]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4158 + 164] = this.address
                            mem[_4158 + 196] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4158 + (32 * mem[_4158]) + -mem[64] + 256]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5518 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5550 = mem[_5518]
                            require mem[_5518] <= test266151307()
                            require _5518 + mem[_5518] + 31 < _5518 + return_data.size
                            _5582 = mem[_5518 + mem[_5518]]
                            if mem[_5518 + mem[_5518]] > test266151307():
                                revert with 'NH{q', 65
                            if _5518 + ceil32(return_data.size) + floor32(mem[_5518 + mem[_5518]]) + 1 > test266151307() or floor32(mem[_5518 + mem[_5518]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5518 + ceil32(return_data.size) + floor32(mem[_5518 + mem[_5518]]) + 1
                            mem[_5518 + ceil32(return_data.size)] = _5582
                            require _5550 + (32 * _5582) + 32 <= return_data.size
                            idx = _5518 + _5550 + 32
                            s = _5518 + ceil32(return_data.size) + 32
                            while idx < _5518 + _5550 + (32 * _5582) + 32:
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
                            _6670 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6702 = mem[_6670]
                            require mem[_6670] == mem[_6670]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4129 and -stor6 + 10000 > -1 / _4129:
                                revert with 'NH{q', 17
                            if (10000 * _4129) - (stor6 * _4129) / 10000 > mem[_6670]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _6702
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _6702
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6862 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6862] == bool(mem[_6862])
                            if not mem[_6862]:
                                revert with 0, 'HP/HT'
                            idx = 0
                            while idx < sub_7285fd3a.length:
                                mem[0] = 1
                                if sub_93a39776Address == WBNBAddress:
                                    _7560 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    if 0 >= mem[_7560]:
                                        revert with 'NH{q', 50
                                    mem[_7560 + 32] = sub_93a39776Address
                                    if 1 >= mem[_7560]:
                                        revert with 'NH{q', 50
                                    mem[_7560 + 64] = address(arg1)
                                    mem[_7560 + 96] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7560 + 100] = 32
                                    mem[_7560 + 132] = mem[_7560]
                                    s = 0
                                    t = _7560 + 32
                                    u = _7560 + 164
                                    while s < mem[_7560]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7560 + (32 * mem[_7560]) + -mem[64] + 160]
                                else:
                                    _7559 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    if 0 >= mem[_7559]:
                                        revert with 'NH{q', 50
                                    mem[_7559 + 32] = WBNBAddress
                                    if 1 >= mem[_7559]:
                                        revert with 'NH{q', 50
                                    mem[_7559 + 64] = sub_93a39776Address
                                    if 2 >= mem[_7559]:
                                        revert with 'NH{q', 50
                                    mem[_7559 + 96] = address(arg1)
                                    mem[_7559 + 128] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7559 + 132] = 32
                                    mem[_7559 + 164] = mem[_7559]
                                    s = 0
                                    t = _7559 + 32
                                    u = _7559 + 196
                                    while s < mem[_7559]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7559 + (32 * mem[_7559]) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                        else:
                            _4157 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            if 0 >= mem[_4157]:
                                revert with 'NH{q', 50
                            mem[_4157 + 32] = WBNBAddress
                            if 1 >= mem[_4157]:
                                revert with 'NH{q', 50
                            mem[_4157 + 64] = sub_93a39776Address
                            if 2 >= mem[_4157]:
                                revert with 'NH{q', 50
                            mem[_4157 + 96] = address(arg1)
                            mem[_4157 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4157 + 132] = 0
                            mem[_4157 + 164] = 128
                            mem[_4157 + 260] = mem[_4157]
                            idx = 0
                            s = _4157 + 32
                            t = _4157 + 292
                            while idx < mem[_4157]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4157 + 196] = this.address
                            mem[_4157 + 228] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4157 + (32 * mem[_4157]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5517 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5549 = mem[_5517]
                            require mem[_5517] <= test266151307()
                            require _5517 + mem[_5517] + 31 < _5517 + return_data.size
                            _5581 = mem[_5517 + mem[_5517]]
                            if mem[_5517 + mem[_5517]] > test266151307():
                                revert with 'NH{q', 65
                            if _5517 + ceil32(return_data.size) + floor32(mem[_5517 + mem[_5517]]) + 1 > test266151307() or floor32(mem[_5517 + mem[_5517]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5517 + ceil32(return_data.size) + floor32(mem[_5517 + mem[_5517]]) + 1
                            mem[_5517 + ceil32(return_data.size)] = _5581
                            require _5549 + (32 * _5581) + 32 <= return_data.size
                            idx = _5517 + _5549 + 32
                            s = _5517 + ceil32(return_data.size) + 32
                            while idx < _5517 + _5549 + (32 * _5581) + 32:
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
                            _6669 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6701 = mem[_6669]
                            require mem[_6669] == mem[_6669]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4129 and -stor6 + 10000 > -1 / _4129:
                                revert with 'NH{q', 17
                            if (10000 * _4129) - (stor6 * _4129) / 10000 > mem[_6669]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _6701
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _6701
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6861 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6861] == bool(mem[_6861])
                            if not mem[_6861]:
                                revert with 0, 'HP/HT'
                            idx = 0
                            while idx < sub_7285fd3a.length:
                                mem[0] = 1
                                if sub_93a39776Address == WBNBAddress:
                                    _7558 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    if 0 >= mem[_7558]:
                                        revert with 'NH{q', 50
                                    mem[_7558 + 32] = sub_93a39776Address
                                    if 1 >= mem[_7558]:
                                        revert with 'NH{q', 50
                                    mem[_7558 + 64] = address(arg1)
                                    mem[_7558 + 96] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7558 + 100] = 32
                                    mem[_7558 + 132] = mem[_7558]
                                    s = 0
                                    t = _7558 + 32
                                    u = _7558 + 164
                                    while s < mem[_7558]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7558 + (32 * mem[_7558]) + -mem[64] + 160]
                                else:
                                    _7557 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    if 0 >= mem[_7557]:
                                        revert with 'NH{q', 50
                                    mem[_7557 + 32] = WBNBAddress
                                    if 1 >= mem[_7557]:
                                        revert with 'NH{q', 50
                                    mem[_7557 + 64] = sub_93a39776Address
                                    if 2 >= mem[_7557]:
                                        revert with 'NH{q', 50
                                    mem[_7557 + 96] = address(arg1)
                                    mem[_7557 + 128] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7557 + 132] = 32
                                    mem[_7557 + 164] = mem[_7557]
                                    s = 0
                                    t = _7557 + 32
                                    u = _7557 + 196
                                    while s < mem[_7557]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7557 + (32 * mem[_7557]) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                else:
                    if stor8:
                        revert with 0, 'Locked'
                    if block.timestamp > -10:
                        revert with 'NH{q', 17
                    if sub_93a39776Address == WBNBAddress:
                        _1736 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_1736]:
                            revert with 'NH{q', 50
                        mem[_1736 + 32] = sub_93a39776Address
                        if 1 >= mem[_1736]:
                            revert with 'NH{q', 50
                        mem[_1736 + 64] = address(arg1)
                        mem[_1736 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1736 + 100] = uint256(stor7.field_0)
                        mem[_1736 + 132] = 64
                        mem[_1736 + 164] = mem[_1736]
                        idx = 0
                        s = _1736 + 32
                        t = _1736 + 196
                        while idx < mem[_1736]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(ROUTERAddress)
                        staticcall ROUTERAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1736 + (32 * mem[_1736]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2672 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2696 = mem[_2672]
                        require mem[_2672] <= test266151307()
                        require _2672 + mem[_2672] + 31 < _2672 + return_data.size
                        _2724 = mem[_2672 + mem[_2672]]
                        if mem[_2672 + mem[_2672]] > test266151307():
                            revert with 'NH{q', 65
                        if _2672 + ceil32(return_data.size) + floor32(mem[_2672 + mem[_2672]]) + 1 > test266151307() or floor32(mem[_2672 + mem[_2672]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2672 + ceil32(return_data.size) + floor32(mem[_2672 + mem[_2672]]) + 1
                        mem[_2672 + ceil32(return_data.size)] = _2724
                        require _2696 + (32 * _2724) + 32 <= return_data.size
                        idx = _2672 + _2696 + 32
                        s = _2672 + ceil32(return_data.size) + 32
                        while idx < _2672 + _2696 + (32 * _2724) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if _2724 < 1:
                            revert with 'NH{q', 17
                        if _2724 - 1 >= _2724:
                            revert with 'NH{q', 50
                        _4132 = mem[(32 * _2724 - 1) + _2672 + ceil32(return_data.size) + 32]
                        if sub_93a39776Address == WBNBAddress:
                            _4164 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_4164]:
                                revert with 'NH{q', 50
                            mem[_4164 + 32] = sub_93a39776Address
                            if 1 >= mem[_4164]:
                                revert with 'NH{q', 50
                            mem[_4164 + 64] = address(arg1)
                            mem[_4164 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4164 + 100] = 0
                            mem[_4164 + 132] = 128
                            mem[_4164 + 228] = mem[_4164]
                            idx = 0
                            s = _4164 + 32
                            t = _4164 + 260
                            while idx < mem[_4164]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4164 + 164] = this.address
                            mem[_4164 + 196] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4164 + (32 * mem[_4164]) + -mem[64] + 256]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5524 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5556 = mem[_5524]
                            require mem[_5524] <= test266151307()
                            require _5524 + mem[_5524] + 31 < _5524 + return_data.size
                            _5588 = mem[_5524 + mem[_5524]]
                            if mem[_5524 + mem[_5524]] > test266151307():
                                revert with 'NH{q', 65
                            if _5524 + ceil32(return_data.size) + floor32(mem[_5524 + mem[_5524]]) + 1 > test266151307() or floor32(mem[_5524 + mem[_5524]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5524 + ceil32(return_data.size) + floor32(mem[_5524 + mem[_5524]]) + 1
                            mem[_5524 + ceil32(return_data.size)] = _5588
                            require _5556 + (32 * _5588) + 32 <= return_data.size
                            idx = _5524 + _5556 + 32
                            s = _5524 + ceil32(return_data.size) + 32
                            while idx < _5524 + _5556 + (32 * _5588) + 32:
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
                            _6676 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6708 = mem[_6676]
                            require mem[_6676] == mem[_6676]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4132 and -stor6 + 10000 > -1 / _4132:
                                revert with 'NH{q', 17
                            if (10000 * _4132) - (stor6 * _4132) / 10000 > mem[_6676]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _6708
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _6708
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6868 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6868] == bool(mem[_6868])
                            if not mem[_6868]:
                                revert with 0, 'HP/HT'
                            idx = 0
                            while idx < sub_7285fd3a.length:
                                mem[0] = 1
                                if sub_93a39776Address == WBNBAddress:
                                    _7572 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    if 0 >= mem[_7572]:
                                        revert with 'NH{q', 50
                                    mem[_7572 + 32] = sub_93a39776Address
                                    if 1 >= mem[_7572]:
                                        revert with 'NH{q', 50
                                    mem[_7572 + 64] = address(arg1)
                                    mem[_7572 + 96] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7572 + 100] = 32
                                    mem[_7572 + 132] = mem[_7572]
                                    s = 0
                                    t = _7572 + 32
                                    u = _7572 + 164
                                    while s < mem[_7572]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7572 + (32 * mem[_7572]) + -mem[64] + 160]
                                else:
                                    _7571 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    if 0 >= mem[_7571]:
                                        revert with 'NH{q', 50
                                    mem[_7571 + 32] = WBNBAddress
                                    if 1 >= mem[_7571]:
                                        revert with 'NH{q', 50
                                    mem[_7571 + 64] = sub_93a39776Address
                                    if 2 >= mem[_7571]:
                                        revert with 'NH{q', 50
                                    mem[_7571 + 96] = address(arg1)
                                    mem[_7571 + 128] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7571 + 132] = 32
                                    mem[_7571 + 164] = mem[_7571]
                                    s = 0
                                    t = _7571 + 32
                                    u = _7571 + 196
                                    while s < mem[_7571]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7571 + (32 * mem[_7571]) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                        else:
                            _4163 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            if 0 >= mem[_4163]:
                                revert with 'NH{q', 50
                            mem[_4163 + 32] = WBNBAddress
                            if 1 >= mem[_4163]:
                                revert with 'NH{q', 50
                            mem[_4163 + 64] = sub_93a39776Address
                            if 2 >= mem[_4163]:
                                revert with 'NH{q', 50
                            mem[_4163 + 96] = address(arg1)
                            mem[_4163 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4163 + 132] = 0
                            mem[_4163 + 164] = 128
                            mem[_4163 + 260] = mem[_4163]
                            idx = 0
                            s = _4163 + 32
                            t = _4163 + 292
                            while idx < mem[_4163]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4163 + 196] = this.address
                            mem[_4163 + 228] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4163 + (32 * mem[_4163]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5523 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5555 = mem[_5523]
                            require mem[_5523] <= test266151307()
                            require _5523 + mem[_5523] + 31 < _5523 + return_data.size
                            _5587 = mem[_5523 + mem[_5523]]
                            if mem[_5523 + mem[_5523]] > test266151307():
                                revert with 'NH{q', 65
                            if _5523 + ceil32(return_data.size) + floor32(mem[_5523 + mem[_5523]]) + 1 > test266151307() or floor32(mem[_5523 + mem[_5523]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5523 + ceil32(return_data.size) + floor32(mem[_5523 + mem[_5523]]) + 1
                            mem[_5523 + ceil32(return_data.size)] = _5587
                            require _5555 + (32 * _5587) + 32 <= return_data.size
                            idx = _5523 + _5555 + 32
                            s = _5523 + ceil32(return_data.size) + 32
                            while idx < _5523 + _5555 + (32 * _5587) + 32:
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
                            _6675 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6707 = mem[_6675]
                            require mem[_6675] == mem[_6675]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4132 and -stor6 + 10000 > -1 / _4132:
                                revert with 'NH{q', 17
                            if (10000 * _4132) - (stor6 * _4132) / 10000 > mem[_6675]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _6707
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _6707
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6867 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6867] == bool(mem[_6867])
                            if not mem[_6867]:
                                revert with 0, 'HP/HT'
                            idx = 0
                            while idx < sub_7285fd3a.length:
                                mem[0] = 1
                                if sub_93a39776Address == WBNBAddress:
                                    _7570 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    if 0 >= mem[_7570]:
                                        revert with 'NH{q', 50
                                    mem[_7570 + 32] = sub_93a39776Address
                                    if 1 >= mem[_7570]:
                                        revert with 'NH{q', 50
                                    mem[_7570 + 64] = address(arg1)
                                    mem[_7570 + 96] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7570 + 100] = 32
                                    mem[_7570 + 132] = mem[_7570]
                                    s = 0
                                    t = _7570 + 32
                                    u = _7570 + 164
                                    while s < mem[_7570]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7570 + (32 * mem[_7570]) + -mem[64] + 160]
                                else:
                                    _7569 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    if 0 >= mem[_7569]:
                                        revert with 'NH{q', 50
                                    mem[_7569 + 32] = WBNBAddress
                                    if 1 >= mem[_7569]:
                                        revert with 'NH{q', 50
                                    mem[_7569 + 64] = sub_93a39776Address
                                    if 2 >= mem[_7569]:
                                        revert with 'NH{q', 50
                                    mem[_7569 + 96] = address(arg1)
                                    mem[_7569 + 128] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7569 + 132] = 32
                                    mem[_7569 + 164] = mem[_7569]
                                    s = 0
                                    t = _7569 + 32
                                    u = _7569 + 196
                                    while s < mem[_7569]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7569 + (32 * mem[_7569]) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                    else:
                        _1735 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if 0 >= mem[_1735]:
                            revert with 'NH{q', 50
                        mem[_1735 + 32] = WBNBAddress
                        if 1 >= mem[_1735]:
                            revert with 'NH{q', 50
                        mem[_1735 + 64] = sub_93a39776Address
                        if 2 >= mem[_1735]:
                            revert with 'NH{q', 50
                        mem[_1735 + 96] = address(arg1)
                        mem[_1735 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1735 + 132] = uint256(stor7.field_0)
                        mem[_1735 + 164] = 64
                        mem[_1735 + 196] = mem[_1735]
                        idx = 0
                        s = _1735 + 32
                        t = _1735 + 228
                        while idx < mem[_1735]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(ROUTERAddress)
                        staticcall ROUTERAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1735 + (32 * mem[_1735]) + -mem[64] + 224]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2671 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2695 = mem[_2671]
                        require mem[_2671] <= test266151307()
                        require _2671 + mem[_2671] + 31 < _2671 + return_data.size
                        _2723 = mem[_2671 + mem[_2671]]
                        if mem[_2671 + mem[_2671]] > test266151307():
                            revert with 'NH{q', 65
                        if _2671 + ceil32(return_data.size) + floor32(mem[_2671 + mem[_2671]]) + 1 > test266151307() or floor32(mem[_2671 + mem[_2671]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2671 + ceil32(return_data.size) + floor32(mem[_2671 + mem[_2671]]) + 1
                        mem[_2671 + ceil32(return_data.size)] = _2723
                        require _2695 + (32 * _2723) + 32 <= return_data.size
                        idx = _2671 + _2695 + 32
                        s = _2671 + ceil32(return_data.size) + 32
                        while idx < _2671 + _2695 + (32 * _2723) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if _2723 < 1:
                            revert with 'NH{q', 17
                        if _2723 - 1 >= _2723:
                            revert with 'NH{q', 50
                        _4131 = mem[(32 * _2723 - 1) + _2671 + ceil32(return_data.size) + 32]
                        if sub_93a39776Address == WBNBAddress:
                            _4162 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_4162]:
                                revert with 'NH{q', 50
                            mem[_4162 + 32] = sub_93a39776Address
                            if 1 >= mem[_4162]:
                                revert with 'NH{q', 50
                            mem[_4162 + 64] = address(arg1)
                            mem[_4162 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4162 + 100] = 0
                            mem[_4162 + 132] = 128
                            mem[_4162 + 228] = mem[_4162]
                            idx = 0
                            s = _4162 + 32
                            t = _4162 + 260
                            while idx < mem[_4162]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4162 + 164] = this.address
                            mem[_4162 + 196] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4162 + (32 * mem[_4162]) + -mem[64] + 256]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5522 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5554 = mem[_5522]
                            require mem[_5522] <= test266151307()
                            require _5522 + mem[_5522] + 31 < _5522 + return_data.size
                            _5586 = mem[_5522 + mem[_5522]]
                            if mem[_5522 + mem[_5522]] > test266151307():
                                revert with 'NH{q', 65
                            if _5522 + ceil32(return_data.size) + floor32(mem[_5522 + mem[_5522]]) + 1 > test266151307() or floor32(mem[_5522 + mem[_5522]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5522 + ceil32(return_data.size) + floor32(mem[_5522 + mem[_5522]]) + 1
                            mem[_5522 + ceil32(return_data.size)] = _5586
                            require _5554 + (32 * _5586) + 32 <= return_data.size
                            idx = _5522 + _5554 + 32
                            s = _5522 + ceil32(return_data.size) + 32
                            while idx < _5522 + _5554 + (32 * _5586) + 32:
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
                            _6674 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6706 = mem[_6674]
                            require mem[_6674] == mem[_6674]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4131 and -stor6 + 10000 > -1 / _4131:
                                revert with 'NH{q', 17
                            if (10000 * _4131) - (stor6 * _4131) / 10000 > mem[_6674]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _6706
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _6706
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6866 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6866] == bool(mem[_6866])
                            if not mem[_6866]:
                                revert with 0, 'HP/HT'
                            idx = 0
                            while idx < sub_7285fd3a.length:
                                mem[0] = 1
                                if sub_93a39776Address == WBNBAddress:
                                    _7568 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    if 0 >= mem[_7568]:
                                        revert with 'NH{q', 50
                                    mem[_7568 + 32] = sub_93a39776Address
                                    if 1 >= mem[_7568]:
                                        revert with 'NH{q', 50
                                    mem[_7568 + 64] = address(arg1)
                                    mem[_7568 + 96] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7568 + 100] = 32
                                    mem[_7568 + 132] = mem[_7568]
                                    s = 0
                                    t = _7568 + 32
                                    u = _7568 + 164
                                    while s < mem[_7568]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7568 + (32 * mem[_7568]) + -mem[64] + 160]
                                else:
                                    _7567 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    if 0 >= mem[_7567]:
                                        revert with 'NH{q', 50
                                    mem[_7567 + 32] = WBNBAddress
                                    if 1 >= mem[_7567]:
                                        revert with 'NH{q', 50
                                    mem[_7567 + 64] = sub_93a39776Address
                                    if 2 >= mem[_7567]:
                                        revert with 'NH{q', 50
                                    mem[_7567 + 96] = address(arg1)
                                    mem[_7567 + 128] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7567 + 132] = 32
                                    mem[_7567 + 164] = mem[_7567]
                                    s = 0
                                    t = _7567 + 32
                                    u = _7567 + 196
                                    while s < mem[_7567]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7567 + (32 * mem[_7567]) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                        else:
                            _4161 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            if 0 >= mem[_4161]:
                                revert with 'NH{q', 50
                            mem[_4161 + 32] = WBNBAddress
                            if 1 >= mem[_4161]:
                                revert with 'NH{q', 50
                            mem[_4161 + 64] = sub_93a39776Address
                            if 2 >= mem[_4161]:
                                revert with 'NH{q', 50
                            mem[_4161 + 96] = address(arg1)
                            mem[_4161 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4161 + 132] = 0
                            mem[_4161 + 164] = 128
                            mem[_4161 + 260] = mem[_4161]
                            idx = 0
                            s = _4161 + 32
                            t = _4161 + 292
                            while idx < mem[_4161]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4161 + 196] = this.address
                            mem[_4161 + 228] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4161 + (32 * mem[_4161]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5521 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5553 = mem[_5521]
                            require mem[_5521] <= test266151307()
                            require _5521 + mem[_5521] + 31 < _5521 + return_data.size
                            _5585 = mem[_5521 + mem[_5521]]
                            if mem[_5521 + mem[_5521]] > test266151307():
                                revert with 'NH{q', 65
                            if _5521 + ceil32(return_data.size) + floor32(mem[_5521 + mem[_5521]]) + 1 > test266151307() or floor32(mem[_5521 + mem[_5521]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5521 + ceil32(return_data.size) + floor32(mem[_5521 + mem[_5521]]) + 1
                            mem[_5521 + ceil32(return_data.size)] = _5585
                            require _5553 + (32 * _5585) + 32 <= return_data.size
                            idx = _5521 + _5553 + 32
                            s = _5521 + ceil32(return_data.size) + 32
                            while idx < _5521 + _5553 + (32 * _5585) + 32:
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
                            _6673 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6705 = mem[_6673]
                            require mem[_6673] == mem[_6673]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4131 and -stor6 + 10000 > -1 / _4131:
                                revert with 'NH{q', 17
                            if (10000 * _4131) - (stor6 * _4131) / 10000 > mem[_6673]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _6705
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _6705
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6865 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6865] == bool(mem[_6865])
                            if not mem[_6865]:
                                revert with 0, 'HP/HT'
                            idx = 0
                            while idx < sub_7285fd3a.length:
                                mem[0] = 1
                                if sub_93a39776Address == WBNBAddress:
                                    _7566 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    if 0 >= mem[_7566]:
                                        revert with 'NH{q', 50
                                    mem[_7566 + 32] = sub_93a39776Address
                                    if 1 >= mem[_7566]:
                                        revert with 'NH{q', 50
                                    mem[_7566 + 64] = address(arg1)
                                    mem[_7566 + 96] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7566 + 100] = 32
                                    mem[_7566 + 132] = mem[_7566]
                                    s = 0
                                    t = _7566 + 32
                                    u = _7566 + 164
                                    while s < mem[_7566]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7566 + (32 * mem[_7566]) + -mem[64] + 160]
                                else:
                                    _7565 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    if 0 >= mem[_7565]:
                                        revert with 'NH{q', 50
                                    mem[_7565 + 32] = WBNBAddress
                                    if 1 >= mem[_7565]:
                                        revert with 'NH{q', 50
                                    mem[_7565 + 64] = sub_93a39776Address
                                    if 2 >= mem[_7565]:
                                        revert with 'NH{q', 50
                                    mem[_7565 + 96] = address(arg1)
                                    mem[_7565 + 128] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7565 + 132] = 32
                                    mem[_7565 + 164] = mem[_7565]
                                    s = 0
                                    t = _7565 + 32
                                    u = _7565 + 196
                                    while s < mem[_7565]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7565 + (32 * mem[_7565]) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
        else:
            mem[96] = 3
            mem[128] = WBNBAddress
            mem[160] = sub_93a39776Address
            mem[192] = address(arg1)
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
            _775 = mem[224 len 4], Mask(224, 0, stor9.field_32)
            require mem[224 len 4], Mask(224, 0, stor9.field_32) <= test266151307()
            require mem[224 len 4], Mask(224, 0, stor9.field_32) + 255 < return_data.size + 224
            _779 = mem[mem[224 len 4], Mask(224, 0, stor9.field_32) + 224]
            if mem[mem[224 len 4], Mask(224, 0, stor9.field_32) + 224] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[224 len 4], Mask(224, 0, stor9.field_32) + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], Mask(224, 0, stor9.field_32) + 224]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], Mask(224, 0, stor9.field_32) + 224]) + 225
            mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 0, stor9.field_32) + 224]
            require _775 + (32 * _779) + 32 <= return_data.size
            idx = _775 + 256
            s = ceil32(return_data.size) + 256
            while idx < _775 + (32 * _779) + 256:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            if 0 >= _779:
                revert with 'NH{q', 50
            if mem[ceil32(return_data.size) + 256] > eth.balance(this.address):
                revert with 0, 'Locked'
            if bool(uint8(stor5.field_160)) != 1:
                idx = 0
                while idx < sub_7285fd3a.length:
                    mem[0] = 1
                    if sub_93a39776Address == WBNBAddress:
                        _2662 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_2662]:
                            revert with 'NH{q', 50
                        mem[_2662 + 32] = sub_93a39776Address
                        if 1 >= mem[_2662]:
                            revert with 'NH{q', 50
                        mem[_2662 + 64] = address(arg1)
                        mem[_2662 + 96] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                        mem[_2662 + 100] = 32
                        mem[_2662 + 132] = mem[_2662]
                        s = 0
                        t = _2662 + 32
                        u = _2662 + 164
                        while s < mem[_2662]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(address(sub_7285fd3a[idx]))
                        call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _2662 + (32 * mem[_2662]) + -mem[64] + 160]
                    else:
                        _2661 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if 0 >= mem[_2661]:
                            revert with 'NH{q', 50
                        mem[_2661 + 32] = WBNBAddress
                        if 1 >= mem[_2661]:
                            revert with 'NH{q', 50
                        mem[_2661 + 64] = sub_93a39776Address
                        if 2 >= mem[_2661]:
                            revert with 'NH{q', 50
                        mem[_2661 + 96] = address(arg1)
                        mem[_2661 + 128] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                        mem[_2661 + 132] = 32
                        mem[_2661 + 164] = mem[_2661]
                        s = 0
                        t = _2661 + 32
                        u = _2661 + 196
                        while s < mem[_2661]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(address(sub_7285fd3a[idx]))
                        call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _2661 + (32 * mem[_2661]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
            else:
                if msg.sender == address(stor5.field_0):
                    if block.timestamp > -10:
                        revert with 'NH{q', 17
                    if sub_93a39776Address == WBNBAddress:
                        _1725 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_1725]:
                            revert with 'NH{q', 50
                        mem[_1725 + 32] = sub_93a39776Address
                        if 1 >= mem[_1725]:
                            revert with 'NH{q', 50
                        mem[_1725 + 64] = address(arg1)
                        mem[_1725 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1725 + 100] = uint256(stor7.field_0)
                        mem[_1725 + 132] = 64
                        mem[_1725 + 164] = mem[_1725]
                        idx = 0
                        s = _1725 + 32
                        t = _1725 + 196
                        while idx < mem[_1725]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(ROUTERAddress)
                        staticcall ROUTERAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1725 + (32 * mem[_1725]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2664 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2688 = mem[_2664]
                        require mem[_2664] <= test266151307()
                        require _2664 + mem[_2664] + 31 < _2664 + return_data.size
                        _2718 = mem[_2664 + mem[_2664]]
                        if mem[_2664 + mem[_2664]] > test266151307():
                            revert with 'NH{q', 65
                        if _2664 + ceil32(return_data.size) + floor32(mem[_2664 + mem[_2664]]) + 1 > test266151307() or floor32(mem[_2664 + mem[_2664]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2664 + ceil32(return_data.size) + floor32(mem[_2664 + mem[_2664]]) + 1
                        mem[_2664 + ceil32(return_data.size)] = _2718
                        require _2688 + (32 * _2718) + 32 <= return_data.size
                        idx = _2664 + _2688 + 32
                        s = _2664 + ceil32(return_data.size) + 32
                        while idx < _2664 + _2688 + (32 * _2718) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if _2718 < 1:
                            revert with 'NH{q', 17
                        if _2718 - 1 >= _2718:
                            revert with 'NH{q', 50
                        _4126 = mem[(32 * _2718 - 1) + _2664 + ceil32(return_data.size) + 32]
                        if sub_93a39776Address == WBNBAddress:
                            _4152 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_4152]:
                                revert with 'NH{q', 50
                            mem[_4152 + 32] = sub_93a39776Address
                            if 1 >= mem[_4152]:
                                revert with 'NH{q', 50
                            mem[_4152 + 64] = address(arg1)
                            mem[_4152 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4152 + 100] = 0
                            mem[_4152 + 132] = 128
                            mem[_4152 + 228] = mem[_4152]
                            idx = 0
                            s = _4152 + 32
                            t = _4152 + 260
                            while idx < mem[_4152]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4152 + 164] = this.address
                            mem[_4152 + 196] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4152 + (32 * mem[_4152]) + -mem[64] + 256]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5512 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5544 = mem[_5512]
                            require mem[_5512] <= test266151307()
                            require _5512 + mem[_5512] + 31 < _5512 + return_data.size
                            _5576 = mem[_5512 + mem[_5512]]
                            if mem[_5512 + mem[_5512]] > test266151307():
                                revert with 'NH{q', 65
                            if _5512 + ceil32(return_data.size) + floor32(mem[_5512 + mem[_5512]]) + 1 > test266151307() or floor32(mem[_5512 + mem[_5512]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5512 + ceil32(return_data.size) + floor32(mem[_5512 + mem[_5512]]) + 1
                            mem[_5512 + ceil32(return_data.size)] = _5576
                            require _5544 + (32 * _5576) + 32 <= return_data.size
                            idx = _5512 + _5544 + 32
                            s = _5512 + ceil32(return_data.size) + 32
                            while idx < _5512 + _5544 + (32 * _5576) + 32:
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
                            _6664 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6696 = mem[_6664]
                            require mem[_6664] == mem[_6664]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4126 and -stor6 + 10000 > -1 / _4126:
                                revert with 'NH{q', 17
                            if (10000 * _4126) - (stor6 * _4126) / 10000 > mem[_6664]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _6696
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _6696
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6856 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6856] == bool(mem[_6856])
                            if not mem[_6856]:
                                revert with 0, 'HP/HT'
                            idx = 0
                            while idx < sub_7285fd3a.length:
                                mem[0] = 1
                                if sub_93a39776Address == WBNBAddress:
                                    _7548 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    if 0 >= mem[_7548]:
                                        revert with 'NH{q', 50
                                    mem[_7548 + 32] = sub_93a39776Address
                                    if 1 >= mem[_7548]:
                                        revert with 'NH{q', 50
                                    mem[_7548 + 64] = address(arg1)
                                    mem[_7548 + 96] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7548 + 100] = 32
                                    mem[_7548 + 132] = mem[_7548]
                                    s = 0
                                    t = _7548 + 32
                                    u = _7548 + 164
                                    while s < mem[_7548]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7548 + (32 * mem[_7548]) + -mem[64] + 160]
                                else:
                                    _7547 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    if 0 >= mem[_7547]:
                                        revert with 'NH{q', 50
                                    mem[_7547 + 32] = WBNBAddress
                                    if 1 >= mem[_7547]:
                                        revert with 'NH{q', 50
                                    mem[_7547 + 64] = sub_93a39776Address
                                    if 2 >= mem[_7547]:
                                        revert with 'NH{q', 50
                                    mem[_7547 + 96] = address(arg1)
                                    mem[_7547 + 128] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7547 + 132] = 32
                                    mem[_7547 + 164] = mem[_7547]
                                    s = 0
                                    t = _7547 + 32
                                    u = _7547 + 196
                                    while s < mem[_7547]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7547 + (32 * mem[_7547]) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                        else:
                            _4151 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            if 0 >= mem[_4151]:
                                revert with 'NH{q', 50
                            mem[_4151 + 32] = WBNBAddress
                            if 1 >= mem[_4151]:
                                revert with 'NH{q', 50
                            mem[_4151 + 64] = sub_93a39776Address
                            if 2 >= mem[_4151]:
                                revert with 'NH{q', 50
                            mem[_4151 + 96] = address(arg1)
                            mem[_4151 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4151 + 132] = 0
                            mem[_4151 + 164] = 128
                            mem[_4151 + 260] = mem[_4151]
                            idx = 0
                            s = _4151 + 32
                            t = _4151 + 292
                            while idx < mem[_4151]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4151 + 196] = this.address
                            mem[_4151 + 228] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4151 + (32 * mem[_4151]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5511 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5543 = mem[_5511]
                            require mem[_5511] <= test266151307()
                            require _5511 + mem[_5511] + 31 < _5511 + return_data.size
                            _5575 = mem[_5511 + mem[_5511]]
                            if mem[_5511 + mem[_5511]] > test266151307():
                                revert with 'NH{q', 65
                            if _5511 + ceil32(return_data.size) + floor32(mem[_5511 + mem[_5511]]) + 1 > test266151307() or floor32(mem[_5511 + mem[_5511]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5511 + ceil32(return_data.size) + floor32(mem[_5511 + mem[_5511]]) + 1
                            mem[_5511 + ceil32(return_data.size)] = _5575
                            require _5543 + (32 * _5575) + 32 <= return_data.size
                            idx = _5511 + _5543 + 32
                            s = _5511 + ceil32(return_data.size) + 32
                            while idx < _5511 + _5543 + (32 * _5575) + 32:
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
                            _6663 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6695 = mem[_6663]
                            require mem[_6663] == mem[_6663]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4126 and -stor6 + 10000 > -1 / _4126:
                                revert with 'NH{q', 17
                            if (10000 * _4126) - (stor6 * _4126) / 10000 > mem[_6663]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _6695
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _6695
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6855 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6855] == bool(mem[_6855])
                            if not mem[_6855]:
                                revert with 0, 'HP/HT'
                            idx = 0
                            while idx < sub_7285fd3a.length:
                                mem[0] = 1
                                if sub_93a39776Address == WBNBAddress:
                                    _7546 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    if 0 >= mem[_7546]:
                                        revert with 'NH{q', 50
                                    mem[_7546 + 32] = sub_93a39776Address
                                    if 1 >= mem[_7546]:
                                        revert with 'NH{q', 50
                                    mem[_7546 + 64] = address(arg1)
                                    mem[_7546 + 96] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7546 + 100] = 32
                                    mem[_7546 + 132] = mem[_7546]
                                    s = 0
                                    t = _7546 + 32
                                    u = _7546 + 164
                                    while s < mem[_7546]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7546 + (32 * mem[_7546]) + -mem[64] + 160]
                                else:
                                    _7545 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    if 0 >= mem[_7545]:
                                        revert with 'NH{q', 50
                                    mem[_7545 + 32] = WBNBAddress
                                    if 1 >= mem[_7545]:
                                        revert with 'NH{q', 50
                                    mem[_7545 + 64] = sub_93a39776Address
                                    if 2 >= mem[_7545]:
                                        revert with 'NH{q', 50
                                    mem[_7545 + 96] = address(arg1)
                                    mem[_7545 + 128] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7545 + 132] = 32
                                    mem[_7545 + 164] = mem[_7545]
                                    s = 0
                                    t = _7545 + 32
                                    u = _7545 + 196
                                    while s < mem[_7545]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7545 + (32 * mem[_7545]) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                    else:
                        _1724 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if 0 >= mem[_1724]:
                            revert with 'NH{q', 50
                        mem[_1724 + 32] = WBNBAddress
                        if 1 >= mem[_1724]:
                            revert with 'NH{q', 50
                        mem[_1724 + 64] = sub_93a39776Address
                        if 2 >= mem[_1724]:
                            revert with 'NH{q', 50
                        mem[_1724 + 96] = address(arg1)
                        mem[_1724 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1724 + 132] = uint256(stor7.field_0)
                        mem[_1724 + 164] = 64
                        mem[_1724 + 196] = mem[_1724]
                        idx = 0
                        s = _1724 + 32
                        t = _1724 + 228
                        while idx < mem[_1724]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(ROUTERAddress)
                        staticcall ROUTERAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1724 + (32 * mem[_1724]) + -mem[64] + 224]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2663 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2687 = mem[_2663]
                        require mem[_2663] <= test266151307()
                        require _2663 + mem[_2663] + 31 < _2663 + return_data.size
                        _2717 = mem[_2663 + mem[_2663]]
                        if mem[_2663 + mem[_2663]] > test266151307():
                            revert with 'NH{q', 65
                        if _2663 + ceil32(return_data.size) + floor32(mem[_2663 + mem[_2663]]) + 1 > test266151307() or floor32(mem[_2663 + mem[_2663]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2663 + ceil32(return_data.size) + floor32(mem[_2663 + mem[_2663]]) + 1
                        mem[_2663 + ceil32(return_data.size)] = _2717
                        require _2687 + (32 * _2717) + 32 <= return_data.size
                        idx = _2663 + _2687 + 32
                        s = _2663 + ceil32(return_data.size) + 32
                        while idx < _2663 + _2687 + (32 * _2717) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if _2717 < 1:
                            revert with 'NH{q', 17
                        if _2717 - 1 >= _2717:
                            revert with 'NH{q', 50
                        _4125 = mem[(32 * _2717 - 1) + _2663 + ceil32(return_data.size) + 32]
                        if sub_93a39776Address == WBNBAddress:
                            _4150 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_4150]:
                                revert with 'NH{q', 50
                            mem[_4150 + 32] = sub_93a39776Address
                            if 1 >= mem[_4150]:
                                revert with 'NH{q', 50
                            mem[_4150 + 64] = address(arg1)
                            mem[_4150 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4150 + 100] = 0
                            mem[_4150 + 132] = 128
                            mem[_4150 + 228] = mem[_4150]
                            idx = 0
                            s = _4150 + 32
                            t = _4150 + 260
                            while idx < mem[_4150]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4150 + 164] = this.address
                            mem[_4150 + 196] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4150 + (32 * mem[_4150]) + -mem[64] + 256]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5510 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5542 = mem[_5510]
                            require mem[_5510] <= test266151307()
                            require _5510 + mem[_5510] + 31 < _5510 + return_data.size
                            _5574 = mem[_5510 + mem[_5510]]
                            if mem[_5510 + mem[_5510]] > test266151307():
                                revert with 'NH{q', 65
                            if _5510 + ceil32(return_data.size) + floor32(mem[_5510 + mem[_5510]]) + 1 > test266151307() or floor32(mem[_5510 + mem[_5510]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5510 + ceil32(return_data.size) + floor32(mem[_5510 + mem[_5510]]) + 1
                            mem[_5510 + ceil32(return_data.size)] = _5574
                            require _5542 + (32 * _5574) + 32 <= return_data.size
                            idx = _5510 + _5542 + 32
                            s = _5510 + ceil32(return_data.size) + 32
                            while idx < _5510 + _5542 + (32 * _5574) + 32:
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
                            _6662 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6694 = mem[_6662]
                            require mem[_6662] == mem[_6662]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4125 and -stor6 + 10000 > -1 / _4125:
                                revert with 'NH{q', 17
                            if (10000 * _4125) - (stor6 * _4125) / 10000 > mem[_6662]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _6694
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _6694
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6854 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6854] == bool(mem[_6854])
                            if not mem[_6854]:
                                revert with 0, 'HP/HT'
                            idx = 0
                            while idx < sub_7285fd3a.length:
                                mem[0] = 1
                                if sub_93a39776Address == WBNBAddress:
                                    _7544 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    if 0 >= mem[_7544]:
                                        revert with 'NH{q', 50
                                    mem[_7544 + 32] = sub_93a39776Address
                                    if 1 >= mem[_7544]:
                                        revert with 'NH{q', 50
                                    mem[_7544 + 64] = address(arg1)
                                    mem[_7544 + 96] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7544 + 100] = 32
                                    mem[_7544 + 132] = mem[_7544]
                                    s = 0
                                    t = _7544 + 32
                                    u = _7544 + 164
                                    while s < mem[_7544]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7544 + (32 * mem[_7544]) + -mem[64] + 160]
                                else:
                                    _7543 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    if 0 >= mem[_7543]:
                                        revert with 'NH{q', 50
                                    mem[_7543 + 32] = WBNBAddress
                                    if 1 >= mem[_7543]:
                                        revert with 'NH{q', 50
                                    mem[_7543 + 64] = sub_93a39776Address
                                    if 2 >= mem[_7543]:
                                        revert with 'NH{q', 50
                                    mem[_7543 + 96] = address(arg1)
                                    mem[_7543 + 128] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7543 + 132] = 32
                                    mem[_7543 + 164] = mem[_7543]
                                    s = 0
                                    t = _7543 + 32
                                    u = _7543 + 196
                                    while s < mem[_7543]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7543 + (32 * mem[_7543]) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                        else:
                            _4149 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            if 0 >= mem[_4149]:
                                revert with 'NH{q', 50
                            mem[_4149 + 32] = WBNBAddress
                            if 1 >= mem[_4149]:
                                revert with 'NH{q', 50
                            mem[_4149 + 64] = sub_93a39776Address
                            if 2 >= mem[_4149]:
                                revert with 'NH{q', 50
                            mem[_4149 + 96] = address(arg1)
                            mem[_4149 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4149 + 132] = 0
                            mem[_4149 + 164] = 128
                            mem[_4149 + 260] = mem[_4149]
                            idx = 0
                            s = _4149 + 32
                            t = _4149 + 292
                            while idx < mem[_4149]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4149 + 196] = this.address
                            mem[_4149 + 228] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4149 + (32 * mem[_4149]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5509 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5541 = mem[_5509]
                            require mem[_5509] <= test266151307()
                            require _5509 + mem[_5509] + 31 < _5509 + return_data.size
                            _5573 = mem[_5509 + mem[_5509]]
                            if mem[_5509 + mem[_5509]] > test266151307():
                                revert with 'NH{q', 65
                            if _5509 + ceil32(return_data.size) + floor32(mem[_5509 + mem[_5509]]) + 1 > test266151307() or floor32(mem[_5509 + mem[_5509]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5509 + ceil32(return_data.size) + floor32(mem[_5509 + mem[_5509]]) + 1
                            mem[_5509 + ceil32(return_data.size)] = _5573
                            require _5541 + (32 * _5573) + 32 <= return_data.size
                            idx = _5509 + _5541 + 32
                            s = _5509 + ceil32(return_data.size) + 32
                            while idx < _5509 + _5541 + (32 * _5573) + 32:
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
                            _6661 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6693 = mem[_6661]
                            require mem[_6661] == mem[_6661]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4125 and -stor6 + 10000 > -1 / _4125:
                                revert with 'NH{q', 17
                            if (10000 * _4125) - (stor6 * _4125) / 10000 > mem[_6661]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _6693
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _6693
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6853 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6853] == bool(mem[_6853])
                            if not mem[_6853]:
                                revert with 0, 'HP/HT'
                            idx = 0
                            while idx < sub_7285fd3a.length:
                                mem[0] = 1
                                if sub_93a39776Address == WBNBAddress:
                                    _7542 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    if 0 >= mem[_7542]:
                                        revert with 'NH{q', 50
                                    mem[_7542 + 32] = sub_93a39776Address
                                    if 1 >= mem[_7542]:
                                        revert with 'NH{q', 50
                                    mem[_7542 + 64] = address(arg1)
                                    mem[_7542 + 96] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7542 + 100] = 32
                                    mem[_7542 + 132] = mem[_7542]
                                    s = 0
                                    t = _7542 + 32
                                    u = _7542 + 164
                                    while s < mem[_7542]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7542 + (32 * mem[_7542]) + -mem[64] + 160]
                                else:
                                    _7541 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    if 0 >= mem[_7541]:
                                        revert with 'NH{q', 50
                                    mem[_7541 + 32] = WBNBAddress
                                    if 1 >= mem[_7541]:
                                        revert with 'NH{q', 50
                                    mem[_7541 + 64] = sub_93a39776Address
                                    if 2 >= mem[_7541]:
                                        revert with 'NH{q', 50
                                    mem[_7541 + 96] = address(arg1)
                                    mem[_7541 + 128] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7541 + 132] = 32
                                    mem[_7541 + 164] = mem[_7541]
                                    s = 0
                                    t = _7541 + 32
                                    u = _7541 + 196
                                    while s < mem[_7541]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7541 + (32 * mem[_7541]) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                else:
                    if stor8:
                        revert with 0, 'Locked'
                    if block.timestamp > -10:
                        revert with 'NH{q', 17
                    if sub_93a39776Address == WBNBAddress:
                        _1734 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_1734]:
                            revert with 'NH{q', 50
                        mem[_1734 + 32] = sub_93a39776Address
                        if 1 >= mem[_1734]:
                            revert with 'NH{q', 50
                        mem[_1734 + 64] = address(arg1)
                        mem[_1734 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1734 + 100] = uint256(stor7.field_0)
                        mem[_1734 + 132] = 64
                        mem[_1734 + 164] = mem[_1734]
                        idx = 0
                        s = _1734 + 32
                        t = _1734 + 196
                        while idx < mem[_1734]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(ROUTERAddress)
                        staticcall ROUTERAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1734 + (32 * mem[_1734]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2666 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2690 = mem[_2666]
                        require mem[_2666] <= test266151307()
                        require _2666 + mem[_2666] + 31 < _2666 + return_data.size
                        _2720 = mem[_2666 + mem[_2666]]
                        if mem[_2666 + mem[_2666]] > test266151307():
                            revert with 'NH{q', 65
                        if _2666 + ceil32(return_data.size) + floor32(mem[_2666 + mem[_2666]]) + 1 > test266151307() or floor32(mem[_2666 + mem[_2666]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2666 + ceil32(return_data.size) + floor32(mem[_2666 + mem[_2666]]) + 1
                        mem[_2666 + ceil32(return_data.size)] = _2720
                        require _2690 + (32 * _2720) + 32 <= return_data.size
                        idx = _2666 + _2690 + 32
                        s = _2666 + ceil32(return_data.size) + 32
                        while idx < _2666 + _2690 + (32 * _2720) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if _2720 < 1:
                            revert with 'NH{q', 17
                        if _2720 - 1 >= _2720:
                            revert with 'NH{q', 50
                        _4128 = mem[(32 * _2720 - 1) + _2666 + ceil32(return_data.size) + 32]
                        if sub_93a39776Address == WBNBAddress:
                            _4156 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_4156]:
                                revert with 'NH{q', 50
                            mem[_4156 + 32] = sub_93a39776Address
                            if 1 >= mem[_4156]:
                                revert with 'NH{q', 50
                            mem[_4156 + 64] = address(arg1)
                            mem[_4156 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4156 + 100] = 0
                            mem[_4156 + 132] = 128
                            mem[_4156 + 228] = mem[_4156]
                            idx = 0
                            s = _4156 + 32
                            t = _4156 + 260
                            while idx < mem[_4156]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4156 + 164] = this.address
                            mem[_4156 + 196] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4156 + (32 * mem[_4156]) + -mem[64] + 256]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5516 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5548 = mem[_5516]
                            require mem[_5516] <= test266151307()
                            require _5516 + mem[_5516] + 31 < _5516 + return_data.size
                            _5580 = mem[_5516 + mem[_5516]]
                            if mem[_5516 + mem[_5516]] > test266151307():
                                revert with 'NH{q', 65
                            if _5516 + ceil32(return_data.size) + floor32(mem[_5516 + mem[_5516]]) + 1 > test266151307() or floor32(mem[_5516 + mem[_5516]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5516 + ceil32(return_data.size) + floor32(mem[_5516 + mem[_5516]]) + 1
                            mem[_5516 + ceil32(return_data.size)] = _5580
                            require _5548 + (32 * _5580) + 32 <= return_data.size
                            idx = _5516 + _5548 + 32
                            s = _5516 + ceil32(return_data.size) + 32
                            while idx < _5516 + _5548 + (32 * _5580) + 32:
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
                            _6668 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6700 = mem[_6668]
                            require mem[_6668] == mem[_6668]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4128 and -stor6 + 10000 > -1 / _4128:
                                revert with 'NH{q', 17
                            if (10000 * _4128) - (stor6 * _4128) / 10000 > mem[_6668]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _6700
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _6700
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6860 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6860] == bool(mem[_6860])
                            if not mem[_6860]:
                                revert with 0, 'HP/HT'
                            idx = 0
                            while idx < sub_7285fd3a.length:
                                mem[0] = 1
                                if sub_93a39776Address == WBNBAddress:
                                    _7556 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    if 0 >= mem[_7556]:
                                        revert with 'NH{q', 50
                                    mem[_7556 + 32] = sub_93a39776Address
                                    if 1 >= mem[_7556]:
                                        revert with 'NH{q', 50
                                    mem[_7556 + 64] = address(arg1)
                                    mem[_7556 + 96] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7556 + 100] = 32
                                    mem[_7556 + 132] = mem[_7556]
                                    s = 0
                                    t = _7556 + 32
                                    u = _7556 + 164
                                    while s < mem[_7556]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7556 + (32 * mem[_7556]) + -mem[64] + 160]
                                else:
                                    _7555 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    if 0 >= mem[_7555]:
                                        revert with 'NH{q', 50
                                    mem[_7555 + 32] = WBNBAddress
                                    if 1 >= mem[_7555]:
                                        revert with 'NH{q', 50
                                    mem[_7555 + 64] = sub_93a39776Address
                                    if 2 >= mem[_7555]:
                                        revert with 'NH{q', 50
                                    mem[_7555 + 96] = address(arg1)
                                    mem[_7555 + 128] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7555 + 132] = 32
                                    mem[_7555 + 164] = mem[_7555]
                                    s = 0
                                    t = _7555 + 32
                                    u = _7555 + 196
                                    while s < mem[_7555]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7555 + (32 * mem[_7555]) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                        else:
                            _4155 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            if 0 >= mem[_4155]:
                                revert with 'NH{q', 50
                            mem[_4155 + 32] = WBNBAddress
                            if 1 >= mem[_4155]:
                                revert with 'NH{q', 50
                            mem[_4155 + 64] = sub_93a39776Address
                            if 2 >= mem[_4155]:
                                revert with 'NH{q', 50
                            mem[_4155 + 96] = address(arg1)
                            mem[_4155 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4155 + 132] = 0
                            mem[_4155 + 164] = 128
                            mem[_4155 + 260] = mem[_4155]
                            idx = 0
                            s = _4155 + 32
                            t = _4155 + 292
                            while idx < mem[_4155]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4155 + 196] = this.address
                            mem[_4155 + 228] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4155 + (32 * mem[_4155]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5515 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5547 = mem[_5515]
                            require mem[_5515] <= test266151307()
                            require _5515 + mem[_5515] + 31 < _5515 + return_data.size
                            _5579 = mem[_5515 + mem[_5515]]
                            if mem[_5515 + mem[_5515]] > test266151307():
                                revert with 'NH{q', 65
                            if _5515 + ceil32(return_data.size) + floor32(mem[_5515 + mem[_5515]]) + 1 > test266151307() or floor32(mem[_5515 + mem[_5515]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5515 + ceil32(return_data.size) + floor32(mem[_5515 + mem[_5515]]) + 1
                            mem[_5515 + ceil32(return_data.size)] = _5579
                            require _5547 + (32 * _5579) + 32 <= return_data.size
                            idx = _5515 + _5547 + 32
                            s = _5515 + ceil32(return_data.size) + 32
                            while idx < _5515 + _5547 + (32 * _5579) + 32:
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
                            _6667 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6699 = mem[_6667]
                            require mem[_6667] == mem[_6667]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4128 and -stor6 + 10000 > -1 / _4128:
                                revert with 'NH{q', 17
                            if (10000 * _4128) - (stor6 * _4128) / 10000 > mem[_6667]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _6699
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _6699
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6859 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6859] == bool(mem[_6859])
                            if not mem[_6859]:
                                revert with 0, 'HP/HT'
                            idx = 0
                            while idx < sub_7285fd3a.length:
                                mem[0] = 1
                                if sub_93a39776Address == WBNBAddress:
                                    _7554 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    if 0 >= mem[_7554]:
                                        revert with 'NH{q', 50
                                    mem[_7554 + 32] = sub_93a39776Address
                                    if 1 >= mem[_7554]:
                                        revert with 'NH{q', 50
                                    mem[_7554 + 64] = address(arg1)
                                    mem[_7554 + 96] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7554 + 100] = 32
                                    mem[_7554 + 132] = mem[_7554]
                                    s = 0
                                    t = _7554 + 32
                                    u = _7554 + 164
                                    while s < mem[_7554]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7554 + (32 * mem[_7554]) + -mem[64] + 160]
                                else:
                                    _7553 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    if 0 >= mem[_7553]:
                                        revert with 'NH{q', 50
                                    mem[_7553 + 32] = WBNBAddress
                                    if 1 >= mem[_7553]:
                                        revert with 'NH{q', 50
                                    mem[_7553 + 64] = sub_93a39776Address
                                    if 2 >= mem[_7553]:
                                        revert with 'NH{q', 50
                                    mem[_7553 + 96] = address(arg1)
                                    mem[_7553 + 128] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7553 + 132] = 32
                                    mem[_7553 + 164] = mem[_7553]
                                    s = 0
                                    t = _7553 + 32
                                    u = _7553 + 196
                                    while s < mem[_7553]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7553 + (32 * mem[_7553]) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                    else:
                        _1733 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if 0 >= mem[_1733]:
                            revert with 'NH{q', 50
                        mem[_1733 + 32] = WBNBAddress
                        if 1 >= mem[_1733]:
                            revert with 'NH{q', 50
                        mem[_1733 + 64] = sub_93a39776Address
                        if 2 >= mem[_1733]:
                            revert with 'NH{q', 50
                        mem[_1733 + 96] = address(arg1)
                        mem[_1733 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1733 + 132] = uint256(stor7.field_0)
                        mem[_1733 + 164] = 64
                        mem[_1733 + 196] = mem[_1733]
                        idx = 0
                        s = _1733 + 32
                        t = _1733 + 228
                        while idx < mem[_1733]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(ROUTERAddress)
                        staticcall ROUTERAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1733 + (32 * mem[_1733]) + -mem[64] + 224]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2665 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2689 = mem[_2665]
                        require mem[_2665] <= test266151307()
                        require _2665 + mem[_2665] + 31 < _2665 + return_data.size
                        _2719 = mem[_2665 + mem[_2665]]
                        if mem[_2665 + mem[_2665]] > test266151307():
                            revert with 'NH{q', 65
                        if _2665 + ceil32(return_data.size) + floor32(mem[_2665 + mem[_2665]]) + 1 > test266151307() or floor32(mem[_2665 + mem[_2665]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2665 + ceil32(return_data.size) + floor32(mem[_2665 + mem[_2665]]) + 1
                        mem[_2665 + ceil32(return_data.size)] = _2719
                        require _2689 + (32 * _2719) + 32 <= return_data.size
                        idx = _2665 + _2689 + 32
                        s = _2665 + ceil32(return_data.size) + 32
                        while idx < _2665 + _2689 + (32 * _2719) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if _2719 < 1:
                            revert with 'NH{q', 17
                        if _2719 - 1 >= _2719:
                            revert with 'NH{q', 50
                        _4127 = mem[(32 * _2719 - 1) + _2665 + ceil32(return_data.size) + 32]
                        if sub_93a39776Address == WBNBAddress:
                            _4154 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_4154]:
                                revert with 'NH{q', 50
                            mem[_4154 + 32] = sub_93a39776Address
                            if 1 >= mem[_4154]:
                                revert with 'NH{q', 50
                            mem[_4154 + 64] = address(arg1)
                            mem[_4154 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4154 + 100] = 0
                            mem[_4154 + 132] = 128
                            mem[_4154 + 228] = mem[_4154]
                            idx = 0
                            s = _4154 + 32
                            t = _4154 + 260
                            while idx < mem[_4154]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4154 + 164] = this.address
                            mem[_4154 + 196] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4154 + (32 * mem[_4154]) + -mem[64] + 256]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5514 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5546 = mem[_5514]
                            require mem[_5514] <= test266151307()
                            require _5514 + mem[_5514] + 31 < _5514 + return_data.size
                            _5578 = mem[_5514 + mem[_5514]]
                            if mem[_5514 + mem[_5514]] > test266151307():
                                revert with 'NH{q', 65
                            if _5514 + ceil32(return_data.size) + floor32(mem[_5514 + mem[_5514]]) + 1 > test266151307() or floor32(mem[_5514 + mem[_5514]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5514 + ceil32(return_data.size) + floor32(mem[_5514 + mem[_5514]]) + 1
                            mem[_5514 + ceil32(return_data.size)] = _5578
                            require _5546 + (32 * _5578) + 32 <= return_data.size
                            idx = _5514 + _5546 + 32
                            s = _5514 + ceil32(return_data.size) + 32
                            while idx < _5514 + _5546 + (32 * _5578) + 32:
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
                            _6666 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6698 = mem[_6666]
                            require mem[_6666] == mem[_6666]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4127 and -stor6 + 10000 > -1 / _4127:
                                revert with 'NH{q', 17
                            if (10000 * _4127) - (stor6 * _4127) / 10000 > mem[_6666]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _6698
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _6698
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6858 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6858] == bool(mem[_6858])
                            if not mem[_6858]:
                                revert with 0, 'HP/HT'
                            idx = 0
                            while idx < sub_7285fd3a.length:
                                mem[0] = 1
                                if sub_93a39776Address == WBNBAddress:
                                    _7552 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    if 0 >= mem[_7552]:
                                        revert with 'NH{q', 50
                                    mem[_7552 + 32] = sub_93a39776Address
                                    if 1 >= mem[_7552]:
                                        revert with 'NH{q', 50
                                    mem[_7552 + 64] = address(arg1)
                                    mem[_7552 + 96] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7552 + 100] = 32
                                    mem[_7552 + 132] = mem[_7552]
                                    s = 0
                                    t = _7552 + 32
                                    u = _7552 + 164
                                    while s < mem[_7552]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7552 + (32 * mem[_7552]) + -mem[64] + 160]
                                else:
                                    _7551 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    if 0 >= mem[_7551]:
                                        revert with 'NH{q', 50
                                    mem[_7551 + 32] = WBNBAddress
                                    if 1 >= mem[_7551]:
                                        revert with 'NH{q', 50
                                    mem[_7551 + 64] = sub_93a39776Address
                                    if 2 >= mem[_7551]:
                                        revert with 'NH{q', 50
                                    mem[_7551 + 96] = address(arg1)
                                    mem[_7551 + 128] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7551 + 132] = 32
                                    mem[_7551 + 164] = mem[_7551]
                                    s = 0
                                    t = _7551 + 32
                                    u = _7551 + 196
                                    while s < mem[_7551]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7551 + (32 * mem[_7551]) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                        else:
                            _4153 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            if 0 >= mem[_4153]:
                                revert with 'NH{q', 50
                            mem[_4153 + 32] = WBNBAddress
                            if 1 >= mem[_4153]:
                                revert with 'NH{q', 50
                            mem[_4153 + 64] = sub_93a39776Address
                            if 2 >= mem[_4153]:
                                revert with 'NH{q', 50
                            mem[_4153 + 96] = address(arg1)
                            mem[_4153 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_4153 + 132] = 0
                            mem[_4153 + 164] = 128
                            mem[_4153 + 260] = mem[_4153]
                            idx = 0
                            s = _4153 + 32
                            t = _4153 + 292
                            while idx < mem[_4153]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4153 + 196] = this.address
                            mem[_4153 + 228] = block.timestamp + 9
                            require ext_code.size(ROUTERAddress)
                            call ROUTERAddress.mem[mem[64] len 4] with:
                               value uint256(stor7.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4153 + (32 * mem[_4153]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5513 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5545 = mem[_5513]
                            require mem[_5513] <= test266151307()
                            require _5513 + mem[_5513] + 31 < _5513 + return_data.size
                            _5577 = mem[_5513 + mem[_5513]]
                            if mem[_5513 + mem[_5513]] > test266151307():
                                revert with 'NH{q', 65
                            if _5513 + ceil32(return_data.size) + floor32(mem[_5513 + mem[_5513]]) + 1 > test266151307() or floor32(mem[_5513 + mem[_5513]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5513 + ceil32(return_data.size) + floor32(mem[_5513 + mem[_5513]]) + 1
                            mem[_5513 + ceil32(return_data.size)] = _5577
                            require _5545 + (32 * _5577) + 32 <= return_data.size
                            idx = _5513 + _5545 + 32
                            s = _5513 + ceil32(return_data.size) + 32
                            while idx < _5513 + _5545 + (32 * _5577) + 32:
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
                            _6665 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6697 = mem[_6665]
                            require mem[_6665] == mem[_6665]
                            if 10000 < stor6:
                                revert with 'NH{q', 17
                            if _4127 and -stor6 + 10000 > -1 / _4127:
                                revert with 'NH{q', 17
                            if (10000 * _4127) - (stor6 * _4127) / 10000 > mem[_6665]:
                                stor8 = 1
                                revert with 0, 'HP/HT'
                            Mask(96, 0, stor5.field_160) = 0
                            mem[mem[64] + 4] = stor0
                            mem[mem[64] + 36] = _6697
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor0, _6697
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6857 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6857] == bool(mem[_6857])
                            if not mem[_6857]:
                                revert with 0, 'HP/HT'
                            idx = 0
                            while idx < sub_7285fd3a.length:
                                mem[0] = 1
                                if sub_93a39776Address == WBNBAddress:
                                    _7550 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    if 0 >= mem[_7550]:
                                        revert with 'NH{q', 50
                                    mem[_7550 + 32] = sub_93a39776Address
                                    if 1 >= mem[_7550]:
                                        revert with 'NH{q', 50
                                    mem[_7550 + 64] = address(arg1)
                                    mem[_7550 + 96] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7550 + 100] = 32
                                    mem[_7550 + 132] = mem[_7550]
                                    s = 0
                                    t = _7550 + 32
                                    u = _7550 + 164
                                    while s < mem[_7550]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7550 + (32 * mem[_7550]) + -mem[64] + 160]
                                else:
                                    _7549 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    if 0 >= mem[_7549]:
                                        revert with 'NH{q', 50
                                    mem[_7549 + 32] = WBNBAddress
                                    if 1 >= mem[_7549]:
                                        revert with 'NH{q', 50
                                    mem[_7549 + 64] = sub_93a39776Address
                                    if 2 >= mem[_7549]:
                                        revert with 'NH{q', 50
                                    mem[_7549 + 96] = address(arg1)
                                    mem[_7549 + 128] = 0x9b40a0c000000000000000000000000000000000000000000000000000000000
                                    mem[_7549 + 132] = 32
                                    mem[_7549 + 164] = mem[_7549]
                                    s = 0
                                    t = _7549 + 32
                                    u = _7549 + 196
                                    while s < mem[_7549]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(sub_7285fd3a[idx]))
                                    call address(sub_7285fd3a[idx]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7549 + (32 * mem[_7549]) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
}



}
