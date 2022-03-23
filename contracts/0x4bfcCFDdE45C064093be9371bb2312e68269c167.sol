contract main {




// =====================  Runtime code  =====================


const pairCodeHash = sha3(code.data[4671 len 15507])


address feeToAddress;
address devFeeToAddress;
uint32 sub_113c6f20; offset 160
uint32 sub_79958d56; offset 192
uint32 sub_a37c39e7; offset 224
address barFeeToAddress;
address feeToSetterAddress;
uint32 feeFactor; offset 160
uint32 refFactor; offset 192
address migratorAddress;
address kingAddress;
uint256 sub_7803507a;
uint8 stor7;
address sub_31d72a2aAddress; offset 8
mapping of address pair;
array of address allPairs;

function feeTo() payable {
    return feeToAddress
}

function feeToSetter() payable {
    return feeToSetterAddress
}

function barFeeTo() payable {
    return barFeeToAddress
}

function sub_113c6f20(?) payable {
    return sub_113c6f20
}

function allPairs(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < allPairs.length
    return allPairs[arg1]
}

function sub_31d72a2a(?) payable {
    return sub_31d72a2aAddress
}

function refFactor() payable {
    return refFactor
}

function allPairsLength() payable {
    return allPairs.length
}

function sub_7803507a(?) payable {
    return sub_7803507a
}

function sub_79958d56(?) payable {
    return sub_79958d56
}

function migrator() payable {
    return migratorAddress
}

function devFeeTo() payable {
    return devFeeToAddress
}

function sub_a37c39e7(?) payable {
    return sub_a37c39e7
}

function sub_b53eea2c(?) payable {
    return bool(stor7)
}

function king() payable {
    return kingAddress
}

function getPair(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return pair[arg1][arg2]
}

function feeFactor() payable {
    return feeFactor
}

function _fallback() payable {
    revert
}

function sub_5aaac380(?) payable {
    require calldata.size - 4 >= 32
    if feeToSetterAddress != msg.sender:
        revert with 0, 32, 19, code.data[20178 len 32]
    refFactor = arg1
}

function sub_9daffe80(?) payable {
    require calldata.size - 4 >= 32
    if feeToSetterAddress != msg.sender:
        revert with 0, 32, 19, code.data[20178 len 32]
    feeFactor = arg1
}

function sub_8fc4c29a(?) payable {
    require calldata.size - 4 >= 32
    if feeToSetterAddress != msg.sender:
        revert with 0, 32, 19, code.data[20178 len 32]
    kingAddress = arg1
}

function sub_359a8ba7(?) payable {
    require calldata.size - 4 >= 32
    if feeToSetterAddress != msg.sender:
        revert with 0, 32, 19, code.data[20178 len 32]
    stor7 = uint8(arg1)
}

function sub_7b1ea0f8(?) payable {
    require calldata.size - 4 >= 32
    if feeToSetterAddress != msg.sender:
        revert with 0, 32, 19, code.data[20178 len 32]
    sub_113c6f20 = arg1
}

function sub_d389d462(?) payable {
    require calldata.size - 4 >= 32
    if feeToSetterAddress != msg.sender:
        revert with 0, 32, 19, code.data[20178 len 32]
    sub_a37c39e7 = arg1
}

function sub_d6f9188d(?) payable {
    require calldata.size - 4 >= 32
    if feeToSetterAddress != msg.sender:
        revert with 0, 32, 19, code.data[20178 len 32]
    sub_7803507a = arg1
}

function sub_d746006d(?) payable {
    require calldata.size - 4 >= 32
    if feeToSetterAddress != msg.sender:
        revert with 0, 32, 19, code.data[20178 len 32]
    sub_79958d56 = arg1
}

function sub_3dad8acb(?) payable {
    require calldata.size - 4 >= 32
    if feeToSetterAddress != msg.sender:
        revert with 0, 32, 19, code.data[20178 len 32]
    barFeeToAddress = arg1
}

function sub_294467fe(?) payable {
    require calldata.size - 4 >= 32
    if feeToSetterAddress != msg.sender:
        revert with 0, 32, 19, code.data[20178 len 32]
    sub_31d72a2aAddress = arg1
}

function setFeeTo(address arg1) payable {
    require calldata.size - 4 >= 32
    if feeToSetterAddress != msg.sender:
        revert with 0, 32, 19, code.data[20178 len 32]
    feeToAddress = arg1
}

function setDevFeeTo(address arg1) payable {
    require calldata.size - 4 >= 32
    if feeToSetterAddress != msg.sender:
        revert with 0, 32, 19, code.data[20178 len 32]
    devFeeToAddress = arg1
}

function setMigrator(address arg1) payable {
    require calldata.size - 4 >= 32
    if feeToSetterAddress != msg.sender:
        revert with 0, 32, 19, code.data[20178 len 32]
    migratorAddress = arg1
}

function setFeeToSetter(address arg1) payable {
    require calldata.size - 4 >= 32
    if feeToSetterAddress != msg.sender:
        revert with 0, 32, 19, code.data[20178 len 32]
    feeToSetterAddress = arg1
}

function sub_0642929e(?) payable {
    if not kingAddress:
        return feeFactor
    if not sub_7803507a:
        return feeFactor
    require ext_code.size(kingAddress)
    staticcall kingAddress.0x70a08231 with:
            gas gas_remaining wei
           args tx.origin
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_7803507a <= 0:
        revert with 0, 'ds-math-div-overflow'
    require sub_7803507a
    if ext_call.return_data[0] / sub_7803507a >= 16:
        if not feeFactor:
            if feeFactor > 100000:
                revert with 0, 'Kingswap: INVALID_FEE'
            return feeFactor
        require feeFactor
        if 80 * feeFactor / feeFactor != 80:
            revert with 0, 'ds-math-mul-overflow'
        if uint32(feeFactor - (80 * feeFactor / 100)) > 100000:
            revert with 0, 'Kingswap: INVALID_FEE'
        return uint32(feeFactor - (80 * feeFactor / 100))
    if 5 * ext_call.return_data[0] / sub_7803507a / 5 != ext_call.return_data[0] / sub_7803507a:
        revert with 0, 'ds-math-mul-overflow'
    if not feeFactor:
        if feeFactor > 100000:
            revert with 0, 'Kingswap: INVALID_FEE'
        return feeFactor
    require feeFactor
    if 5 * ext_call.return_data[0] / sub_7803507a * feeFactor / feeFactor != 5 * ext_call.return_data[0] / sub_7803507a:
        revert with 0, 'ds-math-mul-overflow'
    if uint32(feeFactor - (5 * ext_call.return_data[0] / sub_7803507a * feeFactor / 100)) > 100000:
        revert with 0, 'Kingswap: INVALID_FEE'
    return uint32(feeFactor - (5 * ext_call.return_data[0] / sub_7803507a * feeFactor / 100))
}

function createPair(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 == arg2:
        revert with 0, 'Kingswap: IDENTICAL_ADDRESSES'
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'Kingswap: ZERO_ADDRESS'
        if pair[address(arg1)][address(arg2)]:
            revert with 0, 'Kingswap: PAIR_EXISTS'
        create2 contract with 0 wei
                        salt: sha3(arg1, arg2)
                        code: code.data[4671 len 15507]
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
            revert with 0, 'Kingswap: ZERO_ADDRESS'
        if pair[address(arg2)][address(arg1)]:
            revert with 0, 'Kingswap: PAIR_EXISTS'
        create2 contract with 0 wei
                        salt: sha3(arg2, arg1)
                        code: code.data[4671 len 15507]
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
