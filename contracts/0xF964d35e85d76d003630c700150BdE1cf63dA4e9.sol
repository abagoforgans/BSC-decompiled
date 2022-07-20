contract main {




// =====================  Runtime code  =====================


#
#  - sub_ade26b27(?)
#
const totalBalance = eth.balance(this.address)


address _owner;
mapping of struct stor1;
mapping of struct stor2;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor7; offset 160
address withdrawAddress;
uint256 stor8;
uint256 stor9;
address stor14;

function withdrawAddress() {
    return withdrawAddress
}

function sub_651daf1e(?) {
    return bool(stor7)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if balanceOf[address(arg1)] > 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    return balanceOf[address(arg1)]
}

function owner() {
    return _owner
}

function _owner() {
    return _owner
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function setPause() {
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor7:
        stor7 = 1
    else:
        stor7 = 0
}

function sub_7daea4de(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor14 = address(arg1)
}

function sub_87875a4d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    withdrawAddress = address(arg1)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(_owner, arg1);
    _owner = arg1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[msg.sender][address(arg1)]:
        revert with 0, 32, 37, 0x6542455032303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if allowance[msg.sender][address(arg1)] + arg2 < allowance[msg.sender][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if arg3 > allowance[address(arg1)][msg.sender]:
        revert with 0, 32, 40, 0xfe42455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[168 len 24] >> 64, 0
    if allowance[address(arg1)][msg.sender] < arg3:
        revert with 0, 17
    if not arg1:
        revert with 0, 'BEP20: approve from the zero address'
    if not msg.sender:
        revert with 0, 'BEP20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    if not arg1:
        revert with 0, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0, 'ERC20: transfer to the zero address'
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_e66afa1c(?) {
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not withdrawAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'To make the withdrawal, you need to register a valid address.'
    staticcall this.address.0xad7a672f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'You do not have enough balance for this withdrawal'
    staticcall this.address.0xad7a672f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call withdrawAddress with:
       value ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_2838479c(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == address(arg2)
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor7:
        revert with 0, 'The Contract is paused. Presale is paused'
    if stor9 > -2:
        revert with 0, 17
    stor9++
    if bool(stor1[stor9].field_0):
        if bool(stor1[stor9].field_0) == uint255(stor1[stor9].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor1[stor9][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor1[stor9].field_0 = 0
            idx = 0
            while (uint255(stor1[stor9].field_0) * 0.5) + 31 / 32 > idx:
                stor1[stor9][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor1[stor9].field_0) == stor1[stor9].field_1 % 128 < 32:
            revert with 0, 34
        if arg1.length:
            stor1[stor9][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor1[stor9].field_0 = 0
            idx = 0
            while stor1[stor9].field_1 % 128 + 31 / 32 > idx:
                stor1[stor9][idx].field_0 = 0
                idx = idx + 1
                continue 
    address(stor1[stor9].field_256) = address(arg2)
}

function sub_513318ca(?) {
    require calldata.size - 4 >= 96
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor7:
        revert with 0, 'The Contract is paused. Presale is paused'
    if arg3 <= 0:
        revert with 0, 'You need to enter a valid value'
    if arg2.length <= 0:
        revert with 0, 'You need to enter a valid name'
    if bool(stor2[arg1].field_0):
        if bool(stor2[arg1].field_0) == uint255(stor2[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor2[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor2[arg1].field_0 = 0
            idx = 0
            while (uint255(stor2[arg1].field_0) * 0.5) + 31 / 32 > idx:
                stor2[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor2[arg1].field_0) == stor2[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if arg2.length:
            stor2[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor2[arg1].field_0 = 0
            idx = 0
            while stor2[arg1].field_1 % 128 + 31 / 32 > idx:
                stor2[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    stor2[arg1].field_256 = arg3
}

function sub_c5a29d6f(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor7:
        revert with 0, 'The Contract is paused. Presale is paused'
    if arg2 <= 0:
        revert with 0, 'You need to enter a valid value'
    if arg1.length <= 0:
        revert with 0, 'You need to enter a valid name'
    if stor8 > -2:
        revert with 0, 17
    stor8++
    if bool(stor2[stor8].field_0):
        if bool(stor2[stor8].field_0) == uint255(stor2[stor8].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor2[stor8][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor2[stor8].field_0 = 0
            idx = 0
            while (uint255(stor2[stor8].field_0) * 0.5) + 31 / 32 > idx:
                stor2[stor8][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor2[stor8].field_0) == stor2[stor8].field_1 % 128 < 32:
            revert with 0, 34
        if arg1.length:
            stor2[stor8][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor2[stor8].field_0 = 0
            idx = 0
            while stor2[stor8].field_1 % 128 + 31 / 32 > idx:
                stor2[stor8][idx].field_0 = 0
                idx = idx + 1
                continue 
    stor2[stor8].field_256 = arg2
}

function sub_20f92ab2(?) {
    if stor9 > test266151307():
        revert with 0, 65
    mem[96] = stor9
    mem[64] = (32 * stor9) + 128
    if not stor9:
        idx = 1
        while idx < stor9:
            mem[0] = idx
            mem[32] = 1
            if bool(stor1[idx].field_0):
                if bool(stor1[idx].field_0) == uint255(stor1[idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                _57 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor1[idx].field_0) * 0.5) + 32
                mem[_57] = uint255(stor1[idx].field_0) * 0.5
                if bool(stor1[idx].field_0):
                    if bool(stor1[idx].field_0) == uint255(stor1[idx].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor1[idx].field_0):
                        if 31 >= uint255(stor1[idx].field_0) * 0.5:
                            mem[_57 + 32] = 256 * Mask(248, 0, stor1[idx].field_8)
                        else:
                            mem[0] = sha3(idx, 1)
                            mem[_57 + 32] = stor1[idx].field_0
                            s = _57 + 32
                            t = sha3(sha3(idx, 1))
                            while _57 + (uint255(stor1[idx].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor1[idx].field_0) == stor1[idx].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor1[idx].field_1 % 128:
                        if 31 >= stor1[idx].field_1 % 128:
                            mem[_57 + 32] = 256 * Mask(248, 0, stor1[idx].field_8)
                        else:
                            mem[0] = sha3(idx, 1)
                            mem[_57 + 32] = stor1[idx].field_0
                            s = _57 + 32
                            t = sha3(sha3(idx, 1))
                            while _57 + stor1[idx].field_1 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _57
            else:
                if bool(stor1[idx].field_0) == stor1[idx].field_1 % 128 < 32:
                    revert with 0, 34
                _61 = mem[64]
                mem[64] = mem[64] + ceil32(stor1[idx].field_1 % 128) + 32
                mem[_61] = stor1[idx].field_1 % 128
                if bool(stor1[idx].field_0):
                    if bool(stor1[idx].field_0) == uint255(stor1[idx].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor1[idx].field_0):
                        if 31 >= uint255(stor1[idx].field_0) * 0.5:
                            mem[_61 + 32] = 256 * Mask(248, 0, stor1[idx].field_8)
                        else:
                            mem[0] = sha3(idx, 1)
                            mem[_61 + 32] = stor1[idx].field_0
                            s = _61 + 32
                            t = sha3(sha3(idx, 1))
                            while _61 + (uint255(stor1[idx].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor1[idx].field_0) == stor1[idx].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor1[idx].field_1 % 128:
                        if 31 >= stor1[idx].field_1 % 128:
                            mem[_61 + 32] = 256 * Mask(248, 0, stor1[idx].field_8)
                        else:
                            mem[0] = sha3(idx, 1)
                            mem[_61 + 32] = stor1[idx].field_0
                            s = _61 + 32
                            t = sha3(sha3(idx, 1))
                            while _61 + stor1[idx].field_1 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _61
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _53 = mem[64]
        mem[mem[64]] = 32
        _54 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _54:
            mem[t] = u + -_53 - 64
            _102 = mem[s]
            _105 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _105:
                mem[v + u + 32] = mem[_102 + v + 32]
                v = v + 32
                continue 
            if ceil32(_105) > _105:
                mem[u + _105 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_105) + u + 32
            continue 
    else:
        mem[128] = 96
        s = 128
        idx = stor9
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        idx = 1
        while idx < stor9:
            mem[0] = idx
            mem[32] = 1
            if bool(stor1[idx].field_0):
                if bool(stor1[idx].field_0) == uint255(stor1[idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                _114 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor1[idx].field_0) * 0.5) + 32
                mem[_114] = uint255(stor1[idx].field_0) * 0.5
                if bool(stor1[idx].field_0):
                    if bool(stor1[idx].field_0) == uint255(stor1[idx].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor1[idx].field_0):
                        if 31 >= uint255(stor1[idx].field_0) * 0.5:
                            mem[_114 + 32] = 256 * Mask(248, 0, stor1[idx].field_8)
                        else:
                            mem[0] = sha3(idx, 1)
                            mem[_114 + 32] = stor1[idx].field_0
                            s = _114 + 32
                            t = sha3(sha3(idx, 1))
                            while _114 + (uint255(stor1[idx].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor1[idx].field_0) == stor1[idx].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor1[idx].field_1 % 128:
                        if 31 >= stor1[idx].field_1 % 128:
                            mem[_114 + 32] = 256 * Mask(248, 0, stor1[idx].field_8)
                        else:
                            mem[0] = sha3(idx, 1)
                            mem[_114 + 32] = stor1[idx].field_0
                            s = _114 + 32
                            t = sha3(sha3(idx, 1))
                            while _114 + stor1[idx].field_1 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _114
            else:
                if bool(stor1[idx].field_0) == stor1[idx].field_1 % 128 < 32:
                    revert with 0, 34
                _117 = mem[64]
                mem[64] = mem[64] + ceil32(stor1[idx].field_1 % 128) + 32
                mem[_117] = stor1[idx].field_1 % 128
                if bool(stor1[idx].field_0):
                    if bool(stor1[idx].field_0) == uint255(stor1[idx].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor1[idx].field_0):
                        if 31 >= uint255(stor1[idx].field_0) * 0.5:
                            mem[_117 + 32] = 256 * Mask(248, 0, stor1[idx].field_8)
                        else:
                            mem[0] = sha3(idx, 1)
                            mem[_117 + 32] = stor1[idx].field_0
                            s = _117 + 32
                            t = sha3(sha3(idx, 1))
                            while _117 + (uint255(stor1[idx].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor1[idx].field_0) == stor1[idx].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor1[idx].field_1 % 128:
                        if 31 >= stor1[idx].field_1 % 128:
                            mem[_117 + 32] = 256 * Mask(248, 0, stor1[idx].field_8)
                        else:
                            mem[0] = sha3(idx, 1)
                            mem[_117 + 32] = stor1[idx].field_0
                            s = _117 + 32
                            t = sha3(sha3(idx, 1))
                            while _117 + stor1[idx].field_1 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _117
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _110 = mem[64]
        mem[mem[64]] = 32
        _111 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _111:
            mem[t] = u + -_110 - 64
            _136 = mem[s]
            _138 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _138:
                mem[v + u + 32] = mem[_136 + v + 32]
                v = v + 32
                continue 
            if ceil32(_138) > _138:
                mem[u + _138 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_138) + u + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function sub_15a66701(?) {
    if stor8 > test266151307():
        revert with 0, 65
    mem[96] = stor8
    mem[64] = (32 * stor8) + 128
    if not stor8:
        idx = 1
        while idx < stor8:
            mem[0] = idx
            mem[32] = 2
            _63 = mem[64]
            mem[64] = mem[64] + 64
            if bool(stor2[idx].field_0):
                if bool(stor2[idx].field_0) == uint255(stor2[idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                _70 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor2[idx].field_0) * 0.5) + 32
                mem[_70] = uint255(stor2[idx].field_0) * 0.5
                if bool(stor2[idx].field_0):
                    if bool(stor2[idx].field_0) == uint255(stor2[idx].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor2[idx].field_0):
                        if 31 >= uint255(stor2[idx].field_0) * 0.5:
                            mem[_70 + 32] = 256 * Mask(248, 0, stor2[idx].field_8)
                        else:
                            mem[0] = sha3(idx, 2)
                            mem[_70 + 32] = stor2[idx].field_0
                            s = _70 + 32
                            t = sha3(sha3(idx, 2))
                            while _70 + (uint255(stor2[idx].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor2[idx].field_1 % 128:
                        if 31 >= stor2[idx].field_1 % 128:
                            mem[_70 + 32] = 256 * Mask(248, 0, stor2[idx].field_8)
                        else:
                            mem[0] = sha3(idx, 2)
                            mem[_70 + 32] = stor2[idx].field_0
                            s = _70 + 32
                            t = sha3(sha3(idx, 2))
                            while _70 + stor2[idx].field_1 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_63] = _70
            else:
                if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                    revert with 0, 34
                _74 = mem[64]
                mem[64] = mem[64] + ceil32(stor2[idx].field_1 % 128) + 32
                mem[_74] = stor2[idx].field_1 % 128
                if bool(stor2[idx].field_0):
                    if bool(stor2[idx].field_0) == uint255(stor2[idx].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor2[idx].field_0):
                        if 31 >= uint255(stor2[idx].field_0) * 0.5:
                            mem[_74 + 32] = 256 * Mask(248, 0, stor2[idx].field_8)
                        else:
                            mem[0] = sha3(idx, 2)
                            mem[_74 + 32] = stor2[idx].field_0
                            s = _74 + 32
                            t = sha3(sha3(idx, 2))
                            while _74 + (uint255(stor2[idx].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor2[idx].field_1 % 128:
                        if 31 >= stor2[idx].field_1 % 128:
                            mem[_74 + 32] = 256 * Mask(248, 0, stor2[idx].field_8)
                        else:
                            mem[0] = sha3(idx, 2)
                            mem[_74 + 32] = stor2[idx].field_0
                            s = _74 + 32
                            t = sha3(sha3(idx, 2))
                            while _74 + stor2[idx].field_1 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_63] = _74
            mem[_63 + 32] = stor2[idx].field_256
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _63
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _64 = mem[64]
        mem[mem[64]] = 32
        _65 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _65:
            mem[u] = t + -_64 - 64
            _120 = mem[s]
            _121 = mem[mem[s]]
            mem[t] = 64
            _125 = mem[_121]
            mem[t + 64] = mem[_121]
            v = 0
            while v < _125:
                mem[v + t + 96] = mem[_121 + v + 32]
                v = v + 32
                continue 
            if ceil32(_125) > _125:
                mem[t + _125 + 96] = 0
            mem[t + 32] = mem[_120 + 32]
            idx = idx + 1
            s = s + 32
            t = ceil32(_125) + t + 96
            u = u + 32
            continue 
    else:
        mem[64] = (32 * stor8) + 192
        mem[(32 * stor8) + 128] = 96
        mem[(32 * stor8) + 160] = 0
        mem[128] = (32 * stor8) + 128
        s = 128
        idx = stor8
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * stor8) + 128] = 96
            mem[(32 * stor8) + 160] = 0
            mem[s + 32] = (32 * stor8) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 1
        while idx < stor8:
            mem[0] = idx
            mem[32] = 2
            _123 = mem[64]
            mem[64] = mem[64] + 64
            if bool(stor2[idx].field_0):
                if bool(stor2[idx].field_0) == uint255(stor2[idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                _135 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor2[idx].field_0) * 0.5) + 32
                mem[_135] = uint255(stor2[idx].field_0) * 0.5
                if bool(stor2[idx].field_0):
                    if bool(stor2[idx].field_0) == uint255(stor2[idx].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor2[idx].field_0):
                        if 31 >= uint255(stor2[idx].field_0) * 0.5:
                            mem[_135 + 32] = 256 * Mask(248, 0, stor2[idx].field_8)
                        else:
                            mem[0] = sha3(idx, 2)
                            mem[_135 + 32] = stor2[idx].field_0
                            s = _135 + 32
                            t = sha3(sha3(idx, 2))
                            while _135 + (uint255(stor2[idx].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor2[idx].field_1 % 128:
                        if 31 >= stor2[idx].field_1 % 128:
                            mem[_135 + 32] = 256 * Mask(248, 0, stor2[idx].field_8)
                        else:
                            mem[0] = sha3(idx, 2)
                            mem[_135 + 32] = stor2[idx].field_0
                            s = _135 + 32
                            t = sha3(sha3(idx, 2))
                            while _135 + stor2[idx].field_1 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_123] = _135
            else:
                if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                    revert with 0, 34
                _139 = mem[64]
                mem[64] = mem[64] + ceil32(stor2[idx].field_1 % 128) + 32
                mem[_139] = stor2[idx].field_1 % 128
                if bool(stor2[idx].field_0):
                    if bool(stor2[idx].field_0) == uint255(stor2[idx].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor2[idx].field_0):
                        if 31 >= uint255(stor2[idx].field_0) * 0.5:
                            mem[_139 + 32] = 256 * Mask(248, 0, stor2[idx].field_8)
                        else:
                            mem[0] = sha3(idx, 2)
                            mem[_139 + 32] = stor2[idx].field_0
                            s = _139 + 32
                            t = sha3(sha3(idx, 2))
                            while _139 + (uint255(stor2[idx].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor2[idx].field_1 % 128:
                        if 31 >= stor2[idx].field_1 % 128:
                            mem[_139 + 32] = 256 * Mask(248, 0, stor2[idx].field_8)
                        else:
                            mem[0] = sha3(idx, 2)
                            mem[_139 + 32] = stor2[idx].field_0
                            s = _139 + 32
                            t = sha3(sha3(idx, 2))
                            while _139 + stor2[idx].field_1 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_123] = _139
            mem[_123 + 32] = stor2[idx].field_256
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _123
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _130 = mem[64]
        mem[mem[64]] = 32
        _131 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _131:
            mem[u] = t + -_130 - 64
            _161 = mem[s]
            _162 = mem[mem[s]]
            mem[t] = 64
            _164 = mem[_162]
            mem[t + 64] = mem[_162]
            v = 0
            while v < _164:
                mem[v + t + 96] = mem[_162 + v + 32]
                v = v + 32
                continue 
            if ceil32(_164) > _164:
                mem[t + _164 + 96] = 0
            mem[t + 32] = mem[_161 + 32]
            idx = idx + 1
            s = s + 32
            t = ceil32(_164) + t + 96
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_77a65b6a(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(ceil32(arg1.length)) + 97
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor7:
        revert with 0, 'The Contract is paused. Presale is paused'
    idx = 1
    while idx < stor8:
        mem[0] = idx
        mem[32] = 2
        if bool(stor2[idx].field_0):
            if bool(stor2[idx].field_0) == uint255(stor2[idx].field_0) * 0.5 < 32:
                revert with 0, 34
            _98 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor2[idx].field_0) * 0.5) + 32
            mem[_98] = uint255(stor2[idx].field_0) * 0.5
            if bool(stor2[idx].field_0):
                if bool(stor2[idx].field_0) == uint255(stor2[idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor2[idx].field_0):
                    if sha3(mem[_98 + 32 len uint255(stor2[idx].field_0) * 0.5]) == sha3(mem[128 len mem[96]]):
                        mem[0] = idx
                        mem[32] = 2
                        if bool(stor2[idx].field_0):
                            if bool(stor2[idx].field_0) == uint255(stor2[idx].field_0) * 0.5 < 32:
                                revert with 0, 34
                            stor2[idx].field_0 = 0
                            if 31 < uint255(stor2[idx].field_0) * 0.5:
                                mem[0] = sha3(idx, 2)
                                s = sha3(sha3(idx, 2))
                                while sha3(sha3(idx, 2)) + ((uint255(stor2[idx].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                                revert with 0, 34
                            stor2[idx].field_0 = 0
                            if 31 < stor2[idx].field_1 % 128:
                                mem[0] = sha3(idx, 2)
                                s = sha3(sha3(idx, 2))
                                while sha3(sha3(idx, 2)) + (stor2[idx].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        stor2[idx].field_256 = 0
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if 31 >= uint255(stor2[idx].field_0) * 0.5:
                    mem[_98 + 32] = 256 * Mask(248, 0, stor2[idx].field_8)
                    if sha3(mem[_98 + 32 len uint255(stor2[idx].field_0) * 0.5]) == sha3(mem[128 len mem[96]]):
                        mem[0] = idx
                        mem[32] = 2
                        if bool(stor2[idx].field_0):
                            if bool(stor2[idx].field_0) == uint255(stor2[idx].field_0) * 0.5 < 32:
                                revert with 0, 34
                            stor2[idx].field_0 = 0
                            if 31 < uint255(stor2[idx].field_0) * 0.5:
                                mem[0] = sha3(idx, 2)
                                s = sha3(sha3(idx, 2))
                                while sha3(sha3(idx, 2)) + ((uint255(stor2[idx].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                                revert with 0, 34
                            stor2[idx].field_0 = 0
                            if 31 < stor2[idx].field_1 % 128:
                                mem[0] = sha3(idx, 2)
                                s = sha3(sha3(idx, 2))
                                while sha3(sha3(idx, 2)) + (stor2[idx].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        stor2[idx].field_256 = 0
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[0] = sha3(idx, 2)
                mem[_98 + 32] = stor2[idx].field_0
                s = _98 + 32
                t = sha3(sha3(idx, 2))
                while _98 + (uint255(stor2[idx].field_0) * 0.5) > s:
                    mem[s + 32] = stor1[t].field_0
                    s = s + 32
                    t = t + 1
                    continue 
                if sha3(mem[_98 + 32 len uint255(stor2[idx].field_0) * 0.5]) != sha3(mem[128 len mem[96]]):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[0] = idx
                mem[32] = 2
                if bool(stor2[idx].field_0):
                    if bool(stor2[idx].field_0) == uint255(stor2[idx].field_0) * 0.5 < 32:
                        revert with 0, 34
                    stor2[idx].field_0 = 0
                    if 31 < uint255(stor2[idx].field_0) * 0.5:
                        mem[0] = sha3(idx, 2)
                        s = sha3(sha3(idx, 2))
                        while sha3(sha3(idx, 2)) + ((uint255(stor2[idx].field_0) * 0.5) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    stor2[idx].field_256 = 0
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                    revert with 0, 34
                stor2[idx].field_0 = 0
                if 31 >= stor2[idx].field_1 % 128:
                    stor2[idx].field_256 = 0
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[0] = sha3(idx, 2)
                s = sha3(sha3(s, 2))
                while sha3(sha3(s, 2)) + (stor2[s].field_1 % 128 + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                stor2[s].field_256 = 0
                if sha3(sha3(s, 2)) + (stor2[s].field_1 % 128 + 31 / 32) == -1:
                    revert with 0, 17
                s = sha3(sha3(s, 2)) + (stor2[s].field_1 % 128 + 31 / 32) + 1
                continue 
            if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                revert with 0, 34
            if not stor2[idx].field_1 % 128:
                if sha3(mem[_98 + 32 len uint255(stor2[idx].field_0) * 0.5]) == sha3(mem[128 len mem[96]]):
                    mem[0] = idx
                    mem[32] = 2
                    if bool(stor2[idx].field_0):
                        if bool(stor2[idx].field_0) == uint255(stor2[idx].field_0) * 0.5 < 32:
                            revert with 0, 34
                        stor2[idx].field_0 = 0
                        if 31 < uint255(stor2[idx].field_0) * 0.5:
                            mem[0] = sha3(idx, 2)
                            s = sha3(sha3(idx, 2))
                            while sha3(sha3(idx, 2)) + ((uint255(stor2[idx].field_0) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                            revert with 0, 34
                        stor2[idx].field_0 = 0
                        if 31 < stor2[idx].field_1 % 128:
                            mem[0] = sha3(idx, 2)
                            s = sha3(sha3(idx, 2))
                            while sha3(sha3(idx, 2)) + (stor2[idx].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    stor2[idx].field_256 = 0
            else:
                if 31 >= stor2[idx].field_1 % 128:
                    mem[_98 + 32] = 256 * Mask(248, 0, stor2[idx].field_8)
                    if sha3(mem[_98 + 32 len uint255(stor2[idx].field_0) * 0.5]) == sha3(mem[128 len mem[96]]):
                        mem[0] = idx
                        mem[32] = 2
                        if bool(stor2[idx].field_0):
                            if bool(stor2[idx].field_0) == uint255(stor2[idx].field_0) * 0.5 < 32:
                                revert with 0, 34
                            stor2[idx].field_0 = 0
                            if 31 < uint255(stor2[idx].field_0) * 0.5:
                                mem[0] = sha3(idx, 2)
                                s = sha3(sha3(idx, 2))
                                while sha3(sha3(idx, 2)) + ((uint255(stor2[idx].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                                revert with 0, 34
                            stor2[idx].field_0 = 0
                            if 31 < stor2[idx].field_1 % 128:
                                mem[0] = sha3(idx, 2)
                                s = sha3(sha3(idx, 2))
                                while sha3(sha3(idx, 2)) + (stor2[idx].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        stor2[idx].field_256 = 0
                else:
                    mem[0] = sha3(idx, 2)
                    mem[_98 + 32] = stor2[idx].field_0
                    s = _98 + 32
                    t = sha3(sha3(idx, 2))
                    while _98 + stor2[idx].field_1 % 128 > s:
                        mem[s + 32] = stor1[t].field_0
                        s = s + 32
                        t = t + 1
                        continue 
                    if sha3(mem[_98 + 32 len uint255(stor2[idx].field_0) * 0.5]) == sha3(mem[128 len mem[96]]):
                        mem[0] = idx
                        mem[32] = 2
                        if bool(stor2[idx].field_0):
                            if bool(stor2[idx].field_0) == uint255(stor2[idx].field_0) * 0.5 < 32:
                                revert with 0, 34
                            stor2[idx].field_0 = 0
                            if 31 >= uint255(stor2[idx].field_0) * 0.5:
                                stor2[idx].field_256 = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            mem[0] = sha3(idx, 2)
                            s = sha3(sha3(s, 2))
                            while sha3(sha3(s, 2)) + ((uint255(stor2[s].field_0) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            stor2[s].field_256 = 0
                            if sha3(sha3(s, 2)) + ((uint255(stor2[s].field_0) * 0.5) + 31 / 32) == -1:
                                revert with 0, 17
                            s = sha3(sha3(s, 2)) + ((uint255(stor2[s].field_0) * 0.5) + 31 / 32) + 1
                            continue 
                        if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                            revert with 0, 34
                        stor2[idx].field_0 = 0
                        if 31 < stor2[idx].field_1 % 128:
                            mem[0] = sha3(idx, 2)
                            s = sha3(sha3(idx, 2))
                            while sha3(sha3(idx, 2)) + (stor2[idx].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        stor2[idx].field_256 = 0
        else:
            if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                revert with 0, 34
            _99 = mem[64]
            mem[64] = mem[64] + ceil32(stor2[idx].field_1 % 128) + 32
            mem[_99] = stor2[idx].field_1 % 128
            if bool(stor2[idx].field_0):
                if bool(stor2[idx].field_0) == uint255(stor2[idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor2[idx].field_0):
                    if sha3(mem[_99 + 32 len stor2[idx].field_1 % 128]) == sha3(mem[128 len mem[96]]):
                        mem[0] = idx
                        mem[32] = 2
                        if bool(stor2[idx].field_0):
                            if bool(stor2[idx].field_0) == uint255(stor2[idx].field_0) * 0.5 < 32:
                                revert with 0, 34
                            stor2[idx].field_0 = 0
                            if 31 < uint255(stor2[idx].field_0) * 0.5:
                                mem[0] = sha3(idx, 2)
                                s = sha3(sha3(idx, 2))
                                while sha3(sha3(idx, 2)) + ((uint255(stor2[idx].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                                revert with 0, 34
                            stor2[idx].field_0 = 0
                            if 31 < stor2[idx].field_1 % 128:
                                mem[0] = sha3(idx, 2)
                                s = sha3(sha3(idx, 2))
                                while sha3(sha3(idx, 2)) + (stor2[idx].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        stor2[idx].field_256 = 0
                else:
                    if 31 >= uint255(stor2[idx].field_0) * 0.5:
                        mem[_99 + 32] = 256 * Mask(248, 0, stor2[idx].field_8)
                        if sha3(mem[_99 + 32 len stor2[idx].field_1 % 128]) == sha3(mem[128 len mem[96]]):
                            mem[0] = idx
                            mem[32] = 2
                            if bool(stor2[idx].field_0):
                                if bool(stor2[idx].field_0) == uint255(stor2[idx].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                stor2[idx].field_0 = 0
                                if 31 < uint255(stor2[idx].field_0) * 0.5:
                                    mem[0] = sha3(idx, 2)
                                    s = sha3(sha3(idx, 2))
                                    while sha3(sha3(idx, 2)) + ((uint255(stor2[idx].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                                    revert with 0, 34
                                stor2[idx].field_0 = 0
                                if 31 < stor2[idx].field_1 % 128:
                                    mem[0] = sha3(idx, 2)
                                    s = sha3(sha3(idx, 2))
                                    while sha3(sha3(idx, 2)) + (stor2[idx].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            stor2[idx].field_256 = 0
                    else:
                        mem[0] = sha3(idx, 2)
                        mem[_99 + 32] = stor2[idx].field_0
                        s = _99 + 32
                        t = sha3(sha3(idx, 2))
                        while _99 + (uint255(stor2[idx].field_0) * 0.5) > s:
                            mem[s + 32] = stor1[t].field_0
                            s = s + 32
                            t = t + 1
                            continue 
                        if sha3(mem[_99 + 32 len stor2[idx].field_1 % 128]) == sha3(mem[128 len mem[96]]):
                            mem[0] = idx
                            mem[32] = 2
                            if bool(stor2[idx].field_0):
                                if bool(stor2[idx].field_0) == uint255(stor2[idx].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                stor2[idx].field_0 = 0
                                if 31 >= uint255(stor2[idx].field_0) * 0.5:
                                    stor2[idx].field_256 = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                mem[0] = sha3(idx, 2)
                                s = sha3(sha3(s, 2))
                                while sha3(sha3(s, 2)) + ((uint255(stor2[s].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                stor2[s].field_256 = 0
                                if sha3(sha3(s, 2)) + ((uint255(stor2[s].field_0) * 0.5) + 31 / 32) == -1:
                                    revert with 0, 17
                                s = sha3(sha3(s, 2)) + ((uint255(stor2[s].field_0) * 0.5) + 31 / 32) + 1
                                continue 
                            if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                                revert with 0, 34
                            stor2[idx].field_0 = 0
                            if 31 < stor2[idx].field_1 % 128:
                                mem[0] = sha3(idx, 2)
                                s = sha3(sha3(idx, 2))
                                while sha3(sha3(idx, 2)) + (stor2[idx].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            stor2[idx].field_256 = 0
            else:
                if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                    revert with 0, 34
                if stor2[idx].field_1 % 128:
                    if 31 >= stor2[idx].field_1 % 128:
                        mem[_99 + 32] = 256 * Mask(248, 0, stor2[idx].field_8)
                    else:
                        mem[0] = sha3(idx, 2)
                        mem[_99 + 32] = stor2[idx].field_0
                        s = _99 + 32
                        t = sha3(sha3(idx, 2))
                        while _99 + stor2[idx].field_1 % 128 > s:
                            mem[s + 32] = stor1[t].field_0
                            s = s + 32
                            t = t + 1
                            continue 
                if sha3(mem[_99 + 32 len stor2[idx].field_1 % 128]) == sha3(mem[128 len mem[96]]):
                    mem[0] = idx
                    mem[32] = 2
                    if bool(stor2[idx].field_0):
                        if bool(stor2[idx].field_0) == uint255(stor2[idx].field_0) * 0.5 < 32:
                            revert with 0, 34
                        stor2[idx].field_0 = 0
                        if 31 < uint255(stor2[idx].field_0) * 0.5:
                            mem[0] = sha3(idx, 2)
                            s = sha3(sha3(idx, 2))
                            while sha3(sha3(idx, 2)) + ((uint255(stor2[idx].field_0) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                            revert with 0, 34
                        stor2[idx].field_0 = 0
                        if 31 < stor2[idx].field_1 % 128:
                            mem[0] = sha3(idx, 2)
                            s = sha3(sha3(idx, 2))
                            while sha3(sha3(idx, 2)) + (stor2[idx].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    stor2[idx].field_256 = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_113faf36(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(ceil32(arg1.length)) + 97
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor7:
        revert with 0, 'The Contract is paused. Presale is paused'
    idx = 1
    while idx < stor9:
        mem[0] = idx
        mem[32] = 1
        if bool(stor1[idx].field_0):
            if bool(stor1[idx].field_0) == uint255(stor1[idx].field_0) * 0.5 < 32:
                revert with 0, 34
            _98 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor1[idx].field_0) * 0.5) + 32
            mem[_98] = uint255(stor1[idx].field_0) * 0.5
            if bool(stor1[idx].field_0):
                if bool(stor1[idx].field_0) == uint255(stor1[idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor1[idx].field_0):
                    if sha3(mem[_98 + 32 len uint255(stor1[idx].field_0) * 0.5]) == sha3(mem[128 len mem[96]]):
                        mem[0] = idx
                        mem[32] = 1
                        if bool(stor1[idx].field_0):
                            if bool(stor1[idx].field_0) == uint255(stor1[idx].field_0) * 0.5 < 32:
                                revert with 0, 34
                            stor1[idx].field_0 = 0
                            if 31 < uint255(stor1[idx].field_0) * 0.5:
                                mem[0] = sha3(idx, 1)
                                s = sha3(sha3(idx, 1))
                                while sha3(sha3(idx, 1)) + ((uint255(stor1[idx].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor1[idx].field_0) == stor1[idx].field_1 % 128 < 32:
                                revert with 0, 34
                            stor1[idx].field_0 = 0
                            if 31 < stor1[idx].field_1 % 128:
                                mem[0] = sha3(idx, 1)
                                s = sha3(sha3(idx, 1))
                                while sha3(sha3(idx, 1)) + (stor1[idx].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        address(stor1[idx].field_256) = 0
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if 31 >= uint255(stor1[idx].field_0) * 0.5:
                    mem[_98 + 32] = 256 * Mask(248, 0, stor1[idx].field_8)
                    if sha3(mem[_98 + 32 len uint255(stor1[idx].field_0) * 0.5]) == sha3(mem[128 len mem[96]]):
                        mem[0] = idx
                        mem[32] = 1
                        if bool(stor1[idx].field_0):
                            if bool(stor1[idx].field_0) == uint255(stor1[idx].field_0) * 0.5 < 32:
                                revert with 0, 34
                            stor1[idx].field_0 = 0
                            if 31 < uint255(stor1[idx].field_0) * 0.5:
                                mem[0] = sha3(idx, 1)
                                s = sha3(sha3(idx, 1))
                                while sha3(sha3(idx, 1)) + ((uint255(stor1[idx].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor1[idx].field_0) == stor1[idx].field_1 % 128 < 32:
                                revert with 0, 34
                            stor1[idx].field_0 = 0
                            if 31 < stor1[idx].field_1 % 128:
                                mem[0] = sha3(idx, 1)
                                s = sha3(sha3(idx, 1))
                                while sha3(sha3(idx, 1)) + (stor1[idx].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        address(stor1[idx].field_256) = 0
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[0] = sha3(idx, 1)
                mem[_98 + 32] = stor1[idx].field_0
                s = _98 + 32
                t = sha3(sha3(idx, 1))
                while _98 + (uint255(stor1[idx].field_0) * 0.5) > s:
                    mem[s + 32] = stor1[t].field_0
                    s = s + 32
                    t = t + 1
                    continue 
                if sha3(mem[_98 + 32 len uint255(stor1[idx].field_0) * 0.5]) != sha3(mem[128 len mem[96]]):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[0] = idx
                mem[32] = 1
                if bool(stor1[idx].field_0):
                    if bool(stor1[idx].field_0) == uint255(stor1[idx].field_0) * 0.5 < 32:
                        revert with 0, 34
                    stor1[idx].field_0 = 0
                    if 31 < uint255(stor1[idx].field_0) * 0.5:
                        mem[0] = sha3(idx, 1)
                        s = sha3(sha3(idx, 1))
                        while sha3(sha3(idx, 1)) + ((uint255(stor1[idx].field_0) * 0.5) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    address(stor1[idx].field_256) = 0
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if bool(stor1[idx].field_0) == stor1[idx].field_1 % 128 < 32:
                    revert with 0, 34
                stor1[idx].field_0 = 0
                if 31 >= stor1[idx].field_1 % 128:
                    address(stor1[idx].field_256) = 0
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[0] = sha3(idx, 1)
                s = sha3(sha3(s, 1))
                while sha3(sha3(s, 1)) + (stor1[s].field_1 % 128 + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                address(stor1[s].field_256) = 0
                if sha3(sha3(s, 1)) + (stor1[s].field_1 % 128 + 31 / 32) == -1:
                    revert with 0, 17
                s = sha3(sha3(s, 1)) + (stor1[s].field_1 % 128 + 31 / 32) + 1
                continue 
            if bool(stor1[idx].field_0) == stor1[idx].field_1 % 128 < 32:
                revert with 0, 34
            if not stor1[idx].field_1 % 128:
                if sha3(mem[_98 + 32 len uint255(stor1[idx].field_0) * 0.5]) == sha3(mem[128 len mem[96]]):
                    mem[0] = idx
                    mem[32] = 1
                    if bool(stor1[idx].field_0):
                        if bool(stor1[idx].field_0) == uint255(stor1[idx].field_0) * 0.5 < 32:
                            revert with 0, 34
                        stor1[idx].field_0 = 0
                        if 31 < uint255(stor1[idx].field_0) * 0.5:
                            mem[0] = sha3(idx, 1)
                            s = sha3(sha3(idx, 1))
                            while sha3(sha3(idx, 1)) + ((uint255(stor1[idx].field_0) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor1[idx].field_0) == stor1[idx].field_1 % 128 < 32:
                            revert with 0, 34
                        stor1[idx].field_0 = 0
                        if 31 < stor1[idx].field_1 % 128:
                            mem[0] = sha3(idx, 1)
                            s = sha3(sha3(idx, 1))
                            while sha3(sha3(idx, 1)) + (stor1[idx].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    address(stor1[idx].field_256) = 0
            else:
                if 31 >= stor1[idx].field_1 % 128:
                    mem[_98 + 32] = 256 * Mask(248, 0, stor1[idx].field_8)
                    if sha3(mem[_98 + 32 len uint255(stor1[idx].field_0) * 0.5]) == sha3(mem[128 len mem[96]]):
                        mem[0] = idx
                        mem[32] = 1
                        if bool(stor1[idx].field_0):
                            if bool(stor1[idx].field_0) == uint255(stor1[idx].field_0) * 0.5 < 32:
                                revert with 0, 34
                            stor1[idx].field_0 = 0
                            if 31 < uint255(stor1[idx].field_0) * 0.5:
                                mem[0] = sha3(idx, 1)
                                s = sha3(sha3(idx, 1))
                                while sha3(sha3(idx, 1)) + ((uint255(stor1[idx].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor1[idx].field_0) == stor1[idx].field_1 % 128 < 32:
                                revert with 0, 34
                            stor1[idx].field_0 = 0
                            if 31 < stor1[idx].field_1 % 128:
                                mem[0] = sha3(idx, 1)
                                s = sha3(sha3(idx, 1))
                                while sha3(sha3(idx, 1)) + (stor1[idx].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        address(stor1[idx].field_256) = 0
                else:
                    mem[0] = sha3(idx, 1)
                    mem[_98 + 32] = stor1[idx].field_0
                    s = _98 + 32
                    t = sha3(sha3(idx, 1))
                    while _98 + stor1[idx].field_1 % 128 > s:
                        mem[s + 32] = stor1[t].field_0
                        s = s + 32
                        t = t + 1
                        continue 
                    if sha3(mem[_98 + 32 len uint255(stor1[idx].field_0) * 0.5]) == sha3(mem[128 len mem[96]]):
                        mem[0] = idx
                        mem[32] = 1
                        if bool(stor1[idx].field_0):
                            if bool(stor1[idx].field_0) == uint255(stor1[idx].field_0) * 0.5 < 32:
                                revert with 0, 34
                            stor1[idx].field_0 = 0
                            if 31 >= uint255(stor1[idx].field_0) * 0.5:
                                address(stor1[idx].field_256) = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            mem[0] = sha3(idx, 1)
                            s = sha3(sha3(s, 1))
                            while sha3(sha3(s, 1)) + ((uint255(stor1[s].field_0) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            address(stor1[s].field_256) = 0
                            if sha3(sha3(s, 1)) + ((uint255(stor1[s].field_0) * 0.5) + 31 / 32) == -1:
                                revert with 0, 17
                            s = sha3(sha3(s, 1)) + ((uint255(stor1[s].field_0) * 0.5) + 31 / 32) + 1
                            continue 
                        if bool(stor1[idx].field_0) == stor1[idx].field_1 % 128 < 32:
                            revert with 0, 34
                        stor1[idx].field_0 = 0
                        if 31 < stor1[idx].field_1 % 128:
                            mem[0] = sha3(idx, 1)
                            s = sha3(sha3(idx, 1))
                            while sha3(sha3(idx, 1)) + (stor1[idx].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        address(stor1[idx].field_256) = 0
        else:
            if bool(stor1[idx].field_0) == stor1[idx].field_1 % 128 < 32:
                revert with 0, 34
            _99 = mem[64]
            mem[64] = mem[64] + ceil32(stor1[idx].field_1 % 128) + 32
            mem[_99] = stor1[idx].field_1 % 128
            if bool(stor1[idx].field_0):
                if bool(stor1[idx].field_0) == uint255(stor1[idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor1[idx].field_0):
                    if sha3(mem[_99 + 32 len stor1[idx].field_1 % 128]) == sha3(mem[128 len mem[96]]):
                        mem[0] = idx
                        mem[32] = 1
                        if bool(stor1[idx].field_0):
                            if bool(stor1[idx].field_0) == uint255(stor1[idx].field_0) * 0.5 < 32:
                                revert with 0, 34
                            stor1[idx].field_0 = 0
                            if 31 < uint255(stor1[idx].field_0) * 0.5:
                                mem[0] = sha3(idx, 1)
                                s = sha3(sha3(idx, 1))
                                while sha3(sha3(idx, 1)) + ((uint255(stor1[idx].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor1[idx].field_0) == stor1[idx].field_1 % 128 < 32:
                                revert with 0, 34
                            stor1[idx].field_0 = 0
                            if 31 < stor1[idx].field_1 % 128:
                                mem[0] = sha3(idx, 1)
                                s = sha3(sha3(idx, 1))
                                while sha3(sha3(idx, 1)) + (stor1[idx].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        address(stor1[idx].field_256) = 0
                else:
                    if 31 >= uint255(stor1[idx].field_0) * 0.5:
                        mem[_99 + 32] = 256 * Mask(248, 0, stor1[idx].field_8)
                        if sha3(mem[_99 + 32 len stor1[idx].field_1 % 128]) == sha3(mem[128 len mem[96]]):
                            mem[0] = idx
                            mem[32] = 1
                            if bool(stor1[idx].field_0):
                                if bool(stor1[idx].field_0) == uint255(stor1[idx].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                stor1[idx].field_0 = 0
                                if 31 < uint255(stor1[idx].field_0) * 0.5:
                                    mem[0] = sha3(idx, 1)
                                    s = sha3(sha3(idx, 1))
                                    while sha3(sha3(idx, 1)) + ((uint255(stor1[idx].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor1[idx].field_0) == stor1[idx].field_1 % 128 < 32:
                                    revert with 0, 34
                                stor1[idx].field_0 = 0
                                if 31 < stor1[idx].field_1 % 128:
                                    mem[0] = sha3(idx, 1)
                                    s = sha3(sha3(idx, 1))
                                    while sha3(sha3(idx, 1)) + (stor1[idx].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            address(stor1[idx].field_256) = 0
                    else:
                        mem[0] = sha3(idx, 1)
                        mem[_99 + 32] = stor1[idx].field_0
                        s = _99 + 32
                        t = sha3(sha3(idx, 1))
                        while _99 + (uint255(stor1[idx].field_0) * 0.5) > s:
                            mem[s + 32] = stor1[t].field_0
                            s = s + 32
                            t = t + 1
                            continue 
                        if sha3(mem[_99 + 32 len stor1[idx].field_1 % 128]) == sha3(mem[128 len mem[96]]):
                            mem[0] = idx
                            mem[32] = 1
                            if bool(stor1[idx].field_0):
                                if bool(stor1[idx].field_0) == uint255(stor1[idx].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                stor1[idx].field_0 = 0
                                if 31 >= uint255(stor1[idx].field_0) * 0.5:
                                    address(stor1[idx].field_256) = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                mem[0] = sha3(idx, 1)
                                s = sha3(sha3(s, 1))
                                while sha3(sha3(s, 1)) + ((uint255(stor1[s].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                address(stor1[s].field_256) = 0
                                if sha3(sha3(s, 1)) + ((uint255(stor1[s].field_0) * 0.5) + 31 / 32) == -1:
                                    revert with 0, 17
                                s = sha3(sha3(s, 1)) + ((uint255(stor1[s].field_0) * 0.5) + 31 / 32) + 1
                                continue 
                            if bool(stor1[idx].field_0) == stor1[idx].field_1 % 128 < 32:
                                revert with 0, 34
                            stor1[idx].field_0 = 0
                            if 31 < stor1[idx].field_1 % 128:
                                mem[0] = sha3(idx, 1)
                                s = sha3(sha3(idx, 1))
                                while sha3(sha3(idx, 1)) + (stor1[idx].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            address(stor1[idx].field_256) = 0
            else:
                if bool(stor1[idx].field_0) == stor1[idx].field_1 % 128 < 32:
                    revert with 0, 34
                if stor1[idx].field_1 % 128:
                    if 31 >= stor1[idx].field_1 % 128:
                        mem[_99 + 32] = 256 * Mask(248, 0, stor1[idx].field_8)
                    else:
                        mem[0] = sha3(idx, 1)
                        mem[_99 + 32] = stor1[idx].field_0
                        s = _99 + 32
                        t = sha3(sha3(idx, 1))
                        while _99 + stor1[idx].field_1 % 128 > s:
                            mem[s + 32] = stor1[t].field_0
                            s = s + 32
                            t = t + 1
                            continue 
                if sha3(mem[_99 + 32 len stor1[idx].field_1 % 128]) == sha3(mem[128 len mem[96]]):
                    mem[0] = idx
                    mem[32] = 1
                    if bool(stor1[idx].field_0):
                        if bool(stor1[idx].field_0) == uint255(stor1[idx].field_0) * 0.5 < 32:
                            revert with 0, 34
                        stor1[idx].field_0 = 0
                        if 31 < uint255(stor1[idx].field_0) * 0.5:
                            mem[0] = sha3(idx, 1)
                            s = sha3(sha3(idx, 1))
                            while sha3(sha3(idx, 1)) + ((uint255(stor1[idx].field_0) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor1[idx].field_0) == stor1[idx].field_1 % 128 < 32:
                            revert with 0, 34
                        stor1[idx].field_0 = 0
                        if 31 < stor1[idx].field_1 % 128:
                            mem[0] = sha3(idx, 1)
                            s = sha3(sha3(idx, 1))
                            while sha3(sha3(idx, 1)) + (stor1[idx].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    address(stor1[idx].field_256) = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_917bcde9(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(ceil32(arg1.length)) + 97
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not withdrawAddress:
        revert with 0, 'To make the withdrawal, you need to register a valid address.'
    idx = 1
    while idx < stor9:
        mem[0] = idx
        mem[32] = 1
        if bool(stor1[idx].field_0):
            if bool(stor1[idx].field_0) == uint255(stor1[idx].field_0) * 0.5 < 32:
                revert with 0, 34
            _158 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor1[idx].field_0) * 0.5) + 32
            mem[_158] = uint255(stor1[idx].field_0) * 0.5
            if bool(stor1[idx].field_0):
                if bool(stor1[idx].field_0) == uint255(stor1[idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor1[idx].field_0):
                    if sha3(mem[_158 + 32 len uint255(stor1[idx].field_0) * 0.5]) == sha3(mem[128 len mem[96]]):
                        mem[mem[64] + 4] = this.address
                        staticcall address(stor1[idx].field_256).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _185 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _213 = mem[_185]
                        mem[mem[64] + 4] = withdrawAddress
                        mem[mem[64] + 36] = _213
                        call address(stor1[idx].field_256).0xa9059cbb with:
                             gas gas_remaining wei
                            args withdrawAddress, _213
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _242 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_242] == bool(mem[_242])
                else:
                    if 31 >= uint255(stor1[idx].field_0) * 0.5:
                        mem[_158 + 32] = 256 * Mask(248, 0, stor1[idx].field_8)
                        if sha3(mem[_158 + 32 len uint255(stor1[idx].field_0) * 0.5]) == sha3(mem[128 len mem[96]]):
                            mem[mem[64] + 4] = this.address
                            staticcall address(stor1[idx].field_256).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _214 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _244 = mem[_214]
                            mem[mem[64] + 4] = withdrawAddress
                            mem[mem[64] + 36] = _244
                            call address(stor1[idx].field_256).0xa9059cbb with:
                                 gas gas_remaining wei
                                args withdrawAddress, _244
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _269 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_269] == bool(mem[_269])
                    else:
                        mem[0] = sha3(idx, 1)
                        mem[_158 + 32] = stor1[idx].field_0
                        s = _158 + 32
                        t = sha3(sha3(idx, 1))
                        while _158 + (uint255(stor1[idx].field_0) * 0.5) > s:
                            mem[s + 32] = stor1[t].field_0
                            s = s + 32
                            t = t + 1
                            continue 
                        if sha3(mem[_158 + 32 len uint255(stor1[idx].field_0) * 0.5]) == sha3(mem[128 len mem[96]]):
                            mem[mem[64] + 4] = this.address
                            staticcall address(stor1[idx].field_256).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _332 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _336 = mem[_332]
                            mem[mem[64] + 4] = withdrawAddress
                            mem[mem[64] + 36] = _336
                            call address(stor1[idx].field_256).0xa9059cbb with:
                                 gas gas_remaining wei
                                args withdrawAddress, _336
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _348 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_348] == bool(mem[_348])
            else:
                if bool(stor1[idx].field_0) == stor1[idx].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor1[idx].field_1 % 128:
                    if sha3(mem[_158 + 32 len uint255(stor1[idx].field_0) * 0.5]) == sha3(mem[128 len mem[96]]):
                        mem[mem[64] + 4] = this.address
                        staticcall address(stor1[idx].field_256).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _205 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _232 = mem[_205]
                        mem[mem[64] + 4] = withdrawAddress
                        mem[mem[64] + 36] = _232
                        call address(stor1[idx].field_256).0xa9059cbb with:
                             gas gas_remaining wei
                            args withdrawAddress, _232
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _257 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_257] == bool(mem[_257])
                else:
                    if 31 >= stor1[idx].field_1 % 128:
                        mem[_158 + 32] = 256 * Mask(248, 0, stor1[idx].field_8)
                        if sha3(mem[_158 + 32 len uint255(stor1[idx].field_0) * 0.5]) == sha3(mem[128 len mem[96]]):
                            mem[mem[64] + 4] = this.address
                            staticcall address(stor1[idx].field_256).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _233 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _259 = mem[_233]
                            mem[mem[64] + 4] = withdrawAddress
                            mem[mem[64] + 36] = _259
                            call address(stor1[idx].field_256).0xa9059cbb with:
                                 gas gas_remaining wei
                                args withdrawAddress, _259
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _281 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_281] == bool(mem[_281])
                    else:
                        mem[0] = sha3(idx, 1)
                        mem[_158 + 32] = stor1[idx].field_0
                        s = _158 + 32
                        t = sha3(sha3(idx, 1))
                        while _158 + stor1[idx].field_1 % 128 > s:
                            mem[s + 32] = stor1[t].field_0
                            s = s + 32
                            t = t + 1
                            continue 
                        if sha3(mem[_158 + 32 len uint255(stor1[idx].field_0) * 0.5]) == sha3(mem[128 len mem[96]]):
                            mem[mem[64] + 4] = this.address
                            staticcall address(stor1[idx].field_256).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _333 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _337 = mem[_333]
                            mem[mem[64] + 4] = withdrawAddress
                            mem[mem[64] + 36] = _337
                            call address(stor1[idx].field_256).0xa9059cbb with:
                                 gas gas_remaining wei
                                args withdrawAddress, _337
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _349 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_349] == bool(mem[_349])
        else:
            if bool(stor1[idx].field_0) == stor1[idx].field_1 % 128 < 32:
                revert with 0, 34
            _159 = mem[64]
            mem[64] = mem[64] + ceil32(stor1[idx].field_1 % 128) + 32
            mem[_159] = stor1[idx].field_1 % 128
            if bool(stor1[idx].field_0):
                if bool(stor1[idx].field_0) == uint255(stor1[idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor1[idx].field_0):
                    if sha3(mem[_159 + 32 len stor1[idx].field_1 % 128]) == sha3(mem[128 len mem[96]]):
                        mem[mem[64] + 4] = this.address
                        staticcall address(stor1[idx].field_256).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _206 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _234 = mem[_206]
                        mem[mem[64] + 4] = withdrawAddress
                        mem[mem[64] + 36] = _234
                        call address(stor1[idx].field_256).0xa9059cbb with:
                             gas gas_remaining wei
                            args withdrawAddress, _234
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _260 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_260] == bool(mem[_260])
                else:
                    if 31 >= uint255(stor1[idx].field_0) * 0.5:
                        mem[_159 + 32] = 256 * Mask(248, 0, stor1[idx].field_8)
                        if sha3(mem[_159 + 32 len stor1[idx].field_1 % 128]) == sha3(mem[128 len mem[96]]):
                            mem[mem[64] + 4] = this.address
                            staticcall address(stor1[idx].field_256).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _235 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _262 = mem[_235]
                            mem[mem[64] + 4] = withdrawAddress
                            mem[mem[64] + 36] = _262
                            call address(stor1[idx].field_256).0xa9059cbb with:
                                 gas gas_remaining wei
                                args withdrawAddress, _262
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _284 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_284] == bool(mem[_284])
                    else:
                        mem[0] = sha3(idx, 1)
                        mem[_159 + 32] = stor1[idx].field_0
                        s = _159 + 32
                        t = sha3(sha3(idx, 1))
                        while _159 + (uint255(stor1[idx].field_0) * 0.5) > s:
                            mem[s + 32] = stor1[t].field_0
                            s = s + 32
                            t = t + 1
                            continue 
                        if sha3(mem[_159 + 32 len stor1[idx].field_1 % 128]) == sha3(mem[128 len mem[96]]):
                            mem[mem[64] + 4] = this.address
                            staticcall address(stor1[idx].field_256).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _334 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _338 = mem[_334]
                            mem[mem[64] + 4] = withdrawAddress
                            mem[mem[64] + 36] = _338
                            call address(stor1[idx].field_256).0xa9059cbb with:
                                 gas gas_remaining wei
                                args withdrawAddress, _338
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _350 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_350] == bool(mem[_350])
            else:
                if bool(stor1[idx].field_0) == stor1[idx].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor1[idx].field_1 % 128:
                    if sha3(mem[_159 + 32 len stor1[idx].field_1 % 128]) == sha3(mem[128 len mem[96]]):
                        mem[mem[64] + 4] = this.address
                        staticcall address(stor1[idx].field_256).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _227 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _253 = mem[_227]
                        mem[mem[64] + 4] = withdrawAddress
                        mem[mem[64] + 36] = _253
                        call address(stor1[idx].field_256).0xa9059cbb with:
                             gas gas_remaining wei
                            args withdrawAddress, _253
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _274 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_274] == bool(mem[_274])
                else:
                    if 31 >= stor1[idx].field_1 % 128:
                        mem[_159 + 32] = 256 * Mask(248, 0, stor1[idx].field_8)
                        if sha3(mem[_159 + 32 len stor1[idx].field_1 % 128]) == sha3(mem[128 len mem[96]]):
                            mem[mem[64] + 4] = this.address
                            staticcall address(stor1[idx].field_256).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _254 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _276 = mem[_254]
                            mem[mem[64] + 4] = withdrawAddress
                            mem[mem[64] + 36] = _276
                            call address(stor1[idx].field_256).0xa9059cbb with:
                                 gas gas_remaining wei
                                args withdrawAddress, _276
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _295 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_295] == bool(mem[_295])
                    else:
                        mem[0] = sha3(idx, 1)
                        mem[_159 + 32] = stor1[idx].field_0
                        s = _159 + 32
                        t = sha3(sha3(idx, 1))
                        while _159 + stor1[idx].field_1 % 128 > s:
                            mem[s + 32] = stor1[t].field_0
                            s = s + 32
                            t = t + 1
                            continue 
                        if sha3(mem[_159 + 32 len stor1[idx].field_1 % 128]) == sha3(mem[128 len mem[96]]):
                            mem[mem[64] + 4] = this.address
                            staticcall address(stor1[idx].field_256).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _335 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _339 = mem[_335]
                            mem[mem[64] + 4] = withdrawAddress
                            mem[mem[64] + 36] = _339
                            call address(stor1[idx].field_256).0xa9059cbb with:
                                 gas gas_remaining wei
                                args withdrawAddress, _339
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _351 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_351] == bool(mem[_351])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_6eaa4fd4(?) {
    require calldata.size - 4 >= 32
    staticcall stor14.token0() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[64] = ceil32(return_data.size) + 160
    mem[ceil32(return_data.size) + 96] = 3
    mem[ceil32(return_data.size) + 128] = 0x424e420000000000000000000000000000000000000000000000000000000000
    idx = 1
    while idx < stor9:
        mem[0] = idx
        mem[32] = 1
        if bool(stor1[idx].field_0):
            if bool(stor1[idx].field_0) == uint255(stor1[idx].field_0) * 0.5 < 32:
                revert with 0, 34
            _432 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor1[idx].field_0) * 0.5) + 32
            mem[_432] = uint255(stor1[idx].field_0) * 0.5
            if bool(stor1[idx].field_0):
                if bool(stor1[idx].field_0) == uint255(stor1[idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor1[idx].field_0):
                    if sha3(mem[ceil32(return_data.size) + 128 len mem[ceil32(return_data.size) + 96]]) != sha3(mem[_432 + 32 len uint255(stor1[idx].field_0) * 0.5]):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    staticcall stor14.getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if address(stor1[idx].field_256) != address(ext_call.return_data[0]):
                        _486 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_486] == mem[_486 + 18 len 14]
                        _580 = mem[_486 + 32]
                        require mem[_486 + 32] == mem[_486 + 50 len 14]
                        require mem[_486 + 64] == mem[_486 + 92 len 4]
                        _632 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_632] = 26
                        mem[_632 + 32] = 'SafeMath: division by zero'
                        if Mask(112, 0, _580):
                            return (arg1 / Mask(112, 0, _580))
                        _652 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _652 + 68] = mem[_632 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_652 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _652 + -mem[64] + 100
                    _487 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _535 = mem[_487]
                    require mem[_487] == mem[_487 + 18 len 14]
                    require mem[_487 + 32] == mem[_487 + 50 len 14]
                    require mem[_487 + 64] == mem[_487 + 92 len 4]
                    _633 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_633] = 26
                    mem[_633 + 32] = 'SafeMath: division by zero'
                    if Mask(112, 0, _535):
                        return (arg1 / Mask(112, 0, _535))
                    _653 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _653 + 68] = mem[_633 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_653 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _653 + -mem[64] + 100
                if 31 >= uint255(stor1[idx].field_0) * 0.5:
                    mem[_432 + 32] = 256 * Mask(248, 0, stor1[idx].field_8)
                    if sha3(mem[ceil32(return_data.size) + 128 len mem[ceil32(return_data.size) + 96]]) != sha3(mem[_432 + 32 len uint255(stor1[idx].field_0) * 0.5]):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    staticcall stor14.getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if address(stor1[idx].field_256) != address(ext_call.return_data[0]):
                        _522 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_522] == mem[_522 + 18 len 14]
                        _600 = mem[_522 + 32]
                        require mem[_522 + 32] == mem[_522 + 50 len 14]
                        require mem[_522 + 64] == mem[_522 + 92 len 4]
                        _654 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_654] = 26
                        mem[_654 + 32] = 'SafeMath: division by zero'
                        if Mask(112, 0, _600):
                            return (arg1 / Mask(112, 0, _600))
                        _676 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _676 + 68] = mem[_654 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_676 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _676 + -mem[64] + 100
                    _523 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _567 = mem[_523]
                    require mem[_523] == mem[_523 + 18 len 14]
                    require mem[_523 + 32] == mem[_523 + 50 len 14]
                    require mem[_523 + 64] == mem[_523 + 92 len 4]
                    _655 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_655] = 26
                    mem[_655 + 32] = 'SafeMath: division by zero'
                    if Mask(112, 0, _567):
                        return (arg1 / Mask(112, 0, _567))
                    _677 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _677 + 68] = mem[_655 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_677 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _677 + -mem[64] + 100
                mem[0] = sha3(idx, 1)
                mem[_432 + 32] = stor1[idx].field_0
                s = _432 + 32
                t = sha3(sha3(idx, 1))
                while _432 + (uint255(stor1[idx].field_0) * 0.5) > s:
                    mem[s + 32] = stor1[t].field_0
                    s = s + 32
                    t = t + 1
                    continue 
                if sha3(mem[ceil32(return_data.size) + 128 len mem[ceil32(return_data.size) + 96]]) != sha3(mem[_432 + 32 len uint255(stor1[idx].field_0) * 0.5]):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                staticcall stor14.getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(stor1[idx].field_256) != address(ext_call.return_data[0]):
                    _930 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_930] == mem[_930 + 18 len 14]
                    _946 = mem[_930 + 32]
                    require mem[_930 + 32] == mem[_930 + 50 len 14]
                    require mem[_930 + 64] == mem[_930 + 92 len 4]
                    _962 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_962] = 26
                    mem[_962 + 32] = 'SafeMath: division by zero'
                    if Mask(112, 0, _946):
                        return (arg1 / Mask(112, 0, _946))
                    _970 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _970 + 68] = mem[_962 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_970 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _970 + -mem[64] + 100
                _931 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _939 = mem[_931]
                require mem[_931] == mem[_931 + 18 len 14]
                require mem[_931 + 32] == mem[_931 + 50 len 14]
                require mem[_931 + 64] == mem[_931 + 92 len 4]
                _963 = mem[64]
                mem[64] = mem[64] + 64
                mem[_963] = 26
                mem[_963 + 32] = 'SafeMath: division by zero'
                if Mask(112, 0, _939):
                    return (arg1 / Mask(112, 0, _939))
                _971 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _971 + 68] = mem[_963 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_971 + 94] = 0
                revert with memory
                  from mem[64]
                   len _971 + -mem[64] + 100
            if bool(stor1[idx].field_0) == stor1[idx].field_1 % 128 < 32:
                revert with 0, 34
            if not stor1[idx].field_1 % 128:
                if sha3(mem[ceil32(return_data.size) + 128 len mem[ceil32(return_data.size) + 96]]) != sha3(mem[_432 + 32 len uint255(stor1[idx].field_0) * 0.5]):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                staticcall stor14.getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(stor1[idx].field_256) != address(ext_call.return_data[0]):
                    _508 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_508] == mem[_508 + 18 len 14]
                    _590 = mem[_508 + 32]
                    require mem[_508 + 32] == mem[_508 + 50 len 14]
                    require mem[_508 + 64] == mem[_508 + 92 len 4]
                    _644 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_644] = 26
                    mem[_644 + 32] = 'SafeMath: division by zero'
                    if Mask(112, 0, _590):
                        return (arg1 / Mask(112, 0, _590))
                    _662 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _662 + 68] = mem[_644 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_662 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _662 + -mem[64] + 100
                _509 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _553 = mem[_509]
                require mem[_509] == mem[_509 + 18 len 14]
                require mem[_509 + 32] == mem[_509 + 50 len 14]
                require mem[_509 + 64] == mem[_509 + 92 len 4]
                _645 = mem[64]
                mem[64] = mem[64] + 64
                mem[_645] = 26
                mem[_645 + 32] = 'SafeMath: division by zero'
                if Mask(112, 0, _553):
                    return (arg1 / Mask(112, 0, _553))
                _663 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _663 + 68] = mem[_645 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_663 + 94] = 0
                revert with memory
                  from mem[64]
                   len _663 + -mem[64] + 100
            if 31 >= stor1[idx].field_1 % 128:
                mem[_432 + 32] = 256 * Mask(248, 0, stor1[idx].field_8)
                if sha3(mem[ceil32(return_data.size) + 128 len mem[ceil32(return_data.size) + 96]]) != sha3(mem[_432 + 32 len uint255(stor1[idx].field_0) * 0.5]):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                staticcall stor14.getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(stor1[idx].field_256) != address(ext_call.return_data[0]):
                    _540 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_540] == mem[_540 + 18 len 14]
                    _614 = mem[_540 + 32]
                    require mem[_540 + 32] == mem[_540 + 50 len 14]
                    require mem[_540 + 64] == mem[_540 + 92 len 4]
                    _664 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_664] = 26
                    mem[_664 + 32] = 'SafeMath: division by zero'
                    if Mask(112, 0, _614):
                        return (arg1 / Mask(112, 0, _614))
                    _686 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _686 + 68] = mem[_664 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_686 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _686 + -mem[64] + 100
                _541 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _583 = mem[_541]
                require mem[_541] == mem[_541 + 18 len 14]
                require mem[_541 + 32] == mem[_541 + 50 len 14]
                require mem[_541 + 64] == mem[_541 + 92 len 4]
                _665 = mem[64]
                mem[64] = mem[64] + 64
                mem[_665] = 26
                mem[_665 + 32] = 'SafeMath: division by zero'
                if Mask(112, 0, _583):
                    return (arg1 / Mask(112, 0, _583))
                _687 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _687 + 68] = mem[_665 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_687 + 94] = 0
                revert with memory
                  from mem[64]
                   len _687 + -mem[64] + 100
            mem[0] = sha3(idx, 1)
            mem[_432 + 32] = stor1[idx].field_0
            s = _432 + 32
            t = sha3(sha3(idx, 1))
            while _432 + stor1[idx].field_1 % 128 > s:
                mem[s + 32] = stor1[t].field_0
                s = s + 32
                t = t + 1
                continue 
            if sha3(mem[ceil32(return_data.size) + 128 len mem[ceil32(return_data.size) + 96]]) != sha3(mem[_432 + 32 len uint255(stor1[idx].field_0) * 0.5]):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            staticcall stor14.getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if address(stor1[idx].field_256) != address(ext_call.return_data[0]):
                _932 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_932] == mem[_932 + 18 len 14]
                _948 = mem[_932 + 32]
                require mem[_932 + 32] == mem[_932 + 50 len 14]
                require mem[_932 + 64] == mem[_932 + 92 len 4]
                _964 = mem[64]
                mem[64] = mem[64] + 64
                mem[_964] = 26
                mem[_964 + 32] = 'SafeMath: division by zero'
                if Mask(112, 0, _948):
                    return (arg1 / Mask(112, 0, _948))
                _972 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _972 + 68] = mem[_964 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_972 + 94] = 0
                revert with memory
                  from mem[64]
                   len _972 + -mem[64] + 100
            _933 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _941 = mem[_933]
            require mem[_933] == mem[_933 + 18 len 14]
            require mem[_933 + 32] == mem[_933 + 50 len 14]
            require mem[_933 + 64] == mem[_933 + 92 len 4]
            _965 = mem[64]
            mem[64] = mem[64] + 64
            mem[_965] = 26
            mem[_965 + 32] = 'SafeMath: division by zero'
            if Mask(112, 0, _941):
                return (arg1 / Mask(112, 0, _941))
            _973 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _973 + 68] = mem[_965 + idx + 32]
                idx = idx + 32
                continue 
            mem[_973 + 94] = 0
            revert with memory
              from mem[64]
               len _973 + -mem[64] + 100
        if bool(stor1[idx].field_0) == stor1[idx].field_1 % 128 < 32:
            revert with 0, 34
        _433 = mem[64]
        mem[64] = mem[64] + ceil32(stor1[idx].field_1 % 128) + 32
        mem[_433] = stor1[idx].field_1 % 128
        if bool(stor1[idx].field_0):
            if bool(stor1[idx].field_0) == uint255(stor1[idx].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor1[idx].field_0):
                if sha3(mem[ceil32(return_data.size) + 128 len mem[ceil32(return_data.size) + 96]]) != sha3(mem[_433 + 32 len stor1[idx].field_1 % 128]):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                staticcall stor14.getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(stor1[idx].field_256) != address(ext_call.return_data[0]):
                    _510 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_510] == mem[_510 + 18 len 14]
                    _592 = mem[_510 + 32]
                    require mem[_510 + 32] == mem[_510 + 50 len 14]
                    require mem[_510 + 64] == mem[_510 + 92 len 4]
                    _646 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_646] = 26
                    mem[_646 + 32] = 'SafeMath: division by zero'
                    if Mask(112, 0, _592):
                        return (arg1 / Mask(112, 0, _592))
                    _666 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _666 + 68] = mem[_646 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_666 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _666 + -mem[64] + 100
                _511 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _559 = mem[_511]
                require mem[_511] == mem[_511 + 18 len 14]
                require mem[_511 + 32] == mem[_511 + 50 len 14]
                require mem[_511 + 64] == mem[_511 + 92 len 4]
                _647 = mem[64]
                mem[64] = mem[64] + 64
                mem[_647] = 26
                mem[_647 + 32] = 'SafeMath: division by zero'
                if Mask(112, 0, _559):
                    return (arg1 / Mask(112, 0, _559))
                _667 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _667 + 68] = mem[_647 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_667 + 94] = 0
                revert with memory
                  from mem[64]
                   len _667 + -mem[64] + 100
            if 31 >= uint255(stor1[idx].field_0) * 0.5:
                mem[_433 + 32] = 256 * Mask(248, 0, stor1[idx].field_8)
                if sha3(mem[ceil32(return_data.size) + 128 len mem[ceil32(return_data.size) + 96]]) != sha3(mem[_433 + 32 len stor1[idx].field_1 % 128]):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                staticcall stor14.getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(stor1[idx].field_256) != address(ext_call.return_data[0]):
                    _542 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_542] == mem[_542 + 18 len 14]
                    _618 = mem[_542 + 32]
                    require mem[_542 + 32] == mem[_542 + 50 len 14]
                    require mem[_542 + 64] == mem[_542 + 92 len 4]
                    _668 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_668] = 26
                    mem[_668 + 32] = 'SafeMath: division by zero'
                    if Mask(112, 0, _618):
                        return (arg1 / Mask(112, 0, _618))
                    _692 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _692 + 68] = mem[_668 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_692 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _692 + -mem[64] + 100
                _543 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _585 = mem[_543]
                require mem[_543] == mem[_543 + 18 len 14]
                require mem[_543 + 32] == mem[_543 + 50 len 14]
                require mem[_543 + 64] == mem[_543 + 92 len 4]
                _669 = mem[64]
                mem[64] = mem[64] + 64
                mem[_669] = 26
                mem[_669 + 32] = 'SafeMath: division by zero'
                if Mask(112, 0, _585):
                    return (arg1 / Mask(112, 0, _585))
                _693 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _693 + 68] = mem[_669 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_693 + 94] = 0
                revert with memory
                  from mem[64]
                   len _693 + -mem[64] + 100
            mem[0] = sha3(idx, 1)
            mem[_433 + 32] = stor1[idx].field_0
            s = _433 + 32
            t = sha3(sha3(idx, 1))
            while _433 + (uint255(stor1[idx].field_0) * 0.5) > s:
                mem[s + 32] = stor1[t].field_0
                s = s + 32
                t = t + 1
                continue 
            if sha3(mem[ceil32(return_data.size) + 128 len mem[ceil32(return_data.size) + 96]]) != sha3(mem[_433 + 32 len stor1[idx].field_1 % 128]):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            staticcall stor14.getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if address(stor1[idx].field_256) != address(ext_call.return_data[0]):
                _934 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_934] == mem[_934 + 18 len 14]
                _950 = mem[_934 + 32]
                require mem[_934 + 32] == mem[_934 + 50 len 14]
                require mem[_934 + 64] == mem[_934 + 92 len 4]
                _966 = mem[64]
                mem[64] = mem[64] + 64
                mem[_966] = 26
                mem[_966 + 32] = 'SafeMath: division by zero'
                if Mask(112, 0, _950):
                    return (arg1 / Mask(112, 0, _950))
                _974 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _974 + 68] = mem[_966 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_974 + 94] = 0
                revert with memory
                  from mem[64]
                   len _974 + -mem[64] + 100
            _935 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _943 = mem[_935]
            require mem[_935] == mem[_935 + 18 len 14]
            require mem[_935 + 32] == mem[_935 + 50 len 14]
            require mem[_935 + 64] == mem[_935 + 92 len 4]
            _967 = mem[64]
            mem[64] = mem[64] + 64
            mem[_967] = 26
            mem[_967 + 32] = 'SafeMath: division by zero'
            if Mask(112, 0, _943):
                return (arg1 / Mask(112, 0, _943))
            _975 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _975 + 68] = mem[_967 + idx + 32]
                idx = idx + 32
                continue 
            mem[_975 + 94] = 0
            revert with memory
              from mem[64]
               len _975 + -mem[64] + 100
        if bool(stor1[idx].field_0) == stor1[idx].field_1 % 128 < 32:
            revert with 0, 34
        if not stor1[idx].field_1 % 128:
            if sha3(mem[ceil32(return_data.size) + 128 len mem[ceil32(return_data.size) + 96]]) != sha3(mem[_433 + 32 len stor1[idx].field_1 % 128]):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            staticcall stor14.getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if address(stor1[idx].field_256) != address(ext_call.return_data[0]):
                _532 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_532] == mem[_532 + 18 len 14]
                _606 = mem[_532 + 32]
                require mem[_532 + 32] == mem[_532 + 50 len 14]
                require mem[_532 + 64] == mem[_532 + 92 len 4]
                _660 = mem[64]
                mem[64] = mem[64] + 64
                mem[_660] = 26
                mem[_660 + 32] = 'SafeMath: division by zero'
                if Mask(112, 0, _606):
                    return (arg1 / Mask(112, 0, _606))
                _678 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _678 + 68] = mem[_660 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_678 + 94] = 0
                revert with memory
                  from mem[64]
                   len _678 + -mem[64] + 100
            _533 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _573 = mem[_533]
            require mem[_533] == mem[_533 + 18 len 14]
            require mem[_533 + 32] == mem[_533 + 50 len 14]
            require mem[_533 + 64] == mem[_533 + 92 len 4]
            _661 = mem[64]
            mem[64] = mem[64] + 64
            mem[_661] = 26
            mem[_661 + 32] = 'SafeMath: division by zero'
            if Mask(112, 0, _573):
                return (arg1 / Mask(112, 0, _573))
            _679 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _679 + 68] = mem[_661 + idx + 32]
                idx = idx + 32
                continue 
            mem[_679 + 94] = 0
            revert with memory
              from mem[64]
               len _679 + -mem[64] + 100
        if 31 >= stor1[idx].field_1 % 128:
            mem[_433 + 32] = 256 * Mask(248, 0, stor1[idx].field_8)
            if sha3(mem[ceil32(return_data.size) + 128 len mem[ceil32(return_data.size) + 96]]) != sha3(mem[_433 + 32 len stor1[idx].field_1 % 128]):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            staticcall stor14.getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if address(stor1[idx].field_256) != address(ext_call.return_data[0]):
                _564 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_564] == mem[_564 + 18 len 14]
                _630 = mem[_564 + 32]
                require mem[_564 + 32] == mem[_564 + 50 len 14]
                require mem[_564 + 64] == mem[_564 + 92 len 4]
                _680 = mem[64]
                mem[64] = mem[64] + 64
                mem[_680] = 26
                mem[_680 + 32] = 'SafeMath: division by zero'
                if Mask(112, 0, _630):
                    return (arg1 / Mask(112, 0, _630))
                _704 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _704 + 68] = mem[_680 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_704 + 94] = 0
                revert with memory
                  from mem[64]
                   len _704 + -mem[64] + 100
            _565 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _595 = mem[_565]
            require mem[_565] == mem[_565 + 18 len 14]
            require mem[_565 + 32] == mem[_565 + 50 len 14]
            require mem[_565 + 64] == mem[_565 + 92 len 4]
            _681 = mem[64]
            mem[64] = mem[64] + 64
            mem[_681] = 26
            mem[_681 + 32] = 'SafeMath: division by zero'
            if Mask(112, 0, _595):
                return (arg1 / Mask(112, 0, _595))
            _705 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _705 + 68] = mem[_681 + idx + 32]
                idx = idx + 32
                continue 
            mem[_705 + 94] = 0
            revert with memory
              from mem[64]
               len _705 + -mem[64] + 100
        mem[0] = sha3(idx, 1)
        mem[_433 + 32] = stor1[idx].field_0
        s = _433 + 32
        t = sha3(sha3(idx, 1))
        while _433 + stor1[idx].field_1 % 128 > s:
            mem[s + 32] = stor1[t].field_0
            s = s + 32
            t = t + 1
            continue 
        if sha3(mem[ceil32(return_data.size) + 128 len mem[ceil32(return_data.size) + 96]]) != sha3(mem[_433 + 32 len stor1[idx].field_1 % 128]):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        staticcall stor14.getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if address(stor1[idx].field_256) != address(ext_call.return_data[0]):
            _936 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_936] == mem[_936 + 18 len 14]
            _952 = mem[_936 + 32]
            require mem[_936 + 32] == mem[_936 + 50 len 14]
            require mem[_936 + 64] == mem[_936 + 92 len 4]
            _968 = mem[64]
            mem[64] = mem[64] + 64
            mem[_968] = 26
            mem[_968 + 32] = 'SafeMath: division by zero'
            if Mask(112, 0, _952):
                return (arg1 / Mask(112, 0, _952))
            _976 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _976 + 68] = mem[_968 + idx + 32]
                idx = idx + 32
                continue 
            mem[_976 + 94] = 0
            revert with memory
              from mem[64]
               len _976 + -mem[64] + 100
        _937 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _945 = mem[_937]
        require mem[_937] == mem[_937 + 18 len 14]
        require mem[_937 + 32] == mem[_937 + 50 len 14]
        require mem[_937 + 64] == mem[_937 + 92 len 4]
        _969 = mem[64]
        mem[64] = mem[64] + 64
        mem[_969] = 26
        mem[_969 + 32] = 'SafeMath: division by zero'
        if Mask(112, 0, _945):
            return (arg1 / Mask(112, 0, _945))
        _977 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _977 + 68] = mem[_969 + idx + 32]
            idx = idx + 32
            continue 
        mem[_977 + 94] = 0
        revert with memory
          from mem[64]
           len _977 + -mem[64] + 100
    staticcall stor14.getReserves() with:
            gas gas_remaining wei
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if address(ext_call.return_data[0]) != 0:
        _430 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_430] == mem[_430 + 18 len 14]
        require mem[_430 + 32] == mem[_430 + 50 len 14]
        require mem[_430 + 64] == mem[_430 + 92 len 4]
        if not mem[_430 + 50 len 14]:
            revert with 0, 'SafeMath: division by zero', 0
        return (arg1 / mem[_430 + 50 len 14])
    _431 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    require mem[_431] == mem[_431 + 18 len 14]
    require mem[_431 + 32] == mem[_431 + 50 len 14]
    require mem[_431 + 64] == mem[_431 + 92 len 4]
    if not mem[_431 + 18 len 14]:
        revert with 0, 'SafeMath: division by zero', 0
    return (arg1 / mem[_431 + 18 len 14])
}

function sub_95eb9624(?) payable {
    require calldata.size - 4 >= 64
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'It was not possible to locate this Box'
    if arg2 > stor8:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'It was not possible to locate this Box'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You need to say how many boxes you want'
    mem[0] = arg2
    mem[32] = 2
    if not arg1:
        staticcall stor14.token0() with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[64] = ceil32(return_data.size) + 160
        mem[ceil32(return_data.size) + 96] = 3
        mem[ceil32(return_data.size) + 128] = 0x424e420000000000000000000000000000000000000000000000000000000000
        idx = 1
        while idx < stor9:
            mem[0] = idx
            mem[32] = 1
            if bool(stor1[idx].field_0):
                if bool(stor1[idx].field_0) == uint255(stor1[idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                _1081 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor1[idx].field_0) * 0.5) + 32
                mem[_1081] = uint255(stor1[idx].field_0) * 0.5
                if bool(stor1[idx].field_0):
                    if bool(stor1[idx].field_0) == uint255(stor1[idx].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor1[idx].field_0):
                        if sha3(mem[ceil32(return_data.size) + 128 len mem[ceil32(return_data.size) + 96]]) != sha3(mem[_1081 + 32 len uint255(stor1[idx].field_0) * 0.5]):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        staticcall stor14.getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if address(stor1[idx].field_256) != address(ext_call.return_data[0]):
                            _1206 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_1206] == mem[_1206 + 18 len 14]
                            _1384 = mem[_1206 + 32]
                            require mem[_1206 + 32] == mem[_1206 + 50 len 14]
                            require mem[_1206 + 64] == mem[_1206 + 92 len 4]
                            _1498 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1498] = 26
                            mem[_1498 + 32] = 'SafeMath: division by zero'
                            if Mask(112, 0, _1384):
                                if 0 / Mask(112, 0, _1384) <= 0:
                                    revert with 0, 'You need to say how many boxes you want'
                                if msg.value < 0 / Mask(112, 0, _1384):
                                    revert with 0, 'You need to say how many boxes you want'
                                emit Received(0 / Mask(112, 0, _1384), arg1, arg2, msg.sender);
                            _1546 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1546 + 68] = mem[_1498 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1546 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1546 + -mem[64] + 100
                        _1207 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1299 = mem[_1207]
                        require mem[_1207] == mem[_1207 + 18 len 14]
                        require mem[_1207 + 32] == mem[_1207 + 50 len 14]
                        require mem[_1207 + 64] == mem[_1207 + 92 len 4]
                        _1499 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1499] = 26
                        mem[_1499 + 32] = 'SafeMath: division by zero'
                        if Mask(112, 0, _1299):
                            if 0 / Mask(112, 0, _1299) <= 0:
                                revert with 0, 'You need to say how many boxes you want'
                            if msg.value < 0 / Mask(112, 0, _1299):
                                revert with 0, 'You need to say how many boxes you want'
                            emit Received(0 / Mask(112, 0, _1299), arg1, arg2, msg.sender);
                        _1547 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1547 + 68] = mem[_1499 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1547 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _1547 + -mem[64] + 100
                    if 31 >= uint255(stor1[idx].field_0) * 0.5:
                        mem[_1081 + 32] = 256 * Mask(248, 0, stor1[idx].field_8)
                        if sha3(mem[ceil32(return_data.size) + 128 len mem[ceil32(return_data.size) + 96]]) != sha3(mem[_1081 + 32 len uint255(stor1[idx].field_0) * 0.5]):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        staticcall stor14.getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if address(stor1[idx].field_256) != address(ext_call.return_data[0]):
                            _1272 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_1272] == mem[_1272 + 18 len 14]
                            _1420 = mem[_1272 + 32]
                            require mem[_1272 + 32] == mem[_1272 + 50 len 14]
                            require mem[_1272 + 64] == mem[_1272 + 92 len 4]
                            _1548 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1548] = 26
                            mem[_1548 + 32] = 'SafeMath: division by zero'
                            if Mask(112, 0, _1420):
                                if 0 / Mask(112, 0, _1420) <= 0:
                                    revert with 0, 'You need to say how many boxes you want'
                                if msg.value < 0 / Mask(112, 0, _1420):
                                    revert with 0, 'You need to say how many boxes you want'
                                emit Received(0 / Mask(112, 0, _1420), arg1, arg2, msg.sender);
                            _1590 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1590 + 68] = mem[_1548 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1590 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1590 + -mem[64] + 100
                        _1273 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1361 = mem[_1273]
                        require mem[_1273] == mem[_1273 + 18 len 14]
                        require mem[_1273 + 32] == mem[_1273 + 50 len 14]
                        require mem[_1273 + 64] == mem[_1273 + 92 len 4]
                        _1549 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1549] = 26
                        mem[_1549 + 32] = 'SafeMath: division by zero'
                        if Mask(112, 0, _1361):
                            if 0 / Mask(112, 0, _1361) <= 0:
                                revert with 0, 'You need to say how many boxes you want'
                            if msg.value < 0 / Mask(112, 0, _1361):
                                revert with 0, 'You need to say how many boxes you want'
                            emit Received(0 / Mask(112, 0, _1361), arg1, arg2, msg.sender);
                        _1591 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1591 + 68] = mem[_1549 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1591 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _1591 + -mem[64] + 100
                    mem[0] = sha3(idx, 1)
                    mem[_1081 + 32] = stor1[idx].field_0
                    s = _1081 + 32
                    t = sha3(sha3(idx, 1))
                    while _1081 + (uint255(stor1[idx].field_0) * 0.5) > s:
                        mem[s + 32] = stor1[t].field_0
                        s = s + 32
                        t = t + 1
                        continue 
                    if sha3(mem[ceil32(return_data.size) + 128 len mem[ceil32(return_data.size) + 96]]) != sha3(mem[_1081 + 32 len uint255(stor1[idx].field_0) * 0.5]):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    staticcall stor14.getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if address(stor1[idx].field_256) != address(ext_call.return_data[0]):
                        _2292 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_2292] == mem[_2292 + 18 len 14]
                        _2324 = mem[_2292 + 32]
                        require mem[_2292 + 32] == mem[_2292 + 50 len 14]
                        require mem[_2292 + 64] == mem[_2292 + 92 len 4]
                        _2356 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2356] = 26
                        mem[_2356 + 32] = 'SafeMath: division by zero'
                        if Mask(112, 0, _2324):
                            if 0 / Mask(112, 0, _2324) <= 0:
                                revert with 0, 'You need to say how many boxes you want'
                            if msg.value < 0 / Mask(112, 0, _2324):
                                revert with 0, 'You need to say how many boxes you want'
                            emit Received(0 / Mask(112, 0, _2324), arg1, arg2, msg.sender);
                        _2372 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2372 + 68] = mem[_2356 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2372 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2372 + -mem[64] + 100
                    _2293 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2309 = mem[_2293]
                    require mem[_2293] == mem[_2293 + 18 len 14]
                    require mem[_2293 + 32] == mem[_2293 + 50 len 14]
                    require mem[_2293 + 64] == mem[_2293 + 92 len 4]
                    _2357 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2357] = 26
                    mem[_2357 + 32] = 'SafeMath: division by zero'
                    if Mask(112, 0, _2309):
                        if 0 / Mask(112, 0, _2309) <= 0:
                            revert with 0, 'You need to say how many boxes you want'
                        if msg.value < 0 / Mask(112, 0, _2309):
                            revert with 0, 'You need to say how many boxes you want'
                        emit Received(0 / Mask(112, 0, _2309), arg1, arg2, msg.sender);
                    _2373 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2373 + 68] = mem[_2357 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2373 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2373 + -mem[64] + 100
                if bool(stor1[idx].field_0) == stor1[idx].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor1[idx].field_1 % 128:
                    if sha3(mem[ceil32(return_data.size) + 128 len mem[ceil32(return_data.size) + 96]]) != sha3(mem[_1081 + 32 len uint255(stor1[idx].field_0) * 0.5]):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    staticcall stor14.getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if address(stor1[idx].field_256) != address(ext_call.return_data[0]):
                        _1244 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_1244] == mem[_1244 + 18 len 14]
                        _1402 = mem[_1244 + 32]
                        require mem[_1244 + 32] == mem[_1244 + 50 len 14]
                        require mem[_1244 + 64] == mem[_1244 + 92 len 4]
                        _1524 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1524] = 26
                        mem[_1524 + 32] = 'SafeMath: division by zero'
                        if Mask(112, 0, _1402):
                            if 0 / Mask(112, 0, _1402) <= 0:
                                revert with 0, 'You need to say how many boxes you want'
                            if msg.value < 0 / Mask(112, 0, _1402):
                                revert with 0, 'You need to say how many boxes you want'
                            emit Received(0 / Mask(112, 0, _1402), arg1, arg2, msg.sender);
                        _1566 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1566 + 68] = mem[_1524 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1566 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _1566 + -mem[64] + 100
                    _1245 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1335 = mem[_1245]
                    require mem[_1245] == mem[_1245 + 18 len 14]
                    require mem[_1245 + 32] == mem[_1245 + 50 len 14]
                    require mem[_1245 + 64] == mem[_1245 + 92 len 4]
                    _1525 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1525] = 26
                    mem[_1525 + 32] = 'SafeMath: division by zero'
                    if Mask(112, 0, _1335):
                        if 0 / Mask(112, 0, _1335) <= 0:
                            revert with 0, 'You need to say how many boxes you want'
                        if msg.value < 0 / Mask(112, 0, _1335):
                            revert with 0, 'You need to say how many boxes you want'
                        emit Received(0 / Mask(112, 0, _1335), arg1, arg2, msg.sender);
                    _1567 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1567 + 68] = mem[_1525 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1567 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1567 + -mem[64] + 100
                if 31 >= stor1[idx].field_1 % 128:
                    mem[_1081 + 32] = 256 * Mask(248, 0, stor1[idx].field_8)
                    if sha3(mem[ceil32(return_data.size) + 128 len mem[ceil32(return_data.size) + 96]]) != sha3(mem[_1081 + 32 len uint255(stor1[idx].field_0) * 0.5]):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    staticcall stor14.getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if address(stor1[idx].field_256) != address(ext_call.return_data[0]):
                        _1304 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_1304] == mem[_1304 + 18 len 14]
                        _1444 = mem[_1304 + 32]
                        require mem[_1304 + 32] == mem[_1304 + 50 len 14]
                        require mem[_1304 + 64] == mem[_1304 + 92 len 4]
                        _1568 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1568] = 26
                        mem[_1568 + 32] = 'SafeMath: division by zero'
                        if Mask(112, 0, _1444):
                            if 0 / Mask(112, 0, _1444) <= 0:
                                revert with 0, 'You need to say how many boxes you want'
                            if msg.value < 0 / Mask(112, 0, _1444):
                                revert with 0, 'You need to say how many boxes you want'
                            emit Received(0 / Mask(112, 0, _1444), arg1, arg2, msg.sender);
                        _1612 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1612 + 68] = mem[_1568 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1612 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _1612 + -mem[64] + 100
                    _1305 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1387 = mem[_1305]
                    require mem[_1305] == mem[_1305 + 18 len 14]
                    require mem[_1305 + 32] == mem[_1305 + 50 len 14]
                    require mem[_1305 + 64] == mem[_1305 + 92 len 4]
                    _1569 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1569] = 26
                    mem[_1569 + 32] = 'SafeMath: division by zero'
                    if Mask(112, 0, _1387):
                        if 0 / Mask(112, 0, _1387) <= 0:
                            revert with 0, 'You need to say how many boxes you want'
                        if msg.value < 0 / Mask(112, 0, _1387):
                            revert with 0, 'You need to say how many boxes you want'
                        emit Received(0 / Mask(112, 0, _1387), arg1, arg2, msg.sender);
                    _1613 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1613 + 68] = mem[_1569 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1613 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1613 + -mem[64] + 100
                mem[0] = sha3(idx, 1)
                mem[_1081 + 32] = stor1[idx].field_0
                s = _1081 + 32
                t = sha3(sha3(idx, 1))
                while _1081 + stor1[idx].field_1 % 128 > s:
                    mem[s + 32] = stor1[t].field_0
                    s = s + 32
                    t = t + 1
                    continue 
                if sha3(mem[ceil32(return_data.size) + 128 len mem[ceil32(return_data.size) + 96]]) != sha3(mem[_1081 + 32 len uint255(stor1[idx].field_0) * 0.5]):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                staticcall stor14.getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(stor1[idx].field_256) != address(ext_call.return_data[0]):
                    _2294 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_2294] == mem[_2294 + 18 len 14]
                    _2326 = mem[_2294 + 32]
                    require mem[_2294 + 32] == mem[_2294 + 50 len 14]
                    require mem[_2294 + 64] == mem[_2294 + 92 len 4]
                    _2358 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2358] = 26
                    mem[_2358 + 32] = 'SafeMath: division by zero'
                    if Mask(112, 0, _2326):
                        if 0 / Mask(112, 0, _2326) <= 0:
                            revert with 0, 'You need to say how many boxes you want'
                        if msg.value < 0 / Mask(112, 0, _2326):
                            revert with 0, 'You need to say how many boxes you want'
                        emit Received(0 / Mask(112, 0, _2326), arg1, arg2, msg.sender);
                    _2374 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2374 + 68] = mem[_2358 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2374 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2374 + -mem[64] + 100
                _2295 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2311 = mem[_2295]
                require mem[_2295] == mem[_2295 + 18 len 14]
                require mem[_2295 + 32] == mem[_2295 + 50 len 14]
                require mem[_2295 + 64] == mem[_2295 + 92 len 4]
                _2359 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2359] = 26
                mem[_2359 + 32] = 'SafeMath: division by zero'
                if Mask(112, 0, _2311):
                    if 0 / Mask(112, 0, _2311) <= 0:
                        revert with 0, 'You need to say how many boxes you want'
                    if msg.value < 0 / Mask(112, 0, _2311):
                        revert with 0, 'You need to say how many boxes you want'
                    emit Received(0 / Mask(112, 0, _2311), arg1, arg2, msg.sender);
                _2375 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2375 + 68] = mem[_2359 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2375 + 94] = 0
                revert with memory
                  from mem[64]
                   len _2375 + -mem[64] + 100
            if bool(stor1[idx].field_0) == stor1[idx].field_1 % 128 < 32:
                revert with 0, 34
            _1083 = mem[64]
            mem[64] = mem[64] + ceil32(stor1[idx].field_1 % 128) + 32
            mem[_1083] = stor1[idx].field_1 % 128
            if bool(stor1[idx].field_0):
                if bool(stor1[idx].field_0) == uint255(stor1[idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor1[idx].field_0):
                    if sha3(mem[ceil32(return_data.size) + 128 len mem[ceil32(return_data.size) + 96]]) != sha3(mem[_1083 + 32 len stor1[idx].field_1 % 128]):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    staticcall stor14.getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if address(stor1[idx].field_256) != address(ext_call.return_data[0]):
                        _1246 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_1246] == mem[_1246 + 18 len 14]
                        _1404 = mem[_1246 + 32]
                        require mem[_1246 + 32] == mem[_1246 + 50 len 14]
                        require mem[_1246 + 64] == mem[_1246 + 92 len 4]
                        _1526 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1526] = 26
                        mem[_1526 + 32] = 'SafeMath: division by zero'
                        if Mask(112, 0, _1404):
                            if 0 / Mask(112, 0, _1404) <= 0:
                                revert with 0, 'You need to say how many boxes you want'
                            if msg.value < 0 / Mask(112, 0, _1404):
                                revert with 0, 'You need to say how many boxes you want'
                            emit Received(0 / Mask(112, 0, _1404), arg1, arg2, msg.sender);
                        _1570 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1570 + 68] = mem[_1526 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1570 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _1570 + -mem[64] + 100
                    _1247 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1341 = mem[_1247]
                    require mem[_1247] == mem[_1247 + 18 len 14]
                    require mem[_1247 + 32] == mem[_1247 + 50 len 14]
                    require mem[_1247 + 64] == mem[_1247 + 92 len 4]
                    _1527 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1527] = 26
                    mem[_1527 + 32] = 'SafeMath: division by zero'
                    if Mask(112, 0, _1341):
                        if 0 / Mask(112, 0, _1341) <= 0:
                            revert with 0, 'You need to say how many boxes you want'
                        if msg.value < 0 / Mask(112, 0, _1341):
                            revert with 0, 'You need to say how many boxes you want'
                        emit Received(0 / Mask(112, 0, _1341), arg1, arg2, msg.sender);
                    _1571 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1571 + 68] = mem[_1527 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1571 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1571 + -mem[64] + 100
                if 31 >= uint255(stor1[idx].field_0) * 0.5:
                    mem[_1083 + 32] = 256 * Mask(248, 0, stor1[idx].field_8)
                    if sha3(mem[ceil32(return_data.size) + 128 len mem[ceil32(return_data.size) + 96]]) != sha3(mem[_1083 + 32 len stor1[idx].field_1 % 128]):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    staticcall stor14.getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if address(stor1[idx].field_256) != address(ext_call.return_data[0]):
                        _1306 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_1306] == mem[_1306 + 18 len 14]
                        _1448 = mem[_1306 + 32]
                        require mem[_1306 + 32] == mem[_1306 + 50 len 14]
                        require mem[_1306 + 64] == mem[_1306 + 92 len 4]
                        _1572 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1572] = 26
                        mem[_1572 + 32] = 'SafeMath: division by zero'
                        if Mask(112, 0, _1448):
                            if 0 / Mask(112, 0, _1448) <= 0:
                                revert with 0, 'You need to say how many boxes you want'
                            if msg.value < 0 / Mask(112, 0, _1448):
                                revert with 0, 'You need to say how many boxes you want'
                            emit Received(0 / Mask(112, 0, _1448), arg1, arg2, msg.sender);
                        _1618 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1618 + 68] = mem[_1572 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1618 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _1618 + -mem[64] + 100
                    _1307 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1389 = mem[_1307]
                    require mem[_1307] == mem[_1307 + 18 len 14]
                    require mem[_1307 + 32] == mem[_1307 + 50 len 14]
                    require mem[_1307 + 64] == mem[_1307 + 92 len 4]
                    _1573 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1573] = 26
                    mem[_1573 + 32] = 'SafeMath: division by zero'
                    if Mask(112, 0, _1389):
                        if 0 / Mask(112, 0, _1389) <= 0:
                            revert with 0, 'You need to say how many boxes you want'
                        if msg.value < 0 / Mask(112, 0, _1389):
                            revert with 0, 'You need to say how many boxes you want'
                        emit Received(0 / Mask(112, 0, _1389), arg1, arg2, msg.sender);
                    _1619 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1619 + 68] = mem[_1573 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1619 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1619 + -mem[64] + 100
                mem[0] = sha3(idx, 1)
                mem[_1083 + 32] = stor1[idx].field_0
                s = _1083 + 32
                t = sha3(sha3(idx, 1))
                while _1083 + (uint255(stor1[idx].field_0) * 0.5) > s:
                    mem[s + 32] = stor1[t].field_0
                    s = s + 32
                    t = t + 1
                    continue 
                if sha3(mem[ceil32(return_data.size) + 128 len mem[ceil32(return_data.size) + 96]]) != sha3(mem[_1083 + 32 len stor1[idx].field_1 % 128]):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                staticcall stor14.getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(stor1[idx].field_256) != address(ext_call.return_data[0]):
                    _2296 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_2296] == mem[_2296 + 18 len 14]
                    _2328 = mem[_2296 + 32]
                    require mem[_2296 + 32] == mem[_2296 + 50 len 14]
                    require mem[_2296 + 64] == mem[_2296 + 92 len 4]
                    _2360 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2360] = 26
                    mem[_2360 + 32] = 'SafeMath: division by zero'
                    if Mask(112, 0, _2328):
                        if 0 / Mask(112, 0, _2328) <= 0:
                            revert with 0, 'You need to say how many boxes you want'
                        if msg.value < 0 / Mask(112, 0, _2328):
                            revert with 0, 'You need to say how many boxes you want'
                        emit Received(0 / Mask(112, 0, _2328), arg1, arg2, msg.sender);
                    _2376 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2376 + 68] = mem[_2360 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2376 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2376 + -mem[64] + 100
                _2297 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2313 = mem[_2297]
                require mem[_2297] == mem[_2297 + 18 len 14]
                require mem[_2297 + 32] == mem[_2297 + 50 len 14]
                require mem[_2297 + 64] == mem[_2297 + 92 len 4]
                _2361 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2361] = 26
                mem[_2361 + 32] = 'SafeMath: division by zero'
                if Mask(112, 0, _2313):
                    if 0 / Mask(112, 0, _2313) <= 0:
                        revert with 0, 'You need to say how many boxes you want'
                    if msg.value < 0 / Mask(112, 0, _2313):
                        revert with 0, 'You need to say how many boxes you want'
                    emit Received(0 / Mask(112, 0, _2313), arg1, arg2, msg.sender);
                _2377 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2377 + 68] = mem[_2361 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2377 + 94] = 0
                revert with memory
                  from mem[64]
                   len _2377 + -mem[64] + 100
            if bool(stor1[idx].field_0) == stor1[idx].field_1 % 128 < 32:
                revert with 0, 34
            if not stor1[idx].field_1 % 128:
                if sha3(mem[ceil32(return_data.size) + 128 len mem[ceil32(return_data.size) + 96]]) != sha3(mem[_1083 + 32 len stor1[idx].field_1 % 128]):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                staticcall stor14.getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(stor1[idx].field_256) != address(ext_call.return_data[0]):
                    _1282 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_1282] == mem[_1282 + 18 len 14]
                    _1426 = mem[_1282 + 32]
                    require mem[_1282 + 32] == mem[_1282 + 50 len 14]
                    require mem[_1282 + 64] == mem[_1282 + 92 len 4]
                    _1554 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1554] = 26
                    mem[_1554 + 32] = 'SafeMath: division by zero'
                    if Mask(112, 0, _1426):
                        if 0 / Mask(112, 0, _1426) <= 0:
                            revert with 0, 'You need to say how many boxes you want'
                        if msg.value < 0 / Mask(112, 0, _1426):
                            revert with 0, 'You need to say how many boxes you want'
                        emit Received(0 / Mask(112, 0, _1426), arg1, arg2, msg.sender);
                    _1592 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1592 + 68] = mem[_1554 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1592 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1592 + -mem[64] + 100
                _1283 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1367 = mem[_1283]
                require mem[_1283] == mem[_1283 + 18 len 14]
                require mem[_1283 + 32] == mem[_1283 + 50 len 14]
                require mem[_1283 + 64] == mem[_1283 + 92 len 4]
                _1555 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1555] = 26
                mem[_1555 + 32] = 'SafeMath: division by zero'
                if Mask(112, 0, _1367):
                    if 0 / Mask(112, 0, _1367) <= 0:
                        revert with 0, 'You need to say how many boxes you want'
                    if msg.value < 0 / Mask(112, 0, _1367):
                        revert with 0, 'You need to say how many boxes you want'
                    emit Received(0 / Mask(112, 0, _1367), arg1, arg2, msg.sender);
                _1593 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1593 + 68] = mem[_1555 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1593 + 94] = 0
                revert with memory
                  from mem[64]
                   len _1593 + -mem[64] + 100
            if 31 >= stor1[idx].field_1 % 128:
                mem[_1083 + 32] = 256 * Mask(248, 0, stor1[idx].field_8)
                if sha3(mem[ceil32(return_data.size) + 128 len mem[ceil32(return_data.size) + 96]]) != sha3(mem[_1083 + 32 len stor1[idx].field_1 % 128]):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                staticcall stor14.getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(stor1[idx].field_256) != address(ext_call.return_data[0]):
                    _1346 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_1346] == mem[_1346 + 18 len 14]
                    _1474 = mem[_1346 + 32]
                    require mem[_1346 + 32] == mem[_1346 + 50 len 14]
                    require mem[_1346 + 64] == mem[_1346 + 92 len 4]
                    _1594 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1594] = 26
                    mem[_1594 + 32] = 'SafeMath: division by zero'
                    if Mask(112, 0, _1474):
                        if 0 / Mask(112, 0, _1474) <= 0:
                            revert with 0, 'You need to say how many boxes you want'
                        if msg.value < 0 / Mask(112, 0, _1474):
                            revert with 0, 'You need to say how many boxes you want'
                        emit Received(0 / Mask(112, 0, _1474), arg1, arg2, msg.sender);
                    _1642 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1642 + 68] = mem[_1594 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1642 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1642 + -mem[64] + 100
                _1347 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1407 = mem[_1347]
                require mem[_1347] == mem[_1347 + 18 len 14]
                require mem[_1347 + 32] == mem[_1347 + 50 len 14]
                require mem[_1347 + 64] == mem[_1347 + 92 len 4]
                _1595 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1595] = 26
                mem[_1595 + 32] = 'SafeMath: division by zero'
                if Mask(112, 0, _1407):
                    if 0 / Mask(112, 0, _1407) <= 0:
                        revert with 0, 'You need to say how many boxes you want'
                    if msg.value < 0 / Mask(112, 0, _1407):
                        revert with 0, 'You need to say how many boxes you want'
                    emit Received(0 / Mask(112, 0, _1407), arg1, arg2, msg.sender);
                _1643 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1643 + 68] = mem[_1595 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1643 + 94] = 0
                revert with memory
                  from mem[64]
                   len _1643 + -mem[64] + 100
            mem[0] = sha3(idx, 1)
            mem[_1083 + 32] = stor1[idx].field_0
            s = _1083 + 32
            t = sha3(sha3(idx, 1))
            while _1083 + stor1[idx].field_1 % 128 > s:
                mem[s + 32] = stor1[t].field_0
                s = s + 32
                t = t + 1
                continue 
            if sha3(mem[ceil32(return_data.size) + 128 len mem[ceil32(return_data.size) + 96]]) != sha3(mem[_1083 + 32 len stor1[idx].field_1 % 128]):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            staticcall stor14.getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if address(stor1[idx].field_256) != address(ext_call.return_data[0]):
                _2298 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_2298] == mem[_2298 + 18 len 14]
                _2330 = mem[_2298 + 32]
                require mem[_2298 + 32] == mem[_2298 + 50 len 14]
                require mem[_2298 + 64] == mem[_2298 + 92 len 4]
                _2362 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2362] = 26
                mem[_2362 + 32] = 'SafeMath: division by zero'
                if Mask(112, 0, _2330):
                    if 0 / Mask(112, 0, _2330) <= 0:
                        revert with 0, 'You need to say how many boxes you want'
                    if msg.value < 0 / Mask(112, 0, _2330):
                        revert with 0, 'You need to say how many boxes you want'
                    emit Received(0 / Mask(112, 0, _2330), arg1, arg2, msg.sender);
                _2378 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2378 + 68] = mem[_2362 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2378 + 94] = 0
                revert with memory
                  from mem[64]
                   len _2378 + -mem[64] + 100
            _2299 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _2315 = mem[_2299]
            require mem[_2299] == mem[_2299 + 18 len 14]
            require mem[_2299 + 32] == mem[_2299 + 50 len 14]
            require mem[_2299 + 64] == mem[_2299 + 92 len 4]
            _2363 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2363] = 26
            mem[_2363 + 32] = 'SafeMath: division by zero'
            if Mask(112, 0, _2315):
                if 0 / Mask(112, 0, _2315) <= 0:
                    revert with 0, 'You need to say how many boxes you want'
                if msg.value < 0 / Mask(112, 0, _2315):
                    revert with 0, 'You need to say how many boxes you want'
                emit Received(0 / Mask(112, 0, _2315), arg1, arg2, msg.sender);
            _2379 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _2379 + 68] = mem[_2363 + idx + 32]
                idx = idx + 32
                continue 
            mem[_2379 + 94] = 0
            revert with memory
              from mem[64]
               len _2379 + -mem[64] + 100
        staticcall stor14.getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if address(ext_call.return_data[0]) != 0:
            _1078 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_1078] == mem[_1078 + 18 len 14]
            require mem[_1078 + 32] == mem[_1078 + 50 len 14]
            require mem[_1078 + 64] == mem[_1078 + 92 len 4]
            if not mem[_1078 + 50 len 14]:
                revert with 0, 'SafeMath: division by zero', 0
            if 0 / mem[_1078 + 50 len 14] <= 0:
                revert with 0, 'You need to say how many boxes you want'
            if msg.value < 0 / mem[_1078 + 50 len 14]:
                revert with 0, 'You need to say how many boxes you want'
            emit Received(0 / mem[_1078 + 50 len 14], arg1, arg2, msg.sender);
        else:
            _1079 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_1079] == mem[_1079 + 18 len 14]
            require mem[_1079 + 32] == mem[_1079 + 50 len 14]
            require mem[_1079 + 64] == mem[_1079 + 92 len 4]
            if not mem[_1079 + 18 len 14]:
                revert with 0, 'SafeMath: division by zero', 0
            if 0 / mem[_1079 + 18 len 14] <= 0:
                revert with 0, 'You need to say how many boxes you want'
            if msg.value < 0 / mem[_1079 + 18 len 14]:
                revert with 0, 'You need to say how many boxes you want'
            emit Received(0 / mem[_1079 + 18 len 14], arg1, arg2, msg.sender);
    else:
        if arg1 and stor2[arg2].field_256 > -1 / arg1:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        if arg1 * stor2[arg2].field_256 / arg1 != stor2[arg2].field_256:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        staticcall stor14.token0() with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[64] = ceil32(return_data.size) + 160
        mem[ceil32(return_data.size) + 96] = 3
        mem[ceil32(return_data.size) + 128] = 0x424e420000000000000000000000000000000000000000000000000000000000
        idx = 1
        while idx < stor9:
            mem[0] = idx
            mem[32] = 1
            if bool(stor1[idx].field_0):
                if bool(stor1[idx].field_0) == uint255(stor1[idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                _1080 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor1[idx].field_0) * 0.5) + 32
                mem[_1080] = uint255(stor1[idx].field_0) * 0.5
                if bool(stor1[idx].field_0):
                    if bool(stor1[idx].field_0) == uint255(stor1[idx].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor1[idx].field_0):
                        if sha3(mem[ceil32(return_data.size) + 128 len mem[ceil32(return_data.size) + 96]]) != sha3(mem[_1080 + 32 len uint255(stor1[idx].field_0) * 0.5]):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        staticcall stor14.getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if address(stor1[idx].field_256) != address(ext_call.return_data[0]):
                            _1186 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_1186] == mem[_1186 + 18 len 14]
                            _1374 = mem[_1186 + 32]
                            require mem[_1186 + 32] == mem[_1186 + 50 len 14]
                            require mem[_1186 + 64] == mem[_1186 + 92 len 4]
                            _1482 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1482] = 26
                            mem[_1482 + 32] = 'SafeMath: division by zero'
                            if Mask(112, 0, _1374):
                                if arg1 * stor2[arg2].field_256 / Mask(112, 0, _1374) <= 0:
                                    revert with 0, 'You need to say how many boxes you want'
                                if msg.value < arg1 * stor2[arg2].field_256 / Mask(112, 0, _1374):
                                    revert with 0, 'You need to say how many boxes you want'
                                emit Received(arg1 * stor2[arg2].field_256 / Mask(112, 0, _1374), arg1, arg2, msg.sender);
                            _1534 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1534 + 68] = mem[_1482 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1534 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1534 + -mem[64] + 100
                        _1187 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1285 = mem[_1187]
                        require mem[_1187] == mem[_1187 + 18 len 14]
                        require mem[_1187 + 32] == mem[_1187 + 50 len 14]
                        require mem[_1187 + 64] == mem[_1187 + 92 len 4]
                        _1483 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1483] = 26
                        mem[_1483 + 32] = 'SafeMath: division by zero'
                        if Mask(112, 0, _1285):
                            if arg1 * stor2[arg2].field_256 / Mask(112, 0, _1285) <= 0:
                                revert with 0, 'You need to say how many boxes you want'
                            if msg.value < arg1 * stor2[arg2].field_256 / Mask(112, 0, _1285):
                                revert with 0, 'You need to say how many boxes you want'
                            emit Received(arg1 * stor2[arg2].field_256 / Mask(112, 0, _1285), arg1, arg2, msg.sender);
                        _1535 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1535 + 68] = mem[_1483 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1535 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _1535 + -mem[64] + 100
                    if 31 >= uint255(stor1[idx].field_0) * 0.5:
                        mem[_1080 + 32] = 256 * Mask(248, 0, stor1[idx].field_8)
                        if sha3(mem[ceil32(return_data.size) + 128 len mem[ceil32(return_data.size) + 96]]) != sha3(mem[_1080 + 32 len uint255(stor1[idx].field_0) * 0.5]):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        staticcall stor14.getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if address(stor1[idx].field_256) != address(ext_call.return_data[0]):
                            _1258 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_1258] == mem[_1258 + 18 len 14]
                            _1410 = mem[_1258 + 32]
                            require mem[_1258 + 32] == mem[_1258 + 50 len 14]
                            require mem[_1258 + 64] == mem[_1258 + 92 len 4]
                            _1536 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1536] = 26
                            mem[_1536 + 32] = 'SafeMath: division by zero'
                            if Mask(112, 0, _1410):
                                if arg1 * stor2[arg2].field_256 / Mask(112, 0, _1410) <= 0:
                                    revert with 0, 'You need to say how many boxes you want'
                                if msg.value < arg1 * stor2[arg2].field_256 / Mask(112, 0, _1410):
                                    revert with 0, 'You need to say how many boxes you want'
                                emit Received(arg1 * stor2[arg2].field_256 / Mask(112, 0, _1410), arg1, arg2, msg.sender);
                            _1580 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1580 + 68] = mem[_1536 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1580 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1580 + -mem[64] + 100
                        _1259 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1349 = mem[_1259]
                        require mem[_1259] == mem[_1259 + 18 len 14]
                        require mem[_1259 + 32] == mem[_1259 + 50 len 14]
                        require mem[_1259 + 64] == mem[_1259 + 92 len 4]
                        _1537 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1537] = 26
                        mem[_1537 + 32] = 'SafeMath: division by zero'
                        if Mask(112, 0, _1349):
                            if arg1 * stor2[arg2].field_256 / Mask(112, 0, _1349) <= 0:
                                revert with 0, 'You need to say how many boxes you want'
                            if msg.value < arg1 * stor2[arg2].field_256 / Mask(112, 0, _1349):
                                revert with 0, 'You need to say how many boxes you want'
                            emit Received(arg1 * stor2[arg2].field_256 / Mask(112, 0, _1349), arg1, arg2, msg.sender);
                        _1581 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1581 + 68] = mem[_1537 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1581 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _1581 + -mem[64] + 100
                    mem[0] = sha3(idx, 1)
                    mem[_1080 + 32] = stor1[idx].field_0
                    s = _1080 + 32
                    t = sha3(sha3(idx, 1))
                    while _1080 + (uint255(stor1[idx].field_0) * 0.5) > s:
                        mem[s + 32] = stor1[t].field_0
                        s = s + 32
                        t = t + 1
                        continue 
                    if sha3(mem[ceil32(return_data.size) + 128 len mem[ceil32(return_data.size) + 96]]) != sha3(mem[_1080 + 32 len uint255(stor1[idx].field_0) * 0.5]):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    staticcall stor14.getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if address(stor1[idx].field_256) != address(ext_call.return_data[0]):
                        _2284 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_2284] == mem[_2284 + 18 len 14]
                        _2316 = mem[_2284 + 32]
                        require mem[_2284 + 32] == mem[_2284 + 50 len 14]
                        require mem[_2284 + 64] == mem[_2284 + 92 len 4]
                        _2348 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2348] = 26
                        mem[_2348 + 32] = 'SafeMath: division by zero'
                        if Mask(112, 0, _2316):
                            if arg1 * stor2[arg2].field_256 / Mask(112, 0, _2316) <= 0:
                                revert with 0, 'You need to say how many boxes you want'
                            if msg.value < arg1 * stor2[arg2].field_256 / Mask(112, 0, _2316):
                                revert with 0, 'You need to say how many boxes you want'
                            emit Received(arg1 * stor2[arg2].field_256 / Mask(112, 0, _2316), arg1, arg2, msg.sender);
                        _2364 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2364 + 68] = mem[_2348 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2364 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2364 + -mem[64] + 100
                    _2285 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2301 = mem[_2285]
                    require mem[_2285] == mem[_2285 + 18 len 14]
                    require mem[_2285 + 32] == mem[_2285 + 50 len 14]
                    require mem[_2285 + 64] == mem[_2285 + 92 len 4]
                    _2349 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2349] = 26
                    mem[_2349 + 32] = 'SafeMath: division by zero'
                    if Mask(112, 0, _2301):
                        if arg1 * stor2[arg2].field_256 / Mask(112, 0, _2301) <= 0:
                            revert with 0, 'You need to say how many boxes you want'
                        if msg.value < arg1 * stor2[arg2].field_256 / Mask(112, 0, _2301):
                            revert with 0, 'You need to say how many boxes you want'
                        emit Received(arg1 * stor2[arg2].field_256 / Mask(112, 0, _2301), arg1, arg2, msg.sender);
                    _2365 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2365 + 68] = mem[_2349 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2365 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2365 + -mem[64] + 100
                if bool(stor1[idx].field_0) == stor1[idx].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor1[idx].field_1 % 128:
                    if sha3(mem[ceil32(return_data.size) + 128 len mem[ceil32(return_data.size) + 96]]) != sha3(mem[_1080 + 32 len uint255(stor1[idx].field_0) * 0.5]):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    staticcall stor14.getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if address(stor1[idx].field_256) != address(ext_call.return_data[0]):
                        _1228 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_1228] == mem[_1228 + 18 len 14]
                        _1394 = mem[_1228 + 32]
                        require mem[_1228 + 32] == mem[_1228 + 50 len 14]
                        require mem[_1228 + 64] == mem[_1228 + 92 len 4]
                        _1512 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1512] = 26
                        mem[_1512 + 32] = 'SafeMath: division by zero'
                        if Mask(112, 0, _1394):
                            if arg1 * stor2[arg2].field_256 / Mask(112, 0, _1394) <= 0:
                                revert with 0, 'You need to say how many boxes you want'
                            if msg.value < arg1 * stor2[arg2].field_256 / Mask(112, 0, _1394):
                                revert with 0, 'You need to say how many boxes you want'
                            emit Received(arg1 * stor2[arg2].field_256 / Mask(112, 0, _1394), arg1, arg2, msg.sender);
                        _1556 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1556 + 68] = mem[_1512 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1556 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _1556 + -mem[64] + 100
                    _1229 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1317 = mem[_1229]
                    require mem[_1229] == mem[_1229 + 18 len 14]
                    require mem[_1229 + 32] == mem[_1229 + 50 len 14]
                    require mem[_1229 + 64] == mem[_1229 + 92 len 4]
                    _1513 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1513] = 26
                    mem[_1513 + 32] = 'SafeMath: division by zero'
                    if Mask(112, 0, _1317):
                        if arg1 * stor2[arg2].field_256 / Mask(112, 0, _1317) <= 0:
                            revert with 0, 'You need to say how many boxes you want'
                        if msg.value < arg1 * stor2[arg2].field_256 / Mask(112, 0, _1317):
                            revert with 0, 'You need to say how many boxes you want'
                        emit Received(arg1 * stor2[arg2].field_256 / Mask(112, 0, _1317), arg1, arg2, msg.sender);
                    _1557 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1557 + 68] = mem[_1513 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1557 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1557 + -mem[64] + 100
                if 31 >= stor1[idx].field_1 % 128:
                    mem[_1080 + 32] = 256 * Mask(248, 0, stor1[idx].field_8)
                    if sha3(mem[ceil32(return_data.size) + 128 len mem[ceil32(return_data.size) + 96]]) != sha3(mem[_1080 + 32 len uint255(stor1[idx].field_0) * 0.5]):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    staticcall stor14.getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if address(stor1[idx].field_256) != address(ext_call.return_data[0]):
                        _1290 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_1290] == mem[_1290 + 18 len 14]
                        _1432 = mem[_1290 + 32]
                        require mem[_1290 + 32] == mem[_1290 + 50 len 14]
                        require mem[_1290 + 64] == mem[_1290 + 92 len 4]
                        _1558 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1558] = 26
                        mem[_1558 + 32] = 'SafeMath: division by zero'
                        if Mask(112, 0, _1432):
                            if arg1 * stor2[arg2].field_256 / Mask(112, 0, _1432) <= 0:
                                revert with 0, 'You need to say how many boxes you want'
                            if msg.value < arg1 * stor2[arg2].field_256 / Mask(112, 0, _1432):
                                revert with 0, 'You need to say how many boxes you want'
                            emit Received(arg1 * stor2[arg2].field_256 / Mask(112, 0, _1432), arg1, arg2, msg.sender);
                        _1600 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1600 + 68] = mem[_1558 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1600 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _1600 + -mem[64] + 100
                    _1291 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1377 = mem[_1291]
                    require mem[_1291] == mem[_1291 + 18 len 14]
                    require mem[_1291 + 32] == mem[_1291 + 50 len 14]
                    require mem[_1291 + 64] == mem[_1291 + 92 len 4]
                    _1559 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1559] = 26
                    mem[_1559 + 32] = 'SafeMath: division by zero'
                    if Mask(112, 0, _1377):
                        if arg1 * stor2[arg2].field_256 / Mask(112, 0, _1377) <= 0:
                            revert with 0, 'You need to say how many boxes you want'
                        if msg.value < arg1 * stor2[arg2].field_256 / Mask(112, 0, _1377):
                            revert with 0, 'You need to say how many boxes you want'
                        emit Received(arg1 * stor2[arg2].field_256 / Mask(112, 0, _1377), arg1, arg2, msg.sender);
                    _1601 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1601 + 68] = mem[_1559 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1601 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1601 + -mem[64] + 100
                mem[0] = sha3(idx, 1)
                mem[_1080 + 32] = stor1[idx].field_0
                s = _1080 + 32
                t = sha3(sha3(idx, 1))
                while _1080 + stor1[idx].field_1 % 128 > s:
                    mem[s + 32] = stor1[t].field_0
                    s = s + 32
                    t = t + 1
                    continue 
                if sha3(mem[ceil32(return_data.size) + 128 len mem[ceil32(return_data.size) + 96]]) != sha3(mem[_1080 + 32 len uint255(stor1[idx].field_0) * 0.5]):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                staticcall stor14.getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(stor1[idx].field_256) != address(ext_call.return_data[0]):
                    _2286 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_2286] == mem[_2286 + 18 len 14]
                    _2318 = mem[_2286 + 32]
                    require mem[_2286 + 32] == mem[_2286 + 50 len 14]
                    require mem[_2286 + 64] == mem[_2286 + 92 len 4]
                    _2350 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2350] = 26
                    mem[_2350 + 32] = 'SafeMath: division by zero'
                    if Mask(112, 0, _2318):
                        if arg1 * stor2[arg2].field_256 / Mask(112, 0, _2318) <= 0:
                            revert with 0, 'You need to say how many boxes you want'
                        if msg.value < arg1 * stor2[arg2].field_256 / Mask(112, 0, _2318):
                            revert with 0, 'You need to say how many boxes you want'
                        emit Received(arg1 * stor2[arg2].field_256 / Mask(112, 0, _2318), arg1, arg2, msg.sender);
                    _2366 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2366 + 68] = mem[_2350 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2366 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2366 + -mem[64] + 100
                _2287 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2303 = mem[_2287]
                require mem[_2287] == mem[_2287 + 18 len 14]
                require mem[_2287 + 32] == mem[_2287 + 50 len 14]
                require mem[_2287 + 64] == mem[_2287 + 92 len 4]
                _2351 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2351] = 26
                mem[_2351 + 32] = 'SafeMath: division by zero'
                if Mask(112, 0, _2303):
                    if arg1 * stor2[arg2].field_256 / Mask(112, 0, _2303) <= 0:
                        revert with 0, 'You need to say how many boxes you want'
                    if msg.value < arg1 * stor2[arg2].field_256 / Mask(112, 0, _2303):
                        revert with 0, 'You need to say how many boxes you want'
                    emit Received(arg1 * stor2[arg2].field_256 / Mask(112, 0, _2303), arg1, arg2, msg.sender);
                _2367 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2367 + 68] = mem[_2351 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2367 + 94] = 0
                revert with memory
                  from mem[64]
                   len _2367 + -mem[64] + 100
            if bool(stor1[idx].field_0) == stor1[idx].field_1 % 128 < 32:
                revert with 0, 34
            _1082 = mem[64]
            mem[64] = mem[64] + ceil32(stor1[idx].field_1 % 128) + 32
            mem[_1082] = stor1[idx].field_1 % 128
            if bool(stor1[idx].field_0):
                if bool(stor1[idx].field_0) == uint255(stor1[idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor1[idx].field_0):
                    if sha3(mem[ceil32(return_data.size) + 128 len mem[ceil32(return_data.size) + 96]]) != sha3(mem[_1082 + 32 len stor1[idx].field_1 % 128]):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    staticcall stor14.getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if address(stor1[idx].field_256) != address(ext_call.return_data[0]):
                        _1230 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_1230] == mem[_1230 + 18 len 14]
                        _1396 = mem[_1230 + 32]
                        require mem[_1230 + 32] == mem[_1230 + 50 len 14]
                        require mem[_1230 + 64] == mem[_1230 + 92 len 4]
                        _1514 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1514] = 26
                        mem[_1514 + 32] = 'SafeMath: division by zero'
                        if Mask(112, 0, _1396):
                            if arg1 * stor2[arg2].field_256 / Mask(112, 0, _1396) <= 0:
                                revert with 0, 'You need to say how many boxes you want'
                            if msg.value < arg1 * stor2[arg2].field_256 / Mask(112, 0, _1396):
                                revert with 0, 'You need to say how many boxes you want'
                            emit Received(arg1 * stor2[arg2].field_256 / Mask(112, 0, _1396), arg1, arg2, msg.sender);
                        _1560 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1560 + 68] = mem[_1514 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1560 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _1560 + -mem[64] + 100
                    _1231 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1323 = mem[_1231]
                    require mem[_1231] == mem[_1231 + 18 len 14]
                    require mem[_1231 + 32] == mem[_1231 + 50 len 14]
                    require mem[_1231 + 64] == mem[_1231 + 92 len 4]
                    _1515 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1515] = 26
                    mem[_1515 + 32] = 'SafeMath: division by zero'
                    if Mask(112, 0, _1323):
                        if arg1 * stor2[arg2].field_256 / Mask(112, 0, _1323) <= 0:
                            revert with 0, 'You need to say how many boxes you want'
                        if msg.value < arg1 * stor2[arg2].field_256 / Mask(112, 0, _1323):
                            revert with 0, 'You need to say how many boxes you want'
                        emit Received(arg1 * stor2[arg2].field_256 / Mask(112, 0, _1323), arg1, arg2, msg.sender);
                    _1561 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1561 + 68] = mem[_1515 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1561 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1561 + -mem[64] + 100
                if 31 >= uint255(stor1[idx].field_0) * 0.5:
                    mem[_1082 + 32] = 256 * Mask(248, 0, stor1[idx].field_8)
                    if sha3(mem[ceil32(return_data.size) + 128 len mem[ceil32(return_data.size) + 96]]) != sha3(mem[_1082 + 32 len stor1[idx].field_1 % 128]):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    staticcall stor14.getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if address(stor1[idx].field_256) != address(ext_call.return_data[0]):
                        _1292 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_1292] == mem[_1292 + 18 len 14]
                        _1436 = mem[_1292 + 32]
                        require mem[_1292 + 32] == mem[_1292 + 50 len 14]
                        require mem[_1292 + 64] == mem[_1292 + 92 len 4]
                        _1562 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1562] = 26
                        mem[_1562 + 32] = 'SafeMath: division by zero'
                        if Mask(112, 0, _1436):
                            if arg1 * stor2[arg2].field_256 / Mask(112, 0, _1436) <= 0:
                                revert with 0, 'You need to say how many boxes you want'
                            if msg.value < arg1 * stor2[arg2].field_256 / Mask(112, 0, _1436):
                                revert with 0, 'You need to say how many boxes you want'
                            emit Received(arg1 * stor2[arg2].field_256 / Mask(112, 0, _1436), arg1, arg2, msg.sender);
                        _1606 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1606 + 68] = mem[_1562 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1606 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _1606 + -mem[64] + 100
                    _1293 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1379 = mem[_1293]
                    require mem[_1293] == mem[_1293 + 18 len 14]
                    require mem[_1293 + 32] == mem[_1293 + 50 len 14]
                    require mem[_1293 + 64] == mem[_1293 + 92 len 4]
                    _1563 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1563] = 26
                    mem[_1563 + 32] = 'SafeMath: division by zero'
                    if Mask(112, 0, _1379):
                        if arg1 * stor2[arg2].field_256 / Mask(112, 0, _1379) <= 0:
                            revert with 0, 'You need to say how many boxes you want'
                        if msg.value < arg1 * stor2[arg2].field_256 / Mask(112, 0, _1379):
                            revert with 0, 'You need to say how many boxes you want'
                        emit Received(arg1 * stor2[arg2].field_256 / Mask(112, 0, _1379), arg1, arg2, msg.sender);
                    _1607 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1607 + 68] = mem[_1563 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1607 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1607 + -mem[64] + 100
                mem[0] = sha3(idx, 1)
                mem[_1082 + 32] = stor1[idx].field_0
                s = _1082 + 32
                t = sha3(sha3(idx, 1))
                while _1082 + (uint255(stor1[idx].field_0) * 0.5) > s:
                    mem[s + 32] = stor1[t].field_0
                    s = s + 32
                    t = t + 1
                    continue 
                if sha3(mem[ceil32(return_data.size) + 128 len mem[ceil32(return_data.size) + 96]]) != sha3(mem[_1082 + 32 len stor1[idx].field_1 % 128]):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                staticcall stor14.getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(stor1[idx].field_256) != address(ext_call.return_data[0]):
                    _2288 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_2288] == mem[_2288 + 18 len 14]
                    _2320 = mem[_2288 + 32]
                    require mem[_2288 + 32] == mem[_2288 + 50 len 14]
                    require mem[_2288 + 64] == mem[_2288 + 92 len 4]
                    _2352 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2352] = 26
                    mem[_2352 + 32] = 'SafeMath: division by zero'
                    if Mask(112, 0, _2320):
                        if arg1 * stor2[arg2].field_256 / Mask(112, 0, _2320) <= 0:
                            revert with 0, 'You need to say how many boxes you want'
                        if msg.value < arg1 * stor2[arg2].field_256 / Mask(112, 0, _2320):
                            revert with 0, 'You need to say how many boxes you want'
                        emit Received(arg1 * stor2[arg2].field_256 / Mask(112, 0, _2320), arg1, arg2, msg.sender);
                    _2368 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2368 + 68] = mem[_2352 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2368 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2368 + -mem[64] + 100
                _2289 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2305 = mem[_2289]
                require mem[_2289] == mem[_2289 + 18 len 14]
                require mem[_2289 + 32] == mem[_2289 + 50 len 14]
                require mem[_2289 + 64] == mem[_2289 + 92 len 4]
                _2353 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2353] = 26
                mem[_2353 + 32] = 'SafeMath: division by zero'
                if Mask(112, 0, _2305):
                    if arg1 * stor2[arg2].field_256 / Mask(112, 0, _2305) <= 0:
                        revert with 0, 'You need to say how many boxes you want'
                    if msg.value < arg1 * stor2[arg2].field_256 / Mask(112, 0, _2305):
                        revert with 0, 'You need to say how many boxes you want'
                    emit Received(arg1 * stor2[arg2].field_256 / Mask(112, 0, _2305), arg1, arg2, msg.sender);
                _2369 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2369 + 68] = mem[_2353 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2369 + 94] = 0
                revert with memory
                  from mem[64]
                   len _2369 + -mem[64] + 100
            if bool(stor1[idx].field_0) == stor1[idx].field_1 % 128 < 32:
                revert with 0, 34
            if not stor1[idx].field_1 % 128:
                if sha3(mem[ceil32(return_data.size) + 128 len mem[ceil32(return_data.size) + 96]]) != sha3(mem[_1082 + 32 len stor1[idx].field_1 % 128]):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                staticcall stor14.getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(stor1[idx].field_256) != address(ext_call.return_data[0]):
                    _1268 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_1268] == mem[_1268 + 18 len 14]
                    _1416 = mem[_1268 + 32]
                    require mem[_1268 + 32] == mem[_1268 + 50 len 14]
                    require mem[_1268 + 64] == mem[_1268 + 92 len 4]
                    _1542 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1542] = 26
                    mem[_1542 + 32] = 'SafeMath: division by zero'
                    if Mask(112, 0, _1416):
                        if arg1 * stor2[arg2].field_256 / Mask(112, 0, _1416) <= 0:
                            revert with 0, 'You need to say how many boxes you want'
                        if msg.value < arg1 * stor2[arg2].field_256 / Mask(112, 0, _1416):
                            revert with 0, 'You need to say how many boxes you want'
                        emit Received(arg1 * stor2[arg2].field_256 / Mask(112, 0, _1416), arg1, arg2, msg.sender);
                    _1582 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1582 + 68] = mem[_1542 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1582 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1582 + -mem[64] + 100
                _1269 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1355 = mem[_1269]
                require mem[_1269] == mem[_1269 + 18 len 14]
                require mem[_1269 + 32] == mem[_1269 + 50 len 14]
                require mem[_1269 + 64] == mem[_1269 + 92 len 4]
                _1543 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1543] = 26
                mem[_1543 + 32] = 'SafeMath: division by zero'
                if Mask(112, 0, _1355):
                    if arg1 * stor2[arg2].field_256 / Mask(112, 0, _1355) <= 0:
                        revert with 0, 'You need to say how many boxes you want'
                    if msg.value < arg1 * stor2[arg2].field_256 / Mask(112, 0, _1355):
                        revert with 0, 'You need to say how many boxes you want'
                    emit Received(arg1 * stor2[arg2].field_256 / Mask(112, 0, _1355), arg1, arg2, msg.sender);
                _1583 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1583 + 68] = mem[_1543 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1583 + 94] = 0
                revert with memory
                  from mem[64]
                   len _1583 + -mem[64] + 100
            if 31 >= stor1[idx].field_1 % 128:
                mem[_1082 + 32] = 256 * Mask(248, 0, stor1[idx].field_8)
                if sha3(mem[ceil32(return_data.size) + 128 len mem[ceil32(return_data.size) + 96]]) != sha3(mem[_1082 + 32 len stor1[idx].field_1 % 128]):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                staticcall stor14.getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(stor1[idx].field_256) != address(ext_call.return_data[0]):
                    _1328 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_1328] == mem[_1328 + 18 len 14]
                    _1462 = mem[_1328 + 32]
                    require mem[_1328 + 32] == mem[_1328 + 50 len 14]
                    require mem[_1328 + 64] == mem[_1328 + 92 len 4]
                    _1584 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1584] = 26
                    mem[_1584 + 32] = 'SafeMath: division by zero'
                    if Mask(112, 0, _1462):
                        if arg1 * stor2[arg2].field_256 / Mask(112, 0, _1462) <= 0:
                            revert with 0, 'You need to say how many boxes you want'
                        if msg.value < arg1 * stor2[arg2].field_256 / Mask(112, 0, _1462):
                            revert with 0, 'You need to say how many boxes you want'
                        emit Received(arg1 * stor2[arg2].field_256 / Mask(112, 0, _1462), arg1, arg2, msg.sender);
                    _1630 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1630 + 68] = mem[_1584 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1630 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1630 + -mem[64] + 100
                _1329 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1399 = mem[_1329]
                require mem[_1329] == mem[_1329 + 18 len 14]
                require mem[_1329 + 32] == mem[_1329 + 50 len 14]
                require mem[_1329 + 64] == mem[_1329 + 92 len 4]
                _1585 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1585] = 26
                mem[_1585 + 32] = 'SafeMath: division by zero'
                if Mask(112, 0, _1399):
                    if arg1 * stor2[arg2].field_256 / Mask(112, 0, _1399) <= 0:
                        revert with 0, 'You need to say how many boxes you want'
                    if msg.value < arg1 * stor2[arg2].field_256 / Mask(112, 0, _1399):
                        revert with 0, 'You need to say how many boxes you want'
                    emit Received(arg1 * stor2[arg2].field_256 / Mask(112, 0, _1399), arg1, arg2, msg.sender);
                _1631 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1631 + 68] = mem[_1585 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1631 + 94] = 0
                revert with memory
                  from mem[64]
                   len _1631 + -mem[64] + 100
            mem[0] = sha3(idx, 1)
            mem[_1082 + 32] = stor1[idx].field_0
            s = _1082 + 32
            t = sha3(sha3(idx, 1))
            while _1082 + stor1[idx].field_1 % 128 > s:
                mem[s + 32] = stor1[t].field_0
                s = s + 32
                t = t + 1
                continue 
            if sha3(mem[ceil32(return_data.size) + 128 len mem[ceil32(return_data.size) + 96]]) != sha3(mem[_1082 + 32 len stor1[idx].field_1 % 128]):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            staticcall stor14.getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if address(stor1[idx].field_256) != address(ext_call.return_data[0]):
                _2290 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_2290] == mem[_2290 + 18 len 14]
                _2322 = mem[_2290 + 32]
                require mem[_2290 + 32] == mem[_2290 + 50 len 14]
                require mem[_2290 + 64] == mem[_2290 + 92 len 4]
                _2354 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2354] = 26
                mem[_2354 + 32] = 'SafeMath: division by zero'
                if Mask(112, 0, _2322):
                    if arg1 * stor2[arg2].field_256 / Mask(112, 0, _2322) <= 0:
                        revert with 0, 'You need to say how many boxes you want'
                    if msg.value < arg1 * stor2[arg2].field_256 / Mask(112, 0, _2322):
                        revert with 0, 'You need to say how many boxes you want'
                    emit Received(arg1 * stor2[arg2].field_256 / Mask(112, 0, _2322), arg1, arg2, msg.sender);
                _2370 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2370 + 68] = mem[_2354 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2370 + 94] = 0
                revert with memory
                  from mem[64]
                   len _2370 + -mem[64] + 100
            _2291 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _2307 = mem[_2291]
            require mem[_2291] == mem[_2291 + 18 len 14]
            require mem[_2291 + 32] == mem[_2291 + 50 len 14]
            require mem[_2291 + 64] == mem[_2291 + 92 len 4]
            _2355 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2355] = 26
            mem[_2355 + 32] = 'SafeMath: division by zero'
            if Mask(112, 0, _2307):
                if arg1 * stor2[arg2].field_256 / Mask(112, 0, _2307) <= 0:
                    revert with 0, 'You need to say how many boxes you want'
                if msg.value < arg1 * stor2[arg2].field_256 / Mask(112, 0, _2307):
                    revert with 0, 'You need to say how many boxes you want'
                emit Received(arg1 * stor2[arg2].field_256 / Mask(112, 0, _2307), arg1, arg2, msg.sender);
            _2371 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _2371 + 68] = mem[_2355 + idx + 32]
                idx = idx + 32
                continue 
            mem[_2371 + 94] = 0
            revert with memory
              from mem[64]
               len _2371 + -mem[64] + 100
        staticcall stor14.getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if address(ext_call.return_data[0]) != 0:
            _1076 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_1076] == mem[_1076 + 18 len 14]
            require mem[_1076 + 32] == mem[_1076 + 50 len 14]
            require mem[_1076 + 64] == mem[_1076 + 92 len 4]
            if not mem[_1076 + 50 len 14]:
                revert with 0, 'SafeMath: division by zero', 0
            if arg1 * stor2[arg2].field_256 / mem[_1076 + 50 len 14] <= 0:
                revert with 0, 'You need to say how many boxes you want'
            if msg.value < arg1 * stor2[arg2].field_256 / mem[_1076 + 50 len 14]:
                revert with 0, 'You need to say how many boxes you want'
            emit Received(arg1 * stor2[arg2].field_256 / mem[_1076 + 50 len 14], arg1, arg2, msg.sender);
        else:
            _1077 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_1077] == mem[_1077 + 18 len 14]
            require mem[_1077 + 32] == mem[_1077 + 50 len 14]
            require mem[_1077 + 64] == mem[_1077 + 92 len 4]
            if not mem[_1077 + 18 len 14]:
                revert with 0, 'SafeMath: division by zero', 0
            if arg1 * stor2[arg2].field_256 / mem[_1077 + 18 len 14] <= 0:
                revert with 0, 'You need to say how many boxes you want'
            if msg.value < arg1 * stor2[arg2].field_256 / mem[_1077 + 18 len 14]:
                revert with 0, 'You need to say how many boxes you want'
            emit Received(arg1 * stor2[arg2].field_256 / mem[_1077 + 18 len 14], arg1, arg2, msg.sender);
}



}
