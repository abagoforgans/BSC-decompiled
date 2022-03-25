contract main {




// =====================  Runtime code  =====================


uint256 lockRequestCount;
address custodianAddress;
mapping of address custodianChangeReqs;
address sub_ddcb59f3Address;
address sub_f1c2e04dAddress;
address sweeperAddress;
address owner;
uint256 sweepMsg;
mapping of uint8 stor8;
mapping of struct pendingPrintMap;
mapping of uint8 stor10;

function pendingPrintMap(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return pendingPrintMap[arg1].field_0, pendingPrintMap[arg1].field_256
}

function custodian() payable {
    return custodianAddress
}

function getOwner() payable {
    return owner
}

function owner() payable {
    return owner
}

function sweeper() payable {
    return sweeperAddress
}

function lockRequestCount() payable {
    return lockRequestCount
}

function custodianChangeReqs(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return custodianChangeReqs[arg1]
}

function sub_ddcb59f3(?) payable {
    return sub_ddcb59f3Address
}

function sweepMsg() payable {
    return sweepMsg
}

function blocked(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor10[arg1])
}

function sweptSet(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor8[arg1])
}

function sub_f1c2e04d(?) payable {
    return sub_f1c2e04dAddress
}

function _fallback() payable {
    revert
}

function blockWallet(address arg1) payable {
    require calldata.size - 4 >= 32
    if custodianAddress != msg.sender:
        revert with 0, 'only custodian'
    stor10[address(arg1)] = 1
    return 1
}

function unblockWallet(address arg1) payable {
    require calldata.size - 4 >= 32
    if custodianAddress != msg.sender:
        revert with 0, 'only custodian'
    stor10[address(arg1)] = 0
    return 1
}

function totalSupply() payable {
    require ext_code.size(sub_f1c2e04dAddress)
    staticcall sub_f1c2e04dAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_f1c2e04dAddress)
    staticcall sub_f1c2e04dAddress.0x27e235e3 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_f1c2e04dAddress)
    staticcall sub_f1c2e04dAddress.0x5c658165 with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function confirmCustodianChange(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if custodianAddress != msg.sender:
        revert with 0, 'only custodian'
    if not custodianChangeReqs[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x6572656a65637420e280986e756c6ce2809920726573756c74732066726f6d20746865206d6170206c6f6f6b75,
                    mem[209 len 19]
    custodianAddress = custodianChangeReqs[arg1]
    custodianChangeReqs[arg1] = 0
    emit CustodianChangeConfirmed(arg1, custodianAddress);
}

function requestCustodianChange(address arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x656e6f206e756c6c2076616c756520666f72205f70726f706f736564437573746f646961,
                    mem[200 len 28]
    lockRequestCount++
    custodianChangeReqs[block.hash(block.number - 1)][Mask(160, 96, this.address) >> 96][stor0 + 1] = arg1
    emit CustodianChangeRequested(sha3(block.hash(block.number - 1), Mask(160, 96, this.address) >> 96, lockRequestCount + 1), msg.sender, arg1);
    return sha3(block.hash(block.number - 1), Mask(160, 96, this.address) >> 96, lockRequestCount + 1)
}

function requestPrint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, 'no null value for `_receiver`'
    if 1 == bool(stor10[msg.sender]):
        revert with 0, 'account blocked'
    if 1 == bool(stor10[address(arg1)]):
        revert with 0, '_receiver must not be blocked'
    lockRequestCount++
    pendingPrintMap[block.hash(block.number - 1)][Mask(160, 96, this.address) >> 96][stor0 + 1].field_0 = arg1
    pendingPrintMap[block.hash(block.number - 1)][Mask(160, 96, this.address) >> 96][stor0 + 1].field_256 = arg2
    emit PrintingLocked(sha3(block.hash(block.number - 1), Mask(160, 96, this.address) >> 96, lockRequestCount + 1), address(arg1), arg2);
    return sha3(block.hash(block.number - 1), Mask(160, 96, this.address) >> 96, lockRequestCount + 1)
}

