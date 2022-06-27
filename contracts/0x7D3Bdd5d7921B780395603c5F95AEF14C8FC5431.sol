contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 stor1;
array of struct sub_4fc7eba0;

function sub_4fc7eba0(?) {
    return sub_4fc7eba0[msg.sender].field_0
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function withdrawAll() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function setPrice(string arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[Array(len=arg1.length, data=arg1[all])] = arg2
}

function getPrice(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if ceil32(arg1.length) <= arg1.length:
        return stor1[Array(len=arg1.length, data=arg1[all])]
    mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + 193] = stor1[Array(len=arg1.length, data=arg1[all])]
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), 
           mem[ceil32(ceil32(arg1.length)) + arg1.length + 225 len -arg1.length + ceil32(arg1.length)]
}

function sub_a5a4fe4c(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == address(arg2)
    if stor1[Array(len=arg1.length, data=arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length])] != msg.value:
        revert with 0, 'CC: incorrect price'
    sub_4fc7eba0[address(arg2)].field_0++
    sub_4fc7eba0[address(arg2)][sub_4fc7eba0[address(arg2)].field_0].field_0 = msg.sender
    if sub_4fc7eba0[address(arg2)][sub_4fc7eba0[address(arg2)].field_0].field_256:
        if sub_4fc7eba0[address(arg2)][sub_4fc7eba0[address(arg2)].field_0].field_256 == sub_4fc7eba0[address(arg2)][sub_4fc7eba0[address(arg2)].field_0].field_257 < 32:
            revert with 0, 34
        if arg1.length:
            stor[sha3((3 * sub_4fc7eba0[address(arg2)].field_0) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'sub_4fc7eba0', 2)) + 1)][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            sub_4fc7eba0[address(arg2)][sub_4fc7eba0[address(arg2)].field_0].field_256 = 0
            idx = 0
            while sub_4fc7eba0[address(arg2)][sub_4fc7eba0[address(arg2)].field_0].field_257 + 31 / 32 > idx:
                stor[idx + sha3((3 * sub_4fc7eba0[address(arg2)].field_0) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'sub_4fc7eba0', 2)) + 1)].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if sub_4fc7eba0[address(arg2)][sub_4fc7eba0[address(arg2)].field_0].field_256 == sub_4fc7eba0[address(arg2)][sub_4fc7eba0[address(arg2)].field_0].field_257 < 32:
            revert with 0, 34
        if arg1.length:
            stor[sha3((3 * sub_4fc7eba0[address(arg2)].field_0) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'sub_4fc7eba0', 2)) + 1)][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            sub_4fc7eba0[address(arg2)][sub_4fc7eba0[address(arg2)].field_0].field_256 = 0
            idx = 0
            while sub_4fc7eba0[address(arg2)][sub_4fc7eba0[address(arg2)].field_0].field_257 + 31 / 32 > idx:
                stor[idx + sha3((3 * sub_4fc7eba0[address(arg2)].field_0) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'sub_4fc7eba0', 2)) + 1)].field_0 = 0
                idx = idx + 1
                continue 
    sub_4fc7eba0[address(arg2)][sub_4fc7eba0[address(arg2)].field_0].field_512 = block.timestamp
    emit Created(Array(len=arg1.length, data=arg1[all]), address(arg2), msg.sender);
}

