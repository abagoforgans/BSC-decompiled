contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;

function workers(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
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

function addWorker(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, '_worker must be defined'
    stor1[address(arg1)] = 1
}

function removeWorker(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, '_worker must be defined'
    stor1[address(arg1)] = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function release(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg2:
        if not arg1:
            if eth.balance(this.address) <= 0:
                revert with 0, 'Balance  empty'
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                revert with 0, 'Balance  empty'
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    else:
        if not arg1:
            if eth.balance(this.address) <= 0:
                revert with 0, 'Balance  empty'
            call arg2 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                revert with 0, 'Balance  empty'
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg2), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
}

function batchSameValue(address arg1, uint256 arg2, address[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = 0
    if stor1[address(msg.sender)]:
        if arg2 <= 0:
            revert with 0, 'Transfer failed'
        require arg3.length >= 1
        if not arg2:
            if not arg1:
                if msg.value < 0:
                    revert with 0, 'ETH transfer value not enough'
                idx = 0
                while idx < arg3.length:
                    require idx < arg3.length
                    call mem[(32 * idx) + 140 len 20] with:
                       value arg2 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                require ext_code.size(arg1)
                staticcall arg1.0xdd62ed3e with:
                        gas gas_remaining wei
                       args msg.sender, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0:
                    revert with 0, 'Token allowance not enough'
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0:
                    revert with 0, 'Token balance not enough'
                idx = 0
                while idx < arg3.length:
                    require idx < arg3.length
                    _167 = mem[(32 * idx) + 128]
                    mem[(32 * arg3.length) + 132] = msg.sender
                    mem[(32 * arg3.length) + 164] = address(_167)
                    mem[(32 * arg3.length) + 196] = arg2
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(_167), arg2
                    mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Transfer failed'
                    idx = idx + 1
                    continue 
        else:
            require arg2
            if arg2 * arg3.length / arg2 != arg3.length:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg3.length) + 229 len 31]
            if not arg1:
                if msg.value < arg2 * arg3.length:
                    revert with 0, 'ETH transfer value not enough'
                idx = 0
                while idx < arg3.length:
                    require idx < arg3.length
                    call mem[(32 * idx) + 140 len 20] with:
                       value arg2 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                require ext_code.size(arg1)
                staticcall arg1.0xdd62ed3e with:
                        gas gas_remaining wei
                       args msg.sender, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < arg2 * arg3.length:
                    revert with 0, 'Token allowance not enough'
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < arg2 * arg3.length:
                    revert with 0, 'Token balance not enough'
                idx = 0
                while idx < arg3.length:
                    require idx < arg3.length
                    _161 = mem[(32 * idx) + 128]
                    mem[(32 * arg3.length) + 132] = msg.sender
                    mem[(32 * arg3.length) + 164] = address(_161)
                    mem[(32 * arg3.length) + 196] = arg2
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(_161), arg2
                    mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Transfer failed'
                    idx = idx + 1
                    continue 
    else:
        if owner != msg.sender:
            revert with 0, 'only hard worker can call this'
        if arg2 <= 0:
            revert with 0, 'Transfer failed'
        require arg3.length >= 1
        if not arg2:
            if not arg1:
                if msg.value < 0:
                    revert with 0, 'ETH transfer value not enough'
                idx = 0
                while idx < arg3.length:
                    require idx < arg3.length
                    call mem[(32 * idx) + 140 len 20] with:
                       value arg2 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                require ext_code.size(arg1)
                staticcall arg1.0xdd62ed3e with:
                        gas gas_remaining wei
                       args msg.sender, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0:
                    revert with 0, 'Token allowance not enough'
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0:
                    revert with 0, 'Token balance not enough'
                idx = 0
                while idx < arg3.length:
                    require idx < arg3.length
                    _179 = mem[(32 * idx) + 128]
                    mem[(32 * arg3.length) + 132] = msg.sender
                    mem[(32 * arg3.length) + 164] = address(_179)
                    mem[(32 * arg3.length) + 196] = arg2
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(_179), arg2
                    mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Transfer failed'
                    idx = idx + 1
                    continue 
        else:
            require arg2
            if arg2 * arg3.length / arg2 != arg3.length:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg3.length) + 229 len 31]
            if not arg1:
                if msg.value < arg2 * arg3.length:
                    revert with 0, 'ETH transfer value not enough'
                idx = 0
                while idx < arg3.length:
                    require idx < arg3.length
                    call mem[(32 * idx) + 140 len 20] with:
                       value arg2 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                require ext_code.size(arg1)
                staticcall arg1.0xdd62ed3e with:
                        gas gas_remaining wei
                       args msg.sender, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < arg2 * arg3.length:
                    revert with 0, 'Token allowance not enough'
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < arg2 * arg3.length:
                    revert with 0, 'Token balance not enough'
                idx = 0
                while idx < arg3.length:
                    require idx < arg3.length
                    _173 = mem[(32 * idx) + 128]
                    mem[(32 * arg3.length) + 132] = msg.sender
                    mem[(32 * arg3.length) + 164] = address(_173)
                    mem[(32 * arg3.length) + 196] = arg2
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(_173), arg2
                    mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Transfer failed'
                    idx = idx + 1
                    continue 
    return 1
}

