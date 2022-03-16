contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
array of uint256 stor1;
address owner;
array of struct transactions;
address policyAddress;

function policy() {
    return policyAddress
}

function owner() {
    return owner
}

function transactionsSize() {
    return transactions.length
}

function transactions(uint256 arg1) {
    require arg1 < transactions.length
    mem[128] = uint256(stor[sha3((2 * arg1) + ('name', 'transactions', 102) + 1)].field_0)
    idx = 128
    s = 0
    while stor[(2 * arg1) + ('name', 'transactions', 102) + 1].length + 96 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((2 * arg1) + ('name', 'transactions', 102) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return bool(uint8(transactions[arg1].field_0)), 
           address(transactions[arg1].field_0),
           Array(len=stor[(2 * arg1) + ('name', 'transactions', 102) + 1].length, data=mem[128 len stor[(2 * arg1) + ('name', 'transactions', 102) + 1].length])
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setTransactionEnabled(uint256 arg1, bool arg2) {
    require msg.sender == owner
    if arg1 >= transactions.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'index must be in range of stored tx list'
    uint8(transactions[arg1].field_0) = uint8(arg2)
}

function addTransaction(address arg1, bytes arg2) {
    require msg.sender == owner
    transactions.length++
    uint8(transactions[transactions.length].field_0) = 1
    address(transactions[transactions.length].field_8) = arg1
    uint256(stor[sha3((2 * transactions.length) + ('name', 'transactions', 102) + 1)][].field_0) = Array(len=arg2.length, data=arg2[all])
}

function initialize(address arg1) {
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
    Mask(248, 0, stor0.field_8) = 1
    uint8(stor0.field_0) = 1
    owner = arg1
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
}

function rebase() payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == tx.origin
    mem[96] = 0xaf14052c00000000000000000000000000000000000000000000000000000000
    require ext_code.size(policyAddress)
    call policyAddress.0xaf14052c with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    s = 0
    t = 0
    idx = 0
    while idx < transactions.length:
        mem[0] = 102
        if not uint8(transactions[idx].field_0):
            s = s
            t = (2 * idx) + sha3(102)
            idx = idx + 1
            continue 
        _46 = mem[64]
        mem[64] = mem[64] + ceil32(stor[(2 * idx) + ('name', 'transactions', 102) + 1].length) + 32
        mem[_46] = stor[(2 * idx) + ('name', 'transactions', 102) + 1].length
        mem[0] = (2 * idx) + sha3(102) + 1
        mem[_46 + 32] = uint256(stor[sha3((2 * idx) + ('name', 'transactions', 102) + 1)].field_0)
        s = _46 + 32
        t = sha3(mem[0])
        while _46 + stor[(2 * idx) + ('name', 'transactions', 102) + 1].length > s:
            mem[s + 32] = stor1[t]
            s = s + 32
            t = t + 1
            continue 
        call address(transactions[idx].field_8).mem[_46 + 32 len 4] with:
             gas gas_remaining - 34710 wei
            args mem[_46 + 36 len mem[_46] - 4]
        if ext_call.success:
            s = ext_call.success
            t = (2 * idx) + sha3(102)
            idx = idx + 1
            continue 
        _95 = mem[64]
        mem[mem[64]] = idx
        mem[mem[64] + 32] = 64
        mem[mem[64] + 64] = stor[(2 * idx) + ('name', 'transactions', 102) + 1].length
        mem[0] = (2 * idx) + sha3(102) + 1
        mem[mem[64] + 96] = uint256(stor[sha3((2 * idx) + ('name', 'transactions', 102) + 1)].field_0)
        s = mem[64] + 96
        t = sha3(mem[0])
        while _95 + stor[(2 * idx) + ('name', 'transactions', 102) + 1].length + 96 > s + 32:
            mem[s + 32] = stor1[t]
            s = s + 32
            t = t + 1
            continue 
        emit TransactionFailed(address rg1, uint256 rg2, bytes rg3):
                               mem[mem[64] len _95 + stor[(2 * idx) + ('name', 'transactions', 102) + 1].length + (s + -_95 + -stor[(2 * idx) + ('name', 'transactions', 102) + 1].length - 64 % 32) + -mem[64] + 96],
                               address(transactions[idx].field_8),
        revert with 0, 'Transaction Failed'
}

function removeTransaction(uint256 arg1) {
    require msg.sender == owner
    if arg1 >= transactions.length:
        revert with 0, 'index out of bounds'
    if arg1 >= transactions.length - 1:
        transactions.length--
        if transactions.length > transactions.length - 1:
            mem[0] = 102
            idx = 2 * transactions.length - 1
            while sha3(102) + (2 * transactions.length) > idx + sha3(mem[0]):
                uint8(stor[idx + sha3(mem[0])].field_0) = 0
                address(stor[idx + sha3(mem[0])].field_8) = 0
                uint256(stor[idx + sha3(mem[0]) + 1].field_0) = 0
                if 31 < stor[idx + sha3(mem[0]) + 1].length:
                    mem[0] = idx + sha3(mem[0]) + 1
                    s = sha3(idx + sha3(mem[0]) + 1)
                    while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
                idx = idx + 2
                continue 
    else:
        require transactions.length - 1 < transactions.length
        require arg1 < transactions.length
        uint8(transactions[arg1].field_0) = uint8(bool(uint8(transactions[transactions.length - 1].field_0)))
        Mask(248, 0, transactions[arg1].field_8) = address(transactions[transactions.length - 1].field_8)
        if 31 >= stor[(2 * transactions.length - 1) + ('name', 'transactions', 102) + 1].length:
            uint256(transactions[arg1].field_256) = uint256(transactions[transactions.length - 1].field_256)
            idx = 0
            while stor[(2 * arg1) + ('name', 'transactions', 102) + 1].length + 31 / 32 > idx:
                uint256(stor[idx + sha3((2 * arg1) + ('name', 'transactions', 102) + 1)].field_0) = 0
                idx = idx + 1
                continue 
            transactions.length--
            if transactions.length > transactions.length - 1:
                mem[0] = 102
                idx = 2 * transactions.length - 1
                while sha3(102) + (2 * transactions.length) > idx + sha3(mem[0]):
                    uint8(stor[idx + sha3(mem[0])].field_0) = 0
                    address(stor[idx + sha3(mem[0])].field_8) = 0
                    uint256(stor[idx + sha3(mem[0]) + 1].field_0) = 0
                    if 31 < stor[idx + sha3(mem[0]) + 1].length:
                        mem[0] = idx + sha3(mem[0]) + 1
                        s = sha3(idx + sha3(mem[0]) + 1)
                        while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                    idx = idx + 2
                    continue 
        else:
            uint256(transactions[arg1].field_256) = Mask(255, 1, (256 * not bool(transactions[transactions.length - 1].field_256)) - 1 and uint256(transactions[transactions.length - 1].field_256)) + 1
            if not Mask(255, 1, (256 * not bool(transactions[transactions.length - 1].field_256)) - 1 and uint256(transactions[transactions.length - 1].field_256)):
                idx = 0
                while stor[(2 * arg1) + ('name', 'transactions', 102) + 1].length + 31 / 32 > idx:
                    uint256(stor[idx + sha3((2 * arg1) + ('name', 'transactions', 102) + 1)].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while stor[(2 * transactions.length - 1) + ('name', 'transactions', 102) + 1].length + 31 / 32 > idx:
                    uint256(stor[s + sha3((2 * arg1) + ('name', 'transactions', 102) + 1)].field_0) = uint256(stor[idx + sha3((2 * transactions.length - 1) + ('name', 'transactions', 102) + 1)].field_0)
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor[(2 * transactions.length - 1) + ('name', 'transactions', 102) + 1].length + 31 / 32
                while stor[(2 * arg1) + ('name', 'transactions', 102) + 1].length + 31 / 32 > idx:
                    uint256(stor[idx + sha3((2 * arg1) + ('name', 'transactions', 102) + 1)].field_0) = 0
                    idx = idx + 1
                    continue 
            transactions.length--
            if transactions.length > transactions.length - 1:
                mem[0] = 102
                idx = 2 * transactions.length - 1
                while sha3(102) + (2 * transactions.length) > idx + sha3(mem[0]):
                    uint8(stor[idx + sha3(mem[0])].field_0) = 0
                    address(stor[idx + sha3(mem[0])].field_8) = 0
                    uint256(stor[idx + sha3(mem[0]) + 1].field_0) = 0
                    if 31 < stor[idx + sha3(mem[0]) + 1].length:
                        mem[0] = idx + sha3(mem[0]) + 1
                        s = sha3(idx + sha3(mem[0]) + 1)
                        while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                    idx = idx + 2
                    continue 
}



}
