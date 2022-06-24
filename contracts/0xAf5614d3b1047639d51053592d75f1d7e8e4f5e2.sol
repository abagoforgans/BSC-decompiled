contract main {




// =====================  Runtime code  =====================


#
#  - release(uint256 arg1)
#  - sub_578a2b32(?)
#  - allocation(address arg1)
#
address owner;
array of uint256 sub_cb4774c4;
mapping of uint256 stor2;
mapping of uint256 stor3;
array of struct stor4;
address tokenAddress;

function owner() payable {
    return owner
}

function sub_913e10e9(?) payable {
    return stor4.length
}

function sub_cb4774c4(?) payable {
    return sub_cb4774c4[0 len sub_cb4774c4.length]
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setLabel(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_cb4774c4[] = Array(len=arg1.length, data=arg1[all])
}

function sub_8829588a(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 160 >= 128 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307()
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'TokenTimelock: Invalid claimed'
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require idx < ('cd', 4).length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        stor3[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
        idx = idx + 1
        continue 
}

function sub_48e9ea16(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 160 >= 128 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307()
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'TokenTimelock: Invalid allocations'
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require idx < ('cd', 4).length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        stor2[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
        idx = idx + 1
        continue 
}

function transferToken(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'Insufficent token balance to transfer amount.'
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg3) << 64
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0, 'SafeBEP20: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'SafeBEP20: call to non-contract'
    mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg2, mem[ceil32(return_data.size) + 196 len 28]
    call arg1.mem[ceil32(return_data.size) + 196 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + 200 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeBEP20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
            if not mem[ceil32(return_data.size) + 228]:
                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
}

function sub_aa2e4f1f(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 160 >= 128 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307()
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 68).length) + 192 >= 160 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 <= test266151307()
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192
    while idx < ('cd', 68).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require (32 * ('cd', 100).length) + 224 >= 192 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224 <= test266151307()
    mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = ('cd', 100).length
    require calldata.size >= cd[100] + (32 * ('cd', 100).length) + 36
    idx = 0
    s = cd[100] + 36
    t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224
    while idx < ('cd', 100).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'TokenTimelock: Invalid releases'
    if ('cd', 36).length != ('cd', 68).length:
        revert with 0, 'TokenTimelock: Invalid releases'
    if ('cd', 68).length != ('cd', 100).length:
        revert with 0, 'TokenTimelock: Invalid releases'
    stor4.length = 0
    mem[0] = 4
    idx = 0
    while 4 * stor4.length > idx:
        stor4[idx].field_0 = 0
        stor4[idx].field_256 = 0
        stor4[idx].field_512 = 0
        stor4[idx].field_768 = 0
        idx = idx + 4
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        _177 = mem[64]
        mem[64] = mem[64] + 128
        require idx < mem[96]
        mem[_177] = mem[(32 * idx) + 128]
        require idx < mem[(32 * ('cd', 4).length) + 128]
        mem[_177 + 32] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
        require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        mem[_177 + 64] = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
        require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
        mem[_177 + 96] = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]
        stor4.length++
        mem[0] = 4
        stor4[stor4.length].field_0 = mem[_177]
        stor4[stor4.length].field_256 = mem[_177 + 32]
        stor4[stor4.length].field_512 = mem[_177 + 64]
        stor4[stor4.length].field_768 = mem[_177 + 96]
        idx = idx + 1
        continue 
}

function w(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor2[address(arg1)]:
        return stor2[address(arg1)], 0, 0, 0
    mem[0] = arg1
    mem[32] = 3
    idx = 0
    s = 0
    while idx < stor4.length:
        mem[0] = 4
        if block.timestamp < stor4[idx].field_0:
            if s <= stor3[address(arg1)]:
                return stor2[address(arg1)], s, stor3[address(arg1)], 0
            _218 = mem[64]
            mem[64] = mem[64] + 64
            mem[_218] = 30
            mem[_218 + 32] = 'SafeMath: subtraction overflow'
            if stor3[address(arg1)] > s:
                _223 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _223 + 68] = mem[idx + _218 + 32]
                    idx = idx + 32
                    continue 
                mem[_223 + 98] = 0
                revert with memory
                  from mem[64]
                   len _223 + -mem[64] + 100
            mem[mem[64] + 4] = this.address
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _237 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_237] >= s - stor3[address(arg1)]:
                return stor2[address(arg1)], s, stor3[address(arg1)], s - stor3[address(arg1)]
            mem[mem[64] + 4] = this.address
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _258 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            return stor2[address(arg1)], s, stor3[address(arg1)], mem[_258]
        require idx < stor4.length
        mem[0] = arg1
        mem[32] = 2
        if not stor2[address(arg1)]:
            _224 = mem[64]
            mem[64] = mem[64] + 64
            mem[_224] = 26
            mem[_224 + 32] = 'SafeMath: division by zero'
            require idx < stor4.length
            mem[0] = 4
            if stor4[idx].field_256 <= stor4[idx].field_0:
                idx = idx + 1
                s = s
                continue 
            require idx < stor4.length
            mem[0] = 4
            if block.timestamp >= stor4[idx].field_256:
                idx = idx + 1
                s = s
                continue 
            require idx < stor4.length
            require idx < stor4.length
            mem[0] = 4
            if block.timestamp <= stor4[idx].field_0:
                _269 = mem[64]
                mem[64] = mem[64] + 64
                mem[_269] = 30
                mem[_269 + 32] = 'SafeMath: subtraction overflow'
                if stor4[idx].field_0 > stor4[idx].field_256:
                    _275 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _275 + 68] = mem[idx + _269 + 32]
                        idx = idx + 32
                        continue 
                    mem[_275 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _275 + -mem[64] + 100
                _298 = mem[64]
                mem[64] = mem[64] + 64
                mem[_298] = 26
                mem[_298 + 32] = 'SafeMath: division by zero'
                if stor4[idx].field_256 - stor4[idx].field_0:
                    idx = idx + 1
                    s = s + (0 / stor4[idx].field_256 - stor4[idx].field_0)
                    continue 
                _307 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _307 + 68] = mem[idx + _298 + 32]
                    idx = idx + 32
                    continue 
                mem[_307 + 94] = 0
                revert with memory
                  from mem[64]
                   len _307 + -mem[64] + 100
            _264 = mem[64]
            mem[64] = mem[64] + 64
            mem[_264] = 30
            mem[_264 + 32] = 'SafeMath: subtraction overflow'
            if stor4[idx].field_0 > block.timestamp:
                _272 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _272 + 68] = mem[idx + _264 + 32]
                    idx = idx + 32
                    continue 
                mem[_272 + 98] = 0
                revert with memory
                  from mem[64]
                   len _272 + -mem[64] + 100
            require idx < stor4.length
            require idx < stor4.length
            mem[0] = 4
            if stor4[idx].field_512 <= 0:
                _295 = mem[64]
                mem[64] = mem[64] + 64
                mem[_295] = 30
                mem[_295 + 32] = 'SafeMath: subtraction overflow'
                if stor4[idx].field_0 > stor4[idx].field_256:
                    _302 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _302 + 68] = mem[idx + _295 + 32]
                        idx = idx + 32
                        continue 
                    mem[_302 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _302 + -mem[64] + 100
                _336 = mem[64]
                mem[64] = mem[64] + 64
                mem[_336] = 26
                mem[_336 + 32] = 'SafeMath: division by zero'
                if stor4[idx].field_256 - stor4[idx].field_0:
                    idx = idx + 1
                    s = s + (0 / stor4[idx].field_256 - stor4[idx].field_0)
                    continue 
                _344 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _344 + 68] = mem[idx + _336 + 32]
                    idx = idx + 32
                    continue 
                mem[_344 + 94] = 0
                revert with memory
                  from mem[64]
                   len _344 + -mem[64] + 100
            _291 = mem[64]
            mem[64] = mem[64] + 64
            mem[_291] = 24
            mem[_291 + 32] = 'SafeMath: modulo by zero'
            if not stor4[idx].field_512:
                _299 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 24
                idx = 0
                while idx < 24:
                    mem[idx + _299 + 68] = mem[idx + _291 + 32]
                    idx = idx + 32
                    continue 
                mem[_299 + 92] = 0
                revert with memory
                  from mem[64]
                   len _299 + -mem[64] + 100
            _323 = mem[64]
            mem[64] = mem[64] + 64
            mem[_323] = 30
            mem[_323 + 32] = 'SafeMath: subtraction overflow'
            if block.timestamp - stor4[idx].field_0 % stor4[idx].field_512 > block.timestamp - stor4[idx].field_0:
                _331 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _331 + 68] = mem[idx + _323 + 32]
                    idx = idx + 32
                    continue 
                mem[_331 + 98] = 0
                revert with memory
                  from mem[64]
                   len _331 + -mem[64] + 100
            require idx < stor4.length
            mem[0] = 4
            _364 = mem[64]
            mem[64] = mem[64] + 64
            mem[_364] = 30
            mem[_364 + 32] = 'SafeMath: subtraction overflow'
            if stor4[idx].field_0 > stor4[idx].field_256:
                _372 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _372 + 68] = mem[idx + _364 + 32]
                    idx = idx + 32
                    continue 
                mem[_372 + 98] = 0
                revert with memory
                  from mem[64]
                   len _372 + -mem[64] + 100
            _389 = mem[64]
            mem[64] = mem[64] + 64
            mem[_389] = 26
            mem[_389 + 32] = 'SafeMath: division by zero'
            if stor4[idx].field_256 - stor4[idx].field_0:
                idx = idx + 1
                s = s + (0 / stor4[idx].field_256 - stor4[idx].field_0)
                continue 
            _394 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _394 + 68] = mem[idx + _389 + 32]
                idx = idx + 32
                continue 
            mem[_394 + 94] = 0
            revert with memory
              from mem[64]
               len _394 + -mem[64] + 100
        if stor4[idx].field_768 * stor2[address(arg1)] / stor2[address(arg1)] != stor4[idx].field_768:
            revert with 0, 'SafeMath: multiplication overflow'
        _229 = mem[64]
        mem[64] = mem[64] + 64
        mem[_229] = 26
        mem[_229 + 32] = 'SafeMath: division by zero'
        require idx < stor4.length
        mem[0] = 4
        if stor4[idx].field_256 <= stor4[idx].field_0:
            idx = idx + 1
            s = (stor4[idx].field_768 * stor2[address(arg1)] / 10000) + s
            continue 
        require idx < stor4.length
        mem[0] = 4
        if block.timestamp >= stor4[idx].field_256:
            idx = idx + 1
            s = (stor4[idx].field_768 * stor2[address(arg1)] / 10000) + s
            continue 
        require idx < stor4.length
        require idx < stor4.length
        mem[0] = 4
        if block.timestamp <= stor4[idx].field_0:
            _274 = mem[64]
            mem[64] = mem[64] + 64
            mem[_274] = 30
            mem[_274 + 32] = 'SafeMath: subtraction overflow'
            if stor4[idx].field_0 > stor4[idx].field_256:
                _279 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _279 + 68] = mem[idx + _274 + 32]
                    idx = idx + 32
                    continue 
                mem[_279 + 98] = 0
                revert with memory
                  from mem[64]
                   len _279 + -mem[64] + 100
            if not stor4[idx].field_768 * stor2[address(arg1)] / 10000:
                _305 = mem[64]
                mem[64] = mem[64] + 64
                mem[_305] = 26
                mem[_305 + 32] = 'SafeMath: division by zero'
                if stor4[idx].field_256 - stor4[idx].field_0:
                    idx = idx + 1
                    s = s + (0 / stor4[idx].field_256 - stor4[idx].field_0)
                    continue 
                _317 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _317 + 68] = mem[idx + _305 + 32]
                    idx = idx + 32
                    continue 
                mem[_317 + 94] = 0
                revert with memory
                  from mem[64]
                   len _317 + -mem[64] + 100
            if 0 / stor4[idx].field_768 * stor2[address(arg1)] / 10000:
                revert with 0, 'SafeMath: multiplication overflow'
            _316 = mem[64]
            mem[64] = mem[64] + 64
            mem[_316] = 26
            mem[_316 + 32] = 'SafeMath: division by zero'
            if stor4[idx].field_256 - stor4[idx].field_0:
                idx = idx + 1
                s = s + (0 / stor4[idx].field_256 - stor4[idx].field_0)
                continue 
            _325 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _325 + 68] = mem[idx + _316 + 32]
                idx = idx + 32
                continue 
            mem[_325 + 94] = 0
            revert with memory
              from mem[64]
               len _325 + -mem[64] + 100
        _271 = mem[64]
        mem[64] = mem[64] + 64
        mem[_271] = 30
        mem[_271 + 32] = 'SafeMath: subtraction overflow'
        if stor4[idx].field_0 > block.timestamp:
            _276 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _276 + 68] = mem[idx + _271 + 32]
                idx = idx + 32
                continue 
            mem[_276 + 98] = 0
            revert with memory
              from mem[64]
               len _276 + -mem[64] + 100
        require idx < stor4.length
        require idx < stor4.length
        mem[0] = 4
        if stor4[idx].field_512 <= 0:
            _301 = mem[64]
            mem[64] = mem[64] + 64
            mem[_301] = 30
            mem[_301 + 32] = 'SafeMath: subtraction overflow'
            if stor4[idx].field_0 > stor4[idx].field_256:
                _312 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _312 + 68] = mem[idx + _301 + 32]
                    idx = idx + 32
                    continue 
                mem[_312 + 98] = 0
                revert with memory
                  from mem[64]
                   len _312 + -mem[64] + 100
            if not stor4[idx].field_768 * stor2[address(arg1)] / 10000:
                _342 = mem[64]
                mem[64] = mem[64] + 64
                mem[_342] = 26
                mem[_342 + 32] = 'SafeMath: division by zero'
                if stor4[idx].field_256 - stor4[idx].field_0:
                    idx = idx + 1
                    s = s + (0 / stor4[idx].field_256 - stor4[idx].field_0)
                    continue 
                _355 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _355 + 68] = mem[idx + _342 + 32]
                    idx = idx + 32
                    continue 
                mem[_355 + 94] = 0
                revert with memory
                  from mem[64]
                   len _355 + -mem[64] + 100
            if (block.timestamp * stor4[idx].field_768 * stor2[address(arg1)] / 10000) - (stor4[idx].field_0 * stor4[idx].field_768 * stor2[address(arg1)] / 10000) / stor4[idx].field_768 * stor2[address(arg1)] / 10000 != block.timestamp - stor4[idx].field_0:
                revert with 0, 'SafeMath: multiplication overflow'
            _354 = mem[64]
            mem[64] = mem[64] + 64
            mem[_354] = 26
            mem[_354 + 32] = 'SafeMath: division by zero'
            if stor4[idx].field_256 - stor4[idx].field_0:
                idx = idx + 1
                s = s + ((block.timestamp * stor4[idx].field_768 * stor2[address(arg1)] / 10000) - (stor4[idx].field_0 * stor4[idx].field_768 * stor2[address(arg1)] / 10000) / stor4[idx].field_256 - stor4[idx].field_0)
                continue 
            _365 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _365 + 68] = mem[idx + _354 + 32]
                idx = idx + 32
                continue 
            mem[_365 + 94] = 0
            revert with memory
              from mem[64]
               len _365 + -mem[64] + 100
        _297 = mem[64]
        mem[64] = mem[64] + 64
        mem[_297] = 24
        mem[_297 + 32] = 'SafeMath: modulo by zero'
        if not stor4[idx].field_512:
            _306 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 24
            idx = 0
            while idx < 24:
                mem[idx + _306 + 68] = mem[idx + _297 + 32]
                idx = idx + 32
                continue 
            mem[_306 + 92] = 0
            revert with memory
              from mem[64]
               len _306 + -mem[64] + 100
        _328 = mem[64]
        mem[64] = mem[64] + 64
        mem[_328] = 30
        mem[_328 + 32] = 'SafeMath: subtraction overflow'
        if block.timestamp - stor4[idx].field_0 % stor4[idx].field_512 > block.timestamp - stor4[idx].field_0:
            _335 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _335 + 68] = mem[idx + _328 + 32]
                idx = idx + 32
                continue 
            mem[_335 + 98] = 0
            revert with memory
              from mem[64]
               len _335 + -mem[64] + 100
        require idx < stor4.length
        mem[0] = 4
        _370 = mem[64]
        mem[64] = mem[64] + 64
        mem[_370] = 30
        mem[_370 + 32] = 'SafeMath: subtraction overflow'
        if stor4[idx].field_0 > stor4[idx].field_256:
            _377 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _377 + 68] = mem[idx + _370 + 32]
                idx = idx + 32
                continue 
            mem[_377 + 98] = 0
            revert with memory
              from mem[64]
               len _377 + -mem[64] + 100
        if not stor4[idx].field_768 * stor2[address(arg1)] / 10000:
            _393 = mem[64]
            mem[64] = mem[64] + 64
            mem[_393] = 26
            mem[_393 + 32] = 'SafeMath: division by zero'
            if stor4[idx].field_256 - stor4[idx].field_0:
                idx = idx + 1
                s = s + (0 / stor4[idx].field_256 - stor4[idx].field_0)
                continue 
            _399 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _399 + 68] = mem[idx + _393 + 32]
                idx = idx + 32
                continue 
            mem[_399 + 94] = 0
            revert with memory
              from mem[64]
               len _399 + -mem[64] + 100
        if (block.timestamp * stor4[idx].field_768 * stor2[address(arg1)] / 10000) - (stor4[idx].field_0 * stor4[idx].field_768 * stor2[address(arg1)] / 10000) - (block.timestamp - stor4[idx].field_0 % stor4[idx].field_512 * stor4[idx].field_768 * stor2[address(arg1)] / 10000) / stor4[idx].field_768 * stor2[address(arg1)] / 10000 != block.timestamp - stor4[idx].field_0 - (block.timestamp - stor4[idx].field_0 % stor4[idx].field_512):
            revert with 0, 'SafeMath: multiplication overflow'
        _398 = mem[64]
        mem[64] = mem[64] + 64
        mem[_398] = 26
        mem[_398 + 32] = 'SafeMath: division by zero'
        if stor4[idx].field_256 - stor4[idx].field_0:
            idx = idx + 1
            s = s + ((block.timestamp * stor4[idx].field_768 * stor2[address(arg1)] / 10000) - (stor4[idx].field_0 * stor4[idx].field_768 * stor2[address(arg1)] / 10000) - (block.timestamp - stor4[idx].field_0 % stor4[idx].field_512 * stor4[idx].field_768 * stor2[address(arg1)] / 10000) / stor4[idx].field_256 - stor4[idx].field_0)
            continue 
        _403 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _403 + 68] = mem[idx + _398 + 32]
            idx = idx + 32
            continue 
        mem[_403 + 94] = 0
        revert with memory
          from mem[64]
           len _403 + -mem[64] + 100
    if s <= stor3[address(arg1)]:
        return stor2[address(arg1)], s, stor3[address(arg1)], 0
    _212 = mem[64]
    mem[64] = mem[64] + 64
    mem[_212] = 30
    mem[_212 + 32] = 'SafeMath: subtraction overflow'
    if stor3[address(arg1)] > s:
        revert with 0, 'SafeMath: subtraction overflow', 0
    mem[mem[64] + 4] = this.address
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _231 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_231] >= s - stor3[address(arg1)]:
        return stor2[address(arg1)], s, stor3[address(arg1)], s - stor3[address(arg1)]
    mem[mem[64] + 4] = this.address
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _251 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    return stor2[address(arg1)], s, stor3[address(arg1)], mem[_251]
}

