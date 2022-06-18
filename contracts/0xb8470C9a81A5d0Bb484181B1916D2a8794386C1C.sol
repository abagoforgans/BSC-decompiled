contract main {




// =====================  Runtime code  =====================


#
#  - emergencyWithdraw(address arg1, uint256 arg2)
#
address owner;
address sub_605fd13fAddress;
uint256 decimals;

function decimals() payable {
    return decimals
}

function sub_605fd13f(?) payable {
    return sub_605fd13fAddress
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_03f4e717(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_605fd13fAddress = address(arg1)
    decimals = arg2
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_e6eade3a(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    if arg3 < arg2:
        revert with 'NH{q', 17
    if arg3 - arg2 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg3 - arg2
    mem[64] = (32 * arg3 - arg2) + 128
    if not arg3 - arg2:
        if arg3 > -2:
            revert with 'NH{q', 17
        if var99002 >= arg3 + 1:
            mem[(32 * arg3 - arg2) + 128] = 32
            mem[(32 * arg3 - arg2) + 160] = arg3 - arg2
            idx = 0
            s = 128
            t = (32 * arg3 - arg2) + 192
            while idx < arg3 - arg2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (32 * arg3 - arg2) + 128
               len (96 * arg3) + (-96 * arg2) + 64
        mem[(32 * arg3 - arg2) + 128] = 0x6352211e00000000000000000000000000000000000000000000000000000000
        mem[var109003] = var109001
        require ext_code.size(address(arg1))
        staticcall address(arg1).mem[var115003 len 4] with:
                gas gas_remaining wei
               args mem[var115003 + 4 len var115004 - 4]
        if not ext_call.success:
            # nil
        else:
            require var119002 - var119001 >= 32
            # nil
    else:
        mem[128 len 32 * arg3 - arg2] = call.data[calldata.size len 32 * arg3 - arg2]
        if arg3 > -2:
            revert with 'NH{q', 17
        if var100002 >= arg3 + 1:
            mem[(32 * arg3 - arg2) + 128] = 32
            mem[(32 * arg3 - arg2) + 160] = arg3 - arg2
            idx = 0
            s = 128
            t = (32 * arg3 - arg2) + 192
            while idx < arg3 - arg2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (32 * arg3 - arg2) + 128
               len (96 * arg3) + (-96 * arg2) + 64
        mem[(32 * arg3 - arg2) + 128] = 0x6352211e00000000000000000000000000000000000000000000000000000000
        mem[var110003] = var110001
        require ext_code.size(address(arg1))
        staticcall address(arg1).mem[var116003 len 4] with:
                gas gas_remaining wei
               args mem[var116003 + 4 len var116004 - 4]
        if not ext_call.success:
            # nil
        else:
            require var120002 - var120001 >= 32
            # nil
}

function airdrop(address[] arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not decimals:
        if arg2 and 1 > -1 / arg2:
            revert with 'NH{q', 17
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            _193 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = address(cd[((32 * idx) + arg1 + 36)])
            mem[mem[64] + 100] = arg2
            _197 = mem[64]
            mem[mem[64]] = 100
            mem[64] = mem[64] + 132
            mem[_197 + 32] = mem[_197 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
            mem[64] = _193 + 196
            mem[_193 + 132] = 32
            mem[_193 + 164] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(sub_605fd13fAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            _208 = mem[_197]
            s = 0
            while s < _208:
                mem[_193 + s + 196] = mem[_197 + s + 32]
                s = s + 32
                continue 
            if ceil32(_208) > _208:
                mem[_193 + _208 + 196] = 0
            call sub_605fd13fAddress.mem[_193 + 196 len 4] with:
                 gas gas_remaining wei
                args mem[_193 + 200 len _208 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_193 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_193 + 200] = 32
                    idx = 0
                    while idx < 32:
                        mem[_193 + idx + 264] = mem[_193 + idx + 164]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_193 + 264]
                if mem[96] > 0:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[64] = _193 + ceil32(return_data.size) + 197
                mem[_193 + 196] = return_data.size
                mem[_193 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_193 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_193 + ceil32(return_data.size) + 201] = 32
                    idx = 0
                    while idx < 32:
                        mem[_193 + ceil32(return_data.size) + idx + 265] = mem[_193 + idx + 164]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_193 + ceil32(return_data.size) + 265]
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[_193 + 228] == bool(mem[_193 + 228])
                    if not mem[_193 + 228]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        if bool(bool(decimals < 78)) or bool(bool(decimals < 32)):
            if 10^decimals > -1:
                revert with 'NH{q', 17
            if arg2 and 10^decimals > -1 / arg2:
                revert with 'NH{q', 17
            idx = 0
            while idx < arg1.length:
                require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                _192 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = address(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64] + 100] = arg2 * 10^decimals
                _195 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_195 + 32] = mem[_195 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[64] = _192 + 196
                mem[_192 + 132] = 32
                mem[_192 + 164] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(sub_605fd13fAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _207 = mem[_195]
                s = 0
                while s < _207:
                    mem[_192 + s + 196] = mem[_195 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_207) > _207:
                    mem[_192 + _207 + 196] = 0
                call sub_605fd13fAddress.mem[_192 + 196 len 4] with:
                     gas gas_remaining wei
                    args mem[_192 + 200 len _207 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_192 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_192 + 200] = 32
                        idx = 0
                        while idx < 32:
                            mem[_192 + idx + 264] = mem[_192 + idx + 164]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_192 + 264]
                    if mem[96] > 0:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[64] = _192 + ceil32(return_data.size) + 197
                    mem[_192 + 196] = return_data.size
                    mem[_192 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_192 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_192 + ceil32(return_data.size) + 201] = 32
                        idx = 0
                        while idx < 32:
                            mem[_192 + ceil32(return_data.size) + idx + 265] = mem[_192 + idx + 164]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_192 + ceil32(return_data.size) + 265]
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_192 + 228] == bool(mem[_192 + 228])
                        if not mem[_192 + 228]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            s = 10
            t = 1
            idx = decimals
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
            if arg2 and t * s > -1 / arg2:
                revert with 'NH{q', 17
            idx = 0
            while idx < arg1.length:
                require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                _435 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = address(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64] + 100] = arg2 * t * s
                _480 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_480 + 32] = mem[_480 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[64] = _435 + 196
                mem[_435 + 132] = 32
                mem[_435 + 164] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(sub_605fd13fAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _494 = mem[_480]
                s = 0
                while s < _494:
                    mem[_435 + s + 196] = mem[_480 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_494) > _494:
                    mem[_435 + _494 + 196] = 0
                call sub_605fd13fAddress.mem[_435 + 196 len 4] with:
                     gas gas_remaining wei
                    args mem[_435 + 200 len _494 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_435 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_435 + 200] = 32
                        idx = 0
                        while idx < 32:
                            mem[_435 + idx + 264] = mem[_435 + idx + 164]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_435 + 264]
                    if mem[96] > 0:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[64] = _435 + ceil32(return_data.size) + 197
                    mem[_435 + 196] = return_data.size
                    mem[_435 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_435 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_435 + ceil32(return_data.size) + 201] = 32
                        idx = 0
                        while idx < 32:
                            mem[_435 + ceil32(return_data.size) + idx + 265] = mem[_435 + idx + 164]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_435 + ceil32(return_data.size) + 265]
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_435 + 228] == bool(mem[_435 + 228])
                        if not mem[_435 + 228]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
}



}
