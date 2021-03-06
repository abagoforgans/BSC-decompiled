contract main {




// =====================  Runtime code  =====================


const pairCodeHash = sha3(code.data[2423 len 12042])


address feeToAddress;
address feeToSetterAddress;
address migratorAddress;
mapping of address pair;
array of address allPairs;

function feeTo() payable {
    return feeToAddress
}

function feeToSetter() payable {
    return feeToSetterAddress
}

function allPairs(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < allPairs.length
    return allPairs[arg1]
}

function allPairsLength() payable {
    return allPairs.length
}

function migrator() payable {
    return migratorAddress
}

function getPair(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return pair[arg1][arg2]
}

function _fallback() payable {
    revert
}

function setFeeTo(address arg1) payable {
    require calldata.size - 4 >= 32
    if feeToSetterAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 34, code.data[14465 len 34], mem[198 len 30]
    feeToAddress = arg1
}

function setMigrator(address arg1) payable {
    require calldata.size - 4 >= 32
    if feeToSetterAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 37, code.data[14624 len 37], mem[201 len 27]
    migratorAddress = arg1
}

function setFeeToSetter(address arg1) payable {
    require calldata.size - 4 >= 32
    if feeToSetterAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 40, code.data[14538 len 40], mem[204 len 24]
    feeToSetterAddress = arg1
}

function createPair(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 46, code.data[14578 len 46], mem[210 len 18]
    if arg1 < arg2:
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 39, code.data[14499 len 39], mem[203 len 25]
        if pair[address(arg1)][address(arg2)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[14661 len 38], mem[202 len 26]
        create2 contract with 0 wei
                        salt: sha3(arg1, arg2)
                        code: code.data[2423 len 12042]
        require ext_code.size(address(create2.new_address))
        call address(create2.new_address).initialize(address rg1, address rg2) with:
             gas gas_remaining wei
            args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        pair[address(arg1)][address(arg2)] = address(create2.new_address)
        pair[address(arg2)][address(arg1)] = address(create2.new_address)
        allPairs.length++
        allPairs[allPairs.length] = address(create2.new_address)
        emit PairCreated(address(create2.new_address), allPairs.length, arg1, arg2);
    else:
        if not arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 39, code.data[14499 len 39], mem[203 len 25]
        if pair[address(arg2)][address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[14661 len 38], mem[202 len 26]
        create2 contract with 0 wei
                        salt: sha3(arg2, arg1)
                        code: code.data[2423 len 12042]
        require ext_code.size(address(create2.new_address))
        call address(create2.new_address).initialize(address rg1, address rg2) with:
             gas gas_remaining wei
            args address(arg2), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        pair[address(arg2)][address(arg1)] = address(create2.new_address)
        pair[address(arg1)][address(arg2)] = address(create2.new_address)
        allPairs.length++
        allPairs[allPairs.length] = address(create2.new_address)
        emit PairCreated(address(create2.new_address), allPairs.length, arg2, arg1);
    return address(create2.new_address)
}



}
