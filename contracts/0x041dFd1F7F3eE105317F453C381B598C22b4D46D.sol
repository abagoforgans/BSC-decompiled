contract main {




// =====================  Runtime code  =====================


uint256 lockRequestCount;
address sub_c00e79b9Address;
address custodianAddress;
address controllerAddress;
uint256 totalSupplyCeiling;
mapping of uint256 pendingRaiseMap;
array of struct sub_ad0893a9;
mapping of struct sub_9092eeae;

function pendingRaiseMap(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return pendingRaiseMap[arg1]
}

function custodian() payable {
    return custodianAddress
}

function sub_9092eeae(?) payable {
    require calldata.size - 4 >= 32
    return sub_9092eeae[arg1].field_0, sub_9092eeae[arg1].field_256, sub_9092eeae[arg1].field_512
}

function totalSupplyCeiling() payable {
    return totalSupplyCeiling
}

function sub_ad0893a9(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < sub_ad0893a9[arg1].field_0
    return sub_ad0893a9[arg1][arg2].field_0, sub_ad0893a9[arg1][arg2].field_256
}

function sub_c00e79b9(?) payable {
    return sub_c00e79b9Address
}

function lockRequestCount() payable {
    return lockRequestCount
}

function controller() payable {
    return controllerAddress
}

function _fallback() payable {
    revert
}

function lowerCeiling(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if controllerAddress != msg.sender:
        revert with 0, 'only controller'
    if totalSupplyCeiling - arg1 > totalSupplyCeiling:
        revert with 0, 'totalSupplyCeiling overflow'
    totalSupplyCeiling -= arg1
    emit CeilingLowered(arg1, totalSupplyCeiling - arg1);
}

function confirmPrintProxy(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if custodianAddress != msg.sender:
        revert with 0, 'only custodian'
    require ext_code.size(sub_c00e79b9Address)
    call sub_c00e79b9Address.0x380ba30c with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function confirmCustodianChangeProxy(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if custodianAddress != msg.sender:
        revert with 0, 'only custodian'
    require ext_code.size(sub_c00e79b9Address)
    call sub_c00e79b9Address.0x3a8343ee with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function requestCeilingRaise(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'no zero ceiling raise'
    lockRequestCount++
    pendingRaiseMap[block.hash(block.number - 1)][Mask(160, 96, this.address) >> 96][stor0 + 1] = arg1
    emit CeilingRaiseLocked(sha3(block.hash(block.number - 1), Mask(160, 96, this.address) >> 96, lockRequestCount + 1), arg1);
    return sha3(block.hash(block.number - 1), Mask(160, 96, this.address) >> 96, lockRequestCount + 1)
}

function confirmCeilingRaise(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if custodianAddress != msg.sender:
        revert with 0, 'only custodian'
    if not pendingRaiseMap[arg1]:
        revert with 0, 'no gibberish _lockId'
    pendingRaiseMap[arg1] = 0
    if pendingRaiseMap[arg1] + totalSupplyCeiling >= totalSupplyCeiling:
        totalSupplyCeiling += pendingRaiseMap[arg1]
        emit CeilingRaiseConfirmed(arg1, pendingRaiseMap[arg1], pendingRaiseMap[arg1] + totalSupplyCeiling);
}

function sub_614d263f(?) payable {
    require calldata.size - 4 >= 32
    if custodianAddress != msg.sender:
        revert with 0, 'only custodian'
    sub_9092eeae[arg1].field_0 = 0
    sub_9092eeae[arg1].field_256 = 0
    sub_9092eeae[arg1].field_512 = 0
    require ext_code.size(sub_c00e79b9Address)
    call sub_c00e79b9Address.0x33bebb77 with:
         gas gas_remaining wei
        args sub_9092eeae[arg1].field_256, sub_9092eeae[arg1].field_512, sub_9092eeae[arg1].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x6bcf22a7: arg1, sub_9092eeae[arg1].field_256, sub_9092eeae[arg1].field_512, sub_9092eeae[arg1].field_0
}

function unblockWallet(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(custodianAddress)
    staticcall custodianAddress.0x1d972d41 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'only signer'
    require ext_code.size(sub_c00e79b9Address)
    call sub_c00e79b9Address.0x1c8e1179 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Unblocked(arg1);
}

function blockWallet(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(custodianAddress)
    staticcall custodianAddress.0x1d972d41 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'only signer'
    require ext_code.size(sub_c00e79b9Address)
    call sub_c00e79b9Address.blockWallet(address rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Blocked(arg1);
}

function sub_d02c60b3(?) payable {
    require calldata.size - 4 >= 96
    if controllerAddress != msg.sender:
        revert with 0, 'only controller'
    lockRequestCount++
    if not arg3:
        revert with 0, 'no zero value transfers'
    sub_9092eeae[block.hash(block.number - 1)][Mask(160, 96, this.address) >> 96][stor0 + 1].field_0 = arg3
    sub_9092eeae[block.hash(block.number - 1)][Mask(160, 96, this.address) >> 96][stor0 + 1].field_256 = arg1
    sub_9092eeae[block.hash(block.number - 1)][Mask(160, 96, this.address) >> 96][stor0 + 1].field_512 = arg2
    emit 0x263f83a4: sha3(block.hash(block.number - 1), Mask(160, 96, this.address) >> 96, lockRequestCount + 1), address(arg1), address(arg2), arg3
    return sha3(block.hash(block.number - 1), Mask(160, 96, this.address) >> 96, lockRequestCount + 1)
}

function limitedPrint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if controllerAddress != msg.sender:
        revert with 0, 'only controller'
    require ext_code.size(sub_c00e79b9Address)
    staticcall sub_c00e79b9Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
        revert with 0, 'new total supply overflow'
    if ext_call.return_data[0] + arg2 > totalSupplyCeiling:
        revert with 0, 'total supply ceiling overflow'
    require ext_code.size(sub_c00e79b9Address)
    call sub_c00e79b9Address.0xbe23d291 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_c00e79b9Address)
    call sub_c00e79b9Address.0x380ba30c with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_4b211e8b(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if custodianAddress != msg.sender:
        revert with 0, 'only custodian'
    idx = 0
    while idx < sub_ad0893a9[arg1].field_0:
        _17 = mem[64]
        mem[64] = mem[64] + 64
        mem[_17] = 0
        mem[_17 + 32] = 0
        mem[32] = 6
        require idx < sub_ad0893a9[arg1].field_0
        mem[0] = sha3(arg1, 6)
        _20 = mem[64]
        mem[64] = mem[64] + 64
        mem[_20] = sub_ad0893a9[arg1][idx].field_0
        mem[_20 + 32] = sub_ad0893a9[arg1][idx].field_256
        mem[mem[64] + 4] = sub_ad0893a9[arg1][idx].field_256
        mem[mem[64] + 36] = sub_ad0893a9[arg1][idx].field_0
        require ext_code.size(sub_c00e79b9Address)
        call sub_c00e79b9Address.0x9dc29fac with:
             gas gas_remaining wei
            args sub_ad0893a9[arg1][idx].field_256, sub_ad0893a9[arg1][idx].field_0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    sub_ad0893a9[arg1].field_0 = 0
    idx = 0
    while 2 * sub_ad0893a9[arg1].field_0 > idx:
        sub_ad0893a9[arg1][idx].field_0 = 0
        sub_ad0893a9[arg1][idx].field_256 = 0
        idx = idx + 2
        continue 
    emit 0xcfeb351c: arg1
}

function sub_c30a148a(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if controllerAddress != msg.sender:
        revert with 0, 'only controller'
    if arg1.length != arg2.length:
        revert with 0, 
                    32,
                    42,
                    0xfe5f66726f6d735b5d20616e64205f76616c7565735b5d206d7573742062652073616d65206c656e6774,
                    mem[(32 * arg1.length) + (32 * arg2.length) + 270 len 22]
    lockRequestCount++
    mem[(32 * arg1.length) + (32 * arg2.length) + 192] = block.hash(block.number - 1)
    mem[(32 * arg1.length) + (32 * arg2.length) + 224] = this.address << 96
    mem[(32 * arg1.length) + (32 * arg2.length) + 244] = lockRequestCount + 1
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 84
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 276
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _32 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _34 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[0] = sha3(block.hash(block.number - 1), Mask(160, 96, this.address) >> 96, lockRequestCount + 1)
        mem[32] = 6
        _36 = mem[64]
        mem[64] = mem[64] + 64
        mem[_36] = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[_36 + 32] = address(_32)
        sub_ad0893a9[block.hash(block.number - 1)][Mask(160, 96, this.address) >> 96][stor0 + 1].field_0++
        mem[0] = sha3(sha3(block.hash(block.number - 1), Mask(160, 96, this.address) >> 96, lockRequestCount + 1), 6)
        sub_ad0893a9[block.hash(block.number - 1)][Mask(160, 96, this.address) >> 96][stor0 + 1][sub_ad0893a9[block.hash(block.number - 1)][Mask(160, 96, this.address) >> 96][stor0 + 1].field_0].field_0 = _34
        sub_ad0893a9[block.hash(block.number - 1)][Mask(160, 96, this.address) >> 96][stor0 + 1][sub_ad0893a9[block.hash(block.number - 1)][Mask(160, 96, this.address) >> 96][stor0 + 1].field_0].field_256 = address(_32)
        idx = idx + 1
        continue 
    emit 0x2e36110f: sha3(block.hash(block.number - 1), Mask(160, 96, this.address) >> 96, lockRequestCount + 1)
    return sha3(block.hash(block.number - 1), Mask(160, 96, this.address) >> 96, lockRequestCount + 1)
}



}
