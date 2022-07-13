contract main {




// =====================  Runtime code  =====================


#
#  - sub_ef0e94e0(?)
#
address owner;
mapping of uint8 stor1;

function owner() {
    return owner
}

function sub_fe0d3145(?) {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
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

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x544f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_4a963eff(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = 0
        idx = idx + 1
        continue 
}

function sub_db8dde91(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function withdraw(uint256 arg1, address arg2, bool arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3:
        if arg1 > 0:
            call msg.sender with:
               value arg1 wei
                 gas 2300 * is_zero(value) wei
        else:
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
    else:
        require ext_code.size(arg2)
        if arg1 > 0:
            call arg2.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg1
        else:
            staticcall arg2.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg2)
            call arg2.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_749b5ce2(?) payable {
    require calldata.size - 4 >= 224
    if arg7 < block.timestamp:
        revert with 0, 'EXPIRED'
    mem[0] = msg.sender
    mem[32] = 1
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0, 'No Soup You'
    if msg.value <= 0:
        require ext_code.size(arg6)
        staticcall arg6.factory() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = 2
        mem[192] = 1
        mem[128] = arg3
        mem[160] = arg4
        mem[224] = arg5
        mem[256] = 2
        mem[64] = 352
        mem[288 len 64] = call.data[calldata.size len 64]
        mem[320] = arg2
        idx = mem[96] - 1
        while idx > 0:
            require idx - 1 < mem[96]
            _3080 = mem[(32 * idx - 1) + 128]
            require idx < mem[96]
            _3091 = mem[(32 * idx) + 128]
            if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
            if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
                if not mem[(32 * idx - 1) + 140 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                    revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
                    if not mem[(32 * idx - 1) + 140 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    _3312 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx - 1) + 128])
                    mem[mem[64] + 52] = address(_3091)
                    _3313 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _3315 = sha3(mem[_3313 + 32 len mem[_3313]])
                    mem[_3312 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_3312 + 105] = address(ext_call.return_data[0])
                    mem[_3312 + 125] = _3315
                    mem[_3312 + 157] = 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66
                    mem[_3312 + 72] = 85
                    mem[64] = _3312 + 189
                    require ext_code.size(arg5)
                    staticcall arg5.getReserves() with:
                            gas gas_remaining wei
                    mem[_3312 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[256]
                    if mem[(32 * idx) + 288] <= 0:
                        revert with 0, 
                                    32,
                                    42,
                                    0x7350616e63616b654c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                    mem[_3312 + 299 len 22]
                    if address(_3080) == address(_3080):
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3312 + 295 len 26]
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3312 + 295 len 26]
                        if not mem[(32 * idx) + 288]:
                            if ext_call.return_data[50 len 14] - mem[(32 * idx) + 288] > ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288]) / 998 != ext_call.return_data[50 len 14] - mem[(32 * idx) + 288]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288])
                            if (0 / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288])) + 1 < 0 / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[256]
                            mem[(32 * idx - 1) + 288] = (0 / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288])) + 1
                        else:
                            require mem[(32 * idx) + 288]
                            if ext_call.return_data[18 len 14] * mem[(32 * idx) + 288] / mem[(32 * idx) + 288] != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + 288] / 1000 != ext_call.return_data[18 len 14] * mem[(32 * idx) + 288]:
                                revert with 0, 'ds-math-mul-overflow'
                            if ext_call.return_data[50 len 14] - mem[(32 * idx) + 288] > ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288]) / 998 != ext_call.return_data[50 len 14] - mem[(32 * idx) + 288]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288])
                            if (1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + 288] / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288])) + 1 < 1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + 288] / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[256]
                            mem[(32 * idx - 1) + 288] = (1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + 288] / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288])) + 1
                    else:
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3312 + 295 len 26]
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3312 + 295 len 26]
                        if not mem[(32 * idx) + 288]:
                            if ext_call.return_data[18 len 14] - mem[(32 * idx) + 288] > ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288]) / 998 != ext_call.return_data[18 len 14] - mem[(32 * idx) + 288]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288])
                            if (0 / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288])) + 1 < 0 / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[256]
                            mem[(32 * idx - 1) + 288] = (0 / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288])) + 1
                        else:
                            require mem[(32 * idx) + 288]
                            if ext_call.return_data[50 len 14] * mem[(32 * idx) + 288] / mem[(32 * idx) + 288] != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + 288] / 1000 != ext_call.return_data[50 len 14] * mem[(32 * idx) + 288]:
                                revert with 0, 'ds-math-mul-overflow'
                            if ext_call.return_data[18 len 14] - mem[(32 * idx) + 288] > ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288]) / 998 != ext_call.return_data[18 len 14] - mem[(32 * idx) + 288]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288])
                            if (1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + 288] / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288])) + 1 < 1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + 288] / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[256]
                            mem[(32 * idx - 1) + 288] = (1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + 288] / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288])) + 1
                else:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    _3320 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                    mem[mem[64] + 52] = address(mem[(32 * idx - 1) + 128])
                    _3321 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _3323 = sha3(mem[_3321 + 32 len mem[_3321]])
                    mem[_3320 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_3320 + 105] = address(ext_call.return_data[0])
                    mem[_3320 + 125] = _3323
                    mem[_3320 + 157] = 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66
                    mem[_3320 + 72] = 85
                    mem[64] = _3320 + 189
                    require ext_code.size(arg5)
                    staticcall arg5.getReserves() with:
                            gas gas_remaining wei
                    mem[_3320 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[256]
                    if mem[(32 * idx) + 288] <= 0:
                        revert with 0, 
                                    32,
                                    42,
                                    0x7350616e63616b654c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                    mem[_3320 + 299 len 22]
                    if address(_3080) == address(_3080):
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3320 + 295 len 26]
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3320 + 295 len 26]
                        if not mem[(32 * idx) + 288]:
                            if ext_call.return_data[50 len 14] - mem[(32 * idx) + 288] > ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288]) / 998 != ext_call.return_data[50 len 14] - mem[(32 * idx) + 288]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288])
                            if (0 / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288])) + 1 < 0 / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[256]
                            mem[(32 * idx - 1) + 288] = (0 / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288])) + 1
                        else:
                            require mem[(32 * idx) + 288]
                            if ext_call.return_data[18 len 14] * mem[(32 * idx) + 288] / mem[(32 * idx) + 288] != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + 288] / 1000 != ext_call.return_data[18 len 14] * mem[(32 * idx) + 288]:
                                revert with 0, 'ds-math-mul-overflow'
                            if ext_call.return_data[50 len 14] - mem[(32 * idx) + 288] > ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288]) / 998 != ext_call.return_data[50 len 14] - mem[(32 * idx) + 288]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288])
                            if (1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + 288] / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288])) + 1 < 1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + 288] / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[256]
                            mem[(32 * idx - 1) + 288] = (1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + 288] / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288])) + 1
                    else:
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3320 + 295 len 26]
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3320 + 295 len 26]
                        if not mem[(32 * idx) + 288]:
                            if ext_call.return_data[18 len 14] - mem[(32 * idx) + 288] > ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288]) / 998 != ext_call.return_data[18 len 14] - mem[(32 * idx) + 288]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288])
                            if (0 / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288])) + 1 < 0 / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[256]
                            mem[(32 * idx - 1) + 288] = (0 / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288])) + 1
                        else:
                            require mem[(32 * idx) + 288]
                            if ext_call.return_data[50 len 14] * mem[(32 * idx) + 288] / mem[(32 * idx) + 288] != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + 288] / 1000 != ext_call.return_data[50 len 14] * mem[(32 * idx) + 288]:
                                revert with 0, 'ds-math-mul-overflow'
                            if ext_call.return_data[18 len 14] - mem[(32 * idx) + 288] > ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288]) / 998 != ext_call.return_data[18 len 14] - mem[(32 * idx) + 288]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288])
                            if (1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + 288] / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288])) + 1 < 1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + 288] / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[256]
                            mem[(32 * idx - 1) + 288] = (1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + 288] / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288])) + 1
            else:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                    revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
                    if not mem[(32 * idx - 1) + 140 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    _3328 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx - 1) + 128])
                    mem[mem[64] + 52] = address(_3091)
                    _3329 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _3331 = sha3(mem[_3329 + 32 len mem[_3329]])
                    mem[_3328 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_3328 + 105] = address(ext_call.return_data[0])
                    mem[_3328 + 125] = _3331
                    mem[_3328 + 157] = 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66
                    mem[_3328 + 72] = 85
                    mem[64] = _3328 + 189
                    require ext_code.size(arg5)
                    staticcall arg5.getReserves() with:
                            gas gas_remaining wei
                    mem[_3328 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[256]
                    if mem[(32 * idx) + 288] <= 0:
                        revert with 0, 
                                    32,
                                    42,
                                    0x7350616e63616b654c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                    mem[_3328 + 299 len 22]
                    if address(_3080) == address(_3091):
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3328 + 295 len 26]
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3328 + 295 len 26]
                        if not mem[(32 * idx) + 288]:
                            if ext_call.return_data[50 len 14] - mem[(32 * idx) + 288] > ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288]) / 998 != ext_call.return_data[50 len 14] - mem[(32 * idx) + 288]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288])
                            if (0 / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288])) + 1 < 0 / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[256]
                            mem[(32 * idx - 1) + 288] = (0 / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288])) + 1
                        else:
                            require mem[(32 * idx) + 288]
                            if ext_call.return_data[18 len 14] * mem[(32 * idx) + 288] / mem[(32 * idx) + 288] != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + 288] / 1000 != ext_call.return_data[18 len 14] * mem[(32 * idx) + 288]:
                                revert with 0, 'ds-math-mul-overflow'
                            if ext_call.return_data[50 len 14] - mem[(32 * idx) + 288] > ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288]) / 998 != ext_call.return_data[50 len 14] - mem[(32 * idx) + 288]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288])
                            if (1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + 288] / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288])) + 1 < 1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + 288] / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[256]
                            mem[(32 * idx - 1) + 288] = (1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + 288] / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288])) + 1
                    else:
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3328 + 295 len 26]
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3328 + 295 len 26]
                        if not mem[(32 * idx) + 288]:
                            if ext_call.return_data[18 len 14] - mem[(32 * idx) + 288] > ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288]) / 998 != ext_call.return_data[18 len 14] - mem[(32 * idx) + 288]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288])
                            if (0 / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288])) + 1 < 0 / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[256]
                            mem[(32 * idx - 1) + 288] = (0 / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288])) + 1
                        else:
                            require mem[(32 * idx) + 288]
                            if ext_call.return_data[50 len 14] * mem[(32 * idx) + 288] / mem[(32 * idx) + 288] != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + 288] / 1000 != ext_call.return_data[50 len 14] * mem[(32 * idx) + 288]:
                                revert with 0, 'ds-math-mul-overflow'
                            if ext_call.return_data[18 len 14] - mem[(32 * idx) + 288] > ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288]) / 998 != ext_call.return_data[18 len 14] - mem[(32 * idx) + 288]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288])
                            if (1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + 288] / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288])) + 1 < 1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + 288] / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[256]
                            mem[(32 * idx - 1) + 288] = (1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + 288] / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288])) + 1
                else:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    _3336 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                    mem[mem[64] + 52] = address(mem[(32 * idx - 1) + 128])
                    _3337 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _3339 = sha3(mem[_3337 + 32 len mem[_3337]])
                    mem[_3336 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_3336 + 105] = address(ext_call.return_data[0])
                    mem[_3336 + 125] = _3339
                    mem[_3336 + 157] = 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66
                    mem[_3336 + 72] = 85
                    mem[64] = _3336 + 189
                    require ext_code.size(arg5)
                    staticcall arg5.getReserves() with:
                            gas gas_remaining wei
                    mem[_3336 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[256]
                    if mem[(32 * idx) + 288] <= 0:
                        revert with 0, 
                                    32,
                                    42,
                                    0x7350616e63616b654c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                    mem[_3336 + 299 len 22]
                    if address(_3080) == address(_3091):
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3336 + 295 len 26]
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3336 + 295 len 26]
                        if not mem[(32 * idx) + 288]:
                            if ext_call.return_data[50 len 14] - mem[(32 * idx) + 288] > ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288]) / 998 != ext_call.return_data[50 len 14] - mem[(32 * idx) + 288]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288])
                            if (0 / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288])) + 1 < 0 / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[256]
                            mem[(32 * idx - 1) + 288] = (0 / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288])) + 1
                        else:
                            require mem[(32 * idx) + 288]
                            if ext_call.return_data[18 len 14] * mem[(32 * idx) + 288] / mem[(32 * idx) + 288] != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + 288] / 1000 != ext_call.return_data[18 len 14] * mem[(32 * idx) + 288]:
                                revert with 0, 'ds-math-mul-overflow'
                            if ext_call.return_data[50 len 14] - mem[(32 * idx) + 288] > ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288]) / 998 != ext_call.return_data[50 len 14] - mem[(32 * idx) + 288]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288])
                            if (1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + 288] / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288])) + 1 < 1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + 288] / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[256]
                            mem[(32 * idx - 1) + 288] = (1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + 288] / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288])) + 1
                    else:
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3336 + 295 len 26]
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3336 + 295 len 26]
                        if not mem[(32 * idx) + 288]:
                            if ext_call.return_data[18 len 14] - mem[(32 * idx) + 288] > ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288]) / 998 != ext_call.return_data[18 len 14] - mem[(32 * idx) + 288]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288])
                            if (0 / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288])) + 1 < 0 / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[256]
                            mem[(32 * idx - 1) + 288] = (0 / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288])) + 1
                        else:
                            require mem[(32 * idx) + 288]
                            if ext_call.return_data[50 len 14] * mem[(32 * idx) + 288] / mem[(32 * idx) + 288] != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + 288] / 1000 != ext_call.return_data[50 len 14] * mem[(32 * idx) + 288]:
                                revert with 0, 'ds-math-mul-overflow'
                            if ext_call.return_data[18 len 14] - mem[(32 * idx) + 288] > ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288]) / 998 != ext_call.return_data[18 len 14] - mem[(32 * idx) + 288]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288])
                            if (1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + 288] / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288])) + 1 < 1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + 288] / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[256]
                            mem[(32 * idx - 1) + 288] = (1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + 288] / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288])) + 1
            idx = idx - 1
            continue 
        require 0 < mem[256]
        if mem[288] > arg1:
            revert with 0, 'e'
        require 0 < mem[256]
        _3109 = mem[288]
        mem[mem[64] + 4] = this.address
        require ext_code.size(arg3)
        call arg3.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), _3109
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _3143 = mem[64]
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = arg5
        mem[mem[64] + 100] = _3109
        _3144 = mem[64]
        mem[mem[64]] = 100
        mem[64] = mem[64] + 132
        mem[_3144 + 32 len 4] = unknown_0x23b872dd(?????)
        _3147 = mem[_3144]
        mem[mem[64] len floor32(mem[_3144])] = mem[_3144 + 32 len floor32(mem[_3144])]
        mem[mem[64] + floor32(mem[_3144]) + -(mem[_3144] % 32) + 32 len mem[_3144] % 32] = mem[_3144 + floor32(mem[_3144]) + -(mem[_3144] % 32) + 64 len mem[_3144] % 32]
        call arg3 with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _3147 + _3143 + -mem[64] + 128]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 32, 36, 0x595472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45, Mask(224, 0, _3109)
            if not mem[96]:
                _7920 = mem[192]
                idx = 0
                while idx < _7920:
                    require idx < mem[96]
                    require idx + 1 < mem[96]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        require idx + 1 < mem[256]
                        _8164 = mem[(32 * idx + 1) + 288]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                            if idx >= mem[192] - 1:
                                require idx < mem[192]
                                _8477 = mem[(32 * idx) + 224]
                                _8605 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8605 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8605 + 36] = 0
                                mem[_8605 + 68] = _8164
                                mem[_8605 + 100] = this.address
                                mem[_8605 + 132] = 128
                                mem[_8605 + 164] = mem[_8605]
                                s = 0
                                while s < mem[_8605]:
                                    mem[_8605 + s + 196] = mem[_8605 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8605] % 32:
                                    require ext_code.size(address(_8477))
                                    call address(_8477).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8164, address(this.address), 128, mem[_8605 + 164 len mem[_8605] + 32]
                                else:
                                    mem[floor32(mem[_8605]) + _8605 + 196] = mem[floor32(mem[_8605]) + _8605 + -(mem[_8605] % 32) + 228 len mem[_8605] % 32]
                                    require ext_code.size(address(_8477))
                                    call address(_8477).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8164, address(this.address), 128, mem[_8605], mem[_8605 + 196 len floor32(mem[_8605]) + 32]
                            else:
                                require idx + 1 < mem[192]
                                _8348 = mem[(32 * idx + 1) + 224]
                                require idx < mem[192]
                                _8604 = mem[(32 * idx) + 224]
                                _8764 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8764 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8764 + 36] = 0
                                mem[_8764 + 68] = _8164
                                mem[_8764 + 100] = address(_8348)
                                mem[_8764 + 132] = 128
                                mem[_8764 + 164] = mem[_8764]
                                s = 0
                                while s < mem[_8764]:
                                    mem[_8764 + s + 196] = mem[_8764 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8764] % 32:
                                    require ext_code.size(address(_8604))
                                    call address(_8604).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8164, address(_8348), 128, mem[_8764 + 164 len mem[_8764] + 32]
                                else:
                                    mem[floor32(mem[_8764]) + _8764 + 196] = mem[floor32(mem[_8764]) + _8764 + -(mem[_8764] % 32) + 228 len mem[_8764] % 32]
                                    require ext_code.size(address(_8604))
                                    call address(_8604).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8164, address(_8348), 128, mem[_8764], mem[_8764 + 196 len floor32(mem[_8764]) + 32]
                        else:
                            if idx >= mem[192] - 1:
                                require idx < mem[192]
                                _8479 = mem[(32 * idx) + 224]
                                _8607 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8607 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8607 + 36] = _8164
                                mem[_8607 + 68] = 0
                                mem[_8607 + 100] = this.address
                                mem[_8607 + 132] = 128
                                mem[_8607 + 164] = mem[_8607]
                                s = 0
                                while s < mem[_8607]:
                                    mem[_8607 + s + 196] = mem[_8607 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8607] % 32:
                                    require ext_code.size(address(_8479))
                                    call address(_8479).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8164, 0, address(this.address), 128, mem[_8607 + 164 len mem[_8607] + 32]
                                else:
                                    mem[floor32(mem[_8607]) + _8607 + 196] = mem[floor32(mem[_8607]) + _8607 + -(mem[_8607] % 32) + 228 len mem[_8607] % 32]
                                    require ext_code.size(address(_8479))
                                    call address(_8479).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8164, 0, address(this.address), 128, mem[_8607], mem[_8607 + 196 len floor32(mem[_8607]) + 32]
                            else:
                                require idx + 1 < mem[192]
                                _8350 = mem[(32 * idx + 1) + 224]
                                require idx < mem[192]
                                _8606 = mem[(32 * idx) + 224]
                                _8768 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8768 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8768 + 36] = _8164
                                mem[_8768 + 68] = 0
                                mem[_8768 + 100] = address(_8350)
                                mem[_8768 + 132] = 128
                                mem[_8768 + 164] = mem[_8768]
                                s = 0
                                while s < mem[_8768]:
                                    mem[_8768 + s + 196] = mem[_8768 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8768] % 32:
                                    require ext_code.size(address(_8606))
                                    call address(_8606).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8164, 0, address(_8350), 128, mem[_8768 + 164 len mem[_8768] + 32]
                                else:
                                    mem[floor32(mem[_8768]) + _8768 + 196] = mem[floor32(mem[_8768]) + _8768 + -(mem[_8768] % 32) + 228 len mem[_8768] % 32]
                                    require ext_code.size(address(_8606))
                                    call address(_8606).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8164, 0, address(_8350), 128, mem[_8768], mem[_8768 + 196 len floor32(mem[_8768]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        require idx + 1 < mem[256]
                        _8165 = mem[(32 * idx + 1) + 288]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                            if idx >= mem[192] - 1:
                                require idx < mem[192]
                                _8481 = mem[(32 * idx) + 224]
                                _8609 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8609 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8609 + 36] = 0
                                mem[_8609 + 68] = _8165
                                mem[_8609 + 100] = this.address
                                mem[_8609 + 132] = 128
                                mem[_8609 + 164] = mem[_8609]
                                s = 0
                                while s < mem[_8609]:
                                    mem[_8609 + s + 196] = mem[_8609 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8609] % 32:
                                    require ext_code.size(address(_8481))
                                    call address(_8481).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8165, address(this.address), 128, mem[_8609 + 164 len mem[_8609] + 32]
                                else:
                                    mem[floor32(mem[_8609]) + _8609 + 196] = mem[floor32(mem[_8609]) + _8609 + -(mem[_8609] % 32) + 228 len mem[_8609] % 32]
                                    require ext_code.size(address(_8481))
                                    call address(_8481).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8165, address(this.address), 128, mem[_8609], mem[_8609 + 196 len floor32(mem[_8609]) + 32]
                            else:
                                require idx + 1 < mem[192]
                                _8352 = mem[(32 * idx + 1) + 224]
                                require idx < mem[192]
                                _8608 = mem[(32 * idx) + 224]
                                _8772 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8772 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8772 + 36] = 0
                                mem[_8772 + 68] = _8165
                                mem[_8772 + 100] = address(_8352)
                                mem[_8772 + 132] = 128
                                mem[_8772 + 164] = mem[_8772]
                                s = 0
                                while s < mem[_8772]:
                                    mem[_8772 + s + 196] = mem[_8772 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8772] % 32:
                                    require ext_code.size(address(_8608))
                                    call address(_8608).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8165, address(_8352), 128, mem[_8772 + 164 len mem[_8772] + 32]
                                else:
                                    mem[floor32(mem[_8772]) + _8772 + 196] = mem[floor32(mem[_8772]) + _8772 + -(mem[_8772] % 32) + 228 len mem[_8772] % 32]
                                    require ext_code.size(address(_8608))
                                    call address(_8608).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8165, address(_8352), 128, mem[_8772], mem[_8772 + 196 len floor32(mem[_8772]) + 32]
                        else:
                            if idx >= mem[192] - 1:
                                require idx < mem[192]
                                _8483 = mem[(32 * idx) + 224]
                                _8611 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8611 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8611 + 36] = _8165
                                mem[_8611 + 68] = 0
                                mem[_8611 + 100] = this.address
                                mem[_8611 + 132] = 128
                                mem[_8611 + 164] = mem[_8611]
                                s = 0
                                while s < mem[_8611]:
                                    mem[_8611 + s + 196] = mem[_8611 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8611] % 32:
                                    require ext_code.size(address(_8483))
                                    call address(_8483).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8165, 0, address(this.address), 128, mem[_8611 + 164 len mem[_8611] + 32]
                                else:
                                    mem[floor32(mem[_8611]) + _8611 + 196] = mem[floor32(mem[_8611]) + _8611 + -(mem[_8611] % 32) + 228 len mem[_8611] % 32]
                                    require ext_code.size(address(_8483))
                                    call address(_8483).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8165, 0, address(this.address), 128, mem[_8611], mem[_8611 + 196 len floor32(mem[_8611]) + 32]
                            else:
                                require idx + 1 < mem[192]
                                _8354 = mem[(32 * idx + 1) + 224]
                                require idx < mem[192]
                                _8610 = mem[(32 * idx) + 224]
                                _8776 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8776 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8776 + 36] = _8165
                                mem[_8776 + 68] = 0
                                mem[_8776 + 100] = address(_8354)
                                mem[_8776 + 132] = 128
                                mem[_8776 + 164] = mem[_8776]
                                s = 0
                                while s < mem[_8776]:
                                    mem[_8776 + s + 196] = mem[_8776 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8776] % 32:
                                    require ext_code.size(address(_8610))
                                    call address(_8610).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8165, 0, address(_8354), 128, mem[_8776 + 164 len mem[_8776] + 32]
                                else:
                                    mem[floor32(mem[_8776]) + _8776 + 196] = mem[floor32(mem[_8776]) + _8776 + -(mem[_8776] % 32) + 228 len mem[_8776] % 32]
                                    require ext_code.size(address(_8610))
                                    call address(_8610).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8165, 0, address(_8354), 128, mem[_8776], mem[_8776 + 196 len floor32(mem[_8776]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 32, 36, 0x595472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45, Mask(224, 0, _3109)
                _7921 = mem[192]
                idx = 0
                while idx < _7921:
                    require idx < mem[96]
                    require idx + 1 < mem[96]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        require idx + 1 < mem[256]
                        _8166 = mem[(32 * idx + 1) + 288]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                            if idx >= mem[192] - 1:
                                require idx < mem[192]
                                _8485 = mem[(32 * idx) + 224]
                                _8613 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8613 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8613 + 36] = 0
                                mem[_8613 + 68] = _8166
                                mem[_8613 + 100] = this.address
                                mem[_8613 + 132] = 128
                                mem[_8613 + 164] = mem[_8613]
                                s = 0
                                while s < mem[_8613]:
                                    mem[_8613 + s + 196] = mem[_8613 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8613] % 32:
                                    require ext_code.size(address(_8485))
                                    call address(_8485).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8166, address(this.address), 128, mem[_8613 + 164 len mem[_8613] + 32]
                                else:
                                    mem[floor32(mem[_8613]) + _8613 + 196] = mem[floor32(mem[_8613]) + _8613 + -(mem[_8613] % 32) + 228 len mem[_8613] % 32]
                                    require ext_code.size(address(_8485))
                                    call address(_8485).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8166, address(this.address), 128, mem[_8613], mem[_8613 + 196 len floor32(mem[_8613]) + 32]
                            else:
                                require idx + 1 < mem[192]
                                _8356 = mem[(32 * idx + 1) + 224]
                                require idx < mem[192]
                                _8612 = mem[(32 * idx) + 224]
                                _8780 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8780 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8780 + 36] = 0
                                mem[_8780 + 68] = _8166
                                mem[_8780 + 100] = address(_8356)
                                mem[_8780 + 132] = 128
                                mem[_8780 + 164] = mem[_8780]
                                s = 0
                                while s < mem[_8780]:
                                    mem[_8780 + s + 196] = mem[_8780 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8780] % 32:
                                    require ext_code.size(address(_8612))
                                    call address(_8612).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8166, address(_8356), 128, mem[_8780 + 164 len mem[_8780] + 32]
                                else:
                                    mem[floor32(mem[_8780]) + _8780 + 196] = mem[floor32(mem[_8780]) + _8780 + -(mem[_8780] % 32) + 228 len mem[_8780] % 32]
                                    require ext_code.size(address(_8612))
                                    call address(_8612).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8166, address(_8356), 128, mem[_8780], mem[_8780 + 196 len floor32(mem[_8780]) + 32]
                        else:
                            if idx >= mem[192] - 1:
                                require idx < mem[192]
                                _8487 = mem[(32 * idx) + 224]
                                _8615 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8615 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8615 + 36] = _8166
                                mem[_8615 + 68] = 0
                                mem[_8615 + 100] = this.address
                                mem[_8615 + 132] = 128
                                mem[_8615 + 164] = mem[_8615]
                                s = 0
                                while s < mem[_8615]:
                                    mem[_8615 + s + 196] = mem[_8615 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8615] % 32:
                                    require ext_code.size(address(_8487))
                                    call address(_8487).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8166, 0, address(this.address), 128, mem[_8615 + 164 len mem[_8615] + 32]
                                else:
                                    mem[floor32(mem[_8615]) + _8615 + 196] = mem[floor32(mem[_8615]) + _8615 + -(mem[_8615] % 32) + 228 len mem[_8615] % 32]
                                    require ext_code.size(address(_8487))
                                    call address(_8487).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8166, 0, address(this.address), 128, mem[_8615], mem[_8615 + 196 len floor32(mem[_8615]) + 32]
                            else:
                                require idx + 1 < mem[192]
                                _8358 = mem[(32 * idx + 1) + 224]
                                require idx < mem[192]
                                _8614 = mem[(32 * idx) + 224]
                                _8784 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8784 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8784 + 36] = _8166
                                mem[_8784 + 68] = 0
                                mem[_8784 + 100] = address(_8358)
                                mem[_8784 + 132] = 128
                                mem[_8784 + 164] = mem[_8784]
                                s = 0
                                while s < mem[_8784]:
                                    mem[_8784 + s + 196] = mem[_8784 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8784] % 32:
                                    require ext_code.size(address(_8614))
                                    call address(_8614).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8166, 0, address(_8358), 128, mem[_8784 + 164 len mem[_8784] + 32]
                                else:
                                    mem[floor32(mem[_8784]) + _8784 + 196] = mem[floor32(mem[_8784]) + _8784 + -(mem[_8784] % 32) + 228 len mem[_8784] % 32]
                                    require ext_code.size(address(_8614))
                                    call address(_8614).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8166, 0, address(_8358), 128, mem[_8784], mem[_8784 + 196 len floor32(mem[_8784]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        require idx + 1 < mem[256]
                        _8167 = mem[(32 * idx + 1) + 288]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                            if idx >= mem[192] - 1:
                                require idx < mem[192]
                                _8489 = mem[(32 * idx) + 224]
                                _8617 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8617 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8617 + 36] = 0
                                mem[_8617 + 68] = _8167
                                mem[_8617 + 100] = this.address
                                mem[_8617 + 132] = 128
                                mem[_8617 + 164] = mem[_8617]
                                s = 0
                                while s < mem[_8617]:
                                    mem[_8617 + s + 196] = mem[_8617 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8617] % 32:
                                    require ext_code.size(address(_8489))
                                    call address(_8489).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8167, address(this.address), 128, mem[_8617 + 164 len mem[_8617] + 32]
                                else:
                                    mem[floor32(mem[_8617]) + _8617 + 196] = mem[floor32(mem[_8617]) + _8617 + -(mem[_8617] % 32) + 228 len mem[_8617] % 32]
                                    require ext_code.size(address(_8489))
                                    call address(_8489).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8167, address(this.address), 128, mem[_8617], mem[_8617 + 196 len floor32(mem[_8617]) + 32]
                            else:
                                require idx + 1 < mem[192]
                                _8360 = mem[(32 * idx + 1) + 224]
                                require idx < mem[192]
                                _8616 = mem[(32 * idx) + 224]
                                _8788 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8788 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8788 + 36] = 0
                                mem[_8788 + 68] = _8167
                                mem[_8788 + 100] = address(_8360)
                                mem[_8788 + 132] = 128
                                mem[_8788 + 164] = mem[_8788]
                                s = 0
                                while s < mem[_8788]:
                                    mem[_8788 + s + 196] = mem[_8788 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8788] % 32:
                                    require ext_code.size(address(_8616))
                                    call address(_8616).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8167, address(_8360), 128, mem[_8788 + 164 len mem[_8788] + 32]
                                else:
                                    mem[floor32(mem[_8788]) + _8788 + 196] = mem[floor32(mem[_8788]) + _8788 + -(mem[_8788] % 32) + 228 len mem[_8788] % 32]
                                    require ext_code.size(address(_8616))
                                    call address(_8616).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8167, address(_8360), 128, mem[_8788], mem[_8788 + 196 len floor32(mem[_8788]) + 32]
                        else:
                            if idx >= mem[192] - 1:
                                require idx < mem[192]
                                _8491 = mem[(32 * idx) + 224]
                                _8619 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8619 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8619 + 36] = _8167
                                mem[_8619 + 68] = 0
                                mem[_8619 + 100] = this.address
                                mem[_8619 + 132] = 128
                                mem[_8619 + 164] = mem[_8619]
                                s = 0
                                while s < mem[_8619]:
                                    mem[_8619 + s + 196] = mem[_8619 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8619] % 32:
                                    require ext_code.size(address(_8491))
                                    call address(_8491).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8167, 0, address(this.address), 128, mem[_8619 + 164 len mem[_8619] + 32]
                                else:
                                    mem[floor32(mem[_8619]) + _8619 + 196] = mem[floor32(mem[_8619]) + _8619 + -(mem[_8619] % 32) + 228 len mem[_8619] % 32]
                                    require ext_code.size(address(_8491))
                                    call address(_8491).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8167, 0, address(this.address), 128, mem[_8619], mem[_8619 + 196 len floor32(mem[_8619]) + 32]
                            else:
                                require idx + 1 < mem[192]
                                _8362 = mem[(32 * idx + 1) + 224]
                                require idx < mem[192]
                                _8618 = mem[(32 * idx) + 224]
                                _8792 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8792 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8792 + 36] = _8167
                                mem[_8792 + 68] = 0
                                mem[_8792 + 100] = address(_8362)
                                mem[_8792 + 132] = 128
                                mem[_8792 + 164] = mem[_8792]
                                s = 0
                                while s < mem[_8792]:
                                    mem[_8792 + s + 196] = mem[_8792 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8792] % 32:
                                    require ext_code.size(address(_8618))
                                    call address(_8618).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8167, 0, address(_8362), 128, mem[_8792 + 164 len mem[_8792] + 32]
                                else:
                                    mem[floor32(mem[_8792]) + _8792 + 196] = mem[floor32(mem[_8792]) + _8792 + -(mem[_8792] % 32) + 228 len mem[_8792] % 32]
                                    require ext_code.size(address(_8618))
                                    call address(_8618).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8167, 0, address(_8362), 128, mem[_8792], mem[_8792 + 196 len floor32(mem[_8792]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
        else:
            _6113 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_6113] = return_data.size
            mem[_6113 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 32, 36, 0x595472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45, Mask(224, 0, _3109)
            if not return_data.size:
                _7922 = mem[192]
                idx = 0
                while idx < _7922:
                    require idx < mem[96]
                    require idx + 1 < mem[96]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        require idx + 1 < mem[256]
                        _8168 = mem[(32 * idx + 1) + 288]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                            if idx >= mem[192] - 1:
                                require idx < mem[192]
                                _8493 = mem[(32 * idx) + 224]
                                _8621 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8621 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8621 + 36] = 0
                                mem[_8621 + 68] = _8168
                                mem[_8621 + 100] = this.address
                                mem[_8621 + 132] = 128
                                mem[_8621 + 164] = mem[_8621]
                                s = 0
                                while s < mem[_8621]:
                                    mem[_8621 + s + 196] = mem[_8621 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8621] % 32:
                                    require ext_code.size(address(_8493))
                                    call address(_8493).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8168, address(this.address), 128, mem[_8621 + 164 len mem[_8621] + 32]
                                else:
                                    mem[floor32(mem[_8621]) + _8621 + 196] = mem[floor32(mem[_8621]) + _8621 + -(mem[_8621] % 32) + 228 len mem[_8621] % 32]
                                    require ext_code.size(address(_8493))
                                    call address(_8493).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8168, address(this.address), 128, mem[_8621], mem[_8621 + 196 len floor32(mem[_8621]) + 32]
                            else:
                                require idx + 1 < mem[192]
                                _8364 = mem[(32 * idx + 1) + 224]
                                require idx < mem[192]
                                _8620 = mem[(32 * idx) + 224]
                                _8796 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8796 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8796 + 36] = 0
                                mem[_8796 + 68] = _8168
                                mem[_8796 + 100] = address(_8364)
                                mem[_8796 + 132] = 128
                                mem[_8796 + 164] = mem[_8796]
                                s = 0
                                while s < mem[_8796]:
                                    mem[_8796 + s + 196] = mem[_8796 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8796] % 32:
                                    require ext_code.size(address(_8620))
                                    call address(_8620).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8168, address(_8364), 128, mem[_8796 + 164 len mem[_8796] + 32]
                                else:
                                    mem[floor32(mem[_8796]) + _8796 + 196] = mem[floor32(mem[_8796]) + _8796 + -(mem[_8796] % 32) + 228 len mem[_8796] % 32]
                                    require ext_code.size(address(_8620))
                                    call address(_8620).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8168, address(_8364), 128, mem[_8796], mem[_8796 + 196 len floor32(mem[_8796]) + 32]
                        else:
                            if idx >= mem[192] - 1:
                                require idx < mem[192]
                                _8495 = mem[(32 * idx) + 224]
                                _8623 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8623 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8623 + 36] = _8168
                                mem[_8623 + 68] = 0
                                mem[_8623 + 100] = this.address
                                mem[_8623 + 132] = 128
                                mem[_8623 + 164] = mem[_8623]
                                s = 0
                                while s < mem[_8623]:
                                    mem[_8623 + s + 196] = mem[_8623 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8623] % 32:
                                    require ext_code.size(address(_8495))
                                    call address(_8495).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8168, 0, address(this.address), 128, mem[_8623 + 164 len mem[_8623] + 32]
                                else:
                                    mem[floor32(mem[_8623]) + _8623 + 196] = mem[floor32(mem[_8623]) + _8623 + -(mem[_8623] % 32) + 228 len mem[_8623] % 32]
                                    require ext_code.size(address(_8495))
                                    call address(_8495).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8168, 0, address(this.address), 128, mem[_8623], mem[_8623 + 196 len floor32(mem[_8623]) + 32]
                            else:
                                require idx + 1 < mem[192]
                                _8366 = mem[(32 * idx + 1) + 224]
                                require idx < mem[192]
                                _8622 = mem[(32 * idx) + 224]
                                _8800 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8800 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8800 + 36] = _8168
                                mem[_8800 + 68] = 0
                                mem[_8800 + 100] = address(_8366)
                                mem[_8800 + 132] = 128
                                mem[_8800 + 164] = mem[_8800]
                                s = 0
                                while s < mem[_8800]:
                                    mem[_8800 + s + 196] = mem[_8800 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8800] % 32:
                                    require ext_code.size(address(_8622))
                                    call address(_8622).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8168, 0, address(_8366), 128, mem[_8800 + 164 len mem[_8800] + 32]
                                else:
                                    mem[floor32(mem[_8800]) + _8800 + 196] = mem[floor32(mem[_8800]) + _8800 + -(mem[_8800] % 32) + 228 len mem[_8800] % 32]
                                    require ext_code.size(address(_8622))
                                    call address(_8622).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8168, 0, address(_8366), 128, mem[_8800], mem[_8800 + 196 len floor32(mem[_8800]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        require idx + 1 < mem[256]
                        _8169 = mem[(32 * idx + 1) + 288]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                            if idx >= mem[192] - 1:
                                require idx < mem[192]
                                _8497 = mem[(32 * idx) + 224]
                                _8625 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8625 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8625 + 36] = 0
                                mem[_8625 + 68] = _8169
                                mem[_8625 + 100] = this.address
                                mem[_8625 + 132] = 128
                                mem[_8625 + 164] = mem[_8625]
                                s = 0
                                while s < mem[_8625]:
                                    mem[_8625 + s + 196] = mem[_8625 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8625] % 32:
                                    require ext_code.size(address(_8497))
                                    call address(_8497).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8169, address(this.address), 128, mem[_8625 + 164 len mem[_8625] + 32]
                                else:
                                    mem[floor32(mem[_8625]) + _8625 + 196] = mem[floor32(mem[_8625]) + _8625 + -(mem[_8625] % 32) + 228 len mem[_8625] % 32]
                                    require ext_code.size(address(_8497))
                                    call address(_8497).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8169, address(this.address), 128, mem[_8625], mem[_8625 + 196 len floor32(mem[_8625]) + 32]
                            else:
                                require idx + 1 < mem[192]
                                _8368 = mem[(32 * idx + 1) + 224]
                                require idx < mem[192]
                                _8624 = mem[(32 * idx) + 224]
                                _8804 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8804 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8804 + 36] = 0
                                mem[_8804 + 68] = _8169
                                mem[_8804 + 100] = address(_8368)
                                mem[_8804 + 132] = 128
                                mem[_8804 + 164] = mem[_8804]
                                s = 0
                                while s < mem[_8804]:
                                    mem[_8804 + s + 196] = mem[_8804 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8804] % 32:
                                    require ext_code.size(address(_8624))
                                    call address(_8624).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8169, address(_8368), 128, mem[_8804 + 164 len mem[_8804] + 32]
                                else:
                                    mem[floor32(mem[_8804]) + _8804 + 196] = mem[floor32(mem[_8804]) + _8804 + -(mem[_8804] % 32) + 228 len mem[_8804] % 32]
                                    require ext_code.size(address(_8624))
                                    call address(_8624).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8169, address(_8368), 128, mem[_8804], mem[_8804 + 196 len floor32(mem[_8804]) + 32]
                        else:
                            if idx >= mem[192] - 1:
                                require idx < mem[192]
                                _8499 = mem[(32 * idx) + 224]
                                _8627 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8627 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8627 + 36] = _8169
                                mem[_8627 + 68] = 0
                                mem[_8627 + 100] = this.address
                                mem[_8627 + 132] = 128
                                mem[_8627 + 164] = mem[_8627]
                                s = 0
                                while s < mem[_8627]:
                                    mem[_8627 + s + 196] = mem[_8627 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8627] % 32:
                                    require ext_code.size(address(_8499))
                                    call address(_8499).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8169, 0, address(this.address), 128, mem[_8627 + 164 len mem[_8627] + 32]
                                else:
                                    mem[floor32(mem[_8627]) + _8627 + 196] = mem[floor32(mem[_8627]) + _8627 + -(mem[_8627] % 32) + 228 len mem[_8627] % 32]
                                    require ext_code.size(address(_8499))
                                    call address(_8499).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8169, 0, address(this.address), 128, mem[_8627], mem[_8627 + 196 len floor32(mem[_8627]) + 32]
                            else:
                                require idx + 1 < mem[192]
                                _8370 = mem[(32 * idx + 1) + 224]
                                require idx < mem[192]
                                _8626 = mem[(32 * idx) + 224]
                                _8808 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8808 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8808 + 36] = _8169
                                mem[_8808 + 68] = 0
                                mem[_8808 + 100] = address(_8370)
                                mem[_8808 + 132] = 128
                                mem[_8808 + 164] = mem[_8808]
                                s = 0
                                while s < mem[_8808]:
                                    mem[_8808 + s + 196] = mem[_8808 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8808] % 32:
                                    require ext_code.size(address(_8626))
                                    call address(_8626).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8169, 0, address(_8370), 128, mem[_8808 + 164 len mem[_8808] + 32]
                                else:
                                    mem[floor32(mem[_8808]) + _8808 + 196] = mem[floor32(mem[_8808]) + _8808 + -(mem[_8808] % 32) + 228 len mem[_8808] % 32]
                                    require ext_code.size(address(_8626))
                                    call address(_8626).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8169, 0, address(_8370), 128, mem[_8808], mem[_8808 + 196 len floor32(mem[_8808]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                require return_data.size >= 32
                if not mem[_6113 + 32]:
                    revert with 0, 32, 36, 0x595472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45, Mask(224, 0, _3109)
                _7923 = mem[192]
                idx = 0
                while idx < _7923:
                    require idx < mem[96]
                    require idx + 1 < mem[96]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        require idx + 1 < mem[256]
                        _8170 = mem[(32 * idx + 1) + 288]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                            if idx >= mem[192] - 1:
                                require idx < mem[192]
                                _8501 = mem[(32 * idx) + 224]
                                _8629 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8629 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8629 + 36] = 0
                                mem[_8629 + 68] = _8170
                                mem[_8629 + 100] = this.address
                                mem[_8629 + 132] = 128
                                mem[_8629 + 164] = mem[_8629]
                                s = 0
                                while s < mem[_8629]:
                                    mem[_8629 + s + 196] = mem[_8629 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8629] % 32:
                                    require ext_code.size(address(_8501))
                                    call address(_8501).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8170, address(this.address), 128, mem[_8629 + 164 len mem[_8629] + 32]
                                else:
                                    mem[floor32(mem[_8629]) + _8629 + 196] = mem[floor32(mem[_8629]) + _8629 + -(mem[_8629] % 32) + 228 len mem[_8629] % 32]
                                    require ext_code.size(address(_8501))
                                    call address(_8501).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8170, address(this.address), 128, mem[_8629], mem[_8629 + 196 len floor32(mem[_8629]) + 32]
                            else:
                                require idx + 1 < mem[192]
                                _8372 = mem[(32 * idx + 1) + 224]
                                require idx < mem[192]
                                _8628 = mem[(32 * idx) + 224]
                                _8812 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8812 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8812 + 36] = 0
                                mem[_8812 + 68] = _8170
                                mem[_8812 + 100] = address(_8372)
                                mem[_8812 + 132] = 128
                                mem[_8812 + 164] = mem[_8812]
                                s = 0
                                while s < mem[_8812]:
                                    mem[_8812 + s + 196] = mem[_8812 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8812] % 32:
                                    require ext_code.size(address(_8628))
                                    call address(_8628).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8170, address(_8372), 128, mem[_8812 + 164 len mem[_8812] + 32]
                                else:
                                    mem[floor32(mem[_8812]) + _8812 + 196] = mem[floor32(mem[_8812]) + _8812 + -(mem[_8812] % 32) + 228 len mem[_8812] % 32]
                                    require ext_code.size(address(_8628))
                                    call address(_8628).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8170, address(_8372), 128, mem[_8812], mem[_8812 + 196 len floor32(mem[_8812]) + 32]
                        else:
                            if idx >= mem[192] - 1:
                                require idx < mem[192]
                                _8503 = mem[(32 * idx) + 224]
                                _8631 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8631 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8631 + 36] = _8170
                                mem[_8631 + 68] = 0
                                mem[_8631 + 100] = this.address
                                mem[_8631 + 132] = 128
                                mem[_8631 + 164] = mem[_8631]
                                s = 0
                                while s < mem[_8631]:
                                    mem[_8631 + s + 196] = mem[_8631 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8631] % 32:
                                    require ext_code.size(address(_8503))
                                    call address(_8503).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8170, 0, address(this.address), 128, mem[_8631 + 164 len mem[_8631] + 32]
                                else:
                                    mem[floor32(mem[_8631]) + _8631 + 196] = mem[floor32(mem[_8631]) + _8631 + -(mem[_8631] % 32) + 228 len mem[_8631] % 32]
                                    require ext_code.size(address(_8503))
                                    call address(_8503).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8170, 0, address(this.address), 128, mem[_8631], mem[_8631 + 196 len floor32(mem[_8631]) + 32]
                            else:
                                require idx + 1 < mem[192]
                                _8374 = mem[(32 * idx + 1) + 224]
                                require idx < mem[192]
                                _8630 = mem[(32 * idx) + 224]
                                _8816 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8816 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8816 + 36] = _8170
                                mem[_8816 + 68] = 0
                                mem[_8816 + 100] = address(_8374)
                                mem[_8816 + 132] = 128
                                mem[_8816 + 164] = mem[_8816]
                                s = 0
                                while s < mem[_8816]:
                                    mem[_8816 + s + 196] = mem[_8816 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8816] % 32:
                                    require ext_code.size(address(_8630))
                                    call address(_8630).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8170, 0, address(_8374), 128, mem[_8816 + 164 len mem[_8816] + 32]
                                else:
                                    mem[floor32(mem[_8816]) + _8816 + 196] = mem[floor32(mem[_8816]) + _8816 + -(mem[_8816] % 32) + 228 len mem[_8816] % 32]
                                    require ext_code.size(address(_8630))
                                    call address(_8630).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8170, 0, address(_8374), 128, mem[_8816], mem[_8816 + 196 len floor32(mem[_8816]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        require idx + 1 < mem[256]
                        _8171 = mem[(32 * idx + 1) + 288]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                            if idx >= mem[192] - 1:
                                require idx < mem[192]
                                _8505 = mem[(32 * idx) + 224]
                                _8633 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8633 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8633 + 36] = 0
                                mem[_8633 + 68] = _8171
                                mem[_8633 + 100] = this.address
                                mem[_8633 + 132] = 128
                                mem[_8633 + 164] = mem[_8633]
                                s = 0
                                while s < mem[_8633]:
                                    mem[_8633 + s + 196] = mem[_8633 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8633] % 32:
                                    require ext_code.size(address(_8505))
                                    call address(_8505).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8171, address(this.address), 128, mem[_8633 + 164 len mem[_8633] + 32]
                                else:
                                    mem[floor32(mem[_8633]) + _8633 + 196] = mem[floor32(mem[_8633]) + _8633 + -(mem[_8633] % 32) + 228 len mem[_8633] % 32]
                                    require ext_code.size(address(_8505))
                                    call address(_8505).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8171, address(this.address), 128, mem[_8633], mem[_8633 + 196 len floor32(mem[_8633]) + 32]
                            else:
                                require idx + 1 < mem[192]
                                _8376 = mem[(32 * idx + 1) + 224]
                                require idx < mem[192]
                                _8632 = mem[(32 * idx) + 224]
                                _8820 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8820 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8820 + 36] = 0
                                mem[_8820 + 68] = _8171
                                mem[_8820 + 100] = address(_8376)
                                mem[_8820 + 132] = 128
                                mem[_8820 + 164] = mem[_8820]
                                s = 0
                                while s < mem[_8820]:
                                    mem[_8820 + s + 196] = mem[_8820 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8820] % 32:
                                    require ext_code.size(address(_8632))
                                    call address(_8632).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8171, address(_8376), 128, mem[_8820 + 164 len mem[_8820] + 32]
                                else:
                                    mem[floor32(mem[_8820]) + _8820 + 196] = mem[floor32(mem[_8820]) + _8820 + -(mem[_8820] % 32) + 228 len mem[_8820] % 32]
                                    require ext_code.size(address(_8632))
                                    call address(_8632).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8171, address(_8376), 128, mem[_8820], mem[_8820 + 196 len floor32(mem[_8820]) + 32]
                        else:
                            if idx >= mem[192] - 1:
                                require idx < mem[192]
                                _8507 = mem[(32 * idx) + 224]
                                _8635 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8635 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8635 + 36] = _8171
                                mem[_8635 + 68] = 0
                                mem[_8635 + 100] = this.address
                                mem[_8635 + 132] = 128
                                mem[_8635 + 164] = mem[_8635]
                                s = 0
                                while s < mem[_8635]:
                                    mem[_8635 + s + 196] = mem[_8635 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8635] % 32:
                                    require ext_code.size(address(_8507))
                                    call address(_8507).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8171, 0, address(this.address), 128, mem[_8635 + 164 len mem[_8635] + 32]
                                else:
                                    mem[floor32(mem[_8635]) + _8635 + 196] = mem[floor32(mem[_8635]) + _8635 + -(mem[_8635] % 32) + 228 len mem[_8635] % 32]
                                    require ext_code.size(address(_8507))
                                    call address(_8507).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8171, 0, address(this.address), 128, mem[_8635], mem[_8635 + 196 len floor32(mem[_8635]) + 32]
                            else:
                                require idx + 1 < mem[192]
                                _8378 = mem[(32 * idx + 1) + 224]
                                require idx < mem[192]
                                _8634 = mem[(32 * idx) + 224]
                                _8824 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8824 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8824 + 36] = _8171
                                mem[_8824 + 68] = 0
                                mem[_8824 + 100] = address(_8378)
                                mem[_8824 + 132] = 128
                                mem[_8824 + 164] = mem[_8824]
                                s = 0
                                while s < mem[_8824]:
                                    mem[_8824 + s + 196] = mem[_8824 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8824] % 32:
                                    require ext_code.size(address(_8634))
                                    call address(_8634).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8171, 0, address(_8378), 128, mem[_8824 + 164 len mem[_8824] + 32]
                                else:
                                    mem[floor32(mem[_8824]) + _8824 + 196] = mem[floor32(mem[_8824]) + _8824 + -(mem[_8824] % 32) + 228 len mem[_8824] % 32]
                                    require ext_code.size(address(_8634))
                                    call address(_8634).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8171, 0, address(_8378), 128, mem[_8824], mem[_8824 + 196 len floor32(mem[_8824]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
    else:
        require ext_code.size(arg3)
        call arg3.deposit() with:
           value msg.value wei
             gas 50000 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg6)
        staticcall arg6.factory() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = 2
        mem[192] = 1
        mem[128] = arg3
        mem[160] = arg4
        mem[224] = arg5
        mem[256] = 2
        mem[64] = 352
        mem[288 len 64] = call.data[calldata.size len 64]
        mem[320] = arg2
        idx = mem[96] - 1
        while idx > 0:
            require idx - 1 < mem[96]
            _3086 = mem[(32 * idx - 1) + 128]
            require idx < mem[96]
            _3095 = mem[(32 * idx) + 128]
            if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
            if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
                if not mem[(32 * idx - 1) + 140 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                    revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
                    if not mem[(32 * idx - 1) + 140 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    _3376 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx - 1) + 128])
                    mem[mem[64] + 52] = address(_3095)
                    _3377 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _3379 = sha3(mem[_3377 + 32 len mem[_3377]])
                    mem[_3376 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_3376 + 105] = address(ext_call.return_data[0])
                    mem[_3376 + 125] = _3379
                    mem[_3376 + 157] = 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66
                    mem[_3376 + 72] = 85
                    mem[64] = _3376 + 189
                    require ext_code.size(arg5)
                    staticcall arg5.getReserves() with:
                            gas gas_remaining wei
                    mem[_3376 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[256]
                    if mem[(32 * idx) + 288] <= 0:
                        revert with 0, 
                                    32,
                                    42,
                                    0x7350616e63616b654c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                    mem[_3376 + 299 len 22]
                    if address(_3086) == address(_3086):
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3376 + 295 len 26]
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3376 + 295 len 26]
                        if not mem[(32 * idx) + 288]:
                            if ext_call.return_data[50 len 14] - mem[(32 * idx) + 288] > ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288]) / 998 != ext_call.return_data[50 len 14] - mem[(32 * idx) + 288]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288])
                            if (0 / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288])) + 1 < 0 / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[256]
                            mem[(32 * idx - 1) + 288] = (0 / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288])) + 1
                        else:
                            require mem[(32 * idx) + 288]
                            if ext_call.return_data[18 len 14] * mem[(32 * idx) + 288] / mem[(32 * idx) + 288] != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + 288] / 1000 != ext_call.return_data[18 len 14] * mem[(32 * idx) + 288]:
                                revert with 0, 'ds-math-mul-overflow'
                            if ext_call.return_data[50 len 14] - mem[(32 * idx) + 288] > ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288]) / 998 != ext_call.return_data[50 len 14] - mem[(32 * idx) + 288]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288])
                            if (1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + 288] / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288])) + 1 < 1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + 288] / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[256]
                            mem[(32 * idx - 1) + 288] = (1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + 288] / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288])) + 1
                    else:
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3376 + 295 len 26]
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3376 + 295 len 26]
                        if not mem[(32 * idx) + 288]:
                            if ext_call.return_data[18 len 14] - mem[(32 * idx) + 288] > ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288]) / 998 != ext_call.return_data[18 len 14] - mem[(32 * idx) + 288]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288])
                            if (0 / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288])) + 1 < 0 / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[256]
                            mem[(32 * idx - 1) + 288] = (0 / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288])) + 1
                        else:
                            require mem[(32 * idx) + 288]
                            if ext_call.return_data[50 len 14] * mem[(32 * idx) + 288] / mem[(32 * idx) + 288] != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + 288] / 1000 != ext_call.return_data[50 len 14] * mem[(32 * idx) + 288]:
                                revert with 0, 'ds-math-mul-overflow'
                            if ext_call.return_data[18 len 14] - mem[(32 * idx) + 288] > ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288]) / 998 != ext_call.return_data[18 len 14] - mem[(32 * idx) + 288]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288])
                            if (1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + 288] / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288])) + 1 < 1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + 288] / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[256]
                            mem[(32 * idx - 1) + 288] = (1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + 288] / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288])) + 1
                else:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    _3384 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                    mem[mem[64] + 52] = address(mem[(32 * idx - 1) + 128])
                    _3385 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _3387 = sha3(mem[_3385 + 32 len mem[_3385]])
                    mem[_3384 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_3384 + 105] = address(ext_call.return_data[0])
                    mem[_3384 + 125] = _3387
                    mem[_3384 + 157] = 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66
                    mem[_3384 + 72] = 85
                    mem[64] = _3384 + 189
                    require ext_code.size(arg5)
                    staticcall arg5.getReserves() with:
                            gas gas_remaining wei
                    mem[_3384 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[256]
                    if mem[(32 * idx) + 288] <= 0:
                        revert with 0, 
                                    32,
                                    42,
                                    0x7350616e63616b654c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                    mem[_3384 + 299 len 22]
                    if address(_3086) == address(_3086):
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3384 + 295 len 26]
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3384 + 295 len 26]
                        if not mem[(32 * idx) + 288]:
                            if ext_call.return_data[50 len 14] - mem[(32 * idx) + 288] > ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288]) / 998 != ext_call.return_data[50 len 14] - mem[(32 * idx) + 288]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288])
                            if (0 / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288])) + 1 < 0 / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[256]
                            mem[(32 * idx - 1) + 288] = (0 / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288])) + 1
                        else:
                            require mem[(32 * idx) + 288]
                            if ext_call.return_data[18 len 14] * mem[(32 * idx) + 288] / mem[(32 * idx) + 288] != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + 288] / 1000 != ext_call.return_data[18 len 14] * mem[(32 * idx) + 288]:
                                revert with 0, 'ds-math-mul-overflow'
                            if ext_call.return_data[50 len 14] - mem[(32 * idx) + 288] > ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288]) / 998 != ext_call.return_data[50 len 14] - mem[(32 * idx) + 288]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288])
                            if (1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + 288] / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288])) + 1 < 1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + 288] / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[256]
                            mem[(32 * idx - 1) + 288] = (1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + 288] / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288])) + 1
                    else:
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3384 + 295 len 26]
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3384 + 295 len 26]
                        if not mem[(32 * idx) + 288]:
                            if ext_call.return_data[18 len 14] - mem[(32 * idx) + 288] > ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288]) / 998 != ext_call.return_data[18 len 14] - mem[(32 * idx) + 288]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288])
                            if (0 / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288])) + 1 < 0 / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[256]
                            mem[(32 * idx - 1) + 288] = (0 / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288])) + 1
                        else:
                            require mem[(32 * idx) + 288]
                            if ext_call.return_data[50 len 14] * mem[(32 * idx) + 288] / mem[(32 * idx) + 288] != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + 288] / 1000 != ext_call.return_data[50 len 14] * mem[(32 * idx) + 288]:
                                revert with 0, 'ds-math-mul-overflow'
                            if ext_call.return_data[18 len 14] - mem[(32 * idx) + 288] > ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288]) / 998 != ext_call.return_data[18 len 14] - mem[(32 * idx) + 288]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288])
                            if (1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + 288] / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288])) + 1 < 1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + 288] / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[256]
                            mem[(32 * idx - 1) + 288] = (1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + 288] / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288])) + 1
            else:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                    revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
                    if not mem[(32 * idx - 1) + 140 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    _3392 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx - 1) + 128])
                    mem[mem[64] + 52] = address(_3095)
                    _3393 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _3395 = sha3(mem[_3393 + 32 len mem[_3393]])
                    mem[_3392 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_3392 + 105] = address(ext_call.return_data[0])
                    mem[_3392 + 125] = _3395
                    mem[_3392 + 157] = 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66
                    mem[_3392 + 72] = 85
                    mem[64] = _3392 + 189
                    require ext_code.size(arg5)
                    staticcall arg5.getReserves() with:
                            gas gas_remaining wei
                    mem[_3392 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[256]
                    if mem[(32 * idx) + 288] <= 0:
                        revert with 0, 
                                    32,
                                    42,
                                    0x7350616e63616b654c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                    mem[_3392 + 299 len 22]
                    if address(_3086) == address(_3095):
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3392 + 295 len 26]
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3392 + 295 len 26]
                        if not mem[(32 * idx) + 288]:
                            if ext_call.return_data[50 len 14] - mem[(32 * idx) + 288] > ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288]) / 998 != ext_call.return_data[50 len 14] - mem[(32 * idx) + 288]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288])
                            if (0 / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288])) + 1 < 0 / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[256]
                            mem[(32 * idx - 1) + 288] = (0 / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288])) + 1
                        else:
                            require mem[(32 * idx) + 288]
                            if ext_call.return_data[18 len 14] * mem[(32 * idx) + 288] / mem[(32 * idx) + 288] != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + 288] / 1000 != ext_call.return_data[18 len 14] * mem[(32 * idx) + 288]:
                                revert with 0, 'ds-math-mul-overflow'
                            if ext_call.return_data[50 len 14] - mem[(32 * idx) + 288] > ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288]) / 998 != ext_call.return_data[50 len 14] - mem[(32 * idx) + 288]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288])
                            if (1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + 288] / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288])) + 1 < 1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + 288] / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[256]
                            mem[(32 * idx - 1) + 288] = (1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + 288] / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288])) + 1
                    else:
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3392 + 295 len 26]
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3392 + 295 len 26]
                        if not mem[(32 * idx) + 288]:
                            if ext_call.return_data[18 len 14] - mem[(32 * idx) + 288] > ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288]) / 998 != ext_call.return_data[18 len 14] - mem[(32 * idx) + 288]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288])
                            if (0 / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288])) + 1 < 0 / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[256]
                            mem[(32 * idx - 1) + 288] = (0 / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288])) + 1
                        else:
                            require mem[(32 * idx) + 288]
                            if ext_call.return_data[50 len 14] * mem[(32 * idx) + 288] / mem[(32 * idx) + 288] != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + 288] / 1000 != ext_call.return_data[50 len 14] * mem[(32 * idx) + 288]:
                                revert with 0, 'ds-math-mul-overflow'
                            if ext_call.return_data[18 len 14] - mem[(32 * idx) + 288] > ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288]) / 998 != ext_call.return_data[18 len 14] - mem[(32 * idx) + 288]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288])
                            if (1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + 288] / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288])) + 1 < 1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + 288] / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[256]
                            mem[(32 * idx - 1) + 288] = (1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + 288] / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288])) + 1
                else:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    _3400 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                    mem[mem[64] + 52] = address(mem[(32 * idx - 1) + 128])
                    _3401 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _3403 = sha3(mem[_3401 + 32 len mem[_3401]])
                    mem[_3400 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_3400 + 105] = address(ext_call.return_data[0])
                    mem[_3400 + 125] = _3403
                    mem[_3400 + 157] = 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66
                    mem[_3400 + 72] = 85
                    mem[64] = _3400 + 189
                    require ext_code.size(arg5)
                    staticcall arg5.getReserves() with:
                            gas gas_remaining wei
                    mem[_3400 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[256]
                    if mem[(32 * idx) + 288] <= 0:
                        revert with 0, 
                                    32,
                                    42,
                                    0x7350616e63616b654c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                    mem[_3400 + 299 len 22]
                    if address(_3086) == address(_3095):
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3400 + 295 len 26]
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3400 + 295 len 26]
                        if not mem[(32 * idx) + 288]:
                            if ext_call.return_data[50 len 14] - mem[(32 * idx) + 288] > ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288]) / 998 != ext_call.return_data[50 len 14] - mem[(32 * idx) + 288]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288])
                            if (0 / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288])) + 1 < 0 / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[256]
                            mem[(32 * idx - 1) + 288] = (0 / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288])) + 1
                        else:
                            require mem[(32 * idx) + 288]
                            if ext_call.return_data[18 len 14] * mem[(32 * idx) + 288] / mem[(32 * idx) + 288] != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + 288] / 1000 != ext_call.return_data[18 len 14] * mem[(32 * idx) + 288]:
                                revert with 0, 'ds-math-mul-overflow'
                            if ext_call.return_data[50 len 14] - mem[(32 * idx) + 288] > ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288]) / 998 != ext_call.return_data[50 len 14] - mem[(32 * idx) + 288]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288])
                            if (1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + 288] / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288])) + 1 < 1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + 288] / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[256]
                            mem[(32 * idx - 1) + 288] = (1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + 288] / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + 288])) + 1
                    else:
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3400 + 295 len 26]
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3400 + 295 len 26]
                        if not mem[(32 * idx) + 288]:
                            if ext_call.return_data[18 len 14] - mem[(32 * idx) + 288] > ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288]) / 998 != ext_call.return_data[18 len 14] - mem[(32 * idx) + 288]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288])
                            if (0 / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288])) + 1 < 0 / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[256]
                            mem[(32 * idx - 1) + 288] = (0 / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288])) + 1
                        else:
                            require mem[(32 * idx) + 288]
                            if ext_call.return_data[50 len 14] * mem[(32 * idx) + 288] / mem[(32 * idx) + 288] != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + 288] / 1000 != ext_call.return_data[50 len 14] * mem[(32 * idx) + 288]:
                                revert with 0, 'ds-math-mul-overflow'
                            if ext_call.return_data[18 len 14] - mem[(32 * idx) + 288] > ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288]) / 998 != ext_call.return_data[18 len 14] - mem[(32 * idx) + 288]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288])
                            if (1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + 288] / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288])) + 1 < 1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + 288] / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[256]
                            mem[(32 * idx - 1) + 288] = (1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + 288] / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + 288])) + 1
            idx = idx - 1
            continue 
        require 0 < mem[256]
        if mem[288] > arg1:
            revert with 0, 'e'
        require 0 < mem[256]
        _3111 = mem[288]
        mem[mem[64] + 4] = this.address
        require ext_code.size(arg3)
        call arg3.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), _3111
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _3163 = mem[64]
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = arg5
        mem[mem[64] + 100] = _3111
        _3164 = mem[64]
        mem[mem[64]] = 100
        mem[64] = mem[64] + 132
        mem[_3164 + 32 len 4] = unknown_0x23b872dd(?????)
        _3167 = mem[_3164]
        mem[mem[64] len floor32(mem[_3164])] = mem[_3164 + 32 len floor32(mem[_3164])]
        mem[mem[64] + floor32(mem[_3164]) + -(mem[_3164] % 32) + 32 len mem[_3164] % 32] = mem[_3164 + floor32(mem[_3164]) + -(mem[_3164] % 32) + 64 len mem[_3164] % 32]
        call arg3 with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _3167 + _3163 + -mem[64] + 128]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 32, 36, 0x595472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45, Mask(224, 0, _3111)
            if not mem[96]:
                _7928 = mem[192]
                idx = 0
                while idx < _7928:
                    require idx < mem[96]
                    require idx + 1 < mem[96]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        require idx + 1 < mem[256]
                        _8180 = mem[(32 * idx + 1) + 288]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                            if idx >= mem[192] - 1:
                                require idx < mem[192]
                                _8541 = mem[(32 * idx) + 224]
                                _8669 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8669 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8669 + 36] = 0
                                mem[_8669 + 68] = _8180
                                mem[_8669 + 100] = this.address
                                mem[_8669 + 132] = 128
                                mem[_8669 + 164] = mem[_8669]
                                s = 0
                                while s < mem[_8669]:
                                    mem[_8669 + s + 196] = mem[_8669 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8669] % 32:
                                    require ext_code.size(address(_8541))
                                    call address(_8541).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8180, address(this.address), 128, mem[_8669 + 164 len mem[_8669] + 32]
                                else:
                                    mem[floor32(mem[_8669]) + _8669 + 196] = mem[floor32(mem[_8669]) + _8669 + -(mem[_8669] % 32) + 228 len mem[_8669] % 32]
                                    require ext_code.size(address(_8541))
                                    call address(_8541).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8180, address(this.address), 128, mem[_8669], mem[_8669 + 196 len floor32(mem[_8669]) + 32]
                            else:
                                require idx + 1 < mem[192]
                                _8412 = mem[(32 * idx + 1) + 224]
                                require idx < mem[192]
                                _8668 = mem[(32 * idx) + 224]
                                _8892 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8892 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8892 + 36] = 0
                                mem[_8892 + 68] = _8180
                                mem[_8892 + 100] = address(_8412)
                                mem[_8892 + 132] = 128
                                mem[_8892 + 164] = mem[_8892]
                                s = 0
                                while s < mem[_8892]:
                                    mem[_8892 + s + 196] = mem[_8892 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8892] % 32:
                                    require ext_code.size(address(_8668))
                                    call address(_8668).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8180, address(_8412), 128, mem[_8892 + 164 len mem[_8892] + 32]
                                else:
                                    mem[floor32(mem[_8892]) + _8892 + 196] = mem[floor32(mem[_8892]) + _8892 + -(mem[_8892] % 32) + 228 len mem[_8892] % 32]
                                    require ext_code.size(address(_8668))
                                    call address(_8668).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8180, address(_8412), 128, mem[_8892], mem[_8892 + 196 len floor32(mem[_8892]) + 32]
                        else:
                            if idx >= mem[192] - 1:
                                require idx < mem[192]
                                _8543 = mem[(32 * idx) + 224]
                                _8671 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8671 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8671 + 36] = _8180
                                mem[_8671 + 68] = 0
                                mem[_8671 + 100] = this.address
                                mem[_8671 + 132] = 128
                                mem[_8671 + 164] = mem[_8671]
                                s = 0
                                while s < mem[_8671]:
                                    mem[_8671 + s + 196] = mem[_8671 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8671] % 32:
                                    require ext_code.size(address(_8543))
                                    call address(_8543).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8180, 0, address(this.address), 128, mem[_8671 + 164 len mem[_8671] + 32]
                                else:
                                    mem[floor32(mem[_8671]) + _8671 + 196] = mem[floor32(mem[_8671]) + _8671 + -(mem[_8671] % 32) + 228 len mem[_8671] % 32]
                                    require ext_code.size(address(_8543))
                                    call address(_8543).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8180, 0, address(this.address), 128, mem[_8671], mem[_8671 + 196 len floor32(mem[_8671]) + 32]
                            else:
                                require idx + 1 < mem[192]
                                _8414 = mem[(32 * idx + 1) + 224]
                                require idx < mem[192]
                                _8670 = mem[(32 * idx) + 224]
                                _8896 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8896 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8896 + 36] = _8180
                                mem[_8896 + 68] = 0
                                mem[_8896 + 100] = address(_8414)
                                mem[_8896 + 132] = 128
                                mem[_8896 + 164] = mem[_8896]
                                s = 0
                                while s < mem[_8896]:
                                    mem[_8896 + s + 196] = mem[_8896 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8896] % 32:
                                    require ext_code.size(address(_8670))
                                    call address(_8670).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8180, 0, address(_8414), 128, mem[_8896 + 164 len mem[_8896] + 32]
                                else:
                                    mem[floor32(mem[_8896]) + _8896 + 196] = mem[floor32(mem[_8896]) + _8896 + -(mem[_8896] % 32) + 228 len mem[_8896] % 32]
                                    require ext_code.size(address(_8670))
                                    call address(_8670).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8180, 0, address(_8414), 128, mem[_8896], mem[_8896 + 196 len floor32(mem[_8896]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        require idx + 1 < mem[256]
                        _8181 = mem[(32 * idx + 1) + 288]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                            if idx >= mem[192] - 1:
                                require idx < mem[192]
                                _8545 = mem[(32 * idx) + 224]
                                _8673 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8673 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8673 + 36] = 0
                                mem[_8673 + 68] = _8181
                                mem[_8673 + 100] = this.address
                                mem[_8673 + 132] = 128
                                mem[_8673 + 164] = mem[_8673]
                                s = 0
                                while s < mem[_8673]:
                                    mem[_8673 + s + 196] = mem[_8673 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8673] % 32:
                                    require ext_code.size(address(_8545))
                                    call address(_8545).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8181, address(this.address), 128, mem[_8673 + 164 len mem[_8673] + 32]
                                else:
                                    mem[floor32(mem[_8673]) + _8673 + 196] = mem[floor32(mem[_8673]) + _8673 + -(mem[_8673] % 32) + 228 len mem[_8673] % 32]
                                    require ext_code.size(address(_8545))
                                    call address(_8545).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8181, address(this.address), 128, mem[_8673], mem[_8673 + 196 len floor32(mem[_8673]) + 32]
                            else:
                                require idx + 1 < mem[192]
                                _8416 = mem[(32 * idx + 1) + 224]
                                require idx < mem[192]
                                _8672 = mem[(32 * idx) + 224]
                                _8900 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8900 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8900 + 36] = 0
                                mem[_8900 + 68] = _8181
                                mem[_8900 + 100] = address(_8416)
                                mem[_8900 + 132] = 128
                                mem[_8900 + 164] = mem[_8900]
                                s = 0
                                while s < mem[_8900]:
                                    mem[_8900 + s + 196] = mem[_8900 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8900] % 32:
                                    require ext_code.size(address(_8672))
                                    call address(_8672).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8181, address(_8416), 128, mem[_8900 + 164 len mem[_8900] + 32]
                                else:
                                    mem[floor32(mem[_8900]) + _8900 + 196] = mem[floor32(mem[_8900]) + _8900 + -(mem[_8900] % 32) + 228 len mem[_8900] % 32]
                                    require ext_code.size(address(_8672))
                                    call address(_8672).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8181, address(_8416), 128, mem[_8900], mem[_8900 + 196 len floor32(mem[_8900]) + 32]
                        else:
                            if idx >= mem[192] - 1:
                                require idx < mem[192]
                                _8547 = mem[(32 * idx) + 224]
                                _8675 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8675 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8675 + 36] = _8181
                                mem[_8675 + 68] = 0
                                mem[_8675 + 100] = this.address
                                mem[_8675 + 132] = 128
                                mem[_8675 + 164] = mem[_8675]
                                s = 0
                                while s < mem[_8675]:
                                    mem[_8675 + s + 196] = mem[_8675 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8675] % 32:
                                    require ext_code.size(address(_8547))
                                    call address(_8547).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8181, 0, address(this.address), 128, mem[_8675 + 164 len mem[_8675] + 32]
                                else:
                                    mem[floor32(mem[_8675]) + _8675 + 196] = mem[floor32(mem[_8675]) + _8675 + -(mem[_8675] % 32) + 228 len mem[_8675] % 32]
                                    require ext_code.size(address(_8547))
                                    call address(_8547).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8181, 0, address(this.address), 128, mem[_8675], mem[_8675 + 196 len floor32(mem[_8675]) + 32]
                            else:
                                require idx + 1 < mem[192]
                                _8418 = mem[(32 * idx + 1) + 224]
                                require idx < mem[192]
                                _8674 = mem[(32 * idx) + 224]
                                _8904 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8904 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8904 + 36] = _8181
                                mem[_8904 + 68] = 0
                                mem[_8904 + 100] = address(_8418)
                                mem[_8904 + 132] = 128
                                mem[_8904 + 164] = mem[_8904]
                                s = 0
                                while s < mem[_8904]:
                                    mem[_8904 + s + 196] = mem[_8904 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8904] % 32:
                                    require ext_code.size(address(_8674))
                                    call address(_8674).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8181, 0, address(_8418), 128, mem[_8904 + 164 len mem[_8904] + 32]
                                else:
                                    mem[floor32(mem[_8904]) + _8904 + 196] = mem[floor32(mem[_8904]) + _8904 + -(mem[_8904] % 32) + 228 len mem[_8904] % 32]
                                    require ext_code.size(address(_8674))
                                    call address(_8674).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8181, 0, address(_8418), 128, mem[_8904], mem[_8904 + 196 len floor32(mem[_8904]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 32, 36, 0x595472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45, Mask(224, 0, _3111)
                _7929 = mem[192]
                idx = 0
                while idx < _7929:
                    require idx < mem[96]
                    require idx + 1 < mem[96]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        require idx + 1 < mem[256]
                        _8182 = mem[(32 * idx + 1) + 288]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                            if idx >= mem[192] - 1:
                                require idx < mem[192]
                                _8549 = mem[(32 * idx) + 224]
                                _8677 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8677 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8677 + 36] = 0
                                mem[_8677 + 68] = _8182
                                mem[_8677 + 100] = this.address
                                mem[_8677 + 132] = 128
                                mem[_8677 + 164] = mem[_8677]
                                s = 0
                                while s < mem[_8677]:
                                    mem[_8677 + s + 196] = mem[_8677 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8677] % 32:
                                    require ext_code.size(address(_8549))
                                    call address(_8549).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8182, address(this.address), 128, mem[_8677 + 164 len mem[_8677] + 32]
                                else:
                                    mem[floor32(mem[_8677]) + _8677 + 196] = mem[floor32(mem[_8677]) + _8677 + -(mem[_8677] % 32) + 228 len mem[_8677] % 32]
                                    require ext_code.size(address(_8549))
                                    call address(_8549).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8182, address(this.address), 128, mem[_8677], mem[_8677 + 196 len floor32(mem[_8677]) + 32]
                            else:
                                require idx + 1 < mem[192]
                                _8420 = mem[(32 * idx + 1) + 224]
                                require idx < mem[192]
                                _8676 = mem[(32 * idx) + 224]
                                _8908 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8908 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8908 + 36] = 0
                                mem[_8908 + 68] = _8182
                                mem[_8908 + 100] = address(_8420)
                                mem[_8908 + 132] = 128
                                mem[_8908 + 164] = mem[_8908]
                                s = 0
                                while s < mem[_8908]:
                                    mem[_8908 + s + 196] = mem[_8908 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8908] % 32:
                                    require ext_code.size(address(_8676))
                                    call address(_8676).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8182, address(_8420), 128, mem[_8908 + 164 len mem[_8908] + 32]
                                else:
                                    mem[floor32(mem[_8908]) + _8908 + 196] = mem[floor32(mem[_8908]) + _8908 + -(mem[_8908] % 32) + 228 len mem[_8908] % 32]
                                    require ext_code.size(address(_8676))
                                    call address(_8676).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8182, address(_8420), 128, mem[_8908], mem[_8908 + 196 len floor32(mem[_8908]) + 32]
                        else:
                            if idx >= mem[192] - 1:
                                require idx < mem[192]
                                _8551 = mem[(32 * idx) + 224]
                                _8679 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8679 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8679 + 36] = _8182
                                mem[_8679 + 68] = 0
                                mem[_8679 + 100] = this.address
                                mem[_8679 + 132] = 128
                                mem[_8679 + 164] = mem[_8679]
                                s = 0
                                while s < mem[_8679]:
                                    mem[_8679 + s + 196] = mem[_8679 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8679] % 32:
                                    require ext_code.size(address(_8551))
                                    call address(_8551).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8182, 0, address(this.address), 128, mem[_8679 + 164 len mem[_8679] + 32]
                                else:
                                    mem[floor32(mem[_8679]) + _8679 + 196] = mem[floor32(mem[_8679]) + _8679 + -(mem[_8679] % 32) + 228 len mem[_8679] % 32]
                                    require ext_code.size(address(_8551))
                                    call address(_8551).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8182, 0, address(this.address), 128, mem[_8679], mem[_8679 + 196 len floor32(mem[_8679]) + 32]
                            else:
                                require idx + 1 < mem[192]
                                _8422 = mem[(32 * idx + 1) + 224]
                                require idx < mem[192]
                                _8678 = mem[(32 * idx) + 224]
                                _8912 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8912 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8912 + 36] = _8182
                                mem[_8912 + 68] = 0
                                mem[_8912 + 100] = address(_8422)
                                mem[_8912 + 132] = 128
                                mem[_8912 + 164] = mem[_8912]
                                s = 0
                                while s < mem[_8912]:
                                    mem[_8912 + s + 196] = mem[_8912 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8912] % 32:
                                    require ext_code.size(address(_8678))
                                    call address(_8678).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8182, 0, address(_8422), 128, mem[_8912 + 164 len mem[_8912] + 32]
                                else:
                                    mem[floor32(mem[_8912]) + _8912 + 196] = mem[floor32(mem[_8912]) + _8912 + -(mem[_8912] % 32) + 228 len mem[_8912] % 32]
                                    require ext_code.size(address(_8678))
                                    call address(_8678).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8182, 0, address(_8422), 128, mem[_8912], mem[_8912 + 196 len floor32(mem[_8912]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        require idx + 1 < mem[256]
                        _8183 = mem[(32 * idx + 1) + 288]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                            if idx >= mem[192] - 1:
                                require idx < mem[192]
                                _8553 = mem[(32 * idx) + 224]
                                _8681 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8681 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8681 + 36] = 0
                                mem[_8681 + 68] = _8183
                                mem[_8681 + 100] = this.address
                                mem[_8681 + 132] = 128
                                mem[_8681 + 164] = mem[_8681]
                                s = 0
                                while s < mem[_8681]:
                                    mem[_8681 + s + 196] = mem[_8681 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8681] % 32:
                                    require ext_code.size(address(_8553))
                                    call address(_8553).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8183, address(this.address), 128, mem[_8681 + 164 len mem[_8681] + 32]
                                else:
                                    mem[floor32(mem[_8681]) + _8681 + 196] = mem[floor32(mem[_8681]) + _8681 + -(mem[_8681] % 32) + 228 len mem[_8681] % 32]
                                    require ext_code.size(address(_8553))
                                    call address(_8553).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8183, address(this.address), 128, mem[_8681], mem[_8681 + 196 len floor32(mem[_8681]) + 32]
                            else:
                                require idx + 1 < mem[192]
                                _8424 = mem[(32 * idx + 1) + 224]
                                require idx < mem[192]
                                _8680 = mem[(32 * idx) + 224]
                                _8916 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8916 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8916 + 36] = 0
                                mem[_8916 + 68] = _8183
                                mem[_8916 + 100] = address(_8424)
                                mem[_8916 + 132] = 128
                                mem[_8916 + 164] = mem[_8916]
                                s = 0
                                while s < mem[_8916]:
                                    mem[_8916 + s + 196] = mem[_8916 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8916] % 32:
                                    require ext_code.size(address(_8680))
                                    call address(_8680).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8183, address(_8424), 128, mem[_8916 + 164 len mem[_8916] + 32]
                                else:
                                    mem[floor32(mem[_8916]) + _8916 + 196] = mem[floor32(mem[_8916]) + _8916 + -(mem[_8916] % 32) + 228 len mem[_8916] % 32]
                                    require ext_code.size(address(_8680))
                                    call address(_8680).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8183, address(_8424), 128, mem[_8916], mem[_8916 + 196 len floor32(mem[_8916]) + 32]
                        else:
                            if idx >= mem[192] - 1:
                                require idx < mem[192]
                                _8555 = mem[(32 * idx) + 224]
                                _8683 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8683 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8683 + 36] = _8183
                                mem[_8683 + 68] = 0
                                mem[_8683 + 100] = this.address
                                mem[_8683 + 132] = 128
                                mem[_8683 + 164] = mem[_8683]
                                s = 0
                                while s < mem[_8683]:
                                    mem[_8683 + s + 196] = mem[_8683 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8683] % 32:
                                    require ext_code.size(address(_8555))
                                    call address(_8555).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8183, 0, address(this.address), 128, mem[_8683 + 164 len mem[_8683] + 32]
                                else:
                                    mem[floor32(mem[_8683]) + _8683 + 196] = mem[floor32(mem[_8683]) + _8683 + -(mem[_8683] % 32) + 228 len mem[_8683] % 32]
                                    require ext_code.size(address(_8555))
                                    call address(_8555).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8183, 0, address(this.address), 128, mem[_8683], mem[_8683 + 196 len floor32(mem[_8683]) + 32]
                            else:
                                require idx + 1 < mem[192]
                                _8426 = mem[(32 * idx + 1) + 224]
                                require idx < mem[192]
                                _8682 = mem[(32 * idx) + 224]
                                _8920 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8920 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8920 + 36] = _8183
                                mem[_8920 + 68] = 0
                                mem[_8920 + 100] = address(_8426)
                                mem[_8920 + 132] = 128
                                mem[_8920 + 164] = mem[_8920]
                                s = 0
                                while s < mem[_8920]:
                                    mem[_8920 + s + 196] = mem[_8920 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8920] % 32:
                                    require ext_code.size(address(_8682))
                                    call address(_8682).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8183, 0, address(_8426), 128, mem[_8920 + 164 len mem[_8920] + 32]
                                else:
                                    mem[floor32(mem[_8920]) + _8920 + 196] = mem[floor32(mem[_8920]) + _8920 + -(mem[_8920] % 32) + 228 len mem[_8920] % 32]
                                    require ext_code.size(address(_8682))
                                    call address(_8682).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8183, 0, address(_8426), 128, mem[_8920], mem[_8920 + 196 len floor32(mem[_8920]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
        else:
            _6115 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_6115] = return_data.size
            mem[_6115 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 32, 36, 0x595472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45, Mask(224, 0, _3111)
            if not return_data.size:
                _7930 = mem[192]
                idx = 0
                while idx < _7930:
                    require idx < mem[96]
                    require idx + 1 < mem[96]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        require idx + 1 < mem[256]
                        _8184 = mem[(32 * idx + 1) + 288]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                            if idx >= mem[192] - 1:
                                require idx < mem[192]
                                _8557 = mem[(32 * idx) + 224]
                                _8685 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8685 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8685 + 36] = 0
                                mem[_8685 + 68] = _8184
                                mem[_8685 + 100] = this.address
                                mem[_8685 + 132] = 128
                                mem[_8685 + 164] = mem[_8685]
                                s = 0
                                while s < mem[_8685]:
                                    mem[_8685 + s + 196] = mem[_8685 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8685] % 32:
                                    require ext_code.size(address(_8557))
                                    call address(_8557).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8184, address(this.address), 128, mem[_8685 + 164 len mem[_8685] + 32]
                                else:
                                    mem[floor32(mem[_8685]) + _8685 + 196] = mem[floor32(mem[_8685]) + _8685 + -(mem[_8685] % 32) + 228 len mem[_8685] % 32]
                                    require ext_code.size(address(_8557))
                                    call address(_8557).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8184, address(this.address), 128, mem[_8685], mem[_8685 + 196 len floor32(mem[_8685]) + 32]
                            else:
                                require idx + 1 < mem[192]
                                _8428 = mem[(32 * idx + 1) + 224]
                                require idx < mem[192]
                                _8684 = mem[(32 * idx) + 224]
                                _8924 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8924 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8924 + 36] = 0
                                mem[_8924 + 68] = _8184
                                mem[_8924 + 100] = address(_8428)
                                mem[_8924 + 132] = 128
                                mem[_8924 + 164] = mem[_8924]
                                s = 0
                                while s < mem[_8924]:
                                    mem[_8924 + s + 196] = mem[_8924 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8924] % 32:
                                    require ext_code.size(address(_8684))
                                    call address(_8684).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8184, address(_8428), 128, mem[_8924 + 164 len mem[_8924] + 32]
                                else:
                                    mem[floor32(mem[_8924]) + _8924 + 196] = mem[floor32(mem[_8924]) + _8924 + -(mem[_8924] % 32) + 228 len mem[_8924] % 32]
                                    require ext_code.size(address(_8684))
                                    call address(_8684).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8184, address(_8428), 128, mem[_8924], mem[_8924 + 196 len floor32(mem[_8924]) + 32]
                        else:
                            if idx >= mem[192] - 1:
                                require idx < mem[192]
                                _8559 = mem[(32 * idx) + 224]
                                _8687 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8687 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8687 + 36] = _8184
                                mem[_8687 + 68] = 0
                                mem[_8687 + 100] = this.address
                                mem[_8687 + 132] = 128
                                mem[_8687 + 164] = mem[_8687]
                                s = 0
                                while s < mem[_8687]:
                                    mem[_8687 + s + 196] = mem[_8687 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8687] % 32:
                                    require ext_code.size(address(_8559))
                                    call address(_8559).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8184, 0, address(this.address), 128, mem[_8687 + 164 len mem[_8687] + 32]
                                else:
                                    mem[floor32(mem[_8687]) + _8687 + 196] = mem[floor32(mem[_8687]) + _8687 + -(mem[_8687] % 32) + 228 len mem[_8687] % 32]
                                    require ext_code.size(address(_8559))
                                    call address(_8559).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8184, 0, address(this.address), 128, mem[_8687], mem[_8687 + 196 len floor32(mem[_8687]) + 32]
                            else:
                                require idx + 1 < mem[192]
                                _8430 = mem[(32 * idx + 1) + 224]
                                require idx < mem[192]
                                _8686 = mem[(32 * idx) + 224]
                                _8928 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8928 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8928 + 36] = _8184
                                mem[_8928 + 68] = 0
                                mem[_8928 + 100] = address(_8430)
                                mem[_8928 + 132] = 128
                                mem[_8928 + 164] = mem[_8928]
                                s = 0
                                while s < mem[_8928]:
                                    mem[_8928 + s + 196] = mem[_8928 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8928] % 32:
                                    require ext_code.size(address(_8686))
                                    call address(_8686).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8184, 0, address(_8430), 128, mem[_8928 + 164 len mem[_8928] + 32]
                                else:
                                    mem[floor32(mem[_8928]) + _8928 + 196] = mem[floor32(mem[_8928]) + _8928 + -(mem[_8928] % 32) + 228 len mem[_8928] % 32]
                                    require ext_code.size(address(_8686))
                                    call address(_8686).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8184, 0, address(_8430), 128, mem[_8928], mem[_8928 + 196 len floor32(mem[_8928]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        require idx + 1 < mem[256]
                        _8185 = mem[(32 * idx + 1) + 288]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                            if idx >= mem[192] - 1:
                                require idx < mem[192]
                                _8561 = mem[(32 * idx) + 224]
                                _8689 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8689 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8689 + 36] = 0
                                mem[_8689 + 68] = _8185
                                mem[_8689 + 100] = this.address
                                mem[_8689 + 132] = 128
                                mem[_8689 + 164] = mem[_8689]
                                s = 0
                                while s < mem[_8689]:
                                    mem[_8689 + s + 196] = mem[_8689 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8689] % 32:
                                    require ext_code.size(address(_8561))
                                    call address(_8561).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8185, address(this.address), 128, mem[_8689 + 164 len mem[_8689] + 32]
                                else:
                                    mem[floor32(mem[_8689]) + _8689 + 196] = mem[floor32(mem[_8689]) + _8689 + -(mem[_8689] % 32) + 228 len mem[_8689] % 32]
                                    require ext_code.size(address(_8561))
                                    call address(_8561).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8185, address(this.address), 128, mem[_8689], mem[_8689 + 196 len floor32(mem[_8689]) + 32]
                            else:
                                require idx + 1 < mem[192]
                                _8432 = mem[(32 * idx + 1) + 224]
                                require idx < mem[192]
                                _8688 = mem[(32 * idx) + 224]
                                _8932 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8932 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8932 + 36] = 0
                                mem[_8932 + 68] = _8185
                                mem[_8932 + 100] = address(_8432)
                                mem[_8932 + 132] = 128
                                mem[_8932 + 164] = mem[_8932]
                                s = 0
                                while s < mem[_8932]:
                                    mem[_8932 + s + 196] = mem[_8932 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8932] % 32:
                                    require ext_code.size(address(_8688))
                                    call address(_8688).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8185, address(_8432), 128, mem[_8932 + 164 len mem[_8932] + 32]
                                else:
                                    mem[floor32(mem[_8932]) + _8932 + 196] = mem[floor32(mem[_8932]) + _8932 + -(mem[_8932] % 32) + 228 len mem[_8932] % 32]
                                    require ext_code.size(address(_8688))
                                    call address(_8688).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8185, address(_8432), 128, mem[_8932], mem[_8932 + 196 len floor32(mem[_8932]) + 32]
                        else:
                            if idx >= mem[192] - 1:
                                require idx < mem[192]
                                _8563 = mem[(32 * idx) + 224]
                                _8691 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8691 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8691 + 36] = _8185
                                mem[_8691 + 68] = 0
                                mem[_8691 + 100] = this.address
                                mem[_8691 + 132] = 128
                                mem[_8691 + 164] = mem[_8691]
                                s = 0
                                while s < mem[_8691]:
                                    mem[_8691 + s + 196] = mem[_8691 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8691] % 32:
                                    require ext_code.size(address(_8563))
                                    call address(_8563).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8185, 0, address(this.address), 128, mem[_8691 + 164 len mem[_8691] + 32]
                                else:
                                    mem[floor32(mem[_8691]) + _8691 + 196] = mem[floor32(mem[_8691]) + _8691 + -(mem[_8691] % 32) + 228 len mem[_8691] % 32]
                                    require ext_code.size(address(_8563))
                                    call address(_8563).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8185, 0, address(this.address), 128, mem[_8691], mem[_8691 + 196 len floor32(mem[_8691]) + 32]
                            else:
                                require idx + 1 < mem[192]
                                _8434 = mem[(32 * idx + 1) + 224]
                                require idx < mem[192]
                                _8690 = mem[(32 * idx) + 224]
                                _8936 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8936 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8936 + 36] = _8185
                                mem[_8936 + 68] = 0
                                mem[_8936 + 100] = address(_8434)
                                mem[_8936 + 132] = 128
                                mem[_8936 + 164] = mem[_8936]
                                s = 0
                                while s < mem[_8936]:
                                    mem[_8936 + s + 196] = mem[_8936 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8936] % 32:
                                    require ext_code.size(address(_8690))
                                    call address(_8690).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8185, 0, address(_8434), 128, mem[_8936 + 164 len mem[_8936] + 32]
                                else:
                                    mem[floor32(mem[_8936]) + _8936 + 196] = mem[floor32(mem[_8936]) + _8936 + -(mem[_8936] % 32) + 228 len mem[_8936] % 32]
                                    require ext_code.size(address(_8690))
                                    call address(_8690).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8185, 0, address(_8434), 128, mem[_8936], mem[_8936 + 196 len floor32(mem[_8936]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                require return_data.size >= 32
                if not mem[_6115 + 32]:
                    revert with 0, 32, 36, 0x595472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45, Mask(224, 0, _3111)
                _7931 = mem[192]
                idx = 0
                while idx < _7931:
                    require idx < mem[96]
                    require idx + 1 < mem[96]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        require idx + 1 < mem[256]
                        _8186 = mem[(32 * idx + 1) + 288]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                            if idx >= mem[192] - 1:
                                require idx < mem[192]
                                _8565 = mem[(32 * idx) + 224]
                                _8693 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8693 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8693 + 36] = 0
                                mem[_8693 + 68] = _8186
                                mem[_8693 + 100] = this.address
                                mem[_8693 + 132] = 128
                                mem[_8693 + 164] = mem[_8693]
                                s = 0
                                while s < mem[_8693]:
                                    mem[_8693 + s + 196] = mem[_8693 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8693] % 32:
                                    require ext_code.size(address(_8565))
                                    call address(_8565).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8186, address(this.address), 128, mem[_8693 + 164 len mem[_8693] + 32]
                                else:
                                    mem[floor32(mem[_8693]) + _8693 + 196] = mem[floor32(mem[_8693]) + _8693 + -(mem[_8693] % 32) + 228 len mem[_8693] % 32]
                                    require ext_code.size(address(_8565))
                                    call address(_8565).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8186, address(this.address), 128, mem[_8693], mem[_8693 + 196 len floor32(mem[_8693]) + 32]
                            else:
                                require idx + 1 < mem[192]
                                _8436 = mem[(32 * idx + 1) + 224]
                                require idx < mem[192]
                                _8692 = mem[(32 * idx) + 224]
                                _8940 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8940 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8940 + 36] = 0
                                mem[_8940 + 68] = _8186
                                mem[_8940 + 100] = address(_8436)
                                mem[_8940 + 132] = 128
                                mem[_8940 + 164] = mem[_8940]
                                s = 0
                                while s < mem[_8940]:
                                    mem[_8940 + s + 196] = mem[_8940 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8940] % 32:
                                    require ext_code.size(address(_8692))
                                    call address(_8692).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8186, address(_8436), 128, mem[_8940 + 164 len mem[_8940] + 32]
                                else:
                                    mem[floor32(mem[_8940]) + _8940 + 196] = mem[floor32(mem[_8940]) + _8940 + -(mem[_8940] % 32) + 228 len mem[_8940] % 32]
                                    require ext_code.size(address(_8692))
                                    call address(_8692).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8186, address(_8436), 128, mem[_8940], mem[_8940 + 196 len floor32(mem[_8940]) + 32]
                        else:
                            if idx >= mem[192] - 1:
                                require idx < mem[192]
                                _8567 = mem[(32 * idx) + 224]
                                _8695 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8695 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8695 + 36] = _8186
                                mem[_8695 + 68] = 0
                                mem[_8695 + 100] = this.address
                                mem[_8695 + 132] = 128
                                mem[_8695 + 164] = mem[_8695]
                                s = 0
                                while s < mem[_8695]:
                                    mem[_8695 + s + 196] = mem[_8695 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8695] % 32:
                                    require ext_code.size(address(_8567))
                                    call address(_8567).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8186, 0, address(this.address), 128, mem[_8695 + 164 len mem[_8695] + 32]
                                else:
                                    mem[floor32(mem[_8695]) + _8695 + 196] = mem[floor32(mem[_8695]) + _8695 + -(mem[_8695] % 32) + 228 len mem[_8695] % 32]
                                    require ext_code.size(address(_8567))
                                    call address(_8567).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8186, 0, address(this.address), 128, mem[_8695], mem[_8695 + 196 len floor32(mem[_8695]) + 32]
                            else:
                                require idx + 1 < mem[192]
                                _8438 = mem[(32 * idx + 1) + 224]
                                require idx < mem[192]
                                _8694 = mem[(32 * idx) + 224]
                                _8944 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8944 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8944 + 36] = _8186
                                mem[_8944 + 68] = 0
                                mem[_8944 + 100] = address(_8438)
                                mem[_8944 + 132] = 128
                                mem[_8944 + 164] = mem[_8944]
                                s = 0
                                while s < mem[_8944]:
                                    mem[_8944 + s + 196] = mem[_8944 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8944] % 32:
                                    require ext_code.size(address(_8694))
                                    call address(_8694).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8186, 0, address(_8438), 128, mem[_8944 + 164 len mem[_8944] + 32]
                                else:
                                    mem[floor32(mem[_8944]) + _8944 + 196] = mem[floor32(mem[_8944]) + _8944 + -(mem[_8944] % 32) + 228 len mem[_8944] % 32]
                                    require ext_code.size(address(_8694))
                                    call address(_8694).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8186, 0, address(_8438), 128, mem[_8944], mem[_8944 + 196 len floor32(mem[_8944]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        require idx + 1 < mem[256]
                        _8187 = mem[(32 * idx + 1) + 288]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                            if idx >= mem[192] - 1:
                                require idx < mem[192]
                                _8569 = mem[(32 * idx) + 224]
                                _8697 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8697 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8697 + 36] = 0
                                mem[_8697 + 68] = _8187
                                mem[_8697 + 100] = this.address
                                mem[_8697 + 132] = 128
                                mem[_8697 + 164] = mem[_8697]
                                s = 0
                                while s < mem[_8697]:
                                    mem[_8697 + s + 196] = mem[_8697 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8697] % 32:
                                    require ext_code.size(address(_8569))
                                    call address(_8569).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8187, address(this.address), 128, mem[_8697 + 164 len mem[_8697] + 32]
                                else:
                                    mem[floor32(mem[_8697]) + _8697 + 196] = mem[floor32(mem[_8697]) + _8697 + -(mem[_8697] % 32) + 228 len mem[_8697] % 32]
                                    require ext_code.size(address(_8569))
                                    call address(_8569).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8187, address(this.address), 128, mem[_8697], mem[_8697 + 196 len floor32(mem[_8697]) + 32]
                            else:
                                require idx + 1 < mem[192]
                                _8440 = mem[(32 * idx + 1) + 224]
                                require idx < mem[192]
                                _8696 = mem[(32 * idx) + 224]
                                _8948 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8948 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8948 + 36] = 0
                                mem[_8948 + 68] = _8187
                                mem[_8948 + 100] = address(_8440)
                                mem[_8948 + 132] = 128
                                mem[_8948 + 164] = mem[_8948]
                                s = 0
                                while s < mem[_8948]:
                                    mem[_8948 + s + 196] = mem[_8948 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8948] % 32:
                                    require ext_code.size(address(_8696))
                                    call address(_8696).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8187, address(_8440), 128, mem[_8948 + 164 len mem[_8948] + 32]
                                else:
                                    mem[floor32(mem[_8948]) + _8948 + 196] = mem[floor32(mem[_8948]) + _8948 + -(mem[_8948] % 32) + 228 len mem[_8948] % 32]
                                    require ext_code.size(address(_8696))
                                    call address(_8696).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _8187, address(_8440), 128, mem[_8948], mem[_8948 + 196 len floor32(mem[_8948]) + 32]
                        else:
                            if idx >= mem[192] - 1:
                                require idx < mem[192]
                                _8571 = mem[(32 * idx) + 224]
                                _8699 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8699 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8699 + 36] = _8187
                                mem[_8699 + 68] = 0
                                mem[_8699 + 100] = this.address
                                mem[_8699 + 132] = 128
                                mem[_8699 + 164] = mem[_8699]
                                s = 0
                                while s < mem[_8699]:
                                    mem[_8699 + s + 196] = mem[_8699 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8699] % 32:
                                    require ext_code.size(address(_8571))
                                    call address(_8571).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8187, 0, address(this.address), 128, mem[_8699 + 164 len mem[_8699] + 32]
                                else:
                                    mem[floor32(mem[_8699]) + _8699 + 196] = mem[floor32(mem[_8699]) + _8699 + -(mem[_8699] % 32) + 228 len mem[_8699] % 32]
                                    require ext_code.size(address(_8571))
                                    call address(_8571).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8187, 0, address(this.address), 128, mem[_8699], mem[_8699 + 196 len floor32(mem[_8699]) + 32]
                            else:
                                require idx + 1 < mem[192]
                                _8442 = mem[(32 * idx + 1) + 224]
                                require idx < mem[192]
                                _8698 = mem[(32 * idx) + 224]
                                _8952 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_8952 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_8952 + 36] = _8187
                                mem[_8952 + 68] = 0
                                mem[_8952 + 100] = address(_8442)
                                mem[_8952 + 132] = 128
                                mem[_8952 + 164] = mem[_8952]
                                s = 0
                                while s < mem[_8952]:
                                    mem[_8952 + s + 196] = mem[_8952 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_8952] % 32:
                                    require ext_code.size(address(_8698))
                                    call address(_8698).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8187, 0, address(_8442), 128, mem[_8952 + 164 len mem[_8952] + 32]
                                else:
                                    mem[floor32(mem[_8952]) + _8952 + 196] = mem[floor32(mem[_8952]) + _8952 + -(mem[_8952] % 32) + 228 len mem[_8952] % 32]
                                    require ext_code.size(address(_8698))
                                    call address(_8698).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _8187, 0, address(_8442), 128, mem[_8952], mem[_8952 + 196 len floor32(mem[_8952]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
    return 1
}



}
