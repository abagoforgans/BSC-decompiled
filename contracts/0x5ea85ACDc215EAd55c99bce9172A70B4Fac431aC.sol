contract main {




// =====================  Runtime code  =====================


uint32 stor0;
address owner;
uint256 stor0;
uint256 stor1;
array of struct stor2;
mapping of uint256 stor3;
uint256 sub_7c713dd2;
mapping of address referrers;
mapping of uint256 referralsCount;
mapping of struct referrerInfo;

function referrers(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return referrers[arg1]
}

function getReferrer(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return referrers[address(arg1)]
}

function referralsCount(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return referralsCount[arg1]
}

function isOperator(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[address(arg1)])
}

function referrerInfo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return referrerInfo[arg1].field_0, referrerInfo[arg1].field_256
}

function sub_7c713dd2(?) {
    return sub_7c713dd2
}

function owner() {
    return address(owner)
}

function renounceOwnership() {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(owner) = 0
    emit OwnershipTransferred(address(owner), 0);
}

function sub_edc47761(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return referrerInfo[address(arg1)].field_0, referrerInfo[address(arg1)].field_256, referralsCount[address(arg1)]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    address(owner) = arg1
    emit OwnershipTransferred(address(owner), arg1);
}

function withdrawFunds(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 > eth.balance(this.address):
        revert with 0, 'Withdrawal exceeds limit'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_fad99f98(?) {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if referrerInfo[msg.sender].field_256:
        referrerInfo[msg.sender].field_256 = 0
        call msg.sender with:
           value referrerInfo[msg.sender].field_256 wei
             gas 23000 wei
        if not ext_call.success:
            revert with 0, 'BNB_TRANSFER_FAILED'
        emit 0x2790e31c: referrerInfo[msg.sender].field_256, msg.sender
    stor1 = 1
}

function addOperator(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Token: _addOperator is the zero address'
    if stor3[address(arg1)]:
        return 0
    stor2.length++
    stor2[stor2.length].field_0 = arg1
    stor2[stor2.length].field_160 = 0
    stor3[address(arg1)] = stor2.length
    return 1
}

function recordReferrer(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor3[address(msg.sender)]:
        revert with 0, 'caller is not a operator'
    if arg1:
        if arg2:
            if arg1 != arg2:
                if not referrers[address(arg1)]:
                    referrers[address(arg1)] = arg2
                    if 1 > !referralsCount[address(arg2)]:
                        revert with 'NH{q', 17
                    referralsCount[address(arg2)]++
                    emit 0x78bca46c: arg1, arg2
}

function sub_e77d47e6(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not stor3[address(msg.sender)]:
        revert with 0, 'caller is not a operator'
    if address(arg2):
        if arg3 > 0:
            if referrerInfo[address(arg2)].field_0 > !arg3:
                revert with 'NH{q', 17
            referrerInfo[address(arg2)].field_0 += arg3
            if referrerInfo[address(arg2)].field_256 > !arg3:
                revert with 'NH{q', 17
            referrerInfo[address(arg2)].field_256 += arg3
            if sub_7c713dd2 > !arg3:
                revert with 'NH{q', 17
            sub_7c713dd2 += arg3
            emit 0x8f16a598: arg3, referrerInfo[address(arg2)].field_0, referrerInfo[address(arg2)].field_256, address(arg1), address(arg2)
}

function delOperator(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Token: _delOperator is the zero address'
    if not stor3[address(arg1)]:
        return 0
    if stor3[address(arg1)] < 1:
        revert with 'NH{q', 17
    if stor2.length < 1:
        revert with 'NH{q', 17
    if stor2.length - 1 != stor3[address(arg1)] - 1:
        if stor2.length - 1 >= stor2.length:
            revert with 'NH{q', 50
        if stor3[address(arg1)] - 1 >= stor2.length:
            revert with 'NH{q', 50
        stor2[stor3[address(arg1)]].field_0 = stor2[stor2.length].field_0
        stor3[stor2[stor2.length].field_0] = stor3[address(arg1)]
    if not stor2.length:
        revert with 'NH{q', 49
    stor2[stor2.length].field_0 = 0
    stor2.length--
    stor3[address(arg1)] = 0
    return 1
}

function withdrawToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = address(owner)
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor0)
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeBEP20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeBEP20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
}

