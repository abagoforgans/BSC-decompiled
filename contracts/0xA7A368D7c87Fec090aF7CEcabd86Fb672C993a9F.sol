contract main {




// =====================  Runtime code  =====================


address owner;
address chiTokenAddress;
mapping of uint8 stor2;

function chiToken() {
    return chiTokenAddress
}

function owner() {
    return owner
}

function sub_fe0d3145(?) {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
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

function mintGasToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(chiTokenAddress)
    call chiTokenAddress.mint(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
        mem[32] = 2
        stor2[mem[(32 * idx) + 140 len 20]] = 0
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
        mem[32] = 2
        stor2[mem[(32 * idx) + 140 len 20]] = 1
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

function sub_6935084e(?) payable {
    require calldata.size - 4 >= 224
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + (32 * arg6.length) + 36 <= calldata.size
    mem[96] = arg6.length
    mem[128 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    if arg7 < block.timestamp:
        revert with 0, 'EXPIRED'
    mem[0] = msg.sender
    mem[32] = 2
    if bool(stor2[address(msg.sender)]) != 1:
        revert with 0, 'No Soup You'
    if msg.value <= 0:
        require ext_code.size(arg5)
        staticcall arg5.factory() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg3), arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'Pool does not exist'
        mem[(32 * arg6.length) + 128] = 2
        mem[(32 * arg6.length) + 224] = 1
        mem[(32 * arg6.length) + 160] = arg3
        mem[(32 * arg6.length) + 192] = arg4
        mem[(32 * arg6.length) + 256] = address(ext_call.return_data[0])
        emit 0x146828f4: address(ext_call.return_data[0])
        mem[(32 * arg6.length) + 288] = 2
        mem[64] = (32 * arg6.length) + 384
        mem[(32 * arg6.length) + 320 len 64] = call.data[calldata.size len 64]
        mem[(32 * arg6.length) + 320] = arg1
        idx = 0
        while idx < 1:
            require idx < mem[(32 * arg6.length) + 128]
            _4127 = mem[(32 * idx) + (32 * arg6.length) + 160]
            require idx + 1 < mem[(32 * arg6.length) + 128]
            _4140 = mem[(32 * idx + 1) + (32 * arg6.length) + 160]
            if mem[(32 * idx) + (32 * arg6.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg6.length) + 172 len 20]:
                revert with 0, 32, 35, 0x7350616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
            if mem[(32 * idx) + (32 * arg6.length) + 172 len 20] < mem[(32 * idx + 1) + (32 * arg6.length) + 172 len 20]:
                if not mem[(32 * idx) + (32 * arg6.length) + 172 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                if mem[(32 * idx) + (32 * arg6.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg6.length) + 172 len 20]:
                    revert with 0, 32, 35, 0x7350616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                if mem[(32 * idx) + (32 * arg6.length) + 172 len 20] < mem[(32 * idx + 1) + (32 * arg6.length) + 172 len 20]:
                    if not mem[(32 * idx) + (32 * arg6.length) + 172 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    _4361 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx) + (32 * arg6.length) + 160])
                    mem[mem[64] + 52] = address(_4140)
                    _4362 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _4364 = sha3(mem[_4362 + 32 len mem[_4362]])
                    mem[_4361 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_4361 + 105] = address(ext_call.return_data[0])
                    mem[_4361 + 125] = _4364
                    mem[_4361 + 157] = 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66
                    mem[_4361 + 72] = 85
                    if address(_4127) == address(_4140):
                        revert with 0, 32, 35, 0x7350616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_4361 + 292 len 29]
                    if address(_4127) < address(_4140):
                        if not address(_4127):
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[_4361 + 221] = address(_4127)
                        mem[_4361 + 241] = address(_4140)
                        mem[_4361 + 189] = 40
                        mem[_4361 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_4361 + 294] = address(ext_call.return_data[0])
                        mem[_4361 + 314] = sha3(address(_4127), address(_4140))
                        mem[_4361 + 346] = 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66
                        mem[_4361 + 261] = 85
                        mem[64] = _4361 + 378
                        require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(_4127), address(_4140)), 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66)))
                        staticcall address(sha3(0, address(ext_call.return_data[0]), sha3(address(_4127), address(_4140)), 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66)).getReserves() with:
                                gas gas_remaining wei
                    else:
                        if not address(_4140):
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[_4361 + 221] = address(_4140)
                        mem[_4361 + 241] = address(_4127)
                        mem[_4361 + 189] = 40
                        mem[_4361 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_4361 + 294] = address(ext_call.return_data[0])
                        mem[_4361 + 314] = sha3(address(_4140), address(_4127))
                        mem[_4361 + 346] = 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66
                        mem[_4361 + 261] = 85
                        mem[64] = _4361 + 378
                        require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(_4140), address(_4127)), 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66)))
                        staticcall address(sha3(0, address(ext_call.return_data[0]), sha3(address(_4140), address(_4127)), 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66)).getReserves() with:
                                gas gas_remaining wei
                    mem[_4361 + 378 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * arg6.length) + 288]
                    if mem[(32 * idx) + (32 * arg6.length) + 320] <= 0:
                        revert with 0, 
                                    32,
                                    41,
                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[_4361 + 487 len 23]
                    if address(_4127) == address(_4127):
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_4361 + 484 len 26]
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_4361 + 484 len 26]
                        if 998 * mem[(32 * idx) + (32 * arg6.length) + 320] / 998 != mem[(32 * idx) + (32 * arg6.length) + 320]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[50 len 14]:
                            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320]) < 1000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                            require idx + 1 < mem[(32 * arg6.length) + 288]
                            mem[(32 * idx + 1) + (32 * arg6.length) + 320] = 0 / (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                        else:
                            require ext_call.return_data[50 len 14]
                            if 998 * mem[(32 * idx) + (32 * arg6.length) + 320] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 998 * mem[(32 * idx) + (32 * arg6.length) + 320]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320]) < 1000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                            require idx + 1 < mem[(32 * arg6.length) + 288]
                            mem[(32 * idx + 1) + (32 * arg6.length) + 320] = 998 * mem[(32 * idx) + (32 * arg6.length) + 320] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                    else:
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_4361 + 484 len 26]
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_4361 + 484 len 26]
                        if 998 * mem[(32 * idx) + (32 * arg6.length) + 320] / 998 != mem[(32 * idx) + (32 * arg6.length) + 320]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[18 len 14]:
                            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320]) < 1000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                            require idx + 1 < mem[(32 * arg6.length) + 288]
                            mem[(32 * idx + 1) + (32 * arg6.length) + 320] = 0 / (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                        else:
                            require ext_call.return_data[18 len 14]
                            if 998 * mem[(32 * idx) + (32 * arg6.length) + 320] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 998 * mem[(32 * idx) + (32 * arg6.length) + 320]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320]) < 1000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                            require idx + 1 < mem[(32 * arg6.length) + 288]
                            mem[(32 * idx + 1) + (32 * arg6.length) + 320] = 998 * mem[(32 * idx) + (32 * arg6.length) + 320] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                else:
                    if not mem[(32 * idx + 1) + (32 * arg6.length) + 172 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    _4369 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx + 1) + (32 * arg6.length) + 160])
                    mem[mem[64] + 52] = address(_4127)
                    _4370 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _4372 = sha3(mem[_4370 + 32 len mem[_4370]])
                    mem[_4369 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_4369 + 105] = address(ext_call.return_data[0])
                    mem[_4369 + 125] = _4372
                    mem[_4369 + 157] = 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66
                    mem[_4369 + 72] = 85
                    if address(_4127) == address(_4140):
                        revert with 0, 32, 35, 0x7350616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_4369 + 292 len 29]
                    if address(_4127) < address(_4140):
                        if not address(_4127):
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[_4369 + 221] = address(_4127)
                        mem[_4369 + 241] = address(_4140)
                        mem[_4369 + 189] = 40
                        mem[_4369 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_4369 + 294] = address(ext_call.return_data[0])
                        mem[_4369 + 314] = sha3(address(_4127), address(_4140))
                        mem[_4369 + 346] = 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66
                        mem[_4369 + 261] = 85
                        mem[64] = _4369 + 378
                        require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(_4127), address(_4140)), 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66)))
                        staticcall address(sha3(0, address(ext_call.return_data[0]), sha3(address(_4127), address(_4140)), 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66)).getReserves() with:
                                gas gas_remaining wei
                    else:
                        if not address(_4140):
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[_4369 + 221] = address(_4140)
                        mem[_4369 + 241] = address(_4127)
                        mem[_4369 + 189] = 40
                        mem[_4369 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_4369 + 294] = address(ext_call.return_data[0])
                        mem[_4369 + 314] = sha3(address(_4140), address(_4127))
                        mem[_4369 + 346] = 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66
                        mem[_4369 + 261] = 85
                        mem[64] = _4369 + 378
                        require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(_4140), address(_4127)), 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66)))
                        staticcall address(sha3(0, address(ext_call.return_data[0]), sha3(address(_4140), address(_4127)), 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66)).getReserves() with:
                                gas gas_remaining wei
                    mem[_4369 + 378 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * arg6.length) + 288]
                    if mem[(32 * idx) + (32 * arg6.length) + 320] <= 0:
                        revert with 0, 
                                    32,
                                    41,
                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[_4369 + 487 len 23]
                    if address(_4127) == address(_4127):
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_4369 + 484 len 26]
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_4369 + 484 len 26]
                        if 998 * mem[(32 * idx) + (32 * arg6.length) + 320] / 998 != mem[(32 * idx) + (32 * arg6.length) + 320]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[50 len 14]:
                            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320]) < 1000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                            require idx + 1 < mem[(32 * arg6.length) + 288]
                            mem[(32 * idx + 1) + (32 * arg6.length) + 320] = 0 / (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                        else:
                            require ext_call.return_data[50 len 14]
                            if 998 * mem[(32 * idx) + (32 * arg6.length) + 320] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 998 * mem[(32 * idx) + (32 * arg6.length) + 320]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320]) < 1000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                            require idx + 1 < mem[(32 * arg6.length) + 288]
                            mem[(32 * idx + 1) + (32 * arg6.length) + 320] = 998 * mem[(32 * idx) + (32 * arg6.length) + 320] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                    else:
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_4369 + 484 len 26]
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_4369 + 484 len 26]
                        if 998 * mem[(32 * idx) + (32 * arg6.length) + 320] / 998 != mem[(32 * idx) + (32 * arg6.length) + 320]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[18 len 14]:
                            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320]) < 1000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                            require idx + 1 < mem[(32 * arg6.length) + 288]
                            mem[(32 * idx + 1) + (32 * arg6.length) + 320] = 0 / (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                        else:
                            require ext_call.return_data[18 len 14]
                            if 998 * mem[(32 * idx) + (32 * arg6.length) + 320] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 998 * mem[(32 * idx) + (32 * arg6.length) + 320]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320]) < 1000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                            require idx + 1 < mem[(32 * arg6.length) + 288]
                            mem[(32 * idx + 1) + (32 * arg6.length) + 320] = 998 * mem[(32 * idx) + (32 * arg6.length) + 320] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
            else:
                if not mem[(32 * idx + 1) + (32 * arg6.length) + 172 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                if mem[(32 * idx) + (32 * arg6.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg6.length) + 172 len 20]:
                    revert with 0, 32, 35, 0x7350616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                if mem[(32 * idx) + (32 * arg6.length) + 172 len 20] < mem[(32 * idx + 1) + (32 * arg6.length) + 172 len 20]:
                    if not mem[(32 * idx) + (32 * arg6.length) + 172 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    _4377 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx) + (32 * arg6.length) + 160])
                    mem[mem[64] + 52] = address(_4140)
                    _4378 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _4380 = sha3(mem[_4378 + 32 len mem[_4378]])
                    mem[_4377 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_4377 + 105] = address(ext_call.return_data[0])
                    mem[_4377 + 125] = _4380
                    mem[_4377 + 157] = 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66
                    mem[_4377 + 72] = 85
                    if address(_4127) == address(_4140):
                        revert with 0, 32, 35, 0x7350616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_4377 + 292 len 29]
                    if address(_4127) < address(_4140):
                        if not address(_4127):
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[_4377 + 221] = address(_4127)
                        mem[_4377 + 241] = address(_4140)
                        mem[_4377 + 189] = 40
                        mem[_4377 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_4377 + 294] = address(ext_call.return_data[0])
                        mem[_4377 + 314] = sha3(address(_4127), address(_4140))
                        mem[_4377 + 346] = 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66
                        mem[_4377 + 261] = 85
                        mem[64] = _4377 + 378
                        require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(_4127), address(_4140)), 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66)))
                        staticcall address(sha3(0, address(ext_call.return_data[0]), sha3(address(_4127), address(_4140)), 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66)).getReserves() with:
                                gas gas_remaining wei
                    else:
                        if not address(_4140):
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[_4377 + 221] = address(_4140)
                        mem[_4377 + 241] = address(_4127)
                        mem[_4377 + 189] = 40
                        mem[_4377 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_4377 + 294] = address(ext_call.return_data[0])
                        mem[_4377 + 314] = sha3(address(_4140), address(_4127))
                        mem[_4377 + 346] = 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66
                        mem[_4377 + 261] = 85
                        mem[64] = _4377 + 378
                        require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(_4140), address(_4127)), 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66)))
                        staticcall address(sha3(0, address(ext_call.return_data[0]), sha3(address(_4140), address(_4127)), 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66)).getReserves() with:
                                gas gas_remaining wei
                    mem[_4377 + 378 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * arg6.length) + 288]
                    if mem[(32 * idx) + (32 * arg6.length) + 320] <= 0:
                        revert with 0, 
                                    32,
                                    41,
                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[_4377 + 487 len 23]
                    if address(_4127) == address(_4140):
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_4377 + 484 len 26]
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_4377 + 484 len 26]
                        if 998 * mem[(32 * idx) + (32 * arg6.length) + 320] / 998 != mem[(32 * idx) + (32 * arg6.length) + 320]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[50 len 14]:
                            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320]) < 1000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                            require idx + 1 < mem[(32 * arg6.length) + 288]
                            mem[(32 * idx + 1) + (32 * arg6.length) + 320] = 0 / (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                        else:
                            require ext_call.return_data[50 len 14]
                            if 998 * mem[(32 * idx) + (32 * arg6.length) + 320] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 998 * mem[(32 * idx) + (32 * arg6.length) + 320]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320]) < 1000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                            require idx + 1 < mem[(32 * arg6.length) + 288]
                            mem[(32 * idx + 1) + (32 * arg6.length) + 320] = 998 * mem[(32 * idx) + (32 * arg6.length) + 320] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                    else:
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_4377 + 484 len 26]
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_4377 + 484 len 26]
                        if 998 * mem[(32 * idx) + (32 * arg6.length) + 320] / 998 != mem[(32 * idx) + (32 * arg6.length) + 320]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[18 len 14]:
                            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320]) < 1000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                            require idx + 1 < mem[(32 * arg6.length) + 288]
                            mem[(32 * idx + 1) + (32 * arg6.length) + 320] = 0 / (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                        else:
                            require ext_call.return_data[18 len 14]
                            if 998 * mem[(32 * idx) + (32 * arg6.length) + 320] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 998 * mem[(32 * idx) + (32 * arg6.length) + 320]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320]) < 1000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                            require idx + 1 < mem[(32 * arg6.length) + 288]
                            mem[(32 * idx + 1) + (32 * arg6.length) + 320] = 998 * mem[(32 * idx) + (32 * arg6.length) + 320] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                else:
                    if not mem[(32 * idx + 1) + (32 * arg6.length) + 172 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    _4385 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx + 1) + (32 * arg6.length) + 160])
                    mem[mem[64] + 52] = address(_4127)
                    _4386 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _4388 = sha3(mem[_4386 + 32 len mem[_4386]])
                    mem[_4385 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_4385 + 105] = address(ext_call.return_data[0])
                    mem[_4385 + 125] = _4388
                    mem[_4385 + 157] = 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66
                    mem[_4385 + 72] = 85
                    if address(_4127) == address(_4140):
                        revert with 0, 32, 35, 0x7350616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_4385 + 292 len 29]
                    if address(_4127) < address(_4140):
                        if not address(_4127):
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[_4385 + 221] = address(_4127)
                        mem[_4385 + 241] = address(_4140)
                        mem[_4385 + 189] = 40
                        mem[_4385 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_4385 + 294] = address(ext_call.return_data[0])
                        mem[_4385 + 314] = sha3(address(_4127), address(_4140))
                        mem[_4385 + 346] = 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66
                        mem[_4385 + 261] = 85
                        mem[64] = _4385 + 378
                        require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(_4127), address(_4140)), 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66)))
                        staticcall address(sha3(0, address(ext_call.return_data[0]), sha3(address(_4127), address(_4140)), 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66)).getReserves() with:
                                gas gas_remaining wei
                    else:
                        if not address(_4140):
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[_4385 + 221] = address(_4140)
                        mem[_4385 + 241] = address(_4127)
                        mem[_4385 + 189] = 40
                        mem[_4385 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_4385 + 294] = address(ext_call.return_data[0])
                        mem[_4385 + 314] = sha3(address(_4140), address(_4127))
                        mem[_4385 + 346] = 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66
                        mem[_4385 + 261] = 85
                        mem[64] = _4385 + 378
                        require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(_4140), address(_4127)), 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66)))
                        staticcall address(sha3(0, address(ext_call.return_data[0]), sha3(address(_4140), address(_4127)), 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66)).getReserves() with:
                                gas gas_remaining wei
                    mem[_4385 + 378 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * arg6.length) + 288]
                    if mem[(32 * idx) + (32 * arg6.length) + 320] <= 0:
                        revert with 0, 
                                    32,
                                    41,
                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[_4385 + 487 len 23]
                    if address(_4127) == address(_4140):
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_4385 + 484 len 26]
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_4385 + 484 len 26]
                        if 998 * mem[(32 * idx) + (32 * arg6.length) + 320] / 998 != mem[(32 * idx) + (32 * arg6.length) + 320]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[50 len 14]:
                            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320]) < 1000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                            require idx + 1 < mem[(32 * arg6.length) + 288]
                            mem[(32 * idx + 1) + (32 * arg6.length) + 320] = 0 / (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                        else:
                            require ext_call.return_data[50 len 14]
                            if 998 * mem[(32 * idx) + (32 * arg6.length) + 320] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 998 * mem[(32 * idx) + (32 * arg6.length) + 320]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320]) < 1000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                            require idx + 1 < mem[(32 * arg6.length) + 288]
                            mem[(32 * idx + 1) + (32 * arg6.length) + 320] = 998 * mem[(32 * idx) + (32 * arg6.length) + 320] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                    else:
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_4385 + 484 len 26]
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_4385 + 484 len 26]
                        if 998 * mem[(32 * idx) + (32 * arg6.length) + 320] / 998 != mem[(32 * idx) + (32 * arg6.length) + 320]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[18 len 14]:
                            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320]) < 1000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                            require idx + 1 < mem[(32 * arg6.length) + 288]
                            mem[(32 * idx + 1) + (32 * arg6.length) + 320] = 0 / (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                        else:
                            require ext_call.return_data[18 len 14]
                            if 998 * mem[(32 * idx) + (32 * arg6.length) + 320] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 998 * mem[(32 * idx) + (32 * arg6.length) + 320]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320]) < 1000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                            require idx + 1 < mem[(32 * arg6.length) + 288]
                            mem[(32 * idx + 1) + (32 * arg6.length) + 320] = 998 * mem[(32 * idx) + (32 * arg6.length) + 320] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
            idx = idx + 1
            continue 
        require mem[(32 * arg6.length) + 288] - 1 < mem[(32 * arg6.length) + 288]
        if mem[(32 * mem[(32 * arg6.length) + 288] - 1) + (32 * arg6.length) + 320] >= arg2:
            require 0 < mem[(32 * arg6.length) + 288]
            _4150 = mem[(32 * arg6.length) + 320]
            mem[mem[64] + 4] = this.address
            require ext_code.size(arg3)
            call arg3.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(this.address), _4150
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _4192 = mem[64]
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = address(ext_call.return_data[0])
            mem[mem[64] + 100] = _4150
            _4193 = mem[64]
            mem[mem[64]] = 100
            mem[64] = mem[64] + 132
            mem[_4193 + 32 len 4] = unknown_0x23b872dd(?????)
            _4196 = mem[_4193]
            mem[_4192 + 132 len floor32(mem[_4193])] = mem[_4193 + 32 len floor32(mem[_4193])]
            mem[_4192 + floor32(mem[_4193]) + -(mem[_4193] % 32) + 164 len mem[_4193] % 32] = mem[_4193 + -(mem[_4193] % 32) + floor32(mem[_4193]) + 64 len mem[_4193] % 32]
            call arg3.mem[_4192 + 132 len 4] with:
                 gas gas_remaining wei
                args mem[_4192 + 136 len _4196 - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 32, 36, 0x595472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45, mem[_4192 + 236 len 28]
                if not mem[96]:
                    _9993 = mem[(32 * arg6.length) + 224]
                    idx = 0
                    while idx < _9993:
                        require idx < mem[(32 * arg6.length) + 128]
                        require idx + 1 < mem[(32 * arg6.length) + 128]
                        if mem[(32 * idx) + (32 * arg6.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg6.length) + 172 len 20]:
                            revert with 0, 32, 35, 0x7350616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                        if mem[(32 * idx) + (32 * arg6.length) + 172 len 20] < mem[(32 * idx + 1) + (32 * arg6.length) + 172 len 20]:
                            if not mem[(32 * idx) + (32 * arg6.length) + 172 len 20]:
                                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                            require idx + 1 < mem[(32 * arg6.length) + 288]
                            _10237 = mem[(32 * idx + 1) + (32 * arg6.length) + 320]
                            if mem[(32 * idx) + (32 * arg6.length) + 172 len 20] == mem[(32 * idx) + (32 * arg6.length) + 172 len 20]:
                                if idx >= mem[(32 * arg6.length) + 224] - 1:
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10550 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _10678 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10678 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10678 + 36] = 0
                                    mem[_10678 + 68] = _10237
                                    mem[_10678 + 100] = this.address
                                    mem[_10678 + 132] = 128
                                    mem[_10678 + 164] = mem[_10678]
                                    s = 0
                                    while s < mem[_10678]:
                                        mem[_10678 + s + 196] = mem[_10678 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10678] % 32:
                                        require ext_code.size(address(_10550))
                                        call address(_10550).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10237, address(this.address), 128, mem[_10678 + 164 len mem[_10678] + 32]
                                    else:
                                        mem[floor32(mem[_10678]) + _10678 + 196] = mem[floor32(mem[_10678]) + _10678 + -(mem[_10678] % 32) + 228 len mem[_10678] % 32]
                                        require ext_code.size(address(_10550))
                                        call address(_10550).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10237, address(this.address), 128, mem[_10678], mem[_10678 + 196 len floor32(mem[_10678]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * arg6.length) + 224]
                                    _10421 = mem[(32 * idx + 1) + (32 * arg6.length) + 256]
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10677 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _10837 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10837 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10837 + 36] = 0
                                    mem[_10837 + 68] = _10237
                                    mem[_10837 + 100] = address(_10421)
                                    mem[_10837 + 132] = 128
                                    mem[_10837 + 164] = mem[_10837]
                                    s = 0
                                    while s < mem[_10837]:
                                        mem[_10837 + s + 196] = mem[_10837 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10837] % 32:
                                        require ext_code.size(address(_10677))
                                        call address(_10677).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10237, address(_10421), 128, mem[_10837 + 164 len mem[_10837] + 32]
                                    else:
                                        mem[floor32(mem[_10837]) + _10837 + 196] = mem[floor32(mem[_10837]) + _10837 + -(mem[_10837] % 32) + 228 len mem[_10837] % 32]
                                        require ext_code.size(address(_10677))
                                        call address(_10677).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10237, address(_10421), 128, mem[_10837], mem[_10837 + 196 len floor32(mem[_10837]) + 32]
                            else:
                                if idx >= mem[(32 * arg6.length) + 224] - 1:
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10552 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _10680 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10680 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10680 + 36] = _10237
                                    mem[_10680 + 68] = 0
                                    mem[_10680 + 100] = this.address
                                    mem[_10680 + 132] = 128
                                    mem[_10680 + 164] = mem[_10680]
                                    s = 0
                                    while s < mem[_10680]:
                                        mem[_10680 + s + 196] = mem[_10680 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10680] % 32:
                                        require ext_code.size(address(_10552))
                                        call address(_10552).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10237, 0, address(this.address), 128, mem[_10680 + 164 len mem[_10680] + 32]
                                    else:
                                        mem[floor32(mem[_10680]) + _10680 + 196] = mem[floor32(mem[_10680]) + _10680 + -(mem[_10680] % 32) + 228 len mem[_10680] % 32]
                                        require ext_code.size(address(_10552))
                                        call address(_10552).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10237, 0, address(this.address), 128, mem[_10680], mem[_10680 + 196 len floor32(mem[_10680]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * arg6.length) + 224]
                                    _10423 = mem[(32 * idx + 1) + (32 * arg6.length) + 256]
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10679 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _10841 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10841 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10841 + 36] = _10237
                                    mem[_10841 + 68] = 0
                                    mem[_10841 + 100] = address(_10423)
                                    mem[_10841 + 132] = 128
                                    mem[_10841 + 164] = mem[_10841]
                                    s = 0
                                    while s < mem[_10841]:
                                        mem[_10841 + s + 196] = mem[_10841 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10841] % 32:
                                        require ext_code.size(address(_10679))
                                        call address(_10679).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10237, 0, address(_10423), 128, mem[_10841 + 164 len mem[_10841] + 32]
                                    else:
                                        mem[floor32(mem[_10841]) + _10841 + 196] = mem[floor32(mem[_10841]) + _10841 + -(mem[_10841] % 32) + 228 len mem[_10841] % 32]
                                        require ext_code.size(address(_10679))
                                        call address(_10679).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10237, 0, address(_10423), 128, mem[_10841], mem[_10841 + 196 len floor32(mem[_10841]) + 32]
                        else:
                            if not mem[(32 * idx + 1) + (32 * arg6.length) + 172 len 20]:
                                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                            require idx + 1 < mem[(32 * arg6.length) + 288]
                            _10238 = mem[(32 * idx + 1) + (32 * arg6.length) + 320]
                            if mem[(32 * idx) + (32 * arg6.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg6.length) + 172 len 20]:
                                if idx >= mem[(32 * arg6.length) + 224] - 1:
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10554 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _10682 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10682 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10682 + 36] = 0
                                    mem[_10682 + 68] = _10238
                                    mem[_10682 + 100] = this.address
                                    mem[_10682 + 132] = 128
                                    mem[_10682 + 164] = mem[_10682]
                                    s = 0
                                    while s < mem[_10682]:
                                        mem[_10682 + s + 196] = mem[_10682 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10682] % 32:
                                        require ext_code.size(address(_10554))
                                        call address(_10554).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10238, address(this.address), 128, mem[_10682 + 164 len mem[_10682] + 32]
                                    else:
                                        mem[floor32(mem[_10682]) + _10682 + 196] = mem[floor32(mem[_10682]) + _10682 + -(mem[_10682] % 32) + 228 len mem[_10682] % 32]
                                        require ext_code.size(address(_10554))
                                        call address(_10554).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10238, address(this.address), 128, mem[_10682], mem[_10682 + 196 len floor32(mem[_10682]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * arg6.length) + 224]
                                    _10425 = mem[(32 * idx + 1) + (32 * arg6.length) + 256]
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10681 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _10845 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10845 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10845 + 36] = 0
                                    mem[_10845 + 68] = _10238
                                    mem[_10845 + 100] = address(_10425)
                                    mem[_10845 + 132] = 128
                                    mem[_10845 + 164] = mem[_10845]
                                    s = 0
                                    while s < mem[_10845]:
                                        mem[_10845 + s + 196] = mem[_10845 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10845] % 32:
                                        require ext_code.size(address(_10681))
                                        call address(_10681).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10238, address(_10425), 128, mem[_10845 + 164 len mem[_10845] + 32]
                                    else:
                                        mem[floor32(mem[_10845]) + _10845 + 196] = mem[floor32(mem[_10845]) + _10845 + -(mem[_10845] % 32) + 228 len mem[_10845] % 32]
                                        require ext_code.size(address(_10681))
                                        call address(_10681).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10238, address(_10425), 128, mem[_10845], mem[_10845 + 196 len floor32(mem[_10845]) + 32]
                            else:
                                if idx >= mem[(32 * arg6.length) + 224] - 1:
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10556 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _10684 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10684 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10684 + 36] = _10238
                                    mem[_10684 + 68] = 0
                                    mem[_10684 + 100] = this.address
                                    mem[_10684 + 132] = 128
                                    mem[_10684 + 164] = mem[_10684]
                                    s = 0
                                    while s < mem[_10684]:
                                        mem[_10684 + s + 196] = mem[_10684 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10684] % 32:
                                        require ext_code.size(address(_10556))
                                        call address(_10556).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10238, 0, address(this.address), 128, mem[_10684 + 164 len mem[_10684] + 32]
                                    else:
                                        mem[floor32(mem[_10684]) + _10684 + 196] = mem[floor32(mem[_10684]) + _10684 + -(mem[_10684] % 32) + 228 len mem[_10684] % 32]
                                        require ext_code.size(address(_10556))
                                        call address(_10556).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10238, 0, address(this.address), 128, mem[_10684], mem[_10684 + 196 len floor32(mem[_10684]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * arg6.length) + 224]
                                    _10427 = mem[(32 * idx + 1) + (32 * arg6.length) + 256]
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10683 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _10849 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10849 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10849 + 36] = _10238
                                    mem[_10849 + 68] = 0
                                    mem[_10849 + 100] = address(_10427)
                                    mem[_10849 + 132] = 128
                                    mem[_10849 + 164] = mem[_10849]
                                    s = 0
                                    while s < mem[_10849]:
                                        mem[_10849 + s + 196] = mem[_10849 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10849] % 32:
                                        require ext_code.size(address(_10683))
                                        call address(_10683).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10238, 0, address(_10427), 128, mem[_10849 + 164 len mem[_10849] + 32]
                                    else:
                                        mem[floor32(mem[_10849]) + _10849 + 196] = mem[floor32(mem[_10849]) + _10849 + -(mem[_10849] % 32) + 228 len mem[_10849] % 32]
                                        require ext_code.size(address(_10683))
                                        call address(_10683).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10238, 0, address(_10427), 128, mem[_10849], mem[_10849 + 196 len floor32(mem[_10849]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                else:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 32, 36, 0x595472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45, mem[_4192 + 236 len 28]
                    _9994 = mem[(32 * arg6.length) + 224]
                    idx = 0
                    while idx < _9994:
                        require idx < mem[(32 * arg6.length) + 128]
                        require idx + 1 < mem[(32 * arg6.length) + 128]
                        if mem[(32 * idx) + (32 * arg6.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg6.length) + 172 len 20]:
                            revert with 0, 32, 35, 0x7350616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                        if mem[(32 * idx) + (32 * arg6.length) + 172 len 20] < mem[(32 * idx + 1) + (32 * arg6.length) + 172 len 20]:
                            if not mem[(32 * idx) + (32 * arg6.length) + 172 len 20]:
                                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                            require idx + 1 < mem[(32 * arg6.length) + 288]
                            _10239 = mem[(32 * idx + 1) + (32 * arg6.length) + 320]
                            if mem[(32 * idx) + (32 * arg6.length) + 172 len 20] == mem[(32 * idx) + (32 * arg6.length) + 172 len 20]:
                                if idx >= mem[(32 * arg6.length) + 224] - 1:
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10558 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _10686 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10686 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10686 + 36] = 0
                                    mem[_10686 + 68] = _10239
                                    mem[_10686 + 100] = this.address
                                    mem[_10686 + 132] = 128
                                    mem[_10686 + 164] = mem[_10686]
                                    s = 0
                                    while s < mem[_10686]:
                                        mem[_10686 + s + 196] = mem[_10686 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10686] % 32:
                                        require ext_code.size(address(_10558))
                                        call address(_10558).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10239, address(this.address), 128, mem[_10686 + 164 len mem[_10686] + 32]
                                    else:
                                        mem[floor32(mem[_10686]) + _10686 + 196] = mem[floor32(mem[_10686]) + _10686 + -(mem[_10686] % 32) + 228 len mem[_10686] % 32]
                                        require ext_code.size(address(_10558))
                                        call address(_10558).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10239, address(this.address), 128, mem[_10686], mem[_10686 + 196 len floor32(mem[_10686]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * arg6.length) + 224]
                                    _10429 = mem[(32 * idx + 1) + (32 * arg6.length) + 256]
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10685 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _10853 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10853 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10853 + 36] = 0
                                    mem[_10853 + 68] = _10239
                                    mem[_10853 + 100] = address(_10429)
                                    mem[_10853 + 132] = 128
                                    mem[_10853 + 164] = mem[_10853]
                                    s = 0
                                    while s < mem[_10853]:
                                        mem[_10853 + s + 196] = mem[_10853 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10853] % 32:
                                        require ext_code.size(address(_10685))
                                        call address(_10685).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10239, address(_10429), 128, mem[_10853 + 164 len mem[_10853] + 32]
                                    else:
                                        mem[floor32(mem[_10853]) + _10853 + 196] = mem[floor32(mem[_10853]) + _10853 + -(mem[_10853] % 32) + 228 len mem[_10853] % 32]
                                        require ext_code.size(address(_10685))
                                        call address(_10685).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10239, address(_10429), 128, mem[_10853], mem[_10853 + 196 len floor32(mem[_10853]) + 32]
                            else:
                                if idx >= mem[(32 * arg6.length) + 224] - 1:
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10560 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _10688 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10688 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10688 + 36] = _10239
                                    mem[_10688 + 68] = 0
                                    mem[_10688 + 100] = this.address
                                    mem[_10688 + 132] = 128
                                    mem[_10688 + 164] = mem[_10688]
                                    s = 0
                                    while s < mem[_10688]:
                                        mem[_10688 + s + 196] = mem[_10688 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10688] % 32:
                                        require ext_code.size(address(_10560))
                                        call address(_10560).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10239, 0, address(this.address), 128, mem[_10688 + 164 len mem[_10688] + 32]
                                    else:
                                        mem[floor32(mem[_10688]) + _10688 + 196] = mem[floor32(mem[_10688]) + _10688 + -(mem[_10688] % 32) + 228 len mem[_10688] % 32]
                                        require ext_code.size(address(_10560))
                                        call address(_10560).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10239, 0, address(this.address), 128, mem[_10688], mem[_10688 + 196 len floor32(mem[_10688]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * arg6.length) + 224]
                                    _10431 = mem[(32 * idx + 1) + (32 * arg6.length) + 256]
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10687 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _10857 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10857 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10857 + 36] = _10239
                                    mem[_10857 + 68] = 0
                                    mem[_10857 + 100] = address(_10431)
                                    mem[_10857 + 132] = 128
                                    mem[_10857 + 164] = mem[_10857]
                                    s = 0
                                    while s < mem[_10857]:
                                        mem[_10857 + s + 196] = mem[_10857 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10857] % 32:
                                        require ext_code.size(address(_10687))
                                        call address(_10687).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10239, 0, address(_10431), 128, mem[_10857 + 164 len mem[_10857] + 32]
                                    else:
                                        mem[floor32(mem[_10857]) + _10857 + 196] = mem[floor32(mem[_10857]) + _10857 + -(mem[_10857] % 32) + 228 len mem[_10857] % 32]
                                        require ext_code.size(address(_10687))
                                        call address(_10687).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10239, 0, address(_10431), 128, mem[_10857], mem[_10857 + 196 len floor32(mem[_10857]) + 32]
                        else:
                            if not mem[(32 * idx + 1) + (32 * arg6.length) + 172 len 20]:
                                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                            require idx + 1 < mem[(32 * arg6.length) + 288]
                            _10240 = mem[(32 * idx + 1) + (32 * arg6.length) + 320]
                            if mem[(32 * idx) + (32 * arg6.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg6.length) + 172 len 20]:
                                if idx >= mem[(32 * arg6.length) + 224] - 1:
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10562 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _10690 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10690 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10690 + 36] = 0
                                    mem[_10690 + 68] = _10240
                                    mem[_10690 + 100] = this.address
                                    mem[_10690 + 132] = 128
                                    mem[_10690 + 164] = mem[_10690]
                                    s = 0
                                    while s < mem[_10690]:
                                        mem[_10690 + s + 196] = mem[_10690 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10690] % 32:
                                        require ext_code.size(address(_10562))
                                        call address(_10562).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10240, address(this.address), 128, mem[_10690 + 164 len mem[_10690] + 32]
                                    else:
                                        mem[floor32(mem[_10690]) + _10690 + 196] = mem[floor32(mem[_10690]) + _10690 + -(mem[_10690] % 32) + 228 len mem[_10690] % 32]
                                        require ext_code.size(address(_10562))
                                        call address(_10562).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10240, address(this.address), 128, mem[_10690], mem[_10690 + 196 len floor32(mem[_10690]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * arg6.length) + 224]
                                    _10433 = mem[(32 * idx + 1) + (32 * arg6.length) + 256]
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10689 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _10861 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10861 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10861 + 36] = 0
                                    mem[_10861 + 68] = _10240
                                    mem[_10861 + 100] = address(_10433)
                                    mem[_10861 + 132] = 128
                                    mem[_10861 + 164] = mem[_10861]
                                    s = 0
                                    while s < mem[_10861]:
                                        mem[_10861 + s + 196] = mem[_10861 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10861] % 32:
                                        require ext_code.size(address(_10689))
                                        call address(_10689).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10240, address(_10433), 128, mem[_10861 + 164 len mem[_10861] + 32]
                                    else:
                                        mem[floor32(mem[_10861]) + _10861 + 196] = mem[floor32(mem[_10861]) + _10861 + -(mem[_10861] % 32) + 228 len mem[_10861] % 32]
                                        require ext_code.size(address(_10689))
                                        call address(_10689).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10240, address(_10433), 128, mem[_10861], mem[_10861 + 196 len floor32(mem[_10861]) + 32]
                            else:
                                if idx >= mem[(32 * arg6.length) + 224] - 1:
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10564 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _10692 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10692 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10692 + 36] = _10240
                                    mem[_10692 + 68] = 0
                                    mem[_10692 + 100] = this.address
                                    mem[_10692 + 132] = 128
                                    mem[_10692 + 164] = mem[_10692]
                                    s = 0
                                    while s < mem[_10692]:
                                        mem[_10692 + s + 196] = mem[_10692 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10692] % 32:
                                        require ext_code.size(address(_10564))
                                        call address(_10564).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10240, 0, address(this.address), 128, mem[_10692 + 164 len mem[_10692] + 32]
                                    else:
                                        mem[floor32(mem[_10692]) + _10692 + 196] = mem[floor32(mem[_10692]) + _10692 + -(mem[_10692] % 32) + 228 len mem[_10692] % 32]
                                        require ext_code.size(address(_10564))
                                        call address(_10564).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10240, 0, address(this.address), 128, mem[_10692], mem[_10692 + 196 len floor32(mem[_10692]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * arg6.length) + 224]
                                    _10435 = mem[(32 * idx + 1) + (32 * arg6.length) + 256]
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10691 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _10865 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10865 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10865 + 36] = _10240
                                    mem[_10865 + 68] = 0
                                    mem[_10865 + 100] = address(_10435)
                                    mem[_10865 + 132] = 128
                                    mem[_10865 + 164] = mem[_10865]
                                    s = 0
                                    while s < mem[_10865]:
                                        mem[_10865 + s + 196] = mem[_10865 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10865] % 32:
                                        require ext_code.size(address(_10691))
                                        call address(_10691).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10240, 0, address(_10435), 128, mem[_10865 + 164 len mem[_10865] + 32]
                                    else:
                                        mem[floor32(mem[_10865]) + _10865 + 196] = mem[floor32(mem[_10865]) + _10865 + -(mem[_10865] % 32) + 228 len mem[_10865] % 32]
                                        require ext_code.size(address(_10691))
                                        call address(_10691).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10240, 0, address(_10435), 128, mem[_10865], mem[_10865 + 196 len floor32(mem[_10865]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
            else:
                mem[64] = _4192 + ceil32(return_data.size) + 133
                mem[_4192 + 132] = return_data.size
                mem[_4192 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                32,
                                36,
                                0x595472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[_4192 + ceil32(return_data.size) + 237 len 28]
                if not return_data.size:
                    _9995 = mem[(32 * arg6.length) + 224]
                    idx = 0
                    while idx < _9995:
                        require idx < mem[(32 * arg6.length) + 128]
                        require idx + 1 < mem[(32 * arg6.length) + 128]
                        if mem[(32 * idx) + (32 * arg6.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg6.length) + 172 len 20]:
                            revert with 0, 32, 35, 0x7350616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                        if mem[(32 * idx) + (32 * arg6.length) + 172 len 20] < mem[(32 * idx + 1) + (32 * arg6.length) + 172 len 20]:
                            if not mem[(32 * idx) + (32 * arg6.length) + 172 len 20]:
                                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                            require idx + 1 < mem[(32 * arg6.length) + 288]
                            _10241 = mem[(32 * idx + 1) + (32 * arg6.length) + 320]
                            if mem[(32 * idx) + (32 * arg6.length) + 172 len 20] == mem[(32 * idx) + (32 * arg6.length) + 172 len 20]:
                                if idx >= mem[(32 * arg6.length) + 224] - 1:
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10566 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _10694 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10694 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10694 + 36] = 0
                                    mem[_10694 + 68] = _10241
                                    mem[_10694 + 100] = this.address
                                    mem[_10694 + 132] = 128
                                    mem[_10694 + 164] = mem[_10694]
                                    s = 0
                                    while s < mem[_10694]:
                                        mem[_10694 + s + 196] = mem[_10694 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10694] % 32:
                                        require ext_code.size(address(_10566))
                                        call address(_10566).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10241, address(this.address), 128, mem[_10694 + 164 len mem[_10694] + 32]
                                    else:
                                        mem[floor32(mem[_10694]) + _10694 + 196] = mem[floor32(mem[_10694]) + _10694 + -(mem[_10694] % 32) + 228 len mem[_10694] % 32]
                                        require ext_code.size(address(_10566))
                                        call address(_10566).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10241, address(this.address), 128, mem[_10694], mem[_10694 + 196 len floor32(mem[_10694]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * arg6.length) + 224]
                                    _10437 = mem[(32 * idx + 1) + (32 * arg6.length) + 256]
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10693 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _10869 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10869 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10869 + 36] = 0
                                    mem[_10869 + 68] = _10241
                                    mem[_10869 + 100] = address(_10437)
                                    mem[_10869 + 132] = 128
                                    mem[_10869 + 164] = mem[_10869]
                                    s = 0
                                    while s < mem[_10869]:
                                        mem[_10869 + s + 196] = mem[_10869 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10869] % 32:
                                        require ext_code.size(address(_10693))
                                        call address(_10693).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10241, address(_10437), 128, mem[_10869 + 164 len mem[_10869] + 32]
                                    else:
                                        mem[floor32(mem[_10869]) + _10869 + 196] = mem[floor32(mem[_10869]) + _10869 + -(mem[_10869] % 32) + 228 len mem[_10869] % 32]
                                        require ext_code.size(address(_10693))
                                        call address(_10693).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10241, address(_10437), 128, mem[_10869], mem[_10869 + 196 len floor32(mem[_10869]) + 32]
                            else:
                                if idx >= mem[(32 * arg6.length) + 224] - 1:
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10568 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _10696 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10696 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10696 + 36] = _10241
                                    mem[_10696 + 68] = 0
                                    mem[_10696 + 100] = this.address
                                    mem[_10696 + 132] = 128
                                    mem[_10696 + 164] = mem[_10696]
                                    s = 0
                                    while s < mem[_10696]:
                                        mem[_10696 + s + 196] = mem[_10696 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10696] % 32:
                                        require ext_code.size(address(_10568))
                                        call address(_10568).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10241, 0, address(this.address), 128, mem[_10696 + 164 len mem[_10696] + 32]
                                    else:
                                        mem[floor32(mem[_10696]) + _10696 + 196] = mem[floor32(mem[_10696]) + _10696 + -(mem[_10696] % 32) + 228 len mem[_10696] % 32]
                                        require ext_code.size(address(_10568))
                                        call address(_10568).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10241, 0, address(this.address), 128, mem[_10696], mem[_10696 + 196 len floor32(mem[_10696]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * arg6.length) + 224]
                                    _10439 = mem[(32 * idx + 1) + (32 * arg6.length) + 256]
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10695 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _10873 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10873 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10873 + 36] = _10241
                                    mem[_10873 + 68] = 0
                                    mem[_10873 + 100] = address(_10439)
                                    mem[_10873 + 132] = 128
                                    mem[_10873 + 164] = mem[_10873]
                                    s = 0
                                    while s < mem[_10873]:
                                        mem[_10873 + s + 196] = mem[_10873 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10873] % 32:
                                        require ext_code.size(address(_10695))
                                        call address(_10695).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10241, 0, address(_10439), 128, mem[_10873 + 164 len mem[_10873] + 32]
                                    else:
                                        mem[floor32(mem[_10873]) + _10873 + 196] = mem[floor32(mem[_10873]) + _10873 + -(mem[_10873] % 32) + 228 len mem[_10873] % 32]
                                        require ext_code.size(address(_10695))
                                        call address(_10695).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10241, 0, address(_10439), 128, mem[_10873], mem[_10873 + 196 len floor32(mem[_10873]) + 32]
                        else:
                            if not mem[(32 * idx + 1) + (32 * arg6.length) + 172 len 20]:
                                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                            require idx + 1 < mem[(32 * arg6.length) + 288]
                            _10242 = mem[(32 * idx + 1) + (32 * arg6.length) + 320]
                            if mem[(32 * idx) + (32 * arg6.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg6.length) + 172 len 20]:
                                if idx >= mem[(32 * arg6.length) + 224] - 1:
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10570 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _10698 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10698 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10698 + 36] = 0
                                    mem[_10698 + 68] = _10242
                                    mem[_10698 + 100] = this.address
                                    mem[_10698 + 132] = 128
                                    mem[_10698 + 164] = mem[_10698]
                                    s = 0
                                    while s < mem[_10698]:
                                        mem[_10698 + s + 196] = mem[_10698 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10698] % 32:
                                        require ext_code.size(address(_10570))
                                        call address(_10570).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10242, address(this.address), 128, mem[_10698 + 164 len mem[_10698] + 32]
                                    else:
                                        mem[floor32(mem[_10698]) + _10698 + 196] = mem[floor32(mem[_10698]) + _10698 + -(mem[_10698] % 32) + 228 len mem[_10698] % 32]
                                        require ext_code.size(address(_10570))
                                        call address(_10570).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10242, address(this.address), 128, mem[_10698], mem[_10698 + 196 len floor32(mem[_10698]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * arg6.length) + 224]
                                    _10441 = mem[(32 * idx + 1) + (32 * arg6.length) + 256]
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10697 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _10877 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10877 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10877 + 36] = 0
                                    mem[_10877 + 68] = _10242
                                    mem[_10877 + 100] = address(_10441)
                                    mem[_10877 + 132] = 128
                                    mem[_10877 + 164] = mem[_10877]
                                    s = 0
                                    while s < mem[_10877]:
                                        mem[_10877 + s + 196] = mem[_10877 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10877] % 32:
                                        require ext_code.size(address(_10697))
                                        call address(_10697).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10242, address(_10441), 128, mem[_10877 + 164 len mem[_10877] + 32]
                                    else:
                                        mem[floor32(mem[_10877]) + _10877 + 196] = mem[floor32(mem[_10877]) + _10877 + -(mem[_10877] % 32) + 228 len mem[_10877] % 32]
                                        require ext_code.size(address(_10697))
                                        call address(_10697).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10242, address(_10441), 128, mem[_10877], mem[_10877 + 196 len floor32(mem[_10877]) + 32]
                            else:
                                if idx >= mem[(32 * arg6.length) + 224] - 1:
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10572 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _10700 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10700 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10700 + 36] = _10242
                                    mem[_10700 + 68] = 0
                                    mem[_10700 + 100] = this.address
                                    mem[_10700 + 132] = 128
                                    mem[_10700 + 164] = mem[_10700]
                                    s = 0
                                    while s < mem[_10700]:
                                        mem[_10700 + s + 196] = mem[_10700 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10700] % 32:
                                        require ext_code.size(address(_10572))
                                        call address(_10572).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10242, 0, address(this.address), 128, mem[_10700 + 164 len mem[_10700] + 32]
                                    else:
                                        mem[floor32(mem[_10700]) + _10700 + 196] = mem[floor32(mem[_10700]) + _10700 + -(mem[_10700] % 32) + 228 len mem[_10700] % 32]
                                        require ext_code.size(address(_10572))
                                        call address(_10572).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10242, 0, address(this.address), 128, mem[_10700], mem[_10700 + 196 len floor32(mem[_10700]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * arg6.length) + 224]
                                    _10443 = mem[(32 * idx + 1) + (32 * arg6.length) + 256]
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10699 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _10881 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10881 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10881 + 36] = _10242
                                    mem[_10881 + 68] = 0
                                    mem[_10881 + 100] = address(_10443)
                                    mem[_10881 + 132] = 128
                                    mem[_10881 + 164] = mem[_10881]
                                    s = 0
                                    while s < mem[_10881]:
                                        mem[_10881 + s + 196] = mem[_10881 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10881] % 32:
                                        require ext_code.size(address(_10699))
                                        call address(_10699).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10242, 0, address(_10443), 128, mem[_10881 + 164 len mem[_10881] + 32]
                                    else:
                                        mem[floor32(mem[_10881]) + _10881 + 196] = mem[floor32(mem[_10881]) + _10881 + -(mem[_10881] % 32) + 228 len mem[_10881] % 32]
                                        require ext_code.size(address(_10699))
                                        call address(_10699).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10242, 0, address(_10443), 128, mem[_10881], mem[_10881 + 196 len floor32(mem[_10881]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                else:
                    require return_data.size >= 32
                    if not mem[_4192 + 164]:
                        revert with 0, 
                                    32,
                                    36,
                                    0x595472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                    mem[_4192 + ceil32(return_data.size) + 237 len 28]
                    _9996 = mem[(32 * arg6.length) + 224]
                    idx = 0
                    while idx < _9996:
                        require idx < mem[(32 * arg6.length) + 128]
                        require idx + 1 < mem[(32 * arg6.length) + 128]
                        if mem[(32 * idx) + (32 * arg6.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg6.length) + 172 len 20]:
                            revert with 0, 32, 35, 0x7350616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                        if mem[(32 * idx) + (32 * arg6.length) + 172 len 20] < mem[(32 * idx + 1) + (32 * arg6.length) + 172 len 20]:
                            if not mem[(32 * idx) + (32 * arg6.length) + 172 len 20]:
                                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                            require idx + 1 < mem[(32 * arg6.length) + 288]
                            _10243 = mem[(32 * idx + 1) + (32 * arg6.length) + 320]
                            if mem[(32 * idx) + (32 * arg6.length) + 172 len 20] == mem[(32 * idx) + (32 * arg6.length) + 172 len 20]:
                                if idx >= mem[(32 * arg6.length) + 224] - 1:
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10574 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _10702 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10702 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10702 + 36] = 0
                                    mem[_10702 + 68] = _10243
                                    mem[_10702 + 100] = this.address
                                    mem[_10702 + 132] = 128
                                    mem[_10702 + 164] = mem[_10702]
                                    s = 0
                                    while s < mem[_10702]:
                                        mem[_10702 + s + 196] = mem[_10702 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10702] % 32:
                                        require ext_code.size(address(_10574))
                                        call address(_10574).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10243, address(this.address), 128, mem[_10702 + 164 len mem[_10702] + 32]
                                    else:
                                        mem[floor32(mem[_10702]) + _10702 + 196] = mem[floor32(mem[_10702]) + _10702 + -(mem[_10702] % 32) + 228 len mem[_10702] % 32]
                                        require ext_code.size(address(_10574))
                                        call address(_10574).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10243, address(this.address), 128, mem[_10702], mem[_10702 + 196 len floor32(mem[_10702]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * arg6.length) + 224]
                                    _10445 = mem[(32 * idx + 1) + (32 * arg6.length) + 256]
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10701 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _10885 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10885 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10885 + 36] = 0
                                    mem[_10885 + 68] = _10243
                                    mem[_10885 + 100] = address(_10445)
                                    mem[_10885 + 132] = 128
                                    mem[_10885 + 164] = mem[_10885]
                                    s = 0
                                    while s < mem[_10885]:
                                        mem[_10885 + s + 196] = mem[_10885 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10885] % 32:
                                        require ext_code.size(address(_10701))
                                        call address(_10701).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10243, address(_10445), 128, mem[_10885 + 164 len mem[_10885] + 32]
                                    else:
                                        mem[floor32(mem[_10885]) + _10885 + 196] = mem[floor32(mem[_10885]) + _10885 + -(mem[_10885] % 32) + 228 len mem[_10885] % 32]
                                        require ext_code.size(address(_10701))
                                        call address(_10701).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10243, address(_10445), 128, mem[_10885], mem[_10885 + 196 len floor32(mem[_10885]) + 32]
                            else:
                                if idx >= mem[(32 * arg6.length) + 224] - 1:
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10576 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _10704 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10704 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10704 + 36] = _10243
                                    mem[_10704 + 68] = 0
                                    mem[_10704 + 100] = this.address
                                    mem[_10704 + 132] = 128
                                    mem[_10704 + 164] = mem[_10704]
                                    s = 0
                                    while s < mem[_10704]:
                                        mem[_10704 + s + 196] = mem[_10704 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10704] % 32:
                                        require ext_code.size(address(_10576))
                                        call address(_10576).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10243, 0, address(this.address), 128, mem[_10704 + 164 len mem[_10704] + 32]
                                    else:
                                        mem[floor32(mem[_10704]) + _10704 + 196] = mem[floor32(mem[_10704]) + _10704 + -(mem[_10704] % 32) + 228 len mem[_10704] % 32]
                                        require ext_code.size(address(_10576))
                                        call address(_10576).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10243, 0, address(this.address), 128, mem[_10704], mem[_10704 + 196 len floor32(mem[_10704]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * arg6.length) + 224]
                                    _10447 = mem[(32 * idx + 1) + (32 * arg6.length) + 256]
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10703 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _10889 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10889 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10889 + 36] = _10243
                                    mem[_10889 + 68] = 0
                                    mem[_10889 + 100] = address(_10447)
                                    mem[_10889 + 132] = 128
                                    mem[_10889 + 164] = mem[_10889]
                                    s = 0
                                    while s < mem[_10889]:
                                        mem[_10889 + s + 196] = mem[_10889 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10889] % 32:
                                        require ext_code.size(address(_10703))
                                        call address(_10703).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10243, 0, address(_10447), 128, mem[_10889 + 164 len mem[_10889] + 32]
                                    else:
                                        mem[floor32(mem[_10889]) + _10889 + 196] = mem[floor32(mem[_10889]) + _10889 + -(mem[_10889] % 32) + 228 len mem[_10889] % 32]
                                        require ext_code.size(address(_10703))
                                        call address(_10703).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10243, 0, address(_10447), 128, mem[_10889], mem[_10889 + 196 len floor32(mem[_10889]) + 32]
                        else:
                            if not mem[(32 * idx + 1) + (32 * arg6.length) + 172 len 20]:
                                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                            require idx + 1 < mem[(32 * arg6.length) + 288]
                            _10244 = mem[(32 * idx + 1) + (32 * arg6.length) + 320]
                            if mem[(32 * idx) + (32 * arg6.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg6.length) + 172 len 20]:
                                if idx >= mem[(32 * arg6.length) + 224] - 1:
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10578 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _10706 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10706 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10706 + 36] = 0
                                    mem[_10706 + 68] = _10244
                                    mem[_10706 + 100] = this.address
                                    mem[_10706 + 132] = 128
                                    mem[_10706 + 164] = mem[_10706]
                                    s = 0
                                    while s < mem[_10706]:
                                        mem[_10706 + s + 196] = mem[_10706 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10706] % 32:
                                        require ext_code.size(address(_10578))
                                        call address(_10578).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10244, address(this.address), 128, mem[_10706 + 164 len mem[_10706] + 32]
                                    else:
                                        mem[floor32(mem[_10706]) + _10706 + 196] = mem[floor32(mem[_10706]) + _10706 + -(mem[_10706] % 32) + 228 len mem[_10706] % 32]
                                        require ext_code.size(address(_10578))
                                        call address(_10578).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10244, address(this.address), 128, mem[_10706], mem[_10706 + 196 len floor32(mem[_10706]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * arg6.length) + 224]
                                    _10449 = mem[(32 * idx + 1) + (32 * arg6.length) + 256]
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10705 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _10893 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10893 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10893 + 36] = 0
                                    mem[_10893 + 68] = _10244
                                    mem[_10893 + 100] = address(_10449)
                                    mem[_10893 + 132] = 128
                                    mem[_10893 + 164] = mem[_10893]
                                    s = 0
                                    while s < mem[_10893]:
                                        mem[_10893 + s + 196] = mem[_10893 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10893] % 32:
                                        require ext_code.size(address(_10705))
                                        call address(_10705).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10244, address(_10449), 128, mem[_10893 + 164 len mem[_10893] + 32]
                                    else:
                                        mem[floor32(mem[_10893]) + _10893 + 196] = mem[floor32(mem[_10893]) + _10893 + -(mem[_10893] % 32) + 228 len mem[_10893] % 32]
                                        require ext_code.size(address(_10705))
                                        call address(_10705).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10244, address(_10449), 128, mem[_10893], mem[_10893 + 196 len floor32(mem[_10893]) + 32]
                            else:
                                if idx >= mem[(32 * arg6.length) + 224] - 1:
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10580 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _10708 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10708 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10708 + 36] = _10244
                                    mem[_10708 + 68] = 0
                                    mem[_10708 + 100] = this.address
                                    mem[_10708 + 132] = 128
                                    mem[_10708 + 164] = mem[_10708]
                                    s = 0
                                    while s < mem[_10708]:
                                        mem[_10708 + s + 196] = mem[_10708 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10708] % 32:
                                        require ext_code.size(address(_10580))
                                        call address(_10580).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10244, 0, address(this.address), 128, mem[_10708 + 164 len mem[_10708] + 32]
                                    else:
                                        mem[floor32(mem[_10708]) + _10708 + 196] = mem[floor32(mem[_10708]) + _10708 + -(mem[_10708] % 32) + 228 len mem[_10708] % 32]
                                        require ext_code.size(address(_10580))
                                        call address(_10580).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10244, 0, address(this.address), 128, mem[_10708], mem[_10708 + 196 len floor32(mem[_10708]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * arg6.length) + 224]
                                    _10451 = mem[(32 * idx + 1) + (32 * arg6.length) + 256]
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10707 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _10897 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10897 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10897 + 36] = _10244
                                    mem[_10897 + 68] = 0
                                    mem[_10897 + 100] = address(_10451)
                                    mem[_10897 + 132] = 128
                                    mem[_10897 + 164] = mem[_10897]
                                    s = 0
                                    while s < mem[_10897]:
                                        mem[_10897 + s + 196] = mem[_10897 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10897] % 32:
                                        require ext_code.size(address(_10707))
                                        call address(_10707).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10244, 0, address(_10451), 128, mem[_10897 + 164 len mem[_10897] + 32]
                                    else:
                                        mem[floor32(mem[_10897]) + _10897 + 196] = mem[floor32(mem[_10897]) + _10897 + -(mem[_10897] % 32) + 228 len mem[_10897] % 32]
                                        require ext_code.size(address(_10707))
                                        call address(_10707).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10244, 0, address(_10451), 128, mem[_10897], mem[_10897 + 196 len floor32(mem[_10897]) + 32]
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
        require ext_code.size(arg5)
        staticcall arg5.factory() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg3), arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'Pool does not exist'
        mem[(32 * arg6.length) + 128] = 2
        mem[(32 * arg6.length) + 224] = 1
        mem[(32 * arg6.length) + 160] = arg3
        mem[(32 * arg6.length) + 192] = arg4
        mem[(32 * arg6.length) + 256] = address(ext_call.return_data[0])
        emit 0x146828f4: address(ext_call.return_data[0])
        mem[(32 * arg6.length) + 288] = 2
        mem[64] = (32 * arg6.length) + 384
        mem[(32 * arg6.length) + 320 len 64] = call.data[calldata.size len 64]
        mem[(32 * arg6.length) + 320] = arg1
        idx = 0
        while idx < 1:
            require idx < mem[(32 * arg6.length) + 128]
            _4135 = mem[(32 * idx) + (32 * arg6.length) + 160]
            require idx + 1 < mem[(32 * arg6.length) + 128]
            _4144 = mem[(32 * idx + 1) + (32 * arg6.length) + 160]
            if mem[(32 * idx) + (32 * arg6.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg6.length) + 172 len 20]:
                revert with 0, 32, 35, 0x7350616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
            if mem[(32 * idx) + (32 * arg6.length) + 172 len 20] < mem[(32 * idx + 1) + (32 * arg6.length) + 172 len 20]:
                if not mem[(32 * idx) + (32 * arg6.length) + 172 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                if mem[(32 * idx) + (32 * arg6.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg6.length) + 172 len 20]:
                    revert with 0, 32, 35, 0x7350616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                if mem[(32 * idx) + (32 * arg6.length) + 172 len 20] < mem[(32 * idx + 1) + (32 * arg6.length) + 172 len 20]:
                    if not mem[(32 * idx) + (32 * arg6.length) + 172 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    _4425 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx) + (32 * arg6.length) + 160])
                    mem[mem[64] + 52] = address(_4144)
                    _4426 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _4428 = sha3(mem[_4426 + 32 len mem[_4426]])
                    mem[_4425 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_4425 + 105] = address(ext_call.return_data[0])
                    mem[_4425 + 125] = _4428
                    mem[_4425 + 157] = 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66
                    mem[_4425 + 72] = 85
                    if address(_4135) == address(_4144):
                        revert with 0, 32, 35, 0x7350616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_4425 + 292 len 29]
                    if address(_4135) < address(_4144):
                        if not address(_4135):
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[_4425 + 221] = address(_4135)
                        mem[_4425 + 241] = address(_4144)
                        mem[_4425 + 189] = 40
                        mem[_4425 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_4425 + 294] = address(ext_call.return_data[0])
                        mem[_4425 + 314] = sha3(address(_4135), address(_4144))
                        mem[_4425 + 346] = 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66
                        mem[_4425 + 261] = 85
                        mem[64] = _4425 + 378
                        require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(_4135), address(_4144)), 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66)))
                        staticcall address(sha3(0, address(ext_call.return_data[0]), sha3(address(_4135), address(_4144)), 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66)).getReserves() with:
                                gas gas_remaining wei
                    else:
                        if not address(_4144):
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[_4425 + 221] = address(_4144)
                        mem[_4425 + 241] = address(_4135)
                        mem[_4425 + 189] = 40
                        mem[_4425 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_4425 + 294] = address(ext_call.return_data[0])
                        mem[_4425 + 314] = sha3(address(_4144), address(_4135))
                        mem[_4425 + 346] = 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66
                        mem[_4425 + 261] = 85
                        mem[64] = _4425 + 378
                        require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(_4144), address(_4135)), 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66)))
                        staticcall address(sha3(0, address(ext_call.return_data[0]), sha3(address(_4144), address(_4135)), 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66)).getReserves() with:
                                gas gas_remaining wei
                    mem[_4425 + 378 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * arg6.length) + 288]
                    if mem[(32 * idx) + (32 * arg6.length) + 320] <= 0:
                        revert with 0, 
                                    32,
                                    41,
                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[_4425 + 487 len 23]
                    if address(_4135) == address(_4135):
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_4425 + 484 len 26]
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_4425 + 484 len 26]
                        if 998 * mem[(32 * idx) + (32 * arg6.length) + 320] / 998 != mem[(32 * idx) + (32 * arg6.length) + 320]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[50 len 14]:
                            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320]) < 1000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                            require idx + 1 < mem[(32 * arg6.length) + 288]
                            mem[(32 * idx + 1) + (32 * arg6.length) + 320] = 0 / (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                        else:
                            require ext_call.return_data[50 len 14]
                            if 998 * mem[(32 * idx) + (32 * arg6.length) + 320] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 998 * mem[(32 * idx) + (32 * arg6.length) + 320]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320]) < 1000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                            require idx + 1 < mem[(32 * arg6.length) + 288]
                            mem[(32 * idx + 1) + (32 * arg6.length) + 320] = 998 * mem[(32 * idx) + (32 * arg6.length) + 320] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                    else:
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_4425 + 484 len 26]
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_4425 + 484 len 26]
                        if 998 * mem[(32 * idx) + (32 * arg6.length) + 320] / 998 != mem[(32 * idx) + (32 * arg6.length) + 320]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[18 len 14]:
                            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320]) < 1000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                            require idx + 1 < mem[(32 * arg6.length) + 288]
                            mem[(32 * idx + 1) + (32 * arg6.length) + 320] = 0 / (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                        else:
                            require ext_call.return_data[18 len 14]
                            if 998 * mem[(32 * idx) + (32 * arg6.length) + 320] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 998 * mem[(32 * idx) + (32 * arg6.length) + 320]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320]) < 1000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                            require idx + 1 < mem[(32 * arg6.length) + 288]
                            mem[(32 * idx + 1) + (32 * arg6.length) + 320] = 998 * mem[(32 * idx) + (32 * arg6.length) + 320] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                else:
                    if not mem[(32 * idx + 1) + (32 * arg6.length) + 172 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    _4433 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx + 1) + (32 * arg6.length) + 160])
                    mem[mem[64] + 52] = address(_4135)
                    _4434 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _4436 = sha3(mem[_4434 + 32 len mem[_4434]])
                    mem[_4433 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_4433 + 105] = address(ext_call.return_data[0])
                    mem[_4433 + 125] = _4436
                    mem[_4433 + 157] = 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66
                    mem[_4433 + 72] = 85
                    if address(_4135) == address(_4144):
                        revert with 0, 32, 35, 0x7350616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_4433 + 292 len 29]
                    if address(_4135) < address(_4144):
                        if not address(_4135):
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[_4433 + 221] = address(_4135)
                        mem[_4433 + 241] = address(_4144)
                        mem[_4433 + 189] = 40
                        mem[_4433 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_4433 + 294] = address(ext_call.return_data[0])
                        mem[_4433 + 314] = sha3(address(_4135), address(_4144))
                        mem[_4433 + 346] = 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66
                        mem[_4433 + 261] = 85
                        mem[64] = _4433 + 378
                        require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(_4135), address(_4144)), 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66)))
                        staticcall address(sha3(0, address(ext_call.return_data[0]), sha3(address(_4135), address(_4144)), 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66)).getReserves() with:
                                gas gas_remaining wei
                    else:
                        if not address(_4144):
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[_4433 + 221] = address(_4144)
                        mem[_4433 + 241] = address(_4135)
                        mem[_4433 + 189] = 40
                        mem[_4433 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_4433 + 294] = address(ext_call.return_data[0])
                        mem[_4433 + 314] = sha3(address(_4144), address(_4135))
                        mem[_4433 + 346] = 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66
                        mem[_4433 + 261] = 85
                        mem[64] = _4433 + 378
                        require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(_4144), address(_4135)), 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66)))
                        staticcall address(sha3(0, address(ext_call.return_data[0]), sha3(address(_4144), address(_4135)), 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66)).getReserves() with:
                                gas gas_remaining wei
                    mem[_4433 + 378 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * arg6.length) + 288]
                    if mem[(32 * idx) + (32 * arg6.length) + 320] <= 0:
                        revert with 0, 
                                    32,
                                    41,
                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[_4433 + 487 len 23]
                    if address(_4135) == address(_4135):
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_4433 + 484 len 26]
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_4433 + 484 len 26]
                        if 998 * mem[(32 * idx) + (32 * arg6.length) + 320] / 998 != mem[(32 * idx) + (32 * arg6.length) + 320]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[50 len 14]:
                            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320]) < 1000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                            require idx + 1 < mem[(32 * arg6.length) + 288]
                            mem[(32 * idx + 1) + (32 * arg6.length) + 320] = 0 / (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                        else:
                            require ext_call.return_data[50 len 14]
                            if 998 * mem[(32 * idx) + (32 * arg6.length) + 320] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 998 * mem[(32 * idx) + (32 * arg6.length) + 320]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320]) < 1000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                            require idx + 1 < mem[(32 * arg6.length) + 288]
                            mem[(32 * idx + 1) + (32 * arg6.length) + 320] = 998 * mem[(32 * idx) + (32 * arg6.length) + 320] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                    else:
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_4433 + 484 len 26]
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_4433 + 484 len 26]
                        if 998 * mem[(32 * idx) + (32 * arg6.length) + 320] / 998 != mem[(32 * idx) + (32 * arg6.length) + 320]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[18 len 14]:
                            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320]) < 1000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                            require idx + 1 < mem[(32 * arg6.length) + 288]
                            mem[(32 * idx + 1) + (32 * arg6.length) + 320] = 0 / (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                        else:
                            require ext_call.return_data[18 len 14]
                            if 998 * mem[(32 * idx) + (32 * arg6.length) + 320] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 998 * mem[(32 * idx) + (32 * arg6.length) + 320]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320]) < 1000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                            require idx + 1 < mem[(32 * arg6.length) + 288]
                            mem[(32 * idx + 1) + (32 * arg6.length) + 320] = 998 * mem[(32 * idx) + (32 * arg6.length) + 320] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
            else:
                if not mem[(32 * idx + 1) + (32 * arg6.length) + 172 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                if mem[(32 * idx) + (32 * arg6.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg6.length) + 172 len 20]:
                    revert with 0, 32, 35, 0x7350616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                if mem[(32 * idx) + (32 * arg6.length) + 172 len 20] < mem[(32 * idx + 1) + (32 * arg6.length) + 172 len 20]:
                    if not mem[(32 * idx) + (32 * arg6.length) + 172 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    _4441 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx) + (32 * arg6.length) + 160])
                    mem[mem[64] + 52] = address(_4144)
                    _4442 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _4444 = sha3(mem[_4442 + 32 len mem[_4442]])
                    mem[_4441 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_4441 + 105] = address(ext_call.return_data[0])
                    mem[_4441 + 125] = _4444
                    mem[_4441 + 157] = 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66
                    mem[_4441 + 72] = 85
                    if address(_4135) == address(_4144):
                        revert with 0, 32, 35, 0x7350616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_4441 + 292 len 29]
                    if address(_4135) < address(_4144):
                        if not address(_4135):
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[_4441 + 221] = address(_4135)
                        mem[_4441 + 241] = address(_4144)
                        mem[_4441 + 189] = 40
                        mem[_4441 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_4441 + 294] = address(ext_call.return_data[0])
                        mem[_4441 + 314] = sha3(address(_4135), address(_4144))
                        mem[_4441 + 346] = 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66
                        mem[_4441 + 261] = 85
                        mem[64] = _4441 + 378
                        require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(_4135), address(_4144)), 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66)))
                        staticcall address(sha3(0, address(ext_call.return_data[0]), sha3(address(_4135), address(_4144)), 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66)).getReserves() with:
                                gas gas_remaining wei
                    else:
                        if not address(_4144):
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[_4441 + 221] = address(_4144)
                        mem[_4441 + 241] = address(_4135)
                        mem[_4441 + 189] = 40
                        mem[_4441 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_4441 + 294] = address(ext_call.return_data[0])
                        mem[_4441 + 314] = sha3(address(_4144), address(_4135))
                        mem[_4441 + 346] = 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66
                        mem[_4441 + 261] = 85
                        mem[64] = _4441 + 378
                        require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(_4144), address(_4135)), 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66)))
                        staticcall address(sha3(0, address(ext_call.return_data[0]), sha3(address(_4144), address(_4135)), 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66)).getReserves() with:
                                gas gas_remaining wei
                    mem[_4441 + 378 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * arg6.length) + 288]
                    if mem[(32 * idx) + (32 * arg6.length) + 320] <= 0:
                        revert with 0, 
                                    32,
                                    41,
                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[_4441 + 487 len 23]
                    if address(_4135) == address(_4144):
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_4441 + 484 len 26]
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_4441 + 484 len 26]
                        if 998 * mem[(32 * idx) + (32 * arg6.length) + 320] / 998 != mem[(32 * idx) + (32 * arg6.length) + 320]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[50 len 14]:
                            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320]) < 1000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                            require idx + 1 < mem[(32 * arg6.length) + 288]
                            mem[(32 * idx + 1) + (32 * arg6.length) + 320] = 0 / (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                        else:
                            require ext_call.return_data[50 len 14]
                            if 998 * mem[(32 * idx) + (32 * arg6.length) + 320] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 998 * mem[(32 * idx) + (32 * arg6.length) + 320]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320]) < 1000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                            require idx + 1 < mem[(32 * arg6.length) + 288]
                            mem[(32 * idx + 1) + (32 * arg6.length) + 320] = 998 * mem[(32 * idx) + (32 * arg6.length) + 320] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                    else:
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_4441 + 484 len 26]
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_4441 + 484 len 26]
                        if 998 * mem[(32 * idx) + (32 * arg6.length) + 320] / 998 != mem[(32 * idx) + (32 * arg6.length) + 320]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[18 len 14]:
                            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320]) < 1000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                            require idx + 1 < mem[(32 * arg6.length) + 288]
                            mem[(32 * idx + 1) + (32 * arg6.length) + 320] = 0 / (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                        else:
                            require ext_call.return_data[18 len 14]
                            if 998 * mem[(32 * idx) + (32 * arg6.length) + 320] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 998 * mem[(32 * idx) + (32 * arg6.length) + 320]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320]) < 1000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                            require idx + 1 < mem[(32 * arg6.length) + 288]
                            mem[(32 * idx + 1) + (32 * arg6.length) + 320] = 998 * mem[(32 * idx) + (32 * arg6.length) + 320] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                else:
                    if not mem[(32 * idx + 1) + (32 * arg6.length) + 172 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    _4449 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx + 1) + (32 * arg6.length) + 160])
                    mem[mem[64] + 52] = address(_4135)
                    _4450 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _4452 = sha3(mem[_4450 + 32 len mem[_4450]])
                    mem[_4449 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_4449 + 105] = address(ext_call.return_data[0])
                    mem[_4449 + 125] = _4452
                    mem[_4449 + 157] = 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66
                    mem[_4449 + 72] = 85
                    if address(_4135) == address(_4144):
                        revert with 0, 32, 35, 0x7350616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_4449 + 292 len 29]
                    if address(_4135) < address(_4144):
                        if not address(_4135):
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[_4449 + 221] = address(_4135)
                        mem[_4449 + 241] = address(_4144)
                        mem[_4449 + 189] = 40
                        mem[_4449 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_4449 + 294] = address(ext_call.return_data[0])
                        mem[_4449 + 314] = sha3(address(_4135), address(_4144))
                        mem[_4449 + 346] = 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66
                        mem[_4449 + 261] = 85
                        mem[64] = _4449 + 378
                        require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(_4135), address(_4144)), 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66)))
                        staticcall address(sha3(0, address(ext_call.return_data[0]), sha3(address(_4135), address(_4144)), 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66)).getReserves() with:
                                gas gas_remaining wei
                    else:
                        if not address(_4144):
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[_4449 + 221] = address(_4144)
                        mem[_4449 + 241] = address(_4135)
                        mem[_4449 + 189] = 40
                        mem[_4449 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_4449 + 294] = address(ext_call.return_data[0])
                        mem[_4449 + 314] = sha3(address(_4144), address(_4135))
                        mem[_4449 + 346] = 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66
                        mem[_4449 + 261] = 85
                        mem[64] = _4449 + 378
                        require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(address(_4144), address(_4135)), 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66)))
                        staticcall address(sha3(0, address(ext_call.return_data[0]), sha3(address(_4144), address(_4135)), 0xd0d4c4cd0848c93cb4fd1f498d7013ee6bfb25783ea21593d5834f5d250ece66)).getReserves() with:
                                gas gas_remaining wei
                    mem[_4449 + 378 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * arg6.length) + 288]
                    if mem[(32 * idx) + (32 * arg6.length) + 320] <= 0:
                        revert with 0, 
                                    32,
                                    41,
                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[_4449 + 487 len 23]
                    if address(_4135) == address(_4144):
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_4449 + 484 len 26]
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_4449 + 484 len 26]
                        if 998 * mem[(32 * idx) + (32 * arg6.length) + 320] / 998 != mem[(32 * idx) + (32 * arg6.length) + 320]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[50 len 14]:
                            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320]) < 1000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                            require idx + 1 < mem[(32 * arg6.length) + 288]
                            mem[(32 * idx + 1) + (32 * arg6.length) + 320] = 0 / (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                        else:
                            require ext_call.return_data[50 len 14]
                            if 998 * mem[(32 * idx) + (32 * arg6.length) + 320] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 998 * mem[(32 * idx) + (32 * arg6.length) + 320]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320]) < 1000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                            require idx + 1 < mem[(32 * arg6.length) + 288]
                            mem[(32 * idx + 1) + (32 * arg6.length) + 320] = 998 * mem[(32 * idx) + (32 * arg6.length) + 320] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                    else:
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_4449 + 484 len 26]
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_4449 + 484 len 26]
                        if 998 * mem[(32 * idx) + (32 * arg6.length) + 320] / 998 != mem[(32 * idx) + (32 * arg6.length) + 320]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[18 len 14]:
                            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320]) < 1000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                            require idx + 1 < mem[(32 * arg6.length) + 288]
                            mem[(32 * idx + 1) + (32 * arg6.length) + 320] = 0 / (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                        else:
                            require ext_call.return_data[18 len 14]
                            if 998 * mem[(32 * idx) + (32 * arg6.length) + 320] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 998 * mem[(32 * idx) + (32 * arg6.length) + 320]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320]) < 1000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
                            require idx + 1 < mem[(32 * arg6.length) + 288]
                            mem[(32 * idx + 1) + (32 * arg6.length) + 320] = 998 * mem[(32 * idx) + (32 * arg6.length) + 320] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * idx) + (32 * arg6.length) + 320])
            idx = idx + 1
            continue 
        require mem[(32 * arg6.length) + 288] - 1 < mem[(32 * arg6.length) + 288]
        if mem[(32 * mem[(32 * arg6.length) + 288] - 1) + (32 * arg6.length) + 320] >= arg2:
            require 0 < mem[(32 * arg6.length) + 288]
            _4152 = mem[(32 * arg6.length) + 320]
            mem[mem[64] + 4] = this.address
            require ext_code.size(arg3)
            call arg3.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(this.address), _4152
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _4212 = mem[64]
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = address(ext_call.return_data[0])
            mem[mem[64] + 100] = _4152
            _4213 = mem[64]
            mem[mem[64]] = 100
            mem[64] = mem[64] + 132
            mem[_4213 + 32 len 4] = unknown_0x23b872dd(?????)
            _4216 = mem[_4213]
            mem[_4212 + 132 len floor32(mem[_4213])] = mem[_4213 + 32 len floor32(mem[_4213])]
            mem[_4212 + floor32(mem[_4213]) + -(mem[_4213] % 32) + 164 len mem[_4213] % 32] = mem[_4213 + -(mem[_4213] % 32) + floor32(mem[_4213]) + 64 len mem[_4213] % 32]
            call arg3.mem[_4212 + 132 len 4] with:
                 gas gas_remaining wei
                args mem[_4212 + 136 len _4216 - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 32, 36, 0x595472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45, mem[_4212 + 236 len 28]
                if not mem[96]:
                    _10001 = mem[(32 * arg6.length) + 224]
                    idx = 0
                    while idx < _10001:
                        require idx < mem[(32 * arg6.length) + 128]
                        require idx + 1 < mem[(32 * arg6.length) + 128]
                        if mem[(32 * idx) + (32 * arg6.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg6.length) + 172 len 20]:
                            revert with 0, 32, 35, 0x7350616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                        if mem[(32 * idx) + (32 * arg6.length) + 172 len 20] < mem[(32 * idx + 1) + (32 * arg6.length) + 172 len 20]:
                            if not mem[(32 * idx) + (32 * arg6.length) + 172 len 20]:
                                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                            require idx + 1 < mem[(32 * arg6.length) + 288]
                            _10253 = mem[(32 * idx + 1) + (32 * arg6.length) + 320]
                            if mem[(32 * idx) + (32 * arg6.length) + 172 len 20] == mem[(32 * idx) + (32 * arg6.length) + 172 len 20]:
                                if idx >= mem[(32 * arg6.length) + 224] - 1:
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10614 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _10742 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10742 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10742 + 36] = 0
                                    mem[_10742 + 68] = _10253
                                    mem[_10742 + 100] = this.address
                                    mem[_10742 + 132] = 128
                                    mem[_10742 + 164] = mem[_10742]
                                    s = 0
                                    while s < mem[_10742]:
                                        mem[_10742 + s + 196] = mem[_10742 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10742] % 32:
                                        require ext_code.size(address(_10614))
                                        call address(_10614).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10253, address(this.address), 128, mem[_10742 + 164 len mem[_10742] + 32]
                                    else:
                                        mem[floor32(mem[_10742]) + _10742 + 196] = mem[floor32(mem[_10742]) + _10742 + -(mem[_10742] % 32) + 228 len mem[_10742] % 32]
                                        require ext_code.size(address(_10614))
                                        call address(_10614).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10253, address(this.address), 128, mem[_10742], mem[_10742 + 196 len floor32(mem[_10742]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * arg6.length) + 224]
                                    _10485 = mem[(32 * idx + 1) + (32 * arg6.length) + 256]
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10741 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _10965 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10965 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10965 + 36] = 0
                                    mem[_10965 + 68] = _10253
                                    mem[_10965 + 100] = address(_10485)
                                    mem[_10965 + 132] = 128
                                    mem[_10965 + 164] = mem[_10965]
                                    s = 0
                                    while s < mem[_10965]:
                                        mem[_10965 + s + 196] = mem[_10965 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10965] % 32:
                                        require ext_code.size(address(_10741))
                                        call address(_10741).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10253, address(_10485), 128, mem[_10965 + 164 len mem[_10965] + 32]
                                    else:
                                        mem[floor32(mem[_10965]) + _10965 + 196] = mem[floor32(mem[_10965]) + _10965 + -(mem[_10965] % 32) + 228 len mem[_10965] % 32]
                                        require ext_code.size(address(_10741))
                                        call address(_10741).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10253, address(_10485), 128, mem[_10965], mem[_10965 + 196 len floor32(mem[_10965]) + 32]
                            else:
                                if idx >= mem[(32 * arg6.length) + 224] - 1:
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10616 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _10744 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10744 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10744 + 36] = _10253
                                    mem[_10744 + 68] = 0
                                    mem[_10744 + 100] = this.address
                                    mem[_10744 + 132] = 128
                                    mem[_10744 + 164] = mem[_10744]
                                    s = 0
                                    while s < mem[_10744]:
                                        mem[_10744 + s + 196] = mem[_10744 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10744] % 32:
                                        require ext_code.size(address(_10616))
                                        call address(_10616).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10253, 0, address(this.address), 128, mem[_10744 + 164 len mem[_10744] + 32]
                                    else:
                                        mem[floor32(mem[_10744]) + _10744 + 196] = mem[floor32(mem[_10744]) + _10744 + -(mem[_10744] % 32) + 228 len mem[_10744] % 32]
                                        require ext_code.size(address(_10616))
                                        call address(_10616).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10253, 0, address(this.address), 128, mem[_10744], mem[_10744 + 196 len floor32(mem[_10744]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * arg6.length) + 224]
                                    _10487 = mem[(32 * idx + 1) + (32 * arg6.length) + 256]
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10743 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _10969 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10969 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10969 + 36] = _10253
                                    mem[_10969 + 68] = 0
                                    mem[_10969 + 100] = address(_10487)
                                    mem[_10969 + 132] = 128
                                    mem[_10969 + 164] = mem[_10969]
                                    s = 0
                                    while s < mem[_10969]:
                                        mem[_10969 + s + 196] = mem[_10969 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10969] % 32:
                                        require ext_code.size(address(_10743))
                                        call address(_10743).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10253, 0, address(_10487), 128, mem[_10969 + 164 len mem[_10969] + 32]
                                    else:
                                        mem[floor32(mem[_10969]) + _10969 + 196] = mem[floor32(mem[_10969]) + _10969 + -(mem[_10969] % 32) + 228 len mem[_10969] % 32]
                                        require ext_code.size(address(_10743))
                                        call address(_10743).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10253, 0, address(_10487), 128, mem[_10969], mem[_10969 + 196 len floor32(mem[_10969]) + 32]
                        else:
                            if not mem[(32 * idx + 1) + (32 * arg6.length) + 172 len 20]:
                                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                            require idx + 1 < mem[(32 * arg6.length) + 288]
                            _10254 = mem[(32 * idx + 1) + (32 * arg6.length) + 320]
                            if mem[(32 * idx) + (32 * arg6.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg6.length) + 172 len 20]:
                                if idx >= mem[(32 * arg6.length) + 224] - 1:
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10618 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _10746 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10746 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10746 + 36] = 0
                                    mem[_10746 + 68] = _10254
                                    mem[_10746 + 100] = this.address
                                    mem[_10746 + 132] = 128
                                    mem[_10746 + 164] = mem[_10746]
                                    s = 0
                                    while s < mem[_10746]:
                                        mem[_10746 + s + 196] = mem[_10746 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10746] % 32:
                                        require ext_code.size(address(_10618))
                                        call address(_10618).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10254, address(this.address), 128, mem[_10746 + 164 len mem[_10746] + 32]
                                    else:
                                        mem[floor32(mem[_10746]) + _10746 + 196] = mem[floor32(mem[_10746]) + _10746 + -(mem[_10746] % 32) + 228 len mem[_10746] % 32]
                                        require ext_code.size(address(_10618))
                                        call address(_10618).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10254, address(this.address), 128, mem[_10746], mem[_10746 + 196 len floor32(mem[_10746]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * arg6.length) + 224]
                                    _10489 = mem[(32 * idx + 1) + (32 * arg6.length) + 256]
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10745 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _10973 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10973 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10973 + 36] = 0
                                    mem[_10973 + 68] = _10254
                                    mem[_10973 + 100] = address(_10489)
                                    mem[_10973 + 132] = 128
                                    mem[_10973 + 164] = mem[_10973]
                                    s = 0
                                    while s < mem[_10973]:
                                        mem[_10973 + s + 196] = mem[_10973 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10973] % 32:
                                        require ext_code.size(address(_10745))
                                        call address(_10745).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10254, address(_10489), 128, mem[_10973 + 164 len mem[_10973] + 32]
                                    else:
                                        mem[floor32(mem[_10973]) + _10973 + 196] = mem[floor32(mem[_10973]) + _10973 + -(mem[_10973] % 32) + 228 len mem[_10973] % 32]
                                        require ext_code.size(address(_10745))
                                        call address(_10745).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10254, address(_10489), 128, mem[_10973], mem[_10973 + 196 len floor32(mem[_10973]) + 32]
                            else:
                                if idx >= mem[(32 * arg6.length) + 224] - 1:
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10620 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _10748 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10748 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10748 + 36] = _10254
                                    mem[_10748 + 68] = 0
                                    mem[_10748 + 100] = this.address
                                    mem[_10748 + 132] = 128
                                    mem[_10748 + 164] = mem[_10748]
                                    s = 0
                                    while s < mem[_10748]:
                                        mem[_10748 + s + 196] = mem[_10748 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10748] % 32:
                                        require ext_code.size(address(_10620))
                                        call address(_10620).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10254, 0, address(this.address), 128, mem[_10748 + 164 len mem[_10748] + 32]
                                    else:
                                        mem[floor32(mem[_10748]) + _10748 + 196] = mem[floor32(mem[_10748]) + _10748 + -(mem[_10748] % 32) + 228 len mem[_10748] % 32]
                                        require ext_code.size(address(_10620))
                                        call address(_10620).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10254, 0, address(this.address), 128, mem[_10748], mem[_10748 + 196 len floor32(mem[_10748]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * arg6.length) + 224]
                                    _10491 = mem[(32 * idx + 1) + (32 * arg6.length) + 256]
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10747 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _10977 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10977 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10977 + 36] = _10254
                                    mem[_10977 + 68] = 0
                                    mem[_10977 + 100] = address(_10491)
                                    mem[_10977 + 132] = 128
                                    mem[_10977 + 164] = mem[_10977]
                                    s = 0
                                    while s < mem[_10977]:
                                        mem[_10977 + s + 196] = mem[_10977 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10977] % 32:
                                        require ext_code.size(address(_10747))
                                        call address(_10747).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10254, 0, address(_10491), 128, mem[_10977 + 164 len mem[_10977] + 32]
                                    else:
                                        mem[floor32(mem[_10977]) + _10977 + 196] = mem[floor32(mem[_10977]) + _10977 + -(mem[_10977] % 32) + 228 len mem[_10977] % 32]
                                        require ext_code.size(address(_10747))
                                        call address(_10747).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10254, 0, address(_10491), 128, mem[_10977], mem[_10977 + 196 len floor32(mem[_10977]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                else:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 32, 36, 0x595472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45, mem[_4212 + 236 len 28]
                    _10002 = mem[(32 * arg6.length) + 224]
                    idx = 0
                    while idx < _10002:
                        require idx < mem[(32 * arg6.length) + 128]
                        require idx + 1 < mem[(32 * arg6.length) + 128]
                        if mem[(32 * idx) + (32 * arg6.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg6.length) + 172 len 20]:
                            revert with 0, 32, 35, 0x7350616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                        if mem[(32 * idx) + (32 * arg6.length) + 172 len 20] < mem[(32 * idx + 1) + (32 * arg6.length) + 172 len 20]:
                            if not mem[(32 * idx) + (32 * arg6.length) + 172 len 20]:
                                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                            require idx + 1 < mem[(32 * arg6.length) + 288]
                            _10255 = mem[(32 * idx + 1) + (32 * arg6.length) + 320]
                            if mem[(32 * idx) + (32 * arg6.length) + 172 len 20] == mem[(32 * idx) + (32 * arg6.length) + 172 len 20]:
                                if idx >= mem[(32 * arg6.length) + 224] - 1:
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10622 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _10750 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10750 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10750 + 36] = 0
                                    mem[_10750 + 68] = _10255
                                    mem[_10750 + 100] = this.address
                                    mem[_10750 + 132] = 128
                                    mem[_10750 + 164] = mem[_10750]
                                    s = 0
                                    while s < mem[_10750]:
                                        mem[_10750 + s + 196] = mem[_10750 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10750] % 32:
                                        require ext_code.size(address(_10622))
                                        call address(_10622).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10255, address(this.address), 128, mem[_10750 + 164 len mem[_10750] + 32]
                                    else:
                                        mem[floor32(mem[_10750]) + _10750 + 196] = mem[floor32(mem[_10750]) + _10750 + -(mem[_10750] % 32) + 228 len mem[_10750] % 32]
                                        require ext_code.size(address(_10622))
                                        call address(_10622).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10255, address(this.address), 128, mem[_10750], mem[_10750 + 196 len floor32(mem[_10750]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * arg6.length) + 224]
                                    _10493 = mem[(32 * idx + 1) + (32 * arg6.length) + 256]
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10749 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _10981 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10981 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10981 + 36] = 0
                                    mem[_10981 + 68] = _10255
                                    mem[_10981 + 100] = address(_10493)
                                    mem[_10981 + 132] = 128
                                    mem[_10981 + 164] = mem[_10981]
                                    s = 0
                                    while s < mem[_10981]:
                                        mem[_10981 + s + 196] = mem[_10981 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10981] % 32:
                                        require ext_code.size(address(_10749))
                                        call address(_10749).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10255, address(_10493), 128, mem[_10981 + 164 len mem[_10981] + 32]
                                    else:
                                        mem[floor32(mem[_10981]) + _10981 + 196] = mem[floor32(mem[_10981]) + _10981 + -(mem[_10981] % 32) + 228 len mem[_10981] % 32]
                                        require ext_code.size(address(_10749))
                                        call address(_10749).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10255, address(_10493), 128, mem[_10981], mem[_10981 + 196 len floor32(mem[_10981]) + 32]
                            else:
                                if idx >= mem[(32 * arg6.length) + 224] - 1:
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10624 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _10752 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10752 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10752 + 36] = _10255
                                    mem[_10752 + 68] = 0
                                    mem[_10752 + 100] = this.address
                                    mem[_10752 + 132] = 128
                                    mem[_10752 + 164] = mem[_10752]
                                    s = 0
                                    while s < mem[_10752]:
                                        mem[_10752 + s + 196] = mem[_10752 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10752] % 32:
                                        require ext_code.size(address(_10624))
                                        call address(_10624).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10255, 0, address(this.address), 128, mem[_10752 + 164 len mem[_10752] + 32]
                                    else:
                                        mem[floor32(mem[_10752]) + _10752 + 196] = mem[floor32(mem[_10752]) + _10752 + -(mem[_10752] % 32) + 228 len mem[_10752] % 32]
                                        require ext_code.size(address(_10624))
                                        call address(_10624).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10255, 0, address(this.address), 128, mem[_10752], mem[_10752 + 196 len floor32(mem[_10752]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * arg6.length) + 224]
                                    _10495 = mem[(32 * idx + 1) + (32 * arg6.length) + 256]
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10751 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _10985 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10985 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10985 + 36] = _10255
                                    mem[_10985 + 68] = 0
                                    mem[_10985 + 100] = address(_10495)
                                    mem[_10985 + 132] = 128
                                    mem[_10985 + 164] = mem[_10985]
                                    s = 0
                                    while s < mem[_10985]:
                                        mem[_10985 + s + 196] = mem[_10985 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10985] % 32:
                                        require ext_code.size(address(_10751))
                                        call address(_10751).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10255, 0, address(_10495), 128, mem[_10985 + 164 len mem[_10985] + 32]
                                    else:
                                        mem[floor32(mem[_10985]) + _10985 + 196] = mem[floor32(mem[_10985]) + _10985 + -(mem[_10985] % 32) + 228 len mem[_10985] % 32]
                                        require ext_code.size(address(_10751))
                                        call address(_10751).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10255, 0, address(_10495), 128, mem[_10985], mem[_10985 + 196 len floor32(mem[_10985]) + 32]
                        else:
                            if not mem[(32 * idx + 1) + (32 * arg6.length) + 172 len 20]:
                                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                            require idx + 1 < mem[(32 * arg6.length) + 288]
                            _10256 = mem[(32 * idx + 1) + (32 * arg6.length) + 320]
                            if mem[(32 * idx) + (32 * arg6.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg6.length) + 172 len 20]:
                                if idx >= mem[(32 * arg6.length) + 224] - 1:
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10626 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _10754 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10754 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10754 + 36] = 0
                                    mem[_10754 + 68] = _10256
                                    mem[_10754 + 100] = this.address
                                    mem[_10754 + 132] = 128
                                    mem[_10754 + 164] = mem[_10754]
                                    s = 0
                                    while s < mem[_10754]:
                                        mem[_10754 + s + 196] = mem[_10754 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10754] % 32:
                                        require ext_code.size(address(_10626))
                                        call address(_10626).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10256, address(this.address), 128, mem[_10754 + 164 len mem[_10754] + 32]
                                    else:
                                        mem[floor32(mem[_10754]) + _10754 + 196] = mem[floor32(mem[_10754]) + _10754 + -(mem[_10754] % 32) + 228 len mem[_10754] % 32]
                                        require ext_code.size(address(_10626))
                                        call address(_10626).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10256, address(this.address), 128, mem[_10754], mem[_10754 + 196 len floor32(mem[_10754]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * arg6.length) + 224]
                                    _10497 = mem[(32 * idx + 1) + (32 * arg6.length) + 256]
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10753 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _10989 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10989 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10989 + 36] = 0
                                    mem[_10989 + 68] = _10256
                                    mem[_10989 + 100] = address(_10497)
                                    mem[_10989 + 132] = 128
                                    mem[_10989 + 164] = mem[_10989]
                                    s = 0
                                    while s < mem[_10989]:
                                        mem[_10989 + s + 196] = mem[_10989 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10989] % 32:
                                        require ext_code.size(address(_10753))
                                        call address(_10753).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10256, address(_10497), 128, mem[_10989 + 164 len mem[_10989] + 32]
                                    else:
                                        mem[floor32(mem[_10989]) + _10989 + 196] = mem[floor32(mem[_10989]) + _10989 + -(mem[_10989] % 32) + 228 len mem[_10989] % 32]
                                        require ext_code.size(address(_10753))
                                        call address(_10753).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10256, address(_10497), 128, mem[_10989], mem[_10989 + 196 len floor32(mem[_10989]) + 32]
                            else:
                                if idx >= mem[(32 * arg6.length) + 224] - 1:
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10628 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _10756 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10756 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10756 + 36] = _10256
                                    mem[_10756 + 68] = 0
                                    mem[_10756 + 100] = this.address
                                    mem[_10756 + 132] = 128
                                    mem[_10756 + 164] = mem[_10756]
                                    s = 0
                                    while s < mem[_10756]:
                                        mem[_10756 + s + 196] = mem[_10756 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10756] % 32:
                                        require ext_code.size(address(_10628))
                                        call address(_10628).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10256, 0, address(this.address), 128, mem[_10756 + 164 len mem[_10756] + 32]
                                    else:
                                        mem[floor32(mem[_10756]) + _10756 + 196] = mem[floor32(mem[_10756]) + _10756 + -(mem[_10756] % 32) + 228 len mem[_10756] % 32]
                                        require ext_code.size(address(_10628))
                                        call address(_10628).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10256, 0, address(this.address), 128, mem[_10756], mem[_10756 + 196 len floor32(mem[_10756]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * arg6.length) + 224]
                                    _10499 = mem[(32 * idx + 1) + (32 * arg6.length) + 256]
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10755 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _10993 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10993 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10993 + 36] = _10256
                                    mem[_10993 + 68] = 0
                                    mem[_10993 + 100] = address(_10499)
                                    mem[_10993 + 132] = 128
                                    mem[_10993 + 164] = mem[_10993]
                                    s = 0
                                    while s < mem[_10993]:
                                        mem[_10993 + s + 196] = mem[_10993 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10993] % 32:
                                        require ext_code.size(address(_10755))
                                        call address(_10755).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10256, 0, address(_10499), 128, mem[_10993 + 164 len mem[_10993] + 32]
                                    else:
                                        mem[floor32(mem[_10993]) + _10993 + 196] = mem[floor32(mem[_10993]) + _10993 + -(mem[_10993] % 32) + 228 len mem[_10993] % 32]
                                        require ext_code.size(address(_10755))
                                        call address(_10755).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10256, 0, address(_10499), 128, mem[_10993], mem[_10993 + 196 len floor32(mem[_10993]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
            else:
                mem[64] = _4212 + ceil32(return_data.size) + 133
                mem[_4212 + 132] = return_data.size
                mem[_4212 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                32,
                                36,
                                0x595472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[_4212 + ceil32(return_data.size) + 237 len 28]
                if not return_data.size:
                    _10003 = mem[(32 * arg6.length) + 224]
                    idx = 0
                    while idx < _10003:
                        require idx < mem[(32 * arg6.length) + 128]
                        require idx + 1 < mem[(32 * arg6.length) + 128]
                        if mem[(32 * idx) + (32 * arg6.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg6.length) + 172 len 20]:
                            revert with 0, 32, 35, 0x7350616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                        if mem[(32 * idx) + (32 * arg6.length) + 172 len 20] < mem[(32 * idx + 1) + (32 * arg6.length) + 172 len 20]:
                            if not mem[(32 * idx) + (32 * arg6.length) + 172 len 20]:
                                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                            require idx + 1 < mem[(32 * arg6.length) + 288]
                            _10257 = mem[(32 * idx + 1) + (32 * arg6.length) + 320]
                            if mem[(32 * idx) + (32 * arg6.length) + 172 len 20] == mem[(32 * idx) + (32 * arg6.length) + 172 len 20]:
                                if idx >= mem[(32 * arg6.length) + 224] - 1:
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10630 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _10758 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10758 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10758 + 36] = 0
                                    mem[_10758 + 68] = _10257
                                    mem[_10758 + 100] = this.address
                                    mem[_10758 + 132] = 128
                                    mem[_10758 + 164] = mem[_10758]
                                    s = 0
                                    while s < mem[_10758]:
                                        mem[_10758 + s + 196] = mem[_10758 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10758] % 32:
                                        require ext_code.size(address(_10630))
                                        call address(_10630).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10257, address(this.address), 128, mem[_10758 + 164 len mem[_10758] + 32]
                                    else:
                                        mem[floor32(mem[_10758]) + _10758 + 196] = mem[floor32(mem[_10758]) + _10758 + -(mem[_10758] % 32) + 228 len mem[_10758] % 32]
                                        require ext_code.size(address(_10630))
                                        call address(_10630).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10257, address(this.address), 128, mem[_10758], mem[_10758 + 196 len floor32(mem[_10758]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * arg6.length) + 224]
                                    _10501 = mem[(32 * idx + 1) + (32 * arg6.length) + 256]
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10757 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _10997 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10997 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10997 + 36] = 0
                                    mem[_10997 + 68] = _10257
                                    mem[_10997 + 100] = address(_10501)
                                    mem[_10997 + 132] = 128
                                    mem[_10997 + 164] = mem[_10997]
                                    s = 0
                                    while s < mem[_10997]:
                                        mem[_10997 + s + 196] = mem[_10997 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10997] % 32:
                                        require ext_code.size(address(_10757))
                                        call address(_10757).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10257, address(_10501), 128, mem[_10997 + 164 len mem[_10997] + 32]
                                    else:
                                        mem[floor32(mem[_10997]) + _10997 + 196] = mem[floor32(mem[_10997]) + _10997 + -(mem[_10997] % 32) + 228 len mem[_10997] % 32]
                                        require ext_code.size(address(_10757))
                                        call address(_10757).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10257, address(_10501), 128, mem[_10997], mem[_10997 + 196 len floor32(mem[_10997]) + 32]
                            else:
                                if idx >= mem[(32 * arg6.length) + 224] - 1:
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10632 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _10760 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10760 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10760 + 36] = _10257
                                    mem[_10760 + 68] = 0
                                    mem[_10760 + 100] = this.address
                                    mem[_10760 + 132] = 128
                                    mem[_10760 + 164] = mem[_10760]
                                    s = 0
                                    while s < mem[_10760]:
                                        mem[_10760 + s + 196] = mem[_10760 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10760] % 32:
                                        require ext_code.size(address(_10632))
                                        call address(_10632).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10257, 0, address(this.address), 128, mem[_10760 + 164 len mem[_10760] + 32]
                                    else:
                                        mem[floor32(mem[_10760]) + _10760 + 196] = mem[floor32(mem[_10760]) + _10760 + -(mem[_10760] % 32) + 228 len mem[_10760] % 32]
                                        require ext_code.size(address(_10632))
                                        call address(_10632).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10257, 0, address(this.address), 128, mem[_10760], mem[_10760 + 196 len floor32(mem[_10760]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * arg6.length) + 224]
                                    _10503 = mem[(32 * idx + 1) + (32 * arg6.length) + 256]
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10759 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _11001 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_11001 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_11001 + 36] = _10257
                                    mem[_11001 + 68] = 0
                                    mem[_11001 + 100] = address(_10503)
                                    mem[_11001 + 132] = 128
                                    mem[_11001 + 164] = mem[_11001]
                                    s = 0
                                    while s < mem[_11001]:
                                        mem[_11001 + s + 196] = mem[_11001 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_11001] % 32:
                                        require ext_code.size(address(_10759))
                                        call address(_10759).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10257, 0, address(_10503), 128, mem[_11001 + 164 len mem[_11001] + 32]
                                    else:
                                        mem[floor32(mem[_11001]) + _11001 + 196] = mem[floor32(mem[_11001]) + _11001 + -(mem[_11001] % 32) + 228 len mem[_11001] % 32]
                                        require ext_code.size(address(_10759))
                                        call address(_10759).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10257, 0, address(_10503), 128, mem[_11001], mem[_11001 + 196 len floor32(mem[_11001]) + 32]
                        else:
                            if not mem[(32 * idx + 1) + (32 * arg6.length) + 172 len 20]:
                                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                            require idx + 1 < mem[(32 * arg6.length) + 288]
                            _10258 = mem[(32 * idx + 1) + (32 * arg6.length) + 320]
                            if mem[(32 * idx) + (32 * arg6.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg6.length) + 172 len 20]:
                                if idx >= mem[(32 * arg6.length) + 224] - 1:
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10634 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _10762 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10762 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10762 + 36] = 0
                                    mem[_10762 + 68] = _10258
                                    mem[_10762 + 100] = this.address
                                    mem[_10762 + 132] = 128
                                    mem[_10762 + 164] = mem[_10762]
                                    s = 0
                                    while s < mem[_10762]:
                                        mem[_10762 + s + 196] = mem[_10762 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10762] % 32:
                                        require ext_code.size(address(_10634))
                                        call address(_10634).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10258, address(this.address), 128, mem[_10762 + 164 len mem[_10762] + 32]
                                    else:
                                        mem[floor32(mem[_10762]) + _10762 + 196] = mem[floor32(mem[_10762]) + _10762 + -(mem[_10762] % 32) + 228 len mem[_10762] % 32]
                                        require ext_code.size(address(_10634))
                                        call address(_10634).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10258, address(this.address), 128, mem[_10762], mem[_10762 + 196 len floor32(mem[_10762]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * arg6.length) + 224]
                                    _10505 = mem[(32 * idx + 1) + (32 * arg6.length) + 256]
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10761 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _11005 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_11005 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_11005 + 36] = 0
                                    mem[_11005 + 68] = _10258
                                    mem[_11005 + 100] = address(_10505)
                                    mem[_11005 + 132] = 128
                                    mem[_11005 + 164] = mem[_11005]
                                    s = 0
                                    while s < mem[_11005]:
                                        mem[_11005 + s + 196] = mem[_11005 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_11005] % 32:
                                        require ext_code.size(address(_10761))
                                        call address(_10761).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10258, address(_10505), 128, mem[_11005 + 164 len mem[_11005] + 32]
                                    else:
                                        mem[floor32(mem[_11005]) + _11005 + 196] = mem[floor32(mem[_11005]) + _11005 + -(mem[_11005] % 32) + 228 len mem[_11005] % 32]
                                        require ext_code.size(address(_10761))
                                        call address(_10761).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10258, address(_10505), 128, mem[_11005], mem[_11005 + 196 len floor32(mem[_11005]) + 32]
                            else:
                                if idx >= mem[(32 * arg6.length) + 224] - 1:
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10636 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _10764 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10764 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10764 + 36] = _10258
                                    mem[_10764 + 68] = 0
                                    mem[_10764 + 100] = this.address
                                    mem[_10764 + 132] = 128
                                    mem[_10764 + 164] = mem[_10764]
                                    s = 0
                                    while s < mem[_10764]:
                                        mem[_10764 + s + 196] = mem[_10764 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10764] % 32:
                                        require ext_code.size(address(_10636))
                                        call address(_10636).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10258, 0, address(this.address), 128, mem[_10764 + 164 len mem[_10764] + 32]
                                    else:
                                        mem[floor32(mem[_10764]) + _10764 + 196] = mem[floor32(mem[_10764]) + _10764 + -(mem[_10764] % 32) + 228 len mem[_10764] % 32]
                                        require ext_code.size(address(_10636))
                                        call address(_10636).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10258, 0, address(this.address), 128, mem[_10764], mem[_10764 + 196 len floor32(mem[_10764]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * arg6.length) + 224]
                                    _10507 = mem[(32 * idx + 1) + (32 * arg6.length) + 256]
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10763 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _11009 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_11009 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_11009 + 36] = _10258
                                    mem[_11009 + 68] = 0
                                    mem[_11009 + 100] = address(_10507)
                                    mem[_11009 + 132] = 128
                                    mem[_11009 + 164] = mem[_11009]
                                    s = 0
                                    while s < mem[_11009]:
                                        mem[_11009 + s + 196] = mem[_11009 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_11009] % 32:
                                        require ext_code.size(address(_10763))
                                        call address(_10763).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10258, 0, address(_10507), 128, mem[_11009 + 164 len mem[_11009] + 32]
                                    else:
                                        mem[floor32(mem[_11009]) + _11009 + 196] = mem[floor32(mem[_11009]) + _11009 + -(mem[_11009] % 32) + 228 len mem[_11009] % 32]
                                        require ext_code.size(address(_10763))
                                        call address(_10763).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10258, 0, address(_10507), 128, mem[_11009], mem[_11009 + 196 len floor32(mem[_11009]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                else:
                    require return_data.size >= 32
                    if not mem[_4212 + 164]:
                        revert with 0, 
                                    32,
                                    36,
                                    0x595472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                    mem[_4212 + ceil32(return_data.size) + 237 len 28]
                    _10004 = mem[(32 * arg6.length) + 224]
                    idx = 0
                    while idx < _10004:
                        require idx < mem[(32 * arg6.length) + 128]
                        require idx + 1 < mem[(32 * arg6.length) + 128]
                        if mem[(32 * idx) + (32 * arg6.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg6.length) + 172 len 20]:
                            revert with 0, 32, 35, 0x7350616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                        if mem[(32 * idx) + (32 * arg6.length) + 172 len 20] < mem[(32 * idx + 1) + (32 * arg6.length) + 172 len 20]:
                            if not mem[(32 * idx) + (32 * arg6.length) + 172 len 20]:
                                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                            require idx + 1 < mem[(32 * arg6.length) + 288]
                            _10259 = mem[(32 * idx + 1) + (32 * arg6.length) + 320]
                            if mem[(32 * idx) + (32 * arg6.length) + 172 len 20] == mem[(32 * idx) + (32 * arg6.length) + 172 len 20]:
                                if idx >= mem[(32 * arg6.length) + 224] - 1:
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10638 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _10766 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10766 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10766 + 36] = 0
                                    mem[_10766 + 68] = _10259
                                    mem[_10766 + 100] = this.address
                                    mem[_10766 + 132] = 128
                                    mem[_10766 + 164] = mem[_10766]
                                    s = 0
                                    while s < mem[_10766]:
                                        mem[_10766 + s + 196] = mem[_10766 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10766] % 32:
                                        require ext_code.size(address(_10638))
                                        call address(_10638).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10259, address(this.address), 128, mem[_10766 + 164 len mem[_10766] + 32]
                                    else:
                                        mem[floor32(mem[_10766]) + _10766 + 196] = mem[floor32(mem[_10766]) + _10766 + -(mem[_10766] % 32) + 228 len mem[_10766] % 32]
                                        require ext_code.size(address(_10638))
                                        call address(_10638).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10259, address(this.address), 128, mem[_10766], mem[_10766 + 196 len floor32(mem[_10766]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * arg6.length) + 224]
                                    _10509 = mem[(32 * idx + 1) + (32 * arg6.length) + 256]
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10765 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _11013 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_11013 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_11013 + 36] = 0
                                    mem[_11013 + 68] = _10259
                                    mem[_11013 + 100] = address(_10509)
                                    mem[_11013 + 132] = 128
                                    mem[_11013 + 164] = mem[_11013]
                                    s = 0
                                    while s < mem[_11013]:
                                        mem[_11013 + s + 196] = mem[_11013 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_11013] % 32:
                                        require ext_code.size(address(_10765))
                                        call address(_10765).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10259, address(_10509), 128, mem[_11013 + 164 len mem[_11013] + 32]
                                    else:
                                        mem[floor32(mem[_11013]) + _11013 + 196] = mem[floor32(mem[_11013]) + _11013 + -(mem[_11013] % 32) + 228 len mem[_11013] % 32]
                                        require ext_code.size(address(_10765))
                                        call address(_10765).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10259, address(_10509), 128, mem[_11013], mem[_11013 + 196 len floor32(mem[_11013]) + 32]
                            else:
                                if idx >= mem[(32 * arg6.length) + 224] - 1:
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10640 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _10768 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10768 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10768 + 36] = _10259
                                    mem[_10768 + 68] = 0
                                    mem[_10768 + 100] = this.address
                                    mem[_10768 + 132] = 128
                                    mem[_10768 + 164] = mem[_10768]
                                    s = 0
                                    while s < mem[_10768]:
                                        mem[_10768 + s + 196] = mem[_10768 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10768] % 32:
                                        require ext_code.size(address(_10640))
                                        call address(_10640).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10259, 0, address(this.address), 128, mem[_10768 + 164 len mem[_10768] + 32]
                                    else:
                                        mem[floor32(mem[_10768]) + _10768 + 196] = mem[floor32(mem[_10768]) + _10768 + -(mem[_10768] % 32) + 228 len mem[_10768] % 32]
                                        require ext_code.size(address(_10640))
                                        call address(_10640).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10259, 0, address(this.address), 128, mem[_10768], mem[_10768 + 196 len floor32(mem[_10768]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * arg6.length) + 224]
                                    _10511 = mem[(32 * idx + 1) + (32 * arg6.length) + 256]
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10767 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _11017 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_11017 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_11017 + 36] = _10259
                                    mem[_11017 + 68] = 0
                                    mem[_11017 + 100] = address(_10511)
                                    mem[_11017 + 132] = 128
                                    mem[_11017 + 164] = mem[_11017]
                                    s = 0
                                    while s < mem[_11017]:
                                        mem[_11017 + s + 196] = mem[_11017 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_11017] % 32:
                                        require ext_code.size(address(_10767))
                                        call address(_10767).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10259, 0, address(_10511), 128, mem[_11017 + 164 len mem[_11017] + 32]
                                    else:
                                        mem[floor32(mem[_11017]) + _11017 + 196] = mem[floor32(mem[_11017]) + _11017 + -(mem[_11017] % 32) + 228 len mem[_11017] % 32]
                                        require ext_code.size(address(_10767))
                                        call address(_10767).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10259, 0, address(_10511), 128, mem[_11017], mem[_11017 + 196 len floor32(mem[_11017]) + 32]
                        else:
                            if not mem[(32 * idx + 1) + (32 * arg6.length) + 172 len 20]:
                                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                            require idx + 1 < mem[(32 * arg6.length) + 288]
                            _10260 = mem[(32 * idx + 1) + (32 * arg6.length) + 320]
                            if mem[(32 * idx) + (32 * arg6.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg6.length) + 172 len 20]:
                                if idx >= mem[(32 * arg6.length) + 224] - 1:
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10642 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _10770 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10770 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10770 + 36] = 0
                                    mem[_10770 + 68] = _10260
                                    mem[_10770 + 100] = this.address
                                    mem[_10770 + 132] = 128
                                    mem[_10770 + 164] = mem[_10770]
                                    s = 0
                                    while s < mem[_10770]:
                                        mem[_10770 + s + 196] = mem[_10770 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10770] % 32:
                                        require ext_code.size(address(_10642))
                                        call address(_10642).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10260, address(this.address), 128, mem[_10770 + 164 len mem[_10770] + 32]
                                    else:
                                        mem[floor32(mem[_10770]) + _10770 + 196] = mem[floor32(mem[_10770]) + _10770 + -(mem[_10770] % 32) + 228 len mem[_10770] % 32]
                                        require ext_code.size(address(_10642))
                                        call address(_10642).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10260, address(this.address), 128, mem[_10770], mem[_10770 + 196 len floor32(mem[_10770]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * arg6.length) + 224]
                                    _10513 = mem[(32 * idx + 1) + (32 * arg6.length) + 256]
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10769 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _11021 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_11021 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_11021 + 36] = 0
                                    mem[_11021 + 68] = _10260
                                    mem[_11021 + 100] = address(_10513)
                                    mem[_11021 + 132] = 128
                                    mem[_11021 + 164] = mem[_11021]
                                    s = 0
                                    while s < mem[_11021]:
                                        mem[_11021 + s + 196] = mem[_11021 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_11021] % 32:
                                        require ext_code.size(address(_10769))
                                        call address(_10769).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10260, address(_10513), 128, mem[_11021 + 164 len mem[_11021] + 32]
                                    else:
                                        mem[floor32(mem[_11021]) + _11021 + 196] = mem[floor32(mem[_11021]) + _11021 + -(mem[_11021] % 32) + 228 len mem[_11021] % 32]
                                        require ext_code.size(address(_10769))
                                        call address(_10769).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _10260, address(_10513), 128, mem[_11021], mem[_11021 + 196 len floor32(mem[_11021]) + 32]
                            else:
                                if idx >= mem[(32 * arg6.length) + 224] - 1:
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10644 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _10772 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10772 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10772 + 36] = _10260
                                    mem[_10772 + 68] = 0
                                    mem[_10772 + 100] = this.address
                                    mem[_10772 + 132] = 128
                                    mem[_10772 + 164] = mem[_10772]
                                    s = 0
                                    while s < mem[_10772]:
                                        mem[_10772 + s + 196] = mem[_10772 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10772] % 32:
                                        require ext_code.size(address(_10644))
                                        call address(_10644).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10260, 0, address(this.address), 128, mem[_10772 + 164 len mem[_10772] + 32]
                                    else:
                                        mem[floor32(mem[_10772]) + _10772 + 196] = mem[floor32(mem[_10772]) + _10772 + -(mem[_10772] % 32) + 228 len mem[_10772] % 32]
                                        require ext_code.size(address(_10644))
                                        call address(_10644).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10260, 0, address(this.address), 128, mem[_10772], mem[_10772 + 196 len floor32(mem[_10772]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * arg6.length) + 224]
                                    _10515 = mem[(32 * idx + 1) + (32 * arg6.length) + 256]
                                    require idx < mem[(32 * arg6.length) + 224]
                                    _10771 = mem[(32 * idx) + (32 * arg6.length) + 256]
                                    _11025 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_11025 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_11025 + 36] = _10260
                                    mem[_11025 + 68] = 0
                                    mem[_11025 + 100] = address(_10515)
                                    mem[_11025 + 132] = 128
                                    mem[_11025 + 164] = mem[_11025]
                                    s = 0
                                    while s < mem[_11025]:
                                        mem[_11025 + s + 196] = mem[_11025 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_11025] % 32:
                                        require ext_code.size(address(_10771))
                                        call address(_10771).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10260, 0, address(_10515), 128, mem[_11025 + 164 len mem[_11025] + 32]
                                    else:
                                        mem[floor32(mem[_11025]) + _11025 + 196] = mem[floor32(mem[_11025]) + _11025 + -(mem[_11025] % 32) + 228 len mem[_11025] % 32]
                                        require ext_code.size(address(_10771))
                                        call address(_10771).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _10260, 0, address(_10515), 128, mem[_11025], mem[_11025 + 196 len floor32(mem[_11025]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
    return 1
}



}