function x() payable {
    if not stor4.length:
        mem[256 len 4096] = mem[128 len 96], 128, mem[256 len 3968]
        return 128, 
               4256,
               8384,
               12512,
               128,
               mem[256 len 4096],
               128,
               4256,
               mem[160 len 64],
               128,
               mem[256 len 3968],
               128,
               4256,
               8384,
               mem[192],
               128,
               mem[256 len 3968],
               128,
               4256,
               8384,
               12512,
               128,
               mem[256 len 3968]
    require stor4.length <= test266151307()
    mem[96] = stor4.length
    if not stor4.length:
        require stor4.length <= test266151307()
        mem[(32 * stor4.length) + 128] = stor4.length
        if not stor4.length:
            require stor4.length <= test266151307()
            mem[(64 * stor4.length) + 160] = stor4.length
            if not stor4.length:
                require stor4.length <= test266151307()
                mem[(98 * stor4.length) + 192] = stor4.length
                mem[64] = (131 * stor4.length) + 224
                if not stor4.length:
                    idx = 0
                    while idx < stor4.length:
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = stor4[idx].field_0
                        require idx < stor4.length
                        require idx < mem[(32 * stor4.length) + 128]
                        mem[(32 * idx) + (32 * stor4.length) + 160] = stor4[idx].field_256
                        require idx < stor4.length
                        require idx < mem[(64 * stor4.length) + 160]
                        mem[(32 * idx) + (64 * stor4.length) + 192] = stor4[idx].field_512
                        require idx < stor4.length
                        mem[0] = 4
                        require idx < mem[(98 * stor4.length) + 192]
                        mem[(32 * idx) + (98 * stor4.length) + 224] = stor4[idx].field_768
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 128
                    _397 = mem[96]
                    mem[mem[64] + 128] = mem[96]
                    mem[mem[64] + 160 len 32 * _397] = mem[128 len 32 * _397]
                    mem[mem[64] + 32] = (32 * _397) + 160
                    _628 = mem[(32 * stor4.length) + 128]
                    mem[mem[64] + (32 * _397) + 160] = mem[(32 * stor4.length) + 128]
                    mem[mem[64] + (32 * _397) + 192 len 32 * _628] = mem[(32 * stor4.length) + 160 len 32 * _628]
                    mem[mem[64] + 64] = (32 * _397) + (32 * _628) + 192
                    _762 = mem[(64 * stor4.length) + 160]
                    mem[mem[64] + (32 * _397) + (32 * _628) + 192] = mem[(64 * stor4.length) + 160]
                    mem[mem[64] + (32 * _397) + (32 * _628) + 224 len 32 * _762] = mem[(64 * stor4.length) + 192 len 32 * _762]
                    mem[mem[64] + 96] = (32 * _397) + (32 * _628) + (32 * _762) + 224
                    _862 = mem[(98 * stor4.length) + 192]
                    mem[mem[64] + (32 * _397) + (32 * _628) + (32 * _762) + 224] = mem[(98 * stor4.length) + 192]
                    mem[mem[64] + (32 * _397) + (32 * _628) + (32 * _762) + 256 len 32 * _862] = mem[(98 * stor4.length) + 224 len 32 * _862]
                    return 128, 
                           (32 * _397) + 160,
                           (32 * _397) + (32 * _628) + 192,
                           (32 * _397) + (32 * _628) + (32 * _762) + 224,
                           mem[mem[64] + 128 len (32 * _397) + (32 * _628) + (32 * _762) + (32 * _862) + 128]
                mem[(98 * stor4.length) + 224 len 32 * stor4.length] = call.data[calldata.size len 32 * stor4.length]
                idx = 0
                while idx < stor4.length:
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = stor4[idx].field_0
                    require idx < stor4.length
                    require idx < mem[(32 * stor4.length) + 128]
                    mem[(32 * idx) + (32 * stor4.length) + 160] = stor4[idx].field_256
                    require idx < stor4.length
                    require idx < mem[(64 * stor4.length) + 160]
                    mem[(32 * idx) + (64 * stor4.length) + 192] = stor4[idx].field_512
                    require idx < stor4.length
                    mem[0] = 4
                    require idx < mem[(98 * stor4.length) + 192]
                    mem[(32 * idx) + (98 * stor4.length) + 224] = stor4[idx].field_768
                    idx = idx + 1
                    continue 
                _349 = mem[64]
                mem[mem[64]] = 128
                _398 = mem[96]
                mem[mem[64] + 128] = mem[96]
                mem[mem[64] + 160 len 32 * _398] = mem[128 len 32 * _398]
                mem[mem[64] + 32] = (32 * _398) + 160
                _629 = mem[(32 * stor4.length) + 128]
                mem[mem[64] + (32 * _398) + 160] = mem[(32 * stor4.length) + 128]
                mem[mem[64] + (32 * _398) + 192 len 32 * _629] = mem[(32 * stor4.length) + 160 len 32 * _629]
                mem[mem[64] + 64] = (32 * _398) + (32 * _629) + 192
                _763 = mem[(64 * stor4.length) + 160]
                mem[_349 + (32 * _398) + (32 * _629) + 192] = mem[(64 * stor4.length) + 160]
                mem[_349 + (32 * _398) + (32 * _629) + 224 len 32 * _763] = mem[(64 * stor4.length) + 192 len 32 * _763]
                mem[_349 + 96] = (32 * _398) + (32 * _629) + (32 * _763) + 224
                _863 = mem[(98 * stor4.length) + 192]
                mem[_349 + (32 * _398) + (32 * _629) + (32 * _763) + 224] = mem[(98 * stor4.length) + 192]
                mem[_349 + (32 * _398) + (32 * _629) + (32 * _763) + 256 len 32 * _863] = mem[(98 * stor4.length) + 224 len 32 * _863]
                return memory
                  from mem[64]
                   len _349 + (32 * _398) + (32 * _629) + (32 * _763) + (32 * _863) + -mem[64] + 256
            mem[(64 * stor4.length) + 192 len 32 * stor4.length] = call.data[calldata.size len 32 * stor4.length]
            require stor4.length <= test266151307()
            mem[(98 * stor4.length) + 192] = stor4.length
            mem[64] = (131 * stor4.length) + 224
            if not stor4.length:
                idx = 0
                while idx < stor4.length:
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = stor4[idx].field_0
                    require idx < stor4.length
                    require idx < mem[(32 * stor4.length) + 128]
                    mem[(32 * idx) + (32 * stor4.length) + 160] = stor4[idx].field_256
                    require idx < stor4.length
                    require idx < mem[(64 * stor4.length) + 160]
                    mem[(32 * idx) + (64 * stor4.length) + 192] = stor4[idx].field_512
                    require idx < stor4.length
                    mem[0] = 4
                    require idx < mem[(98 * stor4.length) + 192]
                    mem[(32 * idx) + (98 * stor4.length) + 224] = stor4[idx].field_768
                    idx = idx + 1
                    continue 
                _350 = mem[64]
                mem[mem[64]] = 128
                _399 = mem[96]
                mem[mem[64] + 128] = mem[96]
                mem[mem[64] + 160 len 32 * _399] = mem[128 len 32 * _399]
                mem[mem[64] + 32] = (32 * _399) + 160
                _630 = mem[(32 * stor4.length) + 128]
                mem[mem[64] + (32 * _399) + 160] = mem[(32 * stor4.length) + 128]
                mem[mem[64] + (32 * _399) + 192 len 32 * _630] = mem[(32 * stor4.length) + 160 len 32 * _630]
                mem[mem[64] + 64] = (32 * _399) + (32 * _630) + 192
                _764 = mem[(64 * stor4.length) + 160]
                mem[_350 + (32 * _399) + (32 * _630) + 192] = mem[(64 * stor4.length) + 160]
                mem[_350 + (32 * _399) + (32 * _630) + 224 len 32 * _764] = mem[(64 * stor4.length) + 192 len 32 * _764]
                mem[_350 + 96] = (32 * _399) + (32 * _630) + (32 * _764) + 224
                _864 = mem[(98 * stor4.length) + 192]
                mem[_350 + (32 * _399) + (32 * _630) + (32 * _764) + 224] = mem[(98 * stor4.length) + 192]
                mem[_350 + (32 * _399) + (32 * _630) + (32 * _764) + 256 len 32 * _864] = mem[(98 * stor4.length) + 224 len 32 * _864]
                return memory
                  from mem[64]
                   len _350 + (32 * _399) + (32 * _630) + (32 * _764) + (32 * _864) + -mem[64] + 256
            mem[(98 * stor4.length) + 224 len 32 * stor4.length] = call.data[calldata.size len 32 * stor4.length]
            idx = 0
            while idx < stor4.length:
                require idx < mem[96]
                mem[(32 * idx) + 128] = stor4[idx].field_0
                require idx < stor4.length
                require idx < mem[(32 * stor4.length) + 128]
                mem[(32 * idx) + (32 * stor4.length) + 160] = stor4[idx].field_256
                require idx < stor4.length
                require idx < mem[(64 * stor4.length) + 160]
                mem[(32 * idx) + (64 * stor4.length) + 192] = stor4[idx].field_512
                require idx < stor4.length
                mem[0] = 4
                require idx < mem[(98 * stor4.length) + 192]
                mem[(32 * idx) + (98 * stor4.length) + 224] = stor4[idx].field_768
                idx = idx + 1
                continue 
            _351 = mem[64]
            mem[mem[64]] = 128
            _400 = mem[96]
            mem[mem[64] + 128] = mem[96]
            mem[mem[64] + 160 len 32 * _400] = mem[128 len 32 * _400]
            mem[mem[64] + 32] = (32 * _400) + 160
            _631 = mem[(32 * stor4.length) + 128]
            mem[mem[64] + (32 * _400) + 160] = mem[(32 * stor4.length) + 128]
            mem[mem[64] + (32 * _400) + 192 len 32 * _631] = mem[(32 * stor4.length) + 160 len 32 * _631]
            mem[mem[64] + 64] = (32 * _400) + (32 * _631) + 192
            _765 = mem[(64 * stor4.length) + 160]
            mem[_351 + (32 * _400) + (32 * _631) + 192] = mem[(64 * stor4.length) + 160]
            mem[_351 + (32 * _400) + (32 * _631) + 224 len 32 * _765] = mem[(64 * stor4.length) + 192 len 32 * _765]
            mem[_351 + 96] = (32 * _400) + (32 * _631) + (32 * _765) + 224
            _865 = mem[(98 * stor4.length) + 192]
            mem[_351 + (32 * _400) + (32 * _631) + (32 * _765) + 224] = mem[(98 * stor4.length) + 192]
            mem[_351 + (32 * _400) + (32 * _631) + (32 * _765) + 256 len 32 * _865] = mem[(98 * stor4.length) + 224 len 32 * _865]
            return memory
              from mem[64]
               len _351 + (32 * _400) + (32 * _631) + (32 * _765) + (32 * _865) + -mem[64] + 256
        mem[(32 * stor4.length) + 160 len 32 * stor4.length] = call.data[calldata.size len 32 * stor4.length]
        require stor4.length <= test266151307()
        mem[(64 * stor4.length) + 160] = stor4.length
        if not stor4.length:
            require stor4.length <= test266151307()
            mem[(98 * stor4.length) + 192] = stor4.length
            mem[64] = (131 * stor4.length) + 224
            if not stor4.length:
                idx = 0
                while idx < stor4.length:
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = stor4[idx].field_0
                    require idx < stor4.length
                    require idx < mem[(32 * stor4.length) + 128]
                    mem[(32 * idx) + (32 * stor4.length) + 160] = stor4[idx].field_256
                    require idx < stor4.length
                    require idx < mem[(64 * stor4.length) + 160]
                    mem[(32 * idx) + (64 * stor4.length) + 192] = stor4[idx].field_512
                    require idx < stor4.length
                    mem[0] = 4
                    require idx < mem[(98 * stor4.length) + 192]
                    mem[(32 * idx) + (98 * stor4.length) + 224] = stor4[idx].field_768
                    idx = idx + 1
                    continue 
                _352 = mem[64]
                mem[mem[64]] = 128
                _401 = mem[96]
                mem[mem[64] + 128] = mem[96]
                mem[mem[64] + 160 len 32 * _401] = mem[128 len 32 * _401]
                mem[mem[64] + 32] = (32 * _401) + 160
                _632 = mem[(32 * stor4.length) + 128]
                mem[mem[64] + (32 * _401) + 160] = mem[(32 * stor4.length) + 128]
                mem[mem[64] + (32 * _401) + 192 len 32 * _632] = mem[(32 * stor4.length) + 160 len 32 * _632]
                mem[mem[64] + 64] = (32 * _401) + (32 * _632) + 192
                _766 = mem[(64 * stor4.length) + 160]
                mem[_352 + (32 * _401) + (32 * _632) + 192] = mem[(64 * stor4.length) + 160]
                mem[_352 + (32 * _401) + (32 * _632) + 224 len 32 * _766] = mem[(64 * stor4.length) + 192 len 32 * _766]
                mem[_352 + 96] = (32 * _401) + (32 * _632) + (32 * _766) + 224
                _866 = mem[(98 * stor4.length) + 192]
                mem[_352 + (32 * _401) + (32 * _632) + (32 * _766) + 224] = mem[(98 * stor4.length) + 192]
                mem[_352 + (32 * _401) + (32 * _632) + (32 * _766) + 256 len 32 * _866] = mem[(98 * stor4.length) + 224 len 32 * _866]
                return memory
                  from mem[64]
                   len _352 + (32 * _401) + (32 * _632) + (32 * _766) + (32 * _866) + -mem[64] + 256
            mem[(98 * stor4.length) + 224 len 32 * stor4.length] = call.data[calldata.size len 32 * stor4.length]
            idx = 0
            while idx < stor4.length:
                require idx < mem[96]
                mem[(32 * idx) + 128] = stor4[idx].field_0
                require idx < stor4.length
                require idx < mem[(32 * stor4.length) + 128]
                mem[(32 * idx) + (32 * stor4.length) + 160] = stor4[idx].field_256
                require idx < stor4.length
                require idx < mem[(64 * stor4.length) + 160]
                mem[(32 * idx) + (64 * stor4.length) + 192] = stor4[idx].field_512
                require idx < stor4.length
                mem[0] = 4
                require idx < mem[(98 * stor4.length) + 192]
                mem[(32 * idx) + (98 * stor4.length) + 224] = stor4[idx].field_768
                idx = idx + 1
                continue 
            mem[mem[64]] = 128
            _402 = mem[96]
            mem[mem[64] + 128] = mem[96]
            mem[mem[64] + 160 len 32 * _402] = mem[128 len 32 * _402]
            mem[mem[64] + 32] = (32 * _402) + 160
            _633 = mem[(32 * stor4.length) + 128]
            mem[mem[64] + (32 * _402) + 160] = mem[(32 * stor4.length) + 128]
            mem[mem[64] + (32 * _402) + 192 len 32 * _633] = mem[(32 * stor4.length) + 160 len 32 * _633]
            mem[mem[64] + 64] = (32 * _402) + (32 * _633) + 192
            _767 = mem[(64 * stor4.length) + 160]
            mem[mem[64] + (32 * _402) + (32 * _633) + 192] = mem[(64 * stor4.length) + 160]
            mem[mem[64] + (32 * _402) + (32 * _633) + 224 len 32 * _767] = mem[(64 * stor4.length) + 192 len 32 * _767]
            mem[mem[64] + 96] = (32 * _402) + (32 * _633) + (32 * _767) + 224
            _867 = mem[(98 * stor4.length) + 192]
            mem[mem[64] + (32 * _402) + (32 * _633) + (32 * _767) + 224] = mem[(98 * stor4.length) + 192]
            mem[mem[64] + (32 * _402) + (32 * _633) + (32 * _767) + 256 len 32 * _867] = mem[(98 * stor4.length) + 224 len 32 * _867]
            return 128, 
                   (32 * _402) + 160,
                   (32 * _402) + (32 * _633) + 192,
                   (32 * _402) + (32 * _633) + (32 * _767) + 224,
                   mem[mem[64] + 128 len (32 * _402) + (32 * _633) + (32 * _767) + (32 * _867) + 128]
        mem[(64 * stor4.length) + 192 len 32 * stor4.length] = call.data[calldata.size len 32 * stor4.length]
        require stor4.length <= test266151307()
        mem[(98 * stor4.length) + 192] = stor4.length
        mem[64] = (131 * stor4.length) + 224
        if not stor4.length:
            idx = 0
            while idx < stor4.length:
                require idx < mem[96]
                mem[(32 * idx) + 128] = stor4[idx].field_0
                require idx < stor4.length
                require idx < mem[(32 * stor4.length) + 128]
                mem[(32 * idx) + (32 * stor4.length) + 160] = stor4[idx].field_256
                require idx < stor4.length
                require idx < mem[(64 * stor4.length) + 160]
                mem[(32 * idx) + (64 * stor4.length) + 192] = stor4[idx].field_512
                require idx < stor4.length
                mem[0] = 4
                require idx < mem[(98 * stor4.length) + 192]
                mem[(32 * idx) + (98 * stor4.length) + 224] = stor4[idx].field_768
                idx = idx + 1
                continue 
            _354 = mem[64]
            mem[mem[64]] = 128
            _403 = mem[96]
            mem[mem[64] + 128] = mem[96]
            mem[mem[64] + 160 len 32 * _403] = mem[128 len 32 * _403]
            mem[mem[64] + 32] = (32 * _403) + 160
            _634 = mem[(32 * stor4.length) + 128]
            mem[mem[64] + (32 * _403) + 160] = mem[(32 * stor4.length) + 128]
            mem[mem[64] + (32 * _403) + 192 len 32 * _634] = mem[(32 * stor4.length) + 160 len 32 * _634]
            mem[mem[64] + 64] = (32 * _403) + (32 * _634) + 192
            _768 = mem[(64 * stor4.length) + 160]
            mem[_354 + (32 * _403) + (32 * _634) + 192] = mem[(64 * stor4.length) + 160]
            mem[_354 + (32 * _403) + (32 * _634) + 224 len 32 * _768] = mem[(64 * stor4.length) + 192 len 32 * _768]
            mem[_354 + 96] = (32 * _403) + (32 * _634) + (32 * _768) + 224
            _868 = mem[(98 * stor4.length) + 192]
            mem[_354 + (32 * _403) + (32 * _634) + (32 * _768) + 224] = mem[(98 * stor4.length) + 192]
            mem[_354 + (32 * _403) + (32 * _634) + (32 * _768) + 256 len 32 * _868] = mem[(98 * stor4.length) + 224 len 32 * _868]
            return memory
              from mem[64]
               len _354 + (32 * _403) + (32 * _634) + (32 * _768) + (32 * _868) + -mem[64] + 256
        mem[(98 * stor4.length) + 224 len 32 * stor4.length] = call.data[calldata.size len 32 * stor4.length]
        idx = 0
        while idx < stor4.length:
            require idx < mem[96]
            mem[(32 * idx) + 128] = stor4[idx].field_0
            require idx < stor4.length
            require idx < mem[(32 * stor4.length) + 128]
            mem[(32 * idx) + (32 * stor4.length) + 160] = stor4[idx].field_256
            require idx < stor4.length
            require idx < mem[(64 * stor4.length) + 160]
            mem[(32 * idx) + (64 * stor4.length) + 192] = stor4[idx].field_512
            require idx < stor4.length
            mem[0] = 4
            require idx < mem[(98 * stor4.length) + 192]
            mem[(32 * idx) + (98 * stor4.length) + 224] = stor4[idx].field_768
            idx = idx + 1
            continue 
        _355 = mem[64]
        mem[mem[64]] = 128
        _404 = mem[96]
        mem[mem[64] + 128] = mem[96]
        mem[mem[64] + 160 len 32 * _404] = mem[128 len 32 * _404]
        mem[mem[64] + 32] = (32 * _404) + 160
        _635 = mem[(32 * stor4.length) + 128]
        mem[mem[64] + (32 * _404) + 160] = mem[(32 * stor4.length) + 128]
        mem[mem[64] + (32 * _404) + 192 len 32 * _635] = mem[(32 * stor4.length) + 160 len 32 * _635]
        mem[mem[64] + 64] = (32 * _404) + (32 * _635) + 192
        _769 = mem[(64 * stor4.length) + 160]
        mem[_355 + (32 * _404) + (32 * _635) + 192] = mem[(64 * stor4.length) + 160]
        mem[_355 + (32 * _404) + (32 * _635) + 224 len 32 * _769] = mem[(64 * stor4.length) + 192 len 32 * _769]
        mem[_355 + 96] = (32 * _404) + (32 * _635) + (32 * _769) + 224
        _869 = mem[(98 * stor4.length) + 192]
        mem[_355 + (32 * _404) + (32 * _635) + (32 * _769) + 224] = mem[(98 * stor4.length) + 192]
        mem[_355 + (32 * _404) + (32 * _635) + (32 * _769) + 256 len 32 * _869] = mem[(98 * stor4.length) + 224 len 32 * _869]
        return memory
          from mem[64]
           len _355 + (32 * _404) + (32 * _635) + (32 * _769) + (32 * _869) + -mem[64] + 256
    mem[128 len 32 * stor4.length] = call.data[calldata.size len 32 * stor4.length]
    require stor4.length <= test266151307()
    mem[(32 * stor4.length) + 128] = stor4.length
    if not stor4.length:
        require stor4.length <= test266151307()
        mem[(64 * stor4.length) + 160] = stor4.length
        if not stor4.length:
            require stor4.length <= test266151307()
            mem[(98 * stor4.length) + 192] = stor4.length
            mem[64] = (131 * stor4.length) + 224
            if not stor4.length:
                idx = 0
                while idx < stor4.length:
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = stor4[idx].field_0
                    require idx < stor4.length
                    require idx < mem[(32 * stor4.length) + 128]
                    mem[(32 * idx) + (32 * stor4.length) + 160] = stor4[idx].field_256
                    require idx < stor4.length
                    require idx < mem[(64 * stor4.length) + 160]
                    mem[(32 * idx) + (64 * stor4.length) + 192] = stor4[idx].field_512
                    require idx < stor4.length
                    mem[0] = 4
                    require idx < mem[(98 * stor4.length) + 192]
                    mem[(32 * idx) + (98 * stor4.length) + 224] = stor4[idx].field_768
                    idx = idx + 1
                    continue 
                _356 = mem[64]
                mem[mem[64]] = 128
                _405 = mem[96]
                mem[mem[64] + 128] = mem[96]
                mem[mem[64] + 160 len 32 * _405] = mem[128 len 32 * _405]
                mem[mem[64] + 32] = (32 * _405) + 160
                _636 = mem[(32 * stor4.length) + 128]
                mem[mem[64] + (32 * _405) + 160] = mem[(32 * stor4.length) + 128]
                mem[mem[64] + (32 * _405) + 192 len 32 * _636] = mem[(32 * stor4.length) + 160 len 32 * _636]
                mem[mem[64] + 64] = (32 * _405) + (32 * _636) + 192
                _770 = mem[(64 * stor4.length) + 160]
                mem[_356 + (32 * _405) + (32 * _636) + 192] = mem[(64 * stor4.length) + 160]
                mem[_356 + (32 * _405) + (32 * _636) + 224 len 32 * _770] = mem[(64 * stor4.length) + 192 len 32 * _770]
                mem[_356 + 96] = (32 * _405) + (32 * _636) + (32 * _770) + 224
                _870 = mem[(98 * stor4.length) + 192]
                mem[_356 + (32 * _405) + (32 * _636) + (32 * _770) + 224] = mem[(98 * stor4.length) + 192]
                mem[_356 + (32 * _405) + (32 * _636) + (32 * _770) + 256 len 32 * _870] = mem[(98 * stor4.length) + 224 len 32 * _870]
                return memory
                  from mem[64]
                   len _356 + (32 * _405) + (32 * _636) + (32 * _770) + (32 * _870) + -mem[64] + 256
            mem[(98 * stor4.length) + 224 len 32 * stor4.length] = call.data[calldata.size len 32 * stor4.length]
            idx = 0
            while idx < stor4.length:
                require idx < mem[96]
                mem[(32 * idx) + 128] = stor4[idx].field_0
                require idx < stor4.length
                require idx < mem[(32 * stor4.length) + 128]
                mem[(32 * idx) + (32 * stor4.length) + 160] = stor4[idx].field_256
                require idx < stor4.length
                require idx < mem[(64 * stor4.length) + 160]
                mem[(32 * idx) + (64 * stor4.length) + 192] = stor4[idx].field_512
                require idx < stor4.length
                mem[0] = 4
                require idx < mem[(98 * stor4.length) + 192]
                mem[(32 * idx) + (98 * stor4.length) + 224] = stor4[idx].field_768
                idx = idx + 1
                continue 
            _357 = mem[64]
            mem[mem[64]] = 128
            _406 = mem[96]
            mem[mem[64] + 128] = mem[96]
            mem[mem[64] + 160 len 32 * _406] = mem[128 len 32 * _406]
            mem[mem[64] + 32] = (32 * _406) + 160
            _637 = mem[(32 * stor4.length) + 128]
            mem[mem[64] + (32 * _406) + 160] = mem[(32 * stor4.length) + 128]
            mem[mem[64] + (32 * _406) + 192 len 32 * _637] = mem[(32 * stor4.length) + 160 len 32 * _637]
            mem[mem[64] + 64] = (32 * _406) + (32 * _637) + 192
            _771 = mem[(64 * stor4.length) + 160]
            mem[_357 + (32 * _406) + (32 * _637) + 192] = mem[(64 * stor4.length) + 160]
            mem[_357 + (32 * _406) + (32 * _637) + 224 len 32 * _771] = mem[(64 * stor4.length) + 192 len 32 * _771]
            mem[_357 + 96] = (32 * _406) + (32 * _637) + (32 * _771) + 224
            _871 = mem[(98 * stor4.length) + 192]
            mem[_357 + (32 * _406) + (32 * _637) + (32 * _771) + 224] = mem[(98 * stor4.length) + 192]
            mem[_357 + (32 * _406) + (32 * _637) + (32 * _771) + 256 len 32 * _871] = mem[(98 * stor4.length) + 224 len 32 * _871]
            return memory
              from mem[64]
               len _357 + (32 * _406) + (32 * _637) + (32 * _771) + (32 * _871) + -mem[64] + 256
        mem[(64 * stor4.length) + 192 len 32 * stor4.length] = call.data[calldata.size len 32 * stor4.length]
        require stor4.length <= test266151307()
        mem[(98 * stor4.length) + 192] = stor4.length
        mem[64] = (131 * stor4.length) + 224
        if not stor4.length:
            idx = 0
            while idx < stor4.length:
                require idx < mem[96]
                mem[(32 * idx) + 128] = stor4[idx].field_0
                require idx < stor4.length
                require idx < mem[(32 * stor4.length) + 128]
                mem[(32 * idx) + (32 * stor4.length) + 160] = stor4[idx].field_256
                require idx < stor4.length
                require idx < mem[(64 * stor4.length) + 160]
                mem[(32 * idx) + (64 * stor4.length) + 192] = stor4[idx].field_512
                require idx < stor4.length
                mem[0] = 4
                require idx < mem[(98 * stor4.length) + 192]
                mem[(32 * idx) + (98 * stor4.length) + 224] = stor4[idx].field_768
                idx = idx + 1
                continue 
            _358 = mem[64]
            mem[mem[64]] = 128
            _407 = mem[96]
            mem[mem[64] + 128] = mem[96]
            mem[mem[64] + 160 len 32 * _407] = mem[128 len 32 * _407]
            mem[mem[64] + 32] = (32 * _407) + 160
            _638 = mem[(32 * stor4.length) + 128]
            mem[mem[64] + (32 * _407) + 160] = mem[(32 * stor4.length) + 128]
            mem[mem[64] + (32 * _407) + 192 len 32 * _638] = mem[(32 * stor4.length) + 160 len 32 * _638]
            mem[mem[64] + 64] = (32 * _407) + (32 * _638) + 192
            _772 = mem[(64 * stor4.length) + 160]
            mem[_358 + (32 * _407) + (32 * _638) + 192] = mem[(64 * stor4.length) + 160]
            mem[_358 + (32 * _407) + (32 * _638) + 224 len 32 * _772] = mem[(64 * stor4.length) + 192 len 32 * _772]
            mem[_358 + 96] = (32 * _407) + (32 * _638) + (32 * _772) + 224
            _872 = mem[(98 * stor4.length) + 192]
            mem[_358 + (32 * _407) + (32 * _638) + (32 * _772) + 224] = mem[(98 * stor4.length) + 192]
            mem[_358 + (32 * _407) + (32 * _638) + (32 * _772) + 256 len 32 * _872] = mem[(98 * stor4.length) + 224 len 32 * _872]
            return memory
              from mem[64]
               len _358 + (32 * _407) + (32 * _638) + (32 * _772) + (32 * _872) + -mem[64] + 256
        mem[(98 * stor4.length) + 224 len 32 * stor4.length] = call.data[calldata.size len 32 * stor4.length]
        idx = 0
        while idx < stor4.length:
            require idx < mem[96]
            mem[(32 * idx) + 128] = stor4[idx].field_0
            require idx < stor4.length
            require idx < mem[(32 * stor4.length) + 128]
            mem[(32 * idx) + (32 * stor4.length) + 160] = stor4[idx].field_256
            require idx < stor4.length
            require idx < mem[(64 * stor4.length) + 160]
            mem[(32 * idx) + (64 * stor4.length) + 192] = stor4[idx].field_512
            require idx < stor4.length
            mem[0] = 4
            require idx < mem[(98 * stor4.length) + 192]
            mem[(32 * idx) + (98 * stor4.length) + 224] = stor4[idx].field_768
            idx = idx + 1
            continue 
        _359 = mem[64]
        mem[mem[64]] = 128
        _408 = mem[96]
        mem[mem[64] + 128] = mem[96]
        mem[mem[64] + 160 len 32 * _408] = mem[128 len 32 * _408]
        mem[mem[64] + 32] = (32 * _408) + 160
        _639 = mem[(32 * stor4.length) + 128]
        mem[mem[64] + (32 * _408) + 160] = mem[(32 * stor4.length) + 128]
        mem[mem[64] + (32 * _408) + 192 len 32 * _639] = mem[(32 * stor4.length) + 160 len 32 * _639]
        mem[mem[64] + 64] = (32 * _408) + (32 * _639) + 192
        _773 = mem[(64 * stor4.length) + 160]
        mem[_359 + (32 * _408) + (32 * _639) + 192] = mem[(64 * stor4.length) + 160]
        mem[_359 + (32 * _408) + (32 * _639) + 224 len 32 * _773] = mem[(64 * stor4.length) + 192 len 32 * _773]
        mem[_359 + 96] = (32 * _408) + (32 * _639) + (32 * _773) + 224
        _873 = mem[(98 * stor4.length) + 192]
        mem[_359 + (32 * _408) + (32 * _639) + (32 * _773) + 224] = mem[(98 * stor4.length) + 192]
        mem[_359 + (32 * _408) + (32 * _639) + (32 * _773) + 256 len 32 * _873] = mem[(98 * stor4.length) + 224 len 32 * _873]
        return memory
          from mem[64]
           len _359 + (32 * _408) + (32 * _639) + (32 * _773) + (32 * _873) + -mem[64] + 256
    mem[(32 * stor4.length) + 160 len 32 * stor4.length] = call.data[calldata.size len 32 * stor4.length]
    require stor4.length <= test266151307()
    mem[(64 * stor4.length) + 160] = stor4.length
    if not stor4.length:
        require stor4.length <= test266151307()
        mem[(98 * stor4.length) + 192] = stor4.length
        mem[64] = (131 * stor4.length) + 224
        if not stor4.length:
            idx = 0
            while idx < stor4.length:
                require idx < mem[96]
                mem[(32 * idx) + 128] = stor4[idx].field_0
                require idx < stor4.length
                require idx < mem[(32 * stor4.length) + 128]
                mem[(32 * idx) + (32 * stor4.length) + 160] = stor4[idx].field_256
                require idx < stor4.length
                require idx < mem[(64 * stor4.length) + 160]
                mem[(32 * idx) + (64 * stor4.length) + 192] = stor4[idx].field_512
                require idx < stor4.length
                mem[0] = 4
                require idx < mem[(98 * stor4.length) + 192]
                mem[(32 * idx) + (98 * stor4.length) + 224] = stor4[idx].field_768
                idx = idx + 1
                continue 
            _360 = mem[64]
            mem[mem[64]] = 128
            _409 = mem[96]
            mem[mem[64] + 128] = mem[96]
            mem[mem[64] + 160 len 32 * _409] = mem[128 len 32 * _409]
            mem[mem[64] + 32] = (32 * _409) + 160
            _640 = mem[(32 * stor4.length) + 128]
            mem[mem[64] + (32 * _409) + 160] = mem[(32 * stor4.length) + 128]
            mem[mem[64] + (32 * _409) + 192 len 32 * _640] = mem[(32 * stor4.length) + 160 len 32 * _640]
            mem[mem[64] + 64] = (32 * _409) + (32 * _640) + 192
            _774 = mem[(64 * stor4.length) + 160]
            mem[_360 + (32 * _409) + (32 * _640) + 192] = mem[(64 * stor4.length) + 160]
            mem[_360 + (32 * _409) + (32 * _640) + 224 len 32 * _774] = mem[(64 * stor4.length) + 192 len 32 * _774]
            mem[_360 + 96] = (32 * _409) + (32 * _640) + (32 * _774) + 224
            _874 = mem[(98 * stor4.length) + 192]
            mem[_360 + (32 * _409) + (32 * _640) + (32 * _774) + 224] = mem[(98 * stor4.length) + 192]
            mem[_360 + (32 * _409) + (32 * _640) + (32 * _774) + 256 len 32 * _874] = mem[(98 * stor4.length) + 224 len 32 * _874]
            return memory
              from mem[64]
               len _360 + (32 * _409) + (32 * _640) + (32 * _774) + (32 * _874) + -mem[64] + 256
        mem[(98 * stor4.length) + 224 len 32 * stor4.length] = call.data[calldata.size len 32 * stor4.length]
        idx = 0
        while idx < stor4.length:
            require idx < mem[96]
            mem[(32 * idx) + 128] = stor4[idx].field_0
            require idx < stor4.length
            require idx < mem[(32 * stor4.length) + 128]
            mem[(32 * idx) + (32 * stor4.length) + 160] = stor4[idx].field_256
            require idx < stor4.length
            require idx < mem[(64 * stor4.length) + 160]
            mem[(32 * idx) + (64 * stor4.length) + 192] = stor4[idx].field_512
            require idx < stor4.length
            mem[0] = 4
            require idx < mem[(98 * stor4.length) + 192]
            mem[(32 * idx) + (98 * stor4.length) + 224] = stor4[idx].field_768
            idx = idx + 1
            continue 
        _361 = mem[64]
        mem[mem[64]] = 128
        _410 = mem[96]
        mem[mem[64] + 128] = mem[96]
        mem[mem[64] + 160 len 32 * _410] = mem[128 len 32 * _410]
        mem[mem[64] + 32] = (32 * _410) + 160
        _641 = mem[(32 * stor4.length) + 128]
        mem[mem[64] + (32 * _410) + 160] = mem[(32 * stor4.length) + 128]
        mem[mem[64] + (32 * _410) + 192 len 32 * _641] = mem[(32 * stor4.length) + 160 len 32 * _641]
        mem[mem[64] + 64] = (32 * _410) + (32 * _641) + 192
        _775 = mem[(64 * stor4.length) + 160]
        mem[_361 + (32 * _410) + (32 * _641) + 192] = mem[(64 * stor4.length) + 160]
        mem[_361 + (32 * _410) + (32 * _641) + 224 len 32 * _775] = mem[(64 * stor4.length) + 192 len 32 * _775]
        mem[_361 + 96] = (32 * _410) + (32 * _641) + (32 * _775) + 224
        _875 = mem[(98 * stor4.length) + 192]
        mem[_361 + (32 * _410) + (32 * _641) + (32 * _775) + 224] = mem[(98 * stor4.length) + 192]
        mem[_361 + (32 * _410) + (32 * _641) + (32 * _775) + 256 len 32 * _875] = mem[(98 * stor4.length) + 224 len 32 * _875]
        return memory
          from mem[64]
           len _361 + (32 * _410) + (32 * _641) + (32 * _775) + (32 * _875) + -mem[64] + 256
    mem[(64 * stor4.length) + 192 len 32 * stor4.length] = call.data[calldata.size len 32 * stor4.length]
    require stor4.length <= test266151307()
    mem[(98 * stor4.length) + 192] = stor4.length
    mem[64] = (131 * stor4.length) + 224
    if not stor4.length:
        idx = 0
        while idx < stor4.length:
            require idx < mem[96]
            mem[(32 * idx) + 128] = stor4[idx].field_0
            require idx < stor4.length
            require idx < mem[(32 * stor4.length) + 128]
            mem[(32 * idx) + (32 * stor4.length) + 160] = stor4[idx].field_256
            require idx < stor4.length
            require idx < mem[(64 * stor4.length) + 160]
            mem[(32 * idx) + (64 * stor4.length) + 192] = stor4[idx].field_512
            require idx < stor4.length
            mem[0] = 4
            require idx < mem[(98 * stor4.length) + 192]
            mem[(32 * idx) + (98 * stor4.length) + 224] = stor4[idx].field_768
            idx = idx + 1
            continue 
        _362 = mem[64]
        mem[mem[64]] = 128
        _411 = mem[96]
        mem[mem[64] + 128] = mem[96]
        mem[mem[64] + 160 len 32 * _411] = mem[128 len 32 * _411]
        mem[mem[64] + 32] = (32 * _411) + 160
        _642 = mem[(32 * stor4.length) + 128]
        mem[mem[64] + (32 * _411) + 160] = mem[(32 * stor4.length) + 128]
        mem[mem[64] + (32 * _411) + 192 len 32 * _642] = mem[(32 * stor4.length) + 160 len 32 * _642]
        mem[mem[64] + 64] = (32 * _411) + (32 * _642) + 192
        _776 = mem[(64 * stor4.length) + 160]
        mem[_362 + (32 * _411) + (32 * _642) + 192] = mem[(64 * stor4.length) + 160]
        mem[_362 + (32 * _411) + (32 * _642) + 224 len 32 * _776] = mem[(64 * stor4.length) + 192 len 32 * _776]
        mem[_362 + 96] = (32 * _411) + (32 * _642) + (32 * _776) + 224
        _876 = mem[(98 * stor4.length) + 192]
        mem[_362 + (32 * _411) + (32 * _642) + (32 * _776) + 224] = mem[(98 * stor4.length) + 192]
        mem[_362 + (32 * _411) + (32 * _642) + (32 * _776) + 256 len 32 * _876] = mem[(98 * stor4.length) + 224 len 32 * _876]
        return memory
          from mem[64]
           len _362 + (32 * _411) + (32 * _642) + (32 * _776) + (32 * _876) + -mem[64] + 256
    mem[(98 * stor4.length) + 224 len 32 * stor4.length] = call.data[calldata.size len 32 * stor4.length]
    idx = 0
    while idx < stor4.length:
        require idx < mem[96]
        mem[(32 * idx) + 128] = stor4[idx].field_0
        require idx < stor4.length
        require idx < mem[(32 * stor4.length) + 128]
        mem[(32 * idx) + (32 * stor4.length) + 160] = stor4[idx].field_256
        require idx < stor4.length
        require idx < mem[(64 * stor4.length) + 160]
        mem[(32 * idx) + (64 * stor4.length) + 192] = stor4[idx].field_512
        require idx < stor4.length
        mem[0] = 4
        require idx < mem[(98 * stor4.length) + 192]
        mem[(32 * idx) + (98 * stor4.length) + 224] = stor4[idx].field_768
        idx = idx + 1
        continue 
    _363 = mem[64]
    mem[mem[64]] = 128
    _412 = mem[96]
    mem[mem[64] + 128] = mem[96]
    mem[mem[64] + 160 len 32 * _412] = mem[128 len 32 * _412]
    mem[mem[64] + 32] = (32 * _412) + 160
    _643 = mem[(32 * stor4.length) + 128]
    mem[mem[64] + (32 * _412) + 160] = mem[(32 * stor4.length) + 128]
    mem[mem[64] + (32 * _412) + 192 len 32 * _643] = mem[(32 * stor4.length) + 160 len 32 * _643]
    mem[mem[64] + 64] = (32 * _412) + (32 * _643) + 192
    _777 = mem[(64 * stor4.length) + 160]
    mem[_363 + (32 * _412) + (32 * _643) + 192] = mem[(64 * stor4.length) + 160]
    mem[_363 + (32 * _412) + (32 * _643) + 224 len 32 * _777] = mem[(64 * stor4.length) + 192 len 32 * _777]
    mem[_363 + 96] = (32 * _412) + (32 * _643) + (32 * _777) + 224
    _877 = mem[(98 * stor4.length) + 192]
    mem[_363 + (32 * _412) + (32 * _643) + (32 * _777) + 224] = mem[(98 * stor4.length) + 192]
    mem[_363 + (32 * _412) + (32 * _643) + (32 * _777) + 256 len 32 * _877] = mem[(98 * stor4.length) + 224 len 32 * _877]
    return memory
      from mem[64]
       len _363 + (32 * _412) + (32 * _643) + (32 * _777) + (32 * _877) + -mem[64] + 256
}

