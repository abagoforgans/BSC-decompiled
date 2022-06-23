contract main {




// =====================  Runtime code  =====================


#
#  - sub_6935084e(?)
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
                    0x534f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
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

function sub_59915d20(?) {
    require calldata.size - 4 >= 128
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = arg4.length
    mem[(32 * arg2.length) + (32 * arg3.length) + 192 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    if arg2.length < 2:
        revert with 0, 'Library: INVALID_PATH'
    require arg2.length <= test266151307()
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192] = arg2.length
    if not arg2.length:
        require 0 < arg2.length
        mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = arg1
        idx = 0
        while idx < arg2.length - 1:
            require idx < mem[(32 * arg2.length) + 128]
            require idx < arg2.length
            _386 = mem[(32 * idx) + 128]
            require idx + 1 < arg2.length
            _393 = mem[(32 * idx + 1) + 128]
            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 
                            32,
                            33,
                            0x544c69627261727920536f72743a204944454e544943414c5f4144445245535345,
                            mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 325 len 31]
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'Library Sort: ZERO_ADDRESS'
                require ext_code.size(mem[(32 * idx) + (32 * arg2.length) + 172 len 20])
                staticcall mem[(32 * idx) + (32 * arg2.length) + 172 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                require idx < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                if mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] <= 0:
                    revert with 0, 
                                32,
                                34,
                                0xfe4c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 326 len 30]
                if address(_386) == address(_386):
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                    if -mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] + 10000 > 10000:
                        revert with 0, 'ds-math-sub-underflow'
                    if not -mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] + 10000:
                        if Mask(112, 0, ext_call.return_data[32]):
                            require Mask(112, 0, ext_call.return_data[32])
                            if 0 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require 10000 * Mask(112, 0, ext_call.return_data[0])
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                        mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                    else:
                        require -mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] + 10000
                        if (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) / -mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] + 10000 != mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                            require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                            mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                            require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                            mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                    if -mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] + 10000 > 10000:
                        revert with 0, 'ds-math-sub-underflow'
                    if not -mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] + 10000:
                        if Mask(112, 0, ext_call.return_data[0]):
                            require Mask(112, 0, ext_call.return_data[0])
                            if 0 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require 10000 * Mask(112, 0, ext_call.return_data[32])
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                        mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                    else:
                        require -mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] + 10000
                        if (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) / -mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] + 10000 != mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                            require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                            mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                            require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                            mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
            else:
                if not mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'Library Sort: ZERO_ADDRESS'
                require ext_code.size(mem[(32 * idx) + (32 * arg2.length) + 172 len 20])
                staticcall mem[(32 * idx) + (32 * arg2.length) + 172 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                require idx < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                if mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] <= 0:
                    revert with 0, 
                                32,
                                34,
                                0xfe4c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 326 len 30]
                if address(_386) == address(_393):
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                    if -mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] + 10000 > 10000:
                        revert with 0, 'ds-math-sub-underflow'
                    if not -mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] + 10000:
                        if Mask(112, 0, ext_call.return_data[32]):
                            require Mask(112, 0, ext_call.return_data[32])
                            if 0 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require 10000 * Mask(112, 0, ext_call.return_data[0])
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                        mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                    else:
                        require -mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] + 10000
                        if (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) / -mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] + 10000 != mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                            require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                            mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                            require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                            mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                    if -mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] + 10000 > 10000:
                        revert with 0, 'ds-math-sub-underflow'
                    if not -mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] + 10000:
                        if Mask(112, 0, ext_call.return_data[0]):
                            require Mask(112, 0, ext_call.return_data[0])
                            if 0 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require 10000 * Mask(112, 0, ext_call.return_data[32])
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                        mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                    else:
                        require -mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] + 10000
                        if (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) / -mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] + 10000 != mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                            require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                            mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                            require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                            mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
            idx = idx + 1
            continue 
    else:
        mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
        require 0 < arg2.length
        mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = arg1
        idx = 0
        while idx < arg2.length - 1:
            require idx < mem[(32 * arg2.length) + 128]
            require idx < arg2.length
            _391 = mem[(32 * idx) + 128]
            require idx + 1 < arg2.length
            _394 = mem[(32 * idx + 1) + 128]
            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 
                            32,
                            33,
                            0x544c69627261727920536f72743a204944454e544943414c5f4144445245535345,
                            mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 325 len 31]
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'Library Sort: ZERO_ADDRESS'
                require ext_code.size(mem[(32 * idx) + (32 * arg2.length) + 172 len 20])
                staticcall mem[(32 * idx) + (32 * arg2.length) + 172 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                require idx < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                if mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] <= 0:
                    revert with 0, 
                                32,
                                34,
                                0xfe4c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 326 len 30]
                if address(_391) == address(_391):
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                    if -mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] + 10000 > 10000:
                        revert with 0, 'ds-math-sub-underflow'
                    if not -mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] + 10000:
                        if Mask(112, 0, ext_call.return_data[32]):
                            require Mask(112, 0, ext_call.return_data[32])
                            if 0 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require 10000 * Mask(112, 0, ext_call.return_data[0])
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                        mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                    else:
                        require -mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] + 10000
                        if (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) / -mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] + 10000 != mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                            require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                            mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                            require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                            mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                    if -mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] + 10000 > 10000:
                        revert with 0, 'ds-math-sub-underflow'
                    if not -mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] + 10000:
                        if Mask(112, 0, ext_call.return_data[0]):
                            require Mask(112, 0, ext_call.return_data[0])
                            if 0 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require 10000 * Mask(112, 0, ext_call.return_data[32])
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                        mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                    else:
                        require -mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] + 10000
                        if (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) / -mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] + 10000 != mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                            require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                            mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                            require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                            mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
            else:
                if not mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'Library Sort: ZERO_ADDRESS'
                require ext_code.size(mem[(32 * idx) + (32 * arg2.length) + 172 len 20])
                staticcall mem[(32 * idx) + (32 * arg2.length) + 172 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                require idx < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                if mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] <= 0:
                    revert with 0, 
                                32,
                                34,
                                0xfe4c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 326 len 30]
                if address(_391) == address(_394):
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                    if -mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] + 10000 > 10000:
                        revert with 0, 'ds-math-sub-underflow'
                    if not -mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] + 10000:
                        if Mask(112, 0, ext_call.return_data[32]):
                            require Mask(112, 0, ext_call.return_data[32])
                            if 0 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require 10000 * Mask(112, 0, ext_call.return_data[0])
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                        mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                    else:
                        require -mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] + 10000
                        if (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) / -mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] + 10000 != mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                            require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                            mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                            require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                            mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                    if -mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] + 10000 > 10000:
                        revert with 0, 'ds-math-sub-underflow'
                    if not -mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] + 10000:
                        if Mask(112, 0, ext_call.return_data[0]):
                            require Mask(112, 0, ext_call.return_data[0])
                            if 0 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require 10000 * Mask(112, 0, ext_call.return_data[32])
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                        mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                    else:
                        require -mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] + 10000
                        if (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) / -mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] + 10000 != mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                            require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                            mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
                            require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
                            mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]) - (mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224])
            idx = idx + 1
            continue 
    mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 32
    mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]
    mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 288 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192])] = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192])]
    return 32, mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256 len (32 * mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192]) + 32], 
}

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 160
    require cd[(arg4 + 68)] <= 4294967296
    require cd[(arg4 + 68)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 68)] + 36)] <= 4294967296 and cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68 <= arg4.length + 36
    mem[96] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
    mem[128 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]] = call.data[arg4 + cd[(arg4 + 68)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]]
    require cd[(arg4 + 100)] <= 4294967296
    require cd[(arg4 + 100)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 100)] + 36)] <= 4294967296 and cd[(arg4 + 100)] + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 68 <= arg4.length + 36
    mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
    mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160 len 32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]] = call.data[arg4 + cd[(arg4 + 100)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]]
    require cd[(arg4 + 164)] <= 4294967296
    require cd[(arg4 + 164)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 164)] + 36)] <= 4294967296 and cd[(arg4 + 164)] + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 68 <= arg4.length + 36
    mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 160] = cd[(arg4 + cd[(arg4 + 164)] + 36)]
    mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192 len 32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]] = call.data[arg4 + cd[(arg4 + 164)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]]
    require ext_code.size(msg.sender)
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(msg.sender)
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(cd[(arg4 + 132)]))
    staticcall address(cd[(arg4 + 132)]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Sender not pair'
    if arg1 != this.address:
        revert with 0, 'Not sender'
    require 0 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
    mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 256] = arg2
    mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 288] = arg3
    emit 0x799dd76f: mem[140 len 20], cd[(arg4 + 36)], arg2, arg3
    if cd[(arg4 + cd[(arg4 + 68)] + 36)] < 2:
        revert with 0, 'Library: INVALID_PATH'
    require cd[(arg4 + cd[(arg4 + 68)] + 36)] <= test266151307()
    mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 192] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
    if not cd[(arg4 + cd[(arg4 + 68)] + 36)]:
        require 0 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
        mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] = cd[(arg4 + 36)]
        idx = 0
        while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1:
            require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
            require idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            _1425 = mem[(32 * idx) + 128]
            require idx + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            _1433 = mem[(32 * idx + 1) + 128]
            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 
                            32,
                            33,
                            0x544c69627261727920536f72743a204944454e544943414c5f4144445245535345,
                            mem[(64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 325 len 31]
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'Library Sort: ZERO_ADDRESS'
                require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20])
                staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[(64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 192]
                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 160]
                if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] <= 0:
                    revert with 0, 
                                32,
                                34,
                                0xfe4c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[(64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 326 len 30]
                if address(_1425) == address(_1425):
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                    if -mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] + 10000 > 10000:
                        revert with 0, 'ds-math-sub-underflow'
                    if not -mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] + 10000:
                        if Mask(112, 0, ext_call.return_data[32]):
                            require Mask(112, 0, ext_call.return_data[32])
                            if 0 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require 10000 * Mask(112, 0, ext_call.return_data[0])
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 192]
                        mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                    else:
                        require -mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] + 10000
                        if (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) / -mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] + 10000 != mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224])
                            require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 192]
                            mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224])
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224])
                            require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 192]
                            mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] = (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224])
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                    if -mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] + 10000 > 10000:
                        revert with 0, 'ds-math-sub-underflow'
                    if not -mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] + 10000:
                        if Mask(112, 0, ext_call.return_data[0]):
                            require Mask(112, 0, ext_call.return_data[0])
                            if 0 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require 10000 * Mask(112, 0, ext_call.return_data[32])
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 192]
                        mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                    else:
                        require -mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] + 10000
                        if (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) / -mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] + 10000 != mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224])
                            require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 192]
                            mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224])
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224])
                            require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 192]
                            mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] = (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224])
            else:
                if not mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'Library Sort: ZERO_ADDRESS'
                require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20])
                staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[(64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 192]
                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 160]
                if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] <= 0:
                    revert with 0, 
                                32,
                                34,
                                0xfe4c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[(64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 326 len 30]
                if address(_1425) == address(_1433):
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                    if -mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] + 10000 > 10000:
                        revert with 0, 'ds-math-sub-underflow'
                    if not -mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] + 10000:
                        if Mask(112, 0, ext_call.return_data[32]):
                            require Mask(112, 0, ext_call.return_data[32])
                            if 0 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require 10000 * Mask(112, 0, ext_call.return_data[0])
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 192]
                        mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                    else:
                        require -mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] + 10000
                        if (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) / -mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] + 10000 != mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224])
                            require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 192]
                            mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224])
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224])
                            require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 192]
                            mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] = (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224])
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                    if -mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] + 10000 > 10000:
                        revert with 0, 'ds-math-sub-underflow'
                    if not -mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] + 10000:
                        if Mask(112, 0, ext_call.return_data[0]):
                            require Mask(112, 0, ext_call.return_data[0])
                            if 0 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require 10000 * Mask(112, 0, ext_call.return_data[32])
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 192]
                        mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                    else:
                        require -mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] + 10000
                        if (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) / -mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] + 10000 != mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224])
                            require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 192]
                            mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224])
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224])
                            require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 192]
                            mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] = (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224])
            idx = idx + 1
            continue 
        require 0 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
        require 0 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
        require 0 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 192]
        _1437 = mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]
        mem[(64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 228] = this.address
        require ext_code.size(mem[140 len 20])
        call mem[140 len 20].approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), _1437
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 260] = this.address
        mem[(64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 292] = mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20]
        mem[(64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 324] = _1437
        mem[(64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] = 100
        mem[64] = (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 356
        mem[(64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 256 len 4] = unknown_0x23b872dd(?????)
        mem[(64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 356 len 96] = 0, address(this.address), mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20], Mask(224, 32, _1437) >> 32
        mem[(64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 480 len 4] = Mask(32, 64, _1437) >> 64
        call mem[140 len 20].mem[(64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 320 len 4] with:
             gas gas_remaining wei
            args _1437, mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20], Mask(224, 32, _1437) >> 32 >> 224, mem[(64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 452 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x735472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[(64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 460 len 20],
                            Mask(32, 64, _1437) >> 64,
                            mem[(64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 484 len 4]
            if not cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                _3793 = mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                idx = 0
                while idx < _3793:
                    require idx < mem[96]
                    require idx + 1 < mem[96]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 32, 33, 0x544c69627261727920536f72743a204944454e544943414c5f4144445245535345, mem[mem[64] + 101 len 31]
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'Library Sort: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 192]
                        _3994 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                            if idx >= mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128] - 1:
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4146 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4210 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4210 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4210 + 36] = 0
                                mem[_4210 + 68] = _3994
                                mem[_4210 + 100] = this.address
                                mem[_4210 + 132] = 128
                                mem[_4210 + 164] = mem[_4210]
                                s = 0
                                while s < mem[_4210]:
                                    mem[_4210 + s + 196] = mem[_4210 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4210] % 32:
                                    require ext_code.size(address(_4146))
                                    call address(_4146).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3994, address(this.address), 128, mem[_4210 + 164 len mem[_4210] + 32]
                                else:
                                    mem[floor32(mem[_4210]) + _4210 + 196] = mem[floor32(mem[_4210]) + _4210 + -(mem[_4210] % 32) + 228 len mem[_4210] % 32]
                                    require ext_code.size(address(_4146))
                                    call address(_4146).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3994, address(this.address), 128, mem[_4210], mem[_4210 + 196 len floor32(mem[_4210]) + 32]
                            else:
                                require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4081 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4209 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4273 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4273 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4273 + 36] = 0
                                mem[_4273 + 68] = _3994
                                mem[_4273 + 100] = address(_4081)
                                mem[_4273 + 132] = 128
                                mem[_4273 + 164] = mem[_4273]
                                s = 0
                                while s < mem[_4273]:
                                    mem[_4273 + s + 196] = mem[_4273 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4273] % 32:
                                    require ext_code.size(address(_4209))
                                    call address(_4209).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3994, address(_4081), 128, mem[_4273 + 164 len mem[_4273] + 32]
                                else:
                                    mem[floor32(mem[_4273]) + _4273 + 196] = mem[floor32(mem[_4273]) + _4273 + -(mem[_4273] % 32) + 228 len mem[_4273] % 32]
                                    require ext_code.size(address(_4209))
                                    call address(_4209).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3994, address(_4081), 128, mem[_4273], mem[_4273 + 196 len floor32(mem[_4273]) + 32]
                        else:
                            if idx >= mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128] - 1:
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4148 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4212 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4212 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4212 + 36] = _3994
                                mem[_4212 + 68] = 0
                                mem[_4212 + 100] = this.address
                                mem[_4212 + 132] = 128
                                mem[_4212 + 164] = mem[_4212]
                                s = 0
                                while s < mem[_4212]:
                                    mem[_4212 + s + 196] = mem[_4212 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4212] % 32:
                                    require ext_code.size(address(_4148))
                                    call address(_4148).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3994, 0, address(this.address), 128, mem[_4212 + 164 len mem[_4212] + 32]
                                else:
                                    mem[floor32(mem[_4212]) + _4212 + 196] = mem[floor32(mem[_4212]) + _4212 + -(mem[_4212] % 32) + 228 len mem[_4212] % 32]
                                    require ext_code.size(address(_4148))
                                    call address(_4148).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3994, 0, address(this.address), 128, mem[_4212], mem[_4212 + 196 len floor32(mem[_4212]) + 32]
                            else:
                                require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4083 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4211 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4277 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4277 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4277 + 36] = _3994
                                mem[_4277 + 68] = 0
                                mem[_4277 + 100] = address(_4083)
                                mem[_4277 + 132] = 128
                                mem[_4277 + 164] = mem[_4277]
                                s = 0
                                while s < mem[_4277]:
                                    mem[_4277 + s + 196] = mem[_4277 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4277] % 32:
                                    require ext_code.size(address(_4211))
                                    call address(_4211).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3994, 0, address(_4083), 128, mem[_4277 + 164 len mem[_4277] + 32]
                                else:
                                    mem[floor32(mem[_4277]) + _4277 + 196] = mem[floor32(mem[_4277]) + _4277 + -(mem[_4277] % 32) + 228 len mem[_4277] % 32]
                                    require ext_code.size(address(_4211))
                                    call address(_4211).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3994, 0, address(_4083), 128, mem[_4277], mem[_4277 + 196 len floor32(mem[_4277]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'Library Sort: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 192]
                        _3995 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                            if idx >= mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128] - 1:
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4150 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4214 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4214 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4214 + 36] = 0
                                mem[_4214 + 68] = _3995
                                mem[_4214 + 100] = this.address
                                mem[_4214 + 132] = 128
                                mem[_4214 + 164] = mem[_4214]
                                s = 0
                                while s < mem[_4214]:
                                    mem[_4214 + s + 196] = mem[_4214 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4214] % 32:
                                    require ext_code.size(address(_4150))
                                    call address(_4150).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3995, address(this.address), 128, mem[_4214 + 164 len mem[_4214] + 32]
                                else:
                                    mem[floor32(mem[_4214]) + _4214 + 196] = mem[floor32(mem[_4214]) + _4214 + -(mem[_4214] % 32) + 228 len mem[_4214] % 32]
                                    require ext_code.size(address(_4150))
                                    call address(_4150).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3995, address(this.address), 128, mem[_4214], mem[_4214 + 196 len floor32(mem[_4214]) + 32]
                            else:
                                require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4085 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4213 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4281 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4281 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4281 + 36] = 0
                                mem[_4281 + 68] = _3995
                                mem[_4281 + 100] = address(_4085)
                                mem[_4281 + 132] = 128
                                mem[_4281 + 164] = mem[_4281]
                                s = 0
                                while s < mem[_4281]:
                                    mem[_4281 + s + 196] = mem[_4281 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4281] % 32:
                                    require ext_code.size(address(_4213))
                                    call address(_4213).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3995, address(_4085), 128, mem[_4281 + 164 len mem[_4281] + 32]
                                else:
                                    mem[floor32(mem[_4281]) + _4281 + 196] = mem[floor32(mem[_4281]) + _4281 + -(mem[_4281] % 32) + 228 len mem[_4281] % 32]
                                    require ext_code.size(address(_4213))
                                    call address(_4213).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3995, address(_4085), 128, mem[_4281], mem[_4281 + 196 len floor32(mem[_4281]) + 32]
                        else:
                            if idx >= mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128] - 1:
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4152 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4216 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4216 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4216 + 36] = _3995
                                mem[_4216 + 68] = 0
                                mem[_4216 + 100] = this.address
                                mem[_4216 + 132] = 128
                                mem[_4216 + 164] = mem[_4216]
                                s = 0
                                while s < mem[_4216]:
                                    mem[_4216 + s + 196] = mem[_4216 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4216] % 32:
                                    require ext_code.size(address(_4152))
                                    call address(_4152).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3995, 0, address(this.address), 128, mem[_4216 + 164 len mem[_4216] + 32]
                                else:
                                    mem[floor32(mem[_4216]) + _4216 + 196] = mem[floor32(mem[_4216]) + _4216 + -(mem[_4216] % 32) + 228 len mem[_4216] % 32]
                                    require ext_code.size(address(_4152))
                                    call address(_4152).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3995, 0, address(this.address), 128, mem[_4216], mem[_4216 + 196 len floor32(mem[_4216]) + 32]
                            else:
                                require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4087 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4215 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4285 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4285 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4285 + 36] = _3995
                                mem[_4285 + 68] = 0
                                mem[_4285 + 100] = address(_4087)
                                mem[_4285 + 132] = 128
                                mem[_4285 + 164] = mem[_4285]
                                s = 0
                                while s < mem[_4285]:
                                    mem[_4285 + s + 196] = mem[_4285 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4285] % 32:
                                    require ext_code.size(address(_4215))
                                    call address(_4215).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3995, 0, address(_4087), 128, mem[_4285 + 164 len mem[_4285] + 32]
                                else:
                                    mem[floor32(mem[_4285]) + _4285 + 196] = mem[floor32(mem[_4285]) + _4285 + -(mem[_4285] % 32) + 228 len mem[_4285] % 32]
                                    require ext_code.size(address(_4215))
                                    call address(_4215).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3995, 0, address(_4087), 128, mem[_4285], mem[_4285 + 196 len floor32(mem[_4285]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                require cd[(arg4 + cd[(arg4 + 68)] + 36)] >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                36,
                                0x735472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[(64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 460 len 20],
                                Mask(32, 64, _1437) >> 64,
                                mem[(64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 484 len 4]
                _3794 = mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                idx = 0
                while idx < _3794:
                    require idx < mem[96]
                    require idx + 1 < mem[96]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 32, 33, 0x544c69627261727920536f72743a204944454e544943414c5f4144445245535345, mem[mem[64] + 101 len 31]
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'Library Sort: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 192]
                        _3997 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                            if idx >= mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128] - 1:
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4154 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4218 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4218 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4218 + 36] = 0
                                mem[_4218 + 68] = _3997
                                mem[_4218 + 100] = this.address
                                mem[_4218 + 132] = 128
                                mem[_4218 + 164] = mem[_4218]
                                s = 0
                                while s < mem[_4218]:
                                    mem[_4218 + s + 196] = mem[_4218 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4218] % 32:
                                    require ext_code.size(address(_4154))
                                    call address(_4154).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3997, address(this.address), 128, mem[_4218 + 164 len mem[_4218] + 32]
                                else:
                                    mem[floor32(mem[_4218]) + _4218 + 196] = mem[floor32(mem[_4218]) + _4218 + -(mem[_4218] % 32) + 228 len mem[_4218] % 32]
                                    require ext_code.size(address(_4154))
                                    call address(_4154).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3997, address(this.address), 128, mem[_4218], mem[_4218 + 196 len floor32(mem[_4218]) + 32]
                            else:
                                require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4089 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4217 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4289 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4289 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4289 + 36] = 0
                                mem[_4289 + 68] = _3997
                                mem[_4289 + 100] = address(_4089)
                                mem[_4289 + 132] = 128
                                mem[_4289 + 164] = mem[_4289]
                                s = 0
                                while s < mem[_4289]:
                                    mem[_4289 + s + 196] = mem[_4289 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4289] % 32:
                                    require ext_code.size(address(_4217))
                                    call address(_4217).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3997, address(_4089), 128, mem[_4289 + 164 len mem[_4289] + 32]
                                else:
                                    mem[floor32(mem[_4289]) + _4289 + 196] = mem[floor32(mem[_4289]) + _4289 + -(mem[_4289] % 32) + 228 len mem[_4289] % 32]
                                    require ext_code.size(address(_4217))
                                    call address(_4217).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3997, address(_4089), 128, mem[_4289], mem[_4289 + 196 len floor32(mem[_4289]) + 32]
                        else:
                            if idx >= mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128] - 1:
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4156 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4220 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4220 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4220 + 36] = _3997
                                mem[_4220 + 68] = 0
                                mem[_4220 + 100] = this.address
                                mem[_4220 + 132] = 128
                                mem[_4220 + 164] = mem[_4220]
                                s = 0
                                while s < mem[_4220]:
                                    mem[_4220 + s + 196] = mem[_4220 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4220] % 32:
                                    require ext_code.size(address(_4156))
                                    call address(_4156).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3997, 0, address(this.address), 128, mem[_4220 + 164 len mem[_4220] + 32]
                                else:
                                    mem[floor32(mem[_4220]) + _4220 + 196] = mem[floor32(mem[_4220]) + _4220 + -(mem[_4220] % 32) + 228 len mem[_4220] % 32]
                                    require ext_code.size(address(_4156))
                                    call address(_4156).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3997, 0, address(this.address), 128, mem[_4220], mem[_4220 + 196 len floor32(mem[_4220]) + 32]
                            else:
                                require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4091 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4219 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4293 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4293 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4293 + 36] = _3997
                                mem[_4293 + 68] = 0
                                mem[_4293 + 100] = address(_4091)
                                mem[_4293 + 132] = 128
                                mem[_4293 + 164] = mem[_4293]
                                s = 0
                                while s < mem[_4293]:
                                    mem[_4293 + s + 196] = mem[_4293 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4293] % 32:
                                    require ext_code.size(address(_4219))
                                    call address(_4219).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3997, 0, address(_4091), 128, mem[_4293 + 164 len mem[_4293] + 32]
                                else:
                                    mem[floor32(mem[_4293]) + _4293 + 196] = mem[floor32(mem[_4293]) + _4293 + -(mem[_4293] % 32) + 228 len mem[_4293] % 32]
                                    require ext_code.size(address(_4219))
                                    call address(_4219).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3997, 0, address(_4091), 128, mem[_4293], mem[_4293 + 196 len floor32(mem[_4293]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'Library Sort: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 192]
                        _3998 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                            if idx >= mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128] - 1:
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4158 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4222 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4222 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4222 + 36] = 0
                                mem[_4222 + 68] = _3998
                                mem[_4222 + 100] = this.address
                                mem[_4222 + 132] = 128
                                mem[_4222 + 164] = mem[_4222]
                                s = 0
                                while s < mem[_4222]:
                                    mem[_4222 + s + 196] = mem[_4222 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4222] % 32:
                                    require ext_code.size(address(_4158))
                                    call address(_4158).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3998, address(this.address), 128, mem[_4222 + 164 len mem[_4222] + 32]
                                else:
                                    mem[floor32(mem[_4222]) + _4222 + 196] = mem[floor32(mem[_4222]) + _4222 + -(mem[_4222] % 32) + 228 len mem[_4222] % 32]
                                    require ext_code.size(address(_4158))
                                    call address(_4158).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3998, address(this.address), 128, mem[_4222], mem[_4222 + 196 len floor32(mem[_4222]) + 32]
                            else:
                                require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4093 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4221 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4297 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4297 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4297 + 36] = 0
                                mem[_4297 + 68] = _3998
                                mem[_4297 + 100] = address(_4093)
                                mem[_4297 + 132] = 128
                                mem[_4297 + 164] = mem[_4297]
                                s = 0
                                while s < mem[_4297]:
                                    mem[_4297 + s + 196] = mem[_4297 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4297] % 32:
                                    require ext_code.size(address(_4221))
                                    call address(_4221).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3998, address(_4093), 128, mem[_4297 + 164 len mem[_4297] + 32]
                                else:
                                    mem[floor32(mem[_4297]) + _4297 + 196] = mem[floor32(mem[_4297]) + _4297 + -(mem[_4297] % 32) + 228 len mem[_4297] % 32]
                                    require ext_code.size(address(_4221))
                                    call address(_4221).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _3998, address(_4093), 128, mem[_4297], mem[_4297 + 196 len floor32(mem[_4297]) + 32]
                        else:
                            if idx >= mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128] - 1:
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4160 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4224 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4224 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4224 + 36] = _3998
                                mem[_4224 + 68] = 0
                                mem[_4224 + 100] = this.address
                                mem[_4224 + 132] = 128
                                mem[_4224 + 164] = mem[_4224]
                                s = 0
                                while s < mem[_4224]:
                                    mem[_4224 + s + 196] = mem[_4224 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4224] % 32:
                                    require ext_code.size(address(_4160))
                                    call address(_4160).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3998, 0, address(this.address), 128, mem[_4224 + 164 len mem[_4224] + 32]
                                else:
                                    mem[floor32(mem[_4224]) + _4224 + 196] = mem[floor32(mem[_4224]) + _4224 + -(mem[_4224] % 32) + 228 len mem[_4224] % 32]
                                    require ext_code.size(address(_4160))
                                    call address(_4160).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3998, 0, address(this.address), 128, mem[_4224], mem[_4224 + 196 len floor32(mem[_4224]) + 32]
                            else:
                                require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4095 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4223 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4301 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4301 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4301 + 36] = _3998
                                mem[_4301 + 68] = 0
                                mem[_4301 + 100] = address(_4095)
                                mem[_4301 + 132] = 128
                                mem[_4301 + 164] = mem[_4301]
                                s = 0
                                while s < mem[_4301]:
                                    mem[_4301 + s + 196] = mem[_4301 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4301] % 32:
                                    require ext_code.size(address(_4223))
                                    call address(_4223).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3998, 0, address(_4095), 128, mem[_4301 + 164 len mem[_4301] + 32]
                                else:
                                    mem[floor32(mem[_4301]) + _4301 + 196] = mem[floor32(mem[_4301]) + _4301 + -(mem[_4301] % 32) + 228 len mem[_4301] % 32]
                                    require ext_code.size(address(_4223))
                                    call address(_4223).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _3998, 0, address(_4095), 128, mem[_4301], mem[_4301 + 196 len floor32(mem[_4301]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
        else:
            mem[64] = (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + ceil32(return_data.size) + 357
            mem[(64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 356] = return_data.size
            mem[(64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x735472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[(64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + ceil32(return_data.size) + 461 len 28]
            if not return_data.size:
                _3795 = mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                idx = 0
                while idx < _3795:
                    require idx < mem[96]
                    require idx + 1 < mem[96]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 32, 33, 0x544c69627261727920536f72743a204944454e544943414c5f4144445245535345, mem[mem[64] + 101 len 31]
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'Library Sort: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 192]
                        _4000 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                            if idx >= mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128] - 1:
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4162 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4226 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4226 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4226 + 36] = 0
                                mem[_4226 + 68] = _4000
                                mem[_4226 + 100] = this.address
                                mem[_4226 + 132] = 128
                                mem[_4226 + 164] = mem[_4226]
                                s = 0
                                while s < mem[_4226]:
                                    mem[_4226 + s + 196] = mem[_4226 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4226] % 32:
                                    require ext_code.size(address(_4162))
                                    call address(_4162).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _4000, address(this.address), 128, mem[_4226 + 164 len mem[_4226] + 32]
                                else:
                                    mem[floor32(mem[_4226]) + _4226 + 196] = mem[floor32(mem[_4226]) + _4226 + -(mem[_4226] % 32) + 228 len mem[_4226] % 32]
                                    require ext_code.size(address(_4162))
                                    call address(_4162).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _4000, address(this.address), 128, mem[_4226], mem[_4226 + 196 len floor32(mem[_4226]) + 32]
                            else:
                                require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4097 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4225 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4305 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4305 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4305 + 36] = 0
                                mem[_4305 + 68] = _4000
                                mem[_4305 + 100] = address(_4097)
                                mem[_4305 + 132] = 128
                                mem[_4305 + 164] = mem[_4305]
                                s = 0
                                while s < mem[_4305]:
                                    mem[_4305 + s + 196] = mem[_4305 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4305] % 32:
                                    require ext_code.size(address(_4225))
                                    call address(_4225).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _4000, address(_4097), 128, mem[_4305 + 164 len mem[_4305] + 32]
                                else:
                                    mem[floor32(mem[_4305]) + _4305 + 196] = mem[floor32(mem[_4305]) + _4305 + -(mem[_4305] % 32) + 228 len mem[_4305] % 32]
                                    require ext_code.size(address(_4225))
                                    call address(_4225).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _4000, address(_4097), 128, mem[_4305], mem[_4305 + 196 len floor32(mem[_4305]) + 32]
                        else:
                            if idx >= mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128] - 1:
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4164 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4228 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4228 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4228 + 36] = _4000
                                mem[_4228 + 68] = 0
                                mem[_4228 + 100] = this.address
                                mem[_4228 + 132] = 128
                                mem[_4228 + 164] = mem[_4228]
                                s = 0
                                while s < mem[_4228]:
                                    mem[_4228 + s + 196] = mem[_4228 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4228] % 32:
                                    require ext_code.size(address(_4164))
                                    call address(_4164).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _4000, 0, address(this.address), 128, mem[_4228 + 164 len mem[_4228] + 32]
                                else:
                                    mem[floor32(mem[_4228]) + _4228 + 196] = mem[floor32(mem[_4228]) + _4228 + -(mem[_4228] % 32) + 228 len mem[_4228] % 32]
                                    require ext_code.size(address(_4164))
                                    call address(_4164).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _4000, 0, address(this.address), 128, mem[_4228], mem[_4228 + 196 len floor32(mem[_4228]) + 32]
                            else:
                                require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4099 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4227 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4309 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4309 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4309 + 36] = _4000
                                mem[_4309 + 68] = 0
                                mem[_4309 + 100] = address(_4099)
                                mem[_4309 + 132] = 128
                                mem[_4309 + 164] = mem[_4309]
                                s = 0
                                while s < mem[_4309]:
                                    mem[_4309 + s + 196] = mem[_4309 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4309] % 32:
                                    require ext_code.size(address(_4227))
                                    call address(_4227).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _4000, 0, address(_4099), 128, mem[_4309 + 164 len mem[_4309] + 32]
                                else:
                                    mem[floor32(mem[_4309]) + _4309 + 196] = mem[floor32(mem[_4309]) + _4309 + -(mem[_4309] % 32) + 228 len mem[_4309] % 32]
                                    require ext_code.size(address(_4227))
                                    call address(_4227).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _4000, 0, address(_4099), 128, mem[_4309], mem[_4309 + 196 len floor32(mem[_4309]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'Library Sort: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 192]
                        _4001 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                            if idx >= mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128] - 1:
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4166 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4230 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4230 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4230 + 36] = 0
                                mem[_4230 + 68] = _4001
                                mem[_4230 + 100] = this.address
                                mem[_4230 + 132] = 128
                                mem[_4230 + 164] = mem[_4230]
                                s = 0
                                while s < mem[_4230]:
                                    mem[_4230 + s + 196] = mem[_4230 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4230] % 32:
                                    require ext_code.size(address(_4166))
                                    call address(_4166).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _4001, address(this.address), 128, mem[_4230 + 164 len mem[_4230] + 32]
                                else:
                                    mem[floor32(mem[_4230]) + _4230 + 196] = mem[floor32(mem[_4230]) + _4230 + -(mem[_4230] % 32) + 228 len mem[_4230] % 32]
                                    require ext_code.size(address(_4166))
                                    call address(_4166).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _4001, address(this.address), 128, mem[_4230], mem[_4230 + 196 len floor32(mem[_4230]) + 32]
                            else:
                                require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4101 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4229 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4313 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4313 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4313 + 36] = 0
                                mem[_4313 + 68] = _4001
                                mem[_4313 + 100] = address(_4101)
                                mem[_4313 + 132] = 128
                                mem[_4313 + 164] = mem[_4313]
                                s = 0
                                while s < mem[_4313]:
                                    mem[_4313 + s + 196] = mem[_4313 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4313] % 32:
                                    require ext_code.size(address(_4229))
                                    call address(_4229).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _4001, address(_4101), 128, mem[_4313 + 164 len mem[_4313] + 32]
                                else:
                                    mem[floor32(mem[_4313]) + _4313 + 196] = mem[floor32(mem[_4313]) + _4313 + -(mem[_4313] % 32) + 228 len mem[_4313] % 32]
                                    require ext_code.size(address(_4229))
                                    call address(_4229).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _4001, address(_4101), 128, mem[_4313], mem[_4313 + 196 len floor32(mem[_4313]) + 32]
                        else:
                            if idx >= mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128] - 1:
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4168 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4232 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4232 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4232 + 36] = _4001
                                mem[_4232 + 68] = 0
                                mem[_4232 + 100] = this.address
                                mem[_4232 + 132] = 128
                                mem[_4232 + 164] = mem[_4232]
                                s = 0
                                while s < mem[_4232]:
                                    mem[_4232 + s + 196] = mem[_4232 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4232] % 32:
                                    require ext_code.size(address(_4168))
                                    call address(_4168).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _4001, 0, address(this.address), 128, mem[_4232 + 164 len mem[_4232] + 32]
                                else:
                                    mem[floor32(mem[_4232]) + _4232 + 196] = mem[floor32(mem[_4232]) + _4232 + -(mem[_4232] % 32) + 228 len mem[_4232] % 32]
                                    require ext_code.size(address(_4168))
                                    call address(_4168).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _4001, 0, address(this.address), 128, mem[_4232], mem[_4232 + 196 len floor32(mem[_4232]) + 32]
                            else:
                                require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4103 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4231 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4317 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4317 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4317 + 36] = _4001
                                mem[_4317 + 68] = 0
                                mem[_4317 + 100] = address(_4103)
                                mem[_4317 + 132] = 128
                                mem[_4317 + 164] = mem[_4317]
                                s = 0
                                while s < mem[_4317]:
                                    mem[_4317 + s + 196] = mem[_4317 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4317] % 32:
                                    require ext_code.size(address(_4231))
                                    call address(_4231).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _4001, 0, address(_4103), 128, mem[_4317 + 164 len mem[_4317] + 32]
                                else:
                                    mem[floor32(mem[_4317]) + _4317 + 196] = mem[floor32(mem[_4317]) + _4317 + -(mem[_4317] % 32) + 228 len mem[_4317] % 32]
                                    require ext_code.size(address(_4231))
                                    call address(_4231).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _4001, 0, address(_4103), 128, mem[_4317], mem[_4317 + 196 len floor32(mem[_4317]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                require return_data.size >= 32
                if not mem[(64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 388]:
                    revert with 0, 
                                32,
                                36,
                                0x735472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[(64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + ceil32(return_data.size) + 461 len 28]
                _3796 = mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                idx = 0
                while idx < _3796:
                    require idx < mem[96]
                    require idx + 1 < mem[96]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 32, 33, 0x544c69627261727920536f72743a204944454e544943414c5f4144445245535345, mem[mem[64] + 101 len 31]
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'Library Sort: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 192]
                        _4003 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                            if idx >= mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128] - 1:
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4170 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4234 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4234 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4234 + 36] = 0
                                mem[_4234 + 68] = _4003
                                mem[_4234 + 100] = this.address
                                mem[_4234 + 132] = 128
                                mem[_4234 + 164] = mem[_4234]
                                s = 0
                                while s < mem[_4234]:
                                    mem[_4234 + s + 196] = mem[_4234 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4234] % 32:
                                    require ext_code.size(address(_4170))
                                    call address(_4170).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _4003, address(this.address), 128, mem[_4234 + 164 len mem[_4234] + 32]
                                else:
                                    mem[floor32(mem[_4234]) + _4234 + 196] = mem[floor32(mem[_4234]) + _4234 + -(mem[_4234] % 32) + 228 len mem[_4234] % 32]
                                    require ext_code.size(address(_4170))
                                    call address(_4170).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _4003, address(this.address), 128, mem[_4234], mem[_4234 + 196 len floor32(mem[_4234]) + 32]
                            else:
                                require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4105 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4233 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4321 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4321 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4321 + 36] = 0
                                mem[_4321 + 68] = _4003
                                mem[_4321 + 100] = address(_4105)
                                mem[_4321 + 132] = 128
                                mem[_4321 + 164] = mem[_4321]
                                s = 0
                                while s < mem[_4321]:
                                    mem[_4321 + s + 196] = mem[_4321 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4321] % 32:
                                    require ext_code.size(address(_4233))
                                    call address(_4233).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _4003, address(_4105), 128, mem[_4321 + 164 len mem[_4321] + 32]
                                else:
                                    mem[floor32(mem[_4321]) + _4321 + 196] = mem[floor32(mem[_4321]) + _4321 + -(mem[_4321] % 32) + 228 len mem[_4321] % 32]
                                    require ext_code.size(address(_4233))
                                    call address(_4233).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _4003, address(_4105), 128, mem[_4321], mem[_4321 + 196 len floor32(mem[_4321]) + 32]
                        else:
                            if idx >= mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128] - 1:
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4172 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4236 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4236 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4236 + 36] = _4003
                                mem[_4236 + 68] = 0
                                mem[_4236 + 100] = this.address
                                mem[_4236 + 132] = 128
                                mem[_4236 + 164] = mem[_4236]
                                s = 0
                                while s < mem[_4236]:
                                    mem[_4236 + s + 196] = mem[_4236 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4236] % 32:
                                    require ext_code.size(address(_4172))
                                    call address(_4172).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _4003, 0, address(this.address), 128, mem[_4236 + 164 len mem[_4236] + 32]
                                else:
                                    mem[floor32(mem[_4236]) + _4236 + 196] = mem[floor32(mem[_4236]) + _4236 + -(mem[_4236] % 32) + 228 len mem[_4236] % 32]
                                    require ext_code.size(address(_4172))
                                    call address(_4172).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _4003, 0, address(this.address), 128, mem[_4236], mem[_4236 + 196 len floor32(mem[_4236]) + 32]
                            else:
                                require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4107 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4235 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4325 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4325 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4325 + 36] = _4003
                                mem[_4325 + 68] = 0
                                mem[_4325 + 100] = address(_4107)
                                mem[_4325 + 132] = 128
                                mem[_4325 + 164] = mem[_4325]
                                s = 0
                                while s < mem[_4325]:
                                    mem[_4325 + s + 196] = mem[_4325 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4325] % 32:
                                    require ext_code.size(address(_4235))
                                    call address(_4235).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _4003, 0, address(_4107), 128, mem[_4325 + 164 len mem[_4325] + 32]
                                else:
                                    mem[floor32(mem[_4325]) + _4325 + 196] = mem[floor32(mem[_4325]) + _4325 + -(mem[_4325] % 32) + 228 len mem[_4325] % 32]
                                    require ext_code.size(address(_4235))
                                    call address(_4235).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _4003, 0, address(_4107), 128, mem[_4325], mem[_4325 + 196 len floor32(mem[_4325]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'Library Sort: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 192]
                        _4004 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                            if idx >= mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128] - 1:
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4174 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4238 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4238 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4238 + 36] = 0
                                mem[_4238 + 68] = _4004
                                mem[_4238 + 100] = this.address
                                mem[_4238 + 132] = 128
                                mem[_4238 + 164] = mem[_4238]
                                s = 0
                                while s < mem[_4238]:
                                    mem[_4238 + s + 196] = mem[_4238 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4238] % 32:
                                    require ext_code.size(address(_4174))
                                    call address(_4174).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _4004, address(this.address), 128, mem[_4238 + 164 len mem[_4238] + 32]
                                else:
                                    mem[floor32(mem[_4238]) + _4238 + 196] = mem[floor32(mem[_4238]) + _4238 + -(mem[_4238] % 32) + 228 len mem[_4238] % 32]
                                    require ext_code.size(address(_4174))
                                    call address(_4174).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _4004, address(this.address), 128, mem[_4238], mem[_4238 + 196 len floor32(mem[_4238]) + 32]
                            else:
                                require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4109 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4237 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4329 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4329 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4329 + 36] = 0
                                mem[_4329 + 68] = _4004
                                mem[_4329 + 100] = address(_4109)
                                mem[_4329 + 132] = 128
                                mem[_4329 + 164] = mem[_4329]
                                s = 0
                                while s < mem[_4329]:
                                    mem[_4329 + s + 196] = mem[_4329 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4329] % 32:
                                    require ext_code.size(address(_4237))
                                    call address(_4237).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _4004, address(_4109), 128, mem[_4329 + 164 len mem[_4329] + 32]
                                else:
                                    mem[floor32(mem[_4329]) + _4329 + 196] = mem[floor32(mem[_4329]) + _4329 + -(mem[_4329] % 32) + 228 len mem[_4329] % 32]
                                    require ext_code.size(address(_4237))
                                    call address(_4237).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _4004, address(_4109), 128, mem[_4329], mem[_4329 + 196 len floor32(mem[_4329]) + 32]
                        else:
                            if idx >= mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128] - 1:
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4176 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4240 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4240 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4240 + 36] = _4004
                                mem[_4240 + 68] = 0
                                mem[_4240 + 100] = this.address
                                mem[_4240 + 132] = 128
                                mem[_4240 + 164] = mem[_4240]
                                s = 0
                                while s < mem[_4240]:
                                    mem[_4240 + s + 196] = mem[_4240 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4240] % 32:
                                    require ext_code.size(address(_4176))
                                    call address(_4176).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _4004, 0, address(this.address), 128, mem[_4240 + 164 len mem[_4240] + 32]
                                else:
                                    mem[floor32(mem[_4240]) + _4240 + 196] = mem[floor32(mem[_4240]) + _4240 + -(mem[_4240] % 32) + 228 len mem[_4240] % 32]
                                    require ext_code.size(address(_4176))
                                    call address(_4176).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _4004, 0, address(this.address), 128, mem[_4240], mem[_4240 + 196 len floor32(mem[_4240]) + 32]
                            else:
                                require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4111 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4239 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4333 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4333 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4333 + 36] = _4004
                                mem[_4333 + 68] = 0
                                mem[_4333 + 100] = address(_4111)
                                mem[_4333 + 132] = 128
                                mem[_4333 + 164] = mem[_4333]
                                s = 0
                                while s < mem[_4333]:
                                    mem[_4333 + s + 196] = mem[_4333 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4333] % 32:
                                    require ext_code.size(address(_4239))
                                    call address(_4239).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _4004, 0, address(_4111), 128, mem[_4333 + 164 len mem[_4333] + 32]
                                else:
                                    mem[floor32(mem[_4333]) + _4333 + 196] = mem[floor32(mem[_4333]) + _4333 + -(mem[_4333] % 32) + 228 len mem[_4333] % 32]
                                    require ext_code.size(address(_4239))
                                    call address(_4239).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _4004, 0, address(_4111), 128, mem[_4333], mem[_4333 + 196 len floor32(mem[_4333]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
    else:
        mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]] = call.data[calldata.size len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]]
        require 0 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
        mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] = cd[(arg4 + 36)]
        idx = 0
        while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1:
            require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
            require idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            _1429 = mem[(32 * idx) + 128]
            require idx + 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            _1436 = mem[(32 * idx + 1) + 128]
            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 
                            32,
                            33,
                            0x544c69627261727920536f72743a204944454e544943414c5f4144445245535345,
                            mem[(64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 325 len 31]
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'Library Sort: ZERO_ADDRESS'
                require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20])
                staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[(64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 192]
                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 160]
                if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] <= 0:
                    revert with 0, 
                                32,
                                34,
                                0xfe4c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[(64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 326 len 30]
                if address(_1429) == address(_1429):
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                    if -mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] + 10000 > 10000:
                        revert with 0, 'ds-math-sub-underflow'
                    if not -mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] + 10000:
                        if Mask(112, 0, ext_call.return_data[32]):
                            require Mask(112, 0, ext_call.return_data[32])
                            if 0 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require 10000 * Mask(112, 0, ext_call.return_data[0])
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 192]
                        mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                    else:
                        require -mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] + 10000
                        if (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) / -mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] + 10000 != mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224])
                            require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 192]
                            mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224])
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224])
                            require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 192]
                            mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] = (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224])
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                    if -mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] + 10000 > 10000:
                        revert with 0, 'ds-math-sub-underflow'
                    if not -mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] + 10000:
                        if Mask(112, 0, ext_call.return_data[0]):
                            require Mask(112, 0, ext_call.return_data[0])
                            if 0 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require 10000 * Mask(112, 0, ext_call.return_data[32])
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 192]
                        mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                    else:
                        require -mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] + 10000
                        if (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) / -mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] + 10000 != mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224])
                            require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 192]
                            mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224])
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224])
                            require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 192]
                            mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] = (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224])
            else:
                if not mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'Library Sort: ZERO_ADDRESS'
                require ext_code.size(mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20])
                staticcall mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[(64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 192]
                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 160]
                if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] <= 0:
                    revert with 0, 
                                32,
                                34,
                                0xfe4c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[(64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 326 len 30]
                if address(_1429) == address(_1436):
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                    if -mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] + 10000 > 10000:
                        revert with 0, 'ds-math-sub-underflow'
                    if not -mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] + 10000:
                        if Mask(112, 0, ext_call.return_data[32]):
                            require Mask(112, 0, ext_call.return_data[32])
                            if 0 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require 10000 * Mask(112, 0, ext_call.return_data[0])
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 192]
                        mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                    else:
                        require -mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] + 10000
                        if (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) / -mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] + 10000 != mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224])
                            require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 192]
                            mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224])
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224])
                            require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 192]
                            mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] = (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] * Mask(112, 0, ext_call.return_data[32])) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224])
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'Library: INSUFFICIENT_LIQUIDITY'
                    if -mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] + 10000 > 10000:
                        revert with 0, 'ds-math-sub-underflow'
                    if not -mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] + 10000:
                        if Mask(112, 0, ext_call.return_data[0]):
                            require Mask(112, 0, ext_call.return_data[0])
                            if 0 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require 10000 * Mask(112, 0, ext_call.return_data[32])
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 192]
                        mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                    else:
                        require -mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] + 10000
                        if (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) / -mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] + 10000 != mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224])
                            require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 192]
                            mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224])
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224])
                            require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 192]
                            mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] = (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] * Mask(112, 0, ext_call.return_data[0])) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) - (mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] * mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224])
            idx = idx + 1
            continue 
        require 0 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
        require 0 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
        require 0 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 192]
        _1438 = mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]
        mem[(64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 228] = this.address
        require ext_code.size(mem[140 len 20])
        call mem[140 len 20].approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), _1438
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 260] = this.address
        mem[(64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 292] = mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20]
        mem[(64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 324] = _1438
        mem[(64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] = 100
        mem[64] = (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 356
        mem[(64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 256 len 4] = unknown_0x23b872dd(?????)
        mem[(64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 356 len 96] = 0, address(this.address), mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20], Mask(224, 32, _1438) >> 32
        mem[(64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 480 len 4] = Mask(32, 64, _1438) >> 64
        call mem[140 len 20].mem[(64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 320 len 4] with:
             gas gas_remaining wei
            args _1438, mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 172 len 20], Mask(224, 32, _1438) >> 32 >> 224, mem[(64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 452 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x735472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[(64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 460 len 20],
                            Mask(32, 64, _1438) >> 64,
                            mem[(64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 484 len 4]
            if not cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                _3797 = mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                idx = 0
                while idx < _3797:
                    require idx < mem[96]
                    require idx + 1 < mem[96]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 32, 33, 0x544c69627261727920536f72743a204944454e544943414c5f4144445245535345, mem[mem[64] + 101 len 31]
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'Library Sort: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 192]
                        _4006 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                            if idx >= mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128] - 1:
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4178 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4242 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4242 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4242 + 36] = 0
                                mem[_4242 + 68] = _4006
                                mem[_4242 + 100] = this.address
                                mem[_4242 + 132] = 128
                                mem[_4242 + 164] = mem[_4242]
                                s = 0
                                while s < mem[_4242]:
                                    mem[_4242 + s + 196] = mem[_4242 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4242] % 32:
                                    require ext_code.size(address(_4178))
                                    call address(_4178).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _4006, address(this.address), 128, mem[_4242 + 164 len mem[_4242] + 32]
                                else:
                                    mem[floor32(mem[_4242]) + _4242 + 196] = mem[floor32(mem[_4242]) + _4242 + -(mem[_4242] % 32) + 228 len mem[_4242] % 32]
                                    require ext_code.size(address(_4178))
                                    call address(_4178).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _4006, address(this.address), 128, mem[_4242], mem[_4242 + 196 len floor32(mem[_4242]) + 32]
                            else:
                                require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4113 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4241 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4337 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4337 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4337 + 36] = 0
                                mem[_4337 + 68] = _4006
                                mem[_4337 + 100] = address(_4113)
                                mem[_4337 + 132] = 128
                                mem[_4337 + 164] = mem[_4337]
                                s = 0
                                while s < mem[_4337]:
                                    mem[_4337 + s + 196] = mem[_4337 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4337] % 32:
                                    require ext_code.size(address(_4241))
                                    call address(_4241).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _4006, address(_4113), 128, mem[_4337 + 164 len mem[_4337] + 32]
                                else:
                                    mem[floor32(mem[_4337]) + _4337 + 196] = mem[floor32(mem[_4337]) + _4337 + -(mem[_4337] % 32) + 228 len mem[_4337] % 32]
                                    require ext_code.size(address(_4241))
                                    call address(_4241).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _4006, address(_4113), 128, mem[_4337], mem[_4337 + 196 len floor32(mem[_4337]) + 32]
                        else:
                            if idx >= mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128] - 1:
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4180 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4244 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4244 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4244 + 36] = _4006
                                mem[_4244 + 68] = 0
                                mem[_4244 + 100] = this.address
                                mem[_4244 + 132] = 128
                                mem[_4244 + 164] = mem[_4244]
                                s = 0
                                while s < mem[_4244]:
                                    mem[_4244 + s + 196] = mem[_4244 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4244] % 32:
                                    require ext_code.size(address(_4180))
                                    call address(_4180).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _4006, 0, address(this.address), 128, mem[_4244 + 164 len mem[_4244] + 32]
                                else:
                                    mem[floor32(mem[_4244]) + _4244 + 196] = mem[floor32(mem[_4244]) + _4244 + -(mem[_4244] % 32) + 228 len mem[_4244] % 32]
                                    require ext_code.size(address(_4180))
                                    call address(_4180).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _4006, 0, address(this.address), 128, mem[_4244], mem[_4244 + 196 len floor32(mem[_4244]) + 32]
                            else:
                                require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4115 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4243 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4341 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4341 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4341 + 36] = _4006
                                mem[_4341 + 68] = 0
                                mem[_4341 + 100] = address(_4115)
                                mem[_4341 + 132] = 128
                                mem[_4341 + 164] = mem[_4341]
                                s = 0
                                while s < mem[_4341]:
                                    mem[_4341 + s + 196] = mem[_4341 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4341] % 32:
                                    require ext_code.size(address(_4243))
                                    call address(_4243).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _4006, 0, address(_4115), 128, mem[_4341 + 164 len mem[_4341] + 32]
                                else:
                                    mem[floor32(mem[_4341]) + _4341 + 196] = mem[floor32(mem[_4341]) + _4341 + -(mem[_4341] % 32) + 228 len mem[_4341] % 32]
                                    require ext_code.size(address(_4243))
                                    call address(_4243).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _4006, 0, address(_4115), 128, mem[_4341], mem[_4341 + 196 len floor32(mem[_4341]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'Library Sort: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 192]
                        _4007 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                            if idx >= mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128] - 1:
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4182 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4246 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4246 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4246 + 36] = 0
                                mem[_4246 + 68] = _4007
                                mem[_4246 + 100] = this.address
                                mem[_4246 + 132] = 128
                                mem[_4246 + 164] = mem[_4246]
                                s = 0
                                while s < mem[_4246]:
                                    mem[_4246 + s + 196] = mem[_4246 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4246] % 32:
                                    require ext_code.size(address(_4182))
                                    call address(_4182).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _4007, address(this.address), 128, mem[_4246 + 164 len mem[_4246] + 32]
                                else:
                                    mem[floor32(mem[_4246]) + _4246 + 196] = mem[floor32(mem[_4246]) + _4246 + -(mem[_4246] % 32) + 228 len mem[_4246] % 32]
                                    require ext_code.size(address(_4182))
                                    call address(_4182).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _4007, address(this.address), 128, mem[_4246], mem[_4246 + 196 len floor32(mem[_4246]) + 32]
                            else:
                                require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4117 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4245 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4345 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4345 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4345 + 36] = 0
                                mem[_4345 + 68] = _4007
                                mem[_4345 + 100] = address(_4117)
                                mem[_4345 + 132] = 128
                                mem[_4345 + 164] = mem[_4345]
                                s = 0
                                while s < mem[_4345]:
                                    mem[_4345 + s + 196] = mem[_4345 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4345] % 32:
                                    require ext_code.size(address(_4245))
                                    call address(_4245).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _4007, address(_4117), 128, mem[_4345 + 164 len mem[_4345] + 32]
                                else:
                                    mem[floor32(mem[_4345]) + _4345 + 196] = mem[floor32(mem[_4345]) + _4345 + -(mem[_4345] % 32) + 228 len mem[_4345] % 32]
                                    require ext_code.size(address(_4245))
                                    call address(_4245).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _4007, address(_4117), 128, mem[_4345], mem[_4345 + 196 len floor32(mem[_4345]) + 32]
                        else:
                            if idx >= mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128] - 1:
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4184 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4248 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4248 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4248 + 36] = _4007
                                mem[_4248 + 68] = 0
                                mem[_4248 + 100] = this.address
                                mem[_4248 + 132] = 128
                                mem[_4248 + 164] = mem[_4248]
                                s = 0
                                while s < mem[_4248]:
                                    mem[_4248 + s + 196] = mem[_4248 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4248] % 32:
                                    require ext_code.size(address(_4184))
                                    call address(_4184).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _4007, 0, address(this.address), 128, mem[_4248 + 164 len mem[_4248] + 32]
                                else:
                                    mem[floor32(mem[_4248]) + _4248 + 196] = mem[floor32(mem[_4248]) + _4248 + -(mem[_4248] % 32) + 228 len mem[_4248] % 32]
                                    require ext_code.size(address(_4184))
                                    call address(_4184).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _4007, 0, address(this.address), 128, mem[_4248], mem[_4248 + 196 len floor32(mem[_4248]) + 32]
                            else:
                                require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4119 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4247 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4349 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4349 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4349 + 36] = _4007
                                mem[_4349 + 68] = 0
                                mem[_4349 + 100] = address(_4119)
                                mem[_4349 + 132] = 128
                                mem[_4349 + 164] = mem[_4349]
                                s = 0
                                while s < mem[_4349]:
                                    mem[_4349 + s + 196] = mem[_4349 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4349] % 32:
                                    require ext_code.size(address(_4247))
                                    call address(_4247).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _4007, 0, address(_4119), 128, mem[_4349 + 164 len mem[_4349] + 32]
                                else:
                                    mem[floor32(mem[_4349]) + _4349 + 196] = mem[floor32(mem[_4349]) + _4349 + -(mem[_4349] % 32) + 228 len mem[_4349] % 32]
                                    require ext_code.size(address(_4247))
                                    call address(_4247).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _4007, 0, address(_4119), 128, mem[_4349], mem[_4349 + 196 len floor32(mem[_4349]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                require cd[(arg4 + cd[(arg4 + 68)] + 36)] >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                36,
                                0x735472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[(64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 460 len 20],
                                Mask(32, 64, _1438) >> 64,
                                mem[(64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 484 len 4]
                _3798 = mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                idx = 0
                while idx < _3798:
                    require idx < mem[96]
                    require idx + 1 < mem[96]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 32, 33, 0x544c69627261727920536f72743a204944454e544943414c5f4144445245535345, mem[mem[64] + 101 len 31]
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'Library Sort: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 192]
                        _4009 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                            if idx >= mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128] - 1:
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4186 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4250 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4250 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4250 + 36] = 0
                                mem[_4250 + 68] = _4009
                                mem[_4250 + 100] = this.address
                                mem[_4250 + 132] = 128
                                mem[_4250 + 164] = mem[_4250]
                                s = 0
                                while s < mem[_4250]:
                                    mem[_4250 + s + 196] = mem[_4250 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4250] % 32:
                                    require ext_code.size(address(_4186))
                                    call address(_4186).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _4009, address(this.address), 128, mem[_4250 + 164 len mem[_4250] + 32]
                                else:
                                    mem[floor32(mem[_4250]) + _4250 + 196] = mem[floor32(mem[_4250]) + _4250 + -(mem[_4250] % 32) + 228 len mem[_4250] % 32]
                                    require ext_code.size(address(_4186))
                                    call address(_4186).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _4009, address(this.address), 128, mem[_4250], mem[_4250 + 196 len floor32(mem[_4250]) + 32]
                            else:
                                require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4121 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4249 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4353 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4353 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4353 + 36] = 0
                                mem[_4353 + 68] = _4009
                                mem[_4353 + 100] = address(_4121)
                                mem[_4353 + 132] = 128
                                mem[_4353 + 164] = mem[_4353]
                                s = 0
                                while s < mem[_4353]:
                                    mem[_4353 + s + 196] = mem[_4353 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4353] % 32:
                                    require ext_code.size(address(_4249))
                                    call address(_4249).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _4009, address(_4121), 128, mem[_4353 + 164 len mem[_4353] + 32]
                                else:
                                    mem[floor32(mem[_4353]) + _4353 + 196] = mem[floor32(mem[_4353]) + _4353 + -(mem[_4353] % 32) + 228 len mem[_4353] % 32]
                                    require ext_code.size(address(_4249))
                                    call address(_4249).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _4009, address(_4121), 128, mem[_4353], mem[_4353 + 196 len floor32(mem[_4353]) + 32]
                        else:
                            if idx >= mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128] - 1:
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4188 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4252 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4252 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4252 + 36] = _4009
                                mem[_4252 + 68] = 0
                                mem[_4252 + 100] = this.address
                                mem[_4252 + 132] = 128
                                mem[_4252 + 164] = mem[_4252]
                                s = 0
                                while s < mem[_4252]:
                                    mem[_4252 + s + 196] = mem[_4252 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4252] % 32:
                                    require ext_code.size(address(_4188))
                                    call address(_4188).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _4009, 0, address(this.address), 128, mem[_4252 + 164 len mem[_4252] + 32]
                                else:
                                    mem[floor32(mem[_4252]) + _4252 + 196] = mem[floor32(mem[_4252]) + _4252 + -(mem[_4252] % 32) + 228 len mem[_4252] % 32]
                                    require ext_code.size(address(_4188))
                                    call address(_4188).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _4009, 0, address(this.address), 128, mem[_4252], mem[_4252 + 196 len floor32(mem[_4252]) + 32]
                            else:
                                require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4123 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4251 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4357 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4357 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4357 + 36] = _4009
                                mem[_4357 + 68] = 0
                                mem[_4357 + 100] = address(_4123)
                                mem[_4357 + 132] = 128
                                mem[_4357 + 164] = mem[_4357]
                                s = 0
                                while s < mem[_4357]:
                                    mem[_4357 + s + 196] = mem[_4357 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4357] % 32:
                                    require ext_code.size(address(_4251))
                                    call address(_4251).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _4009, 0, address(_4123), 128, mem[_4357 + 164 len mem[_4357] + 32]
                                else:
                                    mem[floor32(mem[_4357]) + _4357 + 196] = mem[floor32(mem[_4357]) + _4357 + -(mem[_4357] % 32) + 228 len mem[_4357] % 32]
                                    require ext_code.size(address(_4251))
                                    call address(_4251).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _4009, 0, address(_4123), 128, mem[_4357], mem[_4357 + 196 len floor32(mem[_4357]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'Library Sort: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 192]
                        _4010 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                            if idx >= mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128] - 1:
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4190 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4254 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4254 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4254 + 36] = 0
                                mem[_4254 + 68] = _4010
                                mem[_4254 + 100] = this.address
                                mem[_4254 + 132] = 128
                                mem[_4254 + 164] = mem[_4254]
                                s = 0
                                while s < mem[_4254]:
                                    mem[_4254 + s + 196] = mem[_4254 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4254] % 32:
                                    require ext_code.size(address(_4190))
                                    call address(_4190).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _4010, address(this.address), 128, mem[_4254 + 164 len mem[_4254] + 32]
                                else:
                                    mem[floor32(mem[_4254]) + _4254 + 196] = mem[floor32(mem[_4254]) + _4254 + -(mem[_4254] % 32) + 228 len mem[_4254] % 32]
                                    require ext_code.size(address(_4190))
                                    call address(_4190).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _4010, address(this.address), 128, mem[_4254], mem[_4254 + 196 len floor32(mem[_4254]) + 32]
                            else:
                                require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4125 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4253 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4361 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4361 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4361 + 36] = 0
                                mem[_4361 + 68] = _4010
                                mem[_4361 + 100] = address(_4125)
                                mem[_4361 + 132] = 128
                                mem[_4361 + 164] = mem[_4361]
                                s = 0
                                while s < mem[_4361]:
                                    mem[_4361 + s + 196] = mem[_4361 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4361] % 32:
                                    require ext_code.size(address(_4253))
                                    call address(_4253).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _4010, address(_4125), 128, mem[_4361 + 164 len mem[_4361] + 32]
                                else:
                                    mem[floor32(mem[_4361]) + _4361 + 196] = mem[floor32(mem[_4361]) + _4361 + -(mem[_4361] % 32) + 228 len mem[_4361] % 32]
                                    require ext_code.size(address(_4253))
                                    call address(_4253).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _4010, address(_4125), 128, mem[_4361], mem[_4361 + 196 len floor32(mem[_4361]) + 32]
                        else:
                            if idx >= mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128] - 1:
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4192 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4256 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4256 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4256 + 36] = _4010
                                mem[_4256 + 68] = 0
                                mem[_4256 + 100] = this.address
                                mem[_4256 + 132] = 128
                                mem[_4256 + 164] = mem[_4256]
                                s = 0
                                while s < mem[_4256]:
                                    mem[_4256 + s + 196] = mem[_4256 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4256] % 32:
                                    require ext_code.size(address(_4192))
                                    call address(_4192).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _4010, 0, address(this.address), 128, mem[_4256 + 164 len mem[_4256] + 32]
                                else:
                                    mem[floor32(mem[_4256]) + _4256 + 196] = mem[floor32(mem[_4256]) + _4256 + -(mem[_4256] % 32) + 228 len mem[_4256] % 32]
                                    require ext_code.size(address(_4192))
                                    call address(_4192).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _4010, 0, address(this.address), 128, mem[_4256], mem[_4256 + 196 len floor32(mem[_4256]) + 32]
                            else:
                                require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4127 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4255 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4365 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4365 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4365 + 36] = _4010
                                mem[_4365 + 68] = 0
                                mem[_4365 + 100] = address(_4127)
                                mem[_4365 + 132] = 128
                                mem[_4365 + 164] = mem[_4365]
                                s = 0
                                while s < mem[_4365]:
                                    mem[_4365 + s + 196] = mem[_4365 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4365] % 32:
                                    require ext_code.size(address(_4255))
                                    call address(_4255).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _4010, 0, address(_4127), 128, mem[_4365 + 164 len mem[_4365] + 32]
                                else:
                                    mem[floor32(mem[_4365]) + _4365 + 196] = mem[floor32(mem[_4365]) + _4365 + -(mem[_4365] % 32) + 228 len mem[_4365] % 32]
                                    require ext_code.size(address(_4255))
                                    call address(_4255).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _4010, 0, address(_4127), 128, mem[_4365], mem[_4365 + 196 len floor32(mem[_4365]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
        else:
            mem[64] = (64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + ceil32(return_data.size) + 357
            mem[(64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 356] = return_data.size
            mem[(64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x735472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[(64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + ceil32(return_data.size) + 461 len 28]
            if not return_data.size:
                _3799 = mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                idx = 0
                while idx < _3799:
                    require idx < mem[96]
                    require idx + 1 < mem[96]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 32, 33, 0x544c69627261727920536f72743a204944454e544943414c5f4144445245535345, mem[mem[64] + 101 len 31]
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'Library Sort: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 192]
                        _4012 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                            if idx >= mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128] - 1:
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4194 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4258 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4258 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4258 + 36] = 0
                                mem[_4258 + 68] = _4012
                                mem[_4258 + 100] = this.address
                                mem[_4258 + 132] = 128
                                mem[_4258 + 164] = mem[_4258]
                                s = 0
                                while s < mem[_4258]:
                                    mem[_4258 + s + 196] = mem[_4258 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4258] % 32:
                                    require ext_code.size(address(_4194))
                                    call address(_4194).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _4012, address(this.address), 128, mem[_4258 + 164 len mem[_4258] + 32]
                                else:
                                    mem[floor32(mem[_4258]) + _4258 + 196] = mem[floor32(mem[_4258]) + _4258 + -(mem[_4258] % 32) + 228 len mem[_4258] % 32]
                                    require ext_code.size(address(_4194))
                                    call address(_4194).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _4012, address(this.address), 128, mem[_4258], mem[_4258 + 196 len floor32(mem[_4258]) + 32]
                            else:
                                require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4129 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4257 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4369 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4369 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4369 + 36] = 0
                                mem[_4369 + 68] = _4012
                                mem[_4369 + 100] = address(_4129)
                                mem[_4369 + 132] = 128
                                mem[_4369 + 164] = mem[_4369]
                                s = 0
                                while s < mem[_4369]:
                                    mem[_4369 + s + 196] = mem[_4369 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4369] % 32:
                                    require ext_code.size(address(_4257))
                                    call address(_4257).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _4012, address(_4129), 128, mem[_4369 + 164 len mem[_4369] + 32]
                                else:
                                    mem[floor32(mem[_4369]) + _4369 + 196] = mem[floor32(mem[_4369]) + _4369 + -(mem[_4369] % 32) + 228 len mem[_4369] % 32]
                                    require ext_code.size(address(_4257))
                                    call address(_4257).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _4012, address(_4129), 128, mem[_4369], mem[_4369 + 196 len floor32(mem[_4369]) + 32]
                        else:
                            if idx >= mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128] - 1:
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4196 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4260 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4260 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4260 + 36] = _4012
                                mem[_4260 + 68] = 0
                                mem[_4260 + 100] = this.address
                                mem[_4260 + 132] = 128
                                mem[_4260 + 164] = mem[_4260]
                                s = 0
                                while s < mem[_4260]:
                                    mem[_4260 + s + 196] = mem[_4260 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4260] % 32:
                                    require ext_code.size(address(_4196))
                                    call address(_4196).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _4012, 0, address(this.address), 128, mem[_4260 + 164 len mem[_4260] + 32]
                                else:
                                    mem[floor32(mem[_4260]) + _4260 + 196] = mem[floor32(mem[_4260]) + _4260 + -(mem[_4260] % 32) + 228 len mem[_4260] % 32]
                                    require ext_code.size(address(_4196))
                                    call address(_4196).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _4012, 0, address(this.address), 128, mem[_4260], mem[_4260 + 196 len floor32(mem[_4260]) + 32]
                            else:
                                require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4131 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4259 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4373 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4373 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4373 + 36] = _4012
                                mem[_4373 + 68] = 0
                                mem[_4373 + 100] = address(_4131)
                                mem[_4373 + 132] = 128
                                mem[_4373 + 164] = mem[_4373]
                                s = 0
                                while s < mem[_4373]:
                                    mem[_4373 + s + 196] = mem[_4373 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4373] % 32:
                                    require ext_code.size(address(_4259))
                                    call address(_4259).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _4012, 0, address(_4131), 128, mem[_4373 + 164 len mem[_4373] + 32]
                                else:
                                    mem[floor32(mem[_4373]) + _4373 + 196] = mem[floor32(mem[_4373]) + _4373 + -(mem[_4373] % 32) + 228 len mem[_4373] % 32]
                                    require ext_code.size(address(_4259))
                                    call address(_4259).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _4012, 0, address(_4131), 128, mem[_4373], mem[_4373 + 196 len floor32(mem[_4373]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'Library Sort: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 192]
                        _4013 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                            if idx >= mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128] - 1:
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4198 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4262 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4262 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4262 + 36] = 0
                                mem[_4262 + 68] = _4013
                                mem[_4262 + 100] = this.address
                                mem[_4262 + 132] = 128
                                mem[_4262 + 164] = mem[_4262]
                                s = 0
                                while s < mem[_4262]:
                                    mem[_4262 + s + 196] = mem[_4262 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4262] % 32:
                                    require ext_code.size(address(_4198))
                                    call address(_4198).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _4013, address(this.address), 128, mem[_4262 + 164 len mem[_4262] + 32]
                                else:
                                    mem[floor32(mem[_4262]) + _4262 + 196] = mem[floor32(mem[_4262]) + _4262 + -(mem[_4262] % 32) + 228 len mem[_4262] % 32]
                                    require ext_code.size(address(_4198))
                                    call address(_4198).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _4013, address(this.address), 128, mem[_4262], mem[_4262 + 196 len floor32(mem[_4262]) + 32]
                            else:
                                require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4133 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4261 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4377 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4377 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4377 + 36] = 0
                                mem[_4377 + 68] = _4013
                                mem[_4377 + 100] = address(_4133)
                                mem[_4377 + 132] = 128
                                mem[_4377 + 164] = mem[_4377]
                                s = 0
                                while s < mem[_4377]:
                                    mem[_4377 + s + 196] = mem[_4377 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4377] % 32:
                                    require ext_code.size(address(_4261))
                                    call address(_4261).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _4013, address(_4133), 128, mem[_4377 + 164 len mem[_4377] + 32]
                                else:
                                    mem[floor32(mem[_4377]) + _4377 + 196] = mem[floor32(mem[_4377]) + _4377 + -(mem[_4377] % 32) + 228 len mem[_4377] % 32]
                                    require ext_code.size(address(_4261))
                                    call address(_4261).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _4013, address(_4133), 128, mem[_4377], mem[_4377 + 196 len floor32(mem[_4377]) + 32]
                        else:
                            if idx >= mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128] - 1:
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4200 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4264 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4264 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4264 + 36] = _4013
                                mem[_4264 + 68] = 0
                                mem[_4264 + 100] = this.address
                                mem[_4264 + 132] = 128
                                mem[_4264 + 164] = mem[_4264]
                                s = 0
                                while s < mem[_4264]:
                                    mem[_4264 + s + 196] = mem[_4264 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4264] % 32:
                                    require ext_code.size(address(_4200))
                                    call address(_4200).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _4013, 0, address(this.address), 128, mem[_4264 + 164 len mem[_4264] + 32]
                                else:
                                    mem[floor32(mem[_4264]) + _4264 + 196] = mem[floor32(mem[_4264]) + _4264 + -(mem[_4264] % 32) + 228 len mem[_4264] % 32]
                                    require ext_code.size(address(_4200))
                                    call address(_4200).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _4013, 0, address(this.address), 128, mem[_4264], mem[_4264 + 196 len floor32(mem[_4264]) + 32]
                            else:
                                require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4135 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4263 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4381 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4381 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4381 + 36] = _4013
                                mem[_4381 + 68] = 0
                                mem[_4381 + 100] = address(_4135)
                                mem[_4381 + 132] = 128
                                mem[_4381 + 164] = mem[_4381]
                                s = 0
                                while s < mem[_4381]:
                                    mem[_4381 + s + 196] = mem[_4381 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4381] % 32:
                                    require ext_code.size(address(_4263))
                                    call address(_4263).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _4013, 0, address(_4135), 128, mem[_4381 + 164 len mem[_4381] + 32]
                                else:
                                    mem[floor32(mem[_4381]) + _4381 + 196] = mem[floor32(mem[_4381]) + _4381 + -(mem[_4381] % 32) + 228 len mem[_4381] % 32]
                                    require ext_code.size(address(_4263))
                                    call address(_4263).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _4013, 0, address(_4135), 128, mem[_4381], mem[_4381 + 196 len floor32(mem[_4381]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                require return_data.size >= 32
                if not mem[(64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 388]:
                    revert with 0, 
                                32,
                                36,
                                0x735472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[(64 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + ceil32(return_data.size) + 461 len 28]
                _3800 = mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                idx = 0
                while idx < _3800:
                    require idx < mem[96]
                    require idx + 1 < mem[96]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 32, 33, 0x544c69627261727920536f72743a204944454e544943414c5f4144445245535345, mem[mem[64] + 101 len 31]
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'Library Sort: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 192]
                        _4015 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                            if idx >= mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128] - 1:
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4202 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4266 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4266 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4266 + 36] = 0
                                mem[_4266 + 68] = _4015
                                mem[_4266 + 100] = this.address
                                mem[_4266 + 132] = 128
                                mem[_4266 + 164] = mem[_4266]
                                s = 0
                                while s < mem[_4266]:
                                    mem[_4266 + s + 196] = mem[_4266 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4266] % 32:
                                    require ext_code.size(address(_4202))
                                    call address(_4202).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _4015, address(this.address), 128, mem[_4266 + 164 len mem[_4266] + 32]
                                else:
                                    mem[floor32(mem[_4266]) + _4266 + 196] = mem[floor32(mem[_4266]) + _4266 + -(mem[_4266] % 32) + 228 len mem[_4266] % 32]
                                    require ext_code.size(address(_4202))
                                    call address(_4202).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _4015, address(this.address), 128, mem[_4266], mem[_4266 + 196 len floor32(mem[_4266]) + 32]
                            else:
                                require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4137 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4265 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4385 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4385 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4385 + 36] = 0
                                mem[_4385 + 68] = _4015
                                mem[_4385 + 100] = address(_4137)
                                mem[_4385 + 132] = 128
                                mem[_4385 + 164] = mem[_4385]
                                s = 0
                                while s < mem[_4385]:
                                    mem[_4385 + s + 196] = mem[_4385 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4385] % 32:
                                    require ext_code.size(address(_4265))
                                    call address(_4265).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _4015, address(_4137), 128, mem[_4385 + 164 len mem[_4385] + 32]
                                else:
                                    mem[floor32(mem[_4385]) + _4385 + 196] = mem[floor32(mem[_4385]) + _4385 + -(mem[_4385] % 32) + 228 len mem[_4385] % 32]
                                    require ext_code.size(address(_4265))
                                    call address(_4265).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _4015, address(_4137), 128, mem[_4385], mem[_4385 + 196 len floor32(mem[_4385]) + 32]
                        else:
                            if idx >= mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128] - 1:
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4204 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4268 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4268 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4268 + 36] = _4015
                                mem[_4268 + 68] = 0
                                mem[_4268 + 100] = this.address
                                mem[_4268 + 132] = 128
                                mem[_4268 + 164] = mem[_4268]
                                s = 0
                                while s < mem[_4268]:
                                    mem[_4268 + s + 196] = mem[_4268 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4268] % 32:
                                    require ext_code.size(address(_4204))
                                    call address(_4204).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _4015, 0, address(this.address), 128, mem[_4268 + 164 len mem[_4268] + 32]
                                else:
                                    mem[floor32(mem[_4268]) + _4268 + 196] = mem[floor32(mem[_4268]) + _4268 + -(mem[_4268] % 32) + 228 len mem[_4268] % 32]
                                    require ext_code.size(address(_4204))
                                    call address(_4204).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _4015, 0, address(this.address), 128, mem[_4268], mem[_4268 + 196 len floor32(mem[_4268]) + 32]
                            else:
                                require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4139 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4267 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4389 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4389 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4389 + 36] = _4015
                                mem[_4389 + 68] = 0
                                mem[_4389 + 100] = address(_4139)
                                mem[_4389 + 132] = 128
                                mem[_4389 + 164] = mem[_4389]
                                s = 0
                                while s < mem[_4389]:
                                    mem[_4389 + s + 196] = mem[_4389 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4389] % 32:
                                    require ext_code.size(address(_4267))
                                    call address(_4267).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _4015, 0, address(_4139), 128, mem[_4389 + 164 len mem[_4389] + 32]
                                else:
                                    mem[floor32(mem[_4389]) + _4389 + 196] = mem[floor32(mem[_4389]) + _4389 + -(mem[_4389] % 32) + 228 len mem[_4389] % 32]
                                    require ext_code.size(address(_4267))
                                    call address(_4267).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _4015, 0, address(_4139), 128, mem[_4389], mem[_4389 + 196 len floor32(mem[_4389]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'Library Sort: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 192]
                        _4016 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                            if idx >= mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128] - 1:
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4206 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4270 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4270 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4270 + 36] = 0
                                mem[_4270 + 68] = _4016
                                mem[_4270 + 100] = this.address
                                mem[_4270 + 132] = 128
                                mem[_4270 + 164] = mem[_4270]
                                s = 0
                                while s < mem[_4270]:
                                    mem[_4270 + s + 196] = mem[_4270 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4270] % 32:
                                    require ext_code.size(address(_4206))
                                    call address(_4206).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _4016, address(this.address), 128, mem[_4270 + 164 len mem[_4270] + 32]
                                else:
                                    mem[floor32(mem[_4270]) + _4270 + 196] = mem[floor32(mem[_4270]) + _4270 + -(mem[_4270] % 32) + 228 len mem[_4270] % 32]
                                    require ext_code.size(address(_4206))
                                    call address(_4206).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _4016, address(this.address), 128, mem[_4270], mem[_4270 + 196 len floor32(mem[_4270]) + 32]
                            else:
                                require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4141 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4269 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4393 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4393 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4393 + 36] = 0
                                mem[_4393 + 68] = _4016
                                mem[_4393 + 100] = address(_4141)
                                mem[_4393 + 132] = 128
                                mem[_4393 + 164] = mem[_4393]
                                s = 0
                                while s < mem[_4393]:
                                    mem[_4393 + s + 196] = mem[_4393 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4393] % 32:
                                    require ext_code.size(address(_4269))
                                    call address(_4269).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _4016, address(_4141), 128, mem[_4393 + 164 len mem[_4393] + 32]
                                else:
                                    mem[floor32(mem[_4393]) + _4393 + 196] = mem[floor32(mem[_4393]) + _4393 + -(mem[_4393] % 32) + 228 len mem[_4393] % 32]
                                    require ext_code.size(address(_4269))
                                    call address(_4269).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _4016, address(_4141), 128, mem[_4393], mem[_4393 + 196 len floor32(mem[_4393]) + 32]
                        else:
                            if idx >= mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128] - 1:
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4208 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4272 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4272 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4272 + 36] = _4016
                                mem[_4272 + 68] = 0
                                mem[_4272 + 100] = this.address
                                mem[_4272 + 132] = 128
                                mem[_4272 + 164] = mem[_4272]
                                s = 0
                                while s < mem[_4272]:
                                    mem[_4272 + s + 196] = mem[_4272 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4272] % 32:
                                    require ext_code.size(address(_4208))
                                    call address(_4208).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _4016, 0, address(this.address), 128, mem[_4272 + 164 len mem[_4272] + 32]
                                else:
                                    mem[floor32(mem[_4272]) + _4272 + 196] = mem[floor32(mem[_4272]) + _4272 + -(mem[_4272] % 32) + 228 len mem[_4272] % 32]
                                    require ext_code.size(address(_4208))
                                    call address(_4208).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _4016, 0, address(this.address), 128, mem[_4272], mem[_4272 + 196 len floor32(mem[_4272]) + 32]
                            else:
                                require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4143 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
                                _4271 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                                _4397 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_4397 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_4397 + 36] = _4016
                                mem[_4397 + 68] = 0
                                mem[_4397 + 100] = address(_4143)
                                mem[_4397 + 132] = 128
                                mem[_4397 + 164] = mem[_4397]
                                s = 0
                                while s < mem[_4397]:
                                    mem[_4397 + s + 196] = mem[_4397 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_4397] % 32:
                                    require ext_code.size(address(_4271))
                                    call address(_4271).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _4016, 0, address(_4143), 128, mem[_4397 + 164 len mem[_4397] + 32]
                                else:
                                    mem[floor32(mem[_4397]) + _4397 + 196] = mem[floor32(mem[_4397]) + _4397 + -(mem[_4397] % 32) + 228 len mem[_4397] % 32]
                                    require ext_code.size(address(_4271))
                                    call address(_4271).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _4016, 0, address(_4143), 128, mem[_4397], mem[_4397 + 196 len floor32(mem[_4397]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
    require mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 192] - 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 192]
    if mem[(32 * mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 192] - 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] <= cd[(arg4 + 36)]:
        revert with 0, 'Not profitable'
    if mem[(32 * mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 192] - 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] <= cd[(arg4 + 36)] + (3 * cd[(arg4 + 36)] / 997) + 1:
        revert with 0, 'Could not afford loan fees'
    require 0 < mem[96]
    require ext_code.size(mem[140 len 20])
    call mem[140 len 20].0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, cd[(arg4 + 36)] + (3 * cd[(arg4 + 36)] / 997) + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
