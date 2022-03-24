contract main {




// =====================  Runtime code  =====================


address owner;
address callerAddress;
uint256 stor2;
uint256 stor3;
address WETHAddress;
mapping of uint8 stor5;

function owner() {
    return owner
}

function WETH() {
    return WETHAddress
}

function caller() {
    return callerAddress
}

function _fallback() payable {
    revert
}

function sub_6f56c501(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Wallet: FORBIDDEN'
    stor3 = arg1
}

function sub_0172d646(?) {
    require calldata.size - 4 >= 64
    if callerAddress != msg.sender:
        revert with 0, 'Wallet: FORBIDDEN'
    stor5[address(arg1)] = uint8(arg2)
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Wallet: FORBIDDEN'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7357616c6c65743a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[201 len 27]
    owner = arg1
}

function setCaller(address arg1) {
    require calldata.size - 4 >= 32
    if callerAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Wallet: FORBIDDEN'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe57616c6c65743a206e65772063616c6c657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    callerAddress = arg1
}

function transferToken(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Wallet: FORBIDDEN'
    mem[196 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, arg3) >> 32
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), address(arg2) << 64:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
}

function transferETH(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Wallet: FORBIDDEN'
    if eth.balance(this.address) < arg2:
        if arg2 - eth.balance(this.address) > arg2:
            revert with 0, 'ds-math-sub-underflow'
        require ext_code.size(WETHAddress)
        call WETHAddress.0x2e1a7d4d with:
             gas gas_remaining wei
            args (arg2 - eth.balance(this.address))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 32, 35, 0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[231 len 29]
    else:
        if not ext_call.success:
            revert with 0, 
                        32,
                        35,
                        0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                        mem[ceil32(return_data.size) + 232 len 29]
    ('bool', 'ext_call.success')
}

function claimGas() {
    if callerAddress != msg.sender:
        revert with 0, 'Wallet: FORBIDDEN'
    if stor2 + 3600 < stor2:
        revert with 0, 'ds-math-add-overflow'
    if stor2 + 3600 >= block.timestamp:
        revert with 0, 'Wallet: CLAIM_GAS_TOO_OFTEN'
    stor2 = block.timestamp
    if eth.balance(this.address) < stor3:
        if stor3 - eth.balance(this.address) > stor3:
            revert with 0, 'ds-math-sub-underflow'
        require ext_code.size(WETHAddress)
        call WETHAddress.0x2e1a7d4d with:
             gas gas_remaining wei
            args (stor3 - eth.balance(this.address))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    call callerAddress with:
       value stor3 wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 32, 35, 0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[231 len 29]
    else:
        if not ext_call.success:
            revert with 0, 
                        32,
                        35,
                        0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                        mem[ceil32(return_data.size) + 232 len 29]
    ('bool', 'ext_call.success')
}

function batchTransferToken(address arg1, address[] arg2, uint256[] arg3) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Wallet: FORBIDDEN'
    if not arg2.length:
        revert with 0, 'Wallet: ERROR_RECIPIENTS'
    if arg3.length != arg2.length:
        revert with 0, 'Wallet: ERROR_RECIPIENTS'
    idx = 0
    while idx < arg2.length:
        require idx < arg3.length
        _31 = mem[64]
        mem[mem[64] + 36] = address(cd[((32 * idx) + arg2 + 36)])
        mem[mem[64] + 68] = cd[((32 * idx) + arg3 + 36)]
        _32 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_32 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_32 + 36 len 28]
        _35 = mem[_32]
        t = _32 + 32
        u = mem[64]
        s = mem[_32]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_32])] = mem[_32 + floor32(mem[_32]) + -(mem[_32] % 32) + 64 len mem[_32] % 32] or Mask(8 * -(mem[_32] % 32) + 32, -(8 * -(mem[_32] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_32])])
        call arg1.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _35 + _31 + -mem[64] + 96]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if mem[96]:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
        else:
            _59 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_59] = return_data.size
            mem[_59 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if return_data.size:
                require return_data.size >= 32
                if not mem[_59 + 32]:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
        idx = idx + 1
        continue 
}

function sub_81b15915(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Wallet: FORBIDDEN'
    if not ('cd', 4).length:
        revert with 0, 'Wallet: ERROR_RECIPIENTS'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0, 'Wallet: ERROR_RECIPIENTS'
    if eth.balance(this.address) >= cd[68]:
        idx = 0
        s = cd[68]
        while idx < ('cd', 4).length:
            require idx < ('cd', 36).length
            _51 = mem[64]
            mem[mem[64]] = 0
            mem[64] = mem[64] + 32
            _53 = mem[_51]
            u = _51 + 32
            v = _51 + 32
            t = mem[_51]
            while t >= 32:
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                t = t - 32
                continue 
            mem[_51 + floor32(mem[_51]) + 32] = mem[_51 + -(mem[_51] % 32) + floor32(mem[_51]) + 64 len mem[_51] % 32] or Mask(8 * -(mem[_51] % 32) + 32, -(8 * -(mem[_51] % 32) + 32) + 256, mem[_51 + floor32(mem[_51]) + 32])
            call address(cd[((32 * idx) + cd[4] + 36)]).mem[_51 + 32 len 4] with:
               value cd[((32 * idx) + cd[36] + 36)] wei
                 gas gas_remaining wei
                args mem[_51 + 36 len _53 - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 32, 35, 0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[_51 + 135 len 29]
            else:
                mem[64] = _51 + ceil32(return_data.size) + 33
                mem[_51 + 32] = return_data.size
                mem[_51 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                32,
                                35,
                                0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                mem[_51 + ceil32(return_data.size) + 136 len 29]
            ('bool', 'ext_call.success')
            require idx < ('cd', 36).length
            if s - cd[((32 * idx) + cd[36] + 36)] > s:
                revert with 0, 'ds-math-sub-underflow'
            idx = idx + 1
            s = s - cd[((32 * idx) + cd[36] + 36)]
            continue 
    else:
        if cd[68] - eth.balance(this.address) > cd[68]:
            revert with 0, 'ds-math-sub-underflow'
        mem[96] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
        mem[100] = cd[68] - eth.balance(this.address)
        require ext_code.size(WETHAddress)
        call WETHAddress.0x2e1a7d4d with:
             gas gas_remaining wei
            args (cd[68] - eth.balance(this.address))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = 0
        s = cd[68]
        while idx < ('cd', 4).length:
            require idx < ('cd', 36).length
            _54 = mem[64]
            mem[mem[64]] = 0
            mem[64] = mem[64] + 32
            _56 = mem[_54]
            u = _54 + 32
            v = mem[64]
            t = mem[_54]
            while t >= 32:
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                t = t - 32
                continue 
            mem[mem[64] + floor32(mem[_54])] = mem[_54 + floor32(mem[_54]) + -(mem[_54] % 32) + 64 len mem[_54] % 32] or Mask(8 * -(mem[_54] % 32) + 32, -(8 * -(mem[_54] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_54])])
            call address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
               value cd[((32 * idx) + cd[36] + 36)] wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _56 + _54 + -mem[64] + 28]
            if return_data.size:
                _92 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_92] = return_data.size
                mem[_92 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 32, 35, 0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[mem[64] + 103 len 29]
            require idx < ('cd', 36).length
            if s - cd[((32 * idx) + cd[36] + 36)] > s:
                revert with 0, 'ds-math-sub-underflow'
            idx = idx + 1
            s = s - cd[((32 * idx) + cd[36] + 36)]
            continue 
    if s:
        revert with 0, 'Wallet: INVALID_TOTAL_AMOUNT'
}



}