function _fallback() payable {
    if calldata.size >= 4:
        if unknown_0x89476069(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x6d70f7ae(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x6d70f7ae(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return bool(stor3[address(arg1)])
                if unknown_0x711a4f62(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return referrerInfo[arg1].field_0, referrerInfo[arg1].field_256
                if uint32(call.func_hash) >> 224 != unknown_0x715018a6(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0x7c713dd2(?????):
                    require not msg.value
                    return sub_7c713dd2
                require not msg.value
                if address(owner) != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                address(owner) = 0
                emit OwnershipTransferred(address(owner), 0);
            if uint32(call.func_hash) >> 224 != unknown_0x3e30838d(?????):
                if unknown_0x4a3b68cc(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return referrers[arg1]
                if unknown_0x4a9fefc7(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return referrers[address(arg1)]
                if uint32(call.func_hash) >> 224 != unknown_0x6b366c66(?????):
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                return referralsCount[arg1]
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            if address(owner) != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if not address(arg1):
                revert with 0, 'Token: _delOperator is the zero address'
            if not stor3[address(arg1)]:
                return 0
            if stor3[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor2.length < 1:
                revert with 'NH{q', 17
            if stor2.length - 1 != stor3[address(arg1)] - 1:
                if stor2.length - 1 >= stor2.length:
                    revert with 'NH{q', 50
                if stor3[address(arg1)] - 1 >= stor2.length:
                    revert with 'NH{q', 50
                stor2[stor3[address(arg1)]].field_0 = stor2[stor2.length].field_0
                stor3[stor2[stor2.length].field_0] = stor3[address(arg1)]
            if not stor2.length:
                revert with 'NH{q', 49
            stor2[stor2.length].field_0 = 0
            stor2.length--
            stor3[address(arg1)] = 0
            return 1
        if unknown_0xc1075329(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xedc47761(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xedc47761(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return referrerInfo[address(arg1)].field_0, referrerInfo[address(arg1)].field_256, referralsCount[address(arg1)]
                if unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if address(owner) != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not address(arg1):
                        revert with 0, 'Ownable: new owner is the zero address'
                    address(owner) = address(arg1)
                    emit OwnershipTransferred(address(owner), address(arg1));
                else:
                    if unknown_0xfad99f98(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        if stor1 == 2:
                            revert with 0, 'ReentrancyGuard: reentrant call'
                        stor1 = 2
                        if referrerInfo[msg.sender].field_256:
                            referrerInfo[msg.sender].field_256 = 0
                            call msg.sender with:
                               value referrerInfo[msg.sender].field_256 wei
                                 gas 23000 wei
                            if not ext_call.success:
                                revert with 0, 'BNB_TRANSFER_FAILED'
                            emit 0x2790e31c: referrerInfo[msg.sender].field_256, msg.sender
                        stor1 = 1
            else:
                if unknown_0xc1075329(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    if address(owner) != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg2 > eth.balance(this.address):
                        revert with 0, 'Withdrawal exceeds limit'
                    call address(arg1) with:
                       value arg2 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if unknown_0xe77d47e6(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 96
                        require arg1 == address(arg1)
                        require arg2 == address(arg2)
                        if not stor3[address(msg.sender)]:
                            revert with 0, 'caller is not a operator'
                        if address(arg2):
                            if arg3 > 0:
                                if referrerInfo[address(arg2)].field_0 > !arg3:
                                    revert with 'NH{q', 17
                                referrerInfo[address(arg2)].field_0 += arg3
                                if referrerInfo[address(arg2)].field_256 > !arg3:
                                    revert with 'NH{q', 17
                                referrerInfo[address(arg2)].field_256 += arg3
                                if sub_7c713dd2 > !arg3:
                                    revert with 'NH{q', 17
                                sub_7c713dd2 += arg3
                                emit 0x8f16a598: arg3, referrerInfo[address(arg2)].field_0, referrerInfo[address(arg2)].field_256, address(arg1), address(arg2)
        else:
            if uint32(call.func_hash) >> 224 != unknown_0x89476069(?????):
                if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return address(owner)
                if unknown_0x9870d7fe(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if address(owner) != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not address(arg1):
                        revert with 0, 'Token: _addOperator is the zero address'
                    if stor3[address(arg1)]:
                        return 0
                    stor2.length++
                    stor2[stor2.length].field_0 = address(arg1)
                    stor2[stor2.length].field_160 = 0
                    stor3[address(arg1)] = stor2.length
                    return 1
                if unknown_0xa77b9c20(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    require arg2 == address(arg2)
                    if not stor3[address(msg.sender)]:
                        revert with 0, 'caller is not a operator'
                    if address(arg1):
                        if address(arg2):
                            if address(arg1) != address(arg2):
                                if not referrers[address(arg1)]:
                                    referrers[address(arg1)] = address(arg2)
                                    if 1 > !referralsCount[address(arg2)]:
                                        revert with 'NH{q', 17
                                    referralsCount[address(arg2)]++
                                    emit 0x78bca46c: address(arg1), address(arg2)
            else:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if address(owner) != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                mem[132] = this.address
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(return_data.size) + 164] = address(owner)
                mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + 128] = 68
                mem[ceil32(return_data.size) + 164 len 28] = Mask(224, 0, stor0)
                mem[ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 228] = 32
                mem[ceil32(return_data.size) + 260] = 'SafeBEP20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(arg1)):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 292 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0
                mem[ceil32(return_data.size) + 360] = 0
                call address(arg1) with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeBEP20: low-level call failed'
                    if mem[96]:
                        require mem[96] >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeBEP20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                        if not mem[ceil32(return_data.size) + 324]:
                            revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
}



}