function batch(address arg1, uint256[] arg2, address[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0
    if stor1[address(msg.sender)]:
        require arg2.length == arg3.length
        require arg3.length >= 1
        idx = 0
        s = 0
        while idx < arg3.length:
            require idx < arg2.length
            if s + mem[(32 * idx) + 128] < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = s + mem[(32 * idx) + 128]
            continue 
        if not arg1:
            if msg.value < s * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length:
                revert with 0, 'ETH transfer value not enough'
            idx = 0
            while idx < arg3.length:
                require idx < arg3.length
                require idx < arg2.length
                call mem[(32 * idx) + (32 * arg2.length) + 172 len 20] with:
                   value mem[(32 * idx) + 128] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            require ext_code.size(arg1)
            staticcall arg1.0xdd62ed3e with:
                    gas gas_remaining wei
                   args msg.sender, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < s * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length:
                revert with 0, 'Token allowance not enough'
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < s * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length:
                revert with 0, 'Token balance not enough'
            idx = 0
            while idx < arg3.length:
                require idx < arg3.length
                _176 = mem[(32 * idx) + (32 * arg2.length) + 160]
                require idx < arg2.length
                _186 = mem[(32 * idx) + 128]
                mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
                mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_176)
                mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _186
                require ext_code.size(arg1)
                call arg1.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(_176), _186
                mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                continue 
    else:
        if owner != msg.sender:
            revert with 0, 'only hard worker can call this'
        require arg2.length == arg3.length
        require arg3.length >= 1
        idx = 0
        s = 0
        while idx < arg3.length:
            require idx < arg2.length
            if s + mem[(32 * idx) + 128] < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = s + mem[(32 * idx) + 128]
            continue 
        if not arg1:
            if msg.value < s * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length:
                revert with 0, 'ETH transfer value not enough'
            idx = 0
            while idx < arg3.length:
                require idx < arg3.length
                require idx < arg2.length
                call mem[(32 * idx) + (32 * arg2.length) + 172 len 20] with:
                   value mem[(32 * idx) + 128] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            require ext_code.size(arg1)
            staticcall arg1.0xdd62ed3e with:
                    gas gas_remaining wei
                   args msg.sender, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < s * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length:
                revert with 0, 'Token allowance not enough'
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < s * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length:
                revert with 0, 'Token balance not enough'
            idx = 0
            while idx < arg3.length:
                require idx < arg3.length
                _180 = mem[(32 * idx) + (32 * arg2.length) + 160]
                require idx < arg2.length
                _196 = mem[(32 * idx) + 128]
                mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
                mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_180)
                mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _196
                require ext_code.size(arg1)
                call arg1.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(_180), _196
                mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                continue 
    return 1
}



}