function approveWithSender(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if sub_ddcb59f3Address != msg.sender:
        revert with 0, 'only bep20Proxy'
    if not arg2:
        revert with 0, 'no null value for `_spender`'
    if 1 == bool(stor10[address(arg1)]):
        revert with 0, 's_sender must not be blocked'
    if 1 == bool(stor10[address(arg2)]):
        revert with 0, '_spender must not be blocked'
    require ext_code.size(sub_f1c2e04dAddress)
    call sub_f1c2e04dAddress.0xda46098c with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_ddcb59f3Address)
    call sub_ddcb59f3Address.0x5687f2b8 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transferWithSender(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if sub_ddcb59f3Address != msg.sender:
        revert with 0, 'only bep20Proxy'
    if not arg2:
        revert with 0, 'no null value for `_to`'
    if 1 == bool(stor10[address(arg1)]):
        revert with 0, 's_sender must not be blocked'
    if 1 == bool(stor10[address(arg2)]):
        revert with 0, '_to must not be blocked'
    require ext_code.size(sub_f1c2e04dAddress)
    staticcall sub_f1c2e04dAddress.0x27e235e3 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 > ext_call.return_data[0]:
        revert with 0, 'insufficient funds'
    require ext_code.size(sub_f1c2e04dAddress)
    call sub_f1c2e04dAddress.0xe30443bc with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0] - arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_f1c2e04dAddress)
    call sub_f1c2e04dAddress.0x21e5383a with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_ddcb59f3Address)
    call sub_ddcb59f3Address.0x23de6651 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function decreaseApprovalWithSender(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if sub_ddcb59f3Address != msg.sender:
        revert with 0, 'only bep20Proxy'
    if not arg2:
        revert with 0, 'no unspendable approvals'
    if 1 == bool(stor10[address(arg1)]):
        revert with 0, 's_sender must not be blocked'
    if 1 == bool(stor10[address(arg2)]):
        revert with 0, '_spender must not be blocked'
    require ext_code.size(sub_f1c2e04dAddress)
    staticcall sub_f1c2e04dAddress.0x5c658165 with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] - arg3 > ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0xfe6e657720616c6c6f77616e6365206d757374206e6f7420626520736d616c6c6572207468616e2070726576696f75,
                    mem[211 len 17]
    require ext_code.size(sub_f1c2e04dAddress)
    call sub_f1c2e04dAddress.0xda46098c with:
         gas gas_remaining wei
        args address(arg1), address(arg2), ext_call.return_data[0] - arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_ddcb59f3Address)
    call sub_ddcb59f3Address.0x5687f2b8 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), ext_call.return_data[0] - arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function increaseApprovalWithSender(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if sub_ddcb59f3Address != msg.sender:
        revert with 0, 'only bep20Proxy'
    if not arg2:
        revert with 0, 'no null value for_spender'
    if 1 == bool(stor10[address(arg1)]):
        revert with 0, 's_sender must not be blocked'
    if 1 == bool(stor10[address(arg2)]):
        revert with 0, '_spender must not be blocked'
    require ext_code.size(sub_f1c2e04dAddress)
    staticcall sub_f1c2e04dAddress.0x5c658165 with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + arg3 < ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0xfe6e657720616c6c6f77616e6365206d757374206e6f7420626520736d616c6c6572207468616e2070726576696f75,
                    mem[211 len 17]
    require ext_code.size(sub_f1c2e04dAddress)
    call sub_f1c2e04dAddress.0xda46098c with:
         gas gas_remaining wei
        args address(arg1), address(arg2), ext_call.return_data[0] + arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_ddcb59f3Address)
    call sub_ddcb59f3Address.0x5687f2b8 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), ext_call.return_data[0] + arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function confirmPrint(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if custodianAddress != msg.sender:
        revert with 0, 'only custodian'
    if not pendingPrintMap[arg1].field_0:
        revert with 0, 'unknown `_lockId`'
    pendingPrintMap[arg1].field_0 = 0
    pendingPrintMap[arg1].field_256 = 0
    require ext_code.size(sub_f1c2e04dAddress)
    staticcall sub_f1c2e04dAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + pendingPrintMap[arg1].field_256 >= ext_call.return_data[0]:
        require ext_code.size(sub_f1c2e04dAddress)
        call sub_f1c2e04dAddress.0xf7ea7a3d with:
             gas gas_remaining wei
            args (ext_call.return_data[0] + pendingPrintMap[arg1].field_256)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_f1c2e04dAddress)
        call sub_f1c2e04dAddress.0x21e5383a with:
             gas gas_remaining wei
            args pendingPrintMap[arg1].field_0, pendingPrintMap[arg1].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit PrintingConfirmed(arg1, pendingPrintMap[arg1].field_0, pendingPrintMap[arg1].field_256);
        require ext_code.size(sub_ddcb59f3Address)
        call sub_ddcb59f3Address.0x23de6651 with:
             gas gas_remaining wei
            args 0, pendingPrintMap[arg1].field_0, pendingPrintMap[arg1].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if 1 == bool(stor10[msg.sender]):
        revert with 0, 'account blocked'
    require ext_code.size(sub_f1c2e04dAddress)
    staticcall sub_f1c2e04dAddress.0x27e235e3 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0x68646973616c6c6f77206275726e696e67206d6f72652c207468616e20616d6f756e74206f66207468652062616c616e63,
                    mem[213 len 15]
    require ext_code.size(sub_f1c2e04dAddress)
    call sub_f1c2e04dAddress.0xe30443bc with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0] - arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_f1c2e04dAddress)
    staticcall sub_f1c2e04dAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f1c2e04dAddress)
    call sub_f1c2e04dAddress.0xf7ea7a3d with:
         gas gas_remaining wei
        args (ext_call.return_data[0] - arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_ddcb59f3Address)
    call sub_ddcb59f3Address.0x23de6651 with:
         gas gas_remaining wei
        args msg.sender, 0, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function forceTransfer(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if custodianAddress != msg.sender:
        revert with 0, 'only custodian'
    if not arg2:
        revert with 0, 'no null value for `_to`'
    require ext_code.size(sub_f1c2e04dAddress)
    staticcall sub_f1c2e04dAddress.0x27e235e3 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f1c2e04dAddress)
    if arg3 > ext_call.return_data[0]:
        call sub_f1c2e04dAddress.0xe30443bc with:
             gas gas_remaining wei
            args address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_f1c2e04dAddress)
        call sub_f1c2e04dAddress.0x21e5383a with:
             gas gas_remaining wei
            args address(arg2), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_ddcb59f3Address)
        call sub_ddcb59f3Address.0x23de6651 with:
             gas gas_remaining wei
            args address(arg1), address(arg2), ext_call.return_data[0]
    else:
        call sub_f1c2e04dAddress.0xe30443bc with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0] - arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_f1c2e04dAddress)
        call sub_f1c2e04dAddress.0x21e5383a with:
             gas gas_remaining wei
            args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_ddcb59f3Address)
        call sub_ddcb59f3Address.0x23de6651 with:
             gas gas_remaining wei
            args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transferFromWithSender(address arg1, address arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if sub_ddcb59f3Address != msg.sender:
        revert with 0, 'only bep20Proxy'
    if not arg3:
        revert with 0, 'no null values for `_to`'
    if 1 == bool(stor10[address(arg1)]):
        revert with 0, 's_sender must not be blocked'
    if 1 == bool(stor10[address(arg2)]):
        revert with 0, '_from must not be blocked'
    if 1 == bool(stor10[address(arg3)]):
        revert with 0, '_to must not be blocked'
    require ext_code.size(sub_f1c2e04dAddress)
    staticcall sub_f1c2e04dAddress.0x27e235e3 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg4 > ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x696e73756666696369656e742066756e6473206f6e20605f66726f6d602062616c616e6300,
                    mem[201 len 27]
    require ext_code.size(sub_f1c2e04dAddress)
    staticcall sub_f1c2e04dAddress.0x5c658165 with:
            gas gas_remaining wei
           args address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg4 > ext_call.return_data[0]:
        revert with 0, 'insufficient allowance amount'
    require ext_code.size(sub_f1c2e04dAddress)
    call sub_f1c2e04dAddress.0xe30443bc with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0] - arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_f1c2e04dAddress)
    call sub_f1c2e04dAddress.0x21e5383a with:
         gas gas_remaining wei
        args address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_f1c2e04dAddress)
    call sub_f1c2e04dAddress.0xda46098c with:
         gas gas_remaining wei
        args address(arg2), address(arg1), ext_call.return_data[0] - arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_ddcb59f3Address)
    call sub_ddcb59f3Address.0x23de6651 with:
         gas gas_remaining wei
        args address(arg2), address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function replaySweep(address[] arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if sweeperAddress != msg.sender:
        revert with 0, 'only sweeper'
    if not arg2:
        revert with 0, 'no null value for `_to`'
    if 1 == bool(stor10[address(arg2)]):
        revert with 0, '_to must not be blocked'
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        _27 = mem[(32 * idx) + 128]
        if 1 == bool(stor10[mem[(32 * idx) + 140 len 20]]):
            revert with 0, '_froms must not be blocked'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 8
        if not stor8[address(mem[(32 * idx) + 128])]:
            idx = idx + 1
            s = s
            continue 
        mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 140 len 20]
        require ext_code.size(sub_f1c2e04dAddress)
        staticcall sub_f1c2e04dAddress.0x27e235e3 with:
                gas gas_remaining wei
               args address(_27)
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            idx = idx + 1
            s = s
            continue 
        require ext_code.size(sub_f1c2e04dAddress)
        call sub_f1c2e04dAddress.0xe30443bc with:
             gas gas_remaining wei
            args address(_27), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg1.length) + 128] = 0x23de665100000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + 132] = address(_27)
        mem[(32 * arg1.length) + 164] = arg2
        mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
        require ext_code.size(sub_ddcb59f3Address)
        call sub_ddcb59f3Address.0x23de6651 with:
             gas gas_remaining wei
            args address(_27), address(arg2), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        s = ext_call.return_data[0] + s
        continue 
    if s:
        require ext_code.size(sub_f1c2e04dAddress)
        call sub_f1c2e04dAddress.0x21e5383a with:
             gas gas_remaining wei
            args address(arg2), s
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function burn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if custodianAddress != msg.sender:
        revert with 0, 'only custodian'
    require ext_code.size(sub_f1c2e04dAddress)
    staticcall sub_f1c2e04dAddress.0x27e235e3 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f1c2e04dAddress)
    if arg2 > ext_call.return_data[0]:
        call sub_f1c2e04dAddress.0xe30443bc with:
             gas gas_remaining wei
            args address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_f1c2e04dAddress)
        staticcall sub_f1c2e04dAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_f1c2e04dAddress)
        call sub_f1c2e04dAddress.0xf7ea7a3d with:
             gas gas_remaining wei
            args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_ddcb59f3Address)
        call sub_ddcb59f3Address.0x23de6651 with:
             gas gas_remaining wei
            args address(arg1), 0, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xcad422cf: address(arg1), arg2, ext_call.return_data[0], 0
    else:
        call sub_f1c2e04dAddress.0xe30443bc with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0] - arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_f1c2e04dAddress)
        staticcall sub_f1c2e04dAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_f1c2e04dAddress)
        call sub_f1c2e04dAddress.0xf7ea7a3d with:
             gas gas_remaining wei
            args (ext_call.return_data[0] - arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_ddcb59f3Address)
        call sub_ddcb59f3Address.0x23de6651 with:
             gas gas_remaining wei
            args address(arg1), 0, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xcad422cf: address(arg1), arg2, arg2, ext_call.return_data[0] - arg2
    return 1
}

