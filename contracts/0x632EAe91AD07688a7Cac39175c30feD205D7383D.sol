contract main {




// =====================  Runtime code  =====================


#
#  - sub_186c8af1(?)
#
address owner;

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function withdrawBnb(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
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
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_e2da3653(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    call address(arg1).transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function approveToken(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_0eece4ae(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == arg4
    require arg5 == bool(arg5)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 2
    mem[ceil32(return_data.size) + 128] = address(arg1)
    mem[ceil32(return_data.size) + 160] = address(arg2)
    mem[ceil32(return_data.size) + 192] = 1
    mem[ceil32(return_data.size) + 224] = arg4
    mem[ceil32(return_data.size) + 256] = 1
    mem[ceil32(return_data.size) + 288] = bool(arg5)
    mem[ceil32(return_data.size) + 320] = 1
    mem[64] = ceil32(return_data.size) + 384
    mem[ceil32(return_data.size) + 352] = code.data[8092 len 32]
    idx = 0
    while idx < 1:
        require idx < mem[ceil32(return_data.size) + 96]
        require idx + 1 < mem[ceil32(return_data.size) + 96]
        _904 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
        mem[mem[64] + 36] = address(_904)
        require ext_code.size(address(arg3))
        staticcall address(arg3).getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args mem[mem[64] + 4], address(_904)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _995 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_995] == mem[_995 + 12 len 20]
        require idx < mem[ceil32(return_data.size) + 320]
        mem[(32 * idx) + ceil32(return_data.size) + 352] = mem[_995 + 12 len 20]
        idx = idx + 1
        continue 
    _896 = mem[ceil32(return_data.size) + 96]
    _897 = mem[64]
    mem[mem[64]] = mem[ceil32(return_data.size) + 96]
    mem[64] = mem[64] + (32 * _896) + 32
    if not _896:
        require 0 < mem[_897]
        mem[_897 + 32] = ext_call.return_data[0]
        _1762 = mem[ceil32(return_data.size) + 96]
        idx = 0
        while idx < _1762 - 1:
            require idx < mem[ceil32(return_data.size) + 320]
            require idx < mem[ceil32(return_data.size) + 96]
            _1790 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            require idx + 1 < mem[ceil32(return_data.size) + 96]
            _1804 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
            require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 364 len 20])
            staticcall mem[(32 * idx) + ceil32(return_data.size) + 364 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[(32 * idx) + ceil32(return_data.size) + 140 len 20] < mem[(32 * idx + 1) + ceil32(return_data.size) + 140 len 20]:
                _1836 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_1836] == mem[_1836 + 18 len 14]
                require mem[_1836 + 32] == mem[_1836 + 50 len 14]
                require mem[_1836 + 64] == mem[_1836 + 92 len 4]
                require idx < mem[_897]
                require idx < mem[ceil32(return_data.size) + 192]
                if address(_1790) == address(_1790):
                    if not mem[(32 * idx) + _897 + 32]:
                        require mem[_1836 + 18 len 14]
                        if 1000 * mem[_1836 + 18 len 14] / mem[_1836 + 18 len 14] != 1000:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if 1000 * mem[_1836 + 18 len 14] < 1000 * mem[_1836 + 18 len 14]:
                            revert with 0, 'SafeMath#add: OVERFLOW'
                        require 1000 * mem[_1836 + 18 len 14]
                        require idx + 1 < mem[_897]
                        mem[(32 * idx + 1) + _897 + 32] = 0 / 1000 * mem[_1836 + 18 len 14]
                    else:
                        if (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) / mem[(32 * idx) + _897 + 32] != -mem[(32 * idx) + ceil32(return_data.size) + 224] + 1000:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if not (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]):
                            if not mem[_1836 + 18 len 14]:
                                if (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) < 0:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32])
                                require idx + 1 < mem[_897]
                                mem[(32 * idx + 1) + _897 + 32] = 0 / (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32])
                            else:
                                if 1000 * mem[_1836 + 18 len 14] / mem[_1836 + 18 len 14] != 1000:
                                    revert with 0, 'SafeMath#mul: OVERFLOW'
                                if (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) + (1000 * mem[_1836 + 18 len 14]) < 1000 * mem[_1836 + 18 len 14]:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) + (1000 * mem[_1836 + 18 len 14])
                                require idx + 1 < mem[_897]
                                mem[(32 * idx + 1) + _897 + 32] = 0 / (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) + (1000 * mem[_1836 + 18 len 14])
                        else:
                            if (1000 * mem[(32 * idx) + _897 + 32] * mem[_1836 + 50 len 14]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32] * mem[_1836 + 50 len 14]) / (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) != mem[_1836 + 50 len 14]:
                                revert with 0, 'SafeMath#mul: OVERFLOW'
                            if not mem[_1836 + 18 len 14]:
                                if (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) < 0:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32])
                                require idx + 1 < mem[_897]
                                mem[(32 * idx + 1) + _897 + 32] = (1000 * mem[(32 * idx) + _897 + 32] * mem[_1836 + 50 len 14]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32] * mem[_1836 + 50 len 14]) / (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32])
                            else:
                                if 1000 * mem[_1836 + 18 len 14] / mem[_1836 + 18 len 14] != 1000:
                                    revert with 0, 'SafeMath#mul: OVERFLOW'
                                if (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) + (1000 * mem[_1836 + 18 len 14]) < 1000 * mem[_1836 + 18 len 14]:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) + (1000 * mem[_1836 + 18 len 14])
                                require idx + 1 < mem[_897]
                                mem[(32 * idx + 1) + _897 + 32] = (1000 * mem[(32 * idx) + _897 + 32] * mem[_1836 + 50 len 14]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32] * mem[_1836 + 50 len 14]) / (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) + (1000 * mem[_1836 + 18 len 14])
                else:
                    if not mem[(32 * idx) + _897 + 32]:
                        require mem[_1836 + 50 len 14]
                        if 1000 * mem[_1836 + 50 len 14] / mem[_1836 + 50 len 14] != 1000:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if 1000 * mem[_1836 + 50 len 14] < 1000 * mem[_1836 + 50 len 14]:
                            revert with 0, 'SafeMath#add: OVERFLOW'
                        require 1000 * mem[_1836 + 50 len 14]
                        require idx + 1 < mem[_897]
                        mem[(32 * idx + 1) + _897 + 32] = 0 / 1000 * mem[_1836 + 50 len 14]
                    else:
                        if (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) / mem[(32 * idx) + _897 + 32] != -mem[(32 * idx) + ceil32(return_data.size) + 224] + 1000:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if not (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]):
                            if not mem[_1836 + 50 len 14]:
                                if (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) < 0:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32])
                                require idx + 1 < mem[_897]
                                mem[(32 * idx + 1) + _897 + 32] = 0 / (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32])
                            else:
                                if 1000 * mem[_1836 + 50 len 14] / mem[_1836 + 50 len 14] != 1000:
                                    revert with 0, 'SafeMath#mul: OVERFLOW'
                                if (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) + (1000 * mem[_1836 + 50 len 14]) < 1000 * mem[_1836 + 50 len 14]:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) + (1000 * mem[_1836 + 50 len 14])
                                require idx + 1 < mem[_897]
                                mem[(32 * idx + 1) + _897 + 32] = 0 / (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) + (1000 * mem[_1836 + 50 len 14])
                        else:
                            if (1000 * mem[(32 * idx) + _897 + 32] * mem[_1836 + 18 len 14]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32] * mem[_1836 + 18 len 14]) / (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) != mem[_1836 + 18 len 14]:
                                revert with 0, 'SafeMath#mul: OVERFLOW'
                            if not mem[_1836 + 50 len 14]:
                                if (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) < 0:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32])
                                require idx + 1 < mem[_897]
                                mem[(32 * idx + 1) + _897 + 32] = (1000 * mem[(32 * idx) + _897 + 32] * mem[_1836 + 18 len 14]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32] * mem[_1836 + 18 len 14]) / (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32])
                            else:
                                if 1000 * mem[_1836 + 50 len 14] / mem[_1836 + 50 len 14] != 1000:
                                    revert with 0, 'SafeMath#mul: OVERFLOW'
                                if (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) + (1000 * mem[_1836 + 50 len 14]) < 1000 * mem[_1836 + 50 len 14]:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) + (1000 * mem[_1836 + 50 len 14])
                                require idx + 1 < mem[_897]
                                mem[(32 * idx + 1) + _897 + 32] = (1000 * mem[(32 * idx) + _897 + 32] * mem[_1836 + 18 len 14]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32] * mem[_1836 + 18 len 14]) / (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) + (1000 * mem[_1836 + 50 len 14])
            else:
                _1837 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_1837] == mem[_1837 + 18 len 14]
                require mem[_1837 + 32] == mem[_1837 + 50 len 14]
                require mem[_1837 + 64] == mem[_1837 + 92 len 4]
                require idx < mem[_897]
                require idx < mem[ceil32(return_data.size) + 192]
                if address(_1790) == address(_1804):
                    if not mem[(32 * idx) + _897 + 32]:
                        require mem[_1837 + 18 len 14]
                        if 1000 * mem[_1837 + 18 len 14] / mem[_1837 + 18 len 14] != 1000:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if 1000 * mem[_1837 + 18 len 14] < 1000 * mem[_1837 + 18 len 14]:
                            revert with 0, 'SafeMath#add: OVERFLOW'
                        require 1000 * mem[_1837 + 18 len 14]
                        require idx + 1 < mem[_897]
                        mem[(32 * idx + 1) + _897 + 32] = 0 / 1000 * mem[_1837 + 18 len 14]
                    else:
                        if (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) / mem[(32 * idx) + _897 + 32] != -mem[(32 * idx) + ceil32(return_data.size) + 224] + 1000:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if not (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]):
                            if not mem[_1837 + 18 len 14]:
                                if (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) < 0:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32])
                                require idx + 1 < mem[_897]
                                mem[(32 * idx + 1) + _897 + 32] = 0 / (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32])
                            else:
                                if 1000 * mem[_1837 + 18 len 14] / mem[_1837 + 18 len 14] != 1000:
                                    revert with 0, 'SafeMath#mul: OVERFLOW'
                                if (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) + (1000 * mem[_1837 + 18 len 14]) < 1000 * mem[_1837 + 18 len 14]:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) + (1000 * mem[_1837 + 18 len 14])
                                require idx + 1 < mem[_897]
                                mem[(32 * idx + 1) + _897 + 32] = 0 / (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) + (1000 * mem[_1837 + 18 len 14])
                        else:
                            if (1000 * mem[(32 * idx) + _897 + 32] * mem[_1837 + 50 len 14]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32] * mem[_1837 + 50 len 14]) / (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) != mem[_1837 + 50 len 14]:
                                revert with 0, 'SafeMath#mul: OVERFLOW'
                            if not mem[_1837 + 18 len 14]:
                                if (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) < 0:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32])
                                require idx + 1 < mem[_897]
                                mem[(32 * idx + 1) + _897 + 32] = (1000 * mem[(32 * idx) + _897 + 32] * mem[_1837 + 50 len 14]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32] * mem[_1837 + 50 len 14]) / (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32])
                            else:
                                if 1000 * mem[_1837 + 18 len 14] / mem[_1837 + 18 len 14] != 1000:
                                    revert with 0, 'SafeMath#mul: OVERFLOW'
                                if (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) + (1000 * mem[_1837 + 18 len 14]) < 1000 * mem[_1837 + 18 len 14]:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) + (1000 * mem[_1837 + 18 len 14])
                                require idx + 1 < mem[_897]
                                mem[(32 * idx + 1) + _897 + 32] = (1000 * mem[(32 * idx) + _897 + 32] * mem[_1837 + 50 len 14]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32] * mem[_1837 + 50 len 14]) / (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) + (1000 * mem[_1837 + 18 len 14])
                else:
                    if not mem[(32 * idx) + _897 + 32]:
                        require mem[_1837 + 50 len 14]
                        if 1000 * mem[_1837 + 50 len 14] / mem[_1837 + 50 len 14] != 1000:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if 1000 * mem[_1837 + 50 len 14] < 1000 * mem[_1837 + 50 len 14]:
                            revert with 0, 'SafeMath#add: OVERFLOW'
                        require 1000 * mem[_1837 + 50 len 14]
                        require idx + 1 < mem[_897]
                        mem[(32 * idx + 1) + _897 + 32] = 0 / 1000 * mem[_1837 + 50 len 14]
                    else:
                        if (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) / mem[(32 * idx) + _897 + 32] != -mem[(32 * idx) + ceil32(return_data.size) + 224] + 1000:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if not (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]):
                            if not mem[_1837 + 50 len 14]:
                                if (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) < 0:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32])
                                require idx + 1 < mem[_897]
                                mem[(32 * idx + 1) + _897 + 32] = 0 / (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32])
                            else:
                                if 1000 * mem[_1837 + 50 len 14] / mem[_1837 + 50 len 14] != 1000:
                                    revert with 0, 'SafeMath#mul: OVERFLOW'
                                if (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) + (1000 * mem[_1837 + 50 len 14]) < 1000 * mem[_1837 + 50 len 14]:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) + (1000 * mem[_1837 + 50 len 14])
                                require idx + 1 < mem[_897]
                                mem[(32 * idx + 1) + _897 + 32] = 0 / (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) + (1000 * mem[_1837 + 50 len 14])
                        else:
                            if (1000 * mem[(32 * idx) + _897 + 32] * mem[_1837 + 18 len 14]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32] * mem[_1837 + 18 len 14]) / (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) != mem[_1837 + 18 len 14]:
                                revert with 0, 'SafeMath#mul: OVERFLOW'
                            if not mem[_1837 + 50 len 14]:
                                if (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) < 0:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32])
                                require idx + 1 < mem[_897]
                                mem[(32 * idx + 1) + _897 + 32] = (1000 * mem[(32 * idx) + _897 + 32] * mem[_1837 + 18 len 14]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32] * mem[_1837 + 18 len 14]) / (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32])
                            else:
                                if 1000 * mem[_1837 + 50 len 14] / mem[_1837 + 50 len 14] != 1000:
                                    revert with 0, 'SafeMath#mul: OVERFLOW'
                                if (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) + (1000 * mem[_1837 + 50 len 14]) < 1000 * mem[_1837 + 50 len 14]:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) + (1000 * mem[_1837 + 50 len 14])
                                require idx + 1 < mem[_897]
                                mem[(32 * idx + 1) + _897 + 32] = (1000 * mem[(32 * idx) + _897 + 32] * mem[_1837 + 18 len 14]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32] * mem[_1837 + 18 len 14]) / (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) + (1000 * mem[_1837 + 50 len 14])
            _1762 = mem[ceil32(return_data.size) + 96]
            idx = idx + 1
            continue 
        require 0 < mem[ceil32(return_data.size) + 96]
        _1788 = mem[ceil32(return_data.size) + 128]
        require 0 < mem[ceil32(return_data.size) + 320]
        _1802 = mem[ceil32(return_data.size) + 352]
        require 0 < mem[_897]
        _1810 = mem[_897 + 32]
        _1814 = mem[64]
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = address(_1802)
        mem[mem[64] + 100] = _1810
        _1862 = mem[64]
        mem[mem[64]] = 100
        mem[64] = mem[64] + 132
        mem[_1862 + 32 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
        _1870 = mem[_1862]
        mem[_1814 + 132 len ceil32(mem[_1862])] = mem[_1862 + 32 len ceil32(mem[_1862])]
        if ceil32(_1870) <= _1870:
            call address(_1788) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _1870 + _1814 + -mem[64] + 128]
            if not return_data.size:
                if not ext_call.success:
                    mem[mem[64]] = 32
                    _2712 = mem[_897]
                    mem[mem[64] + 32] = mem[_897]
                    mem[mem[64] + 64 len 32 * _2712] = mem[_897 + 32 len 32 * _2712]
                    var149001 = _2712
                    return 32, mem[mem[64] + 32 len (32 * _2712) + 32]
                if not mem[96]:
                    mem[mem[64]] = 32
                    _2728 = mem[_897]
                    mem[mem[64] + 32] = mem[_897]
                    mem[mem[64] + 64 len 32 * _2728] = mem[_897 + 32 len 32 * _2728]
                    return 32, mem[mem[64] + 32 len (32 * _2728) + 32]
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                mem[mem[64]] = 32
                _2824 = mem[_897]
                mem[mem[64] + 32] = mem[_897]
                mem[mem[64] + 64 len 32 * _2824] = mem[_897 + 32 len 32 * _2824]
                return 32, mem[mem[64] + 32 len (32 * _2824) + 32]
            _2620 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_2620] = return_data.size
            mem[_2620 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                mem[mem[64]] = 32
                _2713 = mem[_897]
                mem[mem[64] + 32] = mem[_897]
                mem[mem[64] + 64 len 32 * _2713] = mem[_897 + 32 len 32 * _2713]
                var149001 = _2713
                return 32, mem[mem[64] + 32 len (32 * _2713) + 32]
            if not return_data.size:
                mem[mem[64]] = 32
                _2729 = mem[_897]
                mem[mem[64] + 32] = mem[_897]
                mem[mem[64] + 64 len 32 * _2729] = mem[_897 + 32 len 32 * _2729]
                return 32, mem[mem[64] + 32 len (32 * _2729) + 32]
            require return_data.size >= 32
            require mem[_2620 + 32] == bool(mem[_2620 + 32])
            mem[mem[64]] = 32
            _2825 = mem[_897]
            mem[mem[64] + 32] = mem[_897]
            mem[mem[64] + 64 len 32 * _2825] = mem[_897 + 32 len 32 * _2825]
            return 32, mem[mem[64] + 32 len (32 * _2825) + 32]
        mem[_1870 + _1814 + 132] = 0
        call address(_1788) with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _1870 + _1814 + -mem[64] + 128]
        if not return_data.size:
            if not ext_call.success:
                mem[mem[64]] = 32
                _2714 = mem[_897]
                mem[mem[64] + 32] = mem[_897]
                mem[mem[64] + 64 len 32 * _2714] = mem[_897 + 32 len 32 * _2714]
                var149001 = _2714
                return 32, mem[mem[64] + 32 len (32 * _2714) + 32]
            if not mem[96]:
                mem[mem[64]] = 32
                _2730 = mem[_897]
                mem[mem[64] + 32] = mem[_897]
                mem[mem[64] + 64 len 32 * _2730] = mem[_897 + 32 len 32 * _2730]
                return 32, mem[mem[64] + 32 len (32 * _2730) + 32]
            require mem[96] >= 32
            require mem[128] == bool(mem[128])
            mem[mem[64]] = 32
            _2826 = mem[_897]
            mem[mem[64] + 32] = mem[_897]
            mem[mem[64] + 64 len 32 * _2826] = mem[_897 + 32 len 32 * _2826]
            return 32, mem[mem[64] + 32 len (32 * _2826) + 32]
        _2621 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_2621] = return_data.size
        mem[_2621 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            mem[mem[64]] = 32
            _2715 = mem[_897]
            mem[mem[64] + 32] = mem[_897]
            mem[mem[64] + 64 len 32 * _2715] = mem[_897 + 32 len 32 * _2715]
            var149001 = _2715
            return 32, mem[mem[64] + 32 len (32 * _2715) + 32]
        if not return_data.size:
            mem[mem[64]] = 32
            _2731 = mem[_897]
            mem[mem[64] + 32] = mem[_897]
            mem[mem[64] + 64 len 32 * _2731] = mem[_897 + 32 len 32 * _2731]
            return 32, mem[mem[64] + 32 len (32 * _2731) + 32]
        require return_data.size >= 32
        require mem[_2621 + 32] == bool(mem[_2621 + 32])
        mem[mem[64]] = 32
        _2827 = mem[_897]
        mem[mem[64] + 32] = mem[_897]
        mem[mem[64] + 64 len 32 * _2827] = mem[_897 + 32 len 32 * _2827]
        return 32, mem[mem[64] + 32 len (32 * _2827) + 32]
    mem[_897 + 32 len 32 * _896] = code.data[8092 len 32 * _896]
    require 0 < mem[_897]
    mem[_897 + 32] = ext_call.return_data[0]
    _1763 = mem[ceil32(return_data.size) + 96]
    idx = 0
    while idx < _1763 - 1:
        require idx < mem[ceil32(return_data.size) + 320]
        require idx < mem[ceil32(return_data.size) + 96]
        _1794 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        require idx + 1 < mem[ceil32(return_data.size) + 96]
        _1807 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
        require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 364 len 20])
        staticcall mem[(32 * idx) + ceil32(return_data.size) + 364 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[(32 * idx) + ceil32(return_data.size) + 140 len 20] < mem[(32 * idx + 1) + ceil32(return_data.size) + 140 len 20]:
            _1838 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_1838] == mem[_1838 + 18 len 14]
            require mem[_1838 + 32] == mem[_1838 + 50 len 14]
            require mem[_1838 + 64] == mem[_1838 + 92 len 4]
            require idx < mem[_897]
            require idx < mem[ceil32(return_data.size) + 192]
            if address(_1794) == address(_1794):
                if not mem[(32 * idx) + _897 + 32]:
                    require mem[_1838 + 18 len 14]
                    if 1000 * mem[_1838 + 18 len 14] / mem[_1838 + 18 len 14] != 1000:
                        revert with 0, 'SafeMath#mul: OVERFLOW'
                    if 1000 * mem[_1838 + 18 len 14] < 1000 * mem[_1838 + 18 len 14]:
                        revert with 0, 'SafeMath#add: OVERFLOW'
                    require 1000 * mem[_1838 + 18 len 14]
                    require idx + 1 < mem[_897]
                    mem[(32 * idx + 1) + _897 + 32] = 0 / 1000 * mem[_1838 + 18 len 14]
                else:
                    if (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) / mem[(32 * idx) + _897 + 32] != -mem[(32 * idx) + ceil32(return_data.size) + 224] + 1000:
                        revert with 0, 'SafeMath#mul: OVERFLOW'
                    if not (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]):
                        if not mem[_1838 + 18 len 14]:
                            if (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) < 0:
                                revert with 0, 'SafeMath#add: OVERFLOW'
                            require (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32])
                            require idx + 1 < mem[_897]
                            mem[(32 * idx + 1) + _897 + 32] = 0 / (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32])
                        else:
                            if 1000 * mem[_1838 + 18 len 14] / mem[_1838 + 18 len 14] != 1000:
                                revert with 0, 'SafeMath#mul: OVERFLOW'
                            if (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) + (1000 * mem[_1838 + 18 len 14]) < 1000 * mem[_1838 + 18 len 14]:
                                revert with 0, 'SafeMath#add: OVERFLOW'
                            require (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) + (1000 * mem[_1838 + 18 len 14])
                            require idx + 1 < mem[_897]
                            mem[(32 * idx + 1) + _897 + 32] = 0 / (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) + (1000 * mem[_1838 + 18 len 14])
                    else:
                        if (1000 * mem[(32 * idx) + _897 + 32] * mem[_1838 + 50 len 14]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32] * mem[_1838 + 50 len 14]) / (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) != mem[_1838 + 50 len 14]:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if not mem[_1838 + 18 len 14]:
                            if (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) < 0:
                                revert with 0, 'SafeMath#add: OVERFLOW'
                            require (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32])
                            require idx + 1 < mem[_897]
                            mem[(32 * idx + 1) + _897 + 32] = (1000 * mem[(32 * idx) + _897 + 32] * mem[_1838 + 50 len 14]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32] * mem[_1838 + 50 len 14]) / (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32])
                        else:
                            if 1000 * mem[_1838 + 18 len 14] / mem[_1838 + 18 len 14] != 1000:
                                revert with 0, 'SafeMath#mul: OVERFLOW'
                            if (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) + (1000 * mem[_1838 + 18 len 14]) < 1000 * mem[_1838 + 18 len 14]:
                                revert with 0, 'SafeMath#add: OVERFLOW'
                            require (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) + (1000 * mem[_1838 + 18 len 14])
                            require idx + 1 < mem[_897]
                            mem[(32 * idx + 1) + _897 + 32] = (1000 * mem[(32 * idx) + _897 + 32] * mem[_1838 + 50 len 14]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32] * mem[_1838 + 50 len 14]) / (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) + (1000 * mem[_1838 + 18 len 14])
            else:
                if not mem[(32 * idx) + _897 + 32]:
                    require mem[_1838 + 50 len 14]
                    if 1000 * mem[_1838 + 50 len 14] / mem[_1838 + 50 len 14] != 1000:
                        revert with 0, 'SafeMath#mul: OVERFLOW'
                    if 1000 * mem[_1838 + 50 len 14] < 1000 * mem[_1838 + 50 len 14]:
                        revert with 0, 'SafeMath#add: OVERFLOW'
                    require 1000 * mem[_1838 + 50 len 14]
                    require idx + 1 < mem[_897]
                    mem[(32 * idx + 1) + _897 + 32] = 0 / 1000 * mem[_1838 + 50 len 14]
                else:
                    if (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) / mem[(32 * idx) + _897 + 32] != -mem[(32 * idx) + ceil32(return_data.size) + 224] + 1000:
                        revert with 0, 'SafeMath#mul: OVERFLOW'
                    if not (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]):
                        if not mem[_1838 + 50 len 14]:
                            if (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) < 0:
                                revert with 0, 'SafeMath#add: OVERFLOW'
                            require (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32])
                            require idx + 1 < mem[_897]
                            mem[(32 * idx + 1) + _897 + 32] = 0 / (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32])
                        else:
                            if 1000 * mem[_1838 + 50 len 14] / mem[_1838 + 50 len 14] != 1000:
                                revert with 0, 'SafeMath#mul: OVERFLOW'
                            if (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) + (1000 * mem[_1838 + 50 len 14]) < 1000 * mem[_1838 + 50 len 14]:
                                revert with 0, 'SafeMath#add: OVERFLOW'
                            require (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) + (1000 * mem[_1838 + 50 len 14])
                            require idx + 1 < mem[_897]
                            mem[(32 * idx + 1) + _897 + 32] = 0 / (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) + (1000 * mem[_1838 + 50 len 14])
                    else:
                        if (1000 * mem[(32 * idx) + _897 + 32] * mem[_1838 + 18 len 14]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32] * mem[_1838 + 18 len 14]) / (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) != mem[_1838 + 18 len 14]:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if not mem[_1838 + 50 len 14]:
                            if (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) < 0:
                                revert with 0, 'SafeMath#add: OVERFLOW'
                            require (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32])
                            require idx + 1 < mem[_897]
                            mem[(32 * idx + 1) + _897 + 32] = (1000 * mem[(32 * idx) + _897 + 32] * mem[_1838 + 18 len 14]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32] * mem[_1838 + 18 len 14]) / (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32])
                        else:
                            if 1000 * mem[_1838 + 50 len 14] / mem[_1838 + 50 len 14] != 1000:
                                revert with 0, 'SafeMath#mul: OVERFLOW'
                            if (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) + (1000 * mem[_1838 + 50 len 14]) < 1000 * mem[_1838 + 50 len 14]:
                                revert with 0, 'SafeMath#add: OVERFLOW'
                            require (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) + (1000 * mem[_1838 + 50 len 14])
                            require idx + 1 < mem[_897]
                            mem[(32 * idx + 1) + _897 + 32] = (1000 * mem[(32 * idx) + _897 + 32] * mem[_1838 + 18 len 14]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32] * mem[_1838 + 18 len 14]) / (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) + (1000 * mem[_1838 + 50 len 14])
        else:
            _1839 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_1839] == mem[_1839 + 18 len 14]
            require mem[_1839 + 32] == mem[_1839 + 50 len 14]
            require mem[_1839 + 64] == mem[_1839 + 92 len 4]
            require idx < mem[_897]
            require idx < mem[ceil32(return_data.size) + 192]
            if address(_1794) == address(_1807):
                if not mem[(32 * idx) + _897 + 32]:
                    require mem[_1839 + 18 len 14]
                    if 1000 * mem[_1839 + 18 len 14] / mem[_1839 + 18 len 14] != 1000:
                        revert with 0, 'SafeMath#mul: OVERFLOW'
                    if 1000 * mem[_1839 + 18 len 14] < 1000 * mem[_1839 + 18 len 14]:
                        revert with 0, 'SafeMath#add: OVERFLOW'
                    require 1000 * mem[_1839 + 18 len 14]
                    require idx + 1 < mem[_897]
                    mem[(32 * idx + 1) + _897 + 32] = 0 / 1000 * mem[_1839 + 18 len 14]
                else:
                    if (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) / mem[(32 * idx) + _897 + 32] != -mem[(32 * idx) + ceil32(return_data.size) + 224] + 1000:
                        revert with 0, 'SafeMath#mul: OVERFLOW'
                    if not (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]):
                        if not mem[_1839 + 18 len 14]:
                            if (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) < 0:
                                revert with 0, 'SafeMath#add: OVERFLOW'
                            require (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32])
                            require idx + 1 < mem[_897]
                            mem[(32 * idx + 1) + _897 + 32] = 0 / (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32])
                        else:
                            if 1000 * mem[_1839 + 18 len 14] / mem[_1839 + 18 len 14] != 1000:
                                revert with 0, 'SafeMath#mul: OVERFLOW'
                            if (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) + (1000 * mem[_1839 + 18 len 14]) < 1000 * mem[_1839 + 18 len 14]:
                                revert with 0, 'SafeMath#add: OVERFLOW'
                            require (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) + (1000 * mem[_1839 + 18 len 14])
                            require idx + 1 < mem[_897]
                            mem[(32 * idx + 1) + _897 + 32] = 0 / (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) + (1000 * mem[_1839 + 18 len 14])
                    else:
                        if (1000 * mem[(32 * idx) + _897 + 32] * mem[_1839 + 50 len 14]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32] * mem[_1839 + 50 len 14]) / (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) != mem[_1839 + 50 len 14]:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if not mem[_1839 + 18 len 14]:
                            if (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) < 0:
                                revert with 0, 'SafeMath#add: OVERFLOW'
                            require (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32])
                            require idx + 1 < mem[_897]
                            mem[(32 * idx + 1) + _897 + 32] = (1000 * mem[(32 * idx) + _897 + 32] * mem[_1839 + 50 len 14]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32] * mem[_1839 + 50 len 14]) / (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32])
                        else:
                            if 1000 * mem[_1839 + 18 len 14] / mem[_1839 + 18 len 14] != 1000:
                                revert with 0, 'SafeMath#mul: OVERFLOW'
                            if (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) + (1000 * mem[_1839 + 18 len 14]) < 1000 * mem[_1839 + 18 len 14]:
                                revert with 0, 'SafeMath#add: OVERFLOW'
                            require (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) + (1000 * mem[_1839 + 18 len 14])
                            require idx + 1 < mem[_897]
                            mem[(32 * idx + 1) + _897 + 32] = (1000 * mem[(32 * idx) + _897 + 32] * mem[_1839 + 50 len 14]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32] * mem[_1839 + 50 len 14]) / (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) + (1000 * mem[_1839 + 18 len 14])
            else:
                if not mem[(32 * idx) + _897 + 32]:
                    require mem[_1839 + 50 len 14]
                    if 1000 * mem[_1839 + 50 len 14] / mem[_1839 + 50 len 14] != 1000:
                        revert with 0, 'SafeMath#mul: OVERFLOW'
                    if 1000 * mem[_1839 + 50 len 14] < 1000 * mem[_1839 + 50 len 14]:
                        revert with 0, 'SafeMath#add: OVERFLOW'
                    require 1000 * mem[_1839 + 50 len 14]
                    require idx + 1 < mem[_897]
                    mem[(32 * idx + 1) + _897 + 32] = 0 / 1000 * mem[_1839 + 50 len 14]
                else:
                    if (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) / mem[(32 * idx) + _897 + 32] != -mem[(32 * idx) + ceil32(return_data.size) + 224] + 1000:
                        revert with 0, 'SafeMath#mul: OVERFLOW'
                    if not (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]):
                        if not mem[_1839 + 50 len 14]:
                            if (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) < 0:
                                revert with 0, 'SafeMath#add: OVERFLOW'
                            require (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32])
                            require idx + 1 < mem[_897]
                            mem[(32 * idx + 1) + _897 + 32] = 0 / (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32])
                        else:
                            if 1000 * mem[_1839 + 50 len 14] / mem[_1839 + 50 len 14] != 1000:
                                revert with 0, 'SafeMath#mul: OVERFLOW'
                            if (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) + (1000 * mem[_1839 + 50 len 14]) < 1000 * mem[_1839 + 50 len 14]:
                                revert with 0, 'SafeMath#add: OVERFLOW'
                            require (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) + (1000 * mem[_1839 + 50 len 14])
                            require idx + 1 < mem[_897]
                            mem[(32 * idx + 1) + _897 + 32] = 0 / (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) + (1000 * mem[_1839 + 50 len 14])
                    else:
                        if (1000 * mem[(32 * idx) + _897 + 32] * mem[_1839 + 18 len 14]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32] * mem[_1839 + 18 len 14]) / (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) != mem[_1839 + 18 len 14]:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if not mem[_1839 + 50 len 14]:
                            if (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) < 0:
                                revert with 0, 'SafeMath#add: OVERFLOW'
                            require (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32])
                            require idx + 1 < mem[_897]
                            mem[(32 * idx + 1) + _897 + 32] = (1000 * mem[(32 * idx) + _897 + 32] * mem[_1839 + 18 len 14]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32] * mem[_1839 + 18 len 14]) / (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32])
                        else:
                            if 1000 * mem[_1839 + 50 len 14] / mem[_1839 + 50 len 14] != 1000:
                                revert with 0, 'SafeMath#mul: OVERFLOW'
                            if (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) + (1000 * mem[_1839 + 50 len 14]) < 1000 * mem[_1839 + 50 len 14]:
                                revert with 0, 'SafeMath#add: OVERFLOW'
                            require (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) + (1000 * mem[_1839 + 50 len 14])
                            require idx + 1 < mem[_897]
                            mem[(32 * idx + 1) + _897 + 32] = (1000 * mem[(32 * idx) + _897 + 32] * mem[_1839 + 18 len 14]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32] * mem[_1839 + 18 len 14]) / (1000 * mem[(32 * idx) + _897 + 32]) - (mem[(32 * idx) + ceil32(return_data.size) + 224] * mem[(32 * idx) + _897 + 32]) + (1000 * mem[_1839 + 50 len 14])
        _1763 = mem[ceil32(return_data.size) + 96]
        idx = idx + 1
        continue 
    require 0 < mem[ceil32(return_data.size) + 96]
    _1792 = mem[ceil32(return_data.size) + 128]
    require 0 < mem[ceil32(return_data.size) + 320]
    _1805 = mem[ceil32(return_data.size) + 352]
    require 0 < mem[_897]
    _1811 = mem[_897 + 32]
    _1815 = mem[64]
    mem[mem[64] + 36] = this.address
    mem[mem[64] + 68] = address(_1805)
    mem[mem[64] + 100] = _1811
    _1865 = mem[64]
    mem[mem[64]] = 100
    mem[64] = mem[64] + 132
    mem[_1865 + 32 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
    _1871 = mem[_1865]
    mem[_1815 + 132 len ceil32(mem[_1865])] = mem[_1865 + 32 len ceil32(mem[_1865])]
    if ceil32(_1871) <= _1871:
        call address(_1792) with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _1871 + _1815 + -mem[64] + 128]
        if not return_data.size:
            if not ext_call.success:
                mem[mem[64]] = 32
                _2716 = mem[_897]
                mem[mem[64] + 32] = mem[_897]
                mem[mem[64] + 64 len 32 * _2716] = mem[_897 + 32 len 32 * _2716]
                return 32, mem[mem[64] + 32 len (32 * _2716) + 32]
            if not mem[96]:
                mem[mem[64]] = 32
                _2732 = mem[_897]
                mem[mem[64] + 32] = mem[_897]
                mem[mem[64] + 64 len 32 * _2732] = mem[_897 + 32 len 32 * _2732]
                return 32, mem[mem[64] + 32 len (32 * _2732) + 32]
            require mem[96] >= 32
            require mem[128] == bool(mem[128])
            mem[mem[64]] = 32
            _2828 = mem[_897]
            mem[mem[64] + 32] = mem[_897]
            mem[mem[64] + 64 len 32 * _2828] = mem[_897 + 32 len 32 * _2828]
            return 32, mem[mem[64] + 32 len (32 * _2828) + 32]
        _2622 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_2622] = return_data.size
        mem[_2622 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            mem[mem[64]] = 32
            _2717 = mem[_897]
            mem[mem[64] + 32] = mem[_897]
            mem[mem[64] + 64 len 32 * _2717] = mem[_897 + 32 len 32 * _2717]
            return 32, mem[mem[64] + 32 len (32 * _2717) + 32]
        if not return_data.size:
            mem[mem[64]] = 32
            _2733 = mem[_897]
            mem[mem[64] + 32] = mem[_897]
            mem[mem[64] + 64 len 32 * _2733] = mem[_897 + 32 len 32 * _2733]
            return 32, mem[mem[64] + 32 len (32 * _2733) + 32]
        require return_data.size >= 32
        require mem[_2622 + 32] == bool(mem[_2622 + 32])
        mem[mem[64]] = 32
        _2829 = mem[_897]
        mem[mem[64] + 32] = mem[_897]
        mem[mem[64] + 64 len 32 * _2829] = mem[_897 + 32 len 32 * _2829]
        return 32, mem[mem[64] + 32 len (32 * _2829) + 32]
    mem[_1871 + _1815 + 132] = 0
    call address(_1792) with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _1871 + _1815 + -mem[64] + 128]
    if not return_data.size:
        if not ext_call.success:
            mem[mem[64]] = 32
            _2718 = mem[_897]
            mem[mem[64] + 32] = mem[_897]
            mem[mem[64] + 64 len 32 * _2718] = mem[_897 + 32 len 32 * _2718]
            return 32, mem[mem[64] + 32 len (32 * _2718) + 32]
        if not mem[96]:
            mem[mem[64]] = 32
            _2734 = mem[_897]
            mem[mem[64] + 32] = mem[_897]
            mem[mem[64] + 64 len 32 * _2734] = mem[_897 + 32 len 32 * _2734]
            return 32, mem[mem[64] + 32 len (32 * _2734) + 32]
        require mem[96] >= 32
        require mem[128] == bool(mem[128])
        mem[mem[64]] = 32
        _2830 = mem[_897]
        mem[mem[64] + 32] = mem[_897]
        mem[mem[64] + 64 len 32 * _2830] = mem[_897 + 32 len 32 * _2830]
        return 32, mem[mem[64] + 32 len (32 * _2830) + 32]
    _2623 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size) + 1
    mem[_2623] = return_data.size
    mem[_2623 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        mem[mem[64]] = 32
        _2719 = mem[_897]
        mem[mem[64] + 32] = mem[_897]
        mem[mem[64] + 64 len 32 * _2719] = mem[_897 + 32 len 32 * _2719]
        return 32, mem[mem[64] + 32 len (32 * _2719) + 32]
    if not return_data.size:
        mem[mem[64]] = 32
        _2735 = mem[_897]
        mem[mem[64] + 32] = mem[_897]
        mem[mem[64] + 64 len 32 * _2735] = mem[_897 + 32 len 32 * _2735]
        return 32, mem[mem[64] + 32 len (32 * _2735) + 32]
    require return_data.size >= 32
    require mem[_2623 + 32] == bool(mem[_2623 + 32])
    mem[mem[64]] = 32
    _2831 = mem[_897]
    mem[mem[64] + 32] = mem[_897]
    mem[mem[64] + 64 len 32 * _2831] = mem[_897 + 32 len 32 * _2831]
    return 32, mem[mem[64] + 32 len (32 * _2831) + 32]
}

