contract main {




// =====================  Runtime code  =====================


#
#  - sub_1033a208(?)
#  - sub_1fcfb2b5(?)
#  - sub_a820907e(?)
#  - sub_bc4f2f09(?)
#  - sub_f42caccf(?)
#
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner; offset 8
array of address contracts;
uint8 sub_bb5ccc89;
uint8 sub_96d5d35d; offset 8
uint256 stor7; offset 8

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function contracts(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < contracts.length
    return contracts[arg1]
}

function sub_65e7c759(?) {
    return bool(sub_bb5ccc89)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_96d5d35d(?) {
    return bool(sub_96d5d35d)
}

function sub_bb5ccc89(?) {
    return bool(sub_bb5ccc89)
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_1b1e5b9e(?) payable {
  stop
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setApprove(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7 = Mask(248, 0, arg1)
}

function sub_3f773aba(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_bb5ccc89 = uint8(bool(arg1))
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function show(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if arg1 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg1
    if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(msg.sender)] += arg1
    emit Transfer(arg1, 0, msg.sender);
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 32, 37, 0x2945524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if not msg.sender:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 38, 0x2945524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_98277cd8(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    contracts.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while contracts.length > idx:
            contracts[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            contracts[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while contracts.length > idx:
            contracts[idx] = 0
            idx = idx + 1
            continue 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 32, 38, 0x2945524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 32, 40, 0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
    if not arg1:
        revert with 0, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function sub_2d4674cc(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[4] + cd[s] + 67 < calldata.size
        require cd[(cd[4] + cd[s] + 36)] <= test266151307()
        _52 = mem[64]
        require mem[64] + (32 * cd[(cd[4] + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(cd[4] + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + (32 * cd[(cd[4] + cd[s] + 36)]) + 32
        mem[_52] = cd[(cd[4] + cd[s] + 36)]
        u = 0
        v = cd[4] + cd[s] + 68
        w = _52 + 32
        while u < cd[(cd[4] + cd[s] + 36)]:
            require cd[4] + cd[s] + cd[v] + 99 < calldata.size
            require cd[(cd[4] + cd[s] + cd[v] + 68)] <= test266151307()
            _107 = mem[64]
            require mem[64] + (32 * cd[(cd[4] + cd[s] + cd[v] + 68)]) + 32 >= mem[64] and mem[64] + (32 * cd[(cd[4] + cd[s] + cd[v] + 68)]) + 32 <= test266151307()
            mem[64] = mem[64] + (32 * cd[(cd[4] + cd[s] + cd[v] + 68)]) + 32
            mem[_107] = cd[(cd[4] + cd[s] + cd[v] + 68)]
            require calldata.size >= cd[4] + cd[s] + cd[v] + (32 * cd[(cd[4] + cd[s] + cd[v] + 68)]) + 100
            t = 0
            x = cd[4] + cd[s] + cd[v] + 100
            y = _107 + 32
            while t < cd[(cd[4] + cd[s] + cd[v] + 68)]:
                require cd[x] == address(cd[x])
                mem[y] = cd[x]
                t = t + 1
                x = x + 32
                y = y + 32
                continue 
            mem[w] = _107
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _52
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _50 = mem[64]
    mem[mem[64]] = 3
    mem[64] = mem[64] + 128
    mem[_50 + 32 len 96] = call.data[calldata.size len 96]
    idx = 0
    while idx < contracts.length:
        s = 0
        while s < contracts.length:
            _230 = mem[96]
            t = 0
            while t < _230:
                require idx < contracts.length
                mem[0] = 6
                require t < mem[96]
                require 0 < mem[mem[(32 * t) + 128]]
                _235 = mem[mem[(32 * t) + 128] + 32]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[36]
                mem[mem[64] + 36] = 64
                _237 = mem[_235]
                mem[mem[64] + 68] = mem[_235]
                u = 0
                v = _235 + 32
                w = mem[64] + 100
                while u < _237:
                    mem[w] = mem[v + 12 len 20]
                    u = u + 1
                    v = v + 32
                    w = w + 32
                    continue 
                require ext_code.size(contracts[idx])
                staticcall contracts[idx].getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args cd[36], 64, mem[mem[64] + 68 len (32 * _237) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _273 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _274 = mem[_273]
                require mem[_273] <= test266151307()
                require _273 + mem[_273] + 31 < _273 + return_data.size
                _275 = mem[_273 + mem[_273]]
                require mem[_273 + mem[_273]] <= test266151307()
                require (32 * mem[_273 + mem[_273]]) + 32 >= 0 and _273 + ceil32(return_data.size) + (32 * mem[_273 + mem[_273]]) + 32 <= test266151307()
                mem[64] = _273 + ceil32(return_data.size) + (32 * mem[_273 + mem[_273]]) + 32
                mem[_273 + ceil32(return_data.size)] = _275
                require return_data.size >= _274 + (32 * _275) + 32
                u = _273 + _274 + 32
                v = _273 + ceil32(return_data.size) + 32
                idx = 0
                while idx < _275:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    idx = idx + 1
                    continue 
                require s < contracts.length
                mem[0] = 6
                require _275 - 1 < _275
                _307 = mem[(32 * _275 - 1) + _273 + ceil32(return_data.size) + 32]
                require t < mem[96]
                require 1 < mem[mem[(32 * t) + 128]]
                _311 = mem[mem[(32 * t) + 128] + 64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _307
                mem[mem[64] + 36] = 64
                _313 = mem[_311]
                mem[mem[64] + 68] = mem[_311]
                idx = 0
                u = _311 + 32
                v = mem[64] + 100
                while idx < _313:
                    mem[v] = mem[u + 12 len 20]
                    idx = idx + 1
                    u = u + 32
                    v = v + 32
                    continue 
                require ext_code.size(contracts[s])
                staticcall contracts[s].getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args _307, 64, mem[mem[64] + 68 len (32 * _313) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _333 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _334 = mem[_333]
                require mem[_333] <= test266151307()
                require _333 + mem[_333] + 31 < _333 + return_data.size
                _335 = mem[_333 + mem[_333]]
                require mem[_333 + mem[_333]] <= test266151307()
                require (32 * mem[_333 + mem[_333]]) + 32 >= 0 and _333 + ceil32(return_data.size) + (32 * mem[_333 + mem[_333]]) + 32 <= test266151307()
                mem[64] = _333 + ceil32(return_data.size) + (32 * mem[_333 + mem[_333]]) + 32
                mem[_333 + ceil32(return_data.size)] = _335
                require return_data.size >= _334 + (32 * _335) + 32
                s = _333 + _334 + 32
                u = _333 + ceil32(return_data.size) + 32
                idx = 0
                while idx < _335:
                    mem[u] = mem[s]
                    s = s + 32
                    u = u + 32
                    idx = idx + 1
                    continue 
                require 0 < mem[_273 + ceil32(return_data.size)]
                require 0 < mem[_50]
                mem[_50 + 32] = mem[_273 + ceil32(return_data.size) + 32]
                require mem[_273 + ceil32(return_data.size)] - 1 < mem[_273 + ceil32(return_data.size)]
                require 1 < mem[_50]
                mem[_50 + 64] = mem[(32 * mem[_273 + ceil32(return_data.size)] - 1) + _273 + ceil32(return_data.size) + 32]
                require 0 < _335
                require 2 < mem[_50]
                mem[_50 + 96] = mem[_333 + ceil32(return_data.size) + 32]
                t = t + 1
                continue 
            s = s + 1
            continue 
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _143 = mem[_50]
    mem[mem[64] + 32] = mem[_50]
    mem[mem[64] + 64 len 32 * _143] = mem[_50 + 32 len 32 * _143]
    return 32, mem[mem[64] + 32 len (32 * _143) + 32]
}

function sub_40482946(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 68).length) + 128 >= 96 and (32 * ('cd', 68).length) + 128 <= test266151307()
    mem[96] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * ('cd', 68).length) + 128] = 10
    mem[(32 * ('cd', 68).length) + 160] = 0x47414f5f4641494c454400000000000000000000000000000000000000000000
    mem[(32 * ('cd', 68).length) + 192] = 32
    mem[(32 * ('cd', 68).length) + 224] = 'getAmountsOut(uint256,address[])'
    mem[(32 * ('cd', 68).length) + 292] = cd[36]
    mem[(32 * ('cd', 68).length) + 324] = 64
    mem[(32 * ('cd', 68).length) + 356] = ('cd', 68).length
    idx = 0
    s = 128
    t = (32 * ('cd', 68).length) + 388
    while idx < ('cd', 68).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * ('cd', 68).length) + 256] = (32 * ('cd', 68).length) + 100
    mem[(32 * ('cd', 68).length) + 288 len 4] = getAmountsOut(uint256 rg1, address[] rg2)
    mem[(64 * ('cd', 68).length) + 388] = 30
    mem[(64 * ('cd', 68).length) + 420] = 'Address: low-level call failed'
    if not ext_code.size(cd[4]):
        revert with 0, 'Address: call to non-contract'
    mem[(64 * ('cd', 68).length) + 452 len floor32((32 * ('cd', 68).length) + 131)] = 0, cd[36], 64, ('cd', 68).length, mem[(32 * ('cd', 68).length) + 388 len floor32((32 * ('cd', 68).length) + 131) - 100]
    if floor32((32 * ('cd', 68).length) + 131) <= (32 * ('cd', 68).length) + 100:
        call address(cd[4]).mem[(32 * ('cd', 68).length) + floor32((32 * ('cd', 68).length) + 131) + 256 len 4] with:
             gas gas_remaining wei
            args mem[(64 * ('cd', 68).length) + 456 len (32 * ('cd', 68).length) + 96]
        if not return_data.size:
            if not ext_call.success:
                if ('cd', 68).length:
                    revert with memory
                      from 128
                       len ('cd', 68).length
                mem[(64 * ('cd', 68).length) + 452] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(64 * ('cd', 68).length) + 456] = 32
                mem[(64 * ('cd', 68).length) + 488] = 30
                mem[(64 * ('cd', 68).length) + 520] = 'Address: low-level call failed'
                mem[(64 * ('cd', 68).length) + 550] = 0
                revert with memory
                  from (64 * ('cd', 68).length) + 452
                   len (127 * ('cd', 68).length) + 100
            require ('cd', 68).length >= 32
            if 0 == ('cd', 68).length:
                require mem[128] <= test266151307()
                require mem[128] + 159 < ('cd', 68).length + 128
                _448 = mem[mem[128] + 128]
                require mem[mem[128] + 128] <= test266151307()
                require (32 * mem[mem[128] + 128]) + 228 >= 196 and (64 * ('cd', 68).length) + (32 * mem[mem[128] + 128]) + 484 <= test266151307()
                mem[(64 * ('cd', 68).length) + 452] = mem[mem[128] + 128]
                require ('cd', 68).length + 128 >= mem[128] + (32 * _448) + 160
            else:
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    mem[(64 * ('cd', 68).length) + 452] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(64 * ('cd', 68).length) + 456] = 32
                    mem[(64 * ('cd', 68).length) + 488] = 10
                    mem[(64 * ('cd', 68).length) + 520] = 0x47414f5f4641494c454400000000000000000000000000000000000000000000
                    mem[(64 * ('cd', 68).length) + 530] = 0
                    revert with memory
                      from (64 * ('cd', 68).length) + 452
                       len (127 * ('cd', 68).length) + 100
                require ('cd', 68).length >= 32
                require mem[128] <= test266151307()
                require mem[128] + 159 < ('cd', 68).length + 128
                _474 = mem[mem[128] + 128]
                require mem[mem[128] + 128] <= test266151307()
                require (32 * mem[mem[128] + 128]) + 228 >= 196 and (64 * ('cd', 68).length) + (32 * mem[mem[128] + 128]) + 484 <= test266151307()
                mem[(64 * ('cd', 68).length) + 452] = mem[mem[128] + 128]
                require ('cd', 68).length + 128 >= mem[128] + (32 * _474) + 160
            if mem[(64 * ('cd', 68).length) + 452] - 1 < mem[(64 * ('cd', 68).length) + 452]:
        else:
            mem[(64 * ('cd', 68).length) + 452] = return_data.size
            mem[(64 * ('cd', 68).length) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(64 * ('cd', 68).length) + ceil32(return_data.size) + 453] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(64 * ('cd', 68).length) + ceil32(return_data.size) + 457] = 32
                mem[(64 * ('cd', 68).length) + ceil32(return_data.size) + 489] = 30
                mem[(64 * ('cd', 68).length) + ceil32(return_data.size) + 521] = 'Address: low-level call failed'
                mem[(64 * ('cd', 68).length) + ceil32(return_data.size) + 551] = 0
                revert with memory
                  from (64 * ('cd', 68).length) + ceil32(return_data.size) + 453
                   len (127 * ('cd', 68).length) + 100
            require return_data.size >= 32
            if return_data.size != 0:
                require mem[(64 * ('cd', 68).length) + 484] == bool(mem[(64 * ('cd', 68).length) + 484])
                if not mem[(64 * ('cd', 68).length) + 484]:
                    mem[(64 * ('cd', 68).length) + ceil32(return_data.size) + 453] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(64 * ('cd', 68).length) + ceil32(return_data.size) + 457] = 32
                    mem[(64 * ('cd', 68).length) + ceil32(return_data.size) + 489] = 10
                    mem[(64 * ('cd', 68).length) + ceil32(return_data.size) + 521] = 0x47414f5f4641494c454400000000000000000000000000000000000000000000
                    mem[(64 * ('cd', 68).length) + ceil32(return_data.size) + 531] = 0
                    revert with memory
                      from (64 * ('cd', 68).length) + ceil32(return_data.size) + 453
                       len (127 * ('cd', 68).length) + 100
            require mem[(64 * ('cd', 68).length) + 484] <= test266151307()
            require (64 * ('cd', 68).length) + mem[(64 * ('cd', 68).length) + 484] + 515 < (64 * ('cd', 68).length) + return_data.size + 484
            require mem[(64 * ('cd', 68).length) + mem[(64 * ('cd', 68).length) + 484] + 484] <= test266151307()
            require (32 * mem[(64 * ('cd', 68).length) + mem[(64 * ('cd', 68).length) + 484] + 484]) + 229 >= 197 and (64 * ('cd', 68).length) + ceil32(return_data.size) + (32 * mem[(64 * ('cd', 68).length) + mem[(64 * ('cd', 68).length) + 484] + 484]) + 485 <= test266151307()
            require return_data.size + 32 >= mem[(64 * ('cd', 68).length) + 484] + (32 * mem[(64 * ('cd', 68).length) + mem[(64 * ('cd', 68).length) + 484] + 484]) + 64
            if mem[(64 * ('cd', 68).length) + mem[(64 * ('cd', 68).length) + 484] + 484] - 1 < mem[(64 * ('cd', 68).length) + mem[(64 * ('cd', 68).length) + 484] + 484]:
    else:
        mem[(98 * ('cd', 68).length) + 552] = 0
        call address(cd[4]).mem[(32 * ('cd', 68).length) + floor32((32 * ('cd', 68).length) + 131) + 256 len 4] with:
             gas gas_remaining wei
            args mem[(64 * ('cd', 68).length) + 456 len (32 * ('cd', 68).length) + 96]
        if not return_data.size:
            if not ext_call.success:
                if ('cd', 68).length:
                    revert with memory
                      from 128
                       len ('cd', 68).length
                mem[(64 * ('cd', 68).length) + 452] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(64 * ('cd', 68).length) + 456] = 32
                mem[(64 * ('cd', 68).length) + 488] = 30
                mem[(64 * ('cd', 68).length) + 520] = 'Address: low-level call failed'
                mem[(64 * ('cd', 68).length) + 550] = 0
                revert with memory
                  from (64 * ('cd', 68).length) + 452
                   len (127 * ('cd', 68).length) + 100
            require ('cd', 68).length >= 32
            if 0 == ('cd', 68).length:
                require mem[128] <= test266151307()
                require mem[128] + 159 < ('cd', 68).length + 128
                _452 = mem[mem[128] + 128]
                require mem[mem[128] + 128] <= test266151307()
                require (32 * mem[mem[128] + 128]) + 228 >= 196 and (64 * ('cd', 68).length) + (32 * mem[mem[128] + 128]) + 484 <= test266151307()
                mem[(64 * ('cd', 68).length) + 452] = mem[mem[128] + 128]
                require ('cd', 68).length + 128 >= mem[128] + (32 * _452) + 160
            else:
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    mem[(64 * ('cd', 68).length) + 452] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(64 * ('cd', 68).length) + 456] = 32
                    mem[(64 * ('cd', 68).length) + 488] = 10
                    mem[(64 * ('cd', 68).length) + 520] = 0x47414f5f4641494c454400000000000000000000000000000000000000000000
                    mem[(64 * ('cd', 68).length) + 530] = 0
                    revert with memory
                      from (64 * ('cd', 68).length) + 452
                       len (127 * ('cd', 68).length) + 100
                require ('cd', 68).length >= 32
                require mem[128] <= test266151307()
                require mem[128] + 159 < ('cd', 68).length + 128
                _478 = mem[mem[128] + 128]
                require mem[mem[128] + 128] <= test266151307()
                require (32 * mem[mem[128] + 128]) + 228 >= 196 and (64 * ('cd', 68).length) + (32 * mem[mem[128] + 128]) + 484 <= test266151307()
                mem[(64 * ('cd', 68).length) + 452] = mem[mem[128] + 128]
                require ('cd', 68).length + 128 >= mem[128] + (32 * _478) + 160
            if mem[(64 * ('cd', 68).length) + 452] - 1 < mem[(64 * ('cd', 68).length) + 452]:
        else:
            mem[(64 * ('cd', 68).length) + 452] = return_data.size
            mem[(64 * ('cd', 68).length) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(64 * ('cd', 68).length) + ceil32(return_data.size) + 453] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(64 * ('cd', 68).length) + ceil32(return_data.size) + 457] = 32
                mem[(64 * ('cd', 68).length) + ceil32(return_data.size) + 489] = 30
                mem[(64 * ('cd', 68).length) + ceil32(return_data.size) + 521] = 'Address: low-level call failed'
                mem[(64 * ('cd', 68).length) + ceil32(return_data.size) + 551] = 0
                revert with memory
                  from (64 * ('cd', 68).length) + ceil32(return_data.size) + 453
                   len (127 * ('cd', 68).length) + 100
            require return_data.size >= 32
            if return_data.size != 0:
                require mem[(64 * ('cd', 68).length) + 484] == bool(mem[(64 * ('cd', 68).length) + 484])
                if not mem[(64 * ('cd', 68).length) + 484]:
                    mem[(64 * ('cd', 68).length) + ceil32(return_data.size) + 453] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(64 * ('cd', 68).length) + ceil32(return_data.size) + 457] = 32
                    mem[(64 * ('cd', 68).length) + ceil32(return_data.size) + 489] = 10
                    mem[(64 * ('cd', 68).length) + ceil32(return_data.size) + 521] = 0x47414f5f4641494c454400000000000000000000000000000000000000000000
                    mem[(64 * ('cd', 68).length) + ceil32(return_data.size) + 531] = 0
                    revert with memory
                      from (64 * ('cd', 68).length) + ceil32(return_data.size) + 453
                       len (127 * ('cd', 68).length) + 100
            require mem[(64 * ('cd', 68).length) + 484] <= test266151307()
            require (64 * ('cd', 68).length) + mem[(64 * ('cd', 68).length) + 484] + 515 < (64 * ('cd', 68).length) + return_data.size + 484
            require mem[(64 * ('cd', 68).length) + mem[(64 * ('cd', 68).length) + 484] + 484] <= test266151307()
            require (32 * mem[(64 * ('cd', 68).length) + mem[(64 * ('cd', 68).length) + 484] + 484]) + 229 >= 197 and (64 * ('cd', 68).length) + ceil32(return_data.size) + (32 * mem[(64 * ('cd', 68).length) + mem[(64 * ('cd', 68).length) + 484] + 484]) + 485 <= test266151307()
            require return_data.size + 32 >= mem[(64 * ('cd', 68).length) + 484] + (32 * mem[(64 * ('cd', 68).length) + mem[(64 * ('cd', 68).length) + 484] + 484]) + 64
            if mem[(64 * ('cd', 68).length) + mem[(64 * ('cd', 68).length) + 484] + 484] - 1 < mem[(64 * ('cd', 68).length) + mem[(64 * ('cd', 68).length) + 484] + 484]:
    revert
}

function sub_3714131d(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require (32 * ('cd', 100).length) + 128 >= 96 and (32 * ('cd', 100).length) + 128 <= test266151307()
    mem[96] = ('cd', 100).length
    require calldata.size >= cd[100] + (32 * ('cd', 100).length) + 36
    idx = 0
    s = cd[100] + 36
    t = 128
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require (32 * ('cd', 132).length) + 160 >= 128 and (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 160 <= test266151307()
    mem[(32 * ('cd', 100).length) + 128] = ('cd', 132).length
    require calldata.size >= cd[132] + (32 * ('cd', 132).length) + 36
    idx = 0
    s = cd[132] + 36
    t = (32 * ('cd', 100).length) + 160
    while idx < ('cd', 132).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 160] = 10
    mem[(32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 192] = 0x47414f5f4641494c454400000000000000000000000000000000000000000000
    mem[(32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 224] = 32
    mem[(32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 256] = 'getAmountsOut(uint256,address[])'
    mem[(32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 324] = cd[68]
    mem[(32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 356] = 64
    mem[(32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 388] = ('cd', 100).length
    idx = 0
    s = 128
    t = (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 420
    while idx < ('cd', 100).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 288] = (32 * ('cd', 100).length) + 100
    mem[(32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 320 len 4] = getAmountsOut(uint256 rg1, address[] rg2)
    mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 420] = 30
    mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 452] = 'Address: low-level call failed'
    if not ext_code.size(cd[4]):
        revert with 0, 'Address: call to non-contract'
    mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 484 len floor32((32 * ('cd', 100).length) + 131)] = 0, cd[68], 64, ('cd', 100).length, mem[(32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 420 len floor32((32 * ('cd', 100).length) + 131) - 100]
    if floor32((32 * ('cd', 100).length) + 131) <= (32 * ('cd', 100).length) + 100:
        call address(cd[4]).mem[(32 * ('cd', 100).length) + (32 * ('cd', 132).length) + floor32((32 * ('cd', 100).length) + 131) + 288 len 4] with:
             gas gas_remaining wei
            args mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 488 len (32 * ('cd', 100).length) + 96]
        if not return_data.size:
            if not ext_call.success:
                if ('cd', 100).length:
                    revert with memory
                      from 128
                       len ('cd', 100).length
                revert with 0, 'Address: low-level call failed', 0
            require ('cd', 100).length >= 32
            if 0 == ('cd', 100).length:
                require mem[128] <= test266151307()
                require mem[128] + 159 < ('cd', 100).length + 128
                _4871 = mem[mem[128] + 128]
                require mem[mem[128] + 128] <= test266151307()
                require (32 * mem[mem[128] + 128]) + 228 >= 196 and (64 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * mem[mem[128] + 128]) + 516 <= test266151307()
                mem[64] = (64 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * mem[mem[128] + 128]) + 516
                mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 484] = mem[mem[128] + 128]
                require ('cd', 100).length + 128 >= mem[128] + (32 * _4871) + 160
                mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 516 len 32 * _4871] = mem[mem[128] + 160 len 32 * _4871]
                require mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 484] - 1 < mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 484]
                _6054 = mem[(32 * mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 484] - 1) + (64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 516]
                _6069 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6069] = 10
                mem[_6069 + 32] = 0x47414f5f4641494c454400000000000000000000000000000000000000000000
                _6077 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6077] = 32
                mem[_6077 + 32] = 'getAmountsOut(uint256,address[])'
                _6078 = mem[64]
                mem[mem[64] + 36] = _6054
                mem[mem[64] + 68] = 64
                mem[mem[64] + 100] = ('cd', 132).length
                idx = 0
                s = (32 * ('cd', 100).length) + 160
                t = mem[64] + 132
                while idx < ('cd', 132).length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _7141 = mem[64]
                mem[mem[64]] = (32 * ('cd', 132).length) + 100
                mem[mem[64] + 32 len 4] = getAmountsOut(uint256 rg1, address[] rg2)
                mem[64] = mem[64] + (32 * ('cd', 132).length) + 196
                mem[_6078 + (32 * ('cd', 132).length) + 132] = 30
                mem[_6078 + (32 * ('cd', 132).length) + 164] = 'Address: low-level call failed'
                if not ext_code.size(cd[36]):
                    revert with 0, 'Address: call to non-contract'
                _7181 = mem[_7141]
                mem[_6078 + (32 * ('cd', 132).length) + 196 len ceil32(mem[_7141])] = mem[_7141 + 32 len ceil32(mem[_7141])]
                if ceil32(_7181) <= _7181:
                    call address(cd[36]) with:
                       funct Mask(32, 224, (32 * ('cd', 132).length) + 100) >> 224
                         gas gas_remaining wei
                        args mem[_6078 + (32 * ('cd', 132).length) + 200 len _7181 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if ('cd', 100).length:
                                revert with memory
                                  from 128
                                   len ('cd', 100).length
                            revert with 0, 'Address: low-level call failed', 0
                        require ('cd', 100).length >= 32
                        if 0 == ('cd', 100).length:
                            require mem[128] <= test266151307()
                            require mem[128] + 159 < ('cd', 100).length + 128
                            _8573 = mem[mem[128] + 128]
                            require mem[mem[128] + 128] <= test266151307()
                            require (32 * mem[mem[128] + 128]) + 228 >= 196 and _6078 + (32 * ('cd', 132).length) + (32 * mem[mem[128] + 128]) + 228 <= test266151307()
                            mem[_6078 + (32 * ('cd', 132).length) + 196] = mem[mem[128] + 128]
                            require ('cd', 100).length + 128 >= mem[128] + (32 * _8573) + 160
                        else:
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                mem[_6078 + (32 * ('cd', 132).length) + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6078 + (32 * ('cd', 132).length) + 200] = 32
                                _8653 = mem[_6069]
                                mem[_6078 + (32 * ('cd', 132).length) + 232] = mem[_6069]
                                mem[_6078 + (32 * ('cd', 132).length) + 264 len ceil32(_8653)] = mem[_6069 + 32 len ceil32(_8653)]
                                if ceil32(_8653) > _8653:
                                    mem[_6078 + (32 * ('cd', 132).length) + _8653 + 264] = 0
                                revert with 0, 32, mem[_6078 + (32 * ('cd', 132).length) + 232 len ceil32(_8653) + 32]
                            require ('cd', 100).length >= 32
                            require mem[128] <= test266151307()
                            require mem[128] + 159 < ('cd', 100).length + 128
                            _8781 = mem[mem[128] + 128]
                            require mem[mem[128] + 128] <= test266151307()
                            require (32 * mem[mem[128] + 128]) + 228 >= 196 and _6078 + (32 * ('cd', 132).length) + (32 * mem[mem[128] + 128]) + 228 <= test266151307()
                            mem[_6078 + (32 * ('cd', 132).length) + 196] = mem[mem[128] + 128]
                            require ('cd', 100).length + 128 >= mem[128] + (32 * _8781) + 160
                        require mem[_6078 + (32 * ('cd', 132).length) + 196] - 1 < mem[_6078 + (32 * ('cd', 132).length) + 196]
                    mem[64] = _6078 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 197
                    mem[_6078 + (32 * ('cd', 132).length) + 196] = return_data.size
                    mem[_6078 + (32 * ('cd', 132).length) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'Address: low-level call failed', 0
                    require return_data.size >= 32
                    if 0 == return_data.size:
                        require mem[_6078 + (32 * ('cd', 132).length) + 228] <= test266151307()
                        require _6078 + (32 * ('cd', 132).length) + mem[_6078 + (32 * ('cd', 132).length) + 228] + 259 < _6078 + (32 * ('cd', 132).length) + return_data.size + 228
                        require mem[_6078 + (32 * ('cd', 132).length) + mem[_6078 + (32 * ('cd', 132).length) + 228] + 228] <= test266151307()
                        require (32 * mem[_6078 + (32 * ('cd', 132).length) + mem[_6078 + (32 * ('cd', 132).length) + 228] + 228]) + 229 >= 197 and _6078 + (32 * ('cd', 132).length) + ceil32(return_data.size) + (32 * mem[_6078 + (32 * ('cd', 132).length) + mem[_6078 + (32 * ('cd', 132).length) + 228] + 228]) + 229 <= test266151307()
                        require return_data.size + 32 >= mem[_6078 + (32 * ('cd', 132).length) + 228] + (32 * mem[_6078 + (32 * ('cd', 132).length) + mem[_6078 + (32 * ('cd', 132).length) + 228] + 228]) + 64
                        require mem[_6078 + (32 * ('cd', 132).length) + mem[_6078 + (32 * ('cd', 132).length) + 228] + 228] - 1 < mem[_6078 + (32 * ('cd', 132).length) + mem[_6078 + (32 * ('cd', 132).length) + 228] + 228]
                    require mem[_6078 + (32 * ('cd', 132).length) + 228] == bool(mem[_6078 + (32 * ('cd', 132).length) + 228])
                    if mem[_6078 + (32 * ('cd', 132).length) + 228]:
                        require return_data.size >= 32
                        require mem[_6078 + (32 * ('cd', 132).length) + 228] <= test266151307()
                        require _6078 + (32 * ('cd', 132).length) + mem[_6078 + (32 * ('cd', 132).length) + 228] + 259 < _6078 + (32 * ('cd', 132).length) + return_data.size + 228
                        require mem[_6078 + (32 * ('cd', 132).length) + mem[_6078 + (32 * ('cd', 132).length) + 228] + 228] <= test266151307()
                        require (32 * mem[_6078 + (32 * ('cd', 132).length) + mem[_6078 + (32 * ('cd', 132).length) + 228] + 228]) + 229 >= 197 and _6078 + (32 * ('cd', 132).length) + ceil32(return_data.size) + (32 * mem[_6078 + (32 * ('cd', 132).length) + mem[_6078 + (32 * ('cd', 132).length) + 228] + 228]) + 229 <= test266151307()
                        require return_data.size + 32 >= mem[_6078 + (32 * ('cd', 132).length) + 228] + (32 * mem[_6078 + (32 * ('cd', 132).length) + mem[_6078 + (32 * ('cd', 132).length) + 228] + 228]) + 64
                        require mem[_6078 + (32 * ('cd', 132).length) + mem[_6078 + (32 * ('cd', 132).length) + 228] + 228] - 1 < mem[_6078 + (32 * ('cd', 132).length) + mem[_6078 + (32 * ('cd', 132).length) + 228] + 228]
                    mem[_6078 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_6078 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 201] = 32
                    _8654 = mem[_6069]
                    mem[_6078 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 233] = mem[_6069]
                    mem[_6078 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 265 len ceil32(_8654)] = mem[_6069 + 32 len ceil32(_8654)]
                    if ceil32(_8654) > _8654:
                        mem[_6078 + (32 * ('cd', 132).length) + ceil32(return_data.size) + _8654 + 265] = 0
                    revert with 0, 32, mem[_6078 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 233 len ceil32(_8654) + 32]
                mem[_6078 + (32 * ('cd', 132).length) + _7181 + 196] = 0
                call address(cd[36]) with:
                   funct Mask(32, 224, (32 * ('cd', 132).length) + 100) >> 224
                     gas gas_remaining wei
                    args mem[_6078 + (32 * ('cd', 132).length) + 200 len _7181 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ('cd', 100).length:
                            revert with memory
                              from 128
                               len ('cd', 100).length
                        revert with 0, 'Address: low-level call failed', 0
                    require ('cd', 100).length >= 32
                    if 0 == ('cd', 100).length:
                        require mem[128] <= test266151307()
                        require mem[128] + 159 < ('cd', 100).length + 128
                        _8605 = mem[mem[128] + 128]
                        require mem[mem[128] + 128] <= test266151307()
                        require (32 * mem[mem[128] + 128]) + 228 >= 196 and _6078 + (32 * ('cd', 132).length) + (32 * mem[mem[128] + 128]) + 228 <= test266151307()
                        mem[_6078 + (32 * ('cd', 132).length) + 196] = mem[mem[128] + 128]
                        require ('cd', 100).length + 128 >= mem[128] + (32 * _8605) + 160
                    else:
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            mem[_6078 + (32 * ('cd', 132).length) + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6078 + (32 * ('cd', 132).length) + 200] = 32
                            _8705 = mem[_6069]
                            mem[_6078 + (32 * ('cd', 132).length) + 232] = mem[_6069]
                            mem[_6078 + (32 * ('cd', 132).length) + 264 len ceil32(_8705)] = mem[_6069 + 32 len ceil32(_8705)]
                            if ceil32(_8705) > _8705:
                                mem[_6078 + (32 * ('cd', 132).length) + _8705 + 264] = 0
                            revert with 0, 32, mem[_6078 + (32 * ('cd', 132).length) + 232 len ceil32(_8705) + 32]
                        require ('cd', 100).length >= 32
                        require mem[128] <= test266151307()
                        require mem[128] + 159 < ('cd', 100).length + 128
                        _8813 = mem[mem[128] + 128]
                        require mem[mem[128] + 128] <= test266151307()
                        require (32 * mem[mem[128] + 128]) + 228 >= 196 and _6078 + (32 * ('cd', 132).length) + (32 * mem[mem[128] + 128]) + 228 <= test266151307()
                        mem[_6078 + (32 * ('cd', 132).length) + 196] = mem[mem[128] + 128]
                        require ('cd', 100).length + 128 >= mem[128] + (32 * _8813) + 160
                    require mem[_6078 + (32 * ('cd', 132).length) + 196] - 1 < mem[_6078 + (32 * ('cd', 132).length) + 196]
                mem[64] = _6078 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 197
                mem[_6078 + (32 * ('cd', 132).length) + 196] = return_data.size
                mem[_6078 + (32 * ('cd', 132).length) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'Address: low-level call failed', 0
                require return_data.size >= 32
                if 0 == return_data.size:
                    require mem[_6078 + (32 * ('cd', 132).length) + 228] <= test266151307()
                    require _6078 + (32 * ('cd', 132).length) + mem[_6078 + (32 * ('cd', 132).length) + 228] + 259 < _6078 + (32 * ('cd', 132).length) + return_data.size + 228
                    require mem[_6078 + (32 * ('cd', 132).length) + mem[_6078 + (32 * ('cd', 132).length) + 228] + 228] <= test266151307()
                    require (32 * mem[_6078 + (32 * ('cd', 132).length) + mem[_6078 + (32 * ('cd', 132).length) + 228] + 228]) + 229 >= 197 and _6078 + (32 * ('cd', 132).length) + ceil32(return_data.size) + (32 * mem[_6078 + (32 * ('cd', 132).length) + mem[_6078 + (32 * ('cd', 132).length) + 228] + 228]) + 229 <= test266151307()
                    require return_data.size + 32 >= mem[_6078 + (32 * ('cd', 132).length) + 228] + (32 * mem[_6078 + (32 * ('cd', 132).length) + mem[_6078 + (32 * ('cd', 132).length) + 228] + 228]) + 64
                    require mem[_6078 + (32 * ('cd', 132).length) + mem[_6078 + (32 * ('cd', 132).length) + 228] + 228] - 1 < mem[_6078 + (32 * ('cd', 132).length) + mem[_6078 + (32 * ('cd', 132).length) + 228] + 228]
                require mem[_6078 + (32 * ('cd', 132).length) + 228] == bool(mem[_6078 + (32 * ('cd', 132).length) + 228])
                if mem[_6078 + (32 * ('cd', 132).length) + 228]:
                    require return_data.size >= 32
                    require mem[_6078 + (32 * ('cd', 132).length) + 228] <= test266151307()
                    require _6078 + (32 * ('cd', 132).length) + mem[_6078 + (32 * ('cd', 132).length) + 228] + 259 < _6078 + (32 * ('cd', 132).length) + return_data.size + 228
                    require mem[_6078 + (32 * ('cd', 132).length) + mem[_6078 + (32 * ('cd', 132).length) + 228] + 228] <= test266151307()
                    require (32 * mem[_6078 + (32 * ('cd', 132).length) + mem[_6078 + (32 * ('cd', 132).length) + 228] + 228]) + 229 >= 197 and _6078 + (32 * ('cd', 132).length) + ceil32(return_data.size) + (32 * mem[_6078 + (32 * ('cd', 132).length) + mem[_6078 + (32 * ('cd', 132).length) + 228] + 228]) + 229 <= test266151307()
                    require return_data.size + 32 >= mem[_6078 + (32 * ('cd', 132).length) + 228] + (32 * mem[_6078 + (32 * ('cd', 132).length) + mem[_6078 + (32 * ('cd', 132).length) + 228] + 228]) + 64
                    require mem[_6078 + (32 * ('cd', 132).length) + mem[_6078 + (32 * ('cd', 132).length) + 228] + 228] - 1 < mem[_6078 + (32 * ('cd', 132).length) + mem[_6078 + (32 * ('cd', 132).length) + 228] + 228]
                mem[_6078 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_6078 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 201] = 32
                _8706 = mem[_6069]
                mem[_6078 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 233] = mem[_6069]
                mem[_6078 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 265 len ceil32(_8706)] = mem[_6069 + 32 len ceil32(_8706)]
                if ceil32(_8706) > _8706:
                    mem[_6078 + (32 * ('cd', 132).length) + ceil32(return_data.size) + _8706 + 265] = 0
                revert with 0, 32, mem[_6078 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 233 len ceil32(_8706) + 32]
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, '', 0
            require ('cd', 100).length >= 32
            require mem[128] <= test266151307()
            require mem[128] + 159 < ('cd', 100).length + 128
            _4897 = mem[mem[128] + 128]
            require mem[mem[128] + 128] <= test266151307()
            require (32 * mem[mem[128] + 128]) + 228 >= 196 and (64 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * mem[mem[128] + 128]) + 516 <= test266151307()
            mem[64] = (64 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * mem[mem[128] + 128]) + 516
            mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 484] = mem[mem[128] + 128]
            require ('cd', 100).length + 128 >= mem[128] + (32 * _4897) + 160
            mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 516 len 32 * _4897] = mem[mem[128] + 160 len 32 * _4897]
            require mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 484] - 1 < mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 484]
            _6055 = mem[(32 * mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 484] - 1) + (64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 516]
            _6070 = mem[64]
            mem[64] = mem[64] + 64
            mem[_6070] = 10
            mem[_6070 + 32] = 0x47414f5f4641494c454400000000000000000000000000000000000000000000
            _6079 = mem[64]
            mem[64] = mem[64] + 64
            mem[_6079] = 32
            mem[_6079 + 32] = 'getAmountsOut(uint256,address[])'
            _6080 = mem[64]
            mem[mem[64] + 36] = _6055
            mem[mem[64] + 68] = 64
            mem[mem[64] + 100] = ('cd', 132).length
            idx = 0
            s = (32 * ('cd', 100).length) + 160
            t = mem[64] + 132
            while idx < ('cd', 132).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _7143 = mem[64]
            mem[mem[64]] = (32 * ('cd', 132).length) + 100
            mem[mem[64] + 32 len 4] = getAmountsOut(uint256 rg1, address[] rg2)
            mem[64] = mem[64] + (32 * ('cd', 132).length) + 196
            mem[_6080 + (32 * ('cd', 132).length) + 132] = 30
            mem[_6080 + (32 * ('cd', 132).length) + 164] = 'Address: low-level call failed'
            if not ext_code.size(cd[36]):
                revert with 0, 'Address: call to non-contract'
            _7182 = mem[_7143]
            mem[_6080 + (32 * ('cd', 132).length) + 196 len ceil32(mem[_7143])] = mem[_7143 + 32 len ceil32(mem[_7143])]
            if ceil32(_7182) <= _7182:
                call address(cd[36]) with:
                   funct Mask(32, 224, (32 * ('cd', 132).length) + 100) >> 224
                     gas gas_remaining wei
                    args mem[_6080 + (32 * ('cd', 132).length) + 200 len _7182 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ('cd', 100).length:
                            revert with memory
                              from 128
                               len ('cd', 100).length
                        revert with 0, 'Address: low-level call failed', 0
                    require ('cd', 100).length >= 32
                    if 0 == ('cd', 100).length:
                        require mem[128] <= test266151307()
                        require mem[128] + 159 < ('cd', 100).length + 128
                        _8577 = mem[mem[128] + 128]
                        require mem[mem[128] + 128] <= test266151307()
                        require (32 * mem[mem[128] + 128]) + 228 >= 196 and _6080 + (32 * ('cd', 132).length) + (32 * mem[mem[128] + 128]) + 228 <= test266151307()
                        mem[_6080 + (32 * ('cd', 132).length) + 196] = mem[mem[128] + 128]
                        require ('cd', 100).length + 128 >= mem[128] + (32 * _8577) + 160
                    else:
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            mem[_6080 + (32 * ('cd', 132).length) + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6080 + (32 * ('cd', 132).length) + 200] = 32
                            _8659 = mem[_6070]
                            mem[_6080 + (32 * ('cd', 132).length) + 232] = mem[_6070]
                            mem[_6080 + (32 * ('cd', 132).length) + 264 len ceil32(_8659)] = mem[_6070 + 32 len ceil32(_8659)]
                            if ceil32(_8659) > _8659:
                                mem[_6080 + (32 * ('cd', 132).length) + _8659 + 264] = 0
                            revert with 0, 32, mem[_6080 + (32 * ('cd', 132).length) + 232 len ceil32(_8659) + 32]
                        require ('cd', 100).length >= 32
                        require mem[128] <= test266151307()
                        require mem[128] + 159 < ('cd', 100).length + 128
                        _8785 = mem[mem[128] + 128]
                        require mem[mem[128] + 128] <= test266151307()
                        require (32 * mem[mem[128] + 128]) + 228 >= 196 and _6080 + (32 * ('cd', 132).length) + (32 * mem[mem[128] + 128]) + 228 <= test266151307()
                        mem[_6080 + (32 * ('cd', 132).length) + 196] = mem[mem[128] + 128]
                        require ('cd', 100).length + 128 >= mem[128] + (32 * _8785) + 160
                    require mem[_6080 + (32 * ('cd', 132).length) + 196] - 1 < mem[_6080 + (32 * ('cd', 132).length) + 196]
                mem[64] = _6080 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 197
                mem[_6080 + (32 * ('cd', 132).length) + 196] = return_data.size
                mem[_6080 + (32 * ('cd', 132).length) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'Address: low-level call failed', 0
                require return_data.size >= 32
                if 0 == return_data.size:
                    require mem[_6080 + (32 * ('cd', 132).length) + 228] <= test266151307()
                    require _6080 + (32 * ('cd', 132).length) + mem[_6080 + (32 * ('cd', 132).length) + 228] + 259 < _6080 + (32 * ('cd', 132).length) + return_data.size + 228
                    require mem[_6080 + (32 * ('cd', 132).length) + mem[_6080 + (32 * ('cd', 132).length) + 228] + 228] <= test266151307()
                    require (32 * mem[_6080 + (32 * ('cd', 132).length) + mem[_6080 + (32 * ('cd', 132).length) + 228] + 228]) + 229 >= 197 and _6080 + (32 * ('cd', 132).length) + ceil32(return_data.size) + (32 * mem[_6080 + (32 * ('cd', 132).length) + mem[_6080 + (32 * ('cd', 132).length) + 228] + 228]) + 229 <= test266151307()
                    require return_data.size + 32 >= mem[_6080 + (32 * ('cd', 132).length) + 228] + (32 * mem[_6080 + (32 * ('cd', 132).length) + mem[_6080 + (32 * ('cd', 132).length) + 228] + 228]) + 64
                    require mem[_6080 + (32 * ('cd', 132).length) + mem[_6080 + (32 * ('cd', 132).length) + 228] + 228] - 1 < mem[_6080 + (32 * ('cd', 132).length) + mem[_6080 + (32 * ('cd', 132).length) + 228] + 228]
                require mem[_6080 + (32 * ('cd', 132).length) + 228] == bool(mem[_6080 + (32 * ('cd', 132).length) + 228])
                if mem[_6080 + (32 * ('cd', 132).length) + 228]:
                    require return_data.size >= 32
                    require mem[_6080 + (32 * ('cd', 132).length) + 228] <= test266151307()
                    require _6080 + (32 * ('cd', 132).length) + mem[_6080 + (32 * ('cd', 132).length) + 228] + 259 < _6080 + (32 * ('cd', 132).length) + return_data.size + 228
                    require mem[_6080 + (32 * ('cd', 132).length) + mem[_6080 + (32 * ('cd', 132).length) + 228] + 228] <= test266151307()
                    require (32 * mem[_6080 + (32 * ('cd', 132).length) + mem[_6080 + (32 * ('cd', 132).length) + 228] + 228]) + 229 >= 197 and _6080 + (32 * ('cd', 132).length) + ceil32(return_data.size) + (32 * mem[_6080 + (32 * ('cd', 132).length) + mem[_6080 + (32 * ('cd', 132).length) + 228] + 228]) + 229 <= test266151307()
                    require return_data.size + 32 >= mem[_6080 + (32 * ('cd', 132).length) + 228] + (32 * mem[_6080 + (32 * ('cd', 132).length) + mem[_6080 + (32 * ('cd', 132).length) + 228] + 228]) + 64
                    require mem[_6080 + (32 * ('cd', 132).length) + mem[_6080 + (32 * ('cd', 132).length) + 228] + 228] - 1 < mem[_6080 + (32 * ('cd', 132).length) + mem[_6080 + (32 * ('cd', 132).length) + 228] + 228]
                mem[_6080 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_6080 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 201] = 32
                _8660 = mem[_6070]
                mem[_6080 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 233] = mem[_6070]
                mem[_6080 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 265 len ceil32(_8660)] = mem[_6070 + 32 len ceil32(_8660)]
                if ceil32(_8660) > _8660:
                    mem[_6080 + (32 * ('cd', 132).length) + ceil32(return_data.size) + _8660 + 265] = 0
                revert with 0, 32, mem[_6080 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 233 len ceil32(_8660) + 32]
            mem[_6080 + (32 * ('cd', 132).length) + _7182 + 196] = 0
            call address(cd[36]) with:
               funct Mask(32, 224, (32 * ('cd', 132).length) + 100) >> 224
                 gas gas_remaining wei
                args mem[_6080 + (32 * ('cd', 132).length) + 200 len _7182 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if ('cd', 100).length:
                        revert with memory
                          from 128
                           len ('cd', 100).length
                    revert with 0, 'Address: low-level call failed', 0
                require ('cd', 100).length >= 32
                if 0 == ('cd', 100).length:
                    require mem[128] <= test266151307()
                    require mem[128] + 159 < ('cd', 100).length + 128
                    _8607 = mem[mem[128] + 128]
                    require mem[mem[128] + 128] <= test266151307()
                    require (32 * mem[mem[128] + 128]) + 228 >= 196 and _6080 + (32 * ('cd', 132).length) + (32 * mem[mem[128] + 128]) + 228 <= test266151307()
                    mem[_6080 + (32 * ('cd', 132).length) + 196] = mem[mem[128] + 128]
                    require ('cd', 100).length + 128 >= mem[128] + (32 * _8607) + 160
                else:
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        mem[_6080 + (32 * ('cd', 132).length) + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6080 + (32 * ('cd', 132).length) + 200] = 32
                        _8711 = mem[_6070]
                        mem[_6080 + (32 * ('cd', 132).length) + 232] = mem[_6070]
                        mem[_6080 + (32 * ('cd', 132).length) + 264 len ceil32(_8711)] = mem[_6070 + 32 len ceil32(_8711)]
                        if ceil32(_8711) > _8711:
                            mem[_6080 + (32 * ('cd', 132).length) + _8711 + 264] = 0
                        revert with 0, 32, mem[_6080 + (32 * ('cd', 132).length) + 232 len ceil32(_8711) + 32]
                    require ('cd', 100).length >= 32
                    require mem[128] <= test266151307()
                    require mem[128] + 159 < ('cd', 100).length + 128
                    _8817 = mem[mem[128] + 128]
                    require mem[mem[128] + 128] <= test266151307()
                    require (32 * mem[mem[128] + 128]) + 228 >= 196 and _6080 + (32 * ('cd', 132).length) + (32 * mem[mem[128] + 128]) + 228 <= test266151307()
                    mem[_6080 + (32 * ('cd', 132).length) + 196] = mem[mem[128] + 128]
                    require ('cd', 100).length + 128 >= mem[128] + (32 * _8817) + 160
                require mem[_6080 + (32 * ('cd', 132).length) + 196] - 1 < mem[_6080 + (32 * ('cd', 132).length) + 196]
            mem[64] = _6080 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 197
            mem[_6080 + (32 * ('cd', 132).length) + 196] = return_data.size
            mem[_6080 + (32 * ('cd', 132).length) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'Address: low-level call failed', 0
            require return_data.size >= 32
            if 0 == return_data.size:
                require mem[_6080 + (32 * ('cd', 132).length) + 228] <= test266151307()
                require _6080 + (32 * ('cd', 132).length) + mem[_6080 + (32 * ('cd', 132).length) + 228] + 259 < _6080 + (32 * ('cd', 132).length) + return_data.size + 228
                require mem[_6080 + (32 * ('cd', 132).length) + mem[_6080 + (32 * ('cd', 132).length) + 228] + 228] <= test266151307()
                require (32 * mem[_6080 + (32 * ('cd', 132).length) + mem[_6080 + (32 * ('cd', 132).length) + 228] + 228]) + 229 >= 197 and _6080 + (32 * ('cd', 132).length) + ceil32(return_data.size) + (32 * mem[_6080 + (32 * ('cd', 132).length) + mem[_6080 + (32 * ('cd', 132).length) + 228] + 228]) + 229 <= test266151307()
                require return_data.size + 32 >= mem[_6080 + (32 * ('cd', 132).length) + 228] + (32 * mem[_6080 + (32 * ('cd', 132).length) + mem[_6080 + (32 * ('cd', 132).length) + 228] + 228]) + 64
                require mem[_6080 + (32 * ('cd', 132).length) + mem[_6080 + (32 * ('cd', 132).length) + 228] + 228] - 1 < mem[_6080 + (32 * ('cd', 132).length) + mem[_6080 + (32 * ('cd', 132).length) + 228] + 228]
            require mem[_6080 + (32 * ('cd', 132).length) + 228] == bool(mem[_6080 + (32 * ('cd', 132).length) + 228])
            if mem[_6080 + (32 * ('cd', 132).length) + 228]:
                require return_data.size >= 32
                require mem[_6080 + (32 * ('cd', 132).length) + 228] <= test266151307()
                require _6080 + (32 * ('cd', 132).length) + mem[_6080 + (32 * ('cd', 132).length) + 228] + 259 < _6080 + (32 * ('cd', 132).length) + return_data.size + 228
                require mem[_6080 + (32 * ('cd', 132).length) + mem[_6080 + (32 * ('cd', 132).length) + 228] + 228] <= test266151307()
                require (32 * mem[_6080 + (32 * ('cd', 132).length) + mem[_6080 + (32 * ('cd', 132).length) + 228] + 228]) + 229 >= 197 and _6080 + (32 * ('cd', 132).length) + ceil32(return_data.size) + (32 * mem[_6080 + (32 * ('cd', 132).length) + mem[_6080 + (32 * ('cd', 132).length) + 228] + 228]) + 229 <= test266151307()
                require return_data.size + 32 >= mem[_6080 + (32 * ('cd', 132).length) + 228] + (32 * mem[_6080 + (32 * ('cd', 132).length) + mem[_6080 + (32 * ('cd', 132).length) + 228] + 228]) + 64
                require mem[_6080 + (32 * ('cd', 132).length) + mem[_6080 + (32 * ('cd', 132).length) + 228] + 228] - 1 < mem[_6080 + (32 * ('cd', 132).length) + mem[_6080 + (32 * ('cd', 132).length) + 228] + 228]
            mem[_6080 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_6080 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 201] = 32
            _8712 = mem[_6070]
            mem[_6080 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 233] = mem[_6070]
            mem[_6080 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 265 len ceil32(_8712)] = mem[_6070 + 32 len ceil32(_8712)]
            if ceil32(_8712) > _8712:
                mem[_6080 + (32 * ('cd', 132).length) + ceil32(return_data.size) + _8712 + 265] = 0
            revert with 0, 32, mem[_6080 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 233 len ceil32(_8712) + 32]
        mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 484] = return_data.size
        mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'Address: low-level call failed', 0
        require return_data.size >= 32
        if 0 == return_data.size:
            _4862 = mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 516]
            require mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 516] <= test266151307()
            require (64 * ('cd', 100).length) + (32 * ('cd', 132).length) + mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 516] + 547 < (64 * ('cd', 100).length) + (32 * ('cd', 132).length) + return_data.size + 516
            _4872 = mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 516] + 516]
            require mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 516] + 516] <= test266151307()
            require (32 * mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 516] + 516]) + 229 >= 197 and (64 * ('cd', 100).length) + (32 * ('cd', 132).length) + ceil32(return_data.size) + (32 * mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 516] + 516]) + 517 <= test266151307()
            mem[64] = (64 * ('cd', 100).length) + (32 * ('cd', 132).length) + ceil32(return_data.size) + (32 * mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 516] + 516]) + 517
            mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 485] = mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 516] + 516]
            require return_data.size + 32 >= _4862 + (32 * _4872) + 64
            mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 517 len 32 * _4872] = mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + _4862 + 548 len 32 * _4872]
            require _4872 - 1 < _4872
            _6058 = mem[(32 * _4872 - 1) + (64 * ('cd', 100).length) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 517]
            _6071 = mem[64]
            mem[64] = mem[64] + 64
            mem[_6071] = 10
            mem[_6071 + 32] = 0x47414f5f4641494c454400000000000000000000000000000000000000000000
            _6081 = mem[64]
            mem[64] = mem[64] + 64
            mem[_6081] = 32
            mem[_6081 + 32] = 'getAmountsOut(uint256,address[])'
            _6082 = mem[64]
            mem[mem[64] + 36] = _6058
            mem[mem[64] + 68] = 64
            mem[mem[64] + 100] = ('cd', 132).length
            idx = 0
            s = (32 * ('cd', 100).length) + 160
            t = mem[64] + 132
            while idx < ('cd', 132).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _7145 = mem[64]
            mem[mem[64]] = (32 * ('cd', 132).length) + 100
            mem[mem[64] + 32 len 4] = getAmountsOut(uint256 rg1, address[] rg2)
            mem[64] = mem[64] + (32 * ('cd', 132).length) + 196
            mem[_6082 + (32 * ('cd', 132).length) + 132] = 30
            mem[_6082 + (32 * ('cd', 132).length) + 164] = 'Address: low-level call failed'
            if not ext_code.size(cd[36]):
                revert with 0, 'Address: call to non-contract'
            _7183 = mem[_7145]
            mem[_6082 + (32 * ('cd', 132).length) + 196 len ceil32(mem[_7145])] = mem[_7145 + 32 len ceil32(mem[_7145])]
            if ceil32(_7183) <= _7183:
                call address(cd[36]) with:
                   funct Mask(32, 224, (32 * ('cd', 132).length) + 100) >> 224
                     gas gas_remaining wei
                    args mem[_6082 + (32 * ('cd', 132).length) + 200 len _7183 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ('cd', 100).length:
                            revert with memory
                              from 128
                               len ('cd', 100).length
                        revert with 0, 'Address: low-level call failed', 0
                    require ('cd', 100).length >= 32
                    if 0 == ('cd', 100).length:
                        require mem[128] <= test266151307()
                        require mem[128] + 159 < ('cd', 100).length + 128
                        _8581 = mem[mem[128] + 128]
                        require mem[mem[128] + 128] <= test266151307()
                        require (32 * mem[mem[128] + 128]) + 228 >= 196 and _6082 + (32 * ('cd', 132).length) + (32 * mem[mem[128] + 128]) + 228 <= test266151307()
                        mem[_6082 + (32 * ('cd', 132).length) + 196] = mem[mem[128] + 128]
                        require ('cd', 100).length + 128 >= mem[128] + (32 * _8581) + 160
                    else:
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            mem[_6082 + (32 * ('cd', 132).length) + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6082 + (32 * ('cd', 132).length) + 200] = 32
                            _8665 = mem[_6071]
                            mem[_6082 + (32 * ('cd', 132).length) + 232] = mem[_6071]
                            mem[_6082 + (32 * ('cd', 132).length) + 264 len ceil32(_8665)] = mem[_6071 + 32 len ceil32(_8665)]
                            if ceil32(_8665) > _8665:
                                mem[_6082 + (32 * ('cd', 132).length) + _8665 + 264] = 0
                            revert with 0, 32, mem[_6082 + (32 * ('cd', 132).length) + 232 len ceil32(_8665) + 32]
                        require ('cd', 100).length >= 32
                        require mem[128] <= test266151307()
                        require mem[128] + 159 < ('cd', 100).length + 128
                        _8789 = mem[mem[128] + 128]
                        require mem[mem[128] + 128] <= test266151307()
                        require (32 * mem[mem[128] + 128]) + 228 >= 196 and _6082 + (32 * ('cd', 132).length) + (32 * mem[mem[128] + 128]) + 228 <= test266151307()
                        mem[_6082 + (32 * ('cd', 132).length) + 196] = mem[mem[128] + 128]
                        require ('cd', 100).length + 128 >= mem[128] + (32 * _8789) + 160
                    require mem[_6082 + (32 * ('cd', 132).length) + 196] - 1 < mem[_6082 + (32 * ('cd', 132).length) + 196]
                mem[64] = _6082 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 197
                mem[_6082 + (32 * ('cd', 132).length) + 196] = return_data.size
                mem[_6082 + (32 * ('cd', 132).length) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'Address: low-level call failed', 0
                require return_data.size >= 32
                if 0 == return_data.size:
                    require mem[_6082 + (32 * ('cd', 132).length) + 228] <= test266151307()
                    require _6082 + (32 * ('cd', 132).length) + mem[_6082 + (32 * ('cd', 132).length) + 228] + 259 < _6082 + (32 * ('cd', 132).length) + return_data.size + 228
                    require mem[_6082 + (32 * ('cd', 132).length) + mem[_6082 + (32 * ('cd', 132).length) + 228] + 228] <= test266151307()
                    require (32 * mem[_6082 + (32 * ('cd', 132).length) + mem[_6082 + (32 * ('cd', 132).length) + 228] + 228]) + 229 >= 197 and _6082 + (32 * ('cd', 132).length) + ceil32(return_data.size) + (32 * mem[_6082 + (32 * ('cd', 132).length) + mem[_6082 + (32 * ('cd', 132).length) + 228] + 228]) + 229 <= test266151307()
                    require return_data.size + 32 >= mem[_6082 + (32 * ('cd', 132).length) + 228] + (32 * mem[_6082 + (32 * ('cd', 132).length) + mem[_6082 + (32 * ('cd', 132).length) + 228] + 228]) + 64
                    require mem[_6082 + (32 * ('cd', 132).length) + mem[_6082 + (32 * ('cd', 132).length) + 228] + 228] - 1 < mem[_6082 + (32 * ('cd', 132).length) + mem[_6082 + (32 * ('cd', 132).length) + 228] + 228]
                require mem[_6082 + (32 * ('cd', 132).length) + 228] == bool(mem[_6082 + (32 * ('cd', 132).length) + 228])
                if mem[_6082 + (32 * ('cd', 132).length) + 228]:
                    require return_data.size >= 32
                    require mem[_6082 + (32 * ('cd', 132).length) + 228] <= test266151307()
                    require _6082 + (32 * ('cd', 132).length) + mem[_6082 + (32 * ('cd', 132).length) + 228] + 259 < _6082 + (32 * ('cd', 132).length) + return_data.size + 228
                    require mem[_6082 + (32 * ('cd', 132).length) + mem[_6082 + (32 * ('cd', 132).length) + 228] + 228] <= test266151307()
                    require (32 * mem[_6082 + (32 * ('cd', 132).length) + mem[_6082 + (32 * ('cd', 132).length) + 228] + 228]) + 229 >= 197 and _6082 + (32 * ('cd', 132).length) + ceil32(return_data.size) + (32 * mem[_6082 + (32 * ('cd', 132).length) + mem[_6082 + (32 * ('cd', 132).length) + 228] + 228]) + 229 <= test266151307()
                    require return_data.size + 32 >= mem[_6082 + (32 * ('cd', 132).length) + 228] + (32 * mem[_6082 + (32 * ('cd', 132).length) + mem[_6082 + (32 * ('cd', 132).length) + 228] + 228]) + 64
                    require mem[_6082 + (32 * ('cd', 132).length) + mem[_6082 + (32 * ('cd', 132).length) + 228] + 228] - 1 < mem[_6082 + (32 * ('cd', 132).length) + mem[_6082 + (32 * ('cd', 132).length) + 228] + 228]
                mem[_6082 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_6082 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 201] = 32
                _8666 = mem[_6071]
                mem[_6082 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 233] = mem[_6071]
                mem[_6082 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 265 len ceil32(_8666)] = mem[_6071 + 32 len ceil32(_8666)]
                if ceil32(_8666) > _8666:
                    mem[_6082 + (32 * ('cd', 132).length) + ceil32(return_data.size) + _8666 + 265] = 0
                revert with 0, 32, mem[_6082 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 233 len ceil32(_8666) + 32]
            mem[_6082 + (32 * ('cd', 132).length) + _7183 + 196] = 0
            call address(cd[36]) with:
               funct Mask(32, 224, (32 * ('cd', 132).length) + 100) >> 224
                 gas gas_remaining wei
                args mem[_6082 + (32 * ('cd', 132).length) + 200 len _7183 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if ('cd', 100).length:
                        revert with memory
                          from 128
                           len ('cd', 100).length
                    revert with 0, 'Address: low-level call failed', 0
                require ('cd', 100).length >= 32
                if 0 == ('cd', 100).length:
                    require mem[128] <= test266151307()
                    require mem[128] + 159 < ('cd', 100).length + 128
                    _8609 = mem[mem[128] + 128]
                    require mem[mem[128] + 128] <= test266151307()
                    require (32 * mem[mem[128] + 128]) + 228 >= 196 and _6082 + (32 * ('cd', 132).length) + (32 * mem[mem[128] + 128]) + 228 <= test266151307()
                    mem[_6082 + (32 * ('cd', 132).length) + 196] = mem[mem[128] + 128]
                    require ('cd', 100).length + 128 >= mem[128] + (32 * _8609) + 160
                else:
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        mem[_6082 + (32 * ('cd', 132).length) + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6082 + (32 * ('cd', 132).length) + 200] = 32
                        _8717 = mem[_6071]
                        mem[_6082 + (32 * ('cd', 132).length) + 232] = mem[_6071]
                        mem[_6082 + (32 * ('cd', 132).length) + 264 len ceil32(_8717)] = mem[_6071 + 32 len ceil32(_8717)]
                        if ceil32(_8717) > _8717:
                            mem[_6082 + (32 * ('cd', 132).length) + _8717 + 264] = 0
                        revert with 0, 32, mem[_6082 + (32 * ('cd', 132).length) + 232 len ceil32(_8717) + 32]
                    require ('cd', 100).length >= 32
                    require mem[128] <= test266151307()
                    require mem[128] + 159 < ('cd', 100).length + 128
                    _8821 = mem[mem[128] + 128]
                    require mem[mem[128] + 128] <= test266151307()
                    require (32 * mem[mem[128] + 128]) + 228 >= 196 and _6082 + (32 * ('cd', 132).length) + (32 * mem[mem[128] + 128]) + 228 <= test266151307()
                    mem[_6082 + (32 * ('cd', 132).length) + 196] = mem[mem[128] + 128]
                    require ('cd', 100).length + 128 >= mem[128] + (32 * _8821) + 160
                require mem[_6082 + (32 * ('cd', 132).length) + 196] - 1 < mem[_6082 + (32 * ('cd', 132).length) + 196]
            mem[64] = _6082 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 197
            mem[_6082 + (32 * ('cd', 132).length) + 196] = return_data.size
            mem[_6082 + (32 * ('cd', 132).length) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'Address: low-level call failed', 0
            require return_data.size >= 32
            if 0 == return_data.size:
                require mem[_6082 + (32 * ('cd', 132).length) + 228] <= test266151307()
                require _6082 + (32 * ('cd', 132).length) + mem[_6082 + (32 * ('cd', 132).length) + 228] + 259 < _6082 + (32 * ('cd', 132).length) + return_data.size + 228
                require mem[_6082 + (32 * ('cd', 132).length) + mem[_6082 + (32 * ('cd', 132).length) + 228] + 228] <= test266151307()
                require (32 * mem[_6082 + (32 * ('cd', 132).length) + mem[_6082 + (32 * ('cd', 132).length) + 228] + 228]) + 229 >= 197 and _6082 + (32 * ('cd', 132).length) + ceil32(return_data.size) + (32 * mem[_6082 + (32 * ('cd', 132).length) + mem[_6082 + (32 * ('cd', 132).length) + 228] + 228]) + 229 <= test266151307()
                require return_data.size + 32 >= mem[_6082 + (32 * ('cd', 132).length) + 228] + (32 * mem[_6082 + (32 * ('cd', 132).length) + mem[_6082 + (32 * ('cd', 132).length) + 228] + 228]) + 64
                require mem[_6082 + (32 * ('cd', 132).length) + mem[_6082 + (32 * ('cd', 132).length) + 228] + 228] - 1 < mem[_6082 + (32 * ('cd', 132).length) + mem[_6082 + (32 * ('cd', 132).length) + 228] + 228]
            require mem[_6082 + (32 * ('cd', 132).length) + 228] == bool(mem[_6082 + (32 * ('cd', 132).length) + 228])
            if mem[_6082 + (32 * ('cd', 132).length) + 228]:
                require return_data.size >= 32
                require mem[_6082 + (32 * ('cd', 132).length) + 228] <= test266151307()
                require _6082 + (32 * ('cd', 132).length) + mem[_6082 + (32 * ('cd', 132).length) + 228] + 259 < _6082 + (32 * ('cd', 132).length) + return_data.size + 228
                require mem[_6082 + (32 * ('cd', 132).length) + mem[_6082 + (32 * ('cd', 132).length) + 228] + 228] <= test266151307()
                require (32 * mem[_6082 + (32 * ('cd', 132).length) + mem[_6082 + (32 * ('cd', 132).length) + 228] + 228]) + 229 >= 197 and _6082 + (32 * ('cd', 132).length) + ceil32(return_data.size) + (32 * mem[_6082 + (32 * ('cd', 132).length) + mem[_6082 + (32 * ('cd', 132).length) + 228] + 228]) + 229 <= test266151307()
                require return_data.size + 32 >= mem[_6082 + (32 * ('cd', 132).length) + 228] + (32 * mem[_6082 + (32 * ('cd', 132).length) + mem[_6082 + (32 * ('cd', 132).length) + 228] + 228]) + 64
                require mem[_6082 + (32 * ('cd', 132).length) + mem[_6082 + (32 * ('cd', 132).length) + 228] + 228] - 1 < mem[_6082 + (32 * ('cd', 132).length) + mem[_6082 + (32 * ('cd', 132).length) + 228] + 228]
            mem[_6082 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_6082 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 201] = 32
            _8718 = mem[_6071]
            mem[_6082 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 233] = mem[_6071]
            mem[_6082 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 265 len ceil32(_8718)] = mem[_6071 + 32 len ceil32(_8718)]
            if ceil32(_8718) > _8718:
                mem[_6082 + (32 * ('cd', 132).length) + ceil32(return_data.size) + _8718 + 265] = 0
            revert with 0, 32, mem[_6082 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 233 len ceil32(_8718) + 32]
        require mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 516] == bool(mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 516])
        if not mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 516]:
            revert with 0, '', 0
        require return_data.size >= 32
        _4890 = mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 516]
        require mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 516] <= test266151307()
        require (64 * ('cd', 100).length) + (32 * ('cd', 132).length) + mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 516] + 547 < (64 * ('cd', 100).length) + (32 * ('cd', 132).length) + return_data.size + 516
        _4899 = mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 516] + 516]
        require mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 516] + 516] <= test266151307()
        require (32 * mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 516] + 516]) + 229 >= 197 and (64 * ('cd', 100).length) + (32 * ('cd', 132).length) + ceil32(return_data.size) + (32 * mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 516] + 516]) + 517 <= test266151307()
        mem[64] = (64 * ('cd', 100).length) + (32 * ('cd', 132).length) + ceil32(return_data.size) + (32 * mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 516] + 516]) + 517
        mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 485] = mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 516] + 516]
        require return_data.size + 32 >= _4890 + (32 * _4899) + 64
        mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 517 len 32 * _4899] = mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + _4890 + 548 len 32 * _4899]
        require _4899 - 1 < _4899
        _6059 = mem[(32 * _4899 - 1) + (64 * ('cd', 100).length) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 517]
        _6072 = mem[64]
        mem[64] = mem[64] + 64
        mem[_6072] = 10
        mem[_6072 + 32] = 0x47414f5f4641494c454400000000000000000000000000000000000000000000
        _6083 = mem[64]
        mem[64] = mem[64] + 64
        mem[_6083] = 32
        mem[_6083 + 32] = 'getAmountsOut(uint256,address[])'
        _6084 = mem[64]
        mem[mem[64] + 36] = _6059
        mem[mem[64] + 68] = 64
        mem[mem[64] + 100] = ('cd', 132).length
        idx = 0
        s = (32 * ('cd', 100).length) + 160
        t = mem[64] + 132
        while idx < ('cd', 132).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _7147 = mem[64]
        mem[mem[64]] = (32 * ('cd', 132).length) + 100
        mem[mem[64] + 32 len 4] = getAmountsOut(uint256 rg1, address[] rg2)
        mem[64] = mem[64] + (32 * ('cd', 132).length) + 196
        mem[_6084 + (32 * ('cd', 132).length) + 132] = 30
        mem[_6084 + (32 * ('cd', 132).length) + 164] = 'Address: low-level call failed'
        if not ext_code.size(cd[36]):
            revert with 0, 'Address: call to non-contract'
        _7184 = mem[_7147]
        mem[_6084 + (32 * ('cd', 132).length) + 196 len ceil32(mem[_7147])] = mem[_7147 + 32 len ceil32(mem[_7147])]
        if ceil32(_7184) <= _7184:
            call address(cd[36]) with:
               funct Mask(32, 224, (32 * ('cd', 132).length) + 100) >> 224
                 gas gas_remaining wei
                args mem[_6084 + (32 * ('cd', 132).length) + 200 len _7184 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if ('cd', 100).length:
                        revert with memory
                          from 128
                           len ('cd', 100).length
                    revert with 0, 'Address: low-level call failed', 0
                require ('cd', 100).length >= 32
                if 0 == ('cd', 100).length:
                    require mem[128] <= test266151307()
                    require mem[128] + 159 < ('cd', 100).length + 128
                    _8585 = mem[mem[128] + 128]
                    require mem[mem[128] + 128] <= test266151307()
                    require (32 * mem[mem[128] + 128]) + 228 >= 196 and _6084 + (32 * ('cd', 132).length) + (32 * mem[mem[128] + 128]) + 228 <= test266151307()
                    mem[_6084 + (32 * ('cd', 132).length) + 196] = mem[mem[128] + 128]
                    require ('cd', 100).length + 128 >= mem[128] + (32 * _8585) + 160
                else:
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        mem[_6084 + (32 * ('cd', 132).length) + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6084 + (32 * ('cd', 132).length) + 200] = 32
                        _8671 = mem[_6072]
                        mem[_6084 + (32 * ('cd', 132).length) + 232] = mem[_6072]
                        mem[_6084 + (32 * ('cd', 132).length) + 264 len ceil32(_8671)] = mem[_6072 + 32 len ceil32(_8671)]
                        if ceil32(_8671) > _8671:
                            mem[_6084 + (32 * ('cd', 132).length) + _8671 + 264] = 0
                        revert with 0, 32, mem[_6084 + (32 * ('cd', 132).length) + 232 len ceil32(_8671) + 32]
                    require ('cd', 100).length >= 32
                    require mem[128] <= test266151307()
                    require mem[128] + 159 < ('cd', 100).length + 128
                    _8793 = mem[mem[128] + 128]
                    require mem[mem[128] + 128] <= test266151307()
                    require (32 * mem[mem[128] + 128]) + 228 >= 196 and _6084 + (32 * ('cd', 132).length) + (32 * mem[mem[128] + 128]) + 228 <= test266151307()
                    mem[_6084 + (32 * ('cd', 132).length) + 196] = mem[mem[128] + 128]
                    require ('cd', 100).length + 128 >= mem[128] + (32 * _8793) + 160
                require mem[_6084 + (32 * ('cd', 132).length) + 196] - 1 < mem[_6084 + (32 * ('cd', 132).length) + 196]
            mem[64] = _6084 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 197
            mem[_6084 + (32 * ('cd', 132).length) + 196] = return_data.size
            mem[_6084 + (32 * ('cd', 132).length) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'Address: low-level call failed', 0
            require return_data.size >= 32
            if 0 == return_data.size:
                require mem[_6084 + (32 * ('cd', 132).length) + 228] <= test266151307()
                require _6084 + (32 * ('cd', 132).length) + mem[_6084 + (32 * ('cd', 132).length) + 228] + 259 < _6084 + (32 * ('cd', 132).length) + return_data.size + 228
                require mem[_6084 + (32 * ('cd', 132).length) + mem[_6084 + (32 * ('cd', 132).length) + 228] + 228] <= test266151307()
                require (32 * mem[_6084 + (32 * ('cd', 132).length) + mem[_6084 + (32 * ('cd', 132).length) + 228] + 228]) + 229 >= 197 and _6084 + (32 * ('cd', 132).length) + ceil32(return_data.size) + (32 * mem[_6084 + (32 * ('cd', 132).length) + mem[_6084 + (32 * ('cd', 132).length) + 228] + 228]) + 229 <= test266151307()
                require return_data.size + 32 >= mem[_6084 + (32 * ('cd', 132).length) + 228] + (32 * mem[_6084 + (32 * ('cd', 132).length) + mem[_6084 + (32 * ('cd', 132).length) + 228] + 228]) + 64
                require mem[_6084 + (32 * ('cd', 132).length) + mem[_6084 + (32 * ('cd', 132).length) + 228] + 228] - 1 < mem[_6084 + (32 * ('cd', 132).length) + mem[_6084 + (32 * ('cd', 132).length) + 228] + 228]
            require mem[_6084 + (32 * ('cd', 132).length) + 228] == bool(mem[_6084 + (32 * ('cd', 132).length) + 228])
            if mem[_6084 + (32 * ('cd', 132).length) + 228]:
                require return_data.size >= 32
                require mem[_6084 + (32 * ('cd', 132).length) + 228] <= test266151307()
                require _6084 + (32 * ('cd', 132).length) + mem[_6084 + (32 * ('cd', 132).length) + 228] + 259 < _6084 + (32 * ('cd', 132).length) + return_data.size + 228
                require mem[_6084 + (32 * ('cd', 132).length) + mem[_6084 + (32 * ('cd', 132).length) + 228] + 228] <= test266151307()
                require (32 * mem[_6084 + (32 * ('cd', 132).length) + mem[_6084 + (32 * ('cd', 132).length) + 228] + 228]) + 229 >= 197 and _6084 + (32 * ('cd', 132).length) + ceil32(return_data.size) + (32 * mem[_6084 + (32 * ('cd', 132).length) + mem[_6084 + (32 * ('cd', 132).length) + 228] + 228]) + 229 <= test266151307()
                require return_data.size + 32 >= mem[_6084 + (32 * ('cd', 132).length) + 228] + (32 * mem[_6084 + (32 * ('cd', 132).length) + mem[_6084 + (32 * ('cd', 132).length) + 228] + 228]) + 64
                require mem[_6084 + (32 * ('cd', 132).length) + mem[_6084 + (32 * ('cd', 132).length) + 228] + 228] - 1 < mem[_6084 + (32 * ('cd', 132).length) + mem[_6084 + (32 * ('cd', 132).length) + 228] + 228]
            mem[_6084 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_6084 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 201] = 32
            _8672 = mem[_6072]
            mem[_6084 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 233] = mem[_6072]
            mem[_6084 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 265 len ceil32(_8672)] = mem[_6072 + 32 len ceil32(_8672)]
            if ceil32(_8672) > _8672:
                mem[_6084 + (32 * ('cd', 132).length) + ceil32(return_data.size) + _8672 + 265] = 0
            revert with 0, 32, mem[_6084 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 233 len ceil32(_8672) + 32]
        mem[_6084 + (32 * ('cd', 132).length) + _7184 + 196] = 0
        call address(cd[36]) with:
           funct Mask(32, 224, (32 * ('cd', 132).length) + 100) >> 224
             gas gas_remaining wei
            args mem[_6084 + (32 * ('cd', 132).length) + 200 len _7184 - 4]
        if not return_data.size:
            if not ext_call.success:
                if ('cd', 100).length:
                    revert with memory
                      from 128
                       len ('cd', 100).length
                revert with 0, 'Address: low-level call failed', 0
            require ('cd', 100).length >= 32
            if 0 == ('cd', 100).length:
                require mem[128] <= test266151307()
                require mem[128] + 159 < ('cd', 100).length + 128
                _8611 = mem[mem[128] + 128]
                require mem[mem[128] + 128] <= test266151307()
                require (32 * mem[mem[128] + 128]) + 228 >= 196 and _6084 + (32 * ('cd', 132).length) + (32 * mem[mem[128] + 128]) + 228 <= test266151307()
                mem[_6084 + (32 * ('cd', 132).length) + 196] = mem[mem[128] + 128]
                require ('cd', 100).length + 128 >= mem[128] + (32 * _8611) + 160
            else:
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    mem[_6084 + (32 * ('cd', 132).length) + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_6084 + (32 * ('cd', 132).length) + 200] = 32
                    _8723 = mem[_6072]
                    mem[_6084 + (32 * ('cd', 132).length) + 232] = mem[_6072]
                    mem[_6084 + (32 * ('cd', 132).length) + 264 len ceil32(_8723)] = mem[_6072 + 32 len ceil32(_8723)]
                    if ceil32(_8723) > _8723:
                        mem[_6084 + (32 * ('cd', 132).length) + _8723 + 264] = 0
                    revert with 0, 32, mem[_6084 + (32 * ('cd', 132).length) + 232 len ceil32(_8723) + 32]
                require ('cd', 100).length >= 32
                require mem[128] <= test266151307()
                require mem[128] + 159 < ('cd', 100).length + 128
                _8825 = mem[mem[128] + 128]
                require mem[mem[128] + 128] <= test266151307()
                require (32 * mem[mem[128] + 128]) + 228 >= 196 and _6084 + (32 * ('cd', 132).length) + (32 * mem[mem[128] + 128]) + 228 <= test266151307()
                mem[_6084 + (32 * ('cd', 132).length) + 196] = mem[mem[128] + 128]
                require ('cd', 100).length + 128 >= mem[128] + (32 * _8825) + 160
            require mem[_6084 + (32 * ('cd', 132).length) + 196] - 1 < mem[_6084 + (32 * ('cd', 132).length) + 196]
        mem[64] = _6084 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 197
        mem[_6084 + (32 * ('cd', 132).length) + 196] = return_data.size
        mem[_6084 + (32 * ('cd', 132).length) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'Address: low-level call failed', 0
        require return_data.size >= 32
        if 0 == return_data.size:
            require mem[_6084 + (32 * ('cd', 132).length) + 228] <= test266151307()
            require _6084 + (32 * ('cd', 132).length) + mem[_6084 + (32 * ('cd', 132).length) + 228] + 259 < _6084 + (32 * ('cd', 132).length) + return_data.size + 228
            require mem[_6084 + (32 * ('cd', 132).length) + mem[_6084 + (32 * ('cd', 132).length) + 228] + 228] <= test266151307()
            require (32 * mem[_6084 + (32 * ('cd', 132).length) + mem[_6084 + (32 * ('cd', 132).length) + 228] + 228]) + 229 >= 197 and _6084 + (32 * ('cd', 132).length) + ceil32(return_data.size) + (32 * mem[_6084 + (32 * ('cd', 132).length) + mem[_6084 + (32 * ('cd', 132).length) + 228] + 228]) + 229 <= test266151307()
            require return_data.size + 32 >= mem[_6084 + (32 * ('cd', 132).length) + 228] + (32 * mem[_6084 + (32 * ('cd', 132).length) + mem[_6084 + (32 * ('cd', 132).length) + 228] + 228]) + 64
            require mem[_6084 + (32 * ('cd', 132).length) + mem[_6084 + (32 * ('cd', 132).length) + 228] + 228] - 1 < mem[_6084 + (32 * ('cd', 132).length) + mem[_6084 + (32 * ('cd', 132).length) + 228] + 228]
        require mem[_6084 + (32 * ('cd', 132).length) + 228] == bool(mem[_6084 + (32 * ('cd', 132).length) + 228])
        if mem[_6084 + (32 * ('cd', 132).length) + 228]:
            require return_data.size >= 32
            require mem[_6084 + (32 * ('cd', 132).length) + 228] <= test266151307()
            require _6084 + (32 * ('cd', 132).length) + mem[_6084 + (32 * ('cd', 132).length) + 228] + 259 < _6084 + (32 * ('cd', 132).length) + return_data.size + 228
            require mem[_6084 + (32 * ('cd', 132).length) + mem[_6084 + (32 * ('cd', 132).length) + 228] + 228] <= test266151307()
            require (32 * mem[_6084 + (32 * ('cd', 132).length) + mem[_6084 + (32 * ('cd', 132).length) + 228] + 228]) + 229 >= 197 and _6084 + (32 * ('cd', 132).length) + ceil32(return_data.size) + (32 * mem[_6084 + (32 * ('cd', 132).length) + mem[_6084 + (32 * ('cd', 132).length) + 228] + 228]) + 229 <= test266151307()
            require return_data.size + 32 >= mem[_6084 + (32 * ('cd', 132).length) + 228] + (32 * mem[_6084 + (32 * ('cd', 132).length) + mem[_6084 + (32 * ('cd', 132).length) + 228] + 228]) + 64
            require mem[_6084 + (32 * ('cd', 132).length) + mem[_6084 + (32 * ('cd', 132).length) + 228] + 228] - 1 < mem[_6084 + (32 * ('cd', 132).length) + mem[_6084 + (32 * ('cd', 132).length) + 228] + 228]
        mem[_6084 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_6084 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 201] = 32
        _8724 = mem[_6072]
        mem[_6084 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 233] = mem[_6072]
        mem[_6084 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 265 len ceil32(_8724)] = mem[_6072 + 32 len ceil32(_8724)]
        if ceil32(_8724) > _8724:
            mem[_6084 + (32 * ('cd', 132).length) + ceil32(return_data.size) + _8724 + 265] = 0
        revert with 0, 32, mem[_6084 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 233 len ceil32(_8724) + 32]
    mem[(98 * ('cd', 100).length) + (32 * ('cd', 132).length) + 584] = 0
    call address(cd[4]).mem[(32 * ('cd', 100).length) + (32 * ('cd', 132).length) + floor32((32 * ('cd', 100).length) + 131) + 288 len 4] with:
         gas gas_remaining wei
        args mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 488 len (32 * ('cd', 100).length) + 96]
    if not return_data.size:
        if not ext_call.success:
            if ('cd', 100).length:
                revert with memory
                  from 128
                   len ('cd', 100).length
            revert with 0, 'Address: low-level call failed', 0
        require ('cd', 100).length >= 32
        if 0 == ('cd', 100).length:
            require mem[128] <= test266151307()
            require mem[128] + 159 < ('cd', 100).length + 128
            _4875 = mem[mem[128] + 128]
            require mem[mem[128] + 128] <= test266151307()
            require (32 * mem[mem[128] + 128]) + 228 >= 196 and (64 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * mem[mem[128] + 128]) + 516 <= test266151307()
            mem[64] = (64 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * mem[mem[128] + 128]) + 516
            mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 484] = mem[mem[128] + 128]
            require ('cd', 100).length + 128 >= mem[128] + (32 * _4875) + 160
            mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 516 len 32 * _4875] = mem[mem[128] + 160 len 32 * _4875]
            require mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 484] - 1 < mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 484]
            _6062 = mem[(32 * mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 484] - 1) + (64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 516]
            _6073 = mem[64]
            mem[64] = mem[64] + 64
            mem[_6073] = 10
            mem[_6073 + 32] = 0x47414f5f4641494c454400000000000000000000000000000000000000000000
            _6085 = mem[64]
            mem[64] = mem[64] + 64
            mem[_6085] = 32
            mem[_6085 + 32] = 'getAmountsOut(uint256,address[])'
            _6086 = mem[64]
            mem[mem[64] + 36] = _6062
            mem[mem[64] + 68] = 64
            mem[mem[64] + 100] = ('cd', 132).length
            idx = 0
            s = (32 * ('cd', 100).length) + 160
            t = mem[64] + 132
            while idx < ('cd', 132).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _7149 = mem[64]
            mem[mem[64]] = (32 * ('cd', 132).length) + 100
            mem[mem[64] + 32 len 4] = getAmountsOut(uint256 rg1, address[] rg2)
            mem[64] = mem[64] + (32 * ('cd', 132).length) + 196
            mem[_6086 + (32 * ('cd', 132).length) + 132] = 30
            mem[_6086 + (32 * ('cd', 132).length) + 164] = 'Address: low-level call failed'
            if not ext_code.size(cd[36]):
                revert with 0, 'Address: call to non-contract'
            _7185 = mem[_7149]
            mem[_6086 + (32 * ('cd', 132).length) + 196 len ceil32(mem[_7149])] = mem[_7149 + 32 len ceil32(mem[_7149])]
            if ceil32(_7185) <= _7185:
                call address(cd[36]) with:
                   funct Mask(32, 224, (32 * ('cd', 132).length) + 100) >> 224
                     gas gas_remaining wei
                    args mem[_6086 + (32 * ('cd', 132).length) + 200 len _7185 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ('cd', 100).length:
                            revert with memory
                              from 128
                               len ('cd', 100).length
                        revert with 0, 'Address: low-level call failed', 0
                    require ('cd', 100).length >= 32
                    if 0 == ('cd', 100).length:
                        require mem[128] <= test266151307()
                        require mem[128] + 159 < ('cd', 100).length + 128
                        _8589 = mem[mem[128] + 128]
                        require mem[mem[128] + 128] <= test266151307()
                        require (32 * mem[mem[128] + 128]) + 228 >= 196 and _6086 + (32 * ('cd', 132).length) + (32 * mem[mem[128] + 128]) + 228 <= test266151307()
                        mem[_6086 + (32 * ('cd', 132).length) + 196] = mem[mem[128] + 128]
                        require ('cd', 100).length + 128 >= mem[128] + (32 * _8589) + 160
                    else:
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            mem[_6086 + (32 * ('cd', 132).length) + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6086 + (32 * ('cd', 132).length) + 200] = 32
                            _8677 = mem[_6073]
                            mem[_6086 + (32 * ('cd', 132).length) + 232] = mem[_6073]
                            mem[_6086 + (32 * ('cd', 132).length) + 264 len ceil32(_8677)] = mem[_6073 + 32 len ceil32(_8677)]
                            if ceil32(_8677) > _8677:
                                mem[_6086 + (32 * ('cd', 132).length) + _8677 + 264] = 0
                            revert with 0, 32, mem[_6086 + (32 * ('cd', 132).length) + 232 len ceil32(_8677) + 32]
                        require ('cd', 100).length >= 32
                        require mem[128] <= test266151307()
                        require mem[128] + 159 < ('cd', 100).length + 128
                        _8797 = mem[mem[128] + 128]
                        require mem[mem[128] + 128] <= test266151307()
                        require (32 * mem[mem[128] + 128]) + 228 >= 196 and _6086 + (32 * ('cd', 132).length) + (32 * mem[mem[128] + 128]) + 228 <= test266151307()
                        mem[_6086 + (32 * ('cd', 132).length) + 196] = mem[mem[128] + 128]
                        require ('cd', 100).length + 128 >= mem[128] + (32 * _8797) + 160
                    require mem[_6086 + (32 * ('cd', 132).length) + 196] - 1 < mem[_6086 + (32 * ('cd', 132).length) + 196]
                mem[64] = _6086 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 197
                mem[_6086 + (32 * ('cd', 132).length) + 196] = return_data.size
                mem[_6086 + (32 * ('cd', 132).length) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'Address: low-level call failed', 0
                require return_data.size >= 32
                if 0 == return_data.size:
                    require mem[_6086 + (32 * ('cd', 132).length) + 228] <= test266151307()
                    require _6086 + (32 * ('cd', 132).length) + mem[_6086 + (32 * ('cd', 132).length) + 228] + 259 < _6086 + (32 * ('cd', 132).length) + return_data.size + 228
                    require mem[_6086 + (32 * ('cd', 132).length) + mem[_6086 + (32 * ('cd', 132).length) + 228] + 228] <= test266151307()
                    require (32 * mem[_6086 + (32 * ('cd', 132).length) + mem[_6086 + (32 * ('cd', 132).length) + 228] + 228]) + 229 >= 197 and _6086 + (32 * ('cd', 132).length) + ceil32(return_data.size) + (32 * mem[_6086 + (32 * ('cd', 132).length) + mem[_6086 + (32 * ('cd', 132).length) + 228] + 228]) + 229 <= test266151307()
                    require return_data.size + 32 >= mem[_6086 + (32 * ('cd', 132).length) + 228] + (32 * mem[_6086 + (32 * ('cd', 132).length) + mem[_6086 + (32 * ('cd', 132).length) + 228] + 228]) + 64
                    require mem[_6086 + (32 * ('cd', 132).length) + mem[_6086 + (32 * ('cd', 132).length) + 228] + 228] - 1 < mem[_6086 + (32 * ('cd', 132).length) + mem[_6086 + (32 * ('cd', 132).length) + 228] + 228]
                require mem[_6086 + (32 * ('cd', 132).length) + 228] == bool(mem[_6086 + (32 * ('cd', 132).length) + 228])
                if mem[_6086 + (32 * ('cd', 132).length) + 228]:
                    require return_data.size >= 32
                    require mem[_6086 + (32 * ('cd', 132).length) + 228] <= test266151307()
                    require _6086 + (32 * ('cd', 132).length) + mem[_6086 + (32 * ('cd', 132).length) + 228] + 259 < _6086 + (32 * ('cd', 132).length) + return_data.size + 228
                    require mem[_6086 + (32 * ('cd', 132).length) + mem[_6086 + (32 * ('cd', 132).length) + 228] + 228] <= test266151307()
                    require (32 * mem[_6086 + (32 * ('cd', 132).length) + mem[_6086 + (32 * ('cd', 132).length) + 228] + 228]) + 229 >= 197 and _6086 + (32 * ('cd', 132).length) + ceil32(return_data.size) + (32 * mem[_6086 + (32 * ('cd', 132).length) + mem[_6086 + (32 * ('cd', 132).length) + 228] + 228]) + 229 <= test266151307()
                    require return_data.size + 32 >= mem[_6086 + (32 * ('cd', 132).length) + 228] + (32 * mem[_6086 + (32 * ('cd', 132).length) + mem[_6086 + (32 * ('cd', 132).length) + 228] + 228]) + 64
                    require mem[_6086 + (32 * ('cd', 132).length) + mem[_6086 + (32 * ('cd', 132).length) + 228] + 228] - 1 < mem[_6086 + (32 * ('cd', 132).length) + mem[_6086 + (32 * ('cd', 132).length) + 228] + 228]
                mem[_6086 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_6086 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 201] = 32
                _8678 = mem[_6073]
                mem[_6086 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 233] = mem[_6073]
                mem[_6086 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 265 len ceil32(_8678)] = mem[_6073 + 32 len ceil32(_8678)]
                if ceil32(_8678) > _8678:
                    mem[_6086 + (32 * ('cd', 132).length) + ceil32(return_data.size) + _8678 + 265] = 0
                revert with 0, 32, mem[_6086 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 233 len ceil32(_8678) + 32]
            mem[_6086 + (32 * ('cd', 132).length) + _7185 + 196] = 0
            call address(cd[36]) with:
               funct Mask(32, 224, (32 * ('cd', 132).length) + 100) >> 224
                 gas gas_remaining wei
                args mem[_6086 + (32 * ('cd', 132).length) + 200 len _7185 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if ('cd', 100).length:
                        revert with memory
                          from 128
                           len ('cd', 100).length
                    revert with 0, 'Address: low-level call failed', 0
                require ('cd', 100).length >= 32
                if 0 == ('cd', 100).length:
                    require mem[128] <= test266151307()
                    require mem[128] + 159 < ('cd', 100).length + 128
                    _8613 = mem[mem[128] + 128]
                    require mem[mem[128] + 128] <= test266151307()
                    require (32 * mem[mem[128] + 128]) + 228 >= 196 and _6086 + (32 * ('cd', 132).length) + (32 * mem[mem[128] + 128]) + 228 <= test266151307()
                    mem[_6086 + (32 * ('cd', 132).length) + 196] = mem[mem[128] + 128]
                    require ('cd', 100).length + 128 >= mem[128] + (32 * _8613) + 160
                else:
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        mem[_6086 + (32 * ('cd', 132).length) + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6086 + (32 * ('cd', 132).length) + 200] = 32
                        _8729 = mem[_6073]
                        mem[_6086 + (32 * ('cd', 132).length) + 232] = mem[_6073]
                        mem[_6086 + (32 * ('cd', 132).length) + 264 len ceil32(_8729)] = mem[_6073 + 32 len ceil32(_8729)]
                        if ceil32(_8729) > _8729:
                            mem[_6086 + (32 * ('cd', 132).length) + _8729 + 264] = 0
                        revert with 0, 32, mem[_6086 + (32 * ('cd', 132).length) + 232 len ceil32(_8729) + 32]
                    require ('cd', 100).length >= 32
                    require mem[128] <= test266151307()
                    require mem[128] + 159 < ('cd', 100).length + 128
                    _8829 = mem[mem[128] + 128]
                    require mem[mem[128] + 128] <= test266151307()
                    require (32 * mem[mem[128] + 128]) + 228 >= 196 and _6086 + (32 * ('cd', 132).length) + (32 * mem[mem[128] + 128]) + 228 <= test266151307()
                    mem[_6086 + (32 * ('cd', 132).length) + 196] = mem[mem[128] + 128]
                    require ('cd', 100).length + 128 >= mem[128] + (32 * _8829) + 160
                require mem[_6086 + (32 * ('cd', 132).length) + 196] - 1 < mem[_6086 + (32 * ('cd', 132).length) + 196]
            mem[64] = _6086 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 197
            mem[_6086 + (32 * ('cd', 132).length) + 196] = return_data.size
            mem[_6086 + (32 * ('cd', 132).length) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'Address: low-level call failed', 0
            require return_data.size >= 32
            if 0 == return_data.size:
                require mem[_6086 + (32 * ('cd', 132).length) + 228] <= test266151307()
                require _6086 + (32 * ('cd', 132).length) + mem[_6086 + (32 * ('cd', 132).length) + 228] + 259 < _6086 + (32 * ('cd', 132).length) + return_data.size + 228
                require mem[_6086 + (32 * ('cd', 132).length) + mem[_6086 + (32 * ('cd', 132).length) + 228] + 228] <= test266151307()
                require (32 * mem[_6086 + (32 * ('cd', 132).length) + mem[_6086 + (32 * ('cd', 132).length) + 228] + 228]) + 229 >= 197 and _6086 + (32 * ('cd', 132).length) + ceil32(return_data.size) + (32 * mem[_6086 + (32 * ('cd', 132).length) + mem[_6086 + (32 * ('cd', 132).length) + 228] + 228]) + 229 <= test266151307()
                require return_data.size + 32 >= mem[_6086 + (32 * ('cd', 132).length) + 228] + (32 * mem[_6086 + (32 * ('cd', 132).length) + mem[_6086 + (32 * ('cd', 132).length) + 228] + 228]) + 64
                require mem[_6086 + (32 * ('cd', 132).length) + mem[_6086 + (32 * ('cd', 132).length) + 228] + 228] - 1 < mem[_6086 + (32 * ('cd', 132).length) + mem[_6086 + (32 * ('cd', 132).length) + 228] + 228]
            require mem[_6086 + (32 * ('cd', 132).length) + 228] == bool(mem[_6086 + (32 * ('cd', 132).length) + 228])
            if mem[_6086 + (32 * ('cd', 132).length) + 228]:
                require return_data.size >= 32
                require mem[_6086 + (32 * ('cd', 132).length) + 228] <= test266151307()
                require _6086 + (32 * ('cd', 132).length) + mem[_6086 + (32 * ('cd', 132).length) + 228] + 259 < _6086 + (32 * ('cd', 132).length) + return_data.size + 228
                require mem[_6086 + (32 * ('cd', 132).length) + mem[_6086 + (32 * ('cd', 132).length) + 228] + 228] <= test266151307()
                require (32 * mem[_6086 + (32 * ('cd', 132).length) + mem[_6086 + (32 * ('cd', 132).length) + 228] + 228]) + 229 >= 197 and _6086 + (32 * ('cd', 132).length) + ceil32(return_data.size) + (32 * mem[_6086 + (32 * ('cd', 132).length) + mem[_6086 + (32 * ('cd', 132).length) + 228] + 228]) + 229 <= test266151307()
                require return_data.size + 32 >= mem[_6086 + (32 * ('cd', 132).length) + 228] + (32 * mem[_6086 + (32 * ('cd', 132).length) + mem[_6086 + (32 * ('cd', 132).length) + 228] + 228]) + 64
                require mem[_6086 + (32 * ('cd', 132).length) + mem[_6086 + (32 * ('cd', 132).length) + 228] + 228] - 1 < mem[_6086 + (32 * ('cd', 132).length) + mem[_6086 + (32 * ('cd', 132).length) + 228] + 228]
            mem[_6086 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_6086 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 201] = 32
            _8730 = mem[_6073]
            mem[_6086 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 233] = mem[_6073]
            mem[_6086 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 265 len ceil32(_8730)] = mem[_6073 + 32 len ceil32(_8730)]
            if ceil32(_8730) > _8730:
                mem[_6086 + (32 * ('cd', 132).length) + ceil32(return_data.size) + _8730 + 265] = 0
            revert with 0, 32, mem[_6086 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 233 len ceil32(_8730) + 32]
        require mem[128] == bool(mem[128])
        if not mem[128]:
            revert with 0, '', 0
        require ('cd', 100).length >= 32
        require mem[128] <= test266151307()
        require mem[128] + 159 < ('cd', 100).length + 128
        _4901 = mem[mem[128] + 128]
        require mem[mem[128] + 128] <= test266151307()
        require (32 * mem[mem[128] + 128]) + 228 >= 196 and (64 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * mem[mem[128] + 128]) + 516 <= test266151307()
        mem[64] = (64 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * mem[mem[128] + 128]) + 516
        mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 484] = mem[mem[128] + 128]
        require ('cd', 100).length + 128 >= mem[128] + (32 * _4901) + 160
        mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 516 len 32 * _4901] = mem[mem[128] + 160 len 32 * _4901]
        require mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 484] - 1 < mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 484]
        _6063 = mem[(32 * mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 484] - 1) + (64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 516]
        _6074 = mem[64]
        mem[64] = mem[64] + 64
        mem[_6074] = 10
        mem[_6074 + 32] = 0x47414f5f4641494c454400000000000000000000000000000000000000000000
        _6087 = mem[64]
        mem[64] = mem[64] + 64
        mem[_6087] = 32
        mem[_6087 + 32] = 'getAmountsOut(uint256,address[])'
        _6088 = mem[64]
        mem[mem[64] + 36] = _6063
        mem[mem[64] + 68] = 64
        mem[mem[64] + 100] = ('cd', 132).length
        idx = 0
        s = (32 * ('cd', 100).length) + 160
        t = mem[64] + 132
        while idx < ('cd', 132).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _7151 = mem[64]
        mem[mem[64]] = (32 * ('cd', 132).length) + 100
        mem[mem[64] + 32 len 4] = getAmountsOut(uint256 rg1, address[] rg2)
        mem[64] = mem[64] + (32 * ('cd', 132).length) + 196
        mem[_6088 + (32 * ('cd', 132).length) + 132] = 30
        mem[_6088 + (32 * ('cd', 132).length) + 164] = 'Address: low-level call failed'
        if not ext_code.size(cd[36]):
            revert with 0, 'Address: call to non-contract'
        _7186 = mem[_7151]
        mem[_6088 + (32 * ('cd', 132).length) + 196 len ceil32(mem[_7151])] = mem[_7151 + 32 len ceil32(mem[_7151])]
        if ceil32(_7186) <= _7186:
            call address(cd[36]) with:
               funct Mask(32, 224, (32 * ('cd', 132).length) + 100) >> 224
                 gas gas_remaining wei
                args mem[_6088 + (32 * ('cd', 132).length) + 200 len _7186 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if ('cd', 100).length:
                        revert with memory
                          from 128
                           len ('cd', 100).length
                    revert with 0, 'Address: low-level call failed', 0
                require ('cd', 100).length >= 32
                if 0 == ('cd', 100).length:
                    require mem[128] <= test266151307()
                    require mem[128] + 159 < ('cd', 100).length + 128
                    _8593 = mem[mem[128] + 128]
                    require mem[mem[128] + 128] <= test266151307()
                    require (32 * mem[mem[128] + 128]) + 228 >= 196 and _6088 + (32 * ('cd', 132).length) + (32 * mem[mem[128] + 128]) + 228 <= test266151307()
                    mem[_6088 + (32 * ('cd', 132).length) + 196] = mem[mem[128] + 128]
                    require ('cd', 100).length + 128 >= mem[128] + (32 * _8593) + 160
                else:
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        mem[_6088 + (32 * ('cd', 132).length) + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6088 + (32 * ('cd', 132).length) + 200] = 32
                        _8683 = mem[_6074]
                        mem[_6088 + (32 * ('cd', 132).length) + 232] = mem[_6074]
                        mem[_6088 + (32 * ('cd', 132).length) + 264 len ceil32(_8683)] = mem[_6074 + 32 len ceil32(_8683)]
                        if ceil32(_8683) > _8683:
                            mem[_6088 + (32 * ('cd', 132).length) + _8683 + 264] = 0
                        revert with 0, 32, mem[_6088 + (32 * ('cd', 132).length) + 232 len ceil32(_8683) + 32]
                    require ('cd', 100).length >= 32
                    require mem[128] <= test266151307()
                    require mem[128] + 159 < ('cd', 100).length + 128
                    _8801 = mem[mem[128] + 128]
                    require mem[mem[128] + 128] <= test266151307()
                    require (32 * mem[mem[128] + 128]) + 228 >= 196 and _6088 + (32 * ('cd', 132).length) + (32 * mem[mem[128] + 128]) + 228 <= test266151307()
                    mem[_6088 + (32 * ('cd', 132).length) + 196] = mem[mem[128] + 128]
                    require ('cd', 100).length + 128 >= mem[128] + (32 * _8801) + 160
                require mem[_6088 + (32 * ('cd', 132).length) + 196] - 1 < mem[_6088 + (32 * ('cd', 132).length) + 196]
            mem[64] = _6088 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 197
            mem[_6088 + (32 * ('cd', 132).length) + 196] = return_data.size
            mem[_6088 + (32 * ('cd', 132).length) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'Address: low-level call failed', 0
            require return_data.size >= 32
            if 0 == return_data.size:
                require mem[_6088 + (32 * ('cd', 132).length) + 228] <= test266151307()
                require _6088 + (32 * ('cd', 132).length) + mem[_6088 + (32 * ('cd', 132).length) + 228] + 259 < _6088 + (32 * ('cd', 132).length) + return_data.size + 228
                require mem[_6088 + (32 * ('cd', 132).length) + mem[_6088 + (32 * ('cd', 132).length) + 228] + 228] <= test266151307()
                require (32 * mem[_6088 + (32 * ('cd', 132).length) + mem[_6088 + (32 * ('cd', 132).length) + 228] + 228]) + 229 >= 197 and _6088 + (32 * ('cd', 132).length) + ceil32(return_data.size) + (32 * mem[_6088 + (32 * ('cd', 132).length) + mem[_6088 + (32 * ('cd', 132).length) + 228] + 228]) + 229 <= test266151307()
                require return_data.size + 32 >= mem[_6088 + (32 * ('cd', 132).length) + 228] + (32 * mem[_6088 + (32 * ('cd', 132).length) + mem[_6088 + (32 * ('cd', 132).length) + 228] + 228]) + 64
                require mem[_6088 + (32 * ('cd', 132).length) + mem[_6088 + (32 * ('cd', 132).length) + 228] + 228] - 1 < mem[_6088 + (32 * ('cd', 132).length) + mem[_6088 + (32 * ('cd', 132).length) + 228] + 228]
            require mem[_6088 + (32 * ('cd', 132).length) + 228] == bool(mem[_6088 + (32 * ('cd', 132).length) + 228])
            if mem[_6088 + (32 * ('cd', 132).length) + 228]:
                require return_data.size >= 32
                require mem[_6088 + (32 * ('cd', 132).length) + 228] <= test266151307()
                require _6088 + (32 * ('cd', 132).length) + mem[_6088 + (32 * ('cd', 132).length) + 228] + 259 < _6088 + (32 * ('cd', 132).length) + return_data.size + 228
                require mem[_6088 + (32 * ('cd', 132).length) + mem[_6088 + (32 * ('cd', 132).length) + 228] + 228] <= test266151307()
                require (32 * mem[_6088 + (32 * ('cd', 132).length) + mem[_6088 + (32 * ('cd', 132).length) + 228] + 228]) + 229 >= 197 and _6088 + (32 * ('cd', 132).length) + ceil32(return_data.size) + (32 * mem[_6088 + (32 * ('cd', 132).length) + mem[_6088 + (32 * ('cd', 132).length) + 228] + 228]) + 229 <= test266151307()
                require return_data.size + 32 >= mem[_6088 + (32 * ('cd', 132).length) + 228] + (32 * mem[_6088 + (32 * ('cd', 132).length) + mem[_6088 + (32 * ('cd', 132).length) + 228] + 228]) + 64
                require mem[_6088 + (32 * ('cd', 132).length) + mem[_6088 + (32 * ('cd', 132).length) + 228] + 228] - 1 < mem[_6088 + (32 * ('cd', 132).length) + mem[_6088 + (32 * ('cd', 132).length) + 228] + 228]
            mem[_6088 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_6088 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 201] = 32
            _8684 = mem[_6074]
            mem[_6088 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 233] = mem[_6074]
            mem[_6088 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 265 len ceil32(_8684)] = mem[_6074 + 32 len ceil32(_8684)]
            if ceil32(_8684) > _8684:
                mem[_6088 + (32 * ('cd', 132).length) + ceil32(return_data.size) + _8684 + 265] = 0
            revert with 0, 32, mem[_6088 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 233 len ceil32(_8684) + 32]
        mem[_6088 + (32 * ('cd', 132).length) + _7186 + 196] = 0
        call address(cd[36]) with:
           funct Mask(32, 224, (32 * ('cd', 132).length) + 100) >> 224
             gas gas_remaining wei
            args mem[_6088 + (32 * ('cd', 132).length) + 200 len _7186 - 4]
        if not return_data.size:
            if not ext_call.success:
                if ('cd', 100).length:
                    revert with memory
                      from 128
                       len ('cd', 100).length
                revert with 0, 'Address: low-level call failed', 0
            require ('cd', 100).length >= 32
            if 0 == ('cd', 100).length:
                require mem[128] <= test266151307()
                require mem[128] + 159 < ('cd', 100).length + 128
                _8615 = mem[mem[128] + 128]
                require mem[mem[128] + 128] <= test266151307()
                require (32 * mem[mem[128] + 128]) + 228 >= 196 and _6088 + (32 * ('cd', 132).length) + (32 * mem[mem[128] + 128]) + 228 <= test266151307()
                mem[_6088 + (32 * ('cd', 132).length) + 196] = mem[mem[128] + 128]
                require ('cd', 100).length + 128 >= mem[128] + (32 * _8615) + 160
            else:
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    mem[_6088 + (32 * ('cd', 132).length) + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_6088 + (32 * ('cd', 132).length) + 200] = 32
                    _8735 = mem[_6074]
                    mem[_6088 + (32 * ('cd', 132).length) + 232] = mem[_6074]
                    mem[_6088 + (32 * ('cd', 132).length) + 264 len ceil32(_8735)] = mem[_6074 + 32 len ceil32(_8735)]
                    if ceil32(_8735) > _8735:
                        mem[_6088 + (32 * ('cd', 132).length) + _8735 + 264] = 0
                    revert with 0, 32, mem[_6088 + (32 * ('cd', 132).length) + 232 len ceil32(_8735) + 32]
                require ('cd', 100).length >= 32
                require mem[128] <= test266151307()
                require mem[128] + 159 < ('cd', 100).length + 128
                _8833 = mem[mem[128] + 128]
                require mem[mem[128] + 128] <= test266151307()
                require (32 * mem[mem[128] + 128]) + 228 >= 196 and _6088 + (32 * ('cd', 132).length) + (32 * mem[mem[128] + 128]) + 228 <= test266151307()
                mem[_6088 + (32 * ('cd', 132).length) + 196] = mem[mem[128] + 128]
                require ('cd', 100).length + 128 >= mem[128] + (32 * _8833) + 160
            require mem[_6088 + (32 * ('cd', 132).length) + 196] - 1 < mem[_6088 + (32 * ('cd', 132).length) + 196]
        mem[64] = _6088 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 197
        mem[_6088 + (32 * ('cd', 132).length) + 196] = return_data.size
        mem[_6088 + (32 * ('cd', 132).length) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'Address: low-level call failed', 0
        require return_data.size >= 32
        if 0 == return_data.size:
            require mem[_6088 + (32 * ('cd', 132).length) + 228] <= test266151307()
            require _6088 + (32 * ('cd', 132).length) + mem[_6088 + (32 * ('cd', 132).length) + 228] + 259 < _6088 + (32 * ('cd', 132).length) + return_data.size + 228
            require mem[_6088 + (32 * ('cd', 132).length) + mem[_6088 + (32 * ('cd', 132).length) + 228] + 228] <= test266151307()
            require (32 * mem[_6088 + (32 * ('cd', 132).length) + mem[_6088 + (32 * ('cd', 132).length) + 228] + 228]) + 229 >= 197 and _6088 + (32 * ('cd', 132).length) + ceil32(return_data.size) + (32 * mem[_6088 + (32 * ('cd', 132).length) + mem[_6088 + (32 * ('cd', 132).length) + 228] + 228]) + 229 <= test266151307()
            require return_data.size + 32 >= mem[_6088 + (32 * ('cd', 132).length) + 228] + (32 * mem[_6088 + (32 * ('cd', 132).length) + mem[_6088 + (32 * ('cd', 132).length) + 228] + 228]) + 64
            require mem[_6088 + (32 * ('cd', 132).length) + mem[_6088 + (32 * ('cd', 132).length) + 228] + 228] - 1 < mem[_6088 + (32 * ('cd', 132).length) + mem[_6088 + (32 * ('cd', 132).length) + 228] + 228]
        require mem[_6088 + (32 * ('cd', 132).length) + 228] == bool(mem[_6088 + (32 * ('cd', 132).length) + 228])
        if mem[_6088 + (32 * ('cd', 132).length) + 228]:
            require return_data.size >= 32
            require mem[_6088 + (32 * ('cd', 132).length) + 228] <= test266151307()
            require _6088 + (32 * ('cd', 132).length) + mem[_6088 + (32 * ('cd', 132).length) + 228] + 259 < _6088 + (32 * ('cd', 132).length) + return_data.size + 228
            require mem[_6088 + (32 * ('cd', 132).length) + mem[_6088 + (32 * ('cd', 132).length) + 228] + 228] <= test266151307()
            require (32 * mem[_6088 + (32 * ('cd', 132).length) + mem[_6088 + (32 * ('cd', 132).length) + 228] + 228]) + 229 >= 197 and _6088 + (32 * ('cd', 132).length) + ceil32(return_data.size) + (32 * mem[_6088 + (32 * ('cd', 132).length) + mem[_6088 + (32 * ('cd', 132).length) + 228] + 228]) + 229 <= test266151307()
            require return_data.size + 32 >= mem[_6088 + (32 * ('cd', 132).length) + 228] + (32 * mem[_6088 + (32 * ('cd', 132).length) + mem[_6088 + (32 * ('cd', 132).length) + 228] + 228]) + 64
            require mem[_6088 + (32 * ('cd', 132).length) + mem[_6088 + (32 * ('cd', 132).length) + 228] + 228] - 1 < mem[_6088 + (32 * ('cd', 132).length) + mem[_6088 + (32 * ('cd', 132).length) + 228] + 228]
        mem[_6088 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_6088 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 201] = 32
        _8736 = mem[_6074]
        mem[_6088 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 233] = mem[_6074]
        mem[_6088 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 265 len ceil32(_8736)] = mem[_6074 + 32 len ceil32(_8736)]
        if ceil32(_8736) > _8736:
            mem[_6088 + (32 * ('cd', 132).length) + ceil32(return_data.size) + _8736 + 265] = 0
        revert with 0, 32, mem[_6088 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 233 len ceil32(_8736) + 32]
    mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 484] = return_data.size
    mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'Address: low-level call failed', 0
    require return_data.size >= 32
    if 0 == return_data.size:
        _4870 = mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 516]
        require mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 516] <= test266151307()
        require (64 * ('cd', 100).length) + (32 * ('cd', 132).length) + mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 516] + 547 < (64 * ('cd', 100).length) + (32 * ('cd', 132).length) + return_data.size + 516
        _4876 = mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 516] + 516]
        require mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 516] + 516] <= test266151307()
        require (32 * mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 516] + 516]) + 229 >= 197 and (64 * ('cd', 100).length) + (32 * ('cd', 132).length) + ceil32(return_data.size) + (32 * mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 516] + 516]) + 517 <= test266151307()
        mem[64] = (64 * ('cd', 100).length) + (32 * ('cd', 132).length) + ceil32(return_data.size) + (32 * mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 516] + 516]) + 517
        mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 485] = mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 516] + 516]
        require return_data.size + 32 >= _4870 + (32 * _4876) + 64
        mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 517 len 32 * _4876] = mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + _4870 + 548 len 32 * _4876]
        require _4876 - 1 < _4876
        _6066 = mem[(32 * _4876 - 1) + (64 * ('cd', 100).length) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 517]
        _6075 = mem[64]
        mem[64] = mem[64] + 64
        mem[_6075] = 10
        mem[_6075 + 32] = 0x47414f5f4641494c454400000000000000000000000000000000000000000000
        _6089 = mem[64]
        mem[64] = mem[64] + 64
        mem[_6089] = 32
        mem[_6089 + 32] = 'getAmountsOut(uint256,address[])'
        _6090 = mem[64]
        mem[mem[64] + 36] = _6066
        mem[mem[64] + 68] = 64
        mem[mem[64] + 100] = ('cd', 132).length
        idx = 0
        s = (32 * ('cd', 100).length) + 160
        t = mem[64] + 132
        while idx < ('cd', 132).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _7153 = mem[64]
        mem[mem[64]] = (32 * ('cd', 132).length) + 100
        mem[mem[64] + 32 len 4] = getAmountsOut(uint256 rg1, address[] rg2)
        mem[64] = mem[64] + (32 * ('cd', 132).length) + 196
        mem[_6090 + (32 * ('cd', 132).length) + 132] = 30
        mem[_6090 + (32 * ('cd', 132).length) + 164] = 'Address: low-level call failed'
        if not ext_code.size(cd[36]):
            revert with 0, 'Address: call to non-contract'
        _7187 = mem[_7153]
        mem[_6090 + (32 * ('cd', 132).length) + 196 len ceil32(mem[_7153])] = mem[_7153 + 32 len ceil32(mem[_7153])]
        if ceil32(_7187) <= _7187:
            call address(cd[36]) with:
               funct Mask(32, 224, (32 * ('cd', 132).length) + 100) >> 224
                 gas gas_remaining wei
                args mem[_6090 + (32 * ('cd', 132).length) + 200 len _7187 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if ('cd', 100).length:
                        revert with memory
                          from 128
                           len ('cd', 100).length
                    revert with 0, 'Address: low-level call failed', 0
                require ('cd', 100).length >= 32
                if 0 == ('cd', 100).length:
                    require mem[128] <= test266151307()
                    require mem[128] + 159 < ('cd', 100).length + 128
                    _8597 = mem[mem[128] + 128]
                    require mem[mem[128] + 128] <= test266151307()
                    require (32 * mem[mem[128] + 128]) + 228 >= 196 and _6090 + (32 * ('cd', 132).length) + (32 * mem[mem[128] + 128]) + 228 <= test266151307()
                    mem[_6090 + (32 * ('cd', 132).length) + 196] = mem[mem[128] + 128]
                    require ('cd', 100).length + 128 >= mem[128] + (32 * _8597) + 160
                else:
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        mem[_6090 + (32 * ('cd', 132).length) + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6090 + (32 * ('cd', 132).length) + 200] = 32
                        _8689 = mem[_6075]
                        mem[_6090 + (32 * ('cd', 132).length) + 232] = mem[_6075]
                        mem[_6090 + (32 * ('cd', 132).length) + 264 len ceil32(_8689)] = mem[_6075 + 32 len ceil32(_8689)]
                        if ceil32(_8689) > _8689:
                            mem[_6090 + (32 * ('cd', 132).length) + _8689 + 264] = 0
                        revert with 0, 32, mem[_6090 + (32 * ('cd', 132).length) + 232 len ceil32(_8689) + 32]
                    require ('cd', 100).length >= 32
                    require mem[128] <= test266151307()
                    require mem[128] + 159 < ('cd', 100).length + 128
                    _8805 = mem[mem[128] + 128]
                    require mem[mem[128] + 128] <= test266151307()
                    require (32 * mem[mem[128] + 128]) + 228 >= 196 and _6090 + (32 * ('cd', 132).length) + (32 * mem[mem[128] + 128]) + 228 <= test266151307()
                    mem[_6090 + (32 * ('cd', 132).length) + 196] = mem[mem[128] + 128]
                    require ('cd', 100).length + 128 >= mem[128] + (32 * _8805) + 160
                require mem[_6090 + (32 * ('cd', 132).length) + 196] - 1 < mem[_6090 + (32 * ('cd', 132).length) + 196]
            mem[64] = _6090 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 197
            mem[_6090 + (32 * ('cd', 132).length) + 196] = return_data.size
            mem[_6090 + (32 * ('cd', 132).length) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'Address: low-level call failed', 0
            require return_data.size >= 32
            if 0 == return_data.size:
                require mem[_6090 + (32 * ('cd', 132).length) + 228] <= test266151307()
                require _6090 + (32 * ('cd', 132).length) + mem[_6090 + (32 * ('cd', 132).length) + 228] + 259 < _6090 + (32 * ('cd', 132).length) + return_data.size + 228
                require mem[_6090 + (32 * ('cd', 132).length) + mem[_6090 + (32 * ('cd', 132).length) + 228] + 228] <= test266151307()
                require (32 * mem[_6090 + (32 * ('cd', 132).length) + mem[_6090 + (32 * ('cd', 132).length) + 228] + 228]) + 229 >= 197 and _6090 + (32 * ('cd', 132).length) + ceil32(return_data.size) + (32 * mem[_6090 + (32 * ('cd', 132).length) + mem[_6090 + (32 * ('cd', 132).length) + 228] + 228]) + 229 <= test266151307()
                require return_data.size + 32 >= mem[_6090 + (32 * ('cd', 132).length) + 228] + (32 * mem[_6090 + (32 * ('cd', 132).length) + mem[_6090 + (32 * ('cd', 132).length) + 228] + 228]) + 64
                require mem[_6090 + (32 * ('cd', 132).length) + mem[_6090 + (32 * ('cd', 132).length) + 228] + 228] - 1 < mem[_6090 + (32 * ('cd', 132).length) + mem[_6090 + (32 * ('cd', 132).length) + 228] + 228]
            require mem[_6090 + (32 * ('cd', 132).length) + 228] == bool(mem[_6090 + (32 * ('cd', 132).length) + 228])
            if mem[_6090 + (32 * ('cd', 132).length) + 228]:
                require return_data.size >= 32
                require mem[_6090 + (32 * ('cd', 132).length) + 228] <= test266151307()
                require _6090 + (32 * ('cd', 132).length) + mem[_6090 + (32 * ('cd', 132).length) + 228] + 259 < _6090 + (32 * ('cd', 132).length) + return_data.size + 228
                require mem[_6090 + (32 * ('cd', 132).length) + mem[_6090 + (32 * ('cd', 132).length) + 228] + 228] <= test266151307()
                require (32 * mem[_6090 + (32 * ('cd', 132).length) + mem[_6090 + (32 * ('cd', 132).length) + 228] + 228]) + 229 >= 197 and _6090 + (32 * ('cd', 132).length) + ceil32(return_data.size) + (32 * mem[_6090 + (32 * ('cd', 132).length) + mem[_6090 + (32 * ('cd', 132).length) + 228] + 228]) + 229 <= test266151307()
                require return_data.size + 32 >= mem[_6090 + (32 * ('cd', 132).length) + 228] + (32 * mem[_6090 + (32 * ('cd', 132).length) + mem[_6090 + (32 * ('cd', 132).length) + 228] + 228]) + 64
                require mem[_6090 + (32 * ('cd', 132).length) + mem[_6090 + (32 * ('cd', 132).length) + 228] + 228] - 1 < mem[_6090 + (32 * ('cd', 132).length) + mem[_6090 + (32 * ('cd', 132).length) + 228] + 228]
            mem[_6090 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_6090 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 201] = 32
            _8690 = mem[_6075]
            mem[_6090 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 233] = mem[_6075]
            mem[_6090 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 265 len ceil32(_8690)] = mem[_6075 + 32 len ceil32(_8690)]
            if ceil32(_8690) > _8690:
                mem[_6090 + (32 * ('cd', 132).length) + ceil32(return_data.size) + _8690 + 265] = 0
            revert with 0, 32, mem[_6090 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 233 len ceil32(_8690) + 32]
        mem[_6090 + (32 * ('cd', 132).length) + _7187 + 196] = 0
        call address(cd[36]) with:
           funct Mask(32, 224, (32 * ('cd', 132).length) + 100) >> 224
             gas gas_remaining wei
            args mem[_6090 + (32 * ('cd', 132).length) + 200 len _7187 - 4]
        if not return_data.size:
            if not ext_call.success:
                if ('cd', 100).length:
                    revert with memory
                      from 128
                       len ('cd', 100).length
                revert with 0, 'Address: low-level call failed', 0
            require ('cd', 100).length >= 32
            if 0 == ('cd', 100).length:
                require mem[128] <= test266151307()
                require mem[128] + 159 < ('cd', 100).length + 128
                _8617 = mem[mem[128] + 128]
                require mem[mem[128] + 128] <= test266151307()
                require (32 * mem[mem[128] + 128]) + 228 >= 196 and _6090 + (32 * ('cd', 132).length) + (32 * mem[mem[128] + 128]) + 228 <= test266151307()
                mem[_6090 + (32 * ('cd', 132).length) + 196] = mem[mem[128] + 128]
                require ('cd', 100).length + 128 >= mem[128] + (32 * _8617) + 160
            else:
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    mem[_6090 + (32 * ('cd', 132).length) + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_6090 + (32 * ('cd', 132).length) + 200] = 32
                    _8741 = mem[_6075]
                    mem[_6090 + (32 * ('cd', 132).length) + 232] = mem[_6075]
                    mem[_6090 + (32 * ('cd', 132).length) + 264 len ceil32(_8741)] = mem[_6075 + 32 len ceil32(_8741)]
                    if ceil32(_8741) > _8741:
                        mem[_6090 + (32 * ('cd', 132).length) + _8741 + 264] = 0
                    revert with 0, 32, mem[_6090 + (32 * ('cd', 132).length) + 232 len ceil32(_8741) + 32]
                require ('cd', 100).length >= 32
                require mem[128] <= test266151307()
                require mem[128] + 159 < ('cd', 100).length + 128
                _8837 = mem[mem[128] + 128]
                require mem[mem[128] + 128] <= test266151307()
                require (32 * mem[mem[128] + 128]) + 228 >= 196 and _6090 + (32 * ('cd', 132).length) + (32 * mem[mem[128] + 128]) + 228 <= test266151307()
                mem[_6090 + (32 * ('cd', 132).length) + 196] = mem[mem[128] + 128]
                require ('cd', 100).length + 128 >= mem[128] + (32 * _8837) + 160
            require mem[_6090 + (32 * ('cd', 132).length) + 196] - 1 < mem[_6090 + (32 * ('cd', 132).length) + 196]
        mem[64] = _6090 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 197
        mem[_6090 + (32 * ('cd', 132).length) + 196] = return_data.size
        mem[_6090 + (32 * ('cd', 132).length) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'Address: low-level call failed', 0
        require return_data.size >= 32
        if 0 == return_data.size:
            require mem[_6090 + (32 * ('cd', 132).length) + 228] <= test266151307()
            require _6090 + (32 * ('cd', 132).length) + mem[_6090 + (32 * ('cd', 132).length) + 228] + 259 < _6090 + (32 * ('cd', 132).length) + return_data.size + 228
            require mem[_6090 + (32 * ('cd', 132).length) + mem[_6090 + (32 * ('cd', 132).length) + 228] + 228] <= test266151307()
            require (32 * mem[_6090 + (32 * ('cd', 132).length) + mem[_6090 + (32 * ('cd', 132).length) + 228] + 228]) + 229 >= 197 and _6090 + (32 * ('cd', 132).length) + ceil32(return_data.size) + (32 * mem[_6090 + (32 * ('cd', 132).length) + mem[_6090 + (32 * ('cd', 132).length) + 228] + 228]) + 229 <= test266151307()
            require return_data.size + 32 >= mem[_6090 + (32 * ('cd', 132).length) + 228] + (32 * mem[_6090 + (32 * ('cd', 132).length) + mem[_6090 + (32 * ('cd', 132).length) + 228] + 228]) + 64
            require mem[_6090 + (32 * ('cd', 132).length) + mem[_6090 + (32 * ('cd', 132).length) + 228] + 228] - 1 < mem[_6090 + (32 * ('cd', 132).length) + mem[_6090 + (32 * ('cd', 132).length) + 228] + 228]
        require mem[_6090 + (32 * ('cd', 132).length) + 228] == bool(mem[_6090 + (32 * ('cd', 132).length) + 228])
        if mem[_6090 + (32 * ('cd', 132).length) + 228]:
            require return_data.size >= 32
            require mem[_6090 + (32 * ('cd', 132).length) + 228] <= test266151307()
            require _6090 + (32 * ('cd', 132).length) + mem[_6090 + (32 * ('cd', 132).length) + 228] + 259 < _6090 + (32 * ('cd', 132).length) + return_data.size + 228
            require mem[_6090 + (32 * ('cd', 132).length) + mem[_6090 + (32 * ('cd', 132).length) + 228] + 228] <= test266151307()
            require (32 * mem[_6090 + (32 * ('cd', 132).length) + mem[_6090 + (32 * ('cd', 132).length) + 228] + 228]) + 229 >= 197 and _6090 + (32 * ('cd', 132).length) + ceil32(return_data.size) + (32 * mem[_6090 + (32 * ('cd', 132).length) + mem[_6090 + (32 * ('cd', 132).length) + 228] + 228]) + 229 <= test266151307()
            require return_data.size + 32 >= mem[_6090 + (32 * ('cd', 132).length) + 228] + (32 * mem[_6090 + (32 * ('cd', 132).length) + mem[_6090 + (32 * ('cd', 132).length) + 228] + 228]) + 64
            require mem[_6090 + (32 * ('cd', 132).length) + mem[_6090 + (32 * ('cd', 132).length) + 228] + 228] - 1 < mem[_6090 + (32 * ('cd', 132).length) + mem[_6090 + (32 * ('cd', 132).length) + 228] + 228]
        mem[_6090 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_6090 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 201] = 32
        _8742 = mem[_6075]
        mem[_6090 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 233] = mem[_6075]
        mem[_6090 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 265 len ceil32(_8742)] = mem[_6075 + 32 len ceil32(_8742)]
        if ceil32(_8742) > _8742:
            mem[_6090 + (32 * ('cd', 132).length) + ceil32(return_data.size) + _8742 + 265] = 0
        revert with 0, 32, mem[_6090 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 233 len ceil32(_8742) + 32]
    require mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 516] == bool(mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 516])
    if not mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 516]:
        revert with 0, '', 0
    require return_data.size >= 32
    _4896 = mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 516]
    require mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 516] <= test266151307()
    require (64 * ('cd', 100).length) + (32 * ('cd', 132).length) + mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 516] + 547 < (64 * ('cd', 100).length) + (32 * ('cd', 132).length) + return_data.size + 516
    _4903 = mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 516] + 516]
    require mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 516] + 516] <= test266151307()
    require (32 * mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 516] + 516]) + 229 >= 197 and (64 * ('cd', 100).length) + (32 * ('cd', 132).length) + ceil32(return_data.size) + (32 * mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 516] + 516]) + 517 <= test266151307()
    mem[64] = (64 * ('cd', 100).length) + (32 * ('cd', 132).length) + ceil32(return_data.size) + (32 * mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 516] + 516]) + 517
    mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 485] = mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + 516] + 516]
    require return_data.size + 32 >= _4896 + (32 * _4903) + 64
    mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 517 len 32 * _4903] = mem[(64 * ('cd', 100).length) + (32 * ('cd', 132).length) + _4896 + 548 len 32 * _4903]
    require _4903 - 1 < _4903
    _6067 = mem[(32 * _4903 - 1) + (64 * ('cd', 100).length) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 517]
    _6076 = mem[64]
    mem[64] = mem[64] + 64
    mem[_6076] = 10
    mem[_6076 + 32] = 0x47414f5f4641494c454400000000000000000000000000000000000000000000
    _6091 = mem[64]
    mem[64] = mem[64] + 64
    mem[_6091] = 32
    mem[_6091 + 32] = 'getAmountsOut(uint256,address[])'
    _6092 = mem[64]
    mem[mem[64] + 36] = _6067
    mem[mem[64] + 68] = 64
    mem[mem[64] + 100] = ('cd', 132).length
    idx = 0
    s = (32 * ('cd', 100).length) + 160
    t = mem[64] + 132
    while idx < ('cd', 132).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _7155 = mem[64]
    mem[mem[64]] = (32 * ('cd', 132).length) + 100
    mem[mem[64] + 32 len 4] = getAmountsOut(uint256 rg1, address[] rg2)
    mem[64] = mem[64] + (32 * ('cd', 132).length) + 196
    mem[_6092 + (32 * ('cd', 132).length) + 132] = 30
    mem[_6092 + (32 * ('cd', 132).length) + 164] = 'Address: low-level call failed'
    if not ext_code.size(cd[36]):
        revert with 0, 'Address: call to non-contract'
    _7188 = mem[_7155]
    mem[_6092 + (32 * ('cd', 132).length) + 196 len ceil32(mem[_7155])] = mem[_7155 + 32 len ceil32(mem[_7155])]
    if ceil32(_7188) <= _7188:
        call address(cd[36]).mem[_6092 + (32 * ('cd', 132).length) + 196 len 4] with:
             gas gas_remaining wei
            args mem[_6092 + (32 * ('cd', 132).length) + 200 len _7188 - 4]
        if not return_data.size:
            if not ext_call.success:
                if ('cd', 100).length:
                    revert with memory
                      from 128
                       len ('cd', 100).length
                revert with 0, 'Address: low-level call failed', 0
            require ('cd', 100).length >= 32
            if 0 == ('cd', 100).length:
                require mem[128] <= test266151307()
                require mem[128] + 159 < ('cd', 100).length + 128
                _8601 = mem[mem[128] + 128]
                require mem[mem[128] + 128] <= test266151307()
                require (32 * mem[mem[128] + 128]) + 228 >= 196 and _6092 + (32 * ('cd', 132).length) + (32 * mem[mem[128] + 128]) + 228 <= test266151307()
                mem[_6092 + (32 * ('cd', 132).length) + 196] = mem[mem[128] + 128]
                require ('cd', 100).length + 128 >= mem[128] + (32 * _8601) + 160
            else:
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    mem[_6092 + (32 * ('cd', 132).length) + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_6092 + (32 * ('cd', 132).length) + 200] = 32
                    _8695 = mem[_6076]
                    mem[_6092 + (32 * ('cd', 132).length) + 232] = mem[_6076]
                    mem[_6092 + (32 * ('cd', 132).length) + 264 len ceil32(_8695)] = mem[_6076 + 32 len ceil32(_8695)]
                    if ceil32(_8695) > _8695:
                        mem[_6092 + (32 * ('cd', 132).length) + _8695 + 264] = 0
                    revert with 0, 32, mem[_6092 + (32 * ('cd', 132).length) + 232 len ceil32(_8695) + 32]
                require ('cd', 100).length >= 32
                require mem[128] <= test266151307()
                require mem[128] + 159 < ('cd', 100).length + 128
                _8809 = mem[mem[128] + 128]
                require mem[mem[128] + 128] <= test266151307()
                require (32 * mem[mem[128] + 128]) + 228 >= 196 and _6092 + (32 * ('cd', 132).length) + (32 * mem[mem[128] + 128]) + 228 <= test266151307()
                mem[_6092 + (32 * ('cd', 132).length) + 196] = mem[mem[128] + 128]
                require ('cd', 100).length + 128 >= mem[128] + (32 * _8809) + 160
            require mem[_6092 + (32 * ('cd', 132).length) + 196] - 1 < mem[_6092 + (32 * ('cd', 132).length) + 196]
        mem[64] = _6092 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 197
        mem[_6092 + (32 * ('cd', 132).length) + 196] = return_data.size
        mem[_6092 + (32 * ('cd', 132).length) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'Address: low-level call failed', 0
        require return_data.size >= 32
        if 0 == return_data.size:
            require mem[_6092 + (32 * ('cd', 132).length) + 228] <= test266151307()
            require _6092 + (32 * ('cd', 132).length) + mem[_6092 + (32 * ('cd', 132).length) + 228] + 259 < _6092 + (32 * ('cd', 132).length) + return_data.size + 228
            require mem[_6092 + (32 * ('cd', 132).length) + mem[_6092 + (32 * ('cd', 132).length) + 228] + 228] <= test266151307()
            require (32 * mem[_6092 + (32 * ('cd', 132).length) + mem[_6092 + (32 * ('cd', 132).length) + 228] + 228]) + 229 >= 197 and _6092 + (32 * ('cd', 132).length) + ceil32(return_data.size) + (32 * mem[_6092 + (32 * ('cd', 132).length) + mem[_6092 + (32 * ('cd', 132).length) + 228] + 228]) + 229 <= test266151307()
            require return_data.size + 32 >= mem[_6092 + (32 * ('cd', 132).length) + 228] + (32 * mem[_6092 + (32 * ('cd', 132).length) + mem[_6092 + (32 * ('cd', 132).length) + 228] + 228]) + 64
            require mem[_6092 + (32 * ('cd', 132).length) + mem[_6092 + (32 * ('cd', 132).length) + 228] + 228] - 1 < mem[_6092 + (32 * ('cd', 132).length) + mem[_6092 + (32 * ('cd', 132).length) + 228] + 228]
        require mem[_6092 + (32 * ('cd', 132).length) + 228] == bool(mem[_6092 + (32 * ('cd', 132).length) + 228])
        if mem[_6092 + (32 * ('cd', 132).length) + 228]:
            require return_data.size >= 32
            require mem[_6092 + (32 * ('cd', 132).length) + 228] <= test266151307()
            require _6092 + (32 * ('cd', 132).length) + mem[_6092 + (32 * ('cd', 132).length) + 228] + 259 < _6092 + (32 * ('cd', 132).length) + return_data.size + 228
            require mem[_6092 + (32 * ('cd', 132).length) + mem[_6092 + (32 * ('cd', 132).length) + 228] + 228] <= test266151307()
            require (32 * mem[_6092 + (32 * ('cd', 132).length) + mem[_6092 + (32 * ('cd', 132).length) + 228] + 228]) + 229 >= 197 and _6092 + (32 * ('cd', 132).length) + ceil32(return_data.size) + (32 * mem[_6092 + (32 * ('cd', 132).length) + mem[_6092 + (32 * ('cd', 132).length) + 228] + 228]) + 229 <= test266151307()
            require return_data.size + 32 >= mem[_6092 + (32 * ('cd', 132).length) + 228] + (32 * mem[_6092 + (32 * ('cd', 132).length) + mem[_6092 + (32 * ('cd', 132).length) + 228] + 228]) + 64
            require mem[_6092 + (32 * ('cd', 132).length) + mem[_6092 + (32 * ('cd', 132).length) + 228] + 228] - 1 < mem[_6092 + (32 * ('cd', 132).length) + mem[_6092 + (32 * ('cd', 132).length) + 228] + 228]
        mem[_6092 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_6092 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 201] = 32
        _8696 = mem[_6076]
        mem[_6092 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 233] = mem[_6076]
        mem[_6092 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 265 len ceil32(_8696)] = mem[_6076 + 32 len ceil32(_8696)]
        if ceil32(_8696) > _8696:
            mem[_6092 + (32 * ('cd', 132).length) + ceil32(return_data.size) + _8696 + 265] = 0
        revert with 0, 32, mem[_6092 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 233 len ceil32(_8696) + 32]
    mem[_6092 + (32 * ('cd', 132).length) + _7188 + 196] = 0
    call address(cd[36]).mem[_6092 + (32 * ('cd', 132).length) + 196 len 4] with:
         gas gas_remaining wei
        args mem[_6092 + (32 * ('cd', 132).length) + 200 len _7188 - 4]
    if not return_data.size:
        if not ext_call.success:
            if ('cd', 100).length:
                revert with memory
                  from 128
                   len ('cd', 100).length
            revert with 0, 'Address: low-level call failed', 0
        require ('cd', 100).length >= 32
        if 0 == ('cd', 100).length:
            require mem[128] <= test266151307()
            require mem[128] + 159 < ('cd', 100).length + 128
            _8619 = mem[mem[128] + 128]
            require mem[mem[128] + 128] <= test266151307()
            require (32 * mem[mem[128] + 128]) + 228 >= 196 and _6092 + (32 * ('cd', 132).length) + (32 * mem[mem[128] + 128]) + 228 <= test266151307()
            mem[_6092 + (32 * ('cd', 132).length) + 196] = mem[mem[128] + 128]
            require ('cd', 100).length + 128 >= mem[128] + (32 * _8619) + 160
        else:
            require mem[128] == bool(mem[128])
            if not mem[128]:
                mem[_6092 + (32 * ('cd', 132).length) + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_6092 + (32 * ('cd', 132).length) + 200] = 32
                _8747 = mem[_6076]
                mem[_6092 + (32 * ('cd', 132).length) + 232] = mem[_6076]
                mem[_6092 + (32 * ('cd', 132).length) + 264 len ceil32(_8747)] = mem[_6076 + 32 len ceil32(_8747)]
                if ceil32(_8747) > _8747:
                    mem[_6092 + (32 * ('cd', 132).length) + _8747 + 264] = 0
                revert with 0, 32, mem[_6092 + (32 * ('cd', 132).length) + 232 len ceil32(_8747) + 32]
            require ('cd', 100).length >= 32
            require mem[128] <= test266151307()
            require mem[128] + 159 < ('cd', 100).length + 128
            _8841 = mem[mem[128] + 128]
            require mem[mem[128] + 128] <= test266151307()
            require (32 * mem[mem[128] + 128]) + 228 >= 196 and _6092 + (32 * ('cd', 132).length) + (32 * mem[mem[128] + 128]) + 228 <= test266151307()
            mem[_6092 + (32 * ('cd', 132).length) + 196] = mem[mem[128] + 128]
            require ('cd', 100).length + 128 >= mem[128] + (32 * _8841) + 160
        require mem[_6092 + (32 * ('cd', 132).length) + 196] - 1 < mem[_6092 + (32 * ('cd', 132).length) + 196]
    mem[64] = _6092 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 197
    mem[_6092 + (32 * ('cd', 132).length) + 196] = return_data.size
    mem[_6092 + (32 * ('cd', 132).length) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'Address: low-level call failed', 0
    require return_data.size >= 32
    if 0 == return_data.size:
        require mem[_6092 + (32 * ('cd', 132).length) + 228] <= test266151307()
        require _6092 + (32 * ('cd', 132).length) + mem[_6092 + (32 * ('cd', 132).length) + 228] + 259 < _6092 + (32 * ('cd', 132).length) + return_data.size + 228
        require mem[_6092 + (32 * ('cd', 132).length) + mem[_6092 + (32 * ('cd', 132).length) + 228] + 228] <= test266151307()
        require (32 * mem[_6092 + (32 * ('cd', 132).length) + mem[_6092 + (32 * ('cd', 132).length) + 228] + 228]) + 229 >= 197 and _6092 + (32 * ('cd', 132).length) + ceil32(return_data.size) + (32 * mem[_6092 + (32 * ('cd', 132).length) + mem[_6092 + (32 * ('cd', 132).length) + 228] + 228]) + 229 <= test266151307()
        require return_data.size + 32 >= mem[_6092 + (32 * ('cd', 132).length) + 228] + (32 * mem[_6092 + (32 * ('cd', 132).length) + mem[_6092 + (32 * ('cd', 132).length) + 228] + 228]) + 64
        require mem[_6092 + (32 * ('cd', 132).length) + mem[_6092 + (32 * ('cd', 132).length) + 228] + 228] - 1 < mem[_6092 + (32 * ('cd', 132).length) + mem[_6092 + (32 * ('cd', 132).length) + 228] + 228]
    require mem[_6092 + (32 * ('cd', 132).length) + 228] == bool(mem[_6092 + (32 * ('cd', 132).length) + 228])
    if mem[_6092 + (32 * ('cd', 132).length) + 228]:
        require return_data.size >= 32
        require mem[_6092 + (32 * ('cd', 132).length) + 228] <= test266151307()
        require _6092 + (32 * ('cd', 132).length) + mem[_6092 + (32 * ('cd', 132).length) + 228] + 259 < _6092 + (32 * ('cd', 132).length) + return_data.size + 228
        require mem[_6092 + (32 * ('cd', 132).length) + mem[_6092 + (32 * ('cd', 132).length) + 228] + 228] <= test266151307()
        require (32 * mem[_6092 + (32 * ('cd', 132).length) + mem[_6092 + (32 * ('cd', 132).length) + 228] + 228]) + 229 >= 197 and _6092 + (32 * ('cd', 132).length) + ceil32(return_data.size) + (32 * mem[_6092 + (32 * ('cd', 132).length) + mem[_6092 + (32 * ('cd', 132).length) + 228] + 228]) + 229 <= test266151307()
        require return_data.size + 32 >= mem[_6092 + (32 * ('cd', 132).length) + 228] + (32 * mem[_6092 + (32 * ('cd', 132).length) + mem[_6092 + (32 * ('cd', 132).length) + 228] + 228]) + 64
        require mem[_6092 + (32 * ('cd', 132).length) + mem[_6092 + (32 * ('cd', 132).length) + 228] + 228] - 1 < mem[_6092 + (32 * ('cd', 132).length) + mem[_6092 + (32 * ('cd', 132).length) + 228] + 228]
    mem[_6092 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[_6092 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 201] = 32
    _8748 = mem[_6076]
    mem[_6092 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 233] = mem[_6076]
    mem[_6092 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 265 len ceil32(_8748)] = mem[_6076 + 32 len ceil32(_8748)]
    if ceil32(_8748) > _8748:
        mem[_6092 + (32 * ('cd', 132).length) + ceil32(return_data.size) + _8748 + 265] = 0
    revert with 0, 32, mem[_6092 + (32 * ('cd', 132).length) + ceil32(return_data.size) + 233 len ceil32(_8748) + 32]
}



}
