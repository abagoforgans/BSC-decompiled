contract main {




// =====================  Runtime code  =====================


#
#  - rebase()
#
address owner;
array of struct transactions;
address dittoAddress;
address marketOracleAddress;
uint256 deviationThreshold;
uint256 rebaseCooldown;
uint256 lastRebaseTimestampSec;
uint256 epoch;
uint8 stor8;

function rebaseLocked() payable {
    return bool(stor8)
}

function lastRebaseTimestampSec() payable {
    return lastRebaseTimestampSec
}

function rebaseCooldown() payable {
    return rebaseCooldown
}

function marketOracle() payable {
    return marketOracleAddress
}

function owner() payable {
    return owner
}

function epoch() payable {
    return epoch
}

function transactionsSize() payable {
    return transactions.length
}

function transactions(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < transactions.length
    mem[128] = uint256(stor[sha3((2 * arg1) + ('name', 'transactions', 1) + 1)].field_0)
    idx = 128
    s = 0
    while stor[(2 * arg1) + ('name', 'transactions', 1) + 1].length + 96 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((2 * arg1) + ('name', 'transactions', 1) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return bool(uint8(transactions[arg1].field_0)), 
           address(transactions[arg1].field_0),
           Array(len=stor[(2 * arg1) + ('name', 'transactions', 1) + 1].length, data=mem[128 len stor[(2 * arg1) + ('name', 'transactions', 1) + 1].length])
}

function deviationThreshold() payable {
    return deviationThreshold
}

function ditto() payable {
    return dittoAddress
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function setRebaseLocked(bool arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor8 = uint8(arg1)
}

function setMarketOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    marketOracleAddress = arg1
}

function cooldownExpiryTimestamp() payable {
    require rebaseCooldown + lastRebaseTimestampSec >= lastRebaseTimestampSec
    return (rebaseCooldown + lastRebaseTimestampSec)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function canRebase() payable {
    if stor8:
        if owner != msg.sender:
            return (msg.sender == owner)
    require rebaseCooldown + lastRebaseTimestampSec >= lastRebaseTimestampSec
    return (rebaseCooldown + lastRebaseTimestampSec < block.timestamp)
}

function renounceOwnership() payable {
    require msg.sender == owner
    if stor8:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x7443616e6e6f742072656e6f756e6365206f776e65727368697020696620726562617365206973206c6f636b65,
                    mem[209 len 19]
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function setTransactionEnabled(uint256 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    if arg1 >= transactions.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe696e646578206d75737420626520696e2072616e6765206f662073746f726564207478206c6973,
                    mem[204 len 24]
    uint8(transactions[arg1].field_0) = uint8(arg2)
}

function addTransaction(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require msg.sender == owner
    transactions.length++
    uint8(transactions[transactions.length].field_0) = 1
    address(transactions[transactions.length].field_8) = arg1
    Mask(88, 0, transactions[transactions.length].field_168) = 0
    uint256(stor[sha3((2 * transactions.length) + ('name', 'transactions', 1) + 1)][].field_0) = Array(len=arg2.length, data=arg2[all])
}

function removeTransaction(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if arg1 >= transactions.length:
        revert with 0, 'index out of bounds'
    if arg1 >= transactions.length - 1:
        transactions.length--
        if transactions.length > transactions.length - 1:
            mem[0] = 1
            idx = 2 * transactions.length - 1
            while sha3(1) + (2 * transactions.length) > idx + sha3(mem[0]):
                Mask(168, 0, stor[idx + sha3(mem[0])]) = 0
                uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                if 31 < stor[idx + sha3(mem[0]) + 1].length:
                    mem[0] = idx + sha3(mem[0]) + 1
                    s = sha3(idx + sha3(mem[0]) + 1)
                    while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                idx = idx + 2
                continue 
    else:
        require transactions.length - 1 < transactions.length
        require arg1 < transactions.length
        uint8(transactions[arg1].field_0) = uint8(bool(uint8(transactions[transactions.length - 1].field_0)))
        uint8(transactions[arg1].field_0) = uint8(bool(uint8(transactions[transactions.length - 1].field_0)))
        Mask(248, 0, transactions[arg1].field_8) = address(transactions[transactions.length - 1].field_8)
        Mask(88, 0, transactions[arg1].field_168) = Mask(88, 168, bool(uint8(transactions[transactions.length - 1].field_0))) >> 168
        if 31 >= stor[(2 * transactions.length - 1) + ('name', 'transactions', 1) + 1].length:
            uint256(transactions[arg1].field_256) = uint256(transactions[transactions.length - 1].field_256)
            idx = 0
            while stor[('name', 'transactions', 1) + (2 * arg1) + 1].length + 31 / 32 > idx:
                uint256(stor[idx + sha3(('name', 'transactions', 1) + (2 * arg1) + 1)].field_0) = 0
                idx = idx + 1
                continue 
            transactions.length--
            if transactions.length > transactions.length - 1:
                mem[0] = 1
                idx = 2 * transactions.length - 1
                while sha3(1) + (2 * transactions.length) > idx + sha3(mem[0]):
                    Mask(168, 0, stor[idx + sha3(mem[0])]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                    if 31 < stor[idx + sha3(mem[0]) + 1].length:
                        mem[0] = idx + sha3(mem[0]) + 1
                        s = sha3(idx + sha3(mem[0]) + 1)
                        while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                    idx = idx + 2
                    continue 
        else:
            uint256(transactions[arg1].field_256) = Mask(255, 1, uint256(transactions[transactions.length - 1].field_256) and (256 * not bool(transactions[transactions.length - 1].field_256)) - 1) + 1
            if not Mask(255, 1, uint256(transactions[transactions.length - 1].field_256) and (256 * not bool(transactions[transactions.length - 1].field_256)) - 1):
                idx = 0
                while stor[('name', 'transactions', 1) + (2 * arg1) + 1].length + 31 / 32 > idx:
                    uint256(stor[idx + sha3(('name', 'transactions', 1) + (2 * arg1) + 1)].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while stor[(2 * transactions.length - 1) + ('name', 'transactions', 1) + 1].length + 31 / 32 > idx:
                    uint256(stor[s + sha3(('name', 'transactions', 1) + (2 * arg1) + 1)].field_0) = uint256(stor[idx + sha3((2 * transactions.length - 1) + ('name', 'transactions', 1) + 1)].field_0)
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor[(2 * transactions.length - 1) + ('name', 'transactions', 1) + 1].length + 31 / 32
                while stor[('name', 'transactions', 1) + (2 * arg1) + 1].length + 31 / 32 > idx:
                    uint256(stor[idx + sha3(('name', 'transactions', 1) + (2 * arg1) + 1)].field_0) = 0
                    idx = idx + 1
                    continue 
            transactions.length--
            if transactions.length > transactions.length - 1:
                mem[0] = 1
                idx = 2 * transactions.length - 1
                while sha3(1) + (2 * transactions.length) > idx + sha3(mem[0]):
                    Mask(168, 0, stor[idx + sha3(mem[0])]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                    if 31 < stor[idx + sha3(mem[0]) + 1].length:
                        mem[0] = idx + sha3(mem[0]) + 1
                        s = sha3(idx + sha3(mem[0]) + 1)
                        while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                    idx = idx + 2
                    continue 
}

function getRebaseValues() payable {
    require ext_code.size(marketOracleAddress)
    staticcall marketOracleAddress.getData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 10^18 * deviationThreshold / 10^18 == deviationThreshold
    if ext_call.return_data[0] > 1000000 * 10^18:
        if 2777775 * 10^14 * 24 * 3600 < 10^18 * deviationThreshold / 10^18:
            return 1000000 * 10^18, 10^18, 0
        require ext_code.size(dittoAddress)
        staticcall dittoAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        if 2777775 * 10^14 * 24 * 3600 * ext_call.return_data[0] == 0x8000000000000000000000000000000000000000000000000000000000000000:
            require Mask(1, 255, ext_call.return_data[0]) != 0
        require 2777775 * 10^14 * 24 * 3600 * ext_call.return_data[0] / 2777775 * 10^14 * 24 * 3600 == ext_call.return_data[0]
        if 2777775 * 10^14 * 24 * 3600 * ext_call.return_data[0] / 10^18 >= 0:
            if 2777775 * 10^14 * 24 * 3600 * ext_call.return_data[0] / 10^18 / 5 <= 0:
                return 1000000 * 10^18, 10^18, 2777775 * 10^14 * 24 * 3600 * ext_call.return_data[0] / 10^18 / 5
            require ext_code.size(dittoAddress)
            staticcall dittoAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (2777775 * 10^14 * 24 * 3600 * ext_call.return_data[0] / 10^18 / 5) + ext_call.return_data[0] >= ext_call.return_data[0]
            if (2777775 * 10^14 * 24 * 3600 * ext_call.return_data[0] / 10^18 / 5) + ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
                return 1000000 * 10^18, 10^18, 2777775 * 10^14 * 24 * 3600 * ext_call.return_data[0] / 10^18 / 5
        else:
            if 2777775 * 10^14 * 24 * 3600 * ext_call.return_data[0] / 10^18 / 2 <= 0:
                return 1000000 * 10^18, 10^18, 2777775 * 10^14 * 24 * 3600 * ext_call.return_data[0] / 10^18 / 2
            require ext_code.size(dittoAddress)
            staticcall dittoAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (2777775 * 10^14 * 24 * 3600 * ext_call.return_data[0] / 10^18 / 2) + ext_call.return_data[0] >= ext_call.return_data[0]
            if (2777775 * 10^14 * 24 * 3600 * ext_call.return_data[0] / 10^18 / 2) + ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
                return 1000000 * 10^18, 10^18, 2777775 * 10^14 * 24 * 3600 * ext_call.return_data[0] / 10^18 / 2
        require ext_code.size(dittoAddress)
        staticcall dittoAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
        require -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        return 1000000 * 10^18, 10^18, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
    if ext_call.return_data[0] < 10^18:
        require ext_call.return_data[0] <= 10^18
        if -ext_call.return_data[0] + 10^18 < 10^18 * deviationThreshold / 10^18:
            return ext_call.return_data[0], 10^18, 0
    else:
        require 10^18 <= ext_call.return_data[0]
        if ext_call.return_data[0] - 10^18 < 10^18 * deviationThreshold / 10^18:
            return ext_call.return_data[0], 10^18, 0
        if ext_call.return_data[0] < 10^18:
            require ext_call.return_data[0] <= 10^18
            if -ext_call.return_data[0] + 10^18 < 10^18 * deviationThreshold / 10^18:
                return ext_call.return_data[0], 10^18, 0
    require ext_call.return_data[0] <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    require ext_call.return_data[0] - 10^18 <= ext_call.return_data[0]
    require ext_code.size(dittoAddress)
    staticcall dittoAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    if (-1 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) == 0x8000000000000000000000000000000000000000000000000000000000000000:
        require Mask(1, 255, ext_call.return_data[0] - 10^18) != Mask(1, 255, ext_call.return_data[0])
    if ext_call.return_data[0] - 10^18:
        require ext_call.return_data[0] - 10^18
        require (-1 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] - 10^18 == ext_call.return_data[0]
    if (-1 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 >= 0:
        if (-1 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / 5 <= 0:
            return ext_call.return_data[0], 
                   10^18,
                   (-1 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / 5
        require ext_code.size(dittoAddress)
        staticcall dittoAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ((-1 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / 5) + ext_call.return_data[0] >= ext_call.return_data[0]
        if ((-1 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / 5) + ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
            return ext_call.return_data[0], 
                   10^18,
                   (-1 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / 5
    else:
        if (-1 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / 2 <= 0:
            return ext_call.return_data[0], 
                   10^18,
                   (-1 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / 2
        require ext_code.size(dittoAddress)
        staticcall dittoAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ((-1 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / 2) + ext_call.return_data[0] >= ext_call.return_data[0]
        if ((-1 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / 2) + ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
            return ext_call.return_data[0], 
                   10^18,
                   (-1 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / 2
    require ext_code.size(dittoAddress)
    staticcall dittoAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
    require -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    return ext_call.return_data[0], 10^18, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
}



}
