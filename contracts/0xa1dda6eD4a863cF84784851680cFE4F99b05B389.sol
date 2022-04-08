contract main {




// =====================  Runtime code  =====================


const pairCodeHash = sha3(code.data[1762 len 9601])


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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[11406 len 38], mem[202 len 26]
    feeToAddress = arg1
}

function setMigrator(address arg1) payable {
    require calldata.size - 4 >= 32
    if feeToSetterAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 41, code.data[11488 len 41], mem[205 len 23]
    migratorAddress = arg1
}

function setFeeToSetter(address arg1) payable {
    require calldata.size - 4 >= 32
    if feeToSetterAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 44, code.data[11444 len 44], mem[208 len 20]
    feeToSetterAddress = arg1
}

function createPair(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 50, code.data[11571 len 50], mem[214 len 14]
    if arg1 < arg2:
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 43, code.data[11363 len 43], mem[207 len 21]
        if pair[address(arg1)][address(arg2)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 42, code.data[11529 len 42], mem[206 len 22]
        create2 contract with 0 wei
                        salt: sha3(arg1, arg2)
                        code: code.data[1762 len 9601]
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
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 43, code.data[11363 len 43], mem[207 len 21]
        if pair[address(arg2)][address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 42, code.data[11529 len 42], mem[206 len 22]
        create2 contract with 0 wei
                        salt: sha3(arg2, arg1)
                        code: code.data[1762 len 9601]
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
