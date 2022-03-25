contract main {




// =====================  Runtime code  =====================


uint256 lockRequestCount;
address custodianAddress;
mapping of address custodianChangeReqs;
address sub_c00e79b9Address;
mapping of address implChangeReqs;
uint256 totalSupply;
mapping of uint256 balances;
mapping of uint256 allowed;

function totalSupply() payable {
    return totalSupply
}

function balances(address arg1) payable {
    require calldata.size - 4 >= 32
    return balances[arg1]
}

function custodian() payable {
    return custodianAddress
}

function allowed(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowed[arg1][arg2]
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

function setTotalSupply(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_c00e79b9Address != msg.sender:
        revert with 0, 'only BEP20Impl'
    totalSupply = arg1
}

function setBalance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if sub_c00e79b9Address != msg.sender:
        revert with 0, 'only BEP20Impl'
    balances[address(arg1)] = arg2
}

function addBalance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if sub_c00e79b9Address != msg.sender:
        revert with 0, 'only BEP20Impl'
    balances[address(arg1)] += arg2
}

function setAllowance(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if sub_c00e79b9Address != msg.sender:
        revert with 0, 'only BEP20Impl'
    allowed[address(arg1)][address(arg2)] = arg3
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