function sub_9416ab3d(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if floor32(('cd', 4).length) + 97 < 96 or floor32(('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = floor32(('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] <= test266151307()
        require cd[4] + cd[idx] + 67 < calldata.size
        if cd[(cd[4] + cd[idx] + 36)] > test266151307():
            revert with 0, 65
        _26 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[4] + cd[idx] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[4] + cd[idx] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[4] + cd[idx] + 36)])) + 1
        mem[_26] = cd[(cd[4] + cd[idx] + 36)]
        require cd[4] + cd[idx] + cd[(cd[4] + cd[idx] + 36)] + 68 <= calldata.size
        mem[_26 + 32 len cd[(cd[4] + cd[idx] + 36)]] = call.data[cd[4] + cd[idx] + 68 len cd[(cd[4] + cd[idx] + 36)]]
        mem[_26 + cd[(cd[4] + cd[idx] + 36)] + 32] = 0
        mem[s] = _26
        idx = idx + 32
        s = s + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    _27 = mem[64]
    if mem[64] + floor32(('cd', 36).length) + 1 < mem[64] or mem[64] + floor32(('cd', 36).length) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + floor32(('cd', 36).length) + 1
    mem[_27] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = _27 + 32
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if mem[96] != ('cd', 36).length:
        revert with 0, 'CC: Length not equal'
    _72 = mem[96]
    idx = 0
    while idx < _72:
        if idx >= mem[_27]:
            revert with 0, 50
        _74 = mem[(32 * idx) + _27 + 32]
        if idx >= mem[96]:
            revert with 0, 50
        _76 = mem[(32 * idx) + 128]
        _77 = mem[64]
        mem[mem[64] + 32] = 32
        _78 = mem[_76]
        mem[mem[64] + 64] = mem[_76]
        s = 0
        while s < _78:
            mem[s + mem[64] + 96] = mem[_76 + s + 32]
            _72 = mem[96]
            s = s + 32
            continue 
        if ceil32(_78) <= _78:
            _89 = mem[64]
            mem[mem[64]] = ceil32(_78) + _77 + -mem[64] + 64
            mem[64] = ceil32(_78) + _77 + 96
            mem[0] = sha3(mem[_89 + 32 len mem[_89]])
        else:
            mem[_77 + _78 + 96] = 0
            _93 = mem[64]
            mem[mem[64]] = ceil32(_78) + _77 + -mem[64] + 64
            mem[64] = ceil32(_78) + _77 + 96
            mem[0] = sha3(mem[_93 + 32 len mem[_93]])
        mem[32] = 1
        stor1[mem[0]] = _74
        if idx == -1:
            revert with 0, 17
        _72 = mem[96]
        idx = idx + 1
        continue 
}

