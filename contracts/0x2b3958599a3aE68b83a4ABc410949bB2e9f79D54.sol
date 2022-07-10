contract main {




// =====================  Runtime code  =====================


#
#  - sub_4b5255e0(?)
#  - sub_80711592(?)
#  - sub_8d898253(?)
#  - rescueTokensSafe(address arg1, address arg2, uint256 arg3)
#  - sub_f49e2efa(?)
#  - _fallback()
#
address owner;
address feeCollectorAddress;
uint256 baseFee;
uint256 DIVISOR;

function DIVISOR() {
    return DIVISOR
}

function baseFee() {
    return baseFee
}

function owner() {
    return owner
}

function feeCollector() {
    return feeCollectorAddress
}

function sub_ed91012d(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    baseFee = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_e5871fdc(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    feeCollectorAddress = address(arg1)
}

function retrieveNative(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call arg1 with:
       value eth.balance(this.address) wei
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

function getFactory(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function rescueTokens(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function getPair(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function sub_b4822be3(?) payable {
    require calldata.size - 4 >= 160
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == address(cd[68])
    require cd[100] == address(cd[100])
    if cd[132] < block.timestamp:
        revert with 0, 'RBXTeleSwap: EXPIRED'
    staticcall address(cd[100]).0xad5c4648 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if 0 >= ('cd', 36).length:
        revert with 0, 50
    require ('cd', 36)[0] == address(('cd', 36)[0])
    if address(('cd', 36)[0]) != ext_call.return_data[12 len 20]:
        revert with 0, 'RBXTeleSwap: INVALID_PATH'
    if msg.value and baseFee > -1 / msg.value:
        revert with 0, 17
    if not DIVISOR:
        revert with 0, 18
    if msg.value < msg.value * baseFee / DIVISOR:
        revert with 0, 17
    mem[ceil32(return_data.size) + 96] = 0
    mem[ceil32(return_data.size) + 128 len 0] = None
    call feeCollectorAddress with:
       value msg.value * baseFee / DIVISOR wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: ETH_TRANSFER_FAILED'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).deposit() with:
           value msg.value - (msg.value * baseFee / DIVISOR) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if 0 >= ('cd', 36).length:
            revert with 0, 50
        require ('cd', 36)[0] == address(('cd', 36)[0])
        if 1 >= ('cd', 36).length:
            revert with 0, 50
        require ('cd', 36)[1] == address(('cd', 36)[1])
        staticcall address(cd[100]).factory() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(2 * ceil32(return_data.size)) + 132] = address(('cd', 36)[0])
        mem[(2 * ceil32(return_data.size)) + 164] = address(('cd', 36)[1])
        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(('cd', 36)[0]), address(('cd', 36)[1])
        mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(4 * ceil32(return_data.size)) + 132] = ext_call.return_data[12 len 20]
        mem[(4 * ceil32(return_data.size)) + 164] = msg.value - (msg.value * baseFee / DIVISOR)
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args ext_call.return_data[12 len 20], msg.value - (msg.value * baseFee / DIVISOR)
        mem[(4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 1
        if ('cd', 36).length < 1:
            revert with 0, 17
        if ('cd', 36).length - 1 >= ('cd', 36).length:
            revert with 0, 50
        require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
        mem[(6 * ceil32(return_data.size)) + 132] = address(cd[68])
        staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args address(cd[68])
        mem[(6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[64] = (7 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 160
        mem[(7 * ceil32(return_data.size)) + 128] = ('cd', 36).length
        mem[(7 * ceil32(return_data.size)) + 160 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
        mem[(7 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 160] = 0
        if var205001 < 1:
            revert with 0, 17
        if var209002 < var209001:
            if var211001 < ('cd', 36).length:
                if 1 > !var215002:
                    revert with 0, 17
                idx = var217003 + 1
                s = var217006
                t = var217009
                while idx < ('cd', 36).length:
                    _15738 = mem[(32 * idx) + (7 * ceil32(return_data.size)) + 160]
                    if address(s) == mem[(32 * idx) + (7 * ceil32(return_data.size)) + 172 len 20]:
                        revert with 0, 'RouterLibrary: IDENTICAL_ADDRESSES'
                    if address(s) < mem[(32 * idx) + (7 * ceil32(return_data.size)) + 172 len 20]:
                        if not address(s):
                            revert with 0, 'RouterLibrary: ZERO_ADDRESS'
                        staticcall address(cd[100]).factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15782 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _15790 = mem[_15782]
                        require mem[_15782] == mem[_15782 + 12 len 20]
                        mem[mem[64] + 4] = address(s)
                        mem[mem[64] + 36] = address(_15738)
                        staticcall address(_15790).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(s), address(_15738)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15814 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _15822 = mem[_15814]
                        require mem[_15814] == mem[_15814 + 12 len 20]
                        staticcall mem[_15814 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15846 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _15854 = mem[_15846]
                        require mem[_15846] == mem[_15846 + 18 len 14]
                        _15862 = mem[_15846 + 32]
                        require mem[_15846 + 32] == mem[_15846 + 50 len 14]
                        require mem[_15846 + 64] == mem[_15846 + 92 len 4]
                        mem[mem[64] + 4] = address(_15822)
                        staticcall address(s).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_15822)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if address(s) != address(s):
                            _15911 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _15927 = mem[_15911]
                            if mem[_15911] < Mask(112, 0, _15862):
                                revert with 0, 17
                            if mem[_15911] - Mask(112, 0, _15862) <= 0:
                                revert with 0, 'RouterLibrary: INSUFFICIENT_INPUT_AMOUNT'
                            if Mask(112, 0, _15862) <= 0:
                                revert with 0, 'RouterLibrary: INSUFFICIENT_LIQUIDITY'
                            if Mask(112, 0, _15854) <= 0:
                                revert with 0, 'RouterLibrary: INSUFFICIENT_LIQUIDITY'
                            if mem[_15911] - Mask(112, 0, _15862) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                revert with 0, 17
                            if (997 * mem[_15911]) - (997 * Mask(112, 0, _15862)) and Mask(112, 0, _15854) > -1 / (997 * mem[_15911]) - (997 * Mask(112, 0, _15862)):
                                revert with 0, 17
                            if Mask(112, 0, _15862) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 0, 17
                            if 1000 * Mask(112, 0, _15862) > !((997 * mem[_15911]) - (997 * Mask(112, 0, _15862))):
                                revert with 0, 17
                            if not (3 * Mask(112, 0, _15862)) + (997 * mem[_15911]):
                                revert with 0, 18
                            if mem[(7 * ceil32(return_data.size)) + 128] < 2:
                                revert with 0, 17
                            if address(s) == address(s):
                                if t >= mem[(7 * ceil32(return_data.size)) + 128] - 2:
                                    _16072 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_16072 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_16072 + 36] = 0
                                    mem[_16072 + 68] = (997 * _15927 * Mask(112, 0, _15854)) - (997 * Mask(112, 0, _15862) * Mask(112, 0, _15854)) / (3 * Mask(112, 0, _15862)) + (997 * _15927)
                                    mem[_16072 + 100] = address(cd[68])
                                    mem[_16072 + 132] = 128
                                    mem[_16072 + 164] = mem[_16072]
                                    idx = 0
                                    while idx < mem[_16072]:
                                        mem[idx + _16072 + 196] = mem[idx + _16072 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(mem[_16072]) > mem[_16072]:
                                        mem[mem[_16072] + _16072 + 196] = 0
                                    require ext_code.size(address(_15822))
                                    call address(_15822).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * _15927 * Mask(112, 0, _15854)) - (997 * Mask(112, 0, _15862) * Mask(112, 0, _15854)) / (3 * Mask(112, 0, _15862)) + (997 * _15927), address(cd[68]), 128, mem[_16072], mem[_16072 + 196 len ceil32(mem[_16072])]
                                else:
                                    if 2 > !t:
                                        revert with 0, 17
                                    if t + 2 >= mem[(7 * ceil32(return_data.size)) + 128]:
                                        revert with 0, 50
                                    _16168 = mem[(32 * t + 2) + (7 * ceil32(return_data.size)) + 160]
                                    staticcall address(cd[100]).factory() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _16266 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _16328 = mem[_16266]
                                    require mem[_16266] == mem[_16266 + 12 len 20]
                                    mem[mem[64] + 4] = address(_15738)
                                    mem[mem[64] + 36] = address(_16168)
                                    staticcall address(_16328).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_15738), address(_16168)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _16488 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _16520 = mem[_16488]
                                    require mem[_16488] == mem[_16488 + 12 len 20]
                                    _16620 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_16620 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_16620 + 36] = 0
                                    mem[_16620 + 68] = (997 * _15927 * Mask(112, 0, _15854)) - (997 * Mask(112, 0, _15862) * Mask(112, 0, _15854)) / (3 * Mask(112, 0, _15862)) + (997 * _15927)
                                    mem[_16620 + 100] = address(_16520)
                                    mem[_16620 + 132] = 128
                                    mem[_16620 + 164] = mem[_16620]
                                    idx = 0
                                    while idx < mem[_16620]:
                                        mem[idx + _16620 + 196] = mem[idx + _16620 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(mem[_16620]) > mem[_16620]:
                                        mem[mem[_16620] + _16620 + 196] = 0
                                    require ext_code.size(address(_15822))
                                    call address(_15822).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * _15927 * Mask(112, 0, _15854)) - (997 * Mask(112, 0, _15862) * Mask(112, 0, _15854)) / (3 * Mask(112, 0, _15862)) + (997 * _15927), address(_16520), 128, mem[_16620], mem[_16620 + 196 len ceil32(mem[_16620])]
                            else:
                                if t >= mem[(7 * ceil32(return_data.size)) + 128] - 2:
                                    _16073 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_16073 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_16073 + 36] = (997 * _15927 * Mask(112, 0, _15854)) - (997 * Mask(112, 0, _15862) * Mask(112, 0, _15854)) / (3 * Mask(112, 0, _15862)) + (997 * _15927)
                                    mem[_16073 + 68] = 0
                                    mem[_16073 + 100] = address(cd[68])
                                    mem[_16073 + 132] = 128
                                    mem[_16073 + 164] = mem[_16073]
                                    idx = 0
                                    while idx < mem[_16073]:
                                        mem[idx + _16073 + 196] = mem[idx + _16073 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(mem[_16073]) > mem[_16073]:
                                        mem[mem[_16073] + _16073 + 196] = 0
                                    require ext_code.size(address(_15822))
                                    call address(_15822).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * _15927 * Mask(112, 0, _15854)) - (997 * Mask(112, 0, _15862) * Mask(112, 0, _15854)) / (3 * Mask(112, 0, _15862)) + (997 * _15927), 0, address(cd[68]), 128, mem[_16073], mem[_16073 + 196 len ceil32(mem[_16073])]
                                else:
                                    if 2 > !t:
                                        revert with 0, 17
                                    if t + 2 >= mem[(7 * ceil32(return_data.size)) + 128]:
                                        revert with 0, 50
                                    _16169 = mem[(32 * t + 2) + (7 * ceil32(return_data.size)) + 160]
                                    staticcall address(cd[100]).factory() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _16268 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _16329 = mem[_16268]
                                    require mem[_16268] == mem[_16268 + 12 len 20]
                                    mem[mem[64] + 4] = address(_15738)
                                    mem[mem[64] + 36] = address(_16169)
                                    staticcall address(_16329).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_15738), address(_16169)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _16489 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _16521 = mem[_16489]
                                    require mem[_16489] == mem[_16489 + 12 len 20]
                                    _16623 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_16623 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_16623 + 36] = (997 * _15927 * Mask(112, 0, _15854)) - (997 * Mask(112, 0, _15862) * Mask(112, 0, _15854)) / (3 * Mask(112, 0, _15862)) + (997 * _15927)
                                    mem[_16623 + 68] = 0
                                    mem[_16623 + 100] = address(_16521)
                                    mem[_16623 + 132] = 128
                                    mem[_16623 + 164] = mem[_16623]
                                    idx = 0
                                    while idx < mem[_16623]:
                                        mem[idx + _16623 + 196] = mem[idx + _16623 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(mem[_16623]) > mem[_16623]:
                                        mem[mem[_16623] + _16623 + 196] = 0
                                    require ext_code.size(address(_15822))
                                    call address(_15822).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * _15927 * Mask(112, 0, _15854)) - (997 * Mask(112, 0, _15862) * Mask(112, 0, _15854)) / (3 * Mask(112, 0, _15862)) + (997 * _15927), 0, address(_16521), 128, mem[_16623], mem[_16623 + 196 len ceil32(mem[_16623])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if t == -1:
                                revert with 0, 17
                            if mem[(7 * ceil32(return_data.size)) + 128] < 1:
                                revert with 0, 17
                            if t + 1 < mem[(7 * ceil32(return_data.size)) + 128] - 1:
                                if t + 1 >= mem[(7 * ceil32(return_data.size)) + 128]:
                                    revert with 0, 50
                                if 1 > !(t + 1):
                                    revert with 0, 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + 160]
                                t = t + 1
                                continue 
                            if ('cd', 36).length < 1:
                                revert with 0, 17
                            if ('cd', 36).length - 1 >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                            staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(cd[68])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 17
                            if 0 > !(msg.value * baseFee / DIVISOR):
                                revert with 0, 17
                            if msg.value * baseFee / DIVISOR < cd[4]:
                                revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                        else:
                            _15910 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _15926 = mem[_15910]
                            if mem[_15910] < Mask(112, 0, _15854):
                                revert with 0, 17
                            if mem[_15910] - Mask(112, 0, _15854) <= 0:
                                revert with 0, 'RouterLibrary: INSUFFICIENT_INPUT_AMOUNT'
                            if Mask(112, 0, _15854) <= 0:
                                revert with 0, 'RouterLibrary: INSUFFICIENT_LIQUIDITY'
                            if Mask(112, 0, _15862) <= 0:
                                revert with 0, 'RouterLibrary: INSUFFICIENT_LIQUIDITY'
                            if mem[_15910] - Mask(112, 0, _15854) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                revert with 0, 17
                            if (997 * mem[_15910]) - (997 * Mask(112, 0, _15854)) and Mask(112, 0, _15862) > -1 / (997 * mem[_15910]) - (997 * Mask(112, 0, _15854)):
                                revert with 0, 17
                            if Mask(112, 0, _15854) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 0, 17
                            if 1000 * Mask(112, 0, _15854) > !((997 * mem[_15910]) - (997 * Mask(112, 0, _15854))):
                                revert with 0, 17
                            if not (3 * Mask(112, 0, _15854)) + (997 * mem[_15910]):
                                revert with 0, 18
                            if mem[(7 * ceil32(return_data.size)) + 128] < 2:
                                revert with 0, 17
                            if address(s) == address(s):
                                if t >= mem[(7 * ceil32(return_data.size)) + 128] - 2:
                                    _16070 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_16070 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_16070 + 36] = 0
                                    mem[_16070 + 68] = (997 * _15926 * Mask(112, 0, _15862)) - (997 * Mask(112, 0, _15854) * Mask(112, 0, _15862)) / (3 * Mask(112, 0, _15854)) + (997 * _15926)
                                    mem[_16070 + 100] = address(cd[68])
                                    mem[_16070 + 132] = 128
                                    mem[_16070 + 164] = mem[_16070]
                                    idx = 0
                                    while idx < mem[_16070]:
                                        mem[idx + _16070 + 196] = mem[idx + _16070 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(mem[_16070]) <= mem[_16070]:
                                        require ext_code.size(address(_15822))
                                        call address(_15822).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_16070]) + _16070 + -mem[64] + 192]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if t == -1:
                                            revert with 0, 17
                                        if mem[(7 * ceil32(return_data.size)) + 128] < 1:
                                            revert with 0, 17
                                        if t + 1 < mem[(7 * ceil32(return_data.size)) + 128] - 1:
                                            if t + 1 >= mem[(7 * ceil32(return_data.size)) + 128]:
                                                revert with 0, 50
                                            if 1 > !(t + 1):
                                                revert with 0, 17
                                            idx = t + 2
                                            s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + 160]
                                            t = t + 1
                                            continue 
                                        if ('cd', 36).length < 1:
                                            revert with 0, 17
                                        if ('cd', 36).length - 1 >= ('cd', 36).length:
                                            revert with 0, 50
                                        require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _18696 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_18696] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_18696] - ext_call.return_data[0] > !(msg.value * baseFee / DIVISOR):
                                            revert with 0, 17
                                        if mem[_18696] - ext_call.return_data[0] + (msg.value * baseFee / DIVISOR) < cd[4]:
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                    else:
                                        mem[mem[_16070] + _16070 + 196] = 0
                                        require ext_code.size(address(_15822))
                                        call address(_15822).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_16070]) + _16070 + -mem[64] + 192]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if t == -1:
                                            revert with 0, 17
                                        if mem[(7 * ceil32(return_data.size)) + 128] < 1:
                                            revert with 0, 17
                                        if t + 1 < mem[(7 * ceil32(return_data.size)) + 128] - 1:
                                            if t + 1 >= mem[(7 * ceil32(return_data.size)) + 128]:
                                                revert with 0, 50
                                            if 1 > !(t + 1):
                                                revert with 0, 17
                                            idx = t + 2
                                            s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + 160]
                                            t = t + 1
                                            continue 
                                        if ('cd', 36).length < 1:
                                            revert with 0, 17
                                        if ('cd', 36).length - 1 >= ('cd', 36).length:
                                            revert with 0, 50
                                        require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _18697 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_18697] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_18697] - ext_call.return_data[0] > !(msg.value * baseFee / DIVISOR):
                                            revert with 0, 17
                                        if mem[_18697] - ext_call.return_data[0] + (msg.value * baseFee / DIVISOR) < cd[4]:
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                else:
                                    if 2 > !t:
                                        revert with 0, 17
                                    if t + 2 >= mem[(7 * ceil32(return_data.size)) + 128]:
                                        revert with 0, 50
                                    _16166 = mem[(32 * t + 2) + (7 * ceil32(return_data.size)) + 160]
                                    staticcall address(cd[100]).factory() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _16262 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _16326 = mem[_16262]
                                    require mem[_16262] == mem[_16262 + 12 len 20]
                                    mem[mem[64] + 4] = address(_15738)
                                    mem[mem[64] + 36] = address(_16166)
                                    staticcall address(_16326).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_15738), address(_16166)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _16486 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _16518 = mem[_16486]
                                    require mem[_16486] == mem[_16486 + 12 len 20]
                                    _16614 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_16614 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_16614 + 36] = 0
                                    mem[_16614 + 68] = (997 * _15926 * Mask(112, 0, _15862)) - (997 * Mask(112, 0, _15854) * Mask(112, 0, _15862)) / (3 * Mask(112, 0, _15854)) + (997 * _15926)
                                    mem[_16614 + 100] = address(_16518)
                                    mem[_16614 + 132] = 128
                                    mem[_16614 + 164] = mem[_16614]
                                    idx = 0
                                    while idx < mem[_16614]:
                                        mem[idx + _16614 + 196] = mem[idx + _16614 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(mem[_16614]) > mem[_16614]:
                                        mem[mem[_16614] + _16614 + 196] = 0
                                    require ext_code.size(address(_15822))
                                    call address(_15822).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * _15926 * Mask(112, 0, _15862)) - (997 * Mask(112, 0, _15854) * Mask(112, 0, _15862)) / (3 * Mask(112, 0, _15854)) + (997 * _15926), address(_16518), 128, mem[_16614], mem[_16614 + 196 len ceil32(mem[_16614])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if t == -1:
                                        revert with 0, 17
                                    if mem[(7 * ceil32(return_data.size)) + 128] < 1:
                                        revert with 0, 17
                                    if t + 1 < mem[(7 * ceil32(return_data.size)) + 128] - 1:
                                        if t + 1 >= mem[(7 * ceil32(return_data.size)) + 128]:
                                            revert with 0, 50
                                        if 1 > !(t + 1):
                                            revert with 0, 17
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + 160]
                                        t = t + 1
                                        continue 
                                    if ('cd', 36).length < 1:
                                        revert with 0, 17
                                    if ('cd', 36).length - 1 >= ('cd', 36).length:
                                        revert with 0, 50
                                    require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                    staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(cd[68])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if 0 > !(msg.value * baseFee / DIVISOR):
                                        revert with 0, 17
                                    if msg.value * baseFee / DIVISOR < cd[4]:
                                        revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                            else:
                                if t >= mem[(7 * ceil32(return_data.size)) + 128] - 2:
                                    _16071 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_16071 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_16071 + 36] = (997 * _15926 * Mask(112, 0, _15862)) - (997 * Mask(112, 0, _15854) * Mask(112, 0, _15862)) / (3 * Mask(112, 0, _15854)) + (997 * _15926)
                                    mem[_16071 + 68] = 0
                                    mem[_16071 + 100] = address(cd[68])
                                    mem[_16071 + 132] = 128
                                    mem[_16071 + 164] = mem[_16071]
                                    idx = 0
                                    while idx < mem[_16071]:
                                        mem[idx + _16071 + 196] = mem[idx + _16071 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(mem[_16071]) > mem[_16071]:
                                        mem[mem[_16071] + _16071 + 196] = 0
                                    require ext_code.size(address(_15822))
                                    call address(_15822).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * _15926 * Mask(112, 0, _15862)) - (997 * Mask(112, 0, _15854) * Mask(112, 0, _15862)) / (3 * Mask(112, 0, _15854)) + (997 * _15926), 0, address(cd[68]), 128, mem[_16071], mem[_16071 + 196 len ceil32(mem[_16071])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if t == -1:
                                        revert with 0, 17
                                    if mem[(7 * ceil32(return_data.size)) + 128] < 1:
                                        revert with 0, 17
                                    if t + 1 < mem[(7 * ceil32(return_data.size)) + 128] - 1:
                                        if t + 1 >= mem[(7 * ceil32(return_data.size)) + 128]:
                                            revert with 0, 50
                                        if 1 > !(t + 1):
                                            revert with 0, 17
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + 160]
                                        t = t + 1
                                        continue 
                                    if ('cd', 36).length < 1:
                                        revert with 0, 17
                                    if ('cd', 36).length - 1 >= ('cd', 36).length:
                                        revert with 0, 50
                                    require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                    staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(cd[68])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if 0 > !(msg.value * baseFee / DIVISOR):
                                        revert with 0, 17
                                    if msg.value * baseFee / DIVISOR < cd[4]:
                                        revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                else:
                                    if 2 > !t:
                                        revert with 0, 17
                                    if t + 2 >= mem[(7 * ceil32(return_data.size)) + 128]:
                                        revert with 0, 50
                                    _16167 = mem[(32 * t + 2) + (7 * ceil32(return_data.size)) + 160]
                                    staticcall address(cd[100]).factory() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _16264 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _16327 = mem[_16264]
                                    require mem[_16264] == mem[_16264 + 12 len 20]
                                    mem[mem[64] + 4] = address(_15738)
                                    mem[mem[64] + 36] = address(_16167)
                                    staticcall address(_16327).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_15738), address(_16167)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _16487 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _16519 = mem[_16487]
                                    require mem[_16487] == mem[_16487 + 12 len 20]
                                    _16617 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_16617 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_16617 + 36] = (997 * _15926 * Mask(112, 0, _15862)) - (997 * Mask(112, 0, _15854) * Mask(112, 0, _15862)) / (3 * Mask(112, 0, _15854)) + (997 * _15926)
                                    mem[_16617 + 68] = 0
                                    mem[_16617 + 100] = address(_16519)
                                    mem[_16617 + 132] = 128
                                    mem[_16617 + 164] = mem[_16617]
                                    idx = 0
                                    while idx < mem[_16617]:
                                        mem[idx + _16617 + 196] = mem[idx + _16617 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(mem[_16617]) <= mem[_16617]:
                                        require ext_code.size(address(_15822))
                                        call address(_15822).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_16617]) + _16617 + -mem[64] + 192]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if t == -1:
                                            revert with 0, 17
                                        if mem[(7 * ceil32(return_data.size)) + 128] < 1:
                                            revert with 0, 17
                                        if t + 1 < mem[(7 * ceil32(return_data.size)) + 128] - 1:
                                            if t + 1 >= mem[(7 * ceil32(return_data.size)) + 128]:
                                                revert with 0, 50
                                            if 1 > !(t + 1):
                                                revert with 0, 17
                                            idx = t + 2
                                            s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + 160]
                                            t = t + 1
                                            continue 
                                        if ('cd', 36).length < 1:
                                            revert with 0, 17
                                        if ('cd', 36).length - 1 >= ('cd', 36).length:
                                            revert with 0, 50
                                        require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _18698 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_18698] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_18698] - ext_call.return_data[0] > !(msg.value * baseFee / DIVISOR):
                                            revert with 0, 17
                                        if mem[_18698] - ext_call.return_data[0] + (msg.value * baseFee / DIVISOR) < cd[4]:
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                    else:
                                        mem[mem[_16617] + _16617 + 196] = 0
                                        require ext_code.size(address(_15822))
                                        call address(_15822).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_16617]) + _16617 + -mem[64] + 192]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if t == -1:
                                            revert with 0, 17
                                        if mem[(7 * ceil32(return_data.size)) + 128] < 1:
                                            revert with 0, 17
                                        if t + 1 < mem[(7 * ceil32(return_data.size)) + 128] - 1:
                                            if t + 1 >= mem[(7 * ceil32(return_data.size)) + 128]:
                                                revert with 0, 50
                                            if 1 > !(t + 1):
                                                revert with 0, 17
                                            idx = t + 2
                                            s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + 160]
                                            t = t + 1
                                            continue 
                                        if ('cd', 36).length < 1:
                                            revert with 0, 17
                                        if ('cd', 36).length - 1 >= ('cd', 36).length:
                                            revert with 0, 50
                                        require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _18699 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_18699] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_18699] - ext_call.return_data[0] > !(msg.value * baseFee / DIVISOR):
                                            revert with 0, 17
                                        if mem[_18699] - ext_call.return_data[0] + (msg.value * baseFee / DIVISOR) < cd[4]:
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                    else:
                        if not mem[(32 * idx) + (7 * ceil32(return_data.size)) + 172 len 20]:
                            revert with 0, 'RouterLibrary: ZERO_ADDRESS'
                        staticcall address(cd[100]).factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15783 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _15791 = mem[_15783]
                        require mem[_15783] == mem[_15783 + 12 len 20]
                        mem[mem[64] + 4] = address(s)
                        mem[mem[64] + 36] = address(_15738)
                        staticcall address(_15791).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(s), address(_15738)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15815 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _15823 = mem[_15815]
                        require mem[_15815] == mem[_15815 + 12 len 20]
                        staticcall mem[_15815 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15847 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _15855 = mem[_15847]
                        require mem[_15847] == mem[_15847 + 18 len 14]
                        _15863 = mem[_15847 + 32]
                        require mem[_15847 + 32] == mem[_15847 + 50 len 14]
                        require mem[_15847 + 64] == mem[_15847 + 92 len 4]
                        mem[mem[64] + 4] = address(_15823)
                        staticcall address(s).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_15823)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if address(s) == address(_15738):
                            _15912 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _15928 = mem[_15912]
                            if mem[_15912] < Mask(112, 0, _15855):
                                revert with 0, 17
                            if mem[_15912] - Mask(112, 0, _15855) <= 0:
                                revert with 0, 'RouterLibrary: INSUFFICIENT_INPUT_AMOUNT'
                            if Mask(112, 0, _15855) <= 0:
                                revert with 0, 'RouterLibrary: INSUFFICIENT_LIQUIDITY'
                            if Mask(112, 0, _15863) <= 0:
                                revert with 0, 'RouterLibrary: INSUFFICIENT_LIQUIDITY'
                            if mem[_15912] - Mask(112, 0, _15855) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                revert with 0, 17
                            if (997 * mem[_15912]) - (997 * Mask(112, 0, _15855)) and Mask(112, 0, _15863) > -1 / (997 * mem[_15912]) - (997 * Mask(112, 0, _15855)):
                                revert with 0, 17
                            if Mask(112, 0, _15855) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 0, 17
                            if 1000 * Mask(112, 0, _15855) > !((997 * mem[_15912]) - (997 * Mask(112, 0, _15855))):
                                revert with 0, 17
                            if not (3 * Mask(112, 0, _15855)) + (997 * mem[_15912]):
                                revert with 0, 18
                            if mem[(7 * ceil32(return_data.size)) + 128] < 2:
                                revert with 0, 17
                            if address(s) == address(_15738):
                                if t >= mem[(7 * ceil32(return_data.size)) + 128] - 2:
                                    _16074 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_16074 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_16074 + 36] = 0
                                    mem[_16074 + 68] = (997 * _15928 * Mask(112, 0, _15863)) - (997 * Mask(112, 0, _15855) * Mask(112, 0, _15863)) / (3 * Mask(112, 0, _15855)) + (997 * _15928)
                                    mem[_16074 + 100] = address(cd[68])
                                    mem[_16074 + 132] = 128
                                    mem[_16074 + 164] = mem[_16074]
                                    idx = 0
                                    while idx < mem[_16074]:
                                        mem[idx + _16074 + 196] = mem[idx + _16074 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(mem[_16074]) <= mem[_16074]:
                                        require ext_code.size(address(_15823))
                                        call address(_15823).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_16074]) + _16074 + -mem[64] + 192]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if t == -1:
                                            revert with 0, 17
                                        if mem[(7 * ceil32(return_data.size)) + 128] < 1:
                                            revert with 0, 17
                                        if t + 1 < mem[(7 * ceil32(return_data.size)) + 128] - 1:
                                            if t + 1 >= mem[(7 * ceil32(return_data.size)) + 128]:
                                                revert with 0, 50
                                            if 1 > !(t + 1):
                                                revert with 0, 17
                                            idx = t + 2
                                            s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + 160]
                                            t = t + 1
                                            continue 
                                        if ('cd', 36).length < 1:
                                            revert with 0, 17
                                        if ('cd', 36).length - 1 >= ('cd', 36).length:
                                            revert with 0, 50
                                        require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _18712 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_18712] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_18712] - ext_call.return_data[0] > !(msg.value * baseFee / DIVISOR):
                                            revert with 0, 17
                                        if mem[_18712] - ext_call.return_data[0] + (msg.value * baseFee / DIVISOR) < cd[4]:
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                    else:
                                        mem[mem[_16074] + _16074 + 196] = 0
                                        require ext_code.size(address(_15823))
                                        call address(_15823).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_16074]) + _16074 + -mem[64] + 192]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if t == -1:
                                            revert with 0, 17
                                        if mem[(7 * ceil32(return_data.size)) + 128] < 1:
                                            revert with 0, 17
                                        if t + 1 < mem[(7 * ceil32(return_data.size)) + 128] - 1:
                                            if t + 1 >= mem[(7 * ceil32(return_data.size)) + 128]:
                                                revert with 0, 50
                                            if 1 > !(t + 1):
                                                revert with 0, 17
                                            idx = t + 2
                                            s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + 160]
                                            t = t + 1
                                            continue 
                                        if ('cd', 36).length < 1:
                                            revert with 0, 17
                                        if ('cd', 36).length - 1 >= ('cd', 36).length:
                                            revert with 0, 50
                                        require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _18713 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_18713] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_18713] - ext_call.return_data[0] > !(msg.value * baseFee / DIVISOR):
                                            revert with 0, 17
                                        if mem[_18713] - ext_call.return_data[0] + (msg.value * baseFee / DIVISOR) < cd[4]:
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                else:
                                    if 2 > !t:
                                        revert with 0, 17
                                    if t + 2 >= mem[(7 * ceil32(return_data.size)) + 128]:
                                        revert with 0, 50
                                    _16170 = mem[(32 * t + 2) + (7 * ceil32(return_data.size)) + 160]
                                    staticcall address(cd[100]).factory() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _16270 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _16330 = mem[_16270]
                                    require mem[_16270] == mem[_16270 + 12 len 20]
                                    mem[mem[64] + 4] = address(_15738)
                                    mem[mem[64] + 36] = address(_16170)
                                    staticcall address(_16330).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_15738), address(_16170)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _16490 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _16522 = mem[_16490]
                                    require mem[_16490] == mem[_16490 + 12 len 20]
                                    _16626 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_16626 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_16626 + 36] = 0
                                    mem[_16626 + 68] = (997 * _15928 * Mask(112, 0, _15863)) - (997 * Mask(112, 0, _15855) * Mask(112, 0, _15863)) / (3 * Mask(112, 0, _15855)) + (997 * _15928)
                                    mem[_16626 + 100] = address(_16522)
                                    mem[_16626 + 132] = 128
                                    mem[_16626 + 164] = mem[_16626]
                                    idx = 0
                                    while idx < mem[_16626]:
                                        mem[idx + _16626 + 196] = mem[idx + _16626 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(mem[_16626]) <= mem[_16626]:
                                        require ext_code.size(address(_15823))
                                        call address(_15823).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_16626]) + _16626 + -mem[64] + 192]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if t == -1:
                                            revert with 0, 17
                                        if mem[(7 * ceil32(return_data.size)) + 128] < 1:
                                            revert with 0, 17
                                        if t + 1 < mem[(7 * ceil32(return_data.size)) + 128] - 1:
                                            if t + 1 >= mem[(7 * ceil32(return_data.size)) + 128]:
                                                revert with 0, 50
                                            if 1 > !(t + 1):
                                                revert with 0, 17
                                            idx = t + 2
                                            s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + 160]
                                            t = t + 1
                                            continue 
                                        if ('cd', 36).length < 1:
                                            revert with 0, 17
                                        if ('cd', 36).length - 1 >= ('cd', 36).length:
                                            revert with 0, 50
                                        require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _18710 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_18710] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_18710] - ext_call.return_data[0] > !(msg.value * baseFee / DIVISOR):
                                            revert with 0, 17
                                        if mem[_18710] - ext_call.return_data[0] + (msg.value * baseFee / DIVISOR) < cd[4]:
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                    else:
                                        mem[mem[_16626] + _16626 + 196] = 0
                                        require ext_code.size(address(_15823))
                                        call address(_15823).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_16626]) + _16626 + -mem[64] + 192]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if t == -1:
                                            revert with 0, 17
                                        if mem[(7 * ceil32(return_data.size)) + 128] < 1:
                                            revert with 0, 17
                                        if t + 1 < mem[(7 * ceil32(return_data.size)) + 128] - 1:
                                            if t + 1 >= mem[(7 * ceil32(return_data.size)) + 128]:
                                                revert with 0, 50
                                            if 1 > !(t + 1):
                                                revert with 0, 17
                                            idx = t + 2
                                            s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + 160]
                                            t = t + 1
                                            continue 
                                        if ('cd', 36).length < 1:
                                            revert with 0, 17
                                        if ('cd', 36).length - 1 >= ('cd', 36).length:
                                            revert with 0, 50
                                        require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _18711 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_18711] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_18711] - ext_call.return_data[0] > !(msg.value * baseFee / DIVISOR):
                                            revert with 0, 17
                                        if mem[_18711] - ext_call.return_data[0] + (msg.value * baseFee / DIVISOR) < cd[4]:
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                            else:
                                if t >= mem[(7 * ceil32(return_data.size)) + 128] - 2:
                                    _16075 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_16075 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_16075 + 36] = (997 * _15928 * Mask(112, 0, _15863)) - (997 * Mask(112, 0, _15855) * Mask(112, 0, _15863)) / (3 * Mask(112, 0, _15855)) + (997 * _15928)
                                    mem[_16075 + 68] = 0
                                    mem[_16075 + 100] = address(cd[68])
                                    mem[_16075 + 132] = 128
                                    mem[_16075 + 164] = mem[_16075]
                                    idx = 0
                                    while idx < mem[_16075]:
                                        mem[idx + _16075 + 196] = mem[idx + _16075 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(mem[_16075]) <= mem[_16075]:
                                        require ext_code.size(address(_15823))
                                        call address(_15823).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_16075]) + _16075 + -mem[64] + 192]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if t == -1:
                                            revert with 0, 17
                                        if mem[(7 * ceil32(return_data.size)) + 128] < 1:
                                            revert with 0, 17
                                        if t + 1 < mem[(7 * ceil32(return_data.size)) + 128] - 1:
                                            if t + 1 >= mem[(7 * ceil32(return_data.size)) + 128]:
                                                revert with 0, 50
                                            if 1 > !(t + 1):
                                                revert with 0, 17
                                            idx = t + 2
                                            s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + 160]
                                            t = t + 1
                                            continue 
                                        if ('cd', 36).length < 1:
                                            revert with 0, 17
                                        if ('cd', 36).length - 1 >= ('cd', 36).length:
                                            revert with 0, 50
                                        require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _18716 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_18716] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_18716] - ext_call.return_data[0] > !(msg.value * baseFee / DIVISOR):
                                            revert with 0, 17
                                        if mem[_18716] - ext_call.return_data[0] + (msg.value * baseFee / DIVISOR) < cd[4]:
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                    else:
                                        mem[mem[_16075] + _16075 + 196] = 0
                                        require ext_code.size(address(_15823))
                                        call address(_15823).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_16075]) + _16075 + -mem[64] + 192]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if t == -1:
                                            revert with 0, 17
                                        if mem[(7 * ceil32(return_data.size)) + 128] < 1:
                                            revert with 0, 17
                                        if t + 1 < mem[(7 * ceil32(return_data.size)) + 128] - 1:
                                            if t + 1 >= mem[(7 * ceil32(return_data.size)) + 128]:
                                                revert with 0, 50
                                            if 1 > !(t + 1):
                                                revert with 0, 17
                                            idx = t + 2
                                            s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + 160]
                                            t = t + 1
                                            continue 
                                        if ('cd', 36).length < 1:
                                            revert with 0, 17
                                        if ('cd', 36).length - 1 >= ('cd', 36).length:
                                            revert with 0, 50
                                        require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _18717 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_18717] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_18717] - ext_call.return_data[0] > !(msg.value * baseFee / DIVISOR):
                                            revert with 0, 17
                                        if mem[_18717] - ext_call.return_data[0] + (msg.value * baseFee / DIVISOR) < cd[4]:
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                else:
                                    if 2 > !t:
                                        revert with 0, 17
                                    if t + 2 >= mem[(7 * ceil32(return_data.size)) + 128]:
                                        revert with 0, 50
                                    _16171 = mem[(32 * t + 2) + (7 * ceil32(return_data.size)) + 160]
                                    staticcall address(cd[100]).factory() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _16272 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _16331 = mem[_16272]
                                    require mem[_16272] == mem[_16272 + 12 len 20]
                                    mem[mem[64] + 4] = address(_15738)
                                    mem[mem[64] + 36] = address(_16171)
                                    staticcall address(_16331).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_15738), address(_16171)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _16491 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _16523 = mem[_16491]
                                    require mem[_16491] == mem[_16491 + 12 len 20]
                                    _16629 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_16629 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_16629 + 36] = (997 * _15928 * Mask(112, 0, _15863)) - (997 * Mask(112, 0, _15855) * Mask(112, 0, _15863)) / (3 * Mask(112, 0, _15855)) + (997 * _15928)
                                    mem[_16629 + 68] = 0
                                    mem[_16629 + 100] = address(_16523)
                                    mem[_16629 + 132] = 128
                                    mem[_16629 + 164] = mem[_16629]
                                    idx = 0
                                    while idx < mem[_16629]:
                                        mem[idx + _16629 + 196] = mem[idx + _16629 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(mem[_16629]) <= mem[_16629]:
                                        require ext_code.size(address(_15823))
                                        call address(_15823).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_16629]) + _16629 + -mem[64] + 192]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if t == -1:
                                            revert with 0, 17
                                        if mem[(7 * ceil32(return_data.size)) + 128] < 1:
                                            revert with 0, 17
                                        if t + 1 < mem[(7 * ceil32(return_data.size)) + 128] - 1:
                                            if t + 1 >= mem[(7 * ceil32(return_data.size)) + 128]:
                                                revert with 0, 50
                                            if 1 > !(t + 1):
                                                revert with 0, 17
                                            idx = t + 2
                                            s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + 160]
                                            t = t + 1
                                            continue 
                                        if ('cd', 36).length < 1:
                                            revert with 0, 17
                                        if ('cd', 36).length - 1 >= ('cd', 36).length:
                                            revert with 0, 50
                                        require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _18714 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_18714] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_18714] - ext_call.return_data[0] > !(msg.value * baseFee / DIVISOR):
                                            revert with 0, 17
                                        if mem[_18714] - ext_call.return_data[0] + (msg.value * baseFee / DIVISOR) < cd[4]:
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                    else:
                                        mem[mem[_16629] + _16629 + 196] = 0
                                        require ext_code.size(address(_15823))
                                        call address(_15823).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_16629]) + _16629 + -mem[64] + 192]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if t == -1:
                                            revert with 0, 17
                                        if mem[(7 * ceil32(return_data.size)) + 128] < 1:
                                            revert with 0, 17
                                        if t + 1 < mem[(7 * ceil32(return_data.size)) + 128] - 1:
                                            if t + 1 >= mem[(7 * ceil32(return_data.size)) + 128]:
                                                revert with 0, 50
                                            if 1 > !(t + 1):
                                                revert with 0, 17
                                            idx = t + 2
                                            s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + 160]
                                            t = t + 1
                                            continue 
                                        if ('cd', 36).length < 1:
                                            revert with 0, 17
                                        if ('cd', 36).length - 1 >= ('cd', 36).length:
                                            revert with 0, 50
                                        require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _18715 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_18715] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_18715] - ext_call.return_data[0] > !(msg.value * baseFee / DIVISOR):
                                            revert with 0, 17
                                        if mem[_18715] - ext_call.return_data[0] + (msg.value * baseFee / DIVISOR) < cd[4]:
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                        else:
                            _15913 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _15929 = mem[_15913]
                            if mem[_15913] < Mask(112, 0, _15863):
                                revert with 0, 17
                            if mem[_15913] - Mask(112, 0, _15863) <= 0:
                                revert with 0, 'RouterLibrary: INSUFFICIENT_INPUT_AMOUNT'
                            if Mask(112, 0, _15863) <= 0:
                                revert with 0, 'RouterLibrary: INSUFFICIENT_LIQUIDITY'
                            if Mask(112, 0, _15855) <= 0:
                                revert with 0, 'RouterLibrary: INSUFFICIENT_LIQUIDITY'
                            if mem[_15913] - Mask(112, 0, _15863) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                revert with 0, 17
                            if (997 * mem[_15913]) - (997 * Mask(112, 0, _15863)) and Mask(112, 0, _15855) > -1 / (997 * mem[_15913]) - (997 * Mask(112, 0, _15863)):
                                revert with 0, 17
                            if Mask(112, 0, _15863) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 0, 17
                            if 1000 * Mask(112, 0, _15863) > !((997 * mem[_15913]) - (997 * Mask(112, 0, _15863))):
                                revert with 0, 17
                            if not (3 * Mask(112, 0, _15863)) + (997 * mem[_15913]):
                                revert with 0, 18
                            if mem[(7 * ceil32(return_data.size)) + 128] < 2:
                                revert with 0, 17
                            if address(s) != address(_15738):
                                if t >= mem[(7 * ceil32(return_data.size)) + 128] - 2:
                                    _16077 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_16077 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_16077 + 36] = (997 * _15929 * Mask(112, 0, _15855)) - (997 * Mask(112, 0, _15863) * Mask(112, 0, _15855)) / (3 * Mask(112, 0, _15863)) + (997 * _15929)
                                    mem[_16077 + 68] = 0
                                    mem[_16077 + 100] = address(cd[68])
                                    mem[_16077 + 132] = 128
                                    mem[_16077 + 164] = mem[_16077]
                                    idx = 0
                                    while idx < mem[_16077]:
                                        mem[idx + _16077 + 196] = mem[idx + _16077 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(mem[_16077]) > mem[_16077]:
                                        mem[mem[_16077] + _16077 + 196] = 0
                                    require ext_code.size(address(_15823))
                                    call address(_15823).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * _15929 * Mask(112, 0, _15855)) - (997 * Mask(112, 0, _15863) * Mask(112, 0, _15855)) / (3 * Mask(112, 0, _15863)) + (997 * _15929), 0, address(cd[68]), 128, mem[_16077], mem[_16077 + 196 len ceil32(mem[_16077])]
                                else:
                                    if 2 > !t:
                                        revert with 0, 17
                                    if t + 2 >= mem[(7 * ceil32(return_data.size)) + 128]:
                                        revert with 0, 50
                                    _16173 = mem[(32 * t + 2) + (7 * ceil32(return_data.size)) + 160]
                                    staticcall address(cd[100]).factory() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _16276 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _16333 = mem[_16276]
                                    require mem[_16276] == mem[_16276 + 12 len 20]
                                    mem[mem[64] + 4] = address(_15738)
                                    mem[mem[64] + 36] = address(_16173)
                                    staticcall address(_16333).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_15738), address(_16173)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _16493 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _16525 = mem[_16493]
                                    require mem[_16493] == mem[_16493 + 12 len 20]
                                    _16635 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_16635 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_16635 + 36] = (997 * _15929 * Mask(112, 0, _15855)) - (997 * Mask(112, 0, _15863) * Mask(112, 0, _15855)) / (3 * Mask(112, 0, _15863)) + (997 * _15929)
                                    mem[_16635 + 68] = 0
                                    mem[_16635 + 100] = address(_16525)
                                    mem[_16635 + 132] = 128
                                    mem[_16635 + 164] = mem[_16635]
                                    idx = 0
                                    while idx < mem[_16635]:
                                        mem[idx + _16635 + 196] = mem[idx + _16635 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(mem[_16635]) > mem[_16635]:
                                        mem[mem[_16635] + _16635 + 196] = 0
                                    require ext_code.size(address(_15823))
                                    call address(_15823).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * _15929 * Mask(112, 0, _15855)) - (997 * Mask(112, 0, _15863) * Mask(112, 0, _15855)) / (3 * Mask(112, 0, _15863)) + (997 * _15929), 0, address(_16525), 128, mem[_16635], mem[_16635 + 196 len ceil32(mem[_16635])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if t == -1:
                                    revert with 0, 17
                                if mem[(7 * ceil32(return_data.size)) + 128] < 1:
                                    revert with 0, 17
                                if t + 1 < mem[(7 * ceil32(return_data.size)) + 128] - 1:
                                    if t + 1 >= mem[(7 * ceil32(return_data.size)) + 128]:
                                        revert with 0, 50
                                    if 1 > !(t + 1):
                                        revert with 0, 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + 160]
                                    t = t + 1
                                    continue 
                                if ('cd', 36).length < 1:
                                    revert with 0, 17
                                if ('cd', 36).length - 1 >= ('cd', 36).length:
                                    revert with 0, 50
                                require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(cd[68])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 17
                                if 0 > !(msg.value * baseFee / DIVISOR):
                                    revert with 0, 17
                                if msg.value * baseFee / DIVISOR < cd[4]:
                                    revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                            else:
                                if t >= mem[(7 * ceil32(return_data.size)) + 128] - 2:
                                    _16076 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_16076 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_16076 + 36] = 0
                                    mem[_16076 + 68] = (997 * _15929 * Mask(112, 0, _15855)) - (997 * Mask(112, 0, _15863) * Mask(112, 0, _15855)) / (3 * Mask(112, 0, _15863)) + (997 * _15929)
                                    mem[_16076 + 100] = address(cd[68])
                                    mem[_16076 + 132] = 128
                                    mem[_16076 + 164] = mem[_16076]
                                    idx = 0
                                    while idx < mem[_16076]:
                                        mem[idx + _16076 + 196] = mem[idx + _16076 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(mem[_16076]) <= mem[_16076]:
                                        require ext_code.size(address(_15823))
                                        call address(_15823).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_16076]) + _16076 + -mem[64] + 192]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if t == -1:
                                            revert with 0, 17
                                        if mem[(7 * ceil32(return_data.size)) + 128] < 1:
                                            revert with 0, 17
                                        if t + 1 < mem[(7 * ceil32(return_data.size)) + 128] - 1:
                                            if t + 1 >= mem[(7 * ceil32(return_data.size)) + 128]:
                                                revert with 0, 50
                                            if 1 > !(t + 1):
                                                revert with 0, 17
                                            idx = t + 2
                                            s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + 160]
                                            t = t + 1
                                            continue 
                                        if ('cd', 36).length < 1:
                                            revert with 0, 17
                                        if ('cd', 36).length - 1 >= ('cd', 36).length:
                                            revert with 0, 50
                                        require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _18720 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_18720] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_18720] - ext_call.return_data[0] > !(msg.value * baseFee / DIVISOR):
                                            revert with 0, 17
                                        if mem[_18720] - ext_call.return_data[0] + (msg.value * baseFee / DIVISOR) < cd[4]:
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                    else:
                                        mem[mem[_16076] + _16076 + 196] = 0
                                        require ext_code.size(address(_15823))
                                        call address(_15823).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_16076]) + _16076 + -mem[64] + 192]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if t == -1:
                                            revert with 0, 17
                                        if mem[(7 * ceil32(return_data.size)) + 128] < 1:
                                            revert with 0, 17
                                        if t + 1 < mem[(7 * ceil32(return_data.size)) + 128] - 1:
                                            if t + 1 >= mem[(7 * ceil32(return_data.size)) + 128]:
                                                revert with 0, 50
                                            if 1 > !(t + 1):
                                                revert with 0, 17
                                            idx = t + 2
                                            s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + 160]
                                            t = t + 1
                                            continue 
                                        if ('cd', 36).length < 1:
                                            revert with 0, 17
                                        if ('cd', 36).length - 1 >= ('cd', 36).length:
                                            revert with 0, 50
                                        require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _18721 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_18721] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_18721] - ext_call.return_data[0] > !(msg.value * baseFee / DIVISOR):
                                            revert with 0, 17
                                        if mem[_18721] - ext_call.return_data[0] + (msg.value * baseFee / DIVISOR) < cd[4]:
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                else:
                                    if 2 > !t:
                                        revert with 0, 17
                                    if t + 2 >= mem[(7 * ceil32(return_data.size)) + 128]:
                                        revert with 0, 50
                                    _16172 = mem[(32 * t + 2) + (7 * ceil32(return_data.size)) + 160]
                                    staticcall address(cd[100]).factory() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _16274 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _16332 = mem[_16274]
                                    require mem[_16274] == mem[_16274 + 12 len 20]
                                    mem[mem[64] + 4] = address(_15738)
                                    mem[mem[64] + 36] = address(_16172)
                                    staticcall address(_16332).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_15738), address(_16172)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _16492 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _16524 = mem[_16492]
                                    require mem[_16492] == mem[_16492 + 12 len 20]
                                    _16632 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_16632 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_16632 + 36] = 0
                                    mem[_16632 + 68] = (997 * _15929 * Mask(112, 0, _15855)) - (997 * Mask(112, 0, _15863) * Mask(112, 0, _15855)) / (3 * Mask(112, 0, _15863)) + (997 * _15929)
                                    mem[_16632 + 100] = address(_16524)
                                    mem[_16632 + 132] = 128
                                    mem[_16632 + 164] = mem[_16632]
                                    idx = 0
                                    while idx < mem[_16632]:
                                        mem[idx + _16632 + 196] = mem[idx + _16632 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(mem[_16632]) <= mem[_16632]:
                                        require ext_code.size(address(_15823))
                                        call address(_15823).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_16632]) + _16632 + -mem[64] + 192]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if t == -1:
                                            revert with 0, 17
                                        if mem[(7 * ceil32(return_data.size)) + 128] < 1:
                                            revert with 0, 17
                                        if t + 1 < mem[(7 * ceil32(return_data.size)) + 128] - 1:
                                            if t + 1 >= mem[(7 * ceil32(return_data.size)) + 128]:
                                                revert with 0, 50
                                            if 1 > !(t + 1):
                                                revert with 0, 17
                                            idx = t + 2
                                            s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + 160]
                                            t = t + 1
                                            continue 
                                        if ('cd', 36).length < 1:
                                            revert with 0, 17
                                        if ('cd', 36).length - 1 >= ('cd', 36).length:
                                            revert with 0, 50
                                        require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _18718 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_18718] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_18718] - ext_call.return_data[0] > !(msg.value * baseFee / DIVISOR):
                                            revert with 0, 17
                                        if mem[_18718] - ext_call.return_data[0] + (msg.value * baseFee / DIVISOR) < cd[4]:
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                    else:
                                        mem[mem[_16632] + _16632 + 196] = 0
                                        require ext_code.size(address(_15823))
                                        call address(_15823).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_16632]) + _16632 + -mem[64] + 192]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if t == -1:
                                            revert with 0, 17
                                        if mem[(7 * ceil32(return_data.size)) + 128] < 1:
                                            revert with 0, 17
                                        if t + 1 < mem[(7 * ceil32(return_data.size)) + 128] - 1:
                                            if t + 1 >= mem[(7 * ceil32(return_data.size)) + 128]:
                                                revert with 0, 50
                                            if 1 > !(t + 1):
                                                revert with 0, 17
                                            idx = t + 2
                                            s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + 160]
                                            t = t + 1
                                            continue 
                                        if ('cd', 36).length < 1:
                                            revert with 0, 17
                                        if ('cd', 36).length - 1 >= ('cd', 36).length:
                                            revert with 0, 50
                                        require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _18719 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_18719] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_18719] - ext_call.return_data[0] > !(msg.value * baseFee / DIVISOR):
                                            revert with 0, 17
                                        if mem[_18719] - ext_call.return_data[0] + (msg.value * baseFee / DIVISOR) < cd[4]:
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
            revert with 0, 50
    else:
        mem[ceil32(return_data.size) + 128] = return_data.size
        mem[ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: ETH_TRANSFER_FAILED'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).deposit() with:
           value msg.value - (msg.value * baseFee / DIVISOR) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if 0 >= ('cd', 36).length:
            revert with 0, 50
        require ('cd', 36)[0] == address(('cd', 36)[0])
        if 1 >= ('cd', 36).length:
            revert with 0, 50
        require ('cd', 36)[1] == address(('cd', 36)[1])
        staticcall address(cd[100]).factory() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 129] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] = address(('cd', 36)[0])
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = address(('cd', 36)[1])
        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(('cd', 36)[0]), address(('cd', 36)[1])
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] = ext_call.return_data[12 len 20]
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = msg.value - (msg.value * baseFee / DIVISOR)
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args ext_call.return_data[12 len 20], msg.value - (msg.value * baseFee / DIVISOR)
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 1
        if ('cd', 36).length < 1:
            revert with 0, 17
        if ('cd', 36).length - 1 >= ('cd', 36).length:
            revert with 0, 50
        require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] = address(cd[68])
        staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args address(cd[68])
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[64] = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 161
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] = ('cd', 36).length
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 161 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 161] = 0
        if var205001 < 1:
            revert with 0, 17
        if var209002 < var209001:
            if var211001 < ('cd', 36).length:
                if 1 > !var215002:
                    revert with 0, 17
                idx = var217003 + 1
                s = var217006
                t = var217009
                while idx < ('cd', 36).length:
                    _15739 = mem[(32 * idx) + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 161]
                    if address(s) == mem[(32 * idx) + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 173 len 20]:
                        revert with 0, 'RouterLibrary: IDENTICAL_ADDRESSES'
                    if address(s) < mem[(32 * idx) + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 173 len 20]:
                        if not address(s):
                            revert with 0, 'RouterLibrary: ZERO_ADDRESS'
                        staticcall address(cd[100]).factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15784 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _15792 = mem[_15784]
                        require mem[_15784] == mem[_15784 + 12 len 20]
                        mem[mem[64] + 4] = address(s)
                        mem[mem[64] + 36] = address(_15739)
                        staticcall address(_15792).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(s), address(_15739)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15816 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _15824 = mem[_15816]
                        require mem[_15816] == mem[_15816 + 12 len 20]
                        staticcall mem[_15816 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15848 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _15856 = mem[_15848]
                        require mem[_15848] == mem[_15848 + 18 len 14]
                        _15864 = mem[_15848 + 32]
                        require mem[_15848 + 32] == mem[_15848 + 50 len 14]
                        require mem[_15848 + 64] == mem[_15848 + 92 len 4]
                        mem[mem[64] + 4] = address(_15824)
                        staticcall address(s).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_15824)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if address(s) == address(s):
                            _15914 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _15930 = mem[_15914]
                            if mem[_15914] < Mask(112, 0, _15856):
                                revert with 0, 17
                            if mem[_15914] - Mask(112, 0, _15856) <= 0:
                                revert with 0, 'RouterLibrary: INSUFFICIENT_INPUT_AMOUNT'
                            if Mask(112, 0, _15856) <= 0:
                                revert with 0, 'RouterLibrary: INSUFFICIENT_LIQUIDITY'
                            if Mask(112, 0, _15864) <= 0:
                                revert with 0, 'RouterLibrary: INSUFFICIENT_LIQUIDITY'
                            if mem[_15914] - Mask(112, 0, _15856) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                revert with 0, 17
                            if (997 * mem[_15914]) - (997 * Mask(112, 0, _15856)) and Mask(112, 0, _15864) > -1 / (997 * mem[_15914]) - (997 * Mask(112, 0, _15856)):
                                revert with 0, 17
                            if Mask(112, 0, _15856) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 0, 17
                            if 1000 * Mask(112, 0, _15856) > !((997 * mem[_15914]) - (997 * Mask(112, 0, _15856))):
                                revert with 0, 17
                            if not (3 * Mask(112, 0, _15856)) + (997 * mem[_15914]):
                                revert with 0, 18
                            if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] < 2:
                                revert with 0, 17
                            if address(s) == address(s):
                                if t >= mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] - 2:
                                    _16078 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_16078 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_16078 + 36] = 0
                                    mem[_16078 + 68] = (997 * _15930 * Mask(112, 0, _15864)) - (997 * Mask(112, 0, _15856) * Mask(112, 0, _15864)) / (3 * Mask(112, 0, _15856)) + (997 * _15930)
                                    mem[_16078 + 100] = address(cd[68])
                                    mem[_16078 + 132] = 128
                                    mem[_16078 + 164] = mem[_16078]
                                    idx = 0
                                    while idx < mem[_16078]:
                                        mem[idx + _16078 + 196] = mem[idx + _16078 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(mem[_16078]) > mem[_16078]:
                                        mem[mem[_16078] + _16078 + 196] = 0
                                    require ext_code.size(address(_15824))
                                    call address(_15824).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * _15930 * Mask(112, 0, _15864)) - (997 * Mask(112, 0, _15856) * Mask(112, 0, _15864)) / (3 * Mask(112, 0, _15856)) + (997 * _15930), address(cd[68]), 128, mem[_16078], mem[_16078 + 196 len ceil32(mem[_16078])]
                                else:
                                    if 2 > !t:
                                        revert with 0, 17
                                    if t + 2 >= mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129]:
                                        revert with 0, 50
                                    _16174 = mem[(32 * t + 2) + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 161]
                                    staticcall address(cd[100]).factory() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _16278 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _16334 = mem[_16278]
                                    require mem[_16278] == mem[_16278 + 12 len 20]
                                    mem[mem[64] + 4] = address(_15739)
                                    mem[mem[64] + 36] = address(_16174)
                                    staticcall address(_16334).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_15739), address(_16174)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _16494 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _16526 = mem[_16494]
                                    require mem[_16494] == mem[_16494 + 12 len 20]
                                    _16638 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_16638 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_16638 + 36] = 0
                                    mem[_16638 + 68] = (997 * _15930 * Mask(112, 0, _15864)) - (997 * Mask(112, 0, _15856) * Mask(112, 0, _15864)) / (3 * Mask(112, 0, _15856)) + (997 * _15930)
                                    mem[_16638 + 100] = address(_16526)
                                    mem[_16638 + 132] = 128
                                    mem[_16638 + 164] = mem[_16638]
                                    idx = 0
                                    while idx < mem[_16638]:
                                        mem[idx + _16638 + 196] = mem[idx + _16638 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(mem[_16638]) > mem[_16638]:
                                        mem[mem[_16638] + _16638 + 196] = 0
                                    require ext_code.size(address(_15824))
                                    call address(_15824).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * _15930 * Mask(112, 0, _15864)) - (997 * Mask(112, 0, _15856) * Mask(112, 0, _15864)) / (3 * Mask(112, 0, _15856)) + (997 * _15930), address(_16526), 128, mem[_16638], mem[_16638 + 196 len ceil32(mem[_16638])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if t == -1:
                                    revert with 0, 17
                                if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] < 1:
                                    revert with 0, 17
                                if t + 1 < mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] - 1:
                                    if t + 1 >= mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129]:
                                        revert with 0, 50
                                    if 1 > !(t + 1):
                                        revert with 0, 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 161]
                                    t = t + 1
                                    continue 
                                if ('cd', 36).length < 1:
                                    revert with 0, 17
                                if ('cd', 36).length - 1 >= ('cd', 36).length:
                                    revert with 0, 50
                                require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(cd[68])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 17
                                if 0 > !(msg.value * baseFee / DIVISOR):
                                    revert with 0, 17
                                if msg.value * baseFee / DIVISOR < cd[4]:
                                    revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                            else:
                                if t >= mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] - 2:
                                    _16079 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_16079 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_16079 + 36] = (997 * _15930 * Mask(112, 0, _15864)) - (997 * Mask(112, 0, _15856) * Mask(112, 0, _15864)) / (3 * Mask(112, 0, _15856)) + (997 * _15930)
                                    mem[_16079 + 68] = 0
                                    mem[_16079 + 100] = address(cd[68])
                                    mem[_16079 + 132] = 128
                                    mem[_16079 + 164] = mem[_16079]
                                    idx = 0
                                    while idx < mem[_16079]:
                                        mem[idx + _16079 + 196] = mem[idx + _16079 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(mem[_16079]) <= mem[_16079]:
                                        require ext_code.size(address(_15824))
                                        call address(_15824).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_16079]) + _16079 + -mem[64] + 192]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if t == -1:
                                            revert with 0, 17
                                        if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] < 1:
                                            revert with 0, 17
                                        if t + 1 < mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] - 1:
                                            if t + 1 >= mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129]:
                                                revert with 0, 50
                                            if 1 > !(t + 1):
                                                revert with 0, 17
                                            idx = t + 2
                                            s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 161]
                                            t = t + 1
                                            continue 
                                        if ('cd', 36).length < 1:
                                            revert with 0, 17
                                        if ('cd', 36).length - 1 >= ('cd', 36).length:
                                            revert with 0, 50
                                        require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _18732 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_18732] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_18732] - ext_call.return_data[0] > !(msg.value * baseFee / DIVISOR):
                                            revert with 0, 17
                                        if mem[_18732] - ext_call.return_data[0] + (msg.value * baseFee / DIVISOR) < cd[4]:
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                    else:
                                        mem[mem[_16079] + _16079 + 196] = 0
                                        require ext_code.size(address(_15824))
                                        call address(_15824).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_16079]) + _16079 + -mem[64] + 192]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if t == -1:
                                            revert with 0, 17
                                        if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] < 1:
                                            revert with 0, 17
                                        if t + 1 < mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] - 1:
                                            if t + 1 >= mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129]:
                                                revert with 0, 50
                                            if 1 > !(t + 1):
                                                revert with 0, 17
                                            idx = t + 2
                                            s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 161]
                                            t = t + 1
                                            continue 
                                        if ('cd', 36).length < 1:
                                            revert with 0, 17
                                        if ('cd', 36).length - 1 >= ('cd', 36).length:
                                            revert with 0, 50
                                        require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _18733 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_18733] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_18733] - ext_call.return_data[0] > !(msg.value * baseFee / DIVISOR):
                                            revert with 0, 17
                                        if mem[_18733] - ext_call.return_data[0] + (msg.value * baseFee / DIVISOR) < cd[4]:
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                else:
                                    if 2 > !t:
                                        revert with 0, 17
                                    if t + 2 >= mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129]:
                                        revert with 0, 50
                                    _16175 = mem[(32 * t + 2) + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 161]
                                    staticcall address(cd[100]).factory() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _16280 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _16335 = mem[_16280]
                                    require mem[_16280] == mem[_16280 + 12 len 20]
                                    mem[mem[64] + 4] = address(_15739)
                                    mem[mem[64] + 36] = address(_16175)
                                    staticcall address(_16335).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_15739), address(_16175)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _16495 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _16527 = mem[_16495]
                                    require mem[_16495] == mem[_16495 + 12 len 20]
                                    _16641 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_16641 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_16641 + 36] = (997 * _15930 * Mask(112, 0, _15864)) - (997 * Mask(112, 0, _15856) * Mask(112, 0, _15864)) / (3 * Mask(112, 0, _15856)) + (997 * _15930)
                                    mem[_16641 + 68] = 0
                                    mem[_16641 + 100] = address(_16527)
                                    mem[_16641 + 132] = 128
                                    mem[_16641 + 164] = mem[_16641]
                                    idx = 0
                                    while idx < mem[_16641]:
                                        mem[idx + _16641 + 196] = mem[idx + _16641 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(mem[_16641]) <= mem[_16641]:
                                        require ext_code.size(address(_15824))
                                        call address(_15824).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_16641]) + _16641 + -mem[64] + 192]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if t == -1:
                                            revert with 0, 17
                                        if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] < 1:
                                            revert with 0, 17
                                        if t + 1 < mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] - 1:
                                            if t + 1 >= mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129]:
                                                revert with 0, 50
                                            if 1 > !(t + 1):
                                                revert with 0, 17
                                            idx = t + 2
                                            s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 161]
                                            t = t + 1
                                            continue 
                                        if ('cd', 36).length < 1:
                                            revert with 0, 17
                                        if ('cd', 36).length - 1 >= ('cd', 36).length:
                                            revert with 0, 50
                                        require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _18730 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_18730] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_18730] - ext_call.return_data[0] > !(msg.value * baseFee / DIVISOR):
                                            revert with 0, 17
                                        if mem[_18730] - ext_call.return_data[0] + (msg.value * baseFee / DIVISOR) < cd[4]:
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                    else:
                                        mem[mem[_16641] + _16641 + 196] = 0
                                        require ext_code.size(address(_15824))
                                        call address(_15824).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_16641]) + _16641 + -mem[64] + 192]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if t == -1:
                                            revert with 0, 17
                                        if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] < 1:
                                            revert with 0, 17
                                        if t + 1 < mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] - 1:
                                            if t + 1 >= mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129]:
                                                revert with 0, 50
                                            if 1 > !(t + 1):
                                                revert with 0, 17
                                            idx = t + 2
                                            s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 161]
                                            t = t + 1
                                            continue 
                                        if ('cd', 36).length < 1:
                                            revert with 0, 17
                                        if ('cd', 36).length - 1 >= ('cd', 36).length:
                                            revert with 0, 50
                                        require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _18731 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_18731] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_18731] - ext_call.return_data[0] > !(msg.value * baseFee / DIVISOR):
                                            revert with 0, 17
                                        if mem[_18731] - ext_call.return_data[0] + (msg.value * baseFee / DIVISOR) < cd[4]:
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                        else:
                            _15915 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _15931 = mem[_15915]
                            if mem[_15915] < Mask(112, 0, _15864):
                                revert with 0, 17
                            if mem[_15915] - Mask(112, 0, _15864) <= 0:
                                revert with 0, 'RouterLibrary: INSUFFICIENT_INPUT_AMOUNT'
                            if Mask(112, 0, _15864) <= 0:
                                revert with 0, 'RouterLibrary: INSUFFICIENT_LIQUIDITY'
                            if Mask(112, 0, _15856) <= 0:
                                revert with 0, 'RouterLibrary: INSUFFICIENT_LIQUIDITY'
                            if mem[_15915] - Mask(112, 0, _15864) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                revert with 0, 17
                            if (997 * mem[_15915]) - (997 * Mask(112, 0, _15864)) and Mask(112, 0, _15856) > -1 / (997 * mem[_15915]) - (997 * Mask(112, 0, _15864)):
                                revert with 0, 17
                            if Mask(112, 0, _15864) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 0, 17
                            if 1000 * Mask(112, 0, _15864) > !((997 * mem[_15915]) - (997 * Mask(112, 0, _15864))):
                                revert with 0, 17
                            if not (3 * Mask(112, 0, _15864)) + (997 * mem[_15915]):
                                revert with 0, 18
                            if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] < 2:
                                revert with 0, 17
                            if address(s) != address(s):
                                if t >= mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] - 2:
                                    _16081 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_16081 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_16081 + 36] = (997 * _15931 * Mask(112, 0, _15856)) - (997 * Mask(112, 0, _15864) * Mask(112, 0, _15856)) / (3 * Mask(112, 0, _15864)) + (997 * _15931)
                                    mem[_16081 + 68] = 0
                                    mem[_16081 + 100] = address(cd[68])
                                    mem[_16081 + 132] = 128
                                    mem[_16081 + 164] = mem[_16081]
                                    idx = 0
                                    while idx < mem[_16081]:
                                        mem[idx + _16081 + 196] = mem[idx + _16081 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(mem[_16081]) > mem[_16081]:
                                        mem[mem[_16081] + _16081 + 196] = 0
                                    require ext_code.size(address(_15824))
                                    call address(_15824).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * _15931 * Mask(112, 0, _15856)) - (997 * Mask(112, 0, _15864) * Mask(112, 0, _15856)) / (3 * Mask(112, 0, _15864)) + (997 * _15931), 0, address(cd[68]), 128, mem[_16081], mem[_16081 + 196 len ceil32(mem[_16081])]
                                else:
                                    if 2 > !t:
                                        revert with 0, 17
                                    if t + 2 >= mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129]:
                                        revert with 0, 50
                                    _16177 = mem[(32 * t + 2) + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 161]
                                    staticcall address(cd[100]).factory() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _16284 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _16337 = mem[_16284]
                                    require mem[_16284] == mem[_16284 + 12 len 20]
                                    mem[mem[64] + 4] = address(_15739)
                                    mem[mem[64] + 36] = address(_16177)
                                    staticcall address(_16337).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_15739), address(_16177)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _16497 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _16529 = mem[_16497]
                                    require mem[_16497] == mem[_16497 + 12 len 20]
                                    _16647 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_16647 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_16647 + 36] = (997 * _15931 * Mask(112, 0, _15856)) - (997 * Mask(112, 0, _15864) * Mask(112, 0, _15856)) / (3 * Mask(112, 0, _15864)) + (997 * _15931)
                                    mem[_16647 + 68] = 0
                                    mem[_16647 + 100] = address(_16529)
                                    mem[_16647 + 132] = 128
                                    mem[_16647 + 164] = mem[_16647]
                                    idx = 0
                                    while idx < mem[_16647]:
                                        mem[idx + _16647 + 196] = mem[idx + _16647 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(mem[_16647]) > mem[_16647]:
                                        mem[mem[_16647] + _16647 + 196] = 0
                                    require ext_code.size(address(_15824))
                                    call address(_15824).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * _15931 * Mask(112, 0, _15856)) - (997 * Mask(112, 0, _15864) * Mask(112, 0, _15856)) / (3 * Mask(112, 0, _15864)) + (997 * _15931), 0, address(_16529), 128, mem[_16647], mem[_16647 + 196 len ceil32(mem[_16647])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if t == -1:
                                    revert with 0, 17
                                if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] < 1:
                                    revert with 0, 17
                                if t + 1 < mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] - 1:
                                    if t + 1 >= mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129]:
                                        revert with 0, 50
                                    if 1 > !(t + 1):
                                        revert with 0, 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 161]
                                    t = t + 1
                                    continue 
                                if ('cd', 36).length < 1:
                                    revert with 0, 17
                                if ('cd', 36).length - 1 >= ('cd', 36).length:
                                    revert with 0, 50
                                require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(cd[68])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 17
                                if 0 > !(msg.value * baseFee / DIVISOR):
                                    revert with 0, 17
                                if msg.value * baseFee / DIVISOR < cd[4]:
                                    revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                            else:
                                if t >= mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] - 2:
                                    _16080 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_16080 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_16080 + 36] = 0
                                    mem[_16080 + 68] = (997 * _15931 * Mask(112, 0, _15856)) - (997 * Mask(112, 0, _15864) * Mask(112, 0, _15856)) / (3 * Mask(112, 0, _15864)) + (997 * _15931)
                                    mem[_16080 + 100] = address(cd[68])
                                    mem[_16080 + 132] = 128
                                    mem[_16080 + 164] = mem[_16080]
                                    idx = 0
                                    while idx < mem[_16080]:
                                        mem[idx + _16080 + 196] = mem[idx + _16080 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(mem[_16080]) > mem[_16080]:
                                        mem[mem[_16080] + _16080 + 196] = 0
                                    require ext_code.size(address(_15824))
                                    call address(_15824).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * _15931 * Mask(112, 0, _15856)) - (997 * Mask(112, 0, _15864) * Mask(112, 0, _15856)) / (3 * Mask(112, 0, _15864)) + (997 * _15931), address(cd[68]), 128, mem[_16080], mem[_16080 + 196 len ceil32(mem[_16080])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if t == -1:
                                        revert with 0, 17
                                    if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] < 1:
                                        revert with 0, 17
                                    if t + 1 < mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] - 1:
                                        if t + 1 >= mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129]:
                                            revert with 0, 50
                                        if 1 > !(t + 1):
                                            revert with 0, 17
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 161]
                                        t = t + 1
                                        continue 
                                    if ('cd', 36).length < 1:
                                        revert with 0, 17
                                    if ('cd', 36).length - 1 >= ('cd', 36).length:
                                        revert with 0, 50
                                    require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                    staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(cd[68])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if 0 > !(msg.value * baseFee / DIVISOR):
                                        revert with 0, 17
                                    if msg.value * baseFee / DIVISOR < cd[4]:
                                        revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                else:
                                    if 2 > !t:
                                        revert with 0, 17
                                    if t + 2 >= mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129]:
                                        revert with 0, 50
                                    _16176 = mem[(32 * t + 2) + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 161]
                                    staticcall address(cd[100]).factory() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _16282 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _16336 = mem[_16282]
                                    require mem[_16282] == mem[_16282 + 12 len 20]
                                    mem[mem[64] + 4] = address(_15739)
                                    mem[mem[64] + 36] = address(_16176)
                                    staticcall address(_16336).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_15739), address(_16176)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _16496 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _16528 = mem[_16496]
                                    require mem[_16496] == mem[_16496 + 12 len 20]
                                    _16644 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_16644 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_16644 + 36] = 0
                                    mem[_16644 + 68] = (997 * _15931 * Mask(112, 0, _15856)) - (997 * Mask(112, 0, _15864) * Mask(112, 0, _15856)) / (3 * Mask(112, 0, _15864)) + (997 * _15931)
                                    mem[_16644 + 100] = address(_16528)
                                    mem[_16644 + 132] = 128
                                    mem[_16644 + 164] = mem[_16644]
                                    idx = 0
                                    while idx < mem[_16644]:
                                        mem[idx + _16644 + 196] = mem[idx + _16644 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(mem[_16644]) <= mem[_16644]:
                                        require ext_code.size(address(_15824))
                                        call address(_15824).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_16644]) + _16644 + -mem[64] + 192]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if t == -1:
                                            revert with 0, 17
                                        if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] < 1:
                                            revert with 0, 17
                                        if t + 1 < mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] - 1:
                                            if t + 1 >= mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129]:
                                                revert with 0, 50
                                            if 1 > !(t + 1):
                                                revert with 0, 17
                                            idx = t + 2
                                            s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 161]
                                            t = t + 1
                                            continue 
                                        if ('cd', 36).length < 1:
                                            revert with 0, 17
                                        if ('cd', 36).length - 1 >= ('cd', 36).length:
                                            revert with 0, 50
                                        require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _18734 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_18734] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_18734] - ext_call.return_data[0] > !(msg.value * baseFee / DIVISOR):
                                            revert with 0, 17
                                        if mem[_18734] - ext_call.return_data[0] + (msg.value * baseFee / DIVISOR) < cd[4]:
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                    else:
                                        mem[mem[_16644] + _16644 + 196] = 0
                                        require ext_code.size(address(_15824))
                                        call address(_15824).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_16644]) + _16644 + -mem[64] + 192]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if t == -1:
                                            revert with 0, 17
                                        if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] < 1:
                                            revert with 0, 17
                                        if t + 1 < mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] - 1:
                                            if t + 1 >= mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129]:
                                                revert with 0, 50
                                            if 1 > !(t + 1):
                                                revert with 0, 17
                                            idx = t + 2
                                            s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 161]
                                            t = t + 1
                                            continue 
                                        if ('cd', 36).length < 1:
                                            revert with 0, 17
                                        if ('cd', 36).length - 1 >= ('cd', 36).length:
                                            revert with 0, 50
                                        require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _18735 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_18735] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_18735] - ext_call.return_data[0] > !(msg.value * baseFee / DIVISOR):
                                            revert with 0, 17
                                        if mem[_18735] - ext_call.return_data[0] + (msg.value * baseFee / DIVISOR) < cd[4]:
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                    else:
                        if not mem[(32 * idx) + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 173 len 20]:
                            revert with 0, 'RouterLibrary: ZERO_ADDRESS'
                        staticcall address(cd[100]).factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15785 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _15793 = mem[_15785]
                        require mem[_15785] == mem[_15785 + 12 len 20]
                        mem[mem[64] + 4] = address(s)
                        mem[mem[64] + 36] = address(_15739)
                        staticcall address(_15793).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(s), address(_15739)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15817 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _15825 = mem[_15817]
                        require mem[_15817] == mem[_15817 + 12 len 20]
                        staticcall mem[_15817 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15849 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _15857 = mem[_15849]
                        require mem[_15849] == mem[_15849 + 18 len 14]
                        _15865 = mem[_15849 + 32]
                        require mem[_15849 + 32] == mem[_15849 + 50 len 14]
                        require mem[_15849 + 64] == mem[_15849 + 92 len 4]
                        mem[mem[64] + 4] = address(_15825)
                        staticcall address(s).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_15825)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if address(s) == address(_15739):
                            _15916 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _15932 = mem[_15916]
                            if mem[_15916] < Mask(112, 0, _15857):
                                revert with 0, 17
                            if mem[_15916] - Mask(112, 0, _15857) <= 0:
                                revert with 0, 'RouterLibrary: INSUFFICIENT_INPUT_AMOUNT'
                            if Mask(112, 0, _15857) <= 0:
                                revert with 0, 'RouterLibrary: INSUFFICIENT_LIQUIDITY'
                            if Mask(112, 0, _15865) <= 0:
                                revert with 0, 'RouterLibrary: INSUFFICIENT_LIQUIDITY'
                            if mem[_15916] - Mask(112, 0, _15857) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                revert with 0, 17
                            if (997 * mem[_15916]) - (997 * Mask(112, 0, _15857)) and Mask(112, 0, _15865) > -1 / (997 * mem[_15916]) - (997 * Mask(112, 0, _15857)):
                                revert with 0, 17
                            if Mask(112, 0, _15857) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 0, 17
                            if 1000 * Mask(112, 0, _15857) > !((997 * mem[_15916]) - (997 * Mask(112, 0, _15857))):
                                revert with 0, 17
                            if not (3 * Mask(112, 0, _15857)) + (997 * mem[_15916]):
                                revert with 0, 18
                            if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] < 2:
                                revert with 0, 17
                            if address(s) != address(_15739):
                                if t >= mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] - 2:
                                    _16083 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_16083 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_16083 + 36] = (997 * _15932 * Mask(112, 0, _15865)) - (997 * Mask(112, 0, _15857) * Mask(112, 0, _15865)) / (3 * Mask(112, 0, _15857)) + (997 * _15932)
                                    mem[_16083 + 68] = 0
                                    mem[_16083 + 100] = address(cd[68])
                                    mem[_16083 + 132] = 128
                                    mem[_16083 + 164] = mem[_16083]
                                    idx = 0
                                    while idx < mem[_16083]:
                                        mem[idx + _16083 + 196] = mem[idx + _16083 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(mem[_16083]) > mem[_16083]:
                                        mem[mem[_16083] + _16083 + 196] = 0
                                    require ext_code.size(address(_15825))
                                    call address(_15825).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * _15932 * Mask(112, 0, _15865)) - (997 * Mask(112, 0, _15857) * Mask(112, 0, _15865)) / (3 * Mask(112, 0, _15857)) + (997 * _15932), 0, address(cd[68]), 128, mem[_16083], mem[_16083 + 196 len ceil32(mem[_16083])]
                                else:
                                    if 2 > !t:
                                        revert with 0, 17
                                    if t + 2 >= mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129]:
                                        revert with 0, 50
                                    _16179 = mem[(32 * t + 2) + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 161]
                                    staticcall address(cd[100]).factory() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _16288 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _16339 = mem[_16288]
                                    require mem[_16288] == mem[_16288 + 12 len 20]
                                    mem[mem[64] + 4] = address(_15739)
                                    mem[mem[64] + 36] = address(_16179)
                                    staticcall address(_16339).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_15739), address(_16179)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _16499 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _16531 = mem[_16499]
                                    require mem[_16499] == mem[_16499 + 12 len 20]
                                    _16653 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_16653 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_16653 + 36] = (997 * _15932 * Mask(112, 0, _15865)) - (997 * Mask(112, 0, _15857) * Mask(112, 0, _15865)) / (3 * Mask(112, 0, _15857)) + (997 * _15932)
                                    mem[_16653 + 68] = 0
                                    mem[_16653 + 100] = address(_16531)
                                    mem[_16653 + 132] = 128
                                    mem[_16653 + 164] = mem[_16653]
                                    idx = 0
                                    while idx < mem[_16653]:
                                        mem[idx + _16653 + 196] = mem[idx + _16653 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(mem[_16653]) > mem[_16653]:
                                        mem[mem[_16653] + _16653 + 196] = 0
                                    require ext_code.size(address(_15825))
                                    call address(_15825).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * _15932 * Mask(112, 0, _15865)) - (997 * Mask(112, 0, _15857) * Mask(112, 0, _15865)) / (3 * Mask(112, 0, _15857)) + (997 * _15932), 0, address(_16531), 128, mem[_16653], mem[_16653 + 196 len ceil32(mem[_16653])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if t == -1:
                                    revert with 0, 17
                                if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] < 1:
                                    revert with 0, 17
                                if t + 1 < mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] - 1:
                                    if t + 1 >= mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129]:
                                        revert with 0, 50
                                    if 1 > !(t + 1):
                                        revert with 0, 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 161]
                                    t = t + 1
                                    continue 
                                if ('cd', 36).length < 1:
                                    revert with 0, 17
                                if ('cd', 36).length - 1 >= ('cd', 36).length:
                                    revert with 0, 50
                                require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(cd[68])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 17
                                if 0 > !(msg.value * baseFee / DIVISOR):
                                    revert with 0, 17
                                if msg.value * baseFee / DIVISOR < cd[4]:
                                    revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                            else:
                                if t >= mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] - 2:
                                    _16082 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_16082 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_16082 + 36] = 0
                                    mem[_16082 + 68] = (997 * _15932 * Mask(112, 0, _15865)) - (997 * Mask(112, 0, _15857) * Mask(112, 0, _15865)) / (3 * Mask(112, 0, _15857)) + (997 * _15932)
                                    mem[_16082 + 100] = address(cd[68])
                                    mem[_16082 + 132] = 128
                                    mem[_16082 + 164] = mem[_16082]
                                    idx = 0
                                    while idx < mem[_16082]:
                                        mem[idx + _16082 + 196] = mem[idx + _16082 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(mem[_16082]) <= mem[_16082]:
                                        require ext_code.size(address(_15825))
                                        call address(_15825).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_16082]) + _16082 + -mem[64] + 192]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if t == -1:
                                            revert with 0, 17
                                        if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] < 1:
                                            revert with 0, 17
                                        if t + 1 < mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] - 1:
                                            if t + 1 >= mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129]:
                                                revert with 0, 50
                                            if 1 > !(t + 1):
                                                revert with 0, 17
                                            idx = t + 2
                                            s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 161]
                                            t = t + 1
                                            continue 
                                        if ('cd', 36).length < 1:
                                            revert with 0, 17
                                        if ('cd', 36).length - 1 >= ('cd', 36).length:
                                            revert with 0, 50
                                        require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _18744 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_18744] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_18744] - ext_call.return_data[0] > !(msg.value * baseFee / DIVISOR):
                                            revert with 0, 17
                                        if mem[_18744] - ext_call.return_data[0] + (msg.value * baseFee / DIVISOR) < cd[4]:
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                    else:
                                        mem[mem[_16082] + _16082 + 196] = 0
                                        require ext_code.size(address(_15825))
                                        call address(_15825).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_16082]) + _16082 + -mem[64] + 192]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if t == -1:
                                            revert with 0, 17
                                        if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] < 1:
                                            revert with 0, 17
                                        if t + 1 < mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] - 1:
                                            if t + 1 >= mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129]:
                                                revert with 0, 50
                                            if 1 > !(t + 1):
                                                revert with 0, 17
                                            idx = t + 2
                                            s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 161]
                                            t = t + 1
                                            continue 
                                        if ('cd', 36).length < 1:
                                            revert with 0, 17
                                        if ('cd', 36).length - 1 >= ('cd', 36).length:
                                            revert with 0, 50
                                        require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _18745 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_18745] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_18745] - ext_call.return_data[0] > !(msg.value * baseFee / DIVISOR):
                                            revert with 0, 17
                                        if mem[_18745] - ext_call.return_data[0] + (msg.value * baseFee / DIVISOR) < cd[4]:
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                else:
                                    if 2 > !t:
                                        revert with 0, 17
                                    if t + 2 >= mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129]:
                                        revert with 0, 50
                                    _16178 = mem[(32 * t + 2) + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 161]
                                    staticcall address(cd[100]).factory() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _16286 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _16338 = mem[_16286]
                                    require mem[_16286] == mem[_16286 + 12 len 20]
                                    mem[mem[64] + 4] = address(_15739)
                                    mem[mem[64] + 36] = address(_16178)
                                    staticcall address(_16338).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_15739), address(_16178)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _16498 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _16530 = mem[_16498]
                                    require mem[_16498] == mem[_16498 + 12 len 20]
                                    _16650 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_16650 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_16650 + 36] = 0
                                    mem[_16650 + 68] = (997 * _15932 * Mask(112, 0, _15865)) - (997 * Mask(112, 0, _15857) * Mask(112, 0, _15865)) / (3 * Mask(112, 0, _15857)) + (997 * _15932)
                                    mem[_16650 + 100] = address(_16530)
                                    mem[_16650 + 132] = 128
                                    mem[_16650 + 164] = mem[_16650]
                                    idx = 0
                                    while idx < mem[_16650]:
                                        mem[idx + _16650 + 196] = mem[idx + _16650 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(mem[_16650]) <= mem[_16650]:
                                        require ext_code.size(address(_15825))
                                        call address(_15825).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_16650]) + _16650 + -mem[64] + 192]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if t == -1:
                                            revert with 0, 17
                                        if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] < 1:
                                            revert with 0, 17
                                        if t + 1 < mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] - 1:
                                            if t + 1 >= mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129]:
                                                revert with 0, 50
                                            if 1 > !(t + 1):
                                                revert with 0, 17
                                            idx = t + 2
                                            s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 161]
                                            t = t + 1
                                            continue 
                                        if ('cd', 36).length < 1:
                                            revert with 0, 17
                                        if ('cd', 36).length - 1 >= ('cd', 36).length:
                                            revert with 0, 50
                                        require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _18742 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_18742] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_18742] - ext_call.return_data[0] > !(msg.value * baseFee / DIVISOR):
                                            revert with 0, 17
                                        if mem[_18742] - ext_call.return_data[0] + (msg.value * baseFee / DIVISOR) < cd[4]:
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                    else:
                                        mem[mem[_16650] + _16650 + 196] = 0
                                        require ext_code.size(address(_15825))
                                        call address(_15825).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_16650]) + _16650 + -mem[64] + 192]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if t == -1:
                                            revert with 0, 17
                                        if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] < 1:
                                            revert with 0, 17
                                        if t + 1 < mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] - 1:
                                            if t + 1 >= mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129]:
                                                revert with 0, 50
                                            if 1 > !(t + 1):
                                                revert with 0, 17
                                            idx = t + 2
                                            s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 161]
                                            t = t + 1
                                            continue 
                                        if ('cd', 36).length < 1:
                                            revert with 0, 17
                                        if ('cd', 36).length - 1 >= ('cd', 36).length:
                                            revert with 0, 50
                                        require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _18743 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_18743] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_18743] - ext_call.return_data[0] > !(msg.value * baseFee / DIVISOR):
                                            revert with 0, 17
                                        if mem[_18743] - ext_call.return_data[0] + (msg.value * baseFee / DIVISOR) < cd[4]:
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                        else:
                            _15917 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _15933 = mem[_15917]
                            if mem[_15917] < Mask(112, 0, _15865):
                                revert with 0, 17
                            if mem[_15917] - Mask(112, 0, _15865) <= 0:
                                revert with 0, 'RouterLibrary: INSUFFICIENT_INPUT_AMOUNT'
                            if Mask(112, 0, _15865) <= 0:
                                revert with 0, 'RouterLibrary: INSUFFICIENT_LIQUIDITY'
                            if Mask(112, 0, _15857) <= 0:
                                revert with 0, 'RouterLibrary: INSUFFICIENT_LIQUIDITY'
                            if mem[_15917] - Mask(112, 0, _15865) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                revert with 0, 17
                            if (997 * mem[_15917]) - (997 * Mask(112, 0, _15865)) and Mask(112, 0, _15857) > -1 / (997 * mem[_15917]) - (997 * Mask(112, 0, _15865)):
                                revert with 0, 17
                            if Mask(112, 0, _15865) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 0, 17
                            if 1000 * Mask(112, 0, _15865) > !((997 * mem[_15917]) - (997 * Mask(112, 0, _15865))):
                                revert with 0, 17
                            if not (3 * Mask(112, 0, _15865)) + (997 * mem[_15917]):
                                revert with 0, 18
                            if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] < 2:
                                revert with 0, 17
                            if address(s) == address(_15739):
                                if t >= mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] - 2:
                                    _16084 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_16084 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_16084 + 36] = 0
                                    mem[_16084 + 68] = (997 * _15933 * Mask(112, 0, _15857)) - (997 * Mask(112, 0, _15865) * Mask(112, 0, _15857)) / (3 * Mask(112, 0, _15865)) + (997 * _15933)
                                    mem[_16084 + 100] = address(cd[68])
                                    mem[_16084 + 132] = 128
                                    mem[_16084 + 164] = mem[_16084]
                                    idx = 0
                                    while idx < mem[_16084]:
                                        mem[idx + _16084 + 196] = mem[idx + _16084 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(mem[_16084]) > mem[_16084]:
                                        mem[mem[_16084] + _16084 + 196] = 0
                                    require ext_code.size(address(_15825))
                                    call address(_15825).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * _15933 * Mask(112, 0, _15857)) - (997 * Mask(112, 0, _15865) * Mask(112, 0, _15857)) / (3 * Mask(112, 0, _15865)) + (997 * _15933), address(cd[68]), 128, mem[_16084], mem[_16084 + 196 len ceil32(mem[_16084])]
                                else:
                                    if 2 > !t:
                                        revert with 0, 17
                                    if t + 2 >= mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129]:
                                        revert with 0, 50
                                    _16180 = mem[(32 * t + 2) + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 161]
                                    staticcall address(cd[100]).factory() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _16290 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _16340 = mem[_16290]
                                    require mem[_16290] == mem[_16290 + 12 len 20]
                                    mem[mem[64] + 4] = address(_15739)
                                    mem[mem[64] + 36] = address(_16180)
                                    staticcall address(_16340).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_15739), address(_16180)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _16500 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _16532 = mem[_16500]
                                    require mem[_16500] == mem[_16500 + 12 len 20]
                                    _16656 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_16656 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_16656 + 36] = 0
                                    mem[_16656 + 68] = (997 * _15933 * Mask(112, 0, _15857)) - (997 * Mask(112, 0, _15865) * Mask(112, 0, _15857)) / (3 * Mask(112, 0, _15865)) + (997 * _15933)
                                    mem[_16656 + 100] = address(_16532)
                                    mem[_16656 + 132] = 128
                                    mem[_16656 + 164] = mem[_16656]
                                    idx = 0
                                    while idx < mem[_16656]:
                                        mem[idx + _16656 + 196] = mem[idx + _16656 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(mem[_16656]) > mem[_16656]:
                                        mem[mem[_16656] + _16656 + 196] = 0
                                    require ext_code.size(address(_15825))
                                    call address(_15825).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * _15933 * Mask(112, 0, _15857)) - (997 * Mask(112, 0, _15865) * Mask(112, 0, _15857)) / (3 * Mask(112, 0, _15865)) + (997 * _15933), address(_16532), 128, mem[_16656], mem[_16656 + 196 len ceil32(mem[_16656])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if t == -1:
                                    revert with 0, 17
                                if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] < 1:
                                    revert with 0, 17
                                if t + 1 < mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] - 1:
                                    if t + 1 >= mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129]:
                                        revert with 0, 50
                                    if 1 > !(t + 1):
                                        revert with 0, 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 161]
                                    t = t + 1
                                    continue 
                                if ('cd', 36).length < 1:
                                    revert with 0, 17
                                if ('cd', 36).length - 1 >= ('cd', 36).length:
                                    revert with 0, 50
                                require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(cd[68])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 17
                                if 0 > !(msg.value * baseFee / DIVISOR):
                                    revert with 0, 17
                                if msg.value * baseFee / DIVISOR < cd[4]:
                                    revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                            else:
                                if t >= mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] - 2:
                                    _16085 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_16085 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_16085 + 36] = (997 * _15933 * Mask(112, 0, _15857)) - (997 * Mask(112, 0, _15865) * Mask(112, 0, _15857)) / (3 * Mask(112, 0, _15865)) + (997 * _15933)
                                    mem[_16085 + 68] = 0
                                    mem[_16085 + 100] = address(cd[68])
                                    mem[_16085 + 132] = 128
                                    mem[_16085 + 164] = mem[_16085]
                                    idx = 0
                                    while idx < mem[_16085]:
                                        mem[idx + _16085 + 196] = mem[idx + _16085 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(mem[_16085]) <= mem[_16085]:
                                        require ext_code.size(address(_15825))
                                        call address(_15825).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_16085]) + _16085 + -mem[64] + 192]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if t == -1:
                                            revert with 0, 17
                                        if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] < 1:
                                            revert with 0, 17
                                        if t + 1 < mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] - 1:
                                            if t + 1 >= mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129]:
                                                revert with 0, 50
                                            if 1 > !(t + 1):
                                                revert with 0, 17
                                            idx = t + 2
                                            s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 161]
                                            t = t + 1
                                            continue 
                                        if ('cd', 36).length < 1:
                                            revert with 0, 17
                                        if ('cd', 36).length - 1 >= ('cd', 36).length:
                                            revert with 0, 50
                                        require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _18756 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_18756] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_18756] - ext_call.return_data[0] > !(msg.value * baseFee / DIVISOR):
                                            revert with 0, 17
                                        if mem[_18756] - ext_call.return_data[0] + (msg.value * baseFee / DIVISOR) < cd[4]:
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                    else:
                                        mem[mem[_16085] + _16085 + 196] = 0
                                        require ext_code.size(address(_15825))
                                        call address(_15825).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_16085]) + _16085 + -mem[64] + 192]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if t == -1:
                                            revert with 0, 17
                                        if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] < 1:
                                            revert with 0, 17
                                        if t + 1 < mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] - 1:
                                            if t + 1 >= mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129]:
                                                revert with 0, 50
                                            if 1 > !(t + 1):
                                                revert with 0, 17
                                            idx = t + 2
                                            s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 161]
                                            t = t + 1
                                            continue 
                                        if ('cd', 36).length < 1:
                                            revert with 0, 17
                                        if ('cd', 36).length - 1 >= ('cd', 36).length:
                                            revert with 0, 50
                                        require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _18757 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_18757] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_18757] - ext_call.return_data[0] > !(msg.value * baseFee / DIVISOR):
                                            revert with 0, 17
                                        if mem[_18757] - ext_call.return_data[0] + (msg.value * baseFee / DIVISOR) < cd[4]:
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                else:
                                    if 2 > !t:
                                        revert with 0, 17
                                    if t + 2 >= mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129]:
                                        revert with 0, 50
                                    _16181 = mem[(32 * t + 2) + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 161]
                                    staticcall address(cd[100]).factory() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _16292 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _16341 = mem[_16292]
                                    require mem[_16292] == mem[_16292 + 12 len 20]
                                    mem[mem[64] + 4] = address(_15739)
                                    mem[mem[64] + 36] = address(_16181)
                                    staticcall address(_16341).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(_15739), address(_16181)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _16501 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _16533 = mem[_16501]
                                    require mem[_16501] == mem[_16501 + 12 len 20]
                                    _16659 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_16659 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_16659 + 36] = (997 * _15933 * Mask(112, 0, _15857)) - (997 * Mask(112, 0, _15865) * Mask(112, 0, _15857)) / (3 * Mask(112, 0, _15865)) + (997 * _15933)
                                    mem[_16659 + 68] = 0
                                    mem[_16659 + 100] = address(_16533)
                                    mem[_16659 + 132] = 128
                                    mem[_16659 + 164] = mem[_16659]
                                    idx = 0
                                    while idx < mem[_16659]:
                                        mem[idx + _16659 + 196] = mem[idx + _16659 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(mem[_16659]) <= mem[_16659]:
                                        require ext_code.size(address(_15825))
                                        call address(_15825).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_16659]) + _16659 + -mem[64] + 192]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if t == -1:
                                            revert with 0, 17
                                        if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] < 1:
                                            revert with 0, 17
                                        if t + 1 < mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] - 1:
                                            if t + 1 >= mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129]:
                                                revert with 0, 50
                                            if 1 > !(t + 1):
                                                revert with 0, 17
                                            idx = t + 2
                                            s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 161]
                                            t = t + 1
                                            continue 
                                        if ('cd', 36).length < 1:
                                            revert with 0, 17
                                        if ('cd', 36).length - 1 >= ('cd', 36).length:
                                            revert with 0, 50
                                        require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _18754 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_18754] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_18754] - ext_call.return_data[0] > !(msg.value * baseFee / DIVISOR):
                                            revert with 0, 17
                                        if mem[_18754] - ext_call.return_data[0] + (msg.value * baseFee / DIVISOR) < cd[4]:
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
                                    else:
                                        mem[mem[_16659] + _16659 + 196] = 0
                                        require ext_code.size(address(_15825))
                                        call address(_15825).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[_16659]) + _16659 + -mem[64] + 192]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if t == -1:
                                            revert with 0, 17
                                        if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] < 1:
                                            revert with 0, 17
                                        if t + 1 < mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] - 1:
                                            if t + 1 >= mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129]:
                                                revert with 0, 50
                                            if 1 > !(t + 1):
                                                revert with 0, 17
                                            idx = t + 2
                                            s = mem[(32 * t + 1) + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 161]
                                            t = t + 1
                                            continue 
                                        if ('cd', 36).length < 1:
                                            revert with 0, 17
                                        if ('cd', 36).length - 1 >= ('cd', 36).length:
                                            revert with 0, 50
                                        require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                                        mem[mem[64] + 4] = address(cd[68])
                                        staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[68])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _18755 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_18755] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if mem[_18755] - ext_call.return_data[0] > !(msg.value * baseFee / DIVISOR):
                                            revert with 0, 17
                                        if mem[_18755] - ext_call.return_data[0] + (msg.value * baseFee / DIVISOR) < cd[4]:
                                            revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
            revert with 0, 50
    ('ge', ('var', 209002), ('var', 209001))
    if ('cd', 36).length < 1:
        revert with 0, 17
    if ('cd', 36).length - 1 >= ('cd', 36).length:
        revert with 0, 50
    require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
    staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
            gas gas_remaining wei
           args address(cd[68])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    if 0 > !(msg.value * baseFee / DIVISOR):
        revert with 0, 17
    if msg.value * baseFee / DIVISOR < cd[4]:
        revert with 0, 'RBXTeleSwap: INSUFFICIENT_OUTPUT_AMOUNT'
}



}