function sub_bbd83fff(?) {
    require calldata.size - 4 >= 192
    require cd[4] == cd[4]
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    require ('cd', 164).length <= test266151307()
    require cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[96] = ('cd', 68).length
    mem[128 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
    mem[(32 * ('cd', 68).length) + 128] = ('cd', 100).length
    mem[(32 * ('cd', 68).length) + 160 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
    mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160] = ('cd', 132).length
    mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len 32 * ('cd', 132).length]
    mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] = ('cd', 68).length
    mem[64] = (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + 224
    if not ('cd', 68).length:
        require 0 < ('cd', 68).length
        mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = cd[4]
        idx = 0
        while idx < ('cd', 68).length - 1:
            require idx < mem[(32 * ('cd', 68).length) + 128]
            require idx < mem[96]
            _3711 = mem[(32 * idx) + 128]
            require idx + 1 < mem[96]
            _3717 = mem[(32 * idx + 1) + 128]
            require ext_code.size(mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20])
            staticcall mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                _3730 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_3730] == mem[_3730 + 18 len 14]
                require mem[_3730 + 32] == mem[_3730 + 50 len 14]
                require mem[_3730 + 64] == mem[_3730 + 92 len 4]
                require idx < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                if address(_3711) == address(_3711):
                    if not mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]:
                        require mem[_3730 + 18 len 14]
                        if 1000 * mem[_3730 + 18 len 14] / mem[_3730 + 18 len 14] != 1000:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if 1000 * mem[_3730 + 18 len 14] < 1000 * mem[_3730 + 18 len 14]:
                            revert with 0, 'SafeMath#add: OVERFLOW'
                        require 1000 * mem[_3730 + 18 len 14]
                        require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                        mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / 1000 * mem[_3730 + 18 len 14]
                    else:
                        if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) / mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] != -mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] + 1000:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if not (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]):
                            if not mem[_3730 + 18 len 14]:
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) < 0:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                            else:
                                if 1000 * mem[_3730 + 18 len 14] / mem[_3730 + 18 len 14] != 1000:
                                    revert with 0, 'SafeMath#mul: OVERFLOW'
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_3730 + 18 len 14]) < 1000 * mem[_3730 + 18 len 14]:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_3730 + 18 len 14])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_3730 + 18 len 14])
                        else:
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_3730 + 50 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_3730 + 50 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) != mem[_3730 + 50 len 14]:
                                revert with 0, 'SafeMath#mul: OVERFLOW'
                            if not mem[_3730 + 18 len 14]:
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) < 0:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_3730 + 50 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_3730 + 50 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                            else:
                                if 1000 * mem[_3730 + 18 len 14] / mem[_3730 + 18 len 14] != 1000:
                                    revert with 0, 'SafeMath#mul: OVERFLOW'
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_3730 + 18 len 14]) < 1000 * mem[_3730 + 18 len 14]:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_3730 + 18 len 14])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_3730 + 50 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_3730 + 50 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_3730 + 18 len 14])
                else:
                    if not mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]:
                        require mem[_3730 + 50 len 14]
                        if 1000 * mem[_3730 + 50 len 14] / mem[_3730 + 50 len 14] != 1000:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if 1000 * mem[_3730 + 50 len 14] < 1000 * mem[_3730 + 50 len 14]:
                            revert with 0, 'SafeMath#add: OVERFLOW'
                        require 1000 * mem[_3730 + 50 len 14]
                        require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                        mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / 1000 * mem[_3730 + 50 len 14]
                    else:
                        if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) / mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] != -mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] + 1000:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if not (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]):
                            if not mem[_3730 + 50 len 14]:
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) < 0:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                            else:
                                if 1000 * mem[_3730 + 50 len 14] / mem[_3730 + 50 len 14] != 1000:
                                    revert with 0, 'SafeMath#mul: OVERFLOW'
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_3730 + 50 len 14]) < 1000 * mem[_3730 + 50 len 14]:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_3730 + 50 len 14])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_3730 + 50 len 14])
                        else:
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_3730 + 18 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_3730 + 18 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) != mem[_3730 + 18 len 14]:
                                revert with 0, 'SafeMath#mul: OVERFLOW'
                            if not mem[_3730 + 50 len 14]:
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) < 0:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_3730 + 18 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_3730 + 18 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                            else:
                                if 1000 * mem[_3730 + 50 len 14] / mem[_3730 + 50 len 14] != 1000:
                                    revert with 0, 'SafeMath#mul: OVERFLOW'
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_3730 + 50 len 14]) < 1000 * mem[_3730 + 50 len 14]:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_3730 + 50 len 14])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_3730 + 18 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_3730 + 18 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_3730 + 50 len 14])
            else:
                _3731 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_3731] == mem[_3731 + 18 len 14]
                require mem[_3731 + 32] == mem[_3731 + 50 len 14]
                require mem[_3731 + 64] == mem[_3731 + 92 len 4]
                require idx < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
                if address(_3711) == address(_3717):
                    if not mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]:
                        require mem[_3731 + 18 len 14]
                        if 1000 * mem[_3731 + 18 len 14] / mem[_3731 + 18 len 14] != 1000:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if 1000 * mem[_3731 + 18 len 14] < 1000 * mem[_3731 + 18 len 14]:
                            revert with 0, 'SafeMath#add: OVERFLOW'
                        require 1000 * mem[_3731 + 18 len 14]
                        require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                        mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / 1000 * mem[_3731 + 18 len 14]
                    else:
                        if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) / mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] != -mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] + 1000:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if not (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]):
                            if not mem[_3731 + 18 len 14]:
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) < 0:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                            else:
                                if 1000 * mem[_3731 + 18 len 14] / mem[_3731 + 18 len 14] != 1000:
                                    revert with 0, 'SafeMath#mul: OVERFLOW'
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_3731 + 18 len 14]) < 1000 * mem[_3731 + 18 len 14]:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_3731 + 18 len 14])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_3731 + 18 len 14])
                        else:
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_3731 + 50 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_3731 + 50 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) != mem[_3731 + 50 len 14]:
                                revert with 0, 'SafeMath#mul: OVERFLOW'
                            if not mem[_3731 + 18 len 14]:
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) < 0:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_3731 + 50 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_3731 + 50 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                            else:
                                if 1000 * mem[_3731 + 18 len 14] / mem[_3731 + 18 len 14] != 1000:
                                    revert with 0, 'SafeMath#mul: OVERFLOW'
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_3731 + 18 len 14]) < 1000 * mem[_3731 + 18 len 14]:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_3731 + 18 len 14])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_3731 + 50 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_3731 + 50 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_3731 + 18 len 14])
                else:
                    if not mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]:
                        require mem[_3731 + 50 len 14]
                        if 1000 * mem[_3731 + 50 len 14] / mem[_3731 + 50 len 14] != 1000:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if 1000 * mem[_3731 + 50 len 14] < 1000 * mem[_3731 + 50 len 14]:
                            revert with 0, 'SafeMath#add: OVERFLOW'
                        require 1000 * mem[_3731 + 50 len 14]
                        require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                        mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / 1000 * mem[_3731 + 50 len 14]
                    else:
                        if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) / mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] != -mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] + 1000:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if not (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]):
                            if not mem[_3731 + 50 len 14]:
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) < 0:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                            else:
                                if 1000 * mem[_3731 + 50 len 14] / mem[_3731 + 50 len 14] != 1000:
                                    revert with 0, 'SafeMath#mul: OVERFLOW'
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_3731 + 50 len 14]) < 1000 * mem[_3731 + 50 len 14]:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_3731 + 50 len 14])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_3731 + 50 len 14])
                        else:
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_3731 + 18 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_3731 + 18 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) != mem[_3731 + 18 len 14]:
                                revert with 0, 'SafeMath#mul: OVERFLOW'
                            if not mem[_3731 + 50 len 14]:
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) < 0:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_3731 + 18 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_3731 + 18 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                            else:
                                if 1000 * mem[_3731 + 50 len 14] / mem[_3731 + 50 len 14] != 1000:
                                    revert with 0, 'SafeMath#mul: OVERFLOW'
                                if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_3731 + 50 len 14]) < 1000 * mem[_3731 + 50 len 14]:
                                    revert with 0, 'SafeMath#add: OVERFLOW'
                                require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_3731 + 50 len 14])
                                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_3731 + 18 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_3731 + 18 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_3731 + 50 len 14])
            idx = idx + 1
            continue 
        require mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] - 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
        if mem[(32 * mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] - 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] < cd[36]:
            revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
        require 0 < ('cd', 68).length
        require ('cd', 68)[0] == address(('cd', 68)[0])
        require 0 < ('cd', 100).length
        require ('cd', 100)[0] == address(('cd', 100)[0])
        require 0 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
        _3748 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
        _3750 = mem[64]
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = address(('cd', 100)[0])
        mem[mem[64] + 100] = _3748
        _3792 = mem[64]
        mem[mem[64]] = 100
        mem[64] = mem[64] + 132
        mem[_3792 + 32 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
        _3814 = mem[_3792]
        mem[_3750 + 132 len ceil32(mem[_3792])] = mem[_3792 + 32 len ceil32(mem[_3792])]
        if ceil32(_3814) <= _3814:
            call address(('cd', 68)[0]) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _3814 + _3750 + -mem[64] + 128]
            if not return_data.size:
                if not ext_call.success:
                    _7412 = mem[64]
                    mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
                    mem[_7412] = ('cd', 68).length
                    mem[_7412 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                    mem[_7412 + (32 * ('cd', 68).length) + 32] = 0
                    _7413 = mem[64]
                    mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
                    mem[_7413] = ('cd', 100).length
                    mem[_7413 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                    mem[_7413 + (32 * ('cd', 100).length) + 32] = 0
                    _7414 = mem[64]
                    mem[64] = (32 * ('cd', 164).length) + mem[64] + 32
                    mem[_7414] = ('cd', 164).length
                    mem[_7414 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
                    mem[_7414 + (32 * ('cd', 164).length) + 32] = 0
                    idx = 0
                    while idx < ('cd', 68).length - 1:
                        require idx < mem[_7412]
                        require idx + 1 < mem[_7412]
                        require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                        if mem[(32 * idx) + _7412 + 44 len 20] < mem[(32 * idx + 1) + _7412 + 44 len 20]:
                            _10996 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                            if mem[(32 * idx) + _7412 + 44 len 20] == mem[(32 * idx) + _7412 + 44 len 20]:
                                if idx >= mem[_7412] - 2:
                                    require idx < mem[_7414]
                                    require idx < mem[_7413]
                                    if not mem[(32 * idx) + _7414 + 32]:
                                        _11935 = mem[(32 * idx) + _7413 + 32]
                                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = _10996
                                        mem[mem[64] + 68] = this.address
                                        require ext_code.size(address(_11935))
                                        call address(_11935).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _10996, this.address
                                    else:
                                        _11937 = mem[(32 * idx) + _7413 + 32]
                                        _11938 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_11938 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_11938 + 36] = 0
                                        mem[_11938 + 68] = _10996
                                        mem[_11938 + 100] = this.address
                                        mem[_11938 + 132] = 128
                                        mem[_11938 + 164] = mem[_11938]
                                        s = 0
                                        while s < mem[_11938]:
                                            mem[s + _11938 + 196] = mem[s + _11938 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_11938]) > mem[_11938]:
                                            mem[mem[_11938] + _11938 + 196] = 0
                                        require ext_code.size(address(_11937))
                                        call address(_11937).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _10996, address(this.address), 128, mem[_11938], mem[_11938 + 196 len ceil32(mem[_11938])]
                                else:
                                    require idx + 1 < mem[_7413]
                                    _11236 = mem[(32 * idx + 1) + _7413 + 32]
                                    require idx < mem[_7414]
                                    require idx < mem[_7413]
                                    if not mem[(32 * idx) + _7414 + 32]:
                                        _12532 = mem[(32 * idx) + _7413 + 32]
                                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = _10996
                                        mem[mem[64] + 68] = address(_11236)
                                        require ext_code.size(address(_12532))
                                        call address(_12532).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _10996, address(_11236)
                                    else:
                                        _12534 = mem[(32 * idx) + _7413 + 32]
                                        _12535 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_12535 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_12535 + 36] = 0
                                        mem[_12535 + 68] = _10996
                                        mem[_12535 + 100] = address(_11236)
                                        mem[_12535 + 132] = 128
                                        mem[_12535 + 164] = mem[_12535]
                                        s = 0
                                        while s < mem[_12535]:
                                            mem[s + _12535 + 196] = mem[s + _12535 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_12535]) > mem[_12535]:
                                            mem[mem[_12535] + _12535 + 196] = 0
                                        require ext_code.size(address(_12534))
                                        call address(_12534).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _10996, address(_11236), 128, mem[_12535], mem[_12535 + 196 len ceil32(mem[_12535])]
                            else:
                                if idx >= mem[_7412] - 2:
                                    require idx < mem[_7414]
                                    require idx < mem[_7413]
                                    if not mem[(32 * idx) + _7414 + 32]:
                                        _11941 = mem[(32 * idx) + _7413 + 32]
                                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _10996
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = this.address
                                        require ext_code.size(address(_11941))
                                        call address(_11941).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _10996, 0, this.address
                                    else:
                                        _11943 = mem[(32 * idx) + _7413 + 32]
                                        _11944 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_11944 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_11944 + 36] = _10996
                                        mem[_11944 + 68] = 0
                                        mem[_11944 + 100] = this.address
                                        mem[_11944 + 132] = 128
                                        mem[_11944 + 164] = mem[_11944]
                                        s = 0
                                        while s < mem[_11944]:
                                            mem[s + _11944 + 196] = mem[s + _11944 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_11944]) > mem[_11944]:
                                            mem[mem[_11944] + _11944 + 196] = 0
                                        require ext_code.size(address(_11943))
                                        call address(_11943).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _10996, 0, address(this.address), 128, mem[_11944], mem[_11944 + 196 len ceil32(mem[_11944])]
                                else:
                                    require idx + 1 < mem[_7413]
                                    _11238 = mem[(32 * idx + 1) + _7413 + 32]
                                    require idx < mem[_7414]
                                    require idx < mem[_7413]
                                    if not mem[(32 * idx) + _7414 + 32]:
                                        _12537 = mem[(32 * idx) + _7413 + 32]
                                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _10996
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = address(_11238)
                                        require ext_code.size(address(_12537))
                                        call address(_12537).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _10996, 0, address(_11238)
                                    else:
                                        _12539 = mem[(32 * idx) + _7413 + 32]
                                        _12540 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_12540 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_12540 + 36] = _10996
                                        mem[_12540 + 68] = 0
                                        mem[_12540 + 100] = address(_11238)
                                        mem[_12540 + 132] = 128
                                        mem[_12540 + 164] = mem[_12540]
                                        s = 0
                                        while s < mem[_12540]:
                                            mem[s + _12540 + 196] = mem[s + _12540 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_12540]) > mem[_12540]:
                                            mem[mem[_12540] + _12540 + 196] = 0
                                        require ext_code.size(address(_12539))
                                        call address(_12539).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _10996, 0, address(_11238), 128, mem[_12540], mem[_12540 + 196 len ceil32(mem[_12540])]
                        else:
                            _10997 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                            if mem[(32 * idx) + _7412 + 44 len 20] == mem[(32 * idx + 1) + _7412 + 44 len 20]:
                                if idx >= mem[_7412] - 2:
                                    require idx < mem[_7414]
                                    require idx < mem[_7413]
                                    if not mem[(32 * idx) + _7414 + 32]:
                                        _11947 = mem[(32 * idx) + _7413 + 32]
                                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = _10997
                                        mem[mem[64] + 68] = this.address
                                        require ext_code.size(address(_11947))
                                        call address(_11947).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _10997, this.address
                                    else:
                                        _11949 = mem[(32 * idx) + _7413 + 32]
                                        _11950 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_11950 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_11950 + 36] = 0
                                        mem[_11950 + 68] = _10997
                                        mem[_11950 + 100] = this.address
                                        mem[_11950 + 132] = 128
                                        mem[_11950 + 164] = mem[_11950]
                                        s = 0
                                        while s < mem[_11950]:
                                            mem[s + _11950 + 196] = mem[s + _11950 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_11950]) > mem[_11950]:
                                            mem[mem[_11950] + _11950 + 196] = 0
                                        require ext_code.size(address(_11949))
                                        call address(_11949).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _10997, address(this.address), 128, mem[_11950], mem[_11950 + 196 len ceil32(mem[_11950])]
                                else:
                                    require idx + 1 < mem[_7413]
                                    _11240 = mem[(32 * idx + 1) + _7413 + 32]
                                    require idx < mem[_7414]
                                    require idx < mem[_7413]
                                    if not mem[(32 * idx) + _7414 + 32]:
                                        _12542 = mem[(32 * idx) + _7413 + 32]
                                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = _10997
                                        mem[mem[64] + 68] = address(_11240)
                                        require ext_code.size(address(_12542))
                                        call address(_12542).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _10997, address(_11240)
                                    else:
                                        _12544 = mem[(32 * idx) + _7413 + 32]
                                        _12545 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_12545 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_12545 + 36] = 0
                                        mem[_12545 + 68] = _10997
                                        mem[_12545 + 100] = address(_11240)
                                        mem[_12545 + 132] = 128
                                        mem[_12545 + 164] = mem[_12545]
                                        s = 0
                                        while s < mem[_12545]:
                                            mem[s + _12545 + 196] = mem[s + _12545 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_12545]) > mem[_12545]:
                                            mem[mem[_12545] + _12545 + 196] = 0
                                        require ext_code.size(address(_12544))
                                        call address(_12544).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _10997, address(_11240), 128, mem[_12545], mem[_12545 + 196 len ceil32(mem[_12545])]
                            else:
                                if idx >= mem[_7412] - 2:
                                    require idx < mem[_7414]
                                    require idx < mem[_7413]
                                    if not mem[(32 * idx) + _7414 + 32]:
                                        _11953 = mem[(32 * idx) + _7413 + 32]
                                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _10997
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = this.address
                                        require ext_code.size(address(_11953))
                                        call address(_11953).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _10997, 0, this.address
                                    else:
                                        _11955 = mem[(32 * idx) + _7413 + 32]
                                        _11956 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_11956 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_11956 + 36] = _10997
                                        mem[_11956 + 68] = 0
                                        mem[_11956 + 100] = this.address
                                        mem[_11956 + 132] = 128
                                        mem[_11956 + 164] = mem[_11956]
                                        s = 0
                                        while s < mem[_11956]:
                                            mem[s + _11956 + 196] = mem[s + _11956 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_11956]) > mem[_11956]:
                                            mem[mem[_11956] + _11956 + 196] = 0
                                        require ext_code.size(address(_11955))
                                        call address(_11955).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _10997, 0, address(this.address), 128, mem[_11956], mem[_11956 + 196 len ceil32(mem[_11956])]
                                else:
                                    require idx + 1 < mem[_7413]
                                    _11242 = mem[(32 * idx + 1) + _7413 + 32]
                                    require idx < mem[_7414]
                                    require idx < mem[_7413]
                                    if not mem[(32 * idx) + _7414 + 32]:
                                        _12547 = mem[(32 * idx) + _7413 + 32]
                                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _10997
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = address(_11242)
                                        require ext_code.size(address(_12547))
                                        call address(_12547).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _10997, 0, address(_11242)
                                    else:
                                        _12549 = mem[(32 * idx) + _7413 + 32]
                                        _12550 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_12550 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_12550 + 36] = _10997
                                        mem[_12550 + 68] = 0
                                        mem[_12550 + 100] = address(_11242)
                                        mem[_12550 + 132] = 128
                                        mem[_12550 + 164] = mem[_12550]
                                        s = 0
                                        while s < mem[_12550]:
                                            mem[s + _12550 + 196] = mem[s + _12550 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_12550]) > mem[_12550]:
                                            mem[mem[_12550] + _12550 + 196] = 0
                                        require ext_code.size(address(_12549))
                                        call address(_12549).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _10997, 0, address(_11242), 128, mem[_12550], mem[_12550 + 196 len ceil32(mem[_12550])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 32
                    _10924 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                    mem[mem[64] + 32] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                    mem[mem[64] + 64 len 32 * _10924] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * _10924]
                    return 32, mem[mem[64] + 32 len (32 * _10924) + 32]
                if not mem[96]:
                    _7436 = mem[64]
                    mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
                    mem[_7436] = ('cd', 68).length
                    mem[_7436 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                    mem[_7436 + (32 * ('cd', 68).length) + 32] = 0
                    _7437 = mem[64]
                    mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
                    mem[_7437] = ('cd', 100).length
                    mem[_7437 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                    mem[_7437 + (32 * ('cd', 100).length) + 32] = 0
                    _7438 = mem[64]
                    mem[64] = (32 * ('cd', 164).length) + mem[64] + 32
                    mem[_7438] = ('cd', 164).length
                    mem[_7438 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
                    mem[_7438 + (32 * ('cd', 164).length) + 32] = 0
                    idx = 0
                    while idx < ('cd', 68).length - 1:
                        require idx < mem[_7436]
                        require idx + 1 < mem[_7436]
                        require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                        if mem[(32 * idx) + _7436 + 44 len 20] < mem[(32 * idx + 1) + _7436 + 44 len 20]:
                            _10998 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                            if mem[(32 * idx) + _7436 + 44 len 20] == mem[(32 * idx) + _7436 + 44 len 20]:
                                if idx >= mem[_7436] - 2:
                                    require idx < mem[_7438]
                                    require idx < mem[_7437]
                                    if not mem[(32 * idx) + _7438 + 32]:
                                        _11960 = mem[(32 * idx) + _7437 + 32]
                                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = _10998
                                        mem[mem[64] + 68] = this.address
                                        require ext_code.size(address(_11960))
                                        call address(_11960).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _10998, this.address
                                    else:
                                        _11962 = mem[(32 * idx) + _7437 + 32]
                                        _11963 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_11963 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_11963 + 36] = 0
                                        mem[_11963 + 68] = _10998
                                        mem[_11963 + 100] = this.address
                                        mem[_11963 + 132] = 128
                                        mem[_11963 + 164] = mem[_11963]
                                        s = 0
                                        while s < mem[_11963]:
                                            mem[s + _11963 + 196] = mem[s + _11963 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_11963]) > mem[_11963]:
                                            mem[mem[_11963] + _11963 + 196] = 0
                                        require ext_code.size(address(_11962))
                                        call address(_11962).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _10998, address(this.address), 128, mem[_11963], mem[_11963 + 196 len ceil32(mem[_11963])]
                                else:
                                    require idx + 1 < mem[_7437]
                                    _11244 = mem[(32 * idx + 1) + _7437 + 32]
                                    require idx < mem[_7438]
                                    require idx < mem[_7437]
                                    if not mem[(32 * idx) + _7438 + 32]:
                                        _12552 = mem[(32 * idx) + _7437 + 32]
                                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = _10998
                                        mem[mem[64] + 68] = address(_11244)
                                        require ext_code.size(address(_12552))
                                        call address(_12552).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _10998, address(_11244)
                                    else:
                                        _12554 = mem[(32 * idx) + _7437 + 32]
                                        _12555 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_12555 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_12555 + 36] = 0
                                        mem[_12555 + 68] = _10998
                                        mem[_12555 + 100] = address(_11244)
                                        mem[_12555 + 132] = 128
                                        mem[_12555 + 164] = mem[_12555]
                                        s = 0
                                        while s < mem[_12555]:
                                            mem[s + _12555 + 196] = mem[s + _12555 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_12555]) > mem[_12555]:
                                            mem[mem[_12555] + _12555 + 196] = 0
                                        require ext_code.size(address(_12554))
                                        call address(_12554).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _10998, address(_11244), 128, mem[_12555], mem[_12555 + 196 len ceil32(mem[_12555])]
                            else:
                                if idx >= mem[_7436] - 2:
                                    require idx < mem[_7438]
                                    require idx < mem[_7437]
                                    if not mem[(32 * idx) + _7438 + 32]:
                                        _11966 = mem[(32 * idx) + _7437 + 32]
                                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _10998
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = this.address
                                        require ext_code.size(address(_11966))
                                        call address(_11966).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _10998, 0, this.address
                                    else:
                                        _11968 = mem[(32 * idx) + _7437 + 32]
                                        _11969 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_11969 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_11969 + 36] = _10998
                                        mem[_11969 + 68] = 0
                                        mem[_11969 + 100] = this.address
                                        mem[_11969 + 132] = 128
                                        mem[_11969 + 164] = mem[_11969]
                                        s = 0
                                        while s < mem[_11969]:
                                            mem[s + _11969 + 196] = mem[s + _11969 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_11969]) > mem[_11969]:
                                            mem[mem[_11969] + _11969 + 196] = 0
                                        require ext_code.size(address(_11968))
                                        call address(_11968).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _10998, 0, address(this.address), 128, mem[_11969], mem[_11969 + 196 len ceil32(mem[_11969])]
                                else:
                                    require idx + 1 < mem[_7437]
                                    _11246 = mem[(32 * idx + 1) + _7437 + 32]
                                    require idx < mem[_7438]
                                    require idx < mem[_7437]
                                    if not mem[(32 * idx) + _7438 + 32]:
                                        _12557 = mem[(32 * idx) + _7437 + 32]
                                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _10998
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = address(_11246)
                                        require ext_code.size(address(_12557))
                                        call address(_12557).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _10998, 0, address(_11246)
                                    else:
                                        _12559 = mem[(32 * idx) + _7437 + 32]
                                        _12560 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_12560 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_12560 + 36] = _10998
                                        mem[_12560 + 68] = 0
                                        mem[_12560 + 100] = address(_11246)
                                        mem[_12560 + 132] = 128
                                        mem[_12560 + 164] = mem[_12560]
                                        s = 0
                                        while s < mem[_12560]:
                                            mem[s + _12560 + 196] = mem[s + _12560 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_12560]) > mem[_12560]:
                                            mem[mem[_12560] + _12560 + 196] = 0
                                        require ext_code.size(address(_12559))
                                        call address(_12559).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _10998, 0, address(_11246), 128, mem[_12560], mem[_12560 + 196 len ceil32(mem[_12560])]
                        else:
                            _10999 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                            if mem[(32 * idx) + _7436 + 44 len 20] == mem[(32 * idx + 1) + _7436 + 44 len 20]:
                                if idx >= mem[_7436] - 2:
                                    require idx < mem[_7438]
                                    require idx < mem[_7437]
                                    if not mem[(32 * idx) + _7438 + 32]:
                                        _11972 = mem[(32 * idx) + _7437 + 32]
                                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = _10999
                                        mem[mem[64] + 68] = this.address
                                        require ext_code.size(address(_11972))
                                        call address(_11972).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _10999, this.address
                                    else:
                                        _11974 = mem[(32 * idx) + _7437 + 32]
                                        _11975 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_11975 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_11975 + 36] = 0
                                        mem[_11975 + 68] = _10999
                                        mem[_11975 + 100] = this.address
                                        mem[_11975 + 132] = 128
                                        mem[_11975 + 164] = mem[_11975]
                                        s = 0
                                        while s < mem[_11975]:
                                            mem[s + _11975 + 196] = mem[s + _11975 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_11975]) > mem[_11975]:
                                            mem[mem[_11975] + _11975 + 196] = 0
                                        require ext_code.size(address(_11974))
                                        call address(_11974).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _10999, address(this.address), 128, mem[_11975], mem[_11975 + 196 len ceil32(mem[_11975])]
                                else:
                                    require idx + 1 < mem[_7437]
                                    _11248 = mem[(32 * idx + 1) + _7437 + 32]
                                    require idx < mem[_7438]
                                    require idx < mem[_7437]
                                    if not mem[(32 * idx) + _7438 + 32]:
                                        _12562 = mem[(32 * idx) + _7437 + 32]
                                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = _10999
                                        mem[mem[64] + 68] = address(_11248)
                                        require ext_code.size(address(_12562))
                                        call address(_12562).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args 0, _10999, address(_11248)
                                    else:
                                        _12564 = mem[(32 * idx) + _7437 + 32]
                                        _12565 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_12565 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_12565 + 36] = 0
                                        mem[_12565 + 68] = _10999
                                        mem[_12565 + 100] = address(_11248)
                                        mem[_12565 + 132] = 128
                                        mem[_12565 + 164] = mem[_12565]
                                        s = 0
                                        while s < mem[_12565]:
                                            mem[s + _12565 + 196] = mem[s + _12565 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_12565]) > mem[_12565]:
                                            mem[mem[_12565] + _12565 + 196] = 0
                                        require ext_code.size(address(_12564))
                                        call address(_12564).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _10999, address(_11248), 128, mem[_12565], mem[_12565 + 196 len ceil32(mem[_12565])]
                            else:
                                if idx >= mem[_7436] - 2:
                                    require idx < mem[_7438]
                                    require idx < mem[_7437]
                                    if not mem[(32 * idx) + _7438 + 32]:
                                        _11978 = mem[(32 * idx) + _7437 + 32]
                                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _10999
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = this.address
                                        require ext_code.size(address(_11978))
                                        call address(_11978).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _10999, 0, this.address
                                    else:
                                        _11980 = mem[(32 * idx) + _7437 + 32]
                                        _11981 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_11981 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_11981 + 36] = _10999
                                        mem[_11981 + 68] = 0
                                        mem[_11981 + 100] = this.address
                                        mem[_11981 + 132] = 128
                                        mem[_11981 + 164] = mem[_11981]
                                        s = 0
                                        while s < mem[_11981]:
                                            mem[s + _11981 + 196] = mem[s + _11981 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_11981]) > mem[_11981]:
                                            mem[mem[_11981] + _11981 + 196] = 0
                                        require ext_code.size(address(_11980))
                                        call address(_11980).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _10999, 0, address(this.address), 128, mem[_11981], mem[_11981 + 196 len ceil32(mem[_11981])]
                                else:
                                    require idx + 1 < mem[_7437]
                                    _11250 = mem[(32 * idx + 1) + _7437 + 32]
                                    require idx < mem[_7438]
                                    require idx < mem[_7437]
                                    if not mem[(32 * idx) + _7438 + 32]:
                                        _12567 = mem[(32 * idx) + _7437 + 32]
                                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _10999
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = address(_11250)
                                        require ext_code.size(address(_12567))
                                        call address(_12567).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                             gas gas_remaining wei
                                            args _10999, 0, address(_11250)
                                    else:
                                        _12569 = mem[(32 * idx) + _7437 + 32]
                                        _12570 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_12570 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_12570 + 36] = _10999
                                        mem[_12570 + 68] = 0
                                        mem[_12570 + 100] = address(_11250)
                                        mem[_12570 + 132] = 128
                                        mem[_12570 + 164] = mem[_12570]
                                        s = 0
                                        while s < mem[_12570]:
                                            mem[s + _12570 + 196] = mem[s + _12570 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_12570]) > mem[_12570]:
                                            mem[mem[_12570] + _12570 + 196] = 0
                                        require ext_code.size(address(_12569))
                                        call address(_12569).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _10999, 0, address(_11250), 128, mem[_12570], mem[_12570 + 196 len ceil32(mem[_12570])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 32
                    _10925 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                    mem[mem[64] + 32] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                    mem[mem[64] + 64 len 32 * _10925] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * _10925]
                    return 32, mem[mem[64] + 32 len (32 * _10925) + 32]
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                _7630 = mem[64]
                mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
                mem[_7630] = ('cd', 68).length
                mem[_7630 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                mem[_7630 + (32 * ('cd', 68).length) + 32] = 0
                _7631 = mem[64]
                mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
                mem[_7631] = ('cd', 100).length
                mem[_7631 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                mem[_7631 + (32 * ('cd', 100).length) + 32] = 0
                _7632 = mem[64]
                mem[64] = (32 * ('cd', 164).length) + mem[64] + 32
                mem[_7632] = ('cd', 164).length
                mem[_7632 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
                mem[_7632 + (32 * ('cd', 164).length) + 32] = 0
                idx = 0
                while idx < ('cd', 68).length - 1:
                    require idx < mem[_7630]
                    require idx + 1 < mem[_7630]
                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                    if mem[(32 * idx) + _7630 + 44 len 20] < mem[(32 * idx + 1) + _7630 + 44 len 20]:
                        _11000 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                        if mem[(32 * idx) + _7630 + 44 len 20] == mem[(32 * idx) + _7630 + 44 len 20]:
                            if idx >= mem[_7630] - 2:
                                require idx < mem[_7632]
                                require idx < mem[_7631]
                                if not mem[(32 * idx) + _7632 + 32]:
                                    _11985 = mem[(32 * idx) + _7631 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _11000
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_11985))
                                    call address(_11985).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _11000, this.address
                                else:
                                    _11987 = mem[(32 * idx) + _7631 + 32]
                                    _11988 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_11988 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_11988 + 36] = 0
                                    mem[_11988 + 68] = _11000
                                    mem[_11988 + 100] = this.address
                                    mem[_11988 + 132] = 128
                                    mem[_11988 + 164] = mem[_11988]
                                    s = 0
                                    while s < mem[_11988]:
                                        mem[s + _11988 + 196] = mem[s + _11988 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_11988]) > mem[_11988]:
                                        mem[mem[_11988] + _11988 + 196] = 0
                                    require ext_code.size(address(_11987))
                                    call address(_11987).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _11000, address(this.address), 128, mem[_11988], mem[_11988 + 196 len ceil32(mem[_11988])]
                            else:
                                require idx + 1 < mem[_7631]
                                _11252 = mem[(32 * idx + 1) + _7631 + 32]
                                require idx < mem[_7632]
                                require idx < mem[_7631]
                                if not mem[(32 * idx) + _7632 + 32]:
                                    _12572 = mem[(32 * idx) + _7631 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _11000
                                    mem[mem[64] + 68] = address(_11252)
                                    require ext_code.size(address(_12572))
                                    call address(_12572).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _11000, address(_11252)
                                else:
                                    _12574 = mem[(32 * idx) + _7631 + 32]
                                    _12575 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_12575 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_12575 + 36] = 0
                                    mem[_12575 + 68] = _11000
                                    mem[_12575 + 100] = address(_11252)
                                    mem[_12575 + 132] = 128
                                    mem[_12575 + 164] = mem[_12575]
                                    s = 0
                                    while s < mem[_12575]:
                                        mem[s + _12575 + 196] = mem[s + _12575 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_12575]) > mem[_12575]:
                                        mem[mem[_12575] + _12575 + 196] = 0
                                    require ext_code.size(address(_12574))
                                    call address(_12574).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _11000, address(_11252), 128, mem[_12575], mem[_12575 + 196 len ceil32(mem[_12575])]
                        else:
                            if idx >= mem[_7630] - 2:
                                require idx < mem[_7632]
                                require idx < mem[_7631]
                                if not mem[(32 * idx) + _7632 + 32]:
                                    _11991 = mem[(32 * idx) + _7631 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _11000
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_11991))
                                    call address(_11991).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _11000, 0, this.address
                                else:
                                    _11993 = mem[(32 * idx) + _7631 + 32]
                                    _11994 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_11994 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_11994 + 36] = _11000
                                    mem[_11994 + 68] = 0
                                    mem[_11994 + 100] = this.address
                                    mem[_11994 + 132] = 128
                                    mem[_11994 + 164] = mem[_11994]
                                    s = 0
                                    while s < mem[_11994]:
                                        mem[s + _11994 + 196] = mem[s + _11994 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_11994]) > mem[_11994]:
                                        mem[mem[_11994] + _11994 + 196] = 0
                                    require ext_code.size(address(_11993))
                                    call address(_11993).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _11000, 0, address(this.address), 128, mem[_11994], mem[_11994 + 196 len ceil32(mem[_11994])]
                            else:
                                require idx + 1 < mem[_7631]
                                _11254 = mem[(32 * idx + 1) + _7631 + 32]
                                require idx < mem[_7632]
                                require idx < mem[_7631]
                                if not mem[(32 * idx) + _7632 + 32]:
                                    _12577 = mem[(32 * idx) + _7631 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _11000
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_11254)
                                    require ext_code.size(address(_12577))
                                    call address(_12577).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _11000, 0, address(_11254)
                                else:
                                    _12579 = mem[(32 * idx) + _7631 + 32]
                                    _12580 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_12580 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_12580 + 36] = _11000
                                    mem[_12580 + 68] = 0
                                    mem[_12580 + 100] = address(_11254)
                                    mem[_12580 + 132] = 128
                                    mem[_12580 + 164] = mem[_12580]
                                    s = 0
                                    while s < mem[_12580]:
                                        mem[s + _12580 + 196] = mem[s + _12580 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_12580]) > mem[_12580]:
                                        mem[mem[_12580] + _12580 + 196] = 0
                                    require ext_code.size(address(_12579))
                                    call address(_12579).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _11000, 0, address(_11254), 128, mem[_12580], mem[_12580 + 196 len ceil32(mem[_12580])]
                    else:
                        _11001 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                        if mem[(32 * idx) + _7630 + 44 len 20] == mem[(32 * idx + 1) + _7630 + 44 len 20]:
                            if idx >= mem[_7630] - 2:
                                require idx < mem[_7632]
                                require idx < mem[_7631]
                                if not mem[(32 * idx) + _7632 + 32]:
                                    _11997 = mem[(32 * idx) + _7631 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _11001
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_11997))
                                    call address(_11997).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _11001, this.address
                                else:
                                    _11999 = mem[(32 * idx) + _7631 + 32]
                                    _12000 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_12000 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_12000 + 36] = 0
                                    mem[_12000 + 68] = _11001
                                    mem[_12000 + 100] = this.address
                                    mem[_12000 + 132] = 128
                                    mem[_12000 + 164] = mem[_12000]
                                    s = 0
                                    while s < mem[_12000]:
                                        mem[s + _12000 + 196] = mem[s + _12000 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_12000]) > mem[_12000]:
                                        mem[mem[_12000] + _12000 + 196] = 0
                                    require ext_code.size(address(_11999))
                                    call address(_11999).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _11001, address(this.address), 128, mem[_12000], mem[_12000 + 196 len ceil32(mem[_12000])]
                            else:
                                require idx + 1 < mem[_7631]
                                _11256 = mem[(32 * idx + 1) + _7631 + 32]
                                require idx < mem[_7632]
                                require idx < mem[_7631]
                                if not mem[(32 * idx) + _7632 + 32]:
                                    _12582 = mem[(32 * idx) + _7631 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _11001
                                    mem[mem[64] + 68] = address(_11256)
                                    require ext_code.size(address(_12582))
                                    call address(_12582).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _11001, address(_11256)
                                else:
                                    _12584 = mem[(32 * idx) + _7631 + 32]
                                    _12585 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_12585 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_12585 + 36] = 0
                                    mem[_12585 + 68] = _11001
                                    mem[_12585 + 100] = address(_11256)
                                    mem[_12585 + 132] = 128
                                    mem[_12585 + 164] = mem[_12585]
                                    s = 0
                                    while s < mem[_12585]:
                                        mem[s + _12585 + 196] = mem[s + _12585 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_12585]) > mem[_12585]:
                                        mem[mem[_12585] + _12585 + 196] = 0
                                    require ext_code.size(address(_12584))
                                    call address(_12584).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _11001, address(_11256), 128, mem[_12585], mem[_12585 + 196 len ceil32(mem[_12585])]
                        else:
                            if idx >= mem[_7630] - 2:
                                require idx < mem[_7632]
                                require idx < mem[_7631]
                                if not mem[(32 * idx) + _7632 + 32]:
                                    _12003 = mem[(32 * idx) + _7631 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _11001
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_12003))
                                    call address(_12003).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _11001, 0, this.address
                                else:
                                    _12005 = mem[(32 * idx) + _7631 + 32]
                                    _12006 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_12006 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_12006 + 36] = _11001
                                    mem[_12006 + 68] = 0
                                    mem[_12006 + 100] = this.address
                                    mem[_12006 + 132] = 128
                                    mem[_12006 + 164] = mem[_12006]
                                    s = 0
                                    while s < mem[_12006]:
                                        mem[s + _12006 + 196] = mem[s + _12006 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_12006]) > mem[_12006]:
                                        mem[mem[_12006] + _12006 + 196] = 0
                                    require ext_code.size(address(_12005))
                                    call address(_12005).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _11001, 0, address(this.address), 128, mem[_12006], mem[_12006 + 196 len ceil32(mem[_12006])]
                            else:
                                require idx + 1 < mem[_7631]
                                _11258 = mem[(32 * idx + 1) + _7631 + 32]
                                require idx < mem[_7632]
                                require idx < mem[_7631]
                                if not mem[(32 * idx) + _7632 + 32]:
                                    _12587 = mem[(32 * idx) + _7631 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _11001
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_11258)
                                    require ext_code.size(address(_12587))
                                    call address(_12587).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _11001, 0, address(_11258)
                                else:
                                    _12589 = mem[(32 * idx) + _7631 + 32]
                                    _12590 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_12590 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_12590 + 36] = _11001
                                    mem[_12590 + 68] = 0
                                    mem[_12590 + 100] = address(_11258)
                                    mem[_12590 + 132] = 128
                                    mem[_12590 + 164] = mem[_12590]
                                    s = 0
                                    while s < mem[_12590]:
                                        mem[s + _12590 + 196] = mem[s + _12590 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_12590]) > mem[_12590]:
                                        mem[mem[_12590] + _12590 + 196] = 0
                                    require ext_code.size(address(_12589))
                                    call address(_12589).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _11001, 0, address(_11258), 128, mem[_12590], mem[_12590 + 196 len ceil32(mem[_12590])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 32
                _10926 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                mem[mem[64] + 32] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                mem[mem[64] + 64 len 32 * _10926] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * _10926]
                return 32, mem[mem[64] + 32 len (32 * _10926) + 32]
            _7392 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_7392] = return_data.size
            mem[_7392 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                _7415 = mem[64]
                mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
                mem[_7415] = ('cd', 68).length
                mem[_7415 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                mem[_7415 + (32 * ('cd', 68).length) + 32] = 0
                _7416 = mem[64]
                mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
                mem[_7416] = ('cd', 100).length
                mem[_7416 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                mem[_7416 + (32 * ('cd', 100).length) + 32] = 0
                _7417 = mem[64]
                mem[64] = (32 * ('cd', 164).length) + mem[64] + 32
                mem[_7417] = ('cd', 164).length
                mem[_7417 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
                mem[_7417 + (32 * ('cd', 164).length) + 32] = 0
                idx = 0
                while idx < ('cd', 68).length - 1:
                    require idx < mem[_7415]
                    require idx + 1 < mem[_7415]
                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                    if mem[(32 * idx) + _7415 + 44 len 20] < mem[(32 * idx + 1) + _7415 + 44 len 20]:
                        _11002 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                        if mem[(32 * idx) + _7415 + 44 len 20] == mem[(32 * idx) + _7415 + 44 len 20]:
                            if idx >= mem[_7415] - 2:
                                require idx < mem[_7417]
                                require idx < mem[_7416]
                                if not mem[(32 * idx) + _7417 + 32]:
                                    _12010 = mem[(32 * idx) + _7416 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _11002
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_12010))
                                    call address(_12010).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _11002, this.address
                                else:
                                    _12012 = mem[(32 * idx) + _7416 + 32]
                                    _12013 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_12013 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_12013 + 36] = 0
                                    mem[_12013 + 68] = _11002
                                    mem[_12013 + 100] = this.address
                                    mem[_12013 + 132] = 128
                                    mem[_12013 + 164] = mem[_12013]
                                    s = 0
                                    while s < mem[_12013]:
                                        mem[s + _12013 + 196] = mem[s + _12013 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_12013]) > mem[_12013]:
                                        mem[mem[_12013] + _12013 + 196] = 0
                                    require ext_code.size(address(_12012))
                                    call address(_12012).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _11002, address(this.address), 128, mem[_12013], mem[_12013 + 196 len ceil32(mem[_12013])]
                            else:
                                require idx + 1 < mem[_7416]
                                _11260 = mem[(32 * idx + 1) + _7416 + 32]
                                require idx < mem[_7417]
                                require idx < mem[_7416]
                                if not mem[(32 * idx) + _7417 + 32]:
                                    _12592 = mem[(32 * idx) + _7416 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _11002
                                    mem[mem[64] + 68] = address(_11260)
                                    require ext_code.size(address(_12592))
                                    call address(_12592).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _11002, address(_11260)
                                else:
                                    _12594 = mem[(32 * idx) + _7416 + 32]
                                    _12595 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_12595 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_12595 + 36] = 0
                                    mem[_12595 + 68] = _11002
                                    mem[_12595 + 100] = address(_11260)
                                    mem[_12595 + 132] = 128
                                    mem[_12595 + 164] = mem[_12595]
                                    s = 0
                                    while s < mem[_12595]:
                                        mem[s + _12595 + 196] = mem[s + _12595 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_12595]) > mem[_12595]:
                                        mem[mem[_12595] + _12595 + 196] = 0
                                    require ext_code.size(address(_12594))
                                    call address(_12594).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _11002, address(_11260), 128, mem[_12595], mem[_12595 + 196 len ceil32(mem[_12595])]
                        else:
                            if idx >= mem[_7415] - 2:
                                require idx < mem[_7417]
                                require idx < mem[_7416]
                                if not mem[(32 * idx) + _7417 + 32]:
                                    _12016 = mem[(32 * idx) + _7416 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _11002
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_12016))
                                    call address(_12016).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _11002, 0, this.address
                                else:
                                    _12018 = mem[(32 * idx) + _7416 + 32]
                                    _12019 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_12019 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_12019 + 36] = _11002
                                    mem[_12019 + 68] = 0
                                    mem[_12019 + 100] = this.address
                                    mem[_12019 + 132] = 128
                                    mem[_12019 + 164] = mem[_12019]
                                    s = 0
                                    while s < mem[_12019]:
                                        mem[s + _12019 + 196] = mem[s + _12019 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_12019]) > mem[_12019]:
                                        mem[mem[_12019] + _12019 + 196] = 0
                                    require ext_code.size(address(_12018))
                                    call address(_12018).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _11002, 0, address(this.address), 128, mem[_12019], mem[_12019 + 196 len ceil32(mem[_12019])]
                            else:
                                require idx + 1 < mem[_7416]
                                _11262 = mem[(32 * idx + 1) + _7416 + 32]
                                require idx < mem[_7417]
                                require idx < mem[_7416]
                                if not mem[(32 * idx) + _7417 + 32]:
                                    _12597 = mem[(32 * idx) + _7416 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _11002
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_11262)
                                    require ext_code.size(address(_12597))
                                    call address(_12597).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _11002, 0, address(_11262)
                                else:
                                    _12599 = mem[(32 * idx) + _7416 + 32]
                                    _12600 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_12600 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_12600 + 36] = _11002
                                    mem[_12600 + 68] = 0
                                    mem[_12600 + 100] = address(_11262)
                                    mem[_12600 + 132] = 128
                                    mem[_12600 + 164] = mem[_12600]
                                    s = 0
                                    while s < mem[_12600]:
                                        mem[s + _12600 + 196] = mem[s + _12600 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_12600]) > mem[_12600]:
                                        mem[mem[_12600] + _12600 + 196] = 0
                                    require ext_code.size(address(_12599))
                                    call address(_12599).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _11002, 0, address(_11262), 128, mem[_12600], mem[_12600 + 196 len ceil32(mem[_12600])]
                    else:
                        _11003 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                        if mem[(32 * idx) + _7415 + 44 len 20] == mem[(32 * idx + 1) + _7415 + 44 len 20]:
                            if idx >= mem[_7415] - 2:
                                require idx < mem[_7417]
                                require idx < mem[_7416]
                                if not mem[(32 * idx) + _7417 + 32]:
                                    _12022 = mem[(32 * idx) + _7416 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _11003
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_12022))
                                    call address(_12022).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _11003, this.address
                                else:
                                    _12024 = mem[(32 * idx) + _7416 + 32]
                                    _12025 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_12025 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_12025 + 36] = 0
                                    mem[_12025 + 68] = _11003
                                    mem[_12025 + 100] = this.address
                                    mem[_12025 + 132] = 128
                                    mem[_12025 + 164] = mem[_12025]
                                    s = 0
                                    while s < mem[_12025]:
                                        mem[s + _12025 + 196] = mem[s + _12025 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_12025]) > mem[_12025]:
                                        mem[mem[_12025] + _12025 + 196] = 0
                                    require ext_code.size(address(_12024))
                                    call address(_12024).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _11003, address(this.address), 128, mem[_12025], mem[_12025 + 196 len ceil32(mem[_12025])]
                            else:
                                require idx + 1 < mem[_7416]
                                _11264 = mem[(32 * idx + 1) + _7416 + 32]
                                require idx < mem[_7417]
                                require idx < mem[_7416]
                                if not mem[(32 * idx) + _7417 + 32]:
                                    _12602 = mem[(32 * idx) + _7416 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _11003
                                    mem[mem[64] + 68] = address(_11264)
                                    require ext_code.size(address(_12602))
                                    call address(_12602).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _11003, address(_11264)
                                else:
                                    _12604 = mem[(32 * idx) + _7416 + 32]
                                    _12605 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_12605 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_12605 + 36] = 0
                                    mem[_12605 + 68] = _11003
                                    mem[_12605 + 100] = address(_11264)
                                    mem[_12605 + 132] = 128
                                    mem[_12605 + 164] = mem[_12605]
                                    s = 0
                                    while s < mem[_12605]:
                                        mem[s + _12605 + 196] = mem[s + _12605 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_12605]) > mem[_12605]:
                                        mem[mem[_12605] + _12605 + 196] = 0
                                    require ext_code.size(address(_12604))
                                    call address(_12604).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _11003, address(_11264), 128, mem[_12605], mem[_12605 + 196 len ceil32(mem[_12605])]
                        else:
                            if idx >= mem[_7415] - 2:
                                require idx < mem[_7417]
                                require idx < mem[_7416]
                                if not mem[(32 * idx) + _7417 + 32]:
                                    _12028 = mem[(32 * idx) + _7416 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _11003
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_12028))
                                    call address(_12028).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _11003, 0, this.address
                                else:
                                    _12030 = mem[(32 * idx) + _7416 + 32]
                                    _12031 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_12031 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_12031 + 36] = _11003
                                    mem[_12031 + 68] = 0
                                    mem[_12031 + 100] = this.address
                                    mem[_12031 + 132] = 128
                                    mem[_12031 + 164] = mem[_12031]
                                    s = 0
                                    while s < mem[_12031]:
                                        mem[s + _12031 + 196] = mem[s + _12031 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_12031]) > mem[_12031]:
                                        mem[mem[_12031] + _12031 + 196] = 0
                                    require ext_code.size(address(_12030))
                                    call address(_12030).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _11003, 0, address(this.address), 128, mem[_12031], mem[_12031 + 196 len ceil32(mem[_12031])]
                            else:
                                require idx + 1 < mem[_7416]
                                _11266 = mem[(32 * idx + 1) + _7416 + 32]
                                require idx < mem[_7417]
                                require idx < mem[_7416]
                                if not mem[(32 * idx) + _7417 + 32]:
                                    _12607 = mem[(32 * idx) + _7416 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _11003
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_11266)
                                    require ext_code.size(address(_12607))
                                    call address(_12607).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _11003, 0, address(_11266)
                                else:
                                    _12609 = mem[(32 * idx) + _7416 + 32]
                                    _12610 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_12610 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_12610 + 36] = _11003
                                    mem[_12610 + 68] = 0
                                    mem[_12610 + 100] = address(_11266)
                                    mem[_12610 + 132] = 128
                                    mem[_12610 + 164] = mem[_12610]
                                    s = 0
                                    while s < mem[_12610]:
                                        mem[s + _12610 + 196] = mem[s + _12610 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_12610]) > mem[_12610]:
                                        mem[mem[_12610] + _12610 + 196] = 0
                                    require ext_code.size(address(_12609))
                                    call address(_12609).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _11003, 0, address(_11266), 128, mem[_12610], mem[_12610 + 196 len ceil32(mem[_12610])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 32
                _10927 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                mem[mem[64] + 32] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                mem[mem[64] + 64 len 32 * _10927] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * _10927]
                return 32, mem[mem[64] + 32 len (32 * _10927) + 32]
            if not return_data.size:
                _7439 = mem[64]
                mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
                mem[_7439] = ('cd', 68).length
                mem[_7439 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                mem[_7439 + (32 * ('cd', 68).length) + 32] = 0
                _7440 = mem[64]
                mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
                mem[_7440] = ('cd', 100).length
                mem[_7440 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                mem[_7440 + (32 * ('cd', 100).length) + 32] = 0
                _7441 = mem[64]
                mem[64] = (32 * ('cd', 164).length) + mem[64] + 32
                mem[_7441] = ('cd', 164).length
                mem[_7441 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
                mem[_7441 + (32 * ('cd', 164).length) + 32] = 0
                idx = 0
                while idx < ('cd', 68).length - 1:
                    require idx < mem[_7439]
                    require idx + 1 < mem[_7439]
                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                    if mem[(32 * idx) + _7439 + 44 len 20] < mem[(32 * idx + 1) + _7439 + 44 len 20]:
                        _11004 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                        if mem[(32 * idx) + _7439 + 44 len 20] == mem[(32 * idx) + _7439 + 44 len 20]:
                            if idx >= mem[_7439] - 2:
                                require idx < mem[_7441]
                                require idx < mem[_7440]
                                if not mem[(32 * idx) + _7441 + 32]:
                                    _12035 = mem[(32 * idx) + _7440 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _11004
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_12035))
                                    call address(_12035).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _11004, this.address
                                else:
                                    _12037 = mem[(32 * idx) + _7440 + 32]
                                    _12038 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_12038 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_12038 + 36] = 0
                                    mem[_12038 + 68] = _11004
                                    mem[_12038 + 100] = this.address
                                    mem[_12038 + 132] = 128
                                    mem[_12038 + 164] = mem[_12038]
                                    s = 0
                                    while s < mem[_12038]:
                                        mem[s + _12038 + 196] = mem[s + _12038 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_12038]) > mem[_12038]:
                                        mem[mem[_12038] + _12038 + 196] = 0
                                    require ext_code.size(address(_12037))
                                    call address(_12037).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _11004, address(this.address), 128, mem[_12038], mem[_12038 + 196 len ceil32(mem[_12038])]
                            else:
                                require idx + 1 < mem[_7440]
                                _11268 = mem[(32 * idx + 1) + _7440 + 32]
                                require idx < mem[_7441]
                                require idx < mem[_7440]
                                if not mem[(32 * idx) + _7441 + 32]:
                                    _12612 = mem[(32 * idx) + _7440 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _11004
                                    mem[mem[64] + 68] = address(_11268)
                                    require ext_code.size(address(_12612))
                                    call address(_12612).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _11004, address(_11268)
                                else:
                                    _12614 = mem[(32 * idx) + _7440 + 32]
                                    _12615 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_12615 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_12615 + 36] = 0
                                    mem[_12615 + 68] = _11004
                                    mem[_12615 + 100] = address(_11268)
                                    mem[_12615 + 132] = 128
                                    mem[_12615 + 164] = mem[_12615]
                                    s = 0
                                    while s < mem[_12615]:
                                        mem[s + _12615 + 196] = mem[s + _12615 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_12615]) > mem[_12615]:
                                        mem[mem[_12615] + _12615 + 196] = 0
                                    require ext_code.size(address(_12614))
                                    call address(_12614).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _11004, address(_11268), 128, mem[_12615], mem[_12615 + 196 len ceil32(mem[_12615])]
                        else:
                            if idx >= mem[_7439] - 2:
                                require idx < mem[_7441]
                                require idx < mem[_7440]
                                if not mem[(32 * idx) + _7441 + 32]:
                                    _12041 = mem[(32 * idx) + _7440 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _11004
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_12041))
                                    call address(_12041).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _11004, 0, this.address
                                else:
                                    _12043 = mem[(32 * idx) + _7440 + 32]
                                    _12044 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_12044 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_12044 + 36] = _11004
                                    mem[_12044 + 68] = 0
                                    mem[_12044 + 100] = this.address
                                    mem[_12044 + 132] = 128
                                    mem[_12044 + 164] = mem[_12044]
                                    s = 0
                                    while s < mem[_12044]:
                                        mem[s + _12044 + 196] = mem[s + _12044 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_12044]) > mem[_12044]:
                                        mem[mem[_12044] + _12044 + 196] = 0
                                    require ext_code.size(address(_12043))
                                    call address(_12043).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _11004, 0, address(this.address), 128, mem[_12044], mem[_12044 + 196 len ceil32(mem[_12044])]
                            else:
                                require idx + 1 < mem[_7440]
                                _11270 = mem[(32 * idx + 1) + _7440 + 32]
                                require idx < mem[_7441]
                                require idx < mem[_7440]
                                if not mem[(32 * idx) + _7441 + 32]:
                                    _12617 = mem[(32 * idx) + _7440 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _11004
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_11270)
                                    require ext_code.size(address(_12617))
                                    call address(_12617).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _11004, 0, address(_11270)
                                else:
                                    _12619 = mem[(32 * idx) + _7440 + 32]
                                    _12620 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_12620 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_12620 + 36] = _11004
                                    mem[_12620 + 68] = 0
                                    mem[_12620 + 100] = address(_11270)
                                    mem[_12620 + 132] = 128
                                    mem[_12620 + 164] = mem[_12620]
                                    s = 0
                                    while s < mem[_12620]:
                                        mem[s + _12620 + 196] = mem[s + _12620 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_12620]) > mem[_12620]:
                                        mem[mem[_12620] + _12620 + 196] = 0
                                    require ext_code.size(address(_12619))
                                    call address(_12619).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _11004, 0, address(_11270), 128, mem[_12620], mem[_12620 + 196 len ceil32(mem[_12620])]
                    else:
                        _11005 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                        if mem[(32 * idx) + _7439 + 44 len 20] == mem[(32 * idx + 1) + _7439 + 44 len 20]:
                            if idx >= mem[_7439] - 2:
                                require idx < mem[_7441]
                                require idx < mem[_7440]
                                if not mem[(32 * idx) + _7441 + 32]:
                                    _12047 = mem[(32 * idx) + _7440 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _11005
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_12047))
                                    call address(_12047).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _11005, this.address
                                else:
                                    _12049 = mem[(32 * idx) + _7440 + 32]
                                    _12050 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_12050 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_12050 + 36] = 0
                                    mem[_12050 + 68] = _11005
                                    mem[_12050 + 100] = this.address
                                    mem[_12050 + 132] = 128
                                    mem[_12050 + 164] = mem[_12050]
                                    s = 0
                                    while s < mem[_12050]:
                                        mem[s + _12050 + 196] = mem[s + _12050 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_12050]) > mem[_12050]:
                                        mem[mem[_12050] + _12050 + 196] = 0
                                    require ext_code.size(address(_12049))
                                    call address(_12049).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _11005, address(this.address), 128, mem[_12050], mem[_12050 + 196 len ceil32(mem[_12050])]
                            else:
                                require idx + 1 < mem[_7440]
                                _11272 = mem[(32 * idx + 1) + _7440 + 32]
                                require idx < mem[_7441]
                                require idx < mem[_7440]
                                if not mem[(32 * idx) + _7441 + 32]:
                                    _12622 = mem[(32 * idx) + _7440 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _11005
                                    mem[mem[64] + 68] = address(_11272)
                                    require ext_code.size(address(_12622))
                                    call address(_12622).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _11005, address(_11272)
                                else:
                                    _12624 = mem[(32 * idx) + _7440 + 32]
                                    _12625 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_12625 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_12625 + 36] = 0
                                    mem[_12625 + 68] = _11005
                                    mem[_12625 + 100] = address(_11272)
                                    mem[_12625 + 132] = 128
                                    mem[_12625 + 164] = mem[_12625]
                                    s = 0
                                    while s < mem[_12625]:
                                        mem[s + _12625 + 196] = mem[s + _12625 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_12625]) > mem[_12625]:
                                        mem[mem[_12625] + _12625 + 196] = 0
                                    require ext_code.size(address(_12624))
                                    call address(_12624).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _11005, address(_11272), 128, mem[_12625], mem[_12625 + 196 len ceil32(mem[_12625])]
                        else:
                            if idx >= mem[_7439] - 2:
                                require idx < mem[_7441]
                                require idx < mem[_7440]
                                if not mem[(32 * idx) + _7441 + 32]:
                                    _12053 = mem[(32 * idx) + _7440 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _11005
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_12053))
                                    call address(_12053).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _11005, 0, this.address
                                else:
                                    _12055 = mem[(32 * idx) + _7440 + 32]
                                    _12056 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_12056 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_12056 + 36] = _11005
                                    mem[_12056 + 68] = 0
                                    mem[_12056 + 100] = this.address
                                    mem[_12056 + 132] = 128
                                    mem[_12056 + 164] = mem[_12056]
                                    s = 0
                                    while s < mem[_12056]:
                                        mem[s + _12056 + 196] = mem[s + _12056 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_12056]) > mem[_12056]:
                                        mem[mem[_12056] + _12056 + 196] = 0
                                    require ext_code.size(address(_12055))
                                    call address(_12055).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _11005, 0, address(this.address), 128, mem[_12056], mem[_12056 + 196 len ceil32(mem[_12056])]
                            else:
                                require idx + 1 < mem[_7440]
                                _11274 = mem[(32 * idx + 1) + _7440 + 32]
                                require idx < mem[_7441]
                                require idx < mem[_7440]
                                if not mem[(32 * idx) + _7441 + 32]:
                                    _12627 = mem[(32 * idx) + _7440 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _11005
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_11274)
                                    require ext_code.size(address(_12627))
                                    call address(_12627).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _11005, 0, address(_11274)
                                else:
                                    _12629 = mem[(32 * idx) + _7440 + 32]
                                    _12630 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_12630 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_12630 + 36] = _11005
                                    mem[_12630 + 68] = 0
                                    mem[_12630 + 100] = address(_11274)
                                    mem[_12630 + 132] = 128
                                    mem[_12630 + 164] = mem[_12630]
                                    s = 0
                                    while s < mem[_12630]:
                                        mem[s + _12630 + 196] = mem[s + _12630 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_12630]) > mem[_12630]:
                                        mem[mem[_12630] + _12630 + 196] = 0
                                    require ext_code.size(address(_12629))
                                    call address(_12629).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _11005, 0, address(_11274), 128, mem[_12630], mem[_12630 + 196 len ceil32(mem[_12630])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 32
                _10928 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                mem[mem[64] + 32] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                mem[mem[64] + 64 len 32 * _10928] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * _10928]
                return 32, mem[mem[64] + 32 len (32 * _10928) + 32]
            require return_data.size >= 32
            require mem[_7392 + 32] == bool(mem[_7392 + 32])
            _7635 = mem[64]
            mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
            mem[_7635] = ('cd', 68).length
            mem[_7635 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
            mem[_7635 + (32 * ('cd', 68).length) + 32] = 0
            _7636 = mem[64]
            mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
            mem[_7636] = ('cd', 100).length
            mem[_7636 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
            mem[_7636 + (32 * ('cd', 100).length) + 32] = 0
            _7637 = mem[64]
            mem[64] = (32 * ('cd', 164).length) + mem[64] + 32
            mem[_7637] = ('cd', 164).length
            mem[_7637 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
            mem[_7637 + (32 * ('cd', 164).length) + 32] = 0
            idx = 0
            while idx < ('cd', 68).length - 1:
                require idx < mem[_7635]
                require idx + 1 < mem[_7635]
                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                if mem[(32 * idx) + _7635 + 44 len 20] < mem[(32 * idx + 1) + _7635 + 44 len 20]:
                    _11006 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                    if mem[(32 * idx) + _7635 + 44 len 20] == mem[(32 * idx) + _7635 + 44 len 20]:
                        if idx >= mem[_7635] - 2:
                            require idx < mem[_7637]
                            require idx < mem[_7636]
                            if not mem[(32 * idx) + _7637 + 32]:
                                _12060 = mem[(32 * idx) + _7636 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _11006
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_12060))
                                call address(_12060).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _11006, this.address
                            else:
                                _12062 = mem[(32 * idx) + _7636 + 32]
                                _12063 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12063 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12063 + 36] = 0
                                mem[_12063 + 68] = _11006
                                mem[_12063 + 100] = this.address
                                mem[_12063 + 132] = 128
                                mem[_12063 + 164] = mem[_12063]
                                s = 0
                                while s < mem[_12063]:
                                    mem[s + _12063 + 196] = mem[s + _12063 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12063]) > mem[_12063]:
                                    mem[mem[_12063] + _12063 + 196] = 0
                                require ext_code.size(address(_12062))
                                call address(_12062).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _11006, address(this.address), 128, mem[_12063], mem[_12063 + 196 len ceil32(mem[_12063])]
                        else:
                            require idx + 1 < mem[_7636]
                            _11276 = mem[(32 * idx + 1) + _7636 + 32]
                            require idx < mem[_7637]
                            require idx < mem[_7636]
                            if not mem[(32 * idx) + _7637 + 32]:
                                _12632 = mem[(32 * idx) + _7636 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _11006
                                mem[mem[64] + 68] = address(_11276)
                                require ext_code.size(address(_12632))
                                call address(_12632).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _11006, address(_11276)
                            else:
                                _12634 = mem[(32 * idx) + _7636 + 32]
                                _12635 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12635 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12635 + 36] = 0
                                mem[_12635 + 68] = _11006
                                mem[_12635 + 100] = address(_11276)
                                mem[_12635 + 132] = 128
                                mem[_12635 + 164] = mem[_12635]
                                s = 0
                                while s < mem[_12635]:
                                    mem[s + _12635 + 196] = mem[s + _12635 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12635]) > mem[_12635]:
                                    mem[mem[_12635] + _12635 + 196] = 0
                                require ext_code.size(address(_12634))
                                call address(_12634).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _11006, address(_11276), 128, mem[_12635], mem[_12635 + 196 len ceil32(mem[_12635])]
                    else:
                        if idx >= mem[_7635] - 2:
                            require idx < mem[_7637]
                            require idx < mem[_7636]
                            if not mem[(32 * idx) + _7637 + 32]:
                                _12066 = mem[(32 * idx) + _7636 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _11006
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_12066))
                                call address(_12066).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _11006, 0, this.address
                            else:
                                _12068 = mem[(32 * idx) + _7636 + 32]
                                _12069 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12069 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12069 + 36] = _11006
                                mem[_12069 + 68] = 0
                                mem[_12069 + 100] = this.address
                                mem[_12069 + 132] = 128
                                mem[_12069 + 164] = mem[_12069]
                                s = 0
                                while s < mem[_12069]:
                                    mem[s + _12069 + 196] = mem[s + _12069 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12069]) > mem[_12069]:
                                    mem[mem[_12069] + _12069 + 196] = 0
                                require ext_code.size(address(_12068))
                                call address(_12068).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _11006, 0, address(this.address), 128, mem[_12069], mem[_12069 + 196 len ceil32(mem[_12069])]
                        else:
                            require idx + 1 < mem[_7636]
                            _11278 = mem[(32 * idx + 1) + _7636 + 32]
                            require idx < mem[_7637]
                            require idx < mem[_7636]
                            if not mem[(32 * idx) + _7637 + 32]:
                                _12637 = mem[(32 * idx) + _7636 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _11006
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_11278)
                                require ext_code.size(address(_12637))
                                call address(_12637).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _11006, 0, address(_11278)
                            else:
                                _12639 = mem[(32 * idx) + _7636 + 32]
                                _12640 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12640 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12640 + 36] = _11006
                                mem[_12640 + 68] = 0
                                mem[_12640 + 100] = address(_11278)
                                mem[_12640 + 132] = 128
                                mem[_12640 + 164] = mem[_12640]
                                s = 0
                                while s < mem[_12640]:
                                    mem[s + _12640 + 196] = mem[s + _12640 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12640]) > mem[_12640]:
                                    mem[mem[_12640] + _12640 + 196] = 0
                                require ext_code.size(address(_12639))
                                call address(_12639).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _11006, 0, address(_11278), 128, mem[_12640], mem[_12640 + 196 len ceil32(mem[_12640])]
                else:
                    _11007 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                    if mem[(32 * idx) + _7635 + 44 len 20] == mem[(32 * idx + 1) + _7635 + 44 len 20]:
                        if idx >= mem[_7635] - 2:
                            require idx < mem[_7637]
                            require idx < mem[_7636]
                            if not mem[(32 * idx) + _7637 + 32]:
                                _12072 = mem[(32 * idx) + _7636 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _11007
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_12072))
                                call address(_12072).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _11007, this.address
                            else:
                                _12074 = mem[(32 * idx) + _7636 + 32]
                                _12075 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12075 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12075 + 36] = 0
                                mem[_12075 + 68] = _11007
                                mem[_12075 + 100] = this.address
                                mem[_12075 + 132] = 128
                                mem[_12075 + 164] = mem[_12075]
                                s = 0
                                while s < mem[_12075]:
                                    mem[s + _12075 + 196] = mem[s + _12075 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12075]) > mem[_12075]:
                                    mem[mem[_12075] + _12075 + 196] = 0
                                require ext_code.size(address(_12074))
                                call address(_12074).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _11007, address(this.address), 128, mem[_12075], mem[_12075 + 196 len ceil32(mem[_12075])]
                        else:
                            require idx + 1 < mem[_7636]
                            _11280 = mem[(32 * idx + 1) + _7636 + 32]
                            require idx < mem[_7637]
                            require idx < mem[_7636]
                            if not mem[(32 * idx) + _7637 + 32]:
                                _12642 = mem[(32 * idx) + _7636 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _11007
                                mem[mem[64] + 68] = address(_11280)
                                require ext_code.size(address(_12642))
                                call address(_12642).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _11007, address(_11280)
                            else:
                                _12644 = mem[(32 * idx) + _7636 + 32]
                                _12645 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12645 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12645 + 36] = 0
                                mem[_12645 + 68] = _11007
                                mem[_12645 + 100] = address(_11280)
                                mem[_12645 + 132] = 128
                                mem[_12645 + 164] = mem[_12645]
                                s = 0
                                while s < mem[_12645]:
                                    mem[s + _12645 + 196] = mem[s + _12645 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12645]) > mem[_12645]:
                                    mem[mem[_12645] + _12645 + 196] = 0
                                require ext_code.size(address(_12644))
                                call address(_12644).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _11007, address(_11280), 128, mem[_12645], mem[_12645 + 196 len ceil32(mem[_12645])]
                    else:
                        if idx >= mem[_7635] - 2:
                            require idx < mem[_7637]
                            require idx < mem[_7636]
                            if not mem[(32 * idx) + _7637 + 32]:
                                _12078 = mem[(32 * idx) + _7636 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _11007
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_12078))
                                call address(_12078).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _11007, 0, this.address
                            else:
                                _12080 = mem[(32 * idx) + _7636 + 32]
                                _12081 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12081 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12081 + 36] = _11007
                                mem[_12081 + 68] = 0
                                mem[_12081 + 100] = this.address
                                mem[_12081 + 132] = 128
                                mem[_12081 + 164] = mem[_12081]
                                s = 0
                                while s < mem[_12081]:
                                    mem[s + _12081 + 196] = mem[s + _12081 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12081]) > mem[_12081]:
                                    mem[mem[_12081] + _12081 + 196] = 0
                                require ext_code.size(address(_12080))
                                call address(_12080).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _11007, 0, address(this.address), 128, mem[_12081], mem[_12081 + 196 len ceil32(mem[_12081])]
                        else:
                            require idx + 1 < mem[_7636]
                            _11282 = mem[(32 * idx + 1) + _7636 + 32]
                            require idx < mem[_7637]
                            require idx < mem[_7636]
                            if not mem[(32 * idx) + _7637 + 32]:
                                _12647 = mem[(32 * idx) + _7636 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _11007
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_11282)
                                require ext_code.size(address(_12647))
                                call address(_12647).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _11007, 0, address(_11282)
                            else:
                                _12649 = mem[(32 * idx) + _7636 + 32]
                                _12650 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12650 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12650 + 36] = _11007
                                mem[_12650 + 68] = 0
                                mem[_12650 + 100] = address(_11282)
                                mem[_12650 + 132] = 128
                                mem[_12650 + 164] = mem[_12650]
                                s = 0
                                while s < mem[_12650]:
                                    mem[s + _12650 + 196] = mem[s + _12650 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12650]) > mem[_12650]:
                                    mem[mem[_12650] + _12650 + 196] = 0
                                require ext_code.size(address(_12649))
                                call address(_12649).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _11007, 0, address(_11282), 128, mem[_12650], mem[_12650 + 196 len ceil32(mem[_12650])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _10929 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
            mem[mem[64] + 32] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
            mem[mem[64] + 64 len 32 * _10929] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * _10929]
            return 32, mem[mem[64] + 32 len (32 * _10929) + 32]
        mem[_3814 + _3750 + 132] = 0
        call address(('cd', 68)[0]) with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _3814 + _3750 + -mem[64] + 128]
        if not return_data.size:
            if not ext_call.success:
                _7418 = mem[64]
                mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
                mem[_7418] = ('cd', 68).length
                mem[_7418 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                mem[_7418 + (32 * ('cd', 68).length) + 32] = 0
                _7419 = mem[64]
                mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
                mem[_7419] = ('cd', 100).length
                mem[_7419 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                mem[_7419 + (32 * ('cd', 100).length) + 32] = 0
                _7420 = mem[64]
                mem[64] = (32 * ('cd', 164).length) + mem[64] + 32
                mem[_7420] = ('cd', 164).length
                mem[_7420 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
                mem[_7420 + (32 * ('cd', 164).length) + 32] = 0
                idx = 0
                while idx < ('cd', 68).length - 1:
                    require idx < mem[_7418]
                    require idx + 1 < mem[_7418]
                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                    if mem[(32 * idx) + _7418 + 44 len 20] < mem[(32 * idx + 1) + _7418 + 44 len 20]:
                        _11008 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                        if mem[(32 * idx) + _7418 + 44 len 20] == mem[(32 * idx) + _7418 + 44 len 20]:
                            if idx >= mem[_7418] - 2:
                                require idx < mem[_7420]
                                require idx < mem[_7419]
                                if not mem[(32 * idx) + _7420 + 32]:
                                    _12085 = mem[(32 * idx) + _7419 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _11008
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_12085))
                                    call address(_12085).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _11008, this.address
                                else:
                                    _12087 = mem[(32 * idx) + _7419 + 32]
                                    _12088 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_12088 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_12088 + 36] = 0
                                    mem[_12088 + 68] = _11008
                                    mem[_12088 + 100] = this.address
                                    mem[_12088 + 132] = 128
                                    mem[_12088 + 164] = mem[_12088]
                                    s = 0
                                    while s < mem[_12088]:
                                        mem[s + _12088 + 196] = mem[s + _12088 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_12088]) > mem[_12088]:
                                        mem[mem[_12088] + _12088 + 196] = 0
                                    require ext_code.size(address(_12087))
                                    call address(_12087).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _11008, address(this.address), 128, mem[_12088], mem[_12088 + 196 len ceil32(mem[_12088])]
                            else:
                                require idx + 1 < mem[_7419]
                                _11284 = mem[(32 * idx + 1) + _7419 + 32]
                                require idx < mem[_7420]
                                require idx < mem[_7419]
                                if not mem[(32 * idx) + _7420 + 32]:
                                    _12652 = mem[(32 * idx) + _7419 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _11008
                                    mem[mem[64] + 68] = address(_11284)
                                    require ext_code.size(address(_12652))
                                    call address(_12652).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _11008, address(_11284)
                                else:
                                    _12654 = mem[(32 * idx) + _7419 + 32]
                                    _12655 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_12655 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_12655 + 36] = 0
                                    mem[_12655 + 68] = _11008
                                    mem[_12655 + 100] = address(_11284)
                                    mem[_12655 + 132] = 128
                                    mem[_12655 + 164] = mem[_12655]
                                    s = 0
                                    while s < mem[_12655]:
                                        mem[s + _12655 + 196] = mem[s + _12655 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_12655]) > mem[_12655]:
                                        mem[mem[_12655] + _12655 + 196] = 0
                                    require ext_code.size(address(_12654))
                                    call address(_12654).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _11008, address(_11284), 128, mem[_12655], mem[_12655 + 196 len ceil32(mem[_12655])]
                        else:
                            if idx >= mem[_7418] - 2:
                                require idx < mem[_7420]
                                require idx < mem[_7419]
                                if not mem[(32 * idx) + _7420 + 32]:
                                    _12091 = mem[(32 * idx) + _7419 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _11008
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_12091))
                                    call address(_12091).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _11008, 0, this.address
                                else:
                                    _12093 = mem[(32 * idx) + _7419 + 32]
                                    _12094 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_12094 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_12094 + 36] = _11008
                                    mem[_12094 + 68] = 0
                                    mem[_12094 + 100] = this.address
                                    mem[_12094 + 132] = 128
                                    mem[_12094 + 164] = mem[_12094]
                                    s = 0
                                    while s < mem[_12094]:
                                        mem[s + _12094 + 196] = mem[s + _12094 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_12094]) > mem[_12094]:
                                        mem[mem[_12094] + _12094 + 196] = 0
                                    require ext_code.size(address(_12093))
                                    call address(_12093).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _11008, 0, address(this.address), 128, mem[_12094], mem[_12094 + 196 len ceil32(mem[_12094])]
                            else:
                                require idx + 1 < mem[_7419]
                                _11286 = mem[(32 * idx + 1) + _7419 + 32]
                                require idx < mem[_7420]
                                require idx < mem[_7419]
                                if not mem[(32 * idx) + _7420 + 32]:
                                    _12657 = mem[(32 * idx) + _7419 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _11008
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_11286)
                                    require ext_code.size(address(_12657))
                                    call address(_12657).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _11008, 0, address(_11286)
                                else:
                                    _12659 = mem[(32 * idx) + _7419 + 32]
                                    _12660 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_12660 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_12660 + 36] = _11008
                                    mem[_12660 + 68] = 0
                                    mem[_12660 + 100] = address(_11286)
                                    mem[_12660 + 132] = 128
                                    mem[_12660 + 164] = mem[_12660]
                                    s = 0
                                    while s < mem[_12660]:
                                        mem[s + _12660 + 196] = mem[s + _12660 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_12660]) > mem[_12660]:
                                        mem[mem[_12660] + _12660 + 196] = 0
                                    require ext_code.size(address(_12659))
                                    call address(_12659).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _11008, 0, address(_11286), 128, mem[_12660], mem[_12660 + 196 len ceil32(mem[_12660])]
                    else:
                        _11009 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                        if mem[(32 * idx) + _7418 + 44 len 20] == mem[(32 * idx + 1) + _7418 + 44 len 20]:
                            if idx >= mem[_7418] - 2:
                                require idx < mem[_7420]
                                require idx < mem[_7419]
                                if not mem[(32 * idx) + _7420 + 32]:
                                    _12097 = mem[(32 * idx) + _7419 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _11009
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_12097))
                                    call address(_12097).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _11009, this.address
                                else:
                                    _12099 = mem[(32 * idx) + _7419 + 32]
                                    _12100 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_12100 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_12100 + 36] = 0
                                    mem[_12100 + 68] = _11009
                                    mem[_12100 + 100] = this.address
                                    mem[_12100 + 132] = 128
                                    mem[_12100 + 164] = mem[_12100]
                                    s = 0
                                    while s < mem[_12100]:
                                        mem[s + _12100 + 196] = mem[s + _12100 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_12100]) > mem[_12100]:
                                        mem[mem[_12100] + _12100 + 196] = 0
                                    require ext_code.size(address(_12099))
                                    call address(_12099).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _11009, address(this.address), 128, mem[_12100], mem[_12100 + 196 len ceil32(mem[_12100])]
                            else:
                                require idx + 1 < mem[_7419]
                                _11288 = mem[(32 * idx + 1) + _7419 + 32]
                                require idx < mem[_7420]
                                require idx < mem[_7419]
                                if not mem[(32 * idx) + _7420 + 32]:
                                    _12662 = mem[(32 * idx) + _7419 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _11009
                                    mem[mem[64] + 68] = address(_11288)
                                    require ext_code.size(address(_12662))
                                    call address(_12662).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _11009, address(_11288)
                                else:
                                    _12664 = mem[(32 * idx) + _7419 + 32]
                                    _12665 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_12665 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_12665 + 36] = 0
                                    mem[_12665 + 68] = _11009
                                    mem[_12665 + 100] = address(_11288)
                                    mem[_12665 + 132] = 128
                                    mem[_12665 + 164] = mem[_12665]
                                    s = 0
                                    while s < mem[_12665]:
                                        mem[s + _12665 + 196] = mem[s + _12665 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_12665]) > mem[_12665]:
                                        mem[mem[_12665] + _12665 + 196] = 0
                                    require ext_code.size(address(_12664))
                                    call address(_12664).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _11009, address(_11288), 128, mem[_12665], mem[_12665 + 196 len ceil32(mem[_12665])]
                        else:
                            if idx >= mem[_7418] - 2:
                                require idx < mem[_7420]
                                require idx < mem[_7419]
                                if not mem[(32 * idx) + _7420 + 32]:
                                    _12103 = mem[(32 * idx) + _7419 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _11009
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_12103))
                                    call address(_12103).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _11009, 0, this.address
                                else:
                                    _12105 = mem[(32 * idx) + _7419 + 32]
                                    _12106 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_12106 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_12106 + 36] = _11009
                                    mem[_12106 + 68] = 0
                                    mem[_12106 + 100] = this.address
                                    mem[_12106 + 132] = 128
                                    mem[_12106 + 164] = mem[_12106]
                                    s = 0
                                    while s < mem[_12106]:
                                        mem[s + _12106 + 196] = mem[s + _12106 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_12106]) > mem[_12106]:
                                        mem[mem[_12106] + _12106 + 196] = 0
                                    require ext_code.size(address(_12105))
                                    call address(_12105).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _11009, 0, address(this.address), 128, mem[_12106], mem[_12106 + 196 len ceil32(mem[_12106])]
                            else:
                                require idx + 1 < mem[_7419]
                                _11290 = mem[(32 * idx + 1) + _7419 + 32]
                                require idx < mem[_7420]
                                require idx < mem[_7419]
                                if not mem[(32 * idx) + _7420 + 32]:
                                    _12667 = mem[(32 * idx) + _7419 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _11009
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_11290)
                                    require ext_code.size(address(_12667))
                                    call address(_12667).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _11009, 0, address(_11290)
                                else:
                                    _12669 = mem[(32 * idx) + _7419 + 32]
                                    _12670 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_12670 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_12670 + 36] = _11009
                                    mem[_12670 + 68] = 0
                                    mem[_12670 + 100] = address(_11290)
                                    mem[_12670 + 132] = 128
                                    mem[_12670 + 164] = mem[_12670]
                                    s = 0
                                    while s < mem[_12670]:
                                        mem[s + _12670 + 196] = mem[s + _12670 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_12670]) > mem[_12670]:
                                        mem[mem[_12670] + _12670 + 196] = 0
                                    require ext_code.size(address(_12669))
                                    call address(_12669).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _11009, 0, address(_11290), 128, mem[_12670], mem[_12670 + 196 len ceil32(mem[_12670])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 32
                _10930 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                mem[mem[64] + 32] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                mem[mem[64] + 64 len 32 * _10930] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * _10930]
                return 32, mem[mem[64] + 32 len (32 * _10930) + 32]
            if not mem[96]:
                _7442 = mem[64]
                mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
                mem[_7442] = ('cd', 68).length
                mem[_7442 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                mem[_7442 + (32 * ('cd', 68).length) + 32] = 0
                _7443 = mem[64]
                mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
                mem[_7443] = ('cd', 100).length
                mem[_7443 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                mem[_7443 + (32 * ('cd', 100).length) + 32] = 0
                _7444 = mem[64]
                mem[64] = (32 * ('cd', 164).length) + mem[64] + 32
                mem[_7444] = ('cd', 164).length
                mem[_7444 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
                mem[_7444 + (32 * ('cd', 164).length) + 32] = 0
                idx = 0
                while idx < ('cd', 68).length - 1:
                    require idx < mem[_7442]
                    require idx + 1 < mem[_7442]
                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                    if mem[(32 * idx) + _7442 + 44 len 20] < mem[(32 * idx + 1) + _7442 + 44 len 20]:
                        _11010 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                        if mem[(32 * idx) + _7442 + 44 len 20] == mem[(32 * idx) + _7442 + 44 len 20]:
                            if idx >= mem[_7442] - 2:
                                require idx < mem[_7444]
                                require idx < mem[_7443]
                                if not mem[(32 * idx) + _7444 + 32]:
                                    _12110 = mem[(32 * idx) + _7443 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _11010
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_12110))
                                    call address(_12110).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _11010, this.address
                                else:
                                    _12112 = mem[(32 * idx) + _7443 + 32]
                                    _12113 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_12113 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_12113 + 36] = 0
                                    mem[_12113 + 68] = _11010
                                    mem[_12113 + 100] = this.address
                                    mem[_12113 + 132] = 128
                                    mem[_12113 + 164] = mem[_12113]
                                    s = 0
                                    while s < mem[_12113]:
                                        mem[s + _12113 + 196] = mem[s + _12113 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_12113]) > mem[_12113]:
                                        mem[mem[_12113] + _12113 + 196] = 0
                                    require ext_code.size(address(_12112))
                                    call address(_12112).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _11010, address(this.address), 128, mem[_12113], mem[_12113 + 196 len ceil32(mem[_12113])]
                            else:
                                require idx + 1 < mem[_7443]
                                _11292 = mem[(32 * idx + 1) + _7443 + 32]
                                require idx < mem[_7444]
                                require idx < mem[_7443]
                                if not mem[(32 * idx) + _7444 + 32]:
                                    _12672 = mem[(32 * idx) + _7443 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _11010
                                    mem[mem[64] + 68] = address(_11292)
                                    require ext_code.size(address(_12672))
                                    call address(_12672).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _11010, address(_11292)
                                else:
                                    _12674 = mem[(32 * idx) + _7443 + 32]
                                    _12675 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_12675 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_12675 + 36] = 0
                                    mem[_12675 + 68] = _11010
                                    mem[_12675 + 100] = address(_11292)
                                    mem[_12675 + 132] = 128
                                    mem[_12675 + 164] = mem[_12675]
                                    s = 0
                                    while s < mem[_12675]:
                                        mem[s + _12675 + 196] = mem[s + _12675 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_12675]) > mem[_12675]:
                                        mem[mem[_12675] + _12675 + 196] = 0
                                    require ext_code.size(address(_12674))
                                    call address(_12674).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _11010, address(_11292), 128, mem[_12675], mem[_12675 + 196 len ceil32(mem[_12675])]
                        else:
                            if idx >= mem[_7442] - 2:
                                require idx < mem[_7444]
                                require idx < mem[_7443]
                                if not mem[(32 * idx) + _7444 + 32]:
                                    _12116 = mem[(32 * idx) + _7443 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _11010
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_12116))
                                    call address(_12116).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _11010, 0, this.address
                                else:
                                    _12118 = mem[(32 * idx) + _7443 + 32]
                                    _12119 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_12119 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_12119 + 36] = _11010
                                    mem[_12119 + 68] = 0
                                    mem[_12119 + 100] = this.address
                                    mem[_12119 + 132] = 128
                                    mem[_12119 + 164] = mem[_12119]
                                    s = 0
                                    while s < mem[_12119]:
                                        mem[s + _12119 + 196] = mem[s + _12119 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_12119]) > mem[_12119]:
                                        mem[mem[_12119] + _12119 + 196] = 0
                                    require ext_code.size(address(_12118))
                                    call address(_12118).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _11010, 0, address(this.address), 128, mem[_12119], mem[_12119 + 196 len ceil32(mem[_12119])]
                            else:
                                require idx + 1 < mem[_7443]
                                _11294 = mem[(32 * idx + 1) + _7443 + 32]
                                require idx < mem[_7444]
                                require idx < mem[_7443]
                                if not mem[(32 * idx) + _7444 + 32]:
                                    _12677 = mem[(32 * idx) + _7443 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _11010
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_11294)
                                    require ext_code.size(address(_12677))
                                    call address(_12677).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _11010, 0, address(_11294)
                                else:
                                    _12679 = mem[(32 * idx) + _7443 + 32]
                                    _12680 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_12680 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_12680 + 36] = _11010
                                    mem[_12680 + 68] = 0
                                    mem[_12680 + 100] = address(_11294)
                                    mem[_12680 + 132] = 128
                                    mem[_12680 + 164] = mem[_12680]
                                    s = 0
                                    while s < mem[_12680]:
                                        mem[s + _12680 + 196] = mem[s + _12680 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_12680]) > mem[_12680]:
                                        mem[mem[_12680] + _12680 + 196] = 0
                                    require ext_code.size(address(_12679))
                                    call address(_12679).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _11010, 0, address(_11294), 128, mem[_12680], mem[_12680 + 196 len ceil32(mem[_12680])]
                    else:
                        _11011 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                        if mem[(32 * idx) + _7442 + 44 len 20] == mem[(32 * idx + 1) + _7442 + 44 len 20]:
                            if idx >= mem[_7442] - 2:
                                require idx < mem[_7444]
                                require idx < mem[_7443]
                                if not mem[(32 * idx) + _7444 + 32]:
                                    _12122 = mem[(32 * idx) + _7443 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _11011
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_12122))
                                    call address(_12122).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _11011, this.address
                                else:
                                    _12124 = mem[(32 * idx) + _7443 + 32]
                                    _12125 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_12125 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_12125 + 36] = 0
                                    mem[_12125 + 68] = _11011
                                    mem[_12125 + 100] = this.address
                                    mem[_12125 + 132] = 128
                                    mem[_12125 + 164] = mem[_12125]
                                    s = 0
                                    while s < mem[_12125]:
                                        mem[s + _12125 + 196] = mem[s + _12125 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_12125]) > mem[_12125]:
                                        mem[mem[_12125] + _12125 + 196] = 0
                                    require ext_code.size(address(_12124))
                                    call address(_12124).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _11011, address(this.address), 128, mem[_12125], mem[_12125 + 196 len ceil32(mem[_12125])]
                            else:
                                require idx + 1 < mem[_7443]
                                _11296 = mem[(32 * idx + 1) + _7443 + 32]
                                require idx < mem[_7444]
                                require idx < mem[_7443]
                                if not mem[(32 * idx) + _7444 + 32]:
                                    _12682 = mem[(32 * idx) + _7443 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _11011
                                    mem[mem[64] + 68] = address(_11296)
                                    require ext_code.size(address(_12682))
                                    call address(_12682).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _11011, address(_11296)
                                else:
                                    _12684 = mem[(32 * idx) + _7443 + 32]
                                    _12685 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_12685 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_12685 + 36] = 0
                                    mem[_12685 + 68] = _11011
                                    mem[_12685 + 100] = address(_11296)
                                    mem[_12685 + 132] = 128
                                    mem[_12685 + 164] = mem[_12685]
                                    s = 0
                                    while s < mem[_12685]:
                                        mem[s + _12685 + 196] = mem[s + _12685 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_12685]) > mem[_12685]:
                                        mem[mem[_12685] + _12685 + 196] = 0
                                    require ext_code.size(address(_12684))
                                    call address(_12684).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _11011, address(_11296), 128, mem[_12685], mem[_12685 + 196 len ceil32(mem[_12685])]
                        else:
                            if idx >= mem[_7442] - 2:
                                require idx < mem[_7444]
                                require idx < mem[_7443]
                                if not mem[(32 * idx) + _7444 + 32]:
                                    _12128 = mem[(32 * idx) + _7443 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _11011
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_12128))
                                    call address(_12128).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _11011, 0, this.address
                                else:
                                    _12130 = mem[(32 * idx) + _7443 + 32]
                                    _12131 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_12131 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_12131 + 36] = _11011
                                    mem[_12131 + 68] = 0
                                    mem[_12131 + 100] = this.address
                                    mem[_12131 + 132] = 128
                                    mem[_12131 + 164] = mem[_12131]
                                    s = 0
                                    while s < mem[_12131]:
                                        mem[s + _12131 + 196] = mem[s + _12131 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_12131]) > mem[_12131]:
                                        mem[mem[_12131] + _12131 + 196] = 0
                                    require ext_code.size(address(_12130))
                                    call address(_12130).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _11011, 0, address(this.address), 128, mem[_12131], mem[_12131 + 196 len ceil32(mem[_12131])]
                            else:
                                require idx + 1 < mem[_7443]
                                _11298 = mem[(32 * idx + 1) + _7443 + 32]
                                require idx < mem[_7444]
                                require idx < mem[_7443]
                                if not mem[(32 * idx) + _7444 + 32]:
                                    _12687 = mem[(32 * idx) + _7443 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _11011
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_11298)
                                    require ext_code.size(address(_12687))
                                    call address(_12687).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _11011, 0, address(_11298)
                                else:
                                    _12689 = mem[(32 * idx) + _7443 + 32]
                                    _12690 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_12690 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_12690 + 36] = _11011
                                    mem[_12690 + 68] = 0
                                    mem[_12690 + 100] = address(_11298)
                                    mem[_12690 + 132] = 128
                                    mem[_12690 + 164] = mem[_12690]
                                    s = 0
                                    while s < mem[_12690]:
                                        mem[s + _12690 + 196] = mem[s + _12690 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_12690]) > mem[_12690]:
                                        mem[mem[_12690] + _12690 + 196] = 0
                                    require ext_code.size(address(_12689))
                                    call address(_12689).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _11011, 0, address(_11298), 128, mem[_12690], mem[_12690 + 196 len ceil32(mem[_12690])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 32
                _10931 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                mem[mem[64] + 32] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                mem[mem[64] + 64 len 32 * _10931] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * _10931]
                return 32, mem[mem[64] + 32 len (32 * _10931) + 32]
            require mem[96] >= 32
            require mem[128] == bool(mem[128])
            _7640 = mem[64]
            mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
            mem[_7640] = ('cd', 68).length
            mem[_7640 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
            mem[_7640 + (32 * ('cd', 68).length) + 32] = 0
            _7641 = mem[64]
            mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
            mem[_7641] = ('cd', 100).length
            mem[_7641 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
            mem[_7641 + (32 * ('cd', 100).length) + 32] = 0
            _7642 = mem[64]
            mem[64] = (32 * ('cd', 164).length) + mem[64] + 32
            mem[_7642] = ('cd', 164).length
            mem[_7642 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
            mem[_7642 + (32 * ('cd', 164).length) + 32] = 0
            idx = 0
            while idx < ('cd', 68).length - 1:
                require idx < mem[_7640]
                require idx + 1 < mem[_7640]
                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                if mem[(32 * idx) + _7640 + 44 len 20] < mem[(32 * idx + 1) + _7640 + 44 len 20]:
                    _11012 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                    if mem[(32 * idx) + _7640 + 44 len 20] == mem[(32 * idx) + _7640 + 44 len 20]:
                        if idx >= mem[_7640] - 2:
                            require idx < mem[_7642]
                            require idx < mem[_7641]
                            if not mem[(32 * idx) + _7642 + 32]:
                                _12135 = mem[(32 * idx) + _7641 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _11012
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_12135))
                                call address(_12135).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _11012, this.address
                            else:
                                _12137 = mem[(32 * idx) + _7641 + 32]
                                _12138 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12138 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12138 + 36] = 0
                                mem[_12138 + 68] = _11012
                                mem[_12138 + 100] = this.address
                                mem[_12138 + 132] = 128
                                mem[_12138 + 164] = mem[_12138]
                                s = 0
                                while s < mem[_12138]:
                                    mem[s + _12138 + 196] = mem[s + _12138 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12138]) > mem[_12138]:
                                    mem[mem[_12138] + _12138 + 196] = 0
                                require ext_code.size(address(_12137))
                                call address(_12137).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _11012, address(this.address), 128, mem[_12138], mem[_12138 + 196 len ceil32(mem[_12138])]
                        else:
                            require idx + 1 < mem[_7641]
                            _11300 = mem[(32 * idx + 1) + _7641 + 32]
                            require idx < mem[_7642]
                            require idx < mem[_7641]
                            if not mem[(32 * idx) + _7642 + 32]:
                                _12692 = mem[(32 * idx) + _7641 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _11012
                                mem[mem[64] + 68] = address(_11300)
                                require ext_code.size(address(_12692))
                                call address(_12692).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _11012, address(_11300)
                            else:
                                _12694 = mem[(32 * idx) + _7641 + 32]
                                _12695 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12695 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12695 + 36] = 0
                                mem[_12695 + 68] = _11012
                                mem[_12695 + 100] = address(_11300)
                                mem[_12695 + 132] = 128
                                mem[_12695 + 164] = mem[_12695]
                                s = 0
                                while s < mem[_12695]:
                                    mem[s + _12695 + 196] = mem[s + _12695 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12695]) > mem[_12695]:
                                    mem[mem[_12695] + _12695 + 196] = 0
                                require ext_code.size(address(_12694))
                                call address(_12694).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _11012, address(_11300), 128, mem[_12695], mem[_12695 + 196 len ceil32(mem[_12695])]
                    else:
                        if idx >= mem[_7640] - 2:
                            require idx < mem[_7642]
                            require idx < mem[_7641]
                            if not mem[(32 * idx) + _7642 + 32]:
                                _12141 = mem[(32 * idx) + _7641 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _11012
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_12141))
                                call address(_12141).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _11012, 0, this.address
                            else:
                                _12143 = mem[(32 * idx) + _7641 + 32]
                                _12144 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12144 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12144 + 36] = _11012
                                mem[_12144 + 68] = 0
                                mem[_12144 + 100] = this.address
                                mem[_12144 + 132] = 128
                                mem[_12144 + 164] = mem[_12144]
                                s = 0
                                while s < mem[_12144]:
                                    mem[s + _12144 + 196] = mem[s + _12144 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12144]) > mem[_12144]:
                                    mem[mem[_12144] + _12144 + 196] = 0
                                require ext_code.size(address(_12143))
                                call address(_12143).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _11012, 0, address(this.address), 128, mem[_12144], mem[_12144 + 196 len ceil32(mem[_12144])]
                        else:
                            require idx + 1 < mem[_7641]
                            _11302 = mem[(32 * idx + 1) + _7641 + 32]
                            require idx < mem[_7642]
                            require idx < mem[_7641]
                            if not mem[(32 * idx) + _7642 + 32]:
                                _12697 = mem[(32 * idx) + _7641 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _11012
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_11302)
                                require ext_code.size(address(_12697))
                                call address(_12697).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _11012, 0, address(_11302)
                            else:
                                _12699 = mem[(32 * idx) + _7641 + 32]
                                _12700 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12700 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12700 + 36] = _11012
                                mem[_12700 + 68] = 0
                                mem[_12700 + 100] = address(_11302)
                                mem[_12700 + 132] = 128
                                mem[_12700 + 164] = mem[_12700]
                                s = 0
                                while s < mem[_12700]:
                                    mem[s + _12700 + 196] = mem[s + _12700 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12700]) > mem[_12700]:
                                    mem[mem[_12700] + _12700 + 196] = 0
                                require ext_code.size(address(_12699))
                                call address(_12699).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _11012, 0, address(_11302), 128, mem[_12700], mem[_12700 + 196 len ceil32(mem[_12700])]
                else:
                    _11013 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                    if mem[(32 * idx) + _7640 + 44 len 20] == mem[(32 * idx + 1) + _7640 + 44 len 20]:
                        if idx >= mem[_7640] - 2:
                            require idx < mem[_7642]
                            require idx < mem[_7641]
                            if not mem[(32 * idx) + _7642 + 32]:
                                _12147 = mem[(32 * idx) + _7641 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _11013
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_12147))
                                call address(_12147).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _11013, this.address
                            else:
                                _12149 = mem[(32 * idx) + _7641 + 32]
                                _12150 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12150 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12150 + 36] = 0
                                mem[_12150 + 68] = _11013
                                mem[_12150 + 100] = this.address
                                mem[_12150 + 132] = 128
                                mem[_12150 + 164] = mem[_12150]
                                s = 0
                                while s < mem[_12150]:
                                    mem[s + _12150 + 196] = mem[s + _12150 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12150]) > mem[_12150]:
                                    mem[mem[_12150] + _12150 + 196] = 0
                                require ext_code.size(address(_12149))
                                call address(_12149).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _11013, address(this.address), 128, mem[_12150], mem[_12150 + 196 len ceil32(mem[_12150])]
                        else:
                            require idx + 1 < mem[_7641]
                            _11304 = mem[(32 * idx + 1) + _7641 + 32]
                            require idx < mem[_7642]
                            require idx < mem[_7641]
                            if not mem[(32 * idx) + _7642 + 32]:
                                _12702 = mem[(32 * idx) + _7641 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _11013
                                mem[mem[64] + 68] = address(_11304)
                                require ext_code.size(address(_12702))
                                call address(_12702).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _11013, address(_11304)
                            else:
                                _12704 = mem[(32 * idx) + _7641 + 32]
                                _12705 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12705 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12705 + 36] = 0
                                mem[_12705 + 68] = _11013
                                mem[_12705 + 100] = address(_11304)
                                mem[_12705 + 132] = 128
                                mem[_12705 + 164] = mem[_12705]
                                s = 0
                                while s < mem[_12705]:
                                    mem[s + _12705 + 196] = mem[s + _12705 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12705]) > mem[_12705]:
                                    mem[mem[_12705] + _12705 + 196] = 0
                                require ext_code.size(address(_12704))
                                call address(_12704).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _11013, address(_11304), 128, mem[_12705], mem[_12705 + 196 len ceil32(mem[_12705])]
                    else:
                        if idx >= mem[_7640] - 2:
                            require idx < mem[_7642]
                            require idx < mem[_7641]
                            if not mem[(32 * idx) + _7642 + 32]:
                                _12153 = mem[(32 * idx) + _7641 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _11013
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_12153))
                                call address(_12153).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _11013, 0, this.address
                            else:
                                _12155 = mem[(32 * idx) + _7641 + 32]
                                _12156 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12156 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12156 + 36] = _11013
                                mem[_12156 + 68] = 0
                                mem[_12156 + 100] = this.address
                                mem[_12156 + 132] = 128
                                mem[_12156 + 164] = mem[_12156]
                                s = 0
                                while s < mem[_12156]:
                                    mem[s + _12156 + 196] = mem[s + _12156 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12156]) > mem[_12156]:
                                    mem[mem[_12156] + _12156 + 196] = 0
                                require ext_code.size(address(_12155))
                                call address(_12155).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _11013, 0, address(this.address), 128, mem[_12156], mem[_12156 + 196 len ceil32(mem[_12156])]
                        else:
                            require idx + 1 < mem[_7641]
                            _11306 = mem[(32 * idx + 1) + _7641 + 32]
                            require idx < mem[_7642]
                            require idx < mem[_7641]
                            if not mem[(32 * idx) + _7642 + 32]:
                                _12707 = mem[(32 * idx) + _7641 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _11013
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_11306)
                                require ext_code.size(address(_12707))
                                call address(_12707).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _11013, 0, address(_11306)
                            else:
                                _12709 = mem[(32 * idx) + _7641 + 32]
                                _12710 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12710 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12710 + 36] = _11013
                                mem[_12710 + 68] = 0
                                mem[_12710 + 100] = address(_11306)
                                mem[_12710 + 132] = 128
                                mem[_12710 + 164] = mem[_12710]
                                s = 0
                                while s < mem[_12710]:
                                    mem[s + _12710 + 196] = mem[s + _12710 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12710]) > mem[_12710]:
                                    mem[mem[_12710] + _12710 + 196] = 0
                                require ext_code.size(address(_12709))
                                call address(_12709).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _11013, 0, address(_11306), 128, mem[_12710], mem[_12710 + 196 len ceil32(mem[_12710])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _10932 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
            mem[mem[64] + 32] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
            mem[mem[64] + 64 len 32 * _10932] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * _10932]
            return 32, mem[mem[64] + 32 len (32 * _10932) + 32]
        _7393 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_7393] = return_data.size
        mem[_7393 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            _7421 = mem[64]
            mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
            mem[_7421] = ('cd', 68).length
            mem[_7421 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
            mem[_7421 + (32 * ('cd', 68).length) + 32] = 0
            _7422 = mem[64]
            mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
            mem[_7422] = ('cd', 100).length
            mem[_7422 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
            mem[_7422 + (32 * ('cd', 100).length) + 32] = 0
            _7423 = mem[64]
            mem[64] = (32 * ('cd', 164).length) + mem[64] + 32
            mem[_7423] = ('cd', 164).length
            mem[_7423 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
            mem[_7423 + (32 * ('cd', 164).length) + 32] = 0
            idx = 0
            while idx < ('cd', 68).length - 1:
                require idx < mem[_7421]
                require idx + 1 < mem[_7421]
                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                if mem[(32 * idx) + _7421 + 44 len 20] < mem[(32 * idx + 1) + _7421 + 44 len 20]:
                    _11014 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                    if mem[(32 * idx) + _7421 + 44 len 20] == mem[(32 * idx) + _7421 + 44 len 20]:
                        if idx >= mem[_7421] - 2:
                            require idx < mem[_7423]
                            require idx < mem[_7422]
                            if not mem[(32 * idx) + _7423 + 32]:
                                _12160 = mem[(32 * idx) + _7422 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _11014
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_12160))
                                call address(_12160).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _11014, this.address
                            else:
                                _12162 = mem[(32 * idx) + _7422 + 32]
                                _12163 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12163 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12163 + 36] = 0
                                mem[_12163 + 68] = _11014
                                mem[_12163 + 100] = this.address
                                mem[_12163 + 132] = 128
                                mem[_12163 + 164] = mem[_12163]
                                s = 0
                                while s < mem[_12163]:
                                    mem[s + _12163 + 196] = mem[s + _12163 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12163]) > mem[_12163]:
                                    mem[mem[_12163] + _12163 + 196] = 0
                                require ext_code.size(address(_12162))
                                call address(_12162).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _11014, address(this.address), 128, mem[_12163], mem[_12163 + 196 len ceil32(mem[_12163])]
                        else:
                            require idx + 1 < mem[_7422]
                            _11308 = mem[(32 * idx + 1) + _7422 + 32]
                            require idx < mem[_7423]
                            require idx < mem[_7422]
                            if not mem[(32 * idx) + _7423 + 32]:
                                _12712 = mem[(32 * idx) + _7422 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _11014
                                mem[mem[64] + 68] = address(_11308)
                                require ext_code.size(address(_12712))
                                call address(_12712).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _11014, address(_11308)
                            else:
                                _12714 = mem[(32 * idx) + _7422 + 32]
                                _12715 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12715 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12715 + 36] = 0
                                mem[_12715 + 68] = _11014
                                mem[_12715 + 100] = address(_11308)
                                mem[_12715 + 132] = 128
                                mem[_12715 + 164] = mem[_12715]
                                s = 0
                                while s < mem[_12715]:
                                    mem[s + _12715 + 196] = mem[s + _12715 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12715]) > mem[_12715]:
                                    mem[mem[_12715] + _12715 + 196] = 0
                                require ext_code.size(address(_12714))
                                call address(_12714).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _11014, address(_11308), 128, mem[_12715], mem[_12715 + 196 len ceil32(mem[_12715])]
                    else:
                        if idx >= mem[_7421] - 2:
                            require idx < mem[_7423]
                            require idx < mem[_7422]
                            if not mem[(32 * idx) + _7423 + 32]:
                                _12166 = mem[(32 * idx) + _7422 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _11014
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_12166))
                                call address(_12166).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _11014, 0, this.address
                            else:
                                _12168 = mem[(32 * idx) + _7422 + 32]
                                _12169 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12169 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12169 + 36] = _11014
                                mem[_12169 + 68] = 0
                                mem[_12169 + 100] = this.address
                                mem[_12169 + 132] = 128
                                mem[_12169 + 164] = mem[_12169]
                                s = 0
                                while s < mem[_12169]:
                                    mem[s + _12169 + 196] = mem[s + _12169 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12169]) > mem[_12169]:
                                    mem[mem[_12169] + _12169 + 196] = 0
                                require ext_code.size(address(_12168))
                                call address(_12168).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _11014, 0, address(this.address), 128, mem[_12169], mem[_12169 + 196 len ceil32(mem[_12169])]
                        else:
                            require idx + 1 < mem[_7422]
                            _11310 = mem[(32 * idx + 1) + _7422 + 32]
                            require idx < mem[_7423]
                            require idx < mem[_7422]
                            if not mem[(32 * idx) + _7423 + 32]:
                                _12717 = mem[(32 * idx) + _7422 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _11014
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_11310)
                                require ext_code.size(address(_12717))
                                call address(_12717).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _11014, 0, address(_11310)
                            else:
                                _12719 = mem[(32 * idx) + _7422 + 32]
                                _12720 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12720 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12720 + 36] = _11014
                                mem[_12720 + 68] = 0
                                mem[_12720 + 100] = address(_11310)
                                mem[_12720 + 132] = 128
                                mem[_12720 + 164] = mem[_12720]
                                s = 0
                                while s < mem[_12720]:
                                    mem[s + _12720 + 196] = mem[s + _12720 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12720]) > mem[_12720]:
                                    mem[mem[_12720] + _12720 + 196] = 0
                                require ext_code.size(address(_12719))
                                call address(_12719).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _11014, 0, address(_11310), 128, mem[_12720], mem[_12720 + 196 len ceil32(mem[_12720])]
                else:
                    _11015 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                    if mem[(32 * idx) + _7421 + 44 len 20] == mem[(32 * idx + 1) + _7421 + 44 len 20]:
                        if idx >= mem[_7421] - 2:
                            require idx < mem[_7423]
                            require idx < mem[_7422]
                            if not mem[(32 * idx) + _7423 + 32]:
                                _12172 = mem[(32 * idx) + _7422 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _11015
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_12172))
                                call address(_12172).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _11015, this.address
                            else:
                                _12174 = mem[(32 * idx) + _7422 + 32]
                                _12175 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12175 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12175 + 36] = 0
                                mem[_12175 + 68] = _11015
                                mem[_12175 + 100] = this.address
                                mem[_12175 + 132] = 128
                                mem[_12175 + 164] = mem[_12175]
                                s = 0
                                while s < mem[_12175]:
                                    mem[s + _12175 + 196] = mem[s + _12175 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12175]) > mem[_12175]:
                                    mem[mem[_12175] + _12175 + 196] = 0
                                require ext_code.size(address(_12174))
                                call address(_12174).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _11015, address(this.address), 128, mem[_12175], mem[_12175 + 196 len ceil32(mem[_12175])]
                        else:
                            require idx + 1 < mem[_7422]
                            _11312 = mem[(32 * idx + 1) + _7422 + 32]
                            require idx < mem[_7423]
                            require idx < mem[_7422]
                            if not mem[(32 * idx) + _7423 + 32]:
                                _12722 = mem[(32 * idx) + _7422 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _11015
                                mem[mem[64] + 68] = address(_11312)
                                require ext_code.size(address(_12722))
                                call address(_12722).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _11015, address(_11312)
                            else:
                                _12724 = mem[(32 * idx) + _7422 + 32]
                                _12725 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12725 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12725 + 36] = 0
                                mem[_12725 + 68] = _11015
                                mem[_12725 + 100] = address(_11312)
                                mem[_12725 + 132] = 128
                                mem[_12725 + 164] = mem[_12725]
                                s = 0
                                while s < mem[_12725]:
                                    mem[s + _12725 + 196] = mem[s + _12725 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12725]) > mem[_12725]:
                                    mem[mem[_12725] + _12725 + 196] = 0
                                require ext_code.size(address(_12724))
                                call address(_12724).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _11015, address(_11312), 128, mem[_12725], mem[_12725 + 196 len ceil32(mem[_12725])]
                    else:
                        if idx >= mem[_7421] - 2:
                            require idx < mem[_7423]
                            require idx < mem[_7422]
                            if not mem[(32 * idx) + _7423 + 32]:
                                _12178 = mem[(32 * idx) + _7422 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _11015
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_12178))
                                call address(_12178).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _11015, 0, this.address
                            else:
                                _12180 = mem[(32 * idx) + _7422 + 32]
                                _12181 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12181 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12181 + 36] = _11015
                                mem[_12181 + 68] = 0
                                mem[_12181 + 100] = this.address
                                mem[_12181 + 132] = 128
                                mem[_12181 + 164] = mem[_12181]
                                s = 0
                                while s < mem[_12181]:
                                    mem[s + _12181 + 196] = mem[s + _12181 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12181]) > mem[_12181]:
                                    mem[mem[_12181] + _12181 + 196] = 0
                                require ext_code.size(address(_12180))
                                call address(_12180).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _11015, 0, address(this.address), 128, mem[_12181], mem[_12181 + 196 len ceil32(mem[_12181])]
                        else:
                            require idx + 1 < mem[_7422]
                            _11314 = mem[(32 * idx + 1) + _7422 + 32]
                            require idx < mem[_7423]
                            require idx < mem[_7422]
                            if not mem[(32 * idx) + _7423 + 32]:
                                _12727 = mem[(32 * idx) + _7422 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _11015
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_11314)
                                require ext_code.size(address(_12727))
                                call address(_12727).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _11015, 0, address(_11314)
                            else:
                                _12729 = mem[(32 * idx) + _7422 + 32]
                                _12730 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12730 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12730 + 36] = _11015
                                mem[_12730 + 68] = 0
                                mem[_12730 + 100] = address(_11314)
                                mem[_12730 + 132] = 128
                                mem[_12730 + 164] = mem[_12730]
                                s = 0
                                while s < mem[_12730]:
                                    mem[s + _12730 + 196] = mem[s + _12730 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12730]) > mem[_12730]:
                                    mem[mem[_12730] + _12730 + 196] = 0
                                require ext_code.size(address(_12729))
                                call address(_12729).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _11015, 0, address(_11314), 128, mem[_12730], mem[_12730 + 196 len ceil32(mem[_12730])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _10933 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
            mem[mem[64] + 32] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
            mem[mem[64] + 64 len 32 * _10933] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * _10933]
            return 32, mem[mem[64] + 32 len (32 * _10933) + 32]
        if not return_data.size:
            _7445 = mem[64]
            mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
            mem[_7445] = ('cd', 68).length
            mem[_7445 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
            mem[_7445 + (32 * ('cd', 68).length) + 32] = 0
            _7446 = mem[64]
            mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
            mem[_7446] = ('cd', 100).length
            mem[_7446 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
            mem[_7446 + (32 * ('cd', 100).length) + 32] = 0
            _7447 = mem[64]
            mem[64] = (32 * ('cd', 164).length) + mem[64] + 32
            mem[_7447] = ('cd', 164).length
            mem[_7447 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
            mem[_7447 + (32 * ('cd', 164).length) + 32] = 0
            idx = 0
            while idx < ('cd', 68).length - 1:
                require idx < mem[_7445]
                require idx + 1 < mem[_7445]
                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                if mem[(32 * idx) + _7445 + 44 len 20] < mem[(32 * idx + 1) + _7445 + 44 len 20]:
                    _11016 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                    if mem[(32 * idx) + _7445 + 44 len 20] == mem[(32 * idx) + _7445 + 44 len 20]:
                        if idx >= mem[_7445] - 2:
                            require idx < mem[_7447]
                            require idx < mem[_7446]
                            if not mem[(32 * idx) + _7447 + 32]:
                                _12185 = mem[(32 * idx) + _7446 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _11016
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_12185))
                                call address(_12185).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _11016, this.address
                            else:
                                _12187 = mem[(32 * idx) + _7446 + 32]
                                _12188 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12188 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12188 + 36] = 0
                                mem[_12188 + 68] = _11016
                                mem[_12188 + 100] = this.address
                                mem[_12188 + 132] = 128
                                mem[_12188 + 164] = mem[_12188]
                                s = 0
                                while s < mem[_12188]:
                                    mem[s + _12188 + 196] = mem[s + _12188 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12188]) > mem[_12188]:
                                    mem[mem[_12188] + _12188 + 196] = 0
                                require ext_code.size(address(_12187))
                                call address(_12187).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _11016, address(this.address), 128, mem[_12188], mem[_12188 + 196 len ceil32(mem[_12188])]
                        else:
                            require idx + 1 < mem[_7446]
                            _11316 = mem[(32 * idx + 1) + _7446 + 32]
                            require idx < mem[_7447]
                            require idx < mem[_7446]
                            if not mem[(32 * idx) + _7447 + 32]:
                                _12732 = mem[(32 * idx) + _7446 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _11016
                                mem[mem[64] + 68] = address(_11316)
                                require ext_code.size(address(_12732))
                                call address(_12732).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _11016, address(_11316)
                            else:
                                _12734 = mem[(32 * idx) + _7446 + 32]
                                _12735 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12735 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12735 + 36] = 0
                                mem[_12735 + 68] = _11016
                                mem[_12735 + 100] = address(_11316)
                                mem[_12735 + 132] = 128
                                mem[_12735 + 164] = mem[_12735]
                                s = 0
                                while s < mem[_12735]:
                                    mem[s + _12735 + 196] = mem[s + _12735 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12735]) > mem[_12735]:
                                    mem[mem[_12735] + _12735 + 196] = 0
                                require ext_code.size(address(_12734))
                                call address(_12734).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _11016, address(_11316), 128, mem[_12735], mem[_12735 + 196 len ceil32(mem[_12735])]
                    else:
                        if idx >= mem[_7445] - 2:
                            require idx < mem[_7447]
                            require idx < mem[_7446]
                            if not mem[(32 * idx) + _7447 + 32]:
                                _12191 = mem[(32 * idx) + _7446 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _11016
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_12191))
                                call address(_12191).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _11016, 0, this.address
                            else:
                                _12193 = mem[(32 * idx) + _7446 + 32]
                                _12194 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12194 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12194 + 36] = _11016
                                mem[_12194 + 68] = 0
                                mem[_12194 + 100] = this.address
                                mem[_12194 + 132] = 128
                                mem[_12194 + 164] = mem[_12194]
                                s = 0
                                while s < mem[_12194]:
                                    mem[s + _12194 + 196] = mem[s + _12194 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12194]) > mem[_12194]:
                                    mem[mem[_12194] + _12194 + 196] = 0
                                require ext_code.size(address(_12193))
                                call address(_12193).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _11016, 0, address(this.address), 128, mem[_12194], mem[_12194 + 196 len ceil32(mem[_12194])]
                        else:
                            require idx + 1 < mem[_7446]
                            _11318 = mem[(32 * idx + 1) + _7446 + 32]
                            require idx < mem[_7447]
                            require idx < mem[_7446]
                            if not mem[(32 * idx) + _7447 + 32]:
                                _12737 = mem[(32 * idx) + _7446 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _11016
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_11318)
                                require ext_code.size(address(_12737))
                                call address(_12737).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _11016, 0, address(_11318)
                            else:
                                _12739 = mem[(32 * idx) + _7446 + 32]
                                _12740 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12740 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12740 + 36] = _11016
                                mem[_12740 + 68] = 0
                                mem[_12740 + 100] = address(_11318)
                                mem[_12740 + 132] = 128
                                mem[_12740 + 164] = mem[_12740]
                                s = 0
                                while s < mem[_12740]:
                                    mem[s + _12740 + 196] = mem[s + _12740 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12740]) > mem[_12740]:
                                    mem[mem[_12740] + _12740 + 196] = 0
                                require ext_code.size(address(_12739))
                                call address(_12739).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _11016, 0, address(_11318), 128, mem[_12740], mem[_12740 + 196 len ceil32(mem[_12740])]
                else:
                    _11017 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                    if mem[(32 * idx) + _7445 + 44 len 20] == mem[(32 * idx + 1) + _7445 + 44 len 20]:
                        if idx >= mem[_7445] - 2:
                            require idx < mem[_7447]
                            require idx < mem[_7446]
                            if not mem[(32 * idx) + _7447 + 32]:
                                _12197 = mem[(32 * idx) + _7446 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _11017
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_12197))
                                call address(_12197).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _11017, this.address
                            else:
                                _12199 = mem[(32 * idx) + _7446 + 32]
                                _12200 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12200 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12200 + 36] = 0
                                mem[_12200 + 68] = _11017
                                mem[_12200 + 100] = this.address
                                mem[_12200 + 132] = 128
                                mem[_12200 + 164] = mem[_12200]
                                s = 0
                                while s < mem[_12200]:
                                    mem[s + _12200 + 196] = mem[s + _12200 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12200]) > mem[_12200]:
                                    mem[mem[_12200] + _12200 + 196] = 0
                                require ext_code.size(address(_12199))
                                call address(_12199).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _11017, address(this.address), 128, mem[_12200], mem[_12200 + 196 len ceil32(mem[_12200])]
                        else:
                            require idx + 1 < mem[_7446]
                            _11320 = mem[(32 * idx + 1) + _7446 + 32]
                            require idx < mem[_7447]
                            require idx < mem[_7446]
                            if not mem[(32 * idx) + _7447 + 32]:
                                _12742 = mem[(32 * idx) + _7446 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _11017
                                mem[mem[64] + 68] = address(_11320)
                                require ext_code.size(address(_12742))
                                call address(_12742).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _11017, address(_11320)
                            else:
                                _12744 = mem[(32 * idx) + _7446 + 32]
                                _12745 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12745 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12745 + 36] = 0
                                mem[_12745 + 68] = _11017
                                mem[_12745 + 100] = address(_11320)
                                mem[_12745 + 132] = 128
                                mem[_12745 + 164] = mem[_12745]
                                s = 0
                                while s < mem[_12745]:
                                    mem[s + _12745 + 196] = mem[s + _12745 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12745]) > mem[_12745]:
                                    mem[mem[_12745] + _12745 + 196] = 0
                                require ext_code.size(address(_12744))
                                call address(_12744).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _11017, address(_11320), 128, mem[_12745], mem[_12745 + 196 len ceil32(mem[_12745])]
                    else:
                        if idx >= mem[_7445] - 2:
                            require idx < mem[_7447]
                            require idx < mem[_7446]
                            if not mem[(32 * idx) + _7447 + 32]:
                                _12203 = mem[(32 * idx) + _7446 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _11017
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_12203))
                                call address(_12203).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _11017, 0, this.address
                            else:
                                _12205 = mem[(32 * idx) + _7446 + 32]
                                _12206 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12206 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12206 + 36] = _11017
                                mem[_12206 + 68] = 0
                                mem[_12206 + 100] = this.address
                                mem[_12206 + 132] = 128
                                mem[_12206 + 164] = mem[_12206]
                                s = 0
                                while s < mem[_12206]:
                                    mem[s + _12206 + 196] = mem[s + _12206 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12206]) > mem[_12206]:
                                    mem[mem[_12206] + _12206 + 196] = 0
                                require ext_code.size(address(_12205))
                                call address(_12205).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _11017, 0, address(this.address), 128, mem[_12206], mem[_12206 + 196 len ceil32(mem[_12206])]
                        else:
                            require idx + 1 < mem[_7446]
                            _11322 = mem[(32 * idx + 1) + _7446 + 32]
                            require idx < mem[_7447]
                            require idx < mem[_7446]
                            if not mem[(32 * idx) + _7447 + 32]:
                                _12747 = mem[(32 * idx) + _7446 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _11017
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_11322)
                                require ext_code.size(address(_12747))
                                call address(_12747).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _11017, 0, address(_11322)
                            else:
                                _12749 = mem[(32 * idx) + _7446 + 32]
                                _12750 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12750 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12750 + 36] = _11017
                                mem[_12750 + 68] = 0
                                mem[_12750 + 100] = address(_11322)
                                mem[_12750 + 132] = 128
                                mem[_12750 + 164] = mem[_12750]
                                s = 0
                                while s < mem[_12750]:
                                    mem[s + _12750 + 196] = mem[s + _12750 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12750]) > mem[_12750]:
                                    mem[mem[_12750] + _12750 + 196] = 0
                                require ext_code.size(address(_12749))
                                call address(_12749).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _11017, 0, address(_11322), 128, mem[_12750], mem[_12750 + 196 len ceil32(mem[_12750])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _10934 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
            mem[mem[64] + 32] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
            mem[mem[64] + 64 len 32 * _10934] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * _10934]
            return 32, mem[mem[64] + 32 len (32 * _10934) + 32]
        require return_data.size >= 32
        require mem[_7393 + 32] == bool(mem[_7393 + 32])
        _7645 = mem[64]
        mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
        mem[_7645] = ('cd', 68).length
        mem[_7645 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
        mem[_7645 + (32 * ('cd', 68).length) + 32] = 0
        _7646 = mem[64]
        mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
        mem[_7646] = ('cd', 100).length
        mem[_7646 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
        mem[_7646 + (32 * ('cd', 100).length) + 32] = 0
        _7647 = mem[64]
        mem[64] = (32 * ('cd', 164).length) + mem[64] + 32
        mem[_7647] = ('cd', 164).length
        mem[_7647 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
        mem[_7647 + (32 * ('cd', 164).length) + 32] = 0
        idx = 0
        while idx < ('cd', 68).length - 1:
            require idx < mem[_7645]
            require idx + 1 < mem[_7645]
            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
            if mem[(32 * idx) + _7645 + 44 len 20] < mem[(32 * idx + 1) + _7645 + 44 len 20]:
                _11018 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                if mem[(32 * idx) + _7645 + 44 len 20] == mem[(32 * idx) + _7645 + 44 len 20]:
                    if idx >= mem[_7645] - 2:
                        require idx < mem[_7647]
                        require idx < mem[_7646]
                        if not mem[(32 * idx) + _7647 + 32]:
                            _12210 = mem[(32 * idx) + _7646 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _11018
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_12210))
                            call address(_12210).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, _11018, this.address
                        else:
                            _12212 = mem[(32 * idx) + _7646 + 32]
                            _12213 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_12213 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_12213 + 36] = 0
                            mem[_12213 + 68] = _11018
                            mem[_12213 + 100] = this.address
                            mem[_12213 + 132] = 128
                            mem[_12213 + 164] = mem[_12213]
                            s = 0
                            while s < mem[_12213]:
                                mem[s + _12213 + 196] = mem[s + _12213 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_12213]) > mem[_12213]:
                                mem[mem[_12213] + _12213 + 196] = 0
                            require ext_code.size(address(_12212))
                            call address(_12212).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _11018, address(this.address), 128, mem[_12213], mem[_12213 + 196 len ceil32(mem[_12213])]
                    else:
                        require idx + 1 < mem[_7646]
                        _11324 = mem[(32 * idx + 1) + _7646 + 32]
                        require idx < mem[_7647]
                        require idx < mem[_7646]
                        if not mem[(32 * idx) + _7647 + 32]:
                            _12752 = mem[(32 * idx) + _7646 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _11018
                            mem[mem[64] + 68] = address(_11324)
                            require ext_code.size(address(_12752))
                            call address(_12752).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, _11018, address(_11324)
                        else:
                            _12754 = mem[(32 * idx) + _7646 + 32]
                            _12755 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_12755 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_12755 + 36] = 0
                            mem[_12755 + 68] = _11018
                            mem[_12755 + 100] = address(_11324)
                            mem[_12755 + 132] = 128
                            mem[_12755 + 164] = mem[_12755]
                            s = 0
                            while s < mem[_12755]:
                                mem[s + _12755 + 196] = mem[s + _12755 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_12755]) > mem[_12755]:
                                mem[mem[_12755] + _12755 + 196] = 0
                            require ext_code.size(address(_12754))
                            call address(_12754).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _11018, address(_11324), 128, mem[_12755], mem[_12755 + 196 len ceil32(mem[_12755])]
                else:
                    if idx >= mem[_7645] - 2:
                        require idx < mem[_7647]
                        require idx < mem[_7646]
                        if not mem[(32 * idx) + _7647 + 32]:
                            _12216 = mem[(32 * idx) + _7646 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _11018
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_12216))
                            call address(_12216).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args _11018, 0, this.address
                        else:
                            _12218 = mem[(32 * idx) + _7646 + 32]
                            _12219 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_12219 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_12219 + 36] = _11018
                            mem[_12219 + 68] = 0
                            mem[_12219 + 100] = this.address
                            mem[_12219 + 132] = 128
                            mem[_12219 + 164] = mem[_12219]
                            s = 0
                            while s < mem[_12219]:
                                mem[s + _12219 + 196] = mem[s + _12219 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_12219]) > mem[_12219]:
                                mem[mem[_12219] + _12219 + 196] = 0
                            require ext_code.size(address(_12218))
                            call address(_12218).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _11018, 0, address(this.address), 128, mem[_12219], mem[_12219 + 196 len ceil32(mem[_12219])]
                    else:
                        require idx + 1 < mem[_7646]
                        _11326 = mem[(32 * idx + 1) + _7646 + 32]
                        require idx < mem[_7647]
                        require idx < mem[_7646]
                        if not mem[(32 * idx) + _7647 + 32]:
                            _12757 = mem[(32 * idx) + _7646 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _11018
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_11326)
                            require ext_code.size(address(_12757))
                            call address(_12757).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args _11018, 0, address(_11326)
                        else:
                            _12759 = mem[(32 * idx) + _7646 + 32]
                            _12760 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_12760 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_12760 + 36] = _11018
                            mem[_12760 + 68] = 0
                            mem[_12760 + 100] = address(_11326)
                            mem[_12760 + 132] = 128
                            mem[_12760 + 164] = mem[_12760]
                            s = 0
                            while s < mem[_12760]:
                                mem[s + _12760 + 196] = mem[s + _12760 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_12760]) > mem[_12760]:
                                mem[mem[_12760] + _12760 + 196] = 0
                            require ext_code.size(address(_12759))
                            call address(_12759).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _11018, 0, address(_11326), 128, mem[_12760], mem[_12760 + 196 len ceil32(mem[_12760])]
            else:
                _11019 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                if mem[(32 * idx) + _7645 + 44 len 20] == mem[(32 * idx + 1) + _7645 + 44 len 20]:
                    if idx >= mem[_7645] - 2:
                        require idx < mem[_7647]
                        require idx < mem[_7646]
                        if not mem[(32 * idx) + _7647 + 32]:
                            _12222 = mem[(32 * idx) + _7646 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _11019
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_12222))
                            call address(_12222).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, _11019, this.address
                        else:
                            _12224 = mem[(32 * idx) + _7646 + 32]
                            _12225 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_12225 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_12225 + 36] = 0
                            mem[_12225 + 68] = _11019
                            mem[_12225 + 100] = this.address
                            mem[_12225 + 132] = 128
                            mem[_12225 + 164] = mem[_12225]
                            s = 0
                            while s < mem[_12225]:
                                mem[s + _12225 + 196] = mem[s + _12225 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_12225]) > mem[_12225]:
                                mem[mem[_12225] + _12225 + 196] = 0
                            require ext_code.size(address(_12224))
                            call address(_12224).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _11019, address(this.address), 128, mem[_12225], mem[_12225 + 196 len ceil32(mem[_12225])]
                    else:
                        require idx + 1 < mem[_7646]
                        _11328 = mem[(32 * idx + 1) + _7646 + 32]
                        require idx < mem[_7647]
                        require idx < mem[_7646]
                        if not mem[(32 * idx) + _7647 + 32]:
                            _12762 = mem[(32 * idx) + _7646 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _11019
                            mem[mem[64] + 68] = address(_11328)
                            require ext_code.size(address(_12762))
                            call address(_12762).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, _11019, address(_11328)
                        else:
                            _12764 = mem[(32 * idx) + _7646 + 32]
                            _12765 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_12765 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_12765 + 36] = 0
                            mem[_12765 + 68] = _11019
                            mem[_12765 + 100] = address(_11328)
                            mem[_12765 + 132] = 128
                            mem[_12765 + 164] = mem[_12765]
                            s = 0
                            while s < mem[_12765]:
                                mem[s + _12765 + 196] = mem[s + _12765 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_12765]) > mem[_12765]:
                                mem[mem[_12765] + _12765 + 196] = 0
                            require ext_code.size(address(_12764))
                            call address(_12764).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _11019, address(_11328), 128, mem[_12765], mem[_12765 + 196 len ceil32(mem[_12765])]
                else:
                    if idx >= mem[_7645] - 2:
                        require idx < mem[_7647]
                        require idx < mem[_7646]
                        if not mem[(32 * idx) + _7647 + 32]:
                            _12228 = mem[(32 * idx) + _7646 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _11019
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_12228))
                            call address(_12228).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args _11019, 0, this.address
                        else:
                            _12230 = mem[(32 * idx) + _7646 + 32]
                            _12231 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_12231 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_12231 + 36] = _11019
                            mem[_12231 + 68] = 0
                            mem[_12231 + 100] = this.address
                            mem[_12231 + 132] = 128
                            mem[_12231 + 164] = mem[_12231]
                            s = 0
                            while s < mem[_12231]:
                                mem[s + _12231 + 196] = mem[s + _12231 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_12231]) > mem[_12231]:
                                mem[mem[_12231] + _12231 + 196] = 0
                            require ext_code.size(address(_12230))
                            call address(_12230).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _11019, 0, address(this.address), 128, mem[_12231], mem[_12231 + 196 len ceil32(mem[_12231])]
                    else:
                        require idx + 1 < mem[_7646]
                        _11330 = mem[(32 * idx + 1) + _7646 + 32]
                        require idx < mem[_7647]
                        require idx < mem[_7646]
                        if not mem[(32 * idx) + _7647 + 32]:
                            _12767 = mem[(32 * idx) + _7646 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _11019
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_11330)
                            require ext_code.size(address(_12767))
                            call address(_12767).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args _11019, 0, address(_11330)
                        else:
                            _12769 = mem[(32 * idx) + _7646 + 32]
                            _12770 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_12770 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_12770 + 36] = _11019
                            mem[_12770 + 68] = 0
                            mem[_12770 + 100] = address(_11330)
                            mem[_12770 + 132] = 128
                            mem[_12770 + 164] = mem[_12770]
                            s = 0
                            while s < mem[_12770]:
                                mem[s + _12770 + 196] = mem[s + _12770 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_12770]) > mem[_12770]:
                                mem[mem[_12770] + _12770 + 196] = 0
                            require ext_code.size(address(_12769))
                            call address(_12769).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _11019, 0, address(_11330), 128, mem[_12770], mem[_12770 + 196 len ceil32(mem[_12770])]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _10935 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
        mem[mem[64] + 32] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
        mem[mem[64] + 64 len 32 * _10935] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * _10935]
        return 32, mem[mem[64] + 32 len (32 * _10935) + 32]
    mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * ('cd', 68).length] = code.data[8092 len 32 * ('cd', 68).length]
    require 0 < ('cd', 68).length
    mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = cd[4]
    idx = 0
    while idx < ('cd', 68).length - 1:
        require idx < mem[(32 * ('cd', 68).length) + 128]
        require idx < mem[96]
        _3714 = mem[(32 * idx) + 128]
        require idx + 1 < mem[96]
        _3719 = mem[(32 * idx + 1) + 128]
        require ext_code.size(mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20])
        staticcall mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
            _3732 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_3732] == mem[_3732 + 18 len 14]
            require mem[_3732 + 32] == mem[_3732 + 50 len 14]
            require mem[_3732 + 64] == mem[_3732 + 92 len 4]
            require idx < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
            require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
            if address(_3714) == address(_3714):
                if not mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]:
                    require mem[_3732 + 18 len 14]
                    if 1000 * mem[_3732 + 18 len 14] / mem[_3732 + 18 len 14] != 1000:
                        revert with 0, 'SafeMath#mul: OVERFLOW'
                    if 1000 * mem[_3732 + 18 len 14] < 1000 * mem[_3732 + 18 len 14]:
                        revert with 0, 'SafeMath#add: OVERFLOW'
                    require 1000 * mem[_3732 + 18 len 14]
                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / 1000 * mem[_3732 + 18 len 14]
                else:
                    if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) / mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] != -mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] + 1000:
                        revert with 0, 'SafeMath#mul: OVERFLOW'
                    if not (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]):
                        if not mem[_3732 + 18 len 14]:
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) < 0:
                                revert with 0, 'SafeMath#add: OVERFLOW'
                            require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                        else:
                            if 1000 * mem[_3732 + 18 len 14] / mem[_3732 + 18 len 14] != 1000:
                                revert with 0, 'SafeMath#mul: OVERFLOW'
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_3732 + 18 len 14]) < 1000 * mem[_3732 + 18 len 14]:
                                revert with 0, 'SafeMath#add: OVERFLOW'
                            require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_3732 + 18 len 14])
                            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_3732 + 18 len 14])
                    else:
                        if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_3732 + 50 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_3732 + 50 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) != mem[_3732 + 50 len 14]:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if not mem[_3732 + 18 len 14]:
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) < 0:
                                revert with 0, 'SafeMath#add: OVERFLOW'
                            require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_3732 + 50 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_3732 + 50 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                        else:
                            if 1000 * mem[_3732 + 18 len 14] / mem[_3732 + 18 len 14] != 1000:
                                revert with 0, 'SafeMath#mul: OVERFLOW'
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_3732 + 18 len 14]) < 1000 * mem[_3732 + 18 len 14]:
                                revert with 0, 'SafeMath#add: OVERFLOW'
                            require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_3732 + 18 len 14])
                            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_3732 + 50 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_3732 + 50 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_3732 + 18 len 14])
            else:
                if not mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]:
                    require mem[_3732 + 50 len 14]
                    if 1000 * mem[_3732 + 50 len 14] / mem[_3732 + 50 len 14] != 1000:
                        revert with 0, 'SafeMath#mul: OVERFLOW'
                    if 1000 * mem[_3732 + 50 len 14] < 1000 * mem[_3732 + 50 len 14]:
                        revert with 0, 'SafeMath#add: OVERFLOW'
                    require 1000 * mem[_3732 + 50 len 14]
                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / 1000 * mem[_3732 + 50 len 14]
                else:
                    if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) / mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] != -mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] + 1000:
                        revert with 0, 'SafeMath#mul: OVERFLOW'
                    if not (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]):
                        if not mem[_3732 + 50 len 14]:
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) < 0:
                                revert with 0, 'SafeMath#add: OVERFLOW'
                            require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                        else:
                            if 1000 * mem[_3732 + 50 len 14] / mem[_3732 + 50 len 14] != 1000:
                                revert with 0, 'SafeMath#mul: OVERFLOW'
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_3732 + 50 len 14]) < 1000 * mem[_3732 + 50 len 14]:
                                revert with 0, 'SafeMath#add: OVERFLOW'
                            require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_3732 + 50 len 14])
                            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_3732 + 50 len 14])
                    else:
                        if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_3732 + 18 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_3732 + 18 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) != mem[_3732 + 18 len 14]:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if not mem[_3732 + 50 len 14]:
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) < 0:
                                revert with 0, 'SafeMath#add: OVERFLOW'
                            require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_3732 + 18 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_3732 + 18 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                        else:
                            if 1000 * mem[_3732 + 50 len 14] / mem[_3732 + 50 len 14] != 1000:
                                revert with 0, 'SafeMath#mul: OVERFLOW'
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_3732 + 50 len 14]) < 1000 * mem[_3732 + 50 len 14]:
                                revert with 0, 'SafeMath#add: OVERFLOW'
                            require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_3732 + 50 len 14])
                            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_3732 + 18 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_3732 + 18 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_3732 + 50 len 14])
        else:
            _3733 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_3733] == mem[_3733 + 18 len 14]
            require mem[_3733 + 32] == mem[_3733 + 50 len 14]
            require mem[_3733 + 64] == mem[_3733 + 92 len 4]
            require idx < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
            require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 160]
            if address(_3714) == address(_3719):
                if not mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]:
                    require mem[_3733 + 18 len 14]
                    if 1000 * mem[_3733 + 18 len 14] / mem[_3733 + 18 len 14] != 1000:
                        revert with 0, 'SafeMath#mul: OVERFLOW'
                    if 1000 * mem[_3733 + 18 len 14] < 1000 * mem[_3733 + 18 len 14]:
                        revert with 0, 'SafeMath#add: OVERFLOW'
                    require 1000 * mem[_3733 + 18 len 14]
                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / 1000 * mem[_3733 + 18 len 14]
                else:
                    if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) / mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] != -mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] + 1000:
                        revert with 0, 'SafeMath#mul: OVERFLOW'
                    if not (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]):
                        if not mem[_3733 + 18 len 14]:
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) < 0:
                                revert with 0, 'SafeMath#add: OVERFLOW'
                            require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                        else:
                            if 1000 * mem[_3733 + 18 len 14] / mem[_3733 + 18 len 14] != 1000:
                                revert with 0, 'SafeMath#mul: OVERFLOW'
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_3733 + 18 len 14]) < 1000 * mem[_3733 + 18 len 14]:
                                revert with 0, 'SafeMath#add: OVERFLOW'
                            require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_3733 + 18 len 14])
                            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_3733 + 18 len 14])
                    else:
                        if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_3733 + 50 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_3733 + 50 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) != mem[_3733 + 50 len 14]:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if not mem[_3733 + 18 len 14]:
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) < 0:
                                revert with 0, 'SafeMath#add: OVERFLOW'
                            require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_3733 + 50 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_3733 + 50 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                        else:
                            if 1000 * mem[_3733 + 18 len 14] / mem[_3733 + 18 len 14] != 1000:
                                revert with 0, 'SafeMath#mul: OVERFLOW'
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_3733 + 18 len 14]) < 1000 * mem[_3733 + 18 len 14]:
                                revert with 0, 'SafeMath#add: OVERFLOW'
                            require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_3733 + 18 len 14])
                            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_3733 + 50 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_3733 + 50 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_3733 + 18 len 14])
            else:
                if not mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]:
                    require mem[_3733 + 50 len 14]
                    if 1000 * mem[_3733 + 50 len 14] / mem[_3733 + 50 len 14] != 1000:
                        revert with 0, 'SafeMath#mul: OVERFLOW'
                    if 1000 * mem[_3733 + 50 len 14] < 1000 * mem[_3733 + 50 len 14]:
                        revert with 0, 'SafeMath#add: OVERFLOW'
                    require 1000 * mem[_3733 + 50 len 14]
                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                    mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / 1000 * mem[_3733 + 50 len 14]
                else:
                    if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) / mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] != -mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] + 1000:
                        revert with 0, 'SafeMath#mul: OVERFLOW'
                    if not (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]):
                        if not mem[_3733 + 50 len 14]:
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) < 0:
                                revert with 0, 'SafeMath#add: OVERFLOW'
                            require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                        else:
                            if 1000 * mem[_3733 + 50 len 14] / mem[_3733 + 50 len 14] != 1000:
                                revert with 0, 'SafeMath#mul: OVERFLOW'
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_3733 + 50 len 14]) < 1000 * mem[_3733 + 50 len 14]:
                                revert with 0, 'SafeMath#add: OVERFLOW'
                            require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_3733 + 50 len 14])
                            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = 0 / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_3733 + 50 len 14])
                    else:
                        if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_3733 + 18 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_3733 + 18 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) != mem[_3733 + 18 len 14]:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if not mem[_3733 + 50 len 14]:
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) < 0:
                                revert with 0, 'SafeMath#add: OVERFLOW'
                            require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_3733 + 18 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_3733 + 18 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224])
                        else:
                            if 1000 * mem[_3733 + 50 len 14] / mem[_3733 + 50 len 14] != 1000:
                                revert with 0, 'SafeMath#mul: OVERFLOW'
                            if (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_3733 + 50 len 14]) < 1000 * mem[_3733 + 50 len 14]:
                                revert with 0, 'SafeMath#add: OVERFLOW'
                            require (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_3733 + 50 len 14])
                            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] = (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_3733 + 18 len 14]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] * mem[_3733 + 18 len 14]) / (1000 * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) - (mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]) + (1000 * mem[_3733 + 50 len 14])
        idx = idx + 1
        continue 
    require mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] - 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
    if mem[(32 * mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192] - 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224] < cd[36]:
        revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
    require 0 < ('cd', 68).length
    require ('cd', 68)[0] == address(('cd', 68)[0])
    require 0 < ('cd', 100).length
    require ('cd', 100)[0] == address(('cd', 100)[0])
    require 0 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
    _3749 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
    _3751 = mem[64]
    mem[mem[64] + 36] = this.address
    mem[mem[64] + 68] = address(('cd', 100)[0])
    mem[mem[64] + 100] = _3749
    _3795 = mem[64]
    mem[mem[64]] = 100
    mem[64] = mem[64] + 132
    mem[_3795 + 32 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
    _3819 = mem[_3795]
    mem[_3751 + 132 len ceil32(mem[_3795])] = mem[_3795 + 32 len ceil32(mem[_3795])]
    if ceil32(_3819) <= _3819:
        call address(('cd', 68)[0]) with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _3819 + _3751 + -mem[64] + 128]
        if not return_data.size:
            if not ext_call.success:
                _7424 = mem[64]
                mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
                mem[_7424] = ('cd', 68).length
                mem[_7424 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                mem[_7424 + (32 * ('cd', 68).length) + 32] = 0
                _7425 = mem[64]
                mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
                mem[_7425] = ('cd', 100).length
                mem[_7425 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                mem[_7425 + (32 * ('cd', 100).length) + 32] = 0
                _7426 = mem[64]
                mem[64] = (32 * ('cd', 164).length) + mem[64] + 32
                mem[_7426] = ('cd', 164).length
                mem[_7426 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
                mem[_7426 + (32 * ('cd', 164).length) + 32] = 0
                idx = 0
                while idx < ('cd', 68).length - 1:
                    require idx < mem[_7424]
                    require idx + 1 < mem[_7424]
                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                    if mem[(32 * idx) + _7424 + 44 len 20] < mem[(32 * idx + 1) + _7424 + 44 len 20]:
                        _11020 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                        if mem[(32 * idx) + _7424 + 44 len 20] == mem[(32 * idx) + _7424 + 44 len 20]:
                            if idx >= mem[_7424] - 2:
                                require idx < mem[_7426]
                                require idx < mem[_7425]
                                if not mem[(32 * idx) + _7426 + 32]:
                                    _12235 = mem[(32 * idx) + _7425 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _11020
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_12235))
                                    call address(_12235).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _11020, this.address
                                else:
                                    _12237 = mem[(32 * idx) + _7425 + 32]
                                    _12238 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_12238 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_12238 + 36] = 0
                                    mem[_12238 + 68] = _11020
                                    mem[_12238 + 100] = this.address
                                    mem[_12238 + 132] = 128
                                    mem[_12238 + 164] = mem[_12238]
                                    s = 0
                                    while s < mem[_12238]:
                                        mem[s + _12238 + 196] = mem[s + _12238 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_12238]) > mem[_12238]:
                                        mem[mem[_12238] + _12238 + 196] = 0
                                    require ext_code.size(address(_12237))
                                    call address(_12237).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _11020, address(this.address), 128, mem[_12238], mem[_12238 + 196 len ceil32(mem[_12238])]
                            else:
                                require idx + 1 < mem[_7425]
                                _11332 = mem[(32 * idx + 1) + _7425 + 32]
                                require idx < mem[_7426]
                                require idx < mem[_7425]
                                if not mem[(32 * idx) + _7426 + 32]:
                                    _12772 = mem[(32 * idx) + _7425 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _11020
                                    mem[mem[64] + 68] = address(_11332)
                                    require ext_code.size(address(_12772))
                                    call address(_12772).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _11020, address(_11332)
                                else:
                                    _12774 = mem[(32 * idx) + _7425 + 32]
                                    _12775 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_12775 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_12775 + 36] = 0
                                    mem[_12775 + 68] = _11020
                                    mem[_12775 + 100] = address(_11332)
                                    mem[_12775 + 132] = 128
                                    mem[_12775 + 164] = mem[_12775]
                                    s = 0
                                    while s < mem[_12775]:
                                        mem[s + _12775 + 196] = mem[s + _12775 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_12775]) > mem[_12775]:
                                        mem[mem[_12775] + _12775 + 196] = 0
                                    require ext_code.size(address(_12774))
                                    call address(_12774).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _11020, address(_11332), 128, mem[_12775], mem[_12775 + 196 len ceil32(mem[_12775])]
                        else:
                            if idx >= mem[_7424] - 2:
                                require idx < mem[_7426]
                                require idx < mem[_7425]
                                if not mem[(32 * idx) + _7426 + 32]:
                                    _12241 = mem[(32 * idx) + _7425 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _11020
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_12241))
                                    call address(_12241).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _11020, 0, this.address
                                else:
                                    _12243 = mem[(32 * idx) + _7425 + 32]
                                    _12244 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_12244 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_12244 + 36] = _11020
                                    mem[_12244 + 68] = 0
                                    mem[_12244 + 100] = this.address
                                    mem[_12244 + 132] = 128
                                    mem[_12244 + 164] = mem[_12244]
                                    s = 0
                                    while s < mem[_12244]:
                                        mem[s + _12244 + 196] = mem[s + _12244 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_12244]) > mem[_12244]:
                                        mem[mem[_12244] + _12244 + 196] = 0
                                    require ext_code.size(address(_12243))
                                    call address(_12243).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _11020, 0, address(this.address), 128, mem[_12244], mem[_12244 + 196 len ceil32(mem[_12244])]
                            else:
                                require idx + 1 < mem[_7425]
                                _11334 = mem[(32 * idx + 1) + _7425 + 32]
                                require idx < mem[_7426]
                                require idx < mem[_7425]
                                if not mem[(32 * idx) + _7426 + 32]:
                                    _12777 = mem[(32 * idx) + _7425 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _11020
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_11334)
                                    require ext_code.size(address(_12777))
                                    call address(_12777).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _11020, 0, address(_11334)
                                else:
                                    _12779 = mem[(32 * idx) + _7425 + 32]
                                    _12780 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_12780 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_12780 + 36] = _11020
                                    mem[_12780 + 68] = 0
                                    mem[_12780 + 100] = address(_11334)
                                    mem[_12780 + 132] = 128
                                    mem[_12780 + 164] = mem[_12780]
                                    s = 0
                                    while s < mem[_12780]:
                                        mem[s + _12780 + 196] = mem[s + _12780 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_12780]) > mem[_12780]:
                                        mem[mem[_12780] + _12780 + 196] = 0
                                    require ext_code.size(address(_12779))
                                    call address(_12779).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _11020, 0, address(_11334), 128, mem[_12780], mem[_12780 + 196 len ceil32(mem[_12780])]
                    else:
                        _11021 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                        if mem[(32 * idx) + _7424 + 44 len 20] == mem[(32 * idx + 1) + _7424 + 44 len 20]:
                            if idx >= mem[_7424] - 2:
                                require idx < mem[_7426]
                                require idx < mem[_7425]
                                if not mem[(32 * idx) + _7426 + 32]:
                                    _12247 = mem[(32 * idx) + _7425 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _11021
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_12247))
                                    call address(_12247).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _11021, this.address
                                else:
                                    _12249 = mem[(32 * idx) + _7425 + 32]
                                    _12250 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_12250 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_12250 + 36] = 0
                                    mem[_12250 + 68] = _11021
                                    mem[_12250 + 100] = this.address
                                    mem[_12250 + 132] = 128
                                    mem[_12250 + 164] = mem[_12250]
                                    s = 0
                                    while s < mem[_12250]:
                                        mem[s + _12250 + 196] = mem[s + _12250 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_12250]) > mem[_12250]:
                                        mem[mem[_12250] + _12250 + 196] = 0
                                    require ext_code.size(address(_12249))
                                    call address(_12249).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _11021, address(this.address), 128, mem[_12250], mem[_12250 + 196 len ceil32(mem[_12250])]
                            else:
                                require idx + 1 < mem[_7425]
                                _11336 = mem[(32 * idx + 1) + _7425 + 32]
                                require idx < mem[_7426]
                                require idx < mem[_7425]
                                if not mem[(32 * idx) + _7426 + 32]:
                                    _12782 = mem[(32 * idx) + _7425 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _11021
                                    mem[mem[64] + 68] = address(_11336)
                                    require ext_code.size(address(_12782))
                                    call address(_12782).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _11021, address(_11336)
                                else:
                                    _12784 = mem[(32 * idx) + _7425 + 32]
                                    _12785 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_12785 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_12785 + 36] = 0
                                    mem[_12785 + 68] = _11021
                                    mem[_12785 + 100] = address(_11336)
                                    mem[_12785 + 132] = 128
                                    mem[_12785 + 164] = mem[_12785]
                                    s = 0
                                    while s < mem[_12785]:
                                        mem[s + _12785 + 196] = mem[s + _12785 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_12785]) > mem[_12785]:
                                        mem[mem[_12785] + _12785 + 196] = 0
                                    require ext_code.size(address(_12784))
                                    call address(_12784).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _11021, address(_11336), 128, mem[_12785], mem[_12785 + 196 len ceil32(mem[_12785])]
                        else:
                            if idx >= mem[_7424] - 2:
                                require idx < mem[_7426]
                                require idx < mem[_7425]
                                if not mem[(32 * idx) + _7426 + 32]:
                                    _12253 = mem[(32 * idx) + _7425 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _11021
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_12253))
                                    call address(_12253).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _11021, 0, this.address
                                else:
                                    _12255 = mem[(32 * idx) + _7425 + 32]
                                    _12256 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_12256 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_12256 + 36] = _11021
                                    mem[_12256 + 68] = 0
                                    mem[_12256 + 100] = this.address
                                    mem[_12256 + 132] = 128
                                    mem[_12256 + 164] = mem[_12256]
                                    s = 0
                                    while s < mem[_12256]:
                                        mem[s + _12256 + 196] = mem[s + _12256 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_12256]) > mem[_12256]:
                                        mem[mem[_12256] + _12256 + 196] = 0
                                    require ext_code.size(address(_12255))
                                    call address(_12255).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _11021, 0, address(this.address), 128, mem[_12256], mem[_12256 + 196 len ceil32(mem[_12256])]
                            else:
                                require idx + 1 < mem[_7425]
                                _11338 = mem[(32 * idx + 1) + _7425 + 32]
                                require idx < mem[_7426]
                                require idx < mem[_7425]
                                if not mem[(32 * idx) + _7426 + 32]:
                                    _12787 = mem[(32 * idx) + _7425 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _11021
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_11338)
                                    require ext_code.size(address(_12787))
                                    call address(_12787).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _11021, 0, address(_11338)
                                else:
                                    _12789 = mem[(32 * idx) + _7425 + 32]
                                    _12790 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_12790 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_12790 + 36] = _11021
                                    mem[_12790 + 68] = 0
                                    mem[_12790 + 100] = address(_11338)
                                    mem[_12790 + 132] = 128
                                    mem[_12790 + 164] = mem[_12790]
                                    s = 0
                                    while s < mem[_12790]:
                                        mem[s + _12790 + 196] = mem[s + _12790 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_12790]) > mem[_12790]:
                                        mem[mem[_12790] + _12790 + 196] = 0
                                    require ext_code.size(address(_12789))
                                    call address(_12789).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _11021, 0, address(_11338), 128, mem[_12790], mem[_12790 + 196 len ceil32(mem[_12790])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 32
                _10936 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                mem[mem[64] + 32] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                mem[mem[64] + 64 len 32 * _10936] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * _10936]
                return 32, mem[mem[64] + 32 len (32 * _10936) + 32]
            if not mem[96]:
                _7448 = mem[64]
                mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
                mem[_7448] = ('cd', 68).length
                mem[_7448 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                mem[_7448 + (32 * ('cd', 68).length) + 32] = 0
                _7449 = mem[64]
                mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
                mem[_7449] = ('cd', 100).length
                mem[_7449 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                mem[_7449 + (32 * ('cd', 100).length) + 32] = 0
                _7450 = mem[64]
                mem[64] = (32 * ('cd', 164).length) + mem[64] + 32
                mem[_7450] = ('cd', 164).length
                mem[_7450 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
                mem[_7450 + (32 * ('cd', 164).length) + 32] = 0
                idx = 0
                while idx < ('cd', 68).length - 1:
                    require idx < mem[_7448]
                    require idx + 1 < mem[_7448]
                    require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                    if mem[(32 * idx) + _7448 + 44 len 20] < mem[(32 * idx + 1) + _7448 + 44 len 20]:
                        _11022 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                        if mem[(32 * idx) + _7448 + 44 len 20] == mem[(32 * idx) + _7448 + 44 len 20]:
                            if idx >= mem[_7448] - 2:
                                require idx < mem[_7450]
                                require idx < mem[_7449]
                                if not mem[(32 * idx) + _7450 + 32]:
                                    _12260 = mem[(32 * idx) + _7449 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _11022
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_12260))
                                    call address(_12260).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _11022, this.address
                                else:
                                    _12262 = mem[(32 * idx) + _7449 + 32]
                                    _12263 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_12263 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_12263 + 36] = 0
                                    mem[_12263 + 68] = _11022
                                    mem[_12263 + 100] = this.address
                                    mem[_12263 + 132] = 128
                                    mem[_12263 + 164] = mem[_12263]
                                    s = 0
                                    while s < mem[_12263]:
                                        mem[s + _12263 + 196] = mem[s + _12263 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_12263]) > mem[_12263]:
                                        mem[mem[_12263] + _12263 + 196] = 0
                                    require ext_code.size(address(_12262))
                                    call address(_12262).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _11022, address(this.address), 128, mem[_12263], mem[_12263 + 196 len ceil32(mem[_12263])]
                            else:
                                require idx + 1 < mem[_7449]
                                _11340 = mem[(32 * idx + 1) + _7449 + 32]
                                require idx < mem[_7450]
                                require idx < mem[_7449]
                                if not mem[(32 * idx) + _7450 + 32]:
                                    _12792 = mem[(32 * idx) + _7449 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _11022
                                    mem[mem[64] + 68] = address(_11340)
                                    require ext_code.size(address(_12792))
                                    call address(_12792).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _11022, address(_11340)
                                else:
                                    _12794 = mem[(32 * idx) + _7449 + 32]
                                    _12795 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_12795 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_12795 + 36] = 0
                                    mem[_12795 + 68] = _11022
                                    mem[_12795 + 100] = address(_11340)
                                    mem[_12795 + 132] = 128
                                    mem[_12795 + 164] = mem[_12795]
                                    s = 0
                                    while s < mem[_12795]:
                                        mem[s + _12795 + 196] = mem[s + _12795 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_12795]) > mem[_12795]:
                                        mem[mem[_12795] + _12795 + 196] = 0
                                    require ext_code.size(address(_12794))
                                    call address(_12794).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _11022, address(_11340), 128, mem[_12795], mem[_12795 + 196 len ceil32(mem[_12795])]
                        else:
                            if idx >= mem[_7448] - 2:
                                require idx < mem[_7450]
                                require idx < mem[_7449]
                                if not mem[(32 * idx) + _7450 + 32]:
                                    _12266 = mem[(32 * idx) + _7449 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _11022
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_12266))
                                    call address(_12266).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _11022, 0, this.address
                                else:
                                    _12268 = mem[(32 * idx) + _7449 + 32]
                                    _12269 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_12269 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_12269 + 36] = _11022
                                    mem[_12269 + 68] = 0
                                    mem[_12269 + 100] = this.address
                                    mem[_12269 + 132] = 128
                                    mem[_12269 + 164] = mem[_12269]
                                    s = 0
                                    while s < mem[_12269]:
                                        mem[s + _12269 + 196] = mem[s + _12269 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_12269]) > mem[_12269]:
                                        mem[mem[_12269] + _12269 + 196] = 0
                                    require ext_code.size(address(_12268))
                                    call address(_12268).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _11022, 0, address(this.address), 128, mem[_12269], mem[_12269 + 196 len ceil32(mem[_12269])]
                            else:
                                require idx + 1 < mem[_7449]
                                _11342 = mem[(32 * idx + 1) + _7449 + 32]
                                require idx < mem[_7450]
                                require idx < mem[_7449]
                                if not mem[(32 * idx) + _7450 + 32]:
                                    _12797 = mem[(32 * idx) + _7449 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _11022
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_11342)
                                    require ext_code.size(address(_12797))
                                    call address(_12797).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _11022, 0, address(_11342)
                                else:
                                    _12799 = mem[(32 * idx) + _7449 + 32]
                                    _12800 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_12800 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_12800 + 36] = _11022
                                    mem[_12800 + 68] = 0
                                    mem[_12800 + 100] = address(_11342)
                                    mem[_12800 + 132] = 128
                                    mem[_12800 + 164] = mem[_12800]
                                    s = 0
                                    while s < mem[_12800]:
                                        mem[s + _12800 + 196] = mem[s + _12800 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_12800]) > mem[_12800]:
                                        mem[mem[_12800] + _12800 + 196] = 0
                                    require ext_code.size(address(_12799))
                                    call address(_12799).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _11022, 0, address(_11342), 128, mem[_12800], mem[_12800 + 196 len ceil32(mem[_12800])]
                    else:
                        _11023 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                        if mem[(32 * idx) + _7448 + 44 len 20] == mem[(32 * idx + 1) + _7448 + 44 len 20]:
                            if idx >= mem[_7448] - 2:
                                require idx < mem[_7450]
                                require idx < mem[_7449]
                                if not mem[(32 * idx) + _7450 + 32]:
                                    _12272 = mem[(32 * idx) + _7449 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _11023
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_12272))
                                    call address(_12272).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _11023, this.address
                                else:
                                    _12274 = mem[(32 * idx) + _7449 + 32]
                                    _12275 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_12275 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_12275 + 36] = 0
                                    mem[_12275 + 68] = _11023
                                    mem[_12275 + 100] = this.address
                                    mem[_12275 + 132] = 128
                                    mem[_12275 + 164] = mem[_12275]
                                    s = 0
                                    while s < mem[_12275]:
                                        mem[s + _12275 + 196] = mem[s + _12275 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_12275]) > mem[_12275]:
                                        mem[mem[_12275] + _12275 + 196] = 0
                                    require ext_code.size(address(_12274))
                                    call address(_12274).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _11023, address(this.address), 128, mem[_12275], mem[_12275 + 196 len ceil32(mem[_12275])]
                            else:
                                require idx + 1 < mem[_7449]
                                _11344 = mem[(32 * idx + 1) + _7449 + 32]
                                require idx < mem[_7450]
                                require idx < mem[_7449]
                                if not mem[(32 * idx) + _7450 + 32]:
                                    _12802 = mem[(32 * idx) + _7449 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = _11023
                                    mem[mem[64] + 68] = address(_11344)
                                    require ext_code.size(address(_12802))
                                    call address(_12802).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args 0, _11023, address(_11344)
                                else:
                                    _12804 = mem[(32 * idx) + _7449 + 32]
                                    _12805 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_12805 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_12805 + 36] = 0
                                    mem[_12805 + 68] = _11023
                                    mem[_12805 + 100] = address(_11344)
                                    mem[_12805 + 132] = 128
                                    mem[_12805 + 164] = mem[_12805]
                                    s = 0
                                    while s < mem[_12805]:
                                        mem[s + _12805 + 196] = mem[s + _12805 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_12805]) > mem[_12805]:
                                        mem[mem[_12805] + _12805 + 196] = 0
                                    require ext_code.size(address(_12804))
                                    call address(_12804).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _11023, address(_11344), 128, mem[_12805], mem[_12805 + 196 len ceil32(mem[_12805])]
                        else:
                            if idx >= mem[_7448] - 2:
                                require idx < mem[_7450]
                                require idx < mem[_7449]
                                if not mem[(32 * idx) + _7450 + 32]:
                                    _12278 = mem[(32 * idx) + _7449 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _11023
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_12278))
                                    call address(_12278).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _11023, 0, this.address
                                else:
                                    _12280 = mem[(32 * idx) + _7449 + 32]
                                    _12281 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_12281 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_12281 + 36] = _11023
                                    mem[_12281 + 68] = 0
                                    mem[_12281 + 100] = this.address
                                    mem[_12281 + 132] = 128
                                    mem[_12281 + 164] = mem[_12281]
                                    s = 0
                                    while s < mem[_12281]:
                                        mem[s + _12281 + 196] = mem[s + _12281 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_12281]) > mem[_12281]:
                                        mem[mem[_12281] + _12281 + 196] = 0
                                    require ext_code.size(address(_12280))
                                    call address(_12280).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _11023, 0, address(this.address), 128, mem[_12281], mem[_12281 + 196 len ceil32(mem[_12281])]
                            else:
                                require idx + 1 < mem[_7449]
                                _11346 = mem[(32 * idx + 1) + _7449 + 32]
                                require idx < mem[_7450]
                                require idx < mem[_7449]
                                if not mem[(32 * idx) + _7450 + 32]:
                                    _12807 = mem[(32 * idx) + _7449 + 32]
                                    mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _11023
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_11346)
                                    require ext_code.size(address(_12807))
                                    call address(_12807).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                         gas gas_remaining wei
                                        args _11023, 0, address(_11346)
                                else:
                                    _12809 = mem[(32 * idx) + _7449 + 32]
                                    _12810 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_12810 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_12810 + 36] = _11023
                                    mem[_12810 + 68] = 0
                                    mem[_12810 + 100] = address(_11346)
                                    mem[_12810 + 132] = 128
                                    mem[_12810 + 164] = mem[_12810]
                                    s = 0
                                    while s < mem[_12810]:
                                        mem[s + _12810 + 196] = mem[s + _12810 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_12810]) > mem[_12810]:
                                        mem[mem[_12810] + _12810 + 196] = 0
                                    require ext_code.size(address(_12809))
                                    call address(_12809).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _11023, 0, address(_11346), 128, mem[_12810], mem[_12810 + 196 len ceil32(mem[_12810])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 32
                _10937 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                mem[mem[64] + 32] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                mem[mem[64] + 64 len 32 * _10937] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * _10937]
                return 32, mem[mem[64] + 32 len (32 * _10937) + 32]
            require mem[96] >= 32
            require mem[128] == bool(mem[128])
            _7650 = mem[64]
            mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
            mem[_7650] = ('cd', 68).length
            mem[_7650 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
            mem[_7650 + (32 * ('cd', 68).length) + 32] = 0
            _7651 = mem[64]
            mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
            mem[_7651] = ('cd', 100).length
            mem[_7651 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
            mem[_7651 + (32 * ('cd', 100).length) + 32] = 0
            _7652 = mem[64]
            mem[64] = (32 * ('cd', 164).length) + mem[64] + 32
            mem[_7652] = ('cd', 164).length
            mem[_7652 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
            mem[_7652 + (32 * ('cd', 164).length) + 32] = 0
            idx = 0
            while idx < ('cd', 68).length - 1:
                require idx < mem[_7650]
                require idx + 1 < mem[_7650]
                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                if mem[(32 * idx) + _7650 + 44 len 20] < mem[(32 * idx + 1) + _7650 + 44 len 20]:
                    _11024 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                    if mem[(32 * idx) + _7650 + 44 len 20] == mem[(32 * idx) + _7650 + 44 len 20]:
                        if idx >= mem[_7650] - 2:
                            require idx < mem[_7652]
                            require idx < mem[_7651]
                            if not mem[(32 * idx) + _7652 + 32]:
                                _12285 = mem[(32 * idx) + _7651 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _11024
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_12285))
                                call address(_12285).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _11024, this.address
                            else:
                                _12287 = mem[(32 * idx) + _7651 + 32]
                                _12288 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12288 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12288 + 36] = 0
                                mem[_12288 + 68] = _11024
                                mem[_12288 + 100] = this.address
                                mem[_12288 + 132] = 128
                                mem[_12288 + 164] = mem[_12288]
                                s = 0
                                while s < mem[_12288]:
                                    mem[s + _12288 + 196] = mem[s + _12288 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12288]) > mem[_12288]:
                                    mem[mem[_12288] + _12288 + 196] = 0
                                require ext_code.size(address(_12287))
                                call address(_12287).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _11024, address(this.address), 128, mem[_12288], mem[_12288 + 196 len ceil32(mem[_12288])]
                        else:
                            require idx + 1 < mem[_7651]
                            _11348 = mem[(32 * idx + 1) + _7651 + 32]
                            require idx < mem[_7652]
                            require idx < mem[_7651]
                            if not mem[(32 * idx) + _7652 + 32]:
                                _12812 = mem[(32 * idx) + _7651 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _11024
                                mem[mem[64] + 68] = address(_11348)
                                require ext_code.size(address(_12812))
                                call address(_12812).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _11024, address(_11348)
                            else:
                                _12814 = mem[(32 * idx) + _7651 + 32]
                                _12815 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12815 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12815 + 36] = 0
                                mem[_12815 + 68] = _11024
                                mem[_12815 + 100] = address(_11348)
                                mem[_12815 + 132] = 128
                                mem[_12815 + 164] = mem[_12815]
                                s = 0
                                while s < mem[_12815]:
                                    mem[s + _12815 + 196] = mem[s + _12815 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12815]) > mem[_12815]:
                                    mem[mem[_12815] + _12815 + 196] = 0
                                require ext_code.size(address(_12814))
                                call address(_12814).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _11024, address(_11348), 128, mem[_12815], mem[_12815 + 196 len ceil32(mem[_12815])]
                    else:
                        if idx >= mem[_7650] - 2:
                            require idx < mem[_7652]
                            require idx < mem[_7651]
                            if not mem[(32 * idx) + _7652 + 32]:
                                _12291 = mem[(32 * idx) + _7651 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _11024
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_12291))
                                call address(_12291).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _11024, 0, this.address
                            else:
                                _12293 = mem[(32 * idx) + _7651 + 32]
                                _12294 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12294 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12294 + 36] = _11024
                                mem[_12294 + 68] = 0
                                mem[_12294 + 100] = this.address
                                mem[_12294 + 132] = 128
                                mem[_12294 + 164] = mem[_12294]
                                s = 0
                                while s < mem[_12294]:
                                    mem[s + _12294 + 196] = mem[s + _12294 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12294]) > mem[_12294]:
                                    mem[mem[_12294] + _12294 + 196] = 0
                                require ext_code.size(address(_12293))
                                call address(_12293).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _11024, 0, address(this.address), 128, mem[_12294], mem[_12294 + 196 len ceil32(mem[_12294])]
                        else:
                            require idx + 1 < mem[_7651]
                            _11350 = mem[(32 * idx + 1) + _7651 + 32]
                            require idx < mem[_7652]
                            require idx < mem[_7651]
                            if not mem[(32 * idx) + _7652 + 32]:
                                _12817 = mem[(32 * idx) + _7651 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _11024
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_11350)
                                require ext_code.size(address(_12817))
                                call address(_12817).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _11024, 0, address(_11350)
                            else:
                                _12819 = mem[(32 * idx) + _7651 + 32]
                                _12820 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12820 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12820 + 36] = _11024
                                mem[_12820 + 68] = 0
                                mem[_12820 + 100] = address(_11350)
                                mem[_12820 + 132] = 128
                                mem[_12820 + 164] = mem[_12820]
                                s = 0
                                while s < mem[_12820]:
                                    mem[s + _12820 + 196] = mem[s + _12820 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12820]) > mem[_12820]:
                                    mem[mem[_12820] + _12820 + 196] = 0
                                require ext_code.size(address(_12819))
                                call address(_12819).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _11024, 0, address(_11350), 128, mem[_12820], mem[_12820 + 196 len ceil32(mem[_12820])]
                else:
                    _11025 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                    if mem[(32 * idx) + _7650 + 44 len 20] == mem[(32 * idx + 1) + _7650 + 44 len 20]:
                        if idx >= mem[_7650] - 2:
                            require idx < mem[_7652]
                            require idx < mem[_7651]
                            if not mem[(32 * idx) + _7652 + 32]:
                                _12297 = mem[(32 * idx) + _7651 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _11025
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_12297))
                                call address(_12297).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _11025, this.address
                            else:
                                _12299 = mem[(32 * idx) + _7651 + 32]
                                _12300 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12300 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12300 + 36] = 0
                                mem[_12300 + 68] = _11025
                                mem[_12300 + 100] = this.address
                                mem[_12300 + 132] = 128
                                mem[_12300 + 164] = mem[_12300]
                                s = 0
                                while s < mem[_12300]:
                                    mem[s + _12300 + 196] = mem[s + _12300 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12300]) > mem[_12300]:
                                    mem[mem[_12300] + _12300 + 196] = 0
                                require ext_code.size(address(_12299))
                                call address(_12299).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _11025, address(this.address), 128, mem[_12300], mem[_12300 + 196 len ceil32(mem[_12300])]
                        else:
                            require idx + 1 < mem[_7651]
                            _11352 = mem[(32 * idx + 1) + _7651 + 32]
                            require idx < mem[_7652]
                            require idx < mem[_7651]
                            if not mem[(32 * idx) + _7652 + 32]:
                                _12822 = mem[(32 * idx) + _7651 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _11025
                                mem[mem[64] + 68] = address(_11352)
                                require ext_code.size(address(_12822))
                                call address(_12822).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _11025, address(_11352)
                            else:
                                _12824 = mem[(32 * idx) + _7651 + 32]
                                _12825 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12825 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12825 + 36] = 0
                                mem[_12825 + 68] = _11025
                                mem[_12825 + 100] = address(_11352)
                                mem[_12825 + 132] = 128
                                mem[_12825 + 164] = mem[_12825]
                                s = 0
                                while s < mem[_12825]:
                                    mem[s + _12825 + 196] = mem[s + _12825 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12825]) > mem[_12825]:
                                    mem[mem[_12825] + _12825 + 196] = 0
                                require ext_code.size(address(_12824))
                                call address(_12824).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _11025, address(_11352), 128, mem[_12825], mem[_12825 + 196 len ceil32(mem[_12825])]
                    else:
                        if idx >= mem[_7650] - 2:
                            require idx < mem[_7652]
                            require idx < mem[_7651]
                            if not mem[(32 * idx) + _7652 + 32]:
                                _12303 = mem[(32 * idx) + _7651 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _11025
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_12303))
                                call address(_12303).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _11025, 0, this.address
                            else:
                                _12305 = mem[(32 * idx) + _7651 + 32]
                                _12306 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12306 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12306 + 36] = _11025
                                mem[_12306 + 68] = 0
                                mem[_12306 + 100] = this.address
                                mem[_12306 + 132] = 128
                                mem[_12306 + 164] = mem[_12306]
                                s = 0
                                while s < mem[_12306]:
                                    mem[s + _12306 + 196] = mem[s + _12306 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12306]) > mem[_12306]:
                                    mem[mem[_12306] + _12306 + 196] = 0
                                require ext_code.size(address(_12305))
                                call address(_12305).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _11025, 0, address(this.address), 128, mem[_12306], mem[_12306 + 196 len ceil32(mem[_12306])]
                        else:
                            require idx + 1 < mem[_7651]
                            _11354 = mem[(32 * idx + 1) + _7651 + 32]
                            require idx < mem[_7652]
                            require idx < mem[_7651]
                            if not mem[(32 * idx) + _7652 + 32]:
                                _12827 = mem[(32 * idx) + _7651 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _11025
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_11354)
                                require ext_code.size(address(_12827))
                                call address(_12827).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _11025, 0, address(_11354)
                            else:
                                _12829 = mem[(32 * idx) + _7651 + 32]
                                _12830 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12830 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12830 + 36] = _11025
                                mem[_12830 + 68] = 0
                                mem[_12830 + 100] = address(_11354)
                                mem[_12830 + 132] = 128
                                mem[_12830 + 164] = mem[_12830]
                                s = 0
                                while s < mem[_12830]:
                                    mem[s + _12830 + 196] = mem[s + _12830 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12830]) > mem[_12830]:
                                    mem[mem[_12830] + _12830 + 196] = 0
                                require ext_code.size(address(_12829))
                                call address(_12829).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _11025, 0, address(_11354), 128, mem[_12830], mem[_12830 + 196 len ceil32(mem[_12830])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _10938 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
            mem[mem[64] + 32] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
            mem[mem[64] + 64 len 32 * _10938] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * _10938]
            return 32, mem[mem[64] + 32 len (32 * _10938) + 32]
        _7394 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_7394] = return_data.size
        mem[_7394 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            _7427 = mem[64]
            mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
            mem[_7427] = ('cd', 68).length
            mem[_7427 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
            mem[_7427 + (32 * ('cd', 68).length) + 32] = 0
            _7428 = mem[64]
            mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
            mem[_7428] = ('cd', 100).length
            mem[_7428 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
            mem[_7428 + (32 * ('cd', 100).length) + 32] = 0
            _7429 = mem[64]
            mem[64] = (32 * ('cd', 164).length) + mem[64] + 32
            mem[_7429] = ('cd', 164).length
            mem[_7429 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
            mem[_7429 + (32 * ('cd', 164).length) + 32] = 0
            idx = 0
            while idx < ('cd', 68).length - 1:
                require idx < mem[_7427]
                require idx + 1 < mem[_7427]
                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                if mem[(32 * idx) + _7427 + 44 len 20] < mem[(32 * idx + 1) + _7427 + 44 len 20]:
                    _11026 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                    if mem[(32 * idx) + _7427 + 44 len 20] == mem[(32 * idx) + _7427 + 44 len 20]:
                        if idx >= mem[_7427] - 2:
                            require idx < mem[_7429]
                            require idx < mem[_7428]
                            if not mem[(32 * idx) + _7429 + 32]:
                                _12310 = mem[(32 * idx) + _7428 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _11026
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_12310))
                                call address(_12310).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _11026, this.address
                            else:
                                _12312 = mem[(32 * idx) + _7428 + 32]
                                _12313 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12313 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12313 + 36] = 0
                                mem[_12313 + 68] = _11026
                                mem[_12313 + 100] = this.address
                                mem[_12313 + 132] = 128
                                mem[_12313 + 164] = mem[_12313]
                                s = 0
                                while s < mem[_12313]:
                                    mem[s + _12313 + 196] = mem[s + _12313 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12313]) > mem[_12313]:
                                    mem[mem[_12313] + _12313 + 196] = 0
                                require ext_code.size(address(_12312))
                                call address(_12312).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _11026, address(this.address), 128, mem[_12313], mem[_12313 + 196 len ceil32(mem[_12313])]
                        else:
                            require idx + 1 < mem[_7428]
                            _11356 = mem[(32 * idx + 1) + _7428 + 32]
                            require idx < mem[_7429]
                            require idx < mem[_7428]
                            if not mem[(32 * idx) + _7429 + 32]:
                                _12832 = mem[(32 * idx) + _7428 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _11026
                                mem[mem[64] + 68] = address(_11356)
                                require ext_code.size(address(_12832))
                                call address(_12832).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _11026, address(_11356)
                            else:
                                _12834 = mem[(32 * idx) + _7428 + 32]
                                _12835 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12835 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12835 + 36] = 0
                                mem[_12835 + 68] = _11026
                                mem[_12835 + 100] = address(_11356)
                                mem[_12835 + 132] = 128
                                mem[_12835 + 164] = mem[_12835]
                                s = 0
                                while s < mem[_12835]:
                                    mem[s + _12835 + 196] = mem[s + _12835 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12835]) > mem[_12835]:
                                    mem[mem[_12835] + _12835 + 196] = 0
                                require ext_code.size(address(_12834))
                                call address(_12834).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _11026, address(_11356), 128, mem[_12835], mem[_12835 + 196 len ceil32(mem[_12835])]
                    else:
                        if idx >= mem[_7427] - 2:
                            require idx < mem[_7429]
                            require idx < mem[_7428]
                            if not mem[(32 * idx) + _7429 + 32]:
                                _12316 = mem[(32 * idx) + _7428 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _11026
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_12316))
                                call address(_12316).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _11026, 0, this.address
                            else:
                                _12318 = mem[(32 * idx) + _7428 + 32]
                                _12319 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12319 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12319 + 36] = _11026
                                mem[_12319 + 68] = 0
                                mem[_12319 + 100] = this.address
                                mem[_12319 + 132] = 128
                                mem[_12319 + 164] = mem[_12319]
                                s = 0
                                while s < mem[_12319]:
                                    mem[s + _12319 + 196] = mem[s + _12319 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12319]) > mem[_12319]:
                                    mem[mem[_12319] + _12319 + 196] = 0
                                require ext_code.size(address(_12318))
                                call address(_12318).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _11026, 0, address(this.address), 128, mem[_12319], mem[_12319 + 196 len ceil32(mem[_12319])]
                        else:
                            require idx + 1 < mem[_7428]
                            _11358 = mem[(32 * idx + 1) + _7428 + 32]
                            require idx < mem[_7429]
                            require idx < mem[_7428]
                            if not mem[(32 * idx) + _7429 + 32]:
                                _12837 = mem[(32 * idx) + _7428 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _11026
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_11358)
                                require ext_code.size(address(_12837))
                                call address(_12837).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _11026, 0, address(_11358)
                            else:
                                _12839 = mem[(32 * idx) + _7428 + 32]
                                _12840 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12840 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12840 + 36] = _11026
                                mem[_12840 + 68] = 0
                                mem[_12840 + 100] = address(_11358)
                                mem[_12840 + 132] = 128
                                mem[_12840 + 164] = mem[_12840]
                                s = 0
                                while s < mem[_12840]:
                                    mem[s + _12840 + 196] = mem[s + _12840 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12840]) > mem[_12840]:
                                    mem[mem[_12840] + _12840 + 196] = 0
                                require ext_code.size(address(_12839))
                                call address(_12839).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _11026, 0, address(_11358), 128, mem[_12840], mem[_12840 + 196 len ceil32(mem[_12840])]
                else:
                    _11027 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                    if mem[(32 * idx) + _7427 + 44 len 20] == mem[(32 * idx + 1) + _7427 + 44 len 20]:
                        if idx >= mem[_7427] - 2:
                            require idx < mem[_7429]
                            require idx < mem[_7428]
                            if not mem[(32 * idx) + _7429 + 32]:
                                _12322 = mem[(32 * idx) + _7428 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _11027
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_12322))
                                call address(_12322).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _11027, this.address
                            else:
                                _12324 = mem[(32 * idx) + _7428 + 32]
                                _12325 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12325 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12325 + 36] = 0
                                mem[_12325 + 68] = _11027
                                mem[_12325 + 100] = this.address
                                mem[_12325 + 132] = 128
                                mem[_12325 + 164] = mem[_12325]
                                s = 0
                                while s < mem[_12325]:
                                    mem[s + _12325 + 196] = mem[s + _12325 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12325]) > mem[_12325]:
                                    mem[mem[_12325] + _12325 + 196] = 0
                                require ext_code.size(address(_12324))
                                call address(_12324).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _11027, address(this.address), 128, mem[_12325], mem[_12325 + 196 len ceil32(mem[_12325])]
                        else:
                            require idx + 1 < mem[_7428]
                            _11360 = mem[(32 * idx + 1) + _7428 + 32]
                            require idx < mem[_7429]
                            require idx < mem[_7428]
                            if not mem[(32 * idx) + _7429 + 32]:
                                _12842 = mem[(32 * idx) + _7428 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _11027
                                mem[mem[64] + 68] = address(_11360)
                                require ext_code.size(address(_12842))
                                call address(_12842).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _11027, address(_11360)
                            else:
                                _12844 = mem[(32 * idx) + _7428 + 32]
                                _12845 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12845 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12845 + 36] = 0
                                mem[_12845 + 68] = _11027
                                mem[_12845 + 100] = address(_11360)
                                mem[_12845 + 132] = 128
                                mem[_12845 + 164] = mem[_12845]
                                s = 0
                                while s < mem[_12845]:
                                    mem[s + _12845 + 196] = mem[s + _12845 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12845]) > mem[_12845]:
                                    mem[mem[_12845] + _12845 + 196] = 0
                                require ext_code.size(address(_12844))
                                call address(_12844).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _11027, address(_11360), 128, mem[_12845], mem[_12845 + 196 len ceil32(mem[_12845])]
                    else:
                        if idx >= mem[_7427] - 2:
                            require idx < mem[_7429]
                            require idx < mem[_7428]
                            if not mem[(32 * idx) + _7429 + 32]:
                                _12328 = mem[(32 * idx) + _7428 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _11027
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_12328))
                                call address(_12328).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _11027, 0, this.address
                            else:
                                _12330 = mem[(32 * idx) + _7428 + 32]
                                _12331 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12331 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12331 + 36] = _11027
                                mem[_12331 + 68] = 0
                                mem[_12331 + 100] = this.address
                                mem[_12331 + 132] = 128
                                mem[_12331 + 164] = mem[_12331]
                                s = 0
                                while s < mem[_12331]:
                                    mem[s + _12331 + 196] = mem[s + _12331 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12331]) > mem[_12331]:
                                    mem[mem[_12331] + _12331 + 196] = 0
                                require ext_code.size(address(_12330))
                                call address(_12330).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _11027, 0, address(this.address), 128, mem[_12331], mem[_12331 + 196 len ceil32(mem[_12331])]
                        else:
                            require idx + 1 < mem[_7428]
                            _11362 = mem[(32 * idx + 1) + _7428 + 32]
                            require idx < mem[_7429]
                            require idx < mem[_7428]
                            if not mem[(32 * idx) + _7429 + 32]:
                                _12847 = mem[(32 * idx) + _7428 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _11027
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_11362)
                                require ext_code.size(address(_12847))
                                call address(_12847).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _11027, 0, address(_11362)
                            else:
                                _12849 = mem[(32 * idx) + _7428 + 32]
                                _12850 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12850 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12850 + 36] = _11027
                                mem[_12850 + 68] = 0
                                mem[_12850 + 100] = address(_11362)
                                mem[_12850 + 132] = 128
                                mem[_12850 + 164] = mem[_12850]
                                s = 0
                                while s < mem[_12850]:
                                    mem[s + _12850 + 196] = mem[s + _12850 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12850]) > mem[_12850]:
                                    mem[mem[_12850] + _12850 + 196] = 0
                                require ext_code.size(address(_12849))
                                call address(_12849).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _11027, 0, address(_11362), 128, mem[_12850], mem[_12850 + 196 len ceil32(mem[_12850])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _10939 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
            mem[mem[64] + 32] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
            mem[mem[64] + 64 len 32 * _10939] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * _10939]
            return 32, mem[mem[64] + 32 len (32 * _10939) + 32]
        if not return_data.size:
            _7451 = mem[64]
            mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
            mem[_7451] = ('cd', 68).length
            mem[_7451 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
            mem[_7451 + (32 * ('cd', 68).length) + 32] = 0
            _7452 = mem[64]
            mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
            mem[_7452] = ('cd', 100).length
            mem[_7452 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
            mem[_7452 + (32 * ('cd', 100).length) + 32] = 0
            _7453 = mem[64]
            mem[64] = (32 * ('cd', 164).length) + mem[64] + 32
            mem[_7453] = ('cd', 164).length
            mem[_7453 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
            mem[_7453 + (32 * ('cd', 164).length) + 32] = 0
            idx = 0
            while idx < ('cd', 68).length - 1:
                require idx < mem[_7451]
                require idx + 1 < mem[_7451]
                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                if mem[(32 * idx) + _7451 + 44 len 20] < mem[(32 * idx + 1) + _7451 + 44 len 20]:
                    _11028 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                    if mem[(32 * idx) + _7451 + 44 len 20] == mem[(32 * idx) + _7451 + 44 len 20]:
                        if idx >= mem[_7451] - 2:
                            require idx < mem[_7453]
                            require idx < mem[_7452]
                            if not mem[(32 * idx) + _7453 + 32]:
                                _12335 = mem[(32 * idx) + _7452 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _11028
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_12335))
                                call address(_12335).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _11028, this.address
                            else:
                                _12337 = mem[(32 * idx) + _7452 + 32]
                                _12338 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12338 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12338 + 36] = 0
                                mem[_12338 + 68] = _11028
                                mem[_12338 + 100] = this.address
                                mem[_12338 + 132] = 128
                                mem[_12338 + 164] = mem[_12338]
                                s = 0
                                while s < mem[_12338]:
                                    mem[s + _12338 + 196] = mem[s + _12338 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12338]) > mem[_12338]:
                                    mem[mem[_12338] + _12338 + 196] = 0
                                require ext_code.size(address(_12337))
                                call address(_12337).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _11028, address(this.address), 128, mem[_12338], mem[_12338 + 196 len ceil32(mem[_12338])]
                        else:
                            require idx + 1 < mem[_7452]
                            _11364 = mem[(32 * idx + 1) + _7452 + 32]
                            require idx < mem[_7453]
                            require idx < mem[_7452]
                            if not mem[(32 * idx) + _7453 + 32]:
                                _12852 = mem[(32 * idx) + _7452 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _11028
                                mem[mem[64] + 68] = address(_11364)
                                require ext_code.size(address(_12852))
                                call address(_12852).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _11028, address(_11364)
                            else:
                                _12854 = mem[(32 * idx) + _7452 + 32]
                                _12855 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12855 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12855 + 36] = 0
                                mem[_12855 + 68] = _11028
                                mem[_12855 + 100] = address(_11364)
                                mem[_12855 + 132] = 128
                                mem[_12855 + 164] = mem[_12855]
                                s = 0
                                while s < mem[_12855]:
                                    mem[s + _12855 + 196] = mem[s + _12855 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12855]) > mem[_12855]:
                                    mem[mem[_12855] + _12855 + 196] = 0
                                require ext_code.size(address(_12854))
                                call address(_12854).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _11028, address(_11364), 128, mem[_12855], mem[_12855 + 196 len ceil32(mem[_12855])]
                    else:
                        if idx >= mem[_7451] - 2:
                            require idx < mem[_7453]
                            require idx < mem[_7452]
                            if not mem[(32 * idx) + _7453 + 32]:
                                _12341 = mem[(32 * idx) + _7452 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _11028
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_12341))
                                call address(_12341).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _11028, 0, this.address
                            else:
                                _12343 = mem[(32 * idx) + _7452 + 32]
                                _12344 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12344 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12344 + 36] = _11028
                                mem[_12344 + 68] = 0
                                mem[_12344 + 100] = this.address
                                mem[_12344 + 132] = 128
                                mem[_12344 + 164] = mem[_12344]
                                s = 0
                                while s < mem[_12344]:
                                    mem[s + _12344 + 196] = mem[s + _12344 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12344]) > mem[_12344]:
                                    mem[mem[_12344] + _12344 + 196] = 0
                                require ext_code.size(address(_12343))
                                call address(_12343).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _11028, 0, address(this.address), 128, mem[_12344], mem[_12344 + 196 len ceil32(mem[_12344])]
                        else:
                            require idx + 1 < mem[_7452]
                            _11366 = mem[(32 * idx + 1) + _7452 + 32]
                            require idx < mem[_7453]
                            require idx < mem[_7452]
                            if not mem[(32 * idx) + _7453 + 32]:
                                _12857 = mem[(32 * idx) + _7452 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _11028
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_11366)
                                require ext_code.size(address(_12857))
                                call address(_12857).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _11028, 0, address(_11366)
                            else:
                                _12859 = mem[(32 * idx) + _7452 + 32]
                                _12860 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12860 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12860 + 36] = _11028
                                mem[_12860 + 68] = 0
                                mem[_12860 + 100] = address(_11366)
                                mem[_12860 + 132] = 128
                                mem[_12860 + 164] = mem[_12860]
                                s = 0
                                while s < mem[_12860]:
                                    mem[s + _12860 + 196] = mem[s + _12860 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12860]) > mem[_12860]:
                                    mem[mem[_12860] + _12860 + 196] = 0
                                require ext_code.size(address(_12859))
                                call address(_12859).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _11028, 0, address(_11366), 128, mem[_12860], mem[_12860 + 196 len ceil32(mem[_12860])]
                else:
                    _11029 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                    if mem[(32 * idx) + _7451 + 44 len 20] == mem[(32 * idx + 1) + _7451 + 44 len 20]:
                        if idx >= mem[_7451] - 2:
                            require idx < mem[_7453]
                            require idx < mem[_7452]
                            if not mem[(32 * idx) + _7453 + 32]:
                                _12347 = mem[(32 * idx) + _7452 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _11029
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_12347))
                                call address(_12347).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _11029, this.address
                            else:
                                _12349 = mem[(32 * idx) + _7452 + 32]
                                _12350 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12350 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12350 + 36] = 0
                                mem[_12350 + 68] = _11029
                                mem[_12350 + 100] = this.address
                                mem[_12350 + 132] = 128
                                mem[_12350 + 164] = mem[_12350]
                                s = 0
                                while s < mem[_12350]:
                                    mem[s + _12350 + 196] = mem[s + _12350 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12350]) > mem[_12350]:
                                    mem[mem[_12350] + _12350 + 196] = 0
                                require ext_code.size(address(_12349))
                                call address(_12349).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _11029, address(this.address), 128, mem[_12350], mem[_12350 + 196 len ceil32(mem[_12350])]
                        else:
                            require idx + 1 < mem[_7452]
                            _11368 = mem[(32 * idx + 1) + _7452 + 32]
                            require idx < mem[_7453]
                            require idx < mem[_7452]
                            if not mem[(32 * idx) + _7453 + 32]:
                                _12862 = mem[(32 * idx) + _7452 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _11029
                                mem[mem[64] + 68] = address(_11368)
                                require ext_code.size(address(_12862))
                                call address(_12862).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _11029, address(_11368)
                            else:
                                _12864 = mem[(32 * idx) + _7452 + 32]
                                _12865 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12865 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12865 + 36] = 0
                                mem[_12865 + 68] = _11029
                                mem[_12865 + 100] = address(_11368)
                                mem[_12865 + 132] = 128
                                mem[_12865 + 164] = mem[_12865]
                                s = 0
                                while s < mem[_12865]:
                                    mem[s + _12865 + 196] = mem[s + _12865 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12865]) > mem[_12865]:
                                    mem[mem[_12865] + _12865 + 196] = 0
                                require ext_code.size(address(_12864))
                                call address(_12864).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _11029, address(_11368), 128, mem[_12865], mem[_12865 + 196 len ceil32(mem[_12865])]
                    else:
                        if idx >= mem[_7451] - 2:
                            require idx < mem[_7453]
                            require idx < mem[_7452]
                            if not mem[(32 * idx) + _7453 + 32]:
                                _12353 = mem[(32 * idx) + _7452 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _11029
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_12353))
                                call address(_12353).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _11029, 0, this.address
                            else:
                                _12355 = mem[(32 * idx) + _7452 + 32]
                                _12356 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12356 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12356 + 36] = _11029
                                mem[_12356 + 68] = 0
                                mem[_12356 + 100] = this.address
                                mem[_12356 + 132] = 128
                                mem[_12356 + 164] = mem[_12356]
                                s = 0
                                while s < mem[_12356]:
                                    mem[s + _12356 + 196] = mem[s + _12356 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12356]) > mem[_12356]:
                                    mem[mem[_12356] + _12356 + 196] = 0
                                require ext_code.size(address(_12355))
                                call address(_12355).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _11029, 0, address(this.address), 128, mem[_12356], mem[_12356 + 196 len ceil32(mem[_12356])]
                        else:
                            require idx + 1 < mem[_7452]
                            _11370 = mem[(32 * idx + 1) + _7452 + 32]
                            require idx < mem[_7453]
                            require idx < mem[_7452]
                            if not mem[(32 * idx) + _7453 + 32]:
                                _12867 = mem[(32 * idx) + _7452 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _11029
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_11370)
                                require ext_code.size(address(_12867))
                                call address(_12867).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _11029, 0, address(_11370)
                            else:
                                _12869 = mem[(32 * idx) + _7452 + 32]
                                _12870 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12870 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12870 + 36] = _11029
                                mem[_12870 + 68] = 0
                                mem[_12870 + 100] = address(_11370)
                                mem[_12870 + 132] = 128
                                mem[_12870 + 164] = mem[_12870]
                                s = 0
                                while s < mem[_12870]:
                                    mem[s + _12870 + 196] = mem[s + _12870 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12870]) > mem[_12870]:
                                    mem[mem[_12870] + _12870 + 196] = 0
                                require ext_code.size(address(_12869))
                                call address(_12869).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _11029, 0, address(_11370), 128, mem[_12870], mem[_12870 + 196 len ceil32(mem[_12870])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _10940 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
            mem[mem[64] + 32] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
            mem[mem[64] + 64 len 32 * _10940] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * _10940]
            return 32, mem[mem[64] + 32 len (32 * _10940) + 32]
        require return_data.size >= 32
        require mem[_7394 + 32] == bool(mem[_7394 + 32])
        _7655 = mem[64]
        mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
        mem[_7655] = ('cd', 68).length
        mem[_7655 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
        mem[_7655 + (32 * ('cd', 68).length) + 32] = 0
        _7656 = mem[64]
        mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
        mem[_7656] = ('cd', 100).length
        mem[_7656 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
        mem[_7656 + (32 * ('cd', 100).length) + 32] = 0
        _7657 = mem[64]
        mem[64] = (32 * ('cd', 164).length) + mem[64] + 32
        mem[_7657] = ('cd', 164).length
        mem[_7657 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
        mem[_7657 + (32 * ('cd', 164).length) + 32] = 0
        idx = 0
        while idx < ('cd', 68).length - 1:
            require idx < mem[_7655]
            require idx + 1 < mem[_7655]
            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
            if mem[(32 * idx) + _7655 + 44 len 20] < mem[(32 * idx + 1) + _7655 + 44 len 20]:
                _11030 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                if mem[(32 * idx) + _7655 + 44 len 20] == mem[(32 * idx) + _7655 + 44 len 20]:
                    if idx >= mem[_7655] - 2:
                        require idx < mem[_7657]
                        require idx < mem[_7656]
                        if not mem[(32 * idx) + _7657 + 32]:
                            _12360 = mem[(32 * idx) + _7656 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _11030
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_12360))
                            call address(_12360).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, _11030, this.address
                        else:
                            _12362 = mem[(32 * idx) + _7656 + 32]
                            _12363 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_12363 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_12363 + 36] = 0
                            mem[_12363 + 68] = _11030
                            mem[_12363 + 100] = this.address
                            mem[_12363 + 132] = 128
                            mem[_12363 + 164] = mem[_12363]
                            s = 0
                            while s < mem[_12363]:
                                mem[s + _12363 + 196] = mem[s + _12363 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_12363]) > mem[_12363]:
                                mem[mem[_12363] + _12363 + 196] = 0
                            require ext_code.size(address(_12362))
                            call address(_12362).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _11030, address(this.address), 128, mem[_12363], mem[_12363 + 196 len ceil32(mem[_12363])]
                    else:
                        require idx + 1 < mem[_7656]
                        _11372 = mem[(32 * idx + 1) + _7656 + 32]
                        require idx < mem[_7657]
                        require idx < mem[_7656]
                        if not mem[(32 * idx) + _7657 + 32]:
                            _12872 = mem[(32 * idx) + _7656 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _11030
                            mem[mem[64] + 68] = address(_11372)
                            require ext_code.size(address(_12872))
                            call address(_12872).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, _11030, address(_11372)
                        else:
                            _12874 = mem[(32 * idx) + _7656 + 32]
                            _12875 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_12875 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_12875 + 36] = 0
                            mem[_12875 + 68] = _11030
                            mem[_12875 + 100] = address(_11372)
                            mem[_12875 + 132] = 128
                            mem[_12875 + 164] = mem[_12875]
                            s = 0
                            while s < mem[_12875]:
                                mem[s + _12875 + 196] = mem[s + _12875 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_12875]) > mem[_12875]:
                                mem[mem[_12875] + _12875 + 196] = 0
                            require ext_code.size(address(_12874))
                            call address(_12874).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _11030, address(_11372), 128, mem[_12875], mem[_12875 + 196 len ceil32(mem[_12875])]
                else:
                    if idx >= mem[_7655] - 2:
                        require idx < mem[_7657]
                        require idx < mem[_7656]
                        if not mem[(32 * idx) + _7657 + 32]:
                            _12366 = mem[(32 * idx) + _7656 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _11030
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_12366))
                            call address(_12366).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args _11030, 0, this.address
                        else:
                            _12368 = mem[(32 * idx) + _7656 + 32]
                            _12369 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_12369 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_12369 + 36] = _11030
                            mem[_12369 + 68] = 0
                            mem[_12369 + 100] = this.address
                            mem[_12369 + 132] = 128
                            mem[_12369 + 164] = mem[_12369]
                            s = 0
                            while s < mem[_12369]:
                                mem[s + _12369 + 196] = mem[s + _12369 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_12369]) > mem[_12369]:
                                mem[mem[_12369] + _12369 + 196] = 0
                            require ext_code.size(address(_12368))
                            call address(_12368).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _11030, 0, address(this.address), 128, mem[_12369], mem[_12369 + 196 len ceil32(mem[_12369])]
                    else:
                        require idx + 1 < mem[_7656]
                        _11374 = mem[(32 * idx + 1) + _7656 + 32]
                        require idx < mem[_7657]
                        require idx < mem[_7656]
                        if not mem[(32 * idx) + _7657 + 32]:
                            _12877 = mem[(32 * idx) + _7656 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _11030
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_11374)
                            require ext_code.size(address(_12877))
                            call address(_12877).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args _11030, 0, address(_11374)
                        else:
                            _12879 = mem[(32 * idx) + _7656 + 32]
                            _12880 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_12880 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_12880 + 36] = _11030
                            mem[_12880 + 68] = 0
                            mem[_12880 + 100] = address(_11374)
                            mem[_12880 + 132] = 128
                            mem[_12880 + 164] = mem[_12880]
                            s = 0
                            while s < mem[_12880]:
                                mem[s + _12880 + 196] = mem[s + _12880 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_12880]) > mem[_12880]:
                                mem[mem[_12880] + _12880 + 196] = 0
                            require ext_code.size(address(_12879))
                            call address(_12879).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _11030, 0, address(_11374), 128, mem[_12880], mem[_12880 + 196 len ceil32(mem[_12880])]
            else:
                _11031 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                if mem[(32 * idx) + _7655 + 44 len 20] == mem[(32 * idx + 1) + _7655 + 44 len 20]:
                    if idx >= mem[_7655] - 2:
                        require idx < mem[_7657]
                        require idx < mem[_7656]
                        if not mem[(32 * idx) + _7657 + 32]:
                            _12372 = mem[(32 * idx) + _7656 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _11031
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_12372))
                            call address(_12372).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, _11031, this.address
                        else:
                            _12374 = mem[(32 * idx) + _7656 + 32]
                            _12375 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_12375 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_12375 + 36] = 0
                            mem[_12375 + 68] = _11031
                            mem[_12375 + 100] = this.address
                            mem[_12375 + 132] = 128
                            mem[_12375 + 164] = mem[_12375]
                            s = 0
                            while s < mem[_12375]:
                                mem[s + _12375 + 196] = mem[s + _12375 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_12375]) > mem[_12375]:
                                mem[mem[_12375] + _12375 + 196] = 0
                            require ext_code.size(address(_12374))
                            call address(_12374).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _11031, address(this.address), 128, mem[_12375], mem[_12375 + 196 len ceil32(mem[_12375])]
                    else:
                        require idx + 1 < mem[_7656]
                        _11376 = mem[(32 * idx + 1) + _7656 + 32]
                        require idx < mem[_7657]
                        require idx < mem[_7656]
                        if not mem[(32 * idx) + _7657 + 32]:
                            _12882 = mem[(32 * idx) + _7656 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _11031
                            mem[mem[64] + 68] = address(_11376)
                            require ext_code.size(address(_12882))
                            call address(_12882).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, _11031, address(_11376)
                        else:
                            _12884 = mem[(32 * idx) + _7656 + 32]
                            _12885 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_12885 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_12885 + 36] = 0
                            mem[_12885 + 68] = _11031
                            mem[_12885 + 100] = address(_11376)
                            mem[_12885 + 132] = 128
                            mem[_12885 + 164] = mem[_12885]
                            s = 0
                            while s < mem[_12885]:
                                mem[s + _12885 + 196] = mem[s + _12885 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_12885]) > mem[_12885]:
                                mem[mem[_12885] + _12885 + 196] = 0
                            require ext_code.size(address(_12884))
                            call address(_12884).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _11031, address(_11376), 128, mem[_12885], mem[_12885 + 196 len ceil32(mem[_12885])]
                else:
                    if idx >= mem[_7655] - 2:
                        require idx < mem[_7657]
                        require idx < mem[_7656]
                        if not mem[(32 * idx) + _7657 + 32]:
                            _12378 = mem[(32 * idx) + _7656 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _11031
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_12378))
                            call address(_12378).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args _11031, 0, this.address
                        else:
                            _12380 = mem[(32 * idx) + _7656 + 32]
                            _12381 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_12381 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_12381 + 36] = _11031
                            mem[_12381 + 68] = 0
                            mem[_12381 + 100] = this.address
                            mem[_12381 + 132] = 128
                            mem[_12381 + 164] = mem[_12381]
                            s = 0
                            while s < mem[_12381]:
                                mem[s + _12381 + 196] = mem[s + _12381 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_12381]) > mem[_12381]:
                                mem[mem[_12381] + _12381 + 196] = 0
                            require ext_code.size(address(_12380))
                            call address(_12380).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _11031, 0, address(this.address), 128, mem[_12381], mem[_12381 + 196 len ceil32(mem[_12381])]
                    else:
                        require idx + 1 < mem[_7656]
                        _11378 = mem[(32 * idx + 1) + _7656 + 32]
                        require idx < mem[_7657]
                        require idx < mem[_7656]
                        if not mem[(32 * idx) + _7657 + 32]:
                            _12887 = mem[(32 * idx) + _7656 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _11031
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_11378)
                            require ext_code.size(address(_12887))
                            call address(_12887).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args _11031, 0, address(_11378)
                        else:
                            _12889 = mem[(32 * idx) + _7656 + 32]
                            _12890 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_12890 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_12890 + 36] = _11031
                            mem[_12890 + 68] = 0
                            mem[_12890 + 100] = address(_11378)
                            mem[_12890 + 132] = 128
                            mem[_12890 + 164] = mem[_12890]
                            s = 0
                            while s < mem[_12890]:
                                mem[s + _12890 + 196] = mem[s + _12890 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_12890]) > mem[_12890]:
                                mem[mem[_12890] + _12890 + 196] = 0
                            require ext_code.size(address(_12889))
                            call address(_12889).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _11031, 0, address(_11378), 128, mem[_12890], mem[_12890 + 196 len ceil32(mem[_12890])]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _10941 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
        mem[mem[64] + 32] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
        mem[mem[64] + 64 len 32 * _10941] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * _10941]
        return 32, mem[mem[64] + 32 len (32 * _10941) + 32]
    mem[_3819 + _3751 + 132] = 0
    call address(('cd', 68)[0]) with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _3819 + _3751 + -mem[64] + 128]
    if not return_data.size:
        if not ext_call.success:
            _7430 = mem[64]
            mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
            mem[_7430] = ('cd', 68).length
            mem[_7430 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
            mem[_7430 + (32 * ('cd', 68).length) + 32] = 0
            _7431 = mem[64]
            mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
            mem[_7431] = ('cd', 100).length
            mem[_7431 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
            mem[_7431 + (32 * ('cd', 100).length) + 32] = 0
            _7432 = mem[64]
            mem[64] = (32 * ('cd', 164).length) + mem[64] + 32
            mem[_7432] = ('cd', 164).length
            mem[_7432 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
            mem[_7432 + (32 * ('cd', 164).length) + 32] = 0
            idx = 0
            while idx < ('cd', 68).length - 1:
                require idx < mem[_7430]
                require idx + 1 < mem[_7430]
                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                if mem[(32 * idx) + _7430 + 44 len 20] < mem[(32 * idx + 1) + _7430 + 44 len 20]:
                    _11032 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                    if mem[(32 * idx) + _7430 + 44 len 20] == mem[(32 * idx) + _7430 + 44 len 20]:
                        if idx >= mem[_7430] - 2:
                            require idx < mem[_7432]
                            require idx < mem[_7431]
                            if not mem[(32 * idx) + _7432 + 32]:
                                _12385 = mem[(32 * idx) + _7431 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _11032
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_12385))
                                call address(_12385).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _11032, this.address
                            else:
                                _12387 = mem[(32 * idx) + _7431 + 32]
                                _12388 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12388 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12388 + 36] = 0
                                mem[_12388 + 68] = _11032
                                mem[_12388 + 100] = this.address
                                mem[_12388 + 132] = 128
                                mem[_12388 + 164] = mem[_12388]
                                s = 0
                                while s < mem[_12388]:
                                    mem[s + _12388 + 196] = mem[s + _12388 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12388]) > mem[_12388]:
                                    mem[mem[_12388] + _12388 + 196] = 0
                                require ext_code.size(address(_12387))
                                call address(_12387).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _11032, address(this.address), 128, mem[_12388], mem[_12388 + 196 len ceil32(mem[_12388])]
                        else:
                            require idx + 1 < mem[_7431]
                            _11380 = mem[(32 * idx + 1) + _7431 + 32]
                            require idx < mem[_7432]
                            require idx < mem[_7431]
                            if not mem[(32 * idx) + _7432 + 32]:
                                _12892 = mem[(32 * idx) + _7431 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _11032
                                mem[mem[64] + 68] = address(_11380)
                                require ext_code.size(address(_12892))
                                call address(_12892).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _11032, address(_11380)
                            else:
                                _12894 = mem[(32 * idx) + _7431 + 32]
                                _12895 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12895 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12895 + 36] = 0
                                mem[_12895 + 68] = _11032
                                mem[_12895 + 100] = address(_11380)
                                mem[_12895 + 132] = 128
                                mem[_12895 + 164] = mem[_12895]
                                s = 0
                                while s < mem[_12895]:
                                    mem[s + _12895 + 196] = mem[s + _12895 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12895]) > mem[_12895]:
                                    mem[mem[_12895] + _12895 + 196] = 0
                                require ext_code.size(address(_12894))
                                call address(_12894).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _11032, address(_11380), 128, mem[_12895], mem[_12895 + 196 len ceil32(mem[_12895])]
                    else:
                        if idx >= mem[_7430] - 2:
                            require idx < mem[_7432]
                            require idx < mem[_7431]
                            if not mem[(32 * idx) + _7432 + 32]:
                                _12391 = mem[(32 * idx) + _7431 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _11032
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_12391))
                                call address(_12391).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _11032, 0, this.address
                            else:
                                _12393 = mem[(32 * idx) + _7431 + 32]
                                _12394 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12394 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12394 + 36] = _11032
                                mem[_12394 + 68] = 0
                                mem[_12394 + 100] = this.address
                                mem[_12394 + 132] = 128
                                mem[_12394 + 164] = mem[_12394]
                                s = 0
                                while s < mem[_12394]:
                                    mem[s + _12394 + 196] = mem[s + _12394 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12394]) > mem[_12394]:
                                    mem[mem[_12394] + _12394 + 196] = 0
                                require ext_code.size(address(_12393))
                                call address(_12393).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _11032, 0, address(this.address), 128, mem[_12394], mem[_12394 + 196 len ceil32(mem[_12394])]
                        else:
                            require idx + 1 < mem[_7431]
                            _11382 = mem[(32 * idx + 1) + _7431 + 32]
                            require idx < mem[_7432]
                            require idx < mem[_7431]
                            if not mem[(32 * idx) + _7432 + 32]:
                                _12897 = mem[(32 * idx) + _7431 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _11032
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_11382)
                                require ext_code.size(address(_12897))
                                call address(_12897).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _11032, 0, address(_11382)
                            else:
                                _12899 = mem[(32 * idx) + _7431 + 32]
                                _12900 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12900 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12900 + 36] = _11032
                                mem[_12900 + 68] = 0
                                mem[_12900 + 100] = address(_11382)
                                mem[_12900 + 132] = 128
                                mem[_12900 + 164] = mem[_12900]
                                s = 0
                                while s < mem[_12900]:
                                    mem[s + _12900 + 196] = mem[s + _12900 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12900]) > mem[_12900]:
                                    mem[mem[_12900] + _12900 + 196] = 0
                                require ext_code.size(address(_12899))
                                call address(_12899).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _11032, 0, address(_11382), 128, mem[_12900], mem[_12900 + 196 len ceil32(mem[_12900])]
                else:
                    _11033 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                    if mem[(32 * idx) + _7430 + 44 len 20] == mem[(32 * idx + 1) + _7430 + 44 len 20]:
                        if idx >= mem[_7430] - 2:
                            require idx < mem[_7432]
                            require idx < mem[_7431]
                            if not mem[(32 * idx) + _7432 + 32]:
                                _12397 = mem[(32 * idx) + _7431 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _11033
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_12397))
                                call address(_12397).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _11033, this.address
                            else:
                                _12399 = mem[(32 * idx) + _7431 + 32]
                                _12400 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12400 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12400 + 36] = 0
                                mem[_12400 + 68] = _11033
                                mem[_12400 + 100] = this.address
                                mem[_12400 + 132] = 128
                                mem[_12400 + 164] = mem[_12400]
                                s = 0
                                while s < mem[_12400]:
                                    mem[s + _12400 + 196] = mem[s + _12400 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12400]) > mem[_12400]:
                                    mem[mem[_12400] + _12400 + 196] = 0
                                require ext_code.size(address(_12399))
                                call address(_12399).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _11033, address(this.address), 128, mem[_12400], mem[_12400 + 196 len ceil32(mem[_12400])]
                        else:
                            require idx + 1 < mem[_7431]
                            _11384 = mem[(32 * idx + 1) + _7431 + 32]
                            require idx < mem[_7432]
                            require idx < mem[_7431]
                            if not mem[(32 * idx) + _7432 + 32]:
                                _12902 = mem[(32 * idx) + _7431 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _11033
                                mem[mem[64] + 68] = address(_11384)
                                require ext_code.size(address(_12902))
                                call address(_12902).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _11033, address(_11384)
                            else:
                                _12904 = mem[(32 * idx) + _7431 + 32]
                                _12905 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12905 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12905 + 36] = 0
                                mem[_12905 + 68] = _11033
                                mem[_12905 + 100] = address(_11384)
                                mem[_12905 + 132] = 128
                                mem[_12905 + 164] = mem[_12905]
                                s = 0
                                while s < mem[_12905]:
                                    mem[s + _12905 + 196] = mem[s + _12905 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12905]) > mem[_12905]:
                                    mem[mem[_12905] + _12905 + 196] = 0
                                require ext_code.size(address(_12904))
                                call address(_12904).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _11033, address(_11384), 128, mem[_12905], mem[_12905 + 196 len ceil32(mem[_12905])]
                    else:
                        if idx >= mem[_7430] - 2:
                            require idx < mem[_7432]
                            require idx < mem[_7431]
                            if not mem[(32 * idx) + _7432 + 32]:
                                _12403 = mem[(32 * idx) + _7431 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _11033
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_12403))
                                call address(_12403).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _11033, 0, this.address
                            else:
                                _12405 = mem[(32 * idx) + _7431 + 32]
                                _12406 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12406 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12406 + 36] = _11033
                                mem[_12406 + 68] = 0
                                mem[_12406 + 100] = this.address
                                mem[_12406 + 132] = 128
                                mem[_12406 + 164] = mem[_12406]
                                s = 0
                                while s < mem[_12406]:
                                    mem[s + _12406 + 196] = mem[s + _12406 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12406]) > mem[_12406]:
                                    mem[mem[_12406] + _12406 + 196] = 0
                                require ext_code.size(address(_12405))
                                call address(_12405).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _11033, 0, address(this.address), 128, mem[_12406], mem[_12406 + 196 len ceil32(mem[_12406])]
                        else:
                            require idx + 1 < mem[_7431]
                            _11386 = mem[(32 * idx + 1) + _7431 + 32]
                            require idx < mem[_7432]
                            require idx < mem[_7431]
                            if not mem[(32 * idx) + _7432 + 32]:
                                _12907 = mem[(32 * idx) + _7431 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _11033
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_11386)
                                require ext_code.size(address(_12907))
                                call address(_12907).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _11033, 0, address(_11386)
                            else:
                                _12909 = mem[(32 * idx) + _7431 + 32]
                                _12910 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12910 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12910 + 36] = _11033
                                mem[_12910 + 68] = 0
                                mem[_12910 + 100] = address(_11386)
                                mem[_12910 + 132] = 128
                                mem[_12910 + 164] = mem[_12910]
                                s = 0
                                while s < mem[_12910]:
                                    mem[s + _12910 + 196] = mem[s + _12910 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12910]) > mem[_12910]:
                                    mem[mem[_12910] + _12910 + 196] = 0
                                require ext_code.size(address(_12909))
                                call address(_12909).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _11033, 0, address(_11386), 128, mem[_12910], mem[_12910 + 196 len ceil32(mem[_12910])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _10942 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
            mem[mem[64] + 32] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
            mem[mem[64] + 64 len 32 * _10942] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * _10942]
            return 32, mem[mem[64] + 32 len (32 * _10942) + 32]
        if not mem[96]:
            _7454 = mem[64]
            mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
            mem[_7454] = ('cd', 68).length
            mem[_7454 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
            mem[_7454 + (32 * ('cd', 68).length) + 32] = 0
            _7455 = mem[64]
            mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
            mem[_7455] = ('cd', 100).length
            mem[_7455 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
            mem[_7455 + (32 * ('cd', 100).length) + 32] = 0
            _7456 = mem[64]
            mem[64] = (32 * ('cd', 164).length) + mem[64] + 32
            mem[_7456] = ('cd', 164).length
            mem[_7456 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
            mem[_7456 + (32 * ('cd', 164).length) + 32] = 0
            idx = 0
            while idx < ('cd', 68).length - 1:
                require idx < mem[_7454]
                require idx + 1 < mem[_7454]
                require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
                if mem[(32 * idx) + _7454 + 44 len 20] < mem[(32 * idx + 1) + _7454 + 44 len 20]:
                    _11034 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                    if mem[(32 * idx) + _7454 + 44 len 20] == mem[(32 * idx) + _7454 + 44 len 20]:
                        if idx >= mem[_7454] - 2:
                            require idx < mem[_7456]
                            require idx < mem[_7455]
                            if not mem[(32 * idx) + _7456 + 32]:
                                _12410 = mem[(32 * idx) + _7455 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _11034
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_12410))
                                call address(_12410).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _11034, this.address
                            else:
                                _12412 = mem[(32 * idx) + _7455 + 32]
                                _12413 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12413 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12413 + 36] = 0
                                mem[_12413 + 68] = _11034
                                mem[_12413 + 100] = this.address
                                mem[_12413 + 132] = 128
                                mem[_12413 + 164] = mem[_12413]
                                s = 0
                                while s < mem[_12413]:
                                    mem[s + _12413 + 196] = mem[s + _12413 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12413]) > mem[_12413]:
                                    mem[mem[_12413] + _12413 + 196] = 0
                                require ext_code.size(address(_12412))
                                call address(_12412).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _11034, address(this.address), 128, mem[_12413], mem[_12413 + 196 len ceil32(mem[_12413])]
                        else:
                            require idx + 1 < mem[_7455]
                            _11388 = mem[(32 * idx + 1) + _7455 + 32]
                            require idx < mem[_7456]
                            require idx < mem[_7455]
                            if not mem[(32 * idx) + _7456 + 32]:
                                _12912 = mem[(32 * idx) + _7455 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _11034
                                mem[mem[64] + 68] = address(_11388)
                                require ext_code.size(address(_12912))
                                call address(_12912).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _11034, address(_11388)
                            else:
                                _12914 = mem[(32 * idx) + _7455 + 32]
                                _12915 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12915 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12915 + 36] = 0
                                mem[_12915 + 68] = _11034
                                mem[_12915 + 100] = address(_11388)
                                mem[_12915 + 132] = 128
                                mem[_12915 + 164] = mem[_12915]
                                s = 0
                                while s < mem[_12915]:
                                    mem[s + _12915 + 196] = mem[s + _12915 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12915]) > mem[_12915]:
                                    mem[mem[_12915] + _12915 + 196] = 0
                                require ext_code.size(address(_12914))
                                call address(_12914).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _11034, address(_11388), 128, mem[_12915], mem[_12915 + 196 len ceil32(mem[_12915])]
                    else:
                        if idx >= mem[_7454] - 2:
                            require idx < mem[_7456]
                            require idx < mem[_7455]
                            if not mem[(32 * idx) + _7456 + 32]:
                                _12416 = mem[(32 * idx) + _7455 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _11034
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_12416))
                                call address(_12416).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _11034, 0, this.address
                            else:
                                _12418 = mem[(32 * idx) + _7455 + 32]
                                _12419 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12419 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12419 + 36] = _11034
                                mem[_12419 + 68] = 0
                                mem[_12419 + 100] = this.address
                                mem[_12419 + 132] = 128
                                mem[_12419 + 164] = mem[_12419]
                                s = 0
                                while s < mem[_12419]:
                                    mem[s + _12419 + 196] = mem[s + _12419 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12419]) > mem[_12419]:
                                    mem[mem[_12419] + _12419 + 196] = 0
                                require ext_code.size(address(_12418))
                                call address(_12418).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _11034, 0, address(this.address), 128, mem[_12419], mem[_12419 + 196 len ceil32(mem[_12419])]
                        else:
                            require idx + 1 < mem[_7455]
                            _11390 = mem[(32 * idx + 1) + _7455 + 32]
                            require idx < mem[_7456]
                            require idx < mem[_7455]
                            if not mem[(32 * idx) + _7456 + 32]:
                                _12917 = mem[(32 * idx) + _7455 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _11034
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_11390)
                                require ext_code.size(address(_12917))
                                call address(_12917).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _11034, 0, address(_11390)
                            else:
                                _12919 = mem[(32 * idx) + _7455 + 32]
                                _12920 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12920 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12920 + 36] = _11034
                                mem[_12920 + 68] = 0
                                mem[_12920 + 100] = address(_11390)
                                mem[_12920 + 132] = 128
                                mem[_12920 + 164] = mem[_12920]
                                s = 0
                                while s < mem[_12920]:
                                    mem[s + _12920 + 196] = mem[s + _12920 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12920]) > mem[_12920]:
                                    mem[mem[_12920] + _12920 + 196] = 0
                                require ext_code.size(address(_12919))
                                call address(_12919).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _11034, 0, address(_11390), 128, mem[_12920], mem[_12920 + 196 len ceil32(mem[_12920])]
                else:
                    _11035 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                    if mem[(32 * idx) + _7454 + 44 len 20] == mem[(32 * idx + 1) + _7454 + 44 len 20]:
                        if idx >= mem[_7454] - 2:
                            require idx < mem[_7456]
                            require idx < mem[_7455]
                            if not mem[(32 * idx) + _7456 + 32]:
                                _12422 = mem[(32 * idx) + _7455 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _11035
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_12422))
                                call address(_12422).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _11035, this.address
                            else:
                                _12424 = mem[(32 * idx) + _7455 + 32]
                                _12425 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12425 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12425 + 36] = 0
                                mem[_12425 + 68] = _11035
                                mem[_12425 + 100] = this.address
                                mem[_12425 + 132] = 128
                                mem[_12425 + 164] = mem[_12425]
                                s = 0
                                while s < mem[_12425]:
                                    mem[s + _12425 + 196] = mem[s + _12425 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12425]) > mem[_12425]:
                                    mem[mem[_12425] + _12425 + 196] = 0
                                require ext_code.size(address(_12424))
                                call address(_12424).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _11035, address(this.address), 128, mem[_12425], mem[_12425 + 196 len ceil32(mem[_12425])]
                        else:
                            require idx + 1 < mem[_7455]
                            _11392 = mem[(32 * idx + 1) + _7455 + 32]
                            require idx < mem[_7456]
                            require idx < mem[_7455]
                            if not mem[(32 * idx) + _7456 + 32]:
                                _12922 = mem[(32 * idx) + _7455 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _11035
                                mem[mem[64] + 68] = address(_11392)
                                require ext_code.size(address(_12922))
                                call address(_12922).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _11035, address(_11392)
                            else:
                                _12924 = mem[(32 * idx) + _7455 + 32]
                                _12925 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12925 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12925 + 36] = 0
                                mem[_12925 + 68] = _11035
                                mem[_12925 + 100] = address(_11392)
                                mem[_12925 + 132] = 128
                                mem[_12925 + 164] = mem[_12925]
                                s = 0
                                while s < mem[_12925]:
                                    mem[s + _12925 + 196] = mem[s + _12925 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12925]) > mem[_12925]:
                                    mem[mem[_12925] + _12925 + 196] = 0
                                require ext_code.size(address(_12924))
                                call address(_12924).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _11035, address(_11392), 128, mem[_12925], mem[_12925 + 196 len ceil32(mem[_12925])]
                    else:
                        if idx >= mem[_7454] - 2:
                            require idx < mem[_7456]
                            require idx < mem[_7455]
                            if not mem[(32 * idx) + _7456 + 32]:
                                _12428 = mem[(32 * idx) + _7455 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _11035
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_12428))
                                call address(_12428).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _11035, 0, this.address
                            else:
                                _12430 = mem[(32 * idx) + _7455 + 32]
                                _12431 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12431 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12431 + 36] = _11035
                                mem[_12431 + 68] = 0
                                mem[_12431 + 100] = this.address
                                mem[_12431 + 132] = 128
                                mem[_12431 + 164] = mem[_12431]
                                s = 0
                                while s < mem[_12431]:
                                    mem[s + _12431 + 196] = mem[s + _12431 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12431]) > mem[_12431]:
                                    mem[mem[_12431] + _12431 + 196] = 0
                                require ext_code.size(address(_12430))
                                call address(_12430).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _11035, 0, address(this.address), 128, mem[_12431], mem[_12431 + 196 len ceil32(mem[_12431])]
                        else:
                            require idx + 1 < mem[_7455]
                            _11394 = mem[(32 * idx + 1) + _7455 + 32]
                            require idx < mem[_7456]
                            require idx < mem[_7455]
                            if not mem[(32 * idx) + _7456 + 32]:
                                _12927 = mem[(32 * idx) + _7455 + 32]
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _11035
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_11394)
                                require ext_code.size(address(_12927))
                                call address(_12927).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _11035, 0, address(_11394)
                            else:
                                _12929 = mem[(32 * idx) + _7455 + 32]
                                _12930 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_12930 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_12930 + 36] = _11035
                                mem[_12930 + 68] = 0
                                mem[_12930 + 100] = address(_11394)
                                mem[_12930 + 132] = 128
                                mem[_12930 + 164] = mem[_12930]
                                s = 0
                                while s < mem[_12930]:
                                    mem[s + _12930 + 196] = mem[s + _12930 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_12930]) > mem[_12930]:
                                    mem[mem[_12930] + _12930 + 196] = 0
                                require ext_code.size(address(_12929))
                                call address(_12929).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _11035, 0, address(_11394), 128, mem[_12930], mem[_12930 + 196 len ceil32(mem[_12930])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _10943 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
            mem[mem[64] + 32] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
            mem[mem[64] + 64 len 32 * _10943] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * _10943]
            return 32, mem[mem[64] + 32 len (32 * _10943) + 32]
        require mem[96] >= 32
        require mem[128] == bool(mem[128])
        _7660 = mem[64]
        mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
        mem[_7660] = ('cd', 68).length
        mem[_7660 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
        mem[_7660 + (32 * ('cd', 68).length) + 32] = 0
        _7661 = mem[64]
        mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
        mem[_7661] = ('cd', 100).length
        mem[_7661 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
        mem[_7661 + (32 * ('cd', 100).length) + 32] = 0
        _7662 = mem[64]
        mem[64] = (32 * ('cd', 164).length) + mem[64] + 32
        mem[_7662] = ('cd', 164).length
        mem[_7662 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
        mem[_7662 + (32 * ('cd', 164).length) + 32] = 0
        idx = 0
        while idx < ('cd', 68).length - 1:
            require idx < mem[_7660]
            require idx + 1 < mem[_7660]
            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
            if mem[(32 * idx) + _7660 + 44 len 20] < mem[(32 * idx + 1) + _7660 + 44 len 20]:
                _11036 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                if mem[(32 * idx) + _7660 + 44 len 20] == mem[(32 * idx) + _7660 + 44 len 20]:
                    if idx >= mem[_7660] - 2:
                        require idx < mem[_7662]
                        require idx < mem[_7661]
                        if not mem[(32 * idx) + _7662 + 32]:
                            _12435 = mem[(32 * idx) + _7661 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _11036
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_12435))
                            call address(_12435).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, _11036, this.address
                        else:
                            _12437 = mem[(32 * idx) + _7661 + 32]
                            _12438 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_12438 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_12438 + 36] = 0
                            mem[_12438 + 68] = _11036
                            mem[_12438 + 100] = this.address
                            mem[_12438 + 132] = 128
                            mem[_12438 + 164] = mem[_12438]
                            s = 0
                            while s < mem[_12438]:
                                mem[s + _12438 + 196] = mem[s + _12438 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_12438]) > mem[_12438]:
                                mem[mem[_12438] + _12438 + 196] = 0
                            require ext_code.size(address(_12437))
                            call address(_12437).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _11036, address(this.address), 128, mem[_12438], mem[_12438 + 196 len ceil32(mem[_12438])]
                    else:
                        require idx + 1 < mem[_7661]
                        _11396 = mem[(32 * idx + 1) + _7661 + 32]
                        require idx < mem[_7662]
                        require idx < mem[_7661]
                        if not mem[(32 * idx) + _7662 + 32]:
                            _12932 = mem[(32 * idx) + _7661 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _11036
                            mem[mem[64] + 68] = address(_11396)
                            require ext_code.size(address(_12932))
                            call address(_12932).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, _11036, address(_11396)
                        else:
                            _12934 = mem[(32 * idx) + _7661 + 32]
                            _12935 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_12935 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_12935 + 36] = 0
                            mem[_12935 + 68] = _11036
                            mem[_12935 + 100] = address(_11396)
                            mem[_12935 + 132] = 128
                            mem[_12935 + 164] = mem[_12935]
                            s = 0
                            while s < mem[_12935]:
                                mem[s + _12935 + 196] = mem[s + _12935 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_12935]) > mem[_12935]:
                                mem[mem[_12935] + _12935 + 196] = 0
                            require ext_code.size(address(_12934))
                            call address(_12934).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _11036, address(_11396), 128, mem[_12935], mem[_12935 + 196 len ceil32(mem[_12935])]
                else:
                    if idx >= mem[_7660] - 2:
                        require idx < mem[_7662]
                        require idx < mem[_7661]
                        if not mem[(32 * idx) + _7662 + 32]:
                            _12441 = mem[(32 * idx) + _7661 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _11036
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_12441))
                            call address(_12441).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args _11036, 0, this.address
                        else:
                            _12443 = mem[(32 * idx) + _7661 + 32]
                            _12444 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_12444 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_12444 + 36] = _11036
                            mem[_12444 + 68] = 0
                            mem[_12444 + 100] = this.address
                            mem[_12444 + 132] = 128
                            mem[_12444 + 164] = mem[_12444]
                            s = 0
                            while s < mem[_12444]:
                                mem[s + _12444 + 196] = mem[s + _12444 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_12444]) > mem[_12444]:
                                mem[mem[_12444] + _12444 + 196] = 0
                            require ext_code.size(address(_12443))
                            call address(_12443).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _11036, 0, address(this.address), 128, mem[_12444], mem[_12444 + 196 len ceil32(mem[_12444])]
                    else:
                        require idx + 1 < mem[_7661]
                        _11398 = mem[(32 * idx + 1) + _7661 + 32]
                        require idx < mem[_7662]
                        require idx < mem[_7661]
                        if not mem[(32 * idx) + _7662 + 32]:
                            _12937 = mem[(32 * idx) + _7661 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _11036
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_11398)
                            require ext_code.size(address(_12937))
                            call address(_12937).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args _11036, 0, address(_11398)
                        else:
                            _12939 = mem[(32 * idx) + _7661 + 32]
                            _12940 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_12940 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_12940 + 36] = _11036
                            mem[_12940 + 68] = 0
                            mem[_12940 + 100] = address(_11398)
                            mem[_12940 + 132] = 128
                            mem[_12940 + 164] = mem[_12940]
                            s = 0
                            while s < mem[_12940]:
                                mem[s + _12940 + 196] = mem[s + _12940 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_12940]) > mem[_12940]:
                                mem[mem[_12940] + _12940 + 196] = 0
                            require ext_code.size(address(_12939))
                            call address(_12939).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _11036, 0, address(_11398), 128, mem[_12940], mem[_12940 + 196 len ceil32(mem[_12940])]
            else:
                _11037 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                if mem[(32 * idx) + _7660 + 44 len 20] == mem[(32 * idx + 1) + _7660 + 44 len 20]:
                    if idx >= mem[_7660] - 2:
                        require idx < mem[_7662]
                        require idx < mem[_7661]
                        if not mem[(32 * idx) + _7662 + 32]:
                            _12447 = mem[(32 * idx) + _7661 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _11037
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_12447))
                            call address(_12447).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, _11037, this.address
                        else:
                            _12449 = mem[(32 * idx) + _7661 + 32]
                            _12450 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_12450 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_12450 + 36] = 0
                            mem[_12450 + 68] = _11037
                            mem[_12450 + 100] = this.address
                            mem[_12450 + 132] = 128
                            mem[_12450 + 164] = mem[_12450]
                            s = 0
                            while s < mem[_12450]:
                                mem[s + _12450 + 196] = mem[s + _12450 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_12450]) > mem[_12450]:
                                mem[mem[_12450] + _12450 + 196] = 0
                            require ext_code.size(address(_12449))
                            call address(_12449).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _11037, address(this.address), 128, mem[_12450], mem[_12450 + 196 len ceil32(mem[_12450])]
                    else:
                        require idx + 1 < mem[_7661]
                        _11400 = mem[(32 * idx + 1) + _7661 + 32]
                        require idx < mem[_7662]
                        require idx < mem[_7661]
                        if not mem[(32 * idx) + _7662 + 32]:
                            _12942 = mem[(32 * idx) + _7661 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _11037
                            mem[mem[64] + 68] = address(_11400)
                            require ext_code.size(address(_12942))
                            call address(_12942).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, _11037, address(_11400)
                        else:
                            _12944 = mem[(32 * idx) + _7661 + 32]
                            _12945 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_12945 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_12945 + 36] = 0
                            mem[_12945 + 68] = _11037
                            mem[_12945 + 100] = address(_11400)
                            mem[_12945 + 132] = 128
                            mem[_12945 + 164] = mem[_12945]
                            s = 0
                            while s < mem[_12945]:
                                mem[s + _12945 + 196] = mem[s + _12945 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_12945]) > mem[_12945]:
                                mem[mem[_12945] + _12945 + 196] = 0
                            require ext_code.size(address(_12944))
                            call address(_12944).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _11037, address(_11400), 128, mem[_12945], mem[_12945 + 196 len ceil32(mem[_12945])]
                else:
                    if idx >= mem[_7660] - 2:
                        require idx < mem[_7662]
                        require idx < mem[_7661]
                        if not mem[(32 * idx) + _7662 + 32]:
                            _12453 = mem[(32 * idx) + _7661 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _11037
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_12453))
                            call address(_12453).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args _11037, 0, this.address
                        else:
                            _12455 = mem[(32 * idx) + _7661 + 32]
                            _12456 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_12456 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_12456 + 36] = _11037
                            mem[_12456 + 68] = 0
                            mem[_12456 + 100] = this.address
                            mem[_12456 + 132] = 128
                            mem[_12456 + 164] = mem[_12456]
                            s = 0
                            while s < mem[_12456]:
                                mem[s + _12456 + 196] = mem[s + _12456 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_12456]) > mem[_12456]:
                                mem[mem[_12456] + _12456 + 196] = 0
                            require ext_code.size(address(_12455))
                            call address(_12455).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _11037, 0, address(this.address), 128, mem[_12456], mem[_12456 + 196 len ceil32(mem[_12456])]
                    else:
                        require idx + 1 < mem[_7661]
                        _11402 = mem[(32 * idx + 1) + _7661 + 32]
                        require idx < mem[_7662]
                        require idx < mem[_7661]
                        if not mem[(32 * idx) + _7662 + 32]:
                            _12947 = mem[(32 * idx) + _7661 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _11037
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_11402)
                            require ext_code.size(address(_12947))
                            call address(_12947).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args _11037, 0, address(_11402)
                        else:
                            _12949 = mem[(32 * idx) + _7661 + 32]
                            _12950 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_12950 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_12950 + 36] = _11037
                            mem[_12950 + 68] = 0
                            mem[_12950 + 100] = address(_11402)
                            mem[_12950 + 132] = 128
                            mem[_12950 + 164] = mem[_12950]
                            s = 0
                            while s < mem[_12950]:
                                mem[s + _12950 + 196] = mem[s + _12950 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_12950]) > mem[_12950]:
                                mem[mem[_12950] + _12950 + 196] = 0
                            require ext_code.size(address(_12949))
                            call address(_12949).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _11037, 0, address(_11402), 128, mem[_12950], mem[_12950 + 196 len ceil32(mem[_12950])]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _10944 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
        mem[mem[64] + 32] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
        mem[mem[64] + 64 len 32 * _10944] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * _10944]
        return 32, mem[mem[64] + 32 len (32 * _10944) + 32]
    _7395 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size) + 1
    mem[_7395] = return_data.size
    mem[_7395 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        _7433 = mem[64]
        mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
        mem[_7433] = ('cd', 68).length
        mem[_7433 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
        mem[_7433 + (32 * ('cd', 68).length) + 32] = 0
        _7434 = mem[64]
        mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
        mem[_7434] = ('cd', 100).length
        mem[_7434 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
        mem[_7434 + (32 * ('cd', 100).length) + 32] = 0
        _7435 = mem[64]
        mem[64] = (32 * ('cd', 164).length) + mem[64] + 32
        mem[_7435] = ('cd', 164).length
        mem[_7435 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
        mem[_7435 + (32 * ('cd', 164).length) + 32] = 0
        idx = 0
        while idx < ('cd', 68).length - 1:
            require idx < mem[_7433]
            require idx + 1 < mem[_7433]
            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
            if mem[(32 * idx) + _7433 + 44 len 20] < mem[(32 * idx + 1) + _7433 + 44 len 20]:
                _11038 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                if mem[(32 * idx) + _7433 + 44 len 20] == mem[(32 * idx) + _7433 + 44 len 20]:
                    if idx >= mem[_7433] - 2:
                        require idx < mem[_7435]
                        require idx < mem[_7434]
                        if not mem[(32 * idx) + _7435 + 32]:
                            _12460 = mem[(32 * idx) + _7434 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _11038
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_12460))
                            call address(_12460).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, _11038, this.address
                        else:
                            _12462 = mem[(32 * idx) + _7434 + 32]
                            _12463 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_12463 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_12463 + 36] = 0
                            mem[_12463 + 68] = _11038
                            mem[_12463 + 100] = this.address
                            mem[_12463 + 132] = 128
                            mem[_12463 + 164] = mem[_12463]
                            s = 0
                            while s < mem[_12463]:
                                mem[s + _12463 + 196] = mem[s + _12463 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_12463]) > mem[_12463]:
                                mem[mem[_12463] + _12463 + 196] = 0
                            require ext_code.size(address(_12462))
                            call address(_12462).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _11038, address(this.address), 128, mem[_12463], mem[_12463 + 196 len ceil32(mem[_12463])]
                    else:
                        require idx + 1 < mem[_7434]
                        _11404 = mem[(32 * idx + 1) + _7434 + 32]
                        require idx < mem[_7435]
                        require idx < mem[_7434]
                        if not mem[(32 * idx) + _7435 + 32]:
                            _12952 = mem[(32 * idx) + _7434 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _11038
                            mem[mem[64] + 68] = address(_11404)
                            require ext_code.size(address(_12952))
                            call address(_12952).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, _11038, address(_11404)
                        else:
                            _12954 = mem[(32 * idx) + _7434 + 32]
                            _12955 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_12955 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_12955 + 36] = 0
                            mem[_12955 + 68] = _11038
                            mem[_12955 + 100] = address(_11404)
                            mem[_12955 + 132] = 128
                            mem[_12955 + 164] = mem[_12955]
                            s = 0
                            while s < mem[_12955]:
                                mem[s + _12955 + 196] = mem[s + _12955 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_12955]) > mem[_12955]:
                                mem[mem[_12955] + _12955 + 196] = 0
                            require ext_code.size(address(_12954))
                            call address(_12954).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _11038, address(_11404), 128, mem[_12955], mem[_12955 + 196 len ceil32(mem[_12955])]
                else:
                    if idx >= mem[_7433] - 2:
                        require idx < mem[_7435]
                        require idx < mem[_7434]
                        if not mem[(32 * idx) + _7435 + 32]:
                            _12466 = mem[(32 * idx) + _7434 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _11038
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_12466))
                            call address(_12466).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args _11038, 0, this.address
                        else:
                            _12468 = mem[(32 * idx) + _7434 + 32]
                            _12469 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_12469 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_12469 + 36] = _11038
                            mem[_12469 + 68] = 0
                            mem[_12469 + 100] = this.address
                            mem[_12469 + 132] = 128
                            mem[_12469 + 164] = mem[_12469]
                            s = 0
                            while s < mem[_12469]:
                                mem[s + _12469 + 196] = mem[s + _12469 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_12469]) > mem[_12469]:
                                mem[mem[_12469] + _12469 + 196] = 0
                            require ext_code.size(address(_12468))
                            call address(_12468).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _11038, 0, address(this.address), 128, mem[_12469], mem[_12469 + 196 len ceil32(mem[_12469])]
                    else:
                        require idx + 1 < mem[_7434]
                        _11406 = mem[(32 * idx + 1) + _7434 + 32]
                        require idx < mem[_7435]
                        require idx < mem[_7434]
                        if not mem[(32 * idx) + _7435 + 32]:
                            _12957 = mem[(32 * idx) + _7434 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _11038
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_11406)
                            require ext_code.size(address(_12957))
                            call address(_12957).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args _11038, 0, address(_11406)
                        else:
                            _12959 = mem[(32 * idx) + _7434 + 32]
                            _12960 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_12960 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_12960 + 36] = _11038
                            mem[_12960 + 68] = 0
                            mem[_12960 + 100] = address(_11406)
                            mem[_12960 + 132] = 128
                            mem[_12960 + 164] = mem[_12960]
                            s = 0
                            while s < mem[_12960]:
                                mem[s + _12960 + 196] = mem[s + _12960 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_12960]) > mem[_12960]:
                                mem[mem[_12960] + _12960 + 196] = 0
                            require ext_code.size(address(_12959))
                            call address(_12959).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _11038, 0, address(_11406), 128, mem[_12960], mem[_12960 + 196 len ceil32(mem[_12960])]
            else:
                _11039 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                if mem[(32 * idx) + _7433 + 44 len 20] == mem[(32 * idx + 1) + _7433 + 44 len 20]:
                    if idx >= mem[_7433] - 2:
                        require idx < mem[_7435]
                        require idx < mem[_7434]
                        if not mem[(32 * idx) + _7435 + 32]:
                            _12472 = mem[(32 * idx) + _7434 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _11039
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_12472))
                            call address(_12472).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, _11039, this.address
                        else:
                            _12474 = mem[(32 * idx) + _7434 + 32]
                            _12475 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_12475 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_12475 + 36] = 0
                            mem[_12475 + 68] = _11039
                            mem[_12475 + 100] = this.address
                            mem[_12475 + 132] = 128
                            mem[_12475 + 164] = mem[_12475]
                            s = 0
                            while s < mem[_12475]:
                                mem[s + _12475 + 196] = mem[s + _12475 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_12475]) > mem[_12475]:
                                mem[mem[_12475] + _12475 + 196] = 0
                            require ext_code.size(address(_12474))
                            call address(_12474).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _11039, address(this.address), 128, mem[_12475], mem[_12475 + 196 len ceil32(mem[_12475])]
                    else:
                        require idx + 1 < mem[_7434]
                        _11408 = mem[(32 * idx + 1) + _7434 + 32]
                        require idx < mem[_7435]
                        require idx < mem[_7434]
                        if not mem[(32 * idx) + _7435 + 32]:
                            _12962 = mem[(32 * idx) + _7434 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _11039
                            mem[mem[64] + 68] = address(_11408)
                            require ext_code.size(address(_12962))
                            call address(_12962).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, _11039, address(_11408)
                        else:
                            _12964 = mem[(32 * idx) + _7434 + 32]
                            _12965 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_12965 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_12965 + 36] = 0
                            mem[_12965 + 68] = _11039
                            mem[_12965 + 100] = address(_11408)
                            mem[_12965 + 132] = 128
                            mem[_12965 + 164] = mem[_12965]
                            s = 0
                            while s < mem[_12965]:
                                mem[s + _12965 + 196] = mem[s + _12965 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_12965]) > mem[_12965]:
                                mem[mem[_12965] + _12965 + 196] = 0
                            require ext_code.size(address(_12964))
                            call address(_12964).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _11039, address(_11408), 128, mem[_12965], mem[_12965 + 196 len ceil32(mem[_12965])]
                else:
                    if idx >= mem[_7433] - 2:
                        require idx < mem[_7435]
                        require idx < mem[_7434]
                        if not mem[(32 * idx) + _7435 + 32]:
                            _12478 = mem[(32 * idx) + _7434 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _11039
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_12478))
                            call address(_12478).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args _11039, 0, this.address
                        else:
                            _12480 = mem[(32 * idx) + _7434 + 32]
                            _12481 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_12481 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_12481 + 36] = _11039
                            mem[_12481 + 68] = 0
                            mem[_12481 + 100] = this.address
                            mem[_12481 + 132] = 128
                            mem[_12481 + 164] = mem[_12481]
                            s = 0
                            while s < mem[_12481]:
                                mem[s + _12481 + 196] = mem[s + _12481 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_12481]) > mem[_12481]:
                                mem[mem[_12481] + _12481 + 196] = 0
                            require ext_code.size(address(_12480))
                            call address(_12480).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _11039, 0, address(this.address), 128, mem[_12481], mem[_12481 + 196 len ceil32(mem[_12481])]
                    else:
                        require idx + 1 < mem[_7434]
                        _11410 = mem[(32 * idx + 1) + _7434 + 32]
                        require idx < mem[_7435]
                        require idx < mem[_7434]
                        if not mem[(32 * idx) + _7435 + 32]:
                            _12967 = mem[(32 * idx) + _7434 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _11039
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_11410)
                            require ext_code.size(address(_12967))
                            call address(_12967).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args _11039, 0, address(_11410)
                        else:
                            _12969 = mem[(32 * idx) + _7434 + 32]
                            _12970 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_12970 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_12970 + 36] = _11039
                            mem[_12970 + 68] = 0
                            mem[_12970 + 100] = address(_11410)
                            mem[_12970 + 132] = 128
                            mem[_12970 + 164] = mem[_12970]
                            s = 0
                            while s < mem[_12970]:
                                mem[s + _12970 + 196] = mem[s + _12970 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_12970]) > mem[_12970]:
                                mem[mem[_12970] + _12970 + 196] = 0
                            require ext_code.size(address(_12969))
                            call address(_12969).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _11039, 0, address(_11410), 128, mem[_12970], mem[_12970 + 196 len ceil32(mem[_12970])]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _10945 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
        mem[mem[64] + 32] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
        mem[mem[64] + 64 len 32 * _10945] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * _10945]
        return 32, mem[mem[64] + 32 len (32 * _10945) + 32]
    if not return_data.size:
        _7457 = mem[64]
        mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
        mem[_7457] = ('cd', 68).length
        mem[_7457 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
        mem[_7457 + (32 * ('cd', 68).length) + 32] = 0
        _7458 = mem[64]
        mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
        mem[_7458] = ('cd', 100).length
        mem[_7458 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
        mem[_7458 + (32 * ('cd', 100).length) + 32] = 0
        _7459 = mem[64]
        mem[64] = (32 * ('cd', 164).length) + mem[64] + 32
        mem[_7459] = ('cd', 164).length
        mem[_7459 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
        mem[_7459 + (32 * ('cd', 164).length) + 32] = 0
        idx = 0
        while idx < ('cd', 68).length - 1:
            require idx < mem[_7457]
            require idx + 1 < mem[_7457]
            require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
            if mem[(32 * idx) + _7457 + 44 len 20] < mem[(32 * idx + 1) + _7457 + 44 len 20]:
                _11040 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                if mem[(32 * idx) + _7457 + 44 len 20] == mem[(32 * idx) + _7457 + 44 len 20]:
                    if idx >= mem[_7457] - 2:
                        require idx < mem[_7459]
                        require idx < mem[_7458]
                        if not mem[(32 * idx) + _7459 + 32]:
                            _12485 = mem[(32 * idx) + _7458 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _11040
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_12485))
                            call address(_12485).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, _11040, this.address
                        else:
                            _12487 = mem[(32 * idx) + _7458 + 32]
                            _12488 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_12488 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_12488 + 36] = 0
                            mem[_12488 + 68] = _11040
                            mem[_12488 + 100] = this.address
                            mem[_12488 + 132] = 128
                            mem[_12488 + 164] = mem[_12488]
                            s = 0
                            while s < mem[_12488]:
                                mem[s + _12488 + 196] = mem[s + _12488 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_12488]) > mem[_12488]:
                                mem[mem[_12488] + _12488 + 196] = 0
                            require ext_code.size(address(_12487))
                            call address(_12487).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _11040, address(this.address), 128, mem[_12488], mem[_12488 + 196 len ceil32(mem[_12488])]
                    else:
                        require idx + 1 < mem[_7458]
                        _11412 = mem[(32 * idx + 1) + _7458 + 32]
                        require idx < mem[_7459]
                        require idx < mem[_7458]
                        if not mem[(32 * idx) + _7459 + 32]:
                            _12972 = mem[(32 * idx) + _7458 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _11040
                            mem[mem[64] + 68] = address(_11412)
                            require ext_code.size(address(_12972))
                            call address(_12972).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, _11040, address(_11412)
                        else:
                            _12974 = mem[(32 * idx) + _7458 + 32]
                            _12975 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_12975 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_12975 + 36] = 0
                            mem[_12975 + 68] = _11040
                            mem[_12975 + 100] = address(_11412)
                            mem[_12975 + 132] = 128
                            mem[_12975 + 164] = mem[_12975]
                            s = 0
                            while s < mem[_12975]:
                                mem[s + _12975 + 196] = mem[s + _12975 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_12975]) > mem[_12975]:
                                mem[mem[_12975] + _12975 + 196] = 0
                            require ext_code.size(address(_12974))
                            call address(_12974).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _11040, address(_11412), 128, mem[_12975], mem[_12975 + 196 len ceil32(mem[_12975])]
                else:
                    if idx >= mem[_7457] - 2:
                        require idx < mem[_7459]
                        require idx < mem[_7458]
                        if not mem[(32 * idx) + _7459 + 32]:
                            _12491 = mem[(32 * idx) + _7458 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _11040
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_12491))
                            call address(_12491).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args _11040, 0, this.address
                        else:
                            _12493 = mem[(32 * idx) + _7458 + 32]
                            _12494 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_12494 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_12494 + 36] = _11040
                            mem[_12494 + 68] = 0
                            mem[_12494 + 100] = this.address
                            mem[_12494 + 132] = 128
                            mem[_12494 + 164] = mem[_12494]
                            s = 0
                            while s < mem[_12494]:
                                mem[s + _12494 + 196] = mem[s + _12494 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_12494]) > mem[_12494]:
                                mem[mem[_12494] + _12494 + 196] = 0
                            require ext_code.size(address(_12493))
                            call address(_12493).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _11040, 0, address(this.address), 128, mem[_12494], mem[_12494 + 196 len ceil32(mem[_12494])]
                    else:
                        require idx + 1 < mem[_7458]
                        _11414 = mem[(32 * idx + 1) + _7458 + 32]
                        require idx < mem[_7459]
                        require idx < mem[_7458]
                        if not mem[(32 * idx) + _7459 + 32]:
                            _12977 = mem[(32 * idx) + _7458 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _11040
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_11414)
                            require ext_code.size(address(_12977))
                            call address(_12977).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args _11040, 0, address(_11414)
                        else:
                            _12979 = mem[(32 * idx) + _7458 + 32]
                            _12980 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_12980 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_12980 + 36] = _11040
                            mem[_12980 + 68] = 0
                            mem[_12980 + 100] = address(_11414)
                            mem[_12980 + 132] = 128
                            mem[_12980 + 164] = mem[_12980]
                            s = 0
                            while s < mem[_12980]:
                                mem[s + _12980 + 196] = mem[s + _12980 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_12980]) > mem[_12980]:
                                mem[mem[_12980] + _12980 + 196] = 0
                            require ext_code.size(address(_12979))
                            call address(_12979).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _11040, 0, address(_11414), 128, mem[_12980], mem[_12980 + 196 len ceil32(mem[_12980])]
            else:
                _11041 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
                if mem[(32 * idx) + _7457 + 44 len 20] == mem[(32 * idx + 1) + _7457 + 44 len 20]:
                    if idx >= mem[_7457] - 2:
                        require idx < mem[_7459]
                        require idx < mem[_7458]
                        if not mem[(32 * idx) + _7459 + 32]:
                            _12497 = mem[(32 * idx) + _7458 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _11041
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_12497))
                            call address(_12497).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, _11041, this.address
                        else:
                            _12499 = mem[(32 * idx) + _7458 + 32]
                            _12500 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_12500 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_12500 + 36] = 0
                            mem[_12500 + 68] = _11041
                            mem[_12500 + 100] = this.address
                            mem[_12500 + 132] = 128
                            mem[_12500 + 164] = mem[_12500]
                            s = 0
                            while s < mem[_12500]:
                                mem[s + _12500 + 196] = mem[s + _12500 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_12500]) > mem[_12500]:
                                mem[mem[_12500] + _12500 + 196] = 0
                            require ext_code.size(address(_12499))
                            call address(_12499).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _11041, address(this.address), 128, mem[_12500], mem[_12500 + 196 len ceil32(mem[_12500])]
                    else:
                        require idx + 1 < mem[_7458]
                        _11416 = mem[(32 * idx + 1) + _7458 + 32]
                        require idx < mem[_7459]
                        require idx < mem[_7458]
                        if not mem[(32 * idx) + _7459 + 32]:
                            _12982 = mem[(32 * idx) + _7458 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _11041
                            mem[mem[64] + 68] = address(_11416)
                            require ext_code.size(address(_12982))
                            call address(_12982).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, _11041, address(_11416)
                        else:
                            _12984 = mem[(32 * idx) + _7458 + 32]
                            _12985 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_12985 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_12985 + 36] = 0
                            mem[_12985 + 68] = _11041
                            mem[_12985 + 100] = address(_11416)
                            mem[_12985 + 132] = 128
                            mem[_12985 + 164] = mem[_12985]
                            s = 0
                            while s < mem[_12985]:
                                mem[s + _12985 + 196] = mem[s + _12985 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_12985]) > mem[_12985]:
                                mem[mem[_12985] + _12985 + 196] = 0
                            require ext_code.size(address(_12984))
                            call address(_12984).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _11041, address(_11416), 128, mem[_12985], mem[_12985 + 196 len ceil32(mem[_12985])]
                else:
                    if idx >= mem[_7457] - 2:
                        require idx < mem[_7459]
                        require idx < mem[_7458]
                        if not mem[(32 * idx) + _7459 + 32]:
                            _12503 = mem[(32 * idx) + _7458 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _11041
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_12503))
                            call address(_12503).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args _11041, 0, this.address
                        else:
                            _12505 = mem[(32 * idx) + _7458 + 32]
                            _12506 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_12506 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_12506 + 36] = _11041
                            mem[_12506 + 68] = 0
                            mem[_12506 + 100] = this.address
                            mem[_12506 + 132] = 128
                            mem[_12506 + 164] = mem[_12506]
                            s = 0
                            while s < mem[_12506]:
                                mem[s + _12506 + 196] = mem[s + _12506 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_12506]) > mem[_12506]:
                                mem[mem[_12506] + _12506 + 196] = 0
                            require ext_code.size(address(_12505))
                            call address(_12505).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _11041, 0, address(this.address), 128, mem[_12506], mem[_12506 + 196 len ceil32(mem[_12506])]
                    else:
                        require idx + 1 < mem[_7458]
                        _11418 = mem[(32 * idx + 1) + _7458 + 32]
                        require idx < mem[_7459]
                        require idx < mem[_7458]
                        if not mem[(32 * idx) + _7459 + 32]:
                            _12987 = mem[(32 * idx) + _7458 + 32]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _11041
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_11418)
                            require ext_code.size(address(_12987))
                            call address(_12987).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args _11041, 0, address(_11418)
                        else:
                            _12989 = mem[(32 * idx) + _7458 + 32]
                            _12990 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_12990 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_12990 + 36] = _11041
                            mem[_12990 + 68] = 0
                            mem[_12990 + 100] = address(_11418)
                            mem[_12990 + 132] = 128
                            mem[_12990 + 164] = mem[_12990]
                            s = 0
                            while s < mem[_12990]:
                                mem[s + _12990 + 196] = mem[s + _12990 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_12990]) > mem[_12990]:
                                mem[mem[_12990] + _12990 + 196] = 0
                            require ext_code.size(address(_12989))
                            call address(_12989).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _11041, 0, address(_11418), 128, mem[_12990], mem[_12990 + 196 len ceil32(mem[_12990])]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _10946 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
        mem[mem[64] + 32] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
        mem[mem[64] + 64 len 32 * _10946] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * _10946]
        return 32, mem[mem[64] + 32 len (32 * _10946) + 32]
    require return_data.size >= 32
    require mem[_7395 + 32] == bool(mem[_7395 + 32])
    _7665 = mem[64]
    mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
    mem[_7665] = ('cd', 68).length
    mem[_7665 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
    mem[_7665 + (32 * ('cd', 68).length) + 32] = 0
    _7666 = mem[64]
    mem[64] = (32 * ('cd', 100).length) + mem[64] + 32
    mem[_7666] = ('cd', 100).length
    mem[_7666 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
    mem[_7666 + (32 * ('cd', 100).length) + 32] = 0
    _7667 = mem[64]
    mem[64] = (32 * ('cd', 164).length) + mem[64] + 32
    mem[_7667] = ('cd', 164).length
    mem[_7667 + 32 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
    mem[_7667 + (32 * ('cd', 164).length) + 32] = 0
    idx = 0
    while idx < ('cd', 68).length - 1:
        require idx < mem[_7665]
        require idx + 1 < mem[_7665]
        require idx + 1 < mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
        if mem[(32 * idx) + _7665 + 44 len 20] < mem[(32 * idx + 1) + _7665 + 44 len 20]:
            _11042 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
            if mem[(32 * idx) + _7665 + 44 len 20] == mem[(32 * idx) + _7665 + 44 len 20]:
                if idx >= mem[_7665] - 2:
                    require idx < mem[_7667]
                    require idx < mem[_7666]
                    if not mem[(32 * idx) + _7667 + 32]:
                        _12510 = mem[(32 * idx) + _7666 + 32]
                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = _11042
                        mem[mem[64] + 68] = this.address
                        require ext_code.size(address(_12510))
                        call address(_12510).swap(uint256 rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining wei
                            args 0, _11042, this.address
                    else:
                        _12512 = mem[(32 * idx) + _7666 + 32]
                        _12513 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_12513 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_12513 + 36] = 0
                        mem[_12513 + 68] = _11042
                        mem[_12513 + 100] = this.address
                        mem[_12513 + 132] = 128
                        mem[_12513 + 164] = mem[_12513]
                        s = 0
                        while s < mem[_12513]:
                            mem[s + _12513 + 196] = mem[s + _12513 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_12513]) > mem[_12513]:
                            mem[mem[_12513] + _12513 + 196] = 0
                        require ext_code.size(address(_12512))
                        call address(_12512).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _11042, address(this.address), 128, mem[_12513], mem[_12513 + 196 len ceil32(mem[_12513])]
                else:
                    require idx + 1 < mem[_7666]
                    _11420 = mem[(32 * idx + 1) + _7666 + 32]
                    require idx < mem[_7667]
                    require idx < mem[_7666]
                    if not mem[(32 * idx) + _7667 + 32]:
                        _12992 = mem[(32 * idx) + _7666 + 32]
                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = _11042
                        mem[mem[64] + 68] = address(_11420)
                        require ext_code.size(address(_12992))
                        call address(_12992).swap(uint256 rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining wei
                            args 0, _11042, address(_11420)
                    else:
                        _12994 = mem[(32 * idx) + _7666 + 32]
                        _12995 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_12995 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_12995 + 36] = 0
                        mem[_12995 + 68] = _11042
                        mem[_12995 + 100] = address(_11420)
                        mem[_12995 + 132] = 128
                        mem[_12995 + 164] = mem[_12995]
                        s = 0
                        while s < mem[_12995]:
                            mem[s + _12995 + 196] = mem[s + _12995 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_12995]) > mem[_12995]:
                            mem[mem[_12995] + _12995 + 196] = 0
                        require ext_code.size(address(_12994))
                        call address(_12994).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _11042, address(_11420), 128, mem[_12995], mem[_12995 + 196 len ceil32(mem[_12995])]
            else:
                if idx >= mem[_7665] - 2:
                    require idx < mem[_7667]
                    require idx < mem[_7666]
                    if not mem[(32 * idx) + _7667 + 32]:
                        _12516 = mem[(32 * idx) + _7666 + 32]
                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _11042
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = this.address
                        require ext_code.size(address(_12516))
                        call address(_12516).swap(uint256 rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining wei
                            args _11042, 0, this.address
                    else:
                        _12518 = mem[(32 * idx) + _7666 + 32]
                        _12519 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_12519 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_12519 + 36] = _11042
                        mem[_12519 + 68] = 0
                        mem[_12519 + 100] = this.address
                        mem[_12519 + 132] = 128
                        mem[_12519 + 164] = mem[_12519]
                        s = 0
                        while s < mem[_12519]:
                            mem[s + _12519 + 196] = mem[s + _12519 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_12519]) > mem[_12519]:
                            mem[mem[_12519] + _12519 + 196] = 0
                        require ext_code.size(address(_12518))
                        call address(_12518).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _11042, 0, address(this.address), 128, mem[_12519], mem[_12519 + 196 len ceil32(mem[_12519])]
                else:
                    require idx + 1 < mem[_7666]
                    _11422 = mem[(32 * idx + 1) + _7666 + 32]
                    require idx < mem[_7667]
                    require idx < mem[_7666]
                    if not mem[(32 * idx) + _7667 + 32]:
                        _12997 = mem[(32 * idx) + _7666 + 32]
                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _11042
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = address(_11422)
                        require ext_code.size(address(_12997))
                        call address(_12997).swap(uint256 rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining wei
                            args _11042, 0, address(_11422)
                    else:
                        _12999 = mem[(32 * idx) + _7666 + 32]
                        _13000 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_13000 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_13000 + 36] = _11042
                        mem[_13000 + 68] = 0
                        mem[_13000 + 100] = address(_11422)
                        mem[_13000 + 132] = 128
                        mem[_13000 + 164] = mem[_13000]
                        s = 0
                        while s < mem[_13000]:
                            mem[s + _13000 + 196] = mem[s + _13000 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_13000]) > mem[_13000]:
                            mem[mem[_13000] + _13000 + 196] = 0
                        require ext_code.size(address(_12999))
                        call address(_12999).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _11042, 0, address(_11422), 128, mem[_13000], mem[_13000 + 196 len ceil32(mem[_13000])]
        else:
            _11043 = mem[(32 * idx + 1) + (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224]
            if mem[(32 * idx) + _7665 + 44 len 20] == mem[(32 * idx + 1) + _7665 + 44 len 20]:
                if idx >= mem[_7665] - 2:
                    require idx < mem[_7667]
                    require idx < mem[_7666]
                    if not mem[(32 * idx) + _7667 + 32]:
                        _12522 = mem[(32 * idx) + _7666 + 32]
                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = _11043
                        mem[mem[64] + 68] = this.address
                        require ext_code.size(address(_12522))
                        call address(_12522).swap(uint256 rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining wei
                            args 0, _11043, this.address
                    else:
                        _12524 = mem[(32 * idx) + _7666 + 32]
                        _12525 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_12525 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_12525 + 36] = 0
                        mem[_12525 + 68] = _11043
                        mem[_12525 + 100] = this.address
                        mem[_12525 + 132] = 128
                        mem[_12525 + 164] = mem[_12525]
                        s = 0
                        while s < mem[_12525]:
                            mem[s + _12525 + 196] = mem[s + _12525 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_12525]) > mem[_12525]:
                            mem[mem[_12525] + _12525 + 196] = 0
                        require ext_code.size(address(_12524))
                        call address(_12524).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _11043, address(this.address), 128, mem[_12525], mem[_12525 + 196 len ceil32(mem[_12525])]
                else:
                    require idx + 1 < mem[_7666]
                    _11424 = mem[(32 * idx + 1) + _7666 + 32]
                    require idx < mem[_7667]
                    require idx < mem[_7666]
                    if not mem[(32 * idx) + _7667 + 32]:
                        _13002 = mem[(32 * idx) + _7666 + 32]
                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = _11043
                        mem[mem[64] + 68] = address(_11424)
                        require ext_code.size(address(_13002))
                        call address(_13002).swap(uint256 rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining wei
                            args 0, _11043, address(_11424)
                    else:
                        _13004 = mem[(32 * idx) + _7666 + 32]
                        _13005 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_13005 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_13005 + 36] = 0
                        mem[_13005 + 68] = _11043
                        mem[_13005 + 100] = address(_11424)
                        mem[_13005 + 132] = 128
                        mem[_13005 + 164] = mem[_13005]
                        s = 0
                        while s < mem[_13005]:
                            mem[s + _13005 + 196] = mem[s + _13005 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_13005]) > mem[_13005]:
                            mem[mem[_13005] + _13005 + 196] = 0
                        require ext_code.size(address(_13004))
                        call address(_13004).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _11043, address(_11424), 128, mem[_13005], mem[_13005 + 196 len ceil32(mem[_13005])]
            else:
                if idx >= mem[_7665] - 2:
                    require idx < mem[_7667]
                    require idx < mem[_7666]
                    if not mem[(32 * idx) + _7667 + 32]:
                        _12528 = mem[(32 * idx) + _7666 + 32]
                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _11043
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = this.address
                        require ext_code.size(address(_12528))
                        call address(_12528).swap(uint256 rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining wei
                            args _11043, 0, this.address
                    else:
                        _12530 = mem[(32 * idx) + _7666 + 32]
                        _12531 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_12531 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_12531 + 36] = _11043
                        mem[_12531 + 68] = 0
                        mem[_12531 + 100] = this.address
                        mem[_12531 + 132] = 128
                        mem[_12531 + 164] = mem[_12531]
                        s = 0
                        while s < mem[_12531]:
                            mem[s + _12531 + 196] = mem[s + _12531 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_12531]) > mem[_12531]:
                            mem[mem[_12531] + _12531 + 196] = 0
                        require ext_code.size(address(_12530))
                        call address(_12530).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _11043, 0, address(this.address), 128, mem[_12531], mem[_12531 + 196 len ceil32(mem[_12531])]
                else:
                    require idx + 1 < mem[_7666]
                    _11426 = mem[(32 * idx + 1) + _7666 + 32]
                    require idx < mem[_7667]
                    require idx < mem[_7666]
                    if not mem[(32 * idx) + _7667 + 32]:
                        _13007 = mem[(32 * idx) + _7666 + 32]
                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _11043
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = address(_11426)
                        require ext_code.size(address(_13007))
                        call address(_13007).swap(uint256 rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining wei
                            args _11043, 0, address(_11426)
                    else:
                        _13009 = mem[(32 * idx) + _7666 + 32]
                        _13010 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_13010 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_13010 + 36] = _11043
                        mem[_13010 + 68] = 0
                        mem[_13010 + 100] = address(_11426)
                        mem[_13010 + 132] = 128
                        mem[_13010 + 164] = mem[_13010]
                        s = 0
                        while s < mem[_13010]:
                            mem[s + _13010 + 196] = mem[s + _13010 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_13010]) > mem[_13010]:
                            mem[mem[_13010] + _13010 + 196] = 0
                        require ext_code.size(address(_13009))
                        call address(_13009).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _11043, 0, address(_11426), 128, mem[_13010], mem[_13010 + 196 len ceil32(mem[_13010])]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _10947 = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
    mem[mem[64] + 32] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 192]
    mem[mem[64] + 64 len 32 * _10947] = mem[(32 * ('cd', 132).length) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 224 len 32 * _10947]
    return 32, mem[mem[64] + 32 len (32 * _10947) + 32]
}



}