function sub_ed9bee2a(?) {
    require calldata.size - 4 >= 32
    if arg1 >= sub_4fc7eba0[msg.sender].field_0:
        revert with 0, 50
    if arg1 >= sub_4fc7eba0[address(msg.sender)].field_0:
        revert with 0, 50
    if arg1 >= sub_4fc7eba0[address(msg.sender)].field_0:
        revert with 0, 50
    if sub_4fc7eba0[address(msg.sender)][arg1].field_256:
        if sub_4fc7eba0[address(msg.sender)][arg1].field_256 == sub_4fc7eba0[address(msg.sender)][arg1].field_257 < 32:
            revert with 0, 34
        if sub_4fc7eba0[address(msg.sender)][arg1].field_256:
            if sub_4fc7eba0[address(msg.sender)][arg1].field_256 == sub_4fc7eba0[address(msg.sender)][arg1].field_257 < 32:
                revert with 0, 34
            if sub_4fc7eba0[address(msg.sender)][arg1].field_257:
                if 31 >= sub_4fc7eba0[address(msg.sender)][arg1].field_257:
                    mem[128] = 256 * sub_4fc7eba0[address(msg.sender)][arg1].field_264
                else:
                    mem[128] = stor[sha3((3 * arg1) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_4fc7eba0', 2)) + 1)].field_0
                    idx = 128
                    s = 0
                    while sub_4fc7eba0[address(msg.sender)][arg1].field_257 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((3 * arg1) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_4fc7eba0', 2)) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if sub_4fc7eba0[address(msg.sender)][arg1].field_256 == sub_4fc7eba0[address(msg.sender)][arg1].field_257 < 32:
                revert with 0, 34
            if sub_4fc7eba0[address(msg.sender)][arg1].field_257:
                if 31 >= sub_4fc7eba0[address(msg.sender)][arg1].field_257:
                    mem[128] = 256 * sub_4fc7eba0[address(msg.sender)][arg1].field_264
                else:
                    mem[128] = stor[sha3((3 * arg1) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_4fc7eba0', 2)) + 1)].field_0
                    idx = 128
                    s = 0
                    while sub_4fc7eba0[address(msg.sender)][arg1].field_257 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((3 * arg1) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_4fc7eba0', 2)) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return sub_4fc7eba0[msg.sender][arg1].field_0, 
               Array(len=2 * Mask(256, -1, sub_4fc7eba0[address(msg.sender)][arg1].field_257), data=mem[128 len ceil32(sub_4fc7eba0[address(msg.sender)][arg1].field_257)]),
               sub_4fc7eba0[address(msg.sender)][arg1].field_512
    if sub_4fc7eba0[address(msg.sender)][arg1].field_256 == sub_4fc7eba0[address(msg.sender)][arg1].field_257 < 32:
        revert with 0, 34
    if sub_4fc7eba0[address(msg.sender)][arg1].field_256:
        if sub_4fc7eba0[address(msg.sender)][arg1].field_256 == sub_4fc7eba0[address(msg.sender)][arg1].field_257 < 32:
            revert with 0, 34
        if sub_4fc7eba0[address(msg.sender)][arg1].field_257:
            if 31 >= sub_4fc7eba0[address(msg.sender)][arg1].field_257:
                mem[128] = 256 * sub_4fc7eba0[address(msg.sender)][arg1].field_264
            else:
                mem[128] = stor[sha3((3 * arg1) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_4fc7eba0', 2)) + 1)].field_0
                idx = 128
                s = 0
                while sub_4fc7eba0[address(msg.sender)][arg1].field_257 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((3 * arg1) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_4fc7eba0', 2)) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if sub_4fc7eba0[address(msg.sender)][arg1].field_256 == sub_4fc7eba0[address(msg.sender)][arg1].field_257 < 32:
            revert with 0, 34
        if sub_4fc7eba0[address(msg.sender)][arg1].field_257:
            if 31 >= sub_4fc7eba0[address(msg.sender)][arg1].field_257:
                mem[128] = 256 * sub_4fc7eba0[address(msg.sender)][arg1].field_264
            else:
                mem[128] = stor[sha3((3 * arg1) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_4fc7eba0', 2)) + 1)].field_0
                idx = 128
                s = 0
                while sub_4fc7eba0[address(msg.sender)][arg1].field_257 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((3 * arg1) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_4fc7eba0', 2)) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return sub_4fc7eba0[msg.sender][arg1].field_0, 
           Array(len=sub_4fc7eba0[address(msg.sender)][arg1].field_256, data=mem[128 len ceil32(sub_4fc7eba0[address(msg.sender)][arg1].field_257)]),
           sub_4fc7eba0[address(msg.sender)][arg1].field_512
}

function sub_f58f66d9(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[0] = msg.sender
    mem[32] = 2
    if not sub_4fc7eba0[msg.sender].field_0:
        revert with 0, 'CC: no clones'
    idx = 0
    while idx < sub_4fc7eba0[msg.sender].field_0:
        mem[32] = 2
        if idx >= sub_4fc7eba0[msg.sender].field_0:
            revert with 0, 50
        mem[0] = sha3(msg.sender, 2)
        if sub_4fc7eba0[msg.sender][idx].field_0 != address(arg1):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx >= sub_4fc7eba0[msg.sender].field_0:
            revert with 0, 50
        if idx >= sub_4fc7eba0[address(msg.sender)].field_0:
            revert with 0, 50
        mem[32] = 2
        if idx >= sub_4fc7eba0[address(msg.sender)].field_0:
            revert with 0, 50
        mem[0] = sha3(address(msg.sender), 2)
        if sub_4fc7eba0[address(msg.sender)][idx].field_256:
            if sub_4fc7eba0[address(msg.sender)][idx].field_256 == sub_4fc7eba0[address(msg.sender)][idx].field_257 < 32:
                revert with 0, 34
            mem[64] = ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257) + 128
            mem[96] = sub_4fc7eba0[address(msg.sender)][idx].field_257
            if sub_4fc7eba0[address(msg.sender)][idx].field_256:
                if sub_4fc7eba0[address(msg.sender)][idx].field_256 == sub_4fc7eba0[address(msg.sender)][idx].field_257 < 32:
                    revert with 0, 34
                if not sub_4fc7eba0[address(msg.sender)][idx].field_257:
                    mem[ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257) + 128] = sub_4fc7eba0[msg.sender][idx].field_0
                    mem[ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257) + 160] = 96
                    mem[ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257) + 224] = sub_4fc7eba0[address(msg.sender)][idx].field_257
                    s = 0
                    while s < sub_4fc7eba0[address(msg.sender)][idx].field_257:
                        mem[s + ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257) + 256] = mem[s + 128]
                        s = s + 32
                        continue 
                    if ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257) > sub_4fc7eba0[address(msg.sender)][idx].field_257:
                        mem[ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257) + sub_4fc7eba0[address(msg.sender)][idx].field_257 + 256] = 0
                    return sub_4fc7eba0[msg.sender][idx].field_0, 
                           Array(len=2 * Mask(256, -1, sub_4fc7eba0[address(msg.sender)][idx].field_257), data=mem[ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257) + 256 len ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257)]),
                           sub_4fc7eba0[address(msg.sender)][idx].field_512
                if 31 >= sub_4fc7eba0[address(msg.sender)][idx].field_257:
                    mem[128] = 256 * sub_4fc7eba0[address(msg.sender)][idx].field_264
                    mem[ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257) + 128] = sub_4fc7eba0[msg.sender][idx].field_0
                    mem[ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257) + 160] = 96
                    mem[ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257) + 224] = sub_4fc7eba0[address(msg.sender)][idx].field_257
                    s = 0
                    while s < sub_4fc7eba0[address(msg.sender)][idx].field_257:
                        mem[s + ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257) + 256] = mem[s + 128]
                        s = s + 32
                        continue 
                    if ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257) > sub_4fc7eba0[address(msg.sender)][idx].field_257:
                        mem[ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257) + sub_4fc7eba0[address(msg.sender)][idx].field_257 + 256] = 0
                    return sub_4fc7eba0[msg.sender][idx].field_0, 
                           Array(len=2 * Mask(256, -1, sub_4fc7eba0[address(msg.sender)][idx].field_257), data=mem[ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257) + 256 len ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257)]),
                           sub_4fc7eba0[address(msg.sender)][idx].field_512
                mem[0] = (3 * idx) + sha3(sha3(address(msg.sender), 2)) + 1
                mem[128] = stor[sha3((3 * idx) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_4fc7eba0', 2)) + 1)].field_0
                s = 128
                t = sha3(mem[0])
                while sub_4fc7eba0[address(msg.sender)][idx].field_257 + 96 > s:
                    mem[s + 32] = stor1[t]
                    s = s + 32
                    t = t + 1
                    continue 
                _175 = mem[64]
                mem[mem[64]] = sub_4fc7eba0[msg.sender][idx].field_0
                mem[mem[64] + 32] = 96
                _195 = mem[96]
                mem[mem[64] + 96] = mem[96]
                s = 0
                while s < _195:
                    mem[s + mem[64] + 128] = mem[s + 128]
                    s = s + 32
                    continue 
                if ceil32(_195) > _195:
                    mem[_175 + _195 + 128] = 0
                mem[_175 + 64] = sub_4fc7eba0[address(msg.sender)][idx].field_512
                return memory
                  from mem[64]
                   len ceil32(_195) + _175 + -mem[64] + 128
            if sub_4fc7eba0[address(msg.sender)][idx].field_256 == sub_4fc7eba0[address(msg.sender)][idx].field_257 < 32:
                revert with 0, 34
            if not sub_4fc7eba0[address(msg.sender)][idx].field_257:
                mem[ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257) + 128] = sub_4fc7eba0[msg.sender][idx].field_0
                mem[ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257) + 160] = 96
                mem[ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257) + 224] = sub_4fc7eba0[address(msg.sender)][idx].field_257
                s = 0
                while s < sub_4fc7eba0[address(msg.sender)][idx].field_257:
                    mem[s + ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257) + 256] = mem[s + 128]
                    s = s + 32
                    continue 
                if ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257) > sub_4fc7eba0[address(msg.sender)][idx].field_257:
                    mem[ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257) + sub_4fc7eba0[address(msg.sender)][idx].field_257 + 256] = 0
                return sub_4fc7eba0[msg.sender][idx].field_0, 
                       Array(len=2 * Mask(256, -1, sub_4fc7eba0[address(msg.sender)][idx].field_257), data=mem[ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257) + 256 len ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257)]),
                       sub_4fc7eba0[address(msg.sender)][idx].field_512
            if 31 >= sub_4fc7eba0[address(msg.sender)][idx].field_257:
                mem[128] = 256 * sub_4fc7eba0[address(msg.sender)][idx].field_264
                mem[ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257) + 128] = sub_4fc7eba0[msg.sender][idx].field_0
                mem[ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257) + 160] = 96
                mem[ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257) + 224] = sub_4fc7eba0[address(msg.sender)][idx].field_257
                s = 0
                while s < sub_4fc7eba0[address(msg.sender)][idx].field_257:
                    mem[s + ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257) + 256] = mem[s + 128]
                    s = s + 32
                    continue 
                if ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257) > sub_4fc7eba0[address(msg.sender)][idx].field_257:
                    mem[ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257) + sub_4fc7eba0[address(msg.sender)][idx].field_257 + 256] = 0
                return sub_4fc7eba0[msg.sender][idx].field_0, 
                       Array(len=2 * Mask(256, -1, sub_4fc7eba0[address(msg.sender)][idx].field_257), data=mem[ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257) + 256 len ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257)]),
                       sub_4fc7eba0[address(msg.sender)][idx].field_512
            mem[0] = (3 * idx) + sha3(sha3(address(msg.sender), 2)) + 1
            mem[128] = stor[sha3((3 * idx) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_4fc7eba0', 2)) + 1)].field_0
            s = 128
            t = sha3(mem[0])
            while sub_4fc7eba0[address(msg.sender)][idx].field_257 + 96 > s:
                mem[s + 32] = stor1[t]
                s = s + 32
                t = t + 1
                continue 
            _178 = mem[64]
            mem[mem[64]] = sub_4fc7eba0[msg.sender][idx].field_0
            mem[mem[64] + 32] = 96
            _196 = mem[96]
            mem[mem[64] + 96] = mem[96]
            s = 0
            while s < _196:
                mem[s + mem[64] + 128] = mem[s + 128]
                s = s + 32
                continue 
            if ceil32(_196) > _196:
                mem[_178 + _196 + 128] = 0
            mem[_178 + 64] = sub_4fc7eba0[address(msg.sender)][idx].field_512
            return memory
              from mem[64]
               len ceil32(_196) + _178 + -mem[64] + 128
        if sub_4fc7eba0[address(msg.sender)][idx].field_256 == sub_4fc7eba0[address(msg.sender)][idx].field_257 < 32:
            revert with 0, 34
        mem[64] = ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257) + 128
        mem[96] = sub_4fc7eba0[address(msg.sender)][idx].field_257
        if sub_4fc7eba0[address(msg.sender)][idx].field_256:
            if sub_4fc7eba0[address(msg.sender)][idx].field_256 == sub_4fc7eba0[address(msg.sender)][idx].field_257 < 32:
                revert with 0, 34
            if not sub_4fc7eba0[address(msg.sender)][idx].field_257:
                mem[ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257) + 128] = sub_4fc7eba0[msg.sender][idx].field_0
                mem[ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257) + 160] = 96
                mem[ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257) + 224] = sub_4fc7eba0[address(msg.sender)][idx].field_257
                s = 0
                while s < sub_4fc7eba0[address(msg.sender)][idx].field_257:
                    mem[s + ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257) + 256] = mem[s + 128]
                    s = s + 32
                    continue 
                if ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257) > sub_4fc7eba0[address(msg.sender)][idx].field_257:
                    mem[ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257) + sub_4fc7eba0[address(msg.sender)][idx].field_257 + 256] = 0
                return sub_4fc7eba0[msg.sender][idx].field_0, 
                       Array(len=sub_4fc7eba0[address(msg.sender)][idx].field_256, data=mem[ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257) + 256 len ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257)]),
                       sub_4fc7eba0[address(msg.sender)][idx].field_512
            if 31 >= sub_4fc7eba0[address(msg.sender)][idx].field_257:
                mem[128] = 256 * sub_4fc7eba0[address(msg.sender)][idx].field_264
                mem[ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257) + 128] = sub_4fc7eba0[msg.sender][idx].field_0
                mem[ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257) + 160] = 96
                mem[ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257) + 224] = sub_4fc7eba0[address(msg.sender)][idx].field_257
                s = 0
                while s < sub_4fc7eba0[address(msg.sender)][idx].field_257:
                    mem[s + ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257) + 256] = mem[s + 128]
                    s = s + 32
                    continue 
                if ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257) > sub_4fc7eba0[address(msg.sender)][idx].field_257:
                    mem[ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257) + sub_4fc7eba0[address(msg.sender)][idx].field_257 + 256] = 0
                return sub_4fc7eba0[msg.sender][idx].field_0, 
                       Array(len=sub_4fc7eba0[address(msg.sender)][idx].field_256, data=mem[ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257) + 256 len ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257)]),
                       sub_4fc7eba0[address(msg.sender)][idx].field_512
            mem[0] = (3 * idx) + sha3(sha3(address(msg.sender), 2)) + 1
            mem[128] = stor[sha3((3 * idx) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_4fc7eba0', 2)) + 1)].field_0
            s = 128
            t = sha3(mem[0])
            while sub_4fc7eba0[address(msg.sender)][idx].field_257 + 96 > s:
                mem[s + 32] = stor1[t]
                s = s + 32
                t = t + 1
                continue 
            _181 = mem[64]
            mem[mem[64]] = sub_4fc7eba0[msg.sender][idx].field_0
            mem[mem[64] + 32] = 96
            _197 = mem[96]
            mem[mem[64] + 96] = mem[96]
            s = 0
            while s < _197:
                mem[s + mem[64] + 128] = mem[s + 128]
                s = s + 32
                continue 
            if ceil32(_197) > _197:
                mem[_181 + _197 + 128] = 0
            mem[_181 + 64] = sub_4fc7eba0[address(msg.sender)][idx].field_512
            return memory
              from mem[64]
               len ceil32(_197) + _181 + -mem[64] + 128
        if sub_4fc7eba0[address(msg.sender)][idx].field_256 == sub_4fc7eba0[address(msg.sender)][idx].field_257 < 32:
            revert with 0, 34
        if not sub_4fc7eba0[address(msg.sender)][idx].field_257:
            mem[ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257) + 128] = sub_4fc7eba0[msg.sender][idx].field_0
            mem[ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257) + 160] = 96
            mem[ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257) + 224] = sub_4fc7eba0[address(msg.sender)][idx].field_257
            s = 0
            while s < sub_4fc7eba0[address(msg.sender)][idx].field_257:
                mem[s + ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257) + 256] = mem[s + 128]
                s = s + 32
                continue 
            if ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257) > sub_4fc7eba0[address(msg.sender)][idx].field_257:
                mem[ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257) + sub_4fc7eba0[address(msg.sender)][idx].field_257 + 256] = 0
            return sub_4fc7eba0[msg.sender][idx].field_0, 
                   Array(len=sub_4fc7eba0[address(msg.sender)][idx].field_256, data=mem[ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257) + 256 len ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257)]),
                   sub_4fc7eba0[address(msg.sender)][idx].field_512
        if 31 >= sub_4fc7eba0[address(msg.sender)][idx].field_257:
            mem[128] = 256 * sub_4fc7eba0[address(msg.sender)][idx].field_264
            mem[ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257) + 128] = sub_4fc7eba0[msg.sender][idx].field_0
            mem[ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257) + 160] = 96
            mem[ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257) + 224] = sub_4fc7eba0[address(msg.sender)][idx].field_257
            s = 0
            while s < sub_4fc7eba0[address(msg.sender)][idx].field_257:
                mem[s + ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257) + 256] = mem[s + 128]
                s = s + 32
                continue 
            if ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257) > sub_4fc7eba0[address(msg.sender)][idx].field_257:
                mem[ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257) + sub_4fc7eba0[address(msg.sender)][idx].field_257 + 256] = 0
            return sub_4fc7eba0[msg.sender][idx].field_0, 
                   Array(len=sub_4fc7eba0[address(msg.sender)][idx].field_256, data=mem[ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257) + 256 len ceil32(sub_4fc7eba0[address(msg.sender)][idx].field_257)]),
                   sub_4fc7eba0[address(msg.sender)][idx].field_512
        mem[0] = (3 * idx) + sha3(sha3(address(msg.sender), 2)) + 1
        mem[128] = stor[sha3((3 * idx) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_4fc7eba0', 2)) + 1)].field_0
        s = 128
        t = sha3(mem[0])
        while sub_4fc7eba0[address(msg.sender)][idx].field_257 + 96 > s:
            mem[s + 32] = stor1[t]
            s = s + 32
            t = t + 1
            continue 
        _184 = mem[64]
        mem[mem[64]] = sub_4fc7eba0[msg.sender][idx].field_0
        mem[mem[64] + 32] = 96
        _198 = mem[96]
        mem[mem[64] + 96] = mem[96]
        s = 0
        while s < _198:
            mem[s + mem[64] + 128] = mem[s + 128]
            s = s + 32
            continue 
        if ceil32(_198) > _198:
            mem[_184 + _198 + 128] = 0
        mem[_184 + 64] = sub_4fc7eba0[address(msg.sender)][idx].field_512
        return memory
          from mem[64]
           len ceil32(_198) + _184 + -mem[64] + 128
    return 0, 96, 0, 0
}



}
