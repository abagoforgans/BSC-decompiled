contract main {




// =====================  Runtime code  =====================


uint256 lockRequestCount;
address custodianAddress;
mapping of address custodianChangeReqs;
address sub_c00e79b9Address;
mapping of address implChangeReqs;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;

function name() payable {
    return name[0 len name.length]
}

function decimals() payable {
    return decimals
}

function custodian() payable {
    return custodianAddress
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function implChangeReqs(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return implChangeReqs[arg1]
}

function sub_c00e79b9(?) payable {
    return sub_c00e79b9Address
}

function lockRequestCount() payable {
    return lockRequestCount
}

function custodianChangeReqs(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return custodianChangeReqs[arg1]
}

function _fallback() payable {
    revert
}

function emitTransfer(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if sub_c00e79b9Address != msg.sender:
        revert with 0, 'only BEP20Impl'
    emit Transfer(arg3, arg1, arg2);
}

function emitApproval(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if sub_c00e79b9Address != msg.sender:
        revert with 0, 'only BEP20Impl'
    emit Approval(arg3, arg1, arg2);
}

function totalSupply() payable {
    require ext_code.size(sub_c00e79b9Address)
    staticcall sub_c00e79b9Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getOwner() payable {
    require ext_code.size(sub_c00e79b9Address)
    staticcall sub_c00e79b9Address.0x893d20e8 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_c00e79b9Address)
    staticcall sub_c00e79b9Address.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_c00e79b9Address)
    staticcall sub_c00e79b9Address.0xdd62ed3e with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_c00e79b9Address)
    call sub_c00e79b9Address.approveWithSender(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_c00e79b9Address)
    call sub_c00e79b9Address.transferWithSender(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function decreaseApproval(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_c00e79b9Address)
    call sub_c00e79b9Address.decreaseApprovalWithSender(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function increaseApproval(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_c00e79b9Address)
    call sub_c00e79b9Address.increaseApprovalWithSender(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(sub_c00e79b9Address)
    call sub_c00e79b9Address.transferFromWithSender(address rg1, address rg2, address rg3, uint256 rg4) with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function confirmImplChange(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if custodianAddress != msg.sender:
        revert with 0, 'only custodian'
    if not implChangeReqs[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x6072656a65637420e280986e756c6ce2809920726573756c74732066726f6d20746865206d6170206c6f6f6b75,
                    mem[209 len 19]
    sub_c00e79b9Address = implChangeReqs[arg1]
    implChangeReqs[arg1] = 0
    emit ImplChangeConfirmed(arg1, sub_c00e79b9Address);
}

function confirmCustodianChange(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if custodianAddress != msg.sender:
        revert with 0, 'only custodian'
    if not custodianChangeReqs[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x6072656a65637420e280986e756c6ce2809920726573756c74732066726f6d20746865206d6170206c6f6f6b75,
                    mem[209 len 19]
    custodianAddress = custodianChangeReqs[arg1]
    custodianChangeReqs[arg1] = 0
    emit CustodianChangeConfirmed(arg1, custodianAddress);
}

function requestImplChange(address arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6e6e6f206e756c6c2076616c756520666f7220605f70726f706f736564496d706c,
                    mem[197 len 31]
    lockRequestCount++
    implChangeReqs[block.hash(block.number - 1)][Mask(160, 96, this.address) >> 96][stor0 + 1] = arg1
    emit ImplChangeRequested(sha3(block.hash(block.number - 1), Mask(160, 96, this.address) >> 96, lockRequestCount + 1), msg.sender, arg1);
    return sha3(block.hash(block.number - 1), Mask(160, 96, this.address) >> 96, lockRequestCount + 1)
}

function requestCustodianChange(address arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0xfe6e6f206e756c6c2076616c756520666f72205f70726f706f736564437573746f646961,
                    mem[200 len 28]
    lockRequestCount++
    custodianChangeReqs[block.hash(block.number - 1)][Mask(160, 96, this.address) >> 96][stor0 + 1] = arg1
    emit CustodianChangeRequested(sha3(block.hash(block.number - 1), Mask(160, 96, this.address) >> 96, lockRequestCount + 1), msg.sender, arg1);
    return sha3(block.hash(block.number - 1), Mask(160, 96, this.address) >> 96, lockRequestCount + 1)
}



}