function batchTransfer(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if arg1.length != arg2.length:
        revert with 0, 
                    32,
                    40,
                    0x6e5f746f7320616e64205f76616c756573206d757374206265207468652073616d65206c656e6774,
                    mem[(32 * arg1.length) + (32 * arg2.length) + 268 len 24]
    if 1 == bool(stor10[msg.sender]):
        revert with 0, 'account blocked'
    mem[(32 * arg1.length) + (32 * arg2.length) + 164] = msg.sender
    require ext_code.size(sub_f1c2e04dAddress)
    staticcall sub_f1c2e04dAddress.0x27e235e3 with:
            gas gas_remaining wei
           args msg.sender
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    s = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
    while idx < arg1.length:
        require idx < arg1.length
        _39 = mem[(32 * idx) + 128]
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'no null values for _tos'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 10
        if 1 == bool(stor10[mem[(32 * idx) + 140 len 20]]):
            revert with 0, '_tos must not be blocked'
        require idx < arg2.length
        _48 = mem[(32 * idx) + (32 * arg1.length) + 160]
        if s < mem[(32 * idx) + (32 * arg1.length) + 160]:
            revert with 0, 'insufficient funds'
        if mem[(32 * idx) + 140 len 20] == msg.sender:
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0x23de665100000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length) + (32 * arg2.length) + 164] = msg.sender
            mem[(32 * arg1.length) + (32 * arg2.length) + 196] = address(_39)
            mem[(32 * arg1.length) + (32 * arg2.length) + 228] = _48
            require ext_code.size(sub_ddcb59f3Address)
            call sub_ddcb59f3Address.0x23de6651 with:
                 gas gas_remaining wei
                args msg.sender, address(_39), _48
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = s
            continue 
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
        require ext_code.size(sub_f1c2e04dAddress)
        call sub_f1c2e04dAddress.0x21e5383a with:
             gas gas_remaining wei
            args mem[(32 * arg1.length) + (32 * arg2.length) + 164], _48
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0x23de665100000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = msg.sender
        mem[(32 * arg1.length) + (32 * arg2.length) + 196] = address(_39)
        mem[(32 * arg1.length) + (32 * arg2.length) + 228] = _48
        require ext_code.size(sub_ddcb59f3Address)
        call sub_ddcb59f3Address.0x23de6651 with:
             gas gas_remaining wei
            args msg.sender, address(_39), _48
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        s = s - _48
        continue 
    require ext_code.size(sub_f1c2e04dAddress)
    call sub_f1c2e04dAddress.0xe30443bc with:
         gas gas_remaining wei
        args msg.sender, s
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function enableSweep(uint8[] arg1, bytes32[] arg2, bytes32[] arg3, address arg4) payable {
    require calldata.size - 4 >= 128
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
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = 0
    if sweeperAddress != msg.sender:
        revert with 0, 'only sweeper'
    if not arg4:
        revert with 0, 'no null value for `_to`'
    mem[0] = arg4
    mem[32] = 10
    if 1 == bool(stor10[address(arg4)]):
        revert with 0, '_to must not be blocked'
    if arg1.length != arg2.length:
        revert with 0, 
                    32,
                    39,
                    0x705f76735b5d2c205f72735b5d2c205f7373206c656e677468732061726520646966666572656e,
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 299 len 25]
    if arg1.length != arg3.length:
        revert with 0, 
                    32,
                    39,
                    0x705f76735b5d2c205f72735b5d2c205f7373206c656e677468732061726520646966666572656e,
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 299 len 25]
    idx = 0
    s = 0
    while idx < arg1.length:
        _47 = mem[64]
        mem[mem[64] + 32] = 0x1954524f4e205369676e6564204d6573736167653a0a33320000000000000000
        mem[mem[64] + 56] = sweepMsg
        _48 = mem[64]
        mem[mem[64]] = 56
        mem[64] = mem[64] + 88
        _50 = sha3(mem[_48 + 32 len mem[_48]])
        require idx < mem[96]
        _54 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _56 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        _58 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        mem[_47 + 88] = 0
        mem[64] = _47 + 120
        mem[_47 + 120] = _50
        mem[_47 + 152] = uint8(_54)
        mem[_47 + 184] = _56
        mem[_47 + 216] = _58
        signer = erecover(_50, _54 << 248, _56, _58) 
        mem[_47 + 88] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        mem[0] = address(signer)
        mem[32] = 10
        if 1 == bool(stor10[address(signer)]):
            revert with 0, '_froms must not be blocked'
        if not address(signer):
            idx = idx + 1
            s = s
            continue 
        mem[0] = address(signer)
        mem[32] = 8
        stor8[address(signer)] = 1
        mem[_47 + 124] = address(signer)
        require ext_code.size(sub_f1c2e04dAddress)
        staticcall sub_f1c2e04dAddress.0x27e235e3 with:
                gas gas_remaining wei
               args address(signer)
        mem[_47 + 120] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            idx = idx + 1
            s = s
            continue 
        require ext_code.size(sub_f1c2e04dAddress)
        call sub_f1c2e04dAddress.0xe30443bc with:
             gas gas_remaining wei
            args address(signer), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_47 + 120] = 0x23de665100000000000000000000000000000000000000000000000000000000
        mem[_47 + 124] = address(signer)
        mem[_47 + 156] = arg4
        mem[_47 + 188] = ext_call.return_data[0]
        require ext_code.size(sub_ddcb59f3Address)
        call sub_ddcb59f3Address.0x23de6651 with:
             gas gas_remaining wei
            args address(signer), address(arg4), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        s = ext_call.return_data[0] + s
        continue 
    if s:
        require ext_code.size(sub_f1c2e04dAddress)
        call sub_f1c2e04dAddress.0x21e5383a with:
             gas gas_remaining wei
            args address(arg4), s
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