function claim() payable {
    mem[64] = 96
    if not stor2[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TokenTimelock: no tokens to claim'
    mem[0] = msg.sender
    mem[32] = 3
    idx = 0
    s = 0
    while idx < stor4.length:
        mem[0] = 4
        if block.timestamp < stor4[idx].field_0:
            if s <= stor3[address(msg.sender)]:
                revert with 0, 'TokenTimelock: no tokens to claim'
            _465 = mem[64]
            mem[64] = mem[64] + 64
            mem[_465] = 30
            mem[_465 + 32] = 'SafeMath: subtraction overflow'
            if stor3[address(msg.sender)] > s:
                _470 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _470 + 68] = mem[idx + _465 + 32]
                    idx = idx + 32
                    continue 
                mem[_470 + 98] = 0
                revert with memory
                  from mem[64]
                   len _470 + -mem[64] + 100
            mem[mem[64] + 4] = this.address
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _485 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_485] >= s - stor3[address(msg.sender)]:
                if s - stor3[address(msg.sender)] <= 0:
                    revert with 0, 'TokenTimelock: no tokens to claim'
                if s - stor3[address(msg.sender)] + stor3[msg.sender] < stor3[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = msg.sender
                mem[32] = 3
                stor3[msg.sender] = s - stor3[address(msg.sender)] + stor3[msg.sender]
                _529 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = s - stor3[address(msg.sender)]
                _537 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_537 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_537 + 36 len 28]
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                    revert with 0, 'SafeBEP20: call to non-contract'
                if not ext_code.hash(tokenAddress):
                    revert with 0, 'SafeBEP20: call to non-contract'
                _581 = mem[_537]
                idx = 0
                while idx < _581:
                    mem[idx + _529 + 100] = mem[idx + _537 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_581) <= _581:
                    call tokenAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _581 + _529 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
                    else:
                        _950 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_950 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_950 + 32] == bool(mem[_950 + 32])
                            if not mem[_950 + 32]:
                                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
                else:
                    mem[_581 + _529 + 100] = 0
                    call tokenAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _581 + _529 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
                    else:
                        _951 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_951 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_951 + 32] == bool(mem[_951 + 32])
                            if not mem[_951 + 32]:
                                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
                emit Claimed(msg.sender, s - stor3[address(msg.sender)]);
            else:
                mem[mem[64] + 4] = this.address
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _513 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _525 = mem[_513]
                if mem[_513] <= 0:
                    revert with 0, 'TokenTimelock: no tokens to claim'
                if mem[_513] + stor3[msg.sender] < stor3[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = msg.sender
                mem[32] = 3
                stor3[msg.sender] += _525
                _569 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = _525
                _582 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_582 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_582 + 36 len 28]
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                    revert with 0, 'SafeBEP20: call to non-contract'
                if not ext_code.hash(tokenAddress):
                    revert with 0, 'SafeBEP20: call to non-contract'
                _649 = mem[_582]
                idx = 0
                while idx < _649:
                    mem[idx + _569 + 100] = mem[idx + _582 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_649) <= _649:
                    call tokenAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _649 + _569 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
                    else:
                        _952 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_952 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_952 + 32] == bool(mem[_952 + 32])
                            if not mem[_952 + 32]:
                                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
                else:
                    mem[_649 + _569 + 100] = 0
                    call tokenAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _649 + _569 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
                    else:
                        _953 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_953 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_953 + 32] == bool(mem[_953 + 32])
                            if not mem[_953 + 32]:
                                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
                emit Claimed(msg.sender, _525);
        require idx < stor4.length
        mem[0] = msg.sender
        mem[32] = 2
        if not stor2[address(msg.sender)]:
            _471 = mem[64]
            mem[64] = mem[64] + 64
            mem[_471] = 26
            mem[_471 + 32] = 'SafeMath: division by zero'
            require idx < stor4.length
            mem[0] = 4
            if stor4[idx].field_256 <= stor4[idx].field_0:
                idx = idx + 1
                s = s
                continue 
            require idx < stor4.length
            mem[0] = 4
            if block.timestamp >= stor4[idx].field_256:
                idx = idx + 1
                s = s
                continue 
            require idx < stor4.length
            require idx < stor4.length
            mem[0] = 4
            if block.timestamp <= stor4[idx].field_0:
                _528 = mem[64]
                mem[64] = mem[64] + 64
                mem[_528] = 30
                mem[_528 + 32] = 'SafeMath: subtraction overflow'
                if stor4[idx].field_0 > stor4[idx].field_256:
                    _536 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _536 + 68] = mem[idx + _528 + 32]
                        idx = idx + 32
                        continue 
                    mem[_536 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _536 + -mem[64] + 100
                _586 = mem[64]
                mem[64] = mem[64] + 64
                mem[_586] = 26
                mem[_586 + 32] = 'SafeMath: division by zero'
                if stor4[idx].field_256 - stor4[idx].field_0:
                    idx = idx + 1
                    s = s + (0 / stor4[idx].field_256 - stor4[idx].field_0)
                    continue 
                _601 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _601 + 68] = mem[idx + _586 + 32]
                    idx = idx + 32
                    continue 
                mem[_601 + 94] = 0
                revert with memory
                  from mem[64]
                   len _601 + -mem[64] + 100
            _522 = mem[64]
            mem[64] = mem[64] + 64
            mem[_522] = 30
            mem[_522 + 32] = 'SafeMath: subtraction overflow'
            if stor4[idx].field_0 > block.timestamp:
                _534 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _534 + 68] = mem[idx + _522 + 32]
                    idx = idx + 32
                    continue 
                mem[_534 + 98] = 0
                revert with memory
                  from mem[64]
                   len _534 + -mem[64] + 100
            require idx < stor4.length
            require idx < stor4.length
            mem[0] = 4
            if stor4[idx].field_512 <= 0:
                _579 = mem[64]
                mem[64] = mem[64] + 64
                mem[_579] = 30
                mem[_579 + 32] = 'SafeMath: subtraction overflow'
                if stor4[idx].field_0 > stor4[idx].field_256:
                    _592 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _592 + 68] = mem[idx + _579 + 32]
                        idx = idx + 32
                        continue 
                    mem[_592 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _592 + -mem[64] + 100
                _681 = mem[64]
                mem[64] = mem[64] + 64
                mem[_681] = 26
                mem[_681 + 32] = 'SafeMath: division by zero'
                if stor4[idx].field_256 - stor4[idx].field_0:
                    idx = idx + 1
                    s = s + (0 / stor4[idx].field_256 - stor4[idx].field_0)
                    continue 
                _704 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _704 + 68] = mem[idx + _681 + 32]
                    idx = idx + 32
                    continue 
                mem[_704 + 94] = 0
                revert with memory
                  from mem[64]
                   len _704 + -mem[64] + 100
            _572 = mem[64]
            mem[64] = mem[64] + 64
            mem[_572] = 24
            mem[_572 + 32] = 'SafeMath: modulo by zero'
            if not stor4[idx].field_512:
                _587 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 24
                idx = 0
                while idx < 24:
                    mem[idx + _587 + 68] = mem[idx + _572 + 32]
                    idx = idx + 32
                    continue 
                mem[_587 + 92] = 0
                revert with memory
                  from mem[64]
                   len _587 + -mem[64] + 100
            _632 = mem[64]
            mem[64] = mem[64] + 64
            mem[_632] = 30
            mem[_632 + 32] = 'SafeMath: subtraction overflow'
            if block.timestamp - stor4[idx].field_0 % stor4[idx].field_512 > block.timestamp - stor4[idx].field_0:
                _657 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _657 + 68] = mem[idx + _632 + 32]
                    idx = idx + 32
                    continue 
                mem[_657 + 98] = 0
                revert with memory
                  from mem[64]
                   len _657 + -mem[64] + 100
            require idx < stor4.length
            mem[0] = 4
            _768 = mem[64]
            mem[64] = mem[64] + 64
            mem[_768] = 30
            mem[_768 + 32] = 'SafeMath: subtraction overflow'
            if stor4[idx].field_0 > stor4[idx].field_256:
                _800 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _800 + 68] = mem[idx + _768 + 32]
                    idx = idx + 32
                    continue 
                mem[_800 + 98] = 0
                revert with memory
                  from mem[64]
                   len _800 + -mem[64] + 100
            _873 = mem[64]
            mem[64] = mem[64] + 64
            mem[_873] = 26
            mem[_873 + 32] = 'SafeMath: division by zero'
            if stor4[idx].field_256 - stor4[idx].field_0:
                idx = idx + 1
                s = s + (0 / stor4[idx].field_256 - stor4[idx].field_0)
                continue 
            _886 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _886 + 68] = mem[idx + _873 + 32]
                idx = idx + 32
                continue 
            mem[_886 + 94] = 0
            revert with memory
              from mem[64]
               len _886 + -mem[64] + 100
        if stor4[idx].field_768 * stor2[address(msg.sender)] / stor2[address(msg.sender)] != stor4[idx].field_768:
            revert with 0, 'SafeMath: multiplication overflow'
        _477 = mem[64]
        mem[64] = mem[64] + 64
        mem[_477] = 26
        mem[_477 + 32] = 'SafeMath: division by zero'
        require idx < stor4.length
        mem[0] = 4
        if stor4[idx].field_256 <= stor4[idx].field_0:
            idx = idx + 1
            s = (stor4[idx].field_768 * stor2[address(msg.sender)] / 10000) + s
            continue 
        require idx < stor4.length
        mem[0] = 4
        if block.timestamp >= stor4[idx].field_256:
            idx = idx + 1
            s = (stor4[idx].field_768 * stor2[address(msg.sender)] / 10000) + s
            continue 
        require idx < stor4.length
        require idx < stor4.length
        mem[0] = 4
        if block.timestamp <= stor4[idx].field_0:
            _535 = mem[64]
            mem[64] = mem[64] + 64
            mem[_535] = 30
            mem[_535 + 32] = 'SafeMath: subtraction overflow'
            if stor4[idx].field_0 > stor4[idx].field_256:
                _547 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _547 + 68] = mem[idx + _535 + 32]
                    idx = idx + 32
                    continue 
                mem[_547 + 98] = 0
                revert with memory
                  from mem[64]
                   len _547 + -mem[64] + 100
            if not stor4[idx].field_768 * stor2[address(msg.sender)] / 10000:
                _599 = mem[64]
                mem[64] = mem[64] + 64
                mem[_599] = 26
                mem[_599 + 32] = 'SafeMath: division by zero'
                if stor4[idx].field_256 - stor4[idx].field_0:
                    idx = idx + 1
                    s = s + (0 / stor4[idx].field_256 - stor4[idx].field_0)
                    continue 
                _617 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _617 + 68] = mem[idx + _599 + 32]
                    idx = idx + 32
                    continue 
                mem[_617 + 94] = 0
                revert with memory
                  from mem[64]
                   len _617 + -mem[64] + 100
            if 0 / stor4[idx].field_768 * stor2[address(msg.sender)] / 10000:
                revert with 0, 'SafeMath: multiplication overflow'
            _616 = mem[64]
            mem[64] = mem[64] + 64
            mem[_616] = 26
            mem[_616 + 32] = 'SafeMath: division by zero'
            if stor4[idx].field_256 - stor4[idx].field_0:
                idx = idx + 1
                s = s + (0 / stor4[idx].field_256 - stor4[idx].field_0)
                continue 
            _643 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _643 + 68] = mem[idx + _616 + 32]
                idx = idx + 32
                continue 
            mem[_643 + 94] = 0
            revert with memory
              from mem[64]
               len _643 + -mem[64] + 100
        _533 = mem[64]
        mem[64] = mem[64] + 64
        mem[_533] = 30
        mem[_533 + 32] = 'SafeMath: subtraction overflow'
        if stor4[idx].field_0 > block.timestamp:
            _543 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _543 + 68] = mem[idx + _533 + 32]
                idx = idx + 32
                continue 
            mem[_543 + 98] = 0
            revert with memory
              from mem[64]
               len _543 + -mem[64] + 100
        require idx < stor4.length
        require idx < stor4.length
        mem[0] = 4
        if stor4[idx].field_512 <= 0:
            _591 = mem[64]
            mem[64] = mem[64] + 64
            mem[_591] = 30
            mem[_591 + 32] = 'SafeMath: subtraction overflow'
            if stor4[idx].field_0 > stor4[idx].field_256:
                _611 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _611 + 68] = mem[idx + _591 + 32]
                    idx = idx + 32
                    continue 
                mem[_611 + 98] = 0
                revert with memory
                  from mem[64]
                   len _611 + -mem[64] + 100
            if not stor4[idx].field_768 * stor2[address(msg.sender)] / 10000:
                _702 = mem[64]
                mem[64] = mem[64] + 64
                mem[_702] = 26
                mem[_702 + 32] = 'SafeMath: division by zero'
                if stor4[idx].field_256 - stor4[idx].field_0:
                    idx = idx + 1
                    s = s + (0 / stor4[idx].field_256 - stor4[idx].field_0)
                    continue 
                _741 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _741 + 68] = mem[idx + _702 + 32]
                    idx = idx + 32
                    continue 
                mem[_741 + 94] = 0
                revert with memory
                  from mem[64]
                   len _741 + -mem[64] + 100
            if (block.timestamp * stor4[idx].field_768 * stor2[address(msg.sender)] / 10000) - (stor4[idx].field_0 * stor4[idx].field_768 * stor2[address(msg.sender)] / 10000) / stor4[idx].field_768 * stor2[address(msg.sender)] / 10000 != block.timestamp - stor4[idx].field_0:
                revert with 0, 'SafeMath: multiplication overflow'
            _740 = mem[64]
            mem[64] = mem[64] + 64
            mem[_740] = 26
            mem[_740 + 32] = 'SafeMath: division by zero'
            if stor4[idx].field_256 - stor4[idx].field_0:
                idx = idx + 1
                s = s + ((block.timestamp * stor4[idx].field_768 * stor2[address(msg.sender)] / 10000) - (stor4[idx].field_0 * stor4[idx].field_768 * stor2[address(msg.sender)] / 10000) / stor4[idx].field_256 - stor4[idx].field_0)
                continue 
            _777 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _777 + 68] = mem[idx + _740 + 32]
                idx = idx + 32
                continue 
            mem[_777 + 94] = 0
            revert with memory
              from mem[64]
               len _777 + -mem[64] + 100
        _585 = mem[64]
        mem[64] = mem[64] + 64
        mem[_585] = 24
        mem[_585 + 32] = 'SafeMath: modulo by zero'
        if not stor4[idx].field_512:
            _600 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 24
            idx = 0
            while idx < 24:
                mem[idx + _600 + 68] = mem[idx + _585 + 32]
                idx = idx + 32
                continue 
            mem[_600 + 92] = 0
            revert with memory
              from mem[64]
               len _600 + -mem[64] + 100
        _654 = mem[64]
        mem[64] = mem[64] + 64
        mem[_654] = 30
        mem[_654 + 32] = 'SafeMath: subtraction overflow'
        if block.timestamp - stor4[idx].field_0 % stor4[idx].field_512 > block.timestamp - stor4[idx].field_0:
            _680 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _680 + 68] = mem[idx + _654 + 32]
                idx = idx + 32
                continue 
            mem[_680 + 98] = 0
            revert with memory
              from mem[64]
               len _680 + -mem[64] + 100
        require idx < stor4.length
        mem[0] = 4
        _798 = mem[64]
        mem[64] = mem[64] + 64
        mem[_798] = 30
        mem[_798 + 32] = 'SafeMath: subtraction overflow'
        if stor4[idx].field_0 > stor4[idx].field_256:
            _825 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _825 + 68] = mem[idx + _798 + 32]
                idx = idx + 32
                continue 
            mem[_825 + 98] = 0
            revert with memory
              from mem[64]
               len _825 + -mem[64] + 100
        if not stor4[idx].field_768 * stor2[address(msg.sender)] / 10000:
            _885 = mem[64]
            mem[64] = mem[64] + 64
            mem[_885] = 26
            mem[_885 + 32] = 'SafeMath: division by zero'
            if stor4[idx].field_256 - stor4[idx].field_0:
                idx = idx + 1
                s = s + (0 / stor4[idx].field_256 - stor4[idx].field_0)
                continue 
            _895 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _895 + 68] = mem[idx + _885 + 32]
                idx = idx + 32
                continue 
            mem[_895 + 94] = 0
            revert with memory
              from mem[64]
               len _895 + -mem[64] + 100
        if (block.timestamp * stor4[idx].field_768 * stor2[address(msg.sender)] / 10000) - (stor4[idx].field_0 * stor4[idx].field_768 * stor2[address(msg.sender)] / 10000) - (block.timestamp - stor4[idx].field_0 % stor4[idx].field_512 * stor4[idx].field_768 * stor2[address(msg.sender)] / 10000) / stor4[idx].field_768 * stor2[address(msg.sender)] / 10000 != block.timestamp - stor4[idx].field_0 - (block.timestamp - stor4[idx].field_0 % stor4[idx].field_512):
            revert with 0, 'SafeMath: multiplication overflow'
        _894 = mem[64]
        mem[64] = mem[64] + 64
        mem[_894] = 26
        mem[_894 + 32] = 'SafeMath: division by zero'
        if stor4[idx].field_256 - stor4[idx].field_0:
            idx = idx + 1
            s = s + ((block.timestamp * stor4[idx].field_768 * stor2[address(msg.sender)] / 10000) - (stor4[idx].field_0 * stor4[idx].field_768 * stor2[address(msg.sender)] / 10000) - (block.timestamp - stor4[idx].field_0 % stor4[idx].field_512 * stor4[idx].field_768 * stor2[address(msg.sender)] / 10000) / stor4[idx].field_256 - stor4[idx].field_0)
            continue 
        _899 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _899 + 68] = mem[idx + _894 + 32]
            idx = idx + 32
            continue 
        mem[_899 + 94] = 0
        revert with memory
          from mem[64]
           len _899 + -mem[64] + 100
    if s <= stor3[address(msg.sender)]:
        revert with 0, 'TokenTimelock: no tokens to claim'
    _459 = mem[64]
    mem[64] = mem[64] + 64
    mem[_459] = 30
    mem[_459 + 32] = 'SafeMath: subtraction overflow'
    if stor3[address(msg.sender)] > s:
        revert with 0, 'SafeMath: subtraction overflow', 0
    mem[mem[64] + 4] = this.address
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _479 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_479] >= s - stor3[address(msg.sender)]:
        if s - stor3[address(msg.sender)] <= 0:
            revert with 0, 'TokenTimelock: no tokens to claim'
        if s - stor3[address(msg.sender)] + stor3[msg.sender] < stor3[msg.sender]:
            revert with 0, 'SafeMath: addition overflow'
        mem[0] = msg.sender
        mem[32] = 3
        stor3[msg.sender] = s - stor3[address(msg.sender)] + stor3[msg.sender]
        _510 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = s - stor3[address(msg.sender)]
        _517 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_517 + 32 len 4] = unknown_0xa9059cbb(?????)
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
            revert with 0, 'SafeBEP20: call to non-contract'
        if not ext_code.hash(tokenAddress):
            revert with 0, 'SafeBEP20: call to non-contract'
        _556 = mem[_517]
        mem[_510 + 100 len ceil32(mem[_517])] = mem[_517 + 32 len ceil32(mem[_517])]
        if ceil32(_556) <= _556:
            call tokenAddress with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _556 + _510 + -mem[64] + 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeBEP20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
            else:
                _946 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_946 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeBEP20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_946 + 32] == bool(mem[_946 + 32])
                    if not mem[_946 + 32]:
                        revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
        else:
            mem[_556 + _510 + 100] = 0
            call tokenAddress with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _556 + _510 + -mem[64] + 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeBEP20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
            else:
                _947 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_947 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeBEP20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_947 + 32] == bool(mem[_947 + 32])
                    if not mem[_947 + 32]:
                        revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
        emit Claimed(msg.sender, s - stor3[address(msg.sender)]);
    else:
        mem[mem[64] + 4] = this.address
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _501 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _508 = mem[_501]
        if mem[_501] <= 0:
            revert with 0, 'TokenTimelock: no tokens to claim'
        if mem[_501] + stor3[msg.sender] < stor3[msg.sender]:
            revert with 0, 'SafeMath: addition overflow'
        mem[0] = msg.sender
        mem[32] = 3
        stor3[msg.sender] += _508
        _546 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = _508
        _557 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_557 + 32 len 4] = unknown_0xa9059cbb(?????)
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
            revert with 0, 'SafeBEP20: call to non-contract'
        if not ext_code.hash(tokenAddress):
            revert with 0, 'SafeBEP20: call to non-contract'
        _609 = mem[_557]
        mem[_546 + 100 len ceil32(mem[_557])] = mem[_557 + 32 len ceil32(mem[_557])]
        if ceil32(_609) <= _609:
            call tokenAddress with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _609 + _546 + -mem[64] + 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeBEP20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
            else:
                _948 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_948 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeBEP20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_948 + 32] == bool(mem[_948 + 32])
                    if not mem[_948 + 32]:
                        revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
        else:
            mem[_609 + _546 + 100] = 0
            call tokenAddress with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _609 + _546 + -mem[64] + 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeBEP20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
            else:
                _949 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_949 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeBEP20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_949 + 32] == bool(mem[_949 + 32])
                    if not mem[_949 + 32]:
                        revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
        emit Claimed(msg.sender, _508);
}



}
