contract main {




// =====================  Runtime code  =====================


const INIT_CODE_PAIR_HASH = sha3(code.data[2557 len 15008], mem[30208 len 13])


address feeToAddress;
address feeToSetterAddress;
address feeControllerAddress;
address sub_cdb24b86Address;
address wbnbAddress;
address routerAddress;
mapping of uint8 stor6;
mapping of address pair;
array of address allPairs;
uint256 multiplier;

function feeTo() payable {
    return feeToAddress
}

function feeToSetter() payable {
    return feeToSetterAddress
}

function multiplier() payable {
    return multiplier
}

function allPairs(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < allPairs.length
    return allPairs[arg1]
}

function allPairsLength() payable {
    return allPairs.length
}

function feeController() payable {
    return feeControllerAddress
}

function wbnb() payable {
    return wbnbAddress
}

function whiteListedAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor6[arg1])
}

function sub_cdb24b86(?) payable {
    return sub_cdb24b86Address
}

function getPair(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return pair[arg1][arg2]
}

function router() payable {
    return routerAddress
}

function _fallback() payable {
    revert
}

function setFeeTo(address arg1) payable {
    require calldata.size - 4 >= 32
    if feeToSetterAddress != msg.sender:
        revert with 0, 'Unifi: FORBIDDEN'
    feeToAddress = arg1
}

function sub_02f9de5e(?) payable {
    require calldata.size - 4 >= 64
    if sub_cdb24b86Address != msg.sender:
        revert with 0, 'Unifi: FORBIDDEN'
    stor6[address(arg1)] = uint8(arg2)
}

function setFeeToSetter(address arg1) payable {
    require calldata.size - 4 >= 32
    if feeToSetterAddress != msg.sender:
        revert with 0, 'Unifi: FORBIDDEN'
    feeToSetterAddress = arg1
}

function setFeeControler(address arg1) payable {
    require calldata.size - 4 >= 32
    if sub_cdb24b86Address != msg.sender:
        revert with 0, 'Unifi: FORBIDDEN'
    feeControllerAddress = arg1
}

function setFeeControlerSetter(address arg1) payable {
    require calldata.size - 4 >= 32
    if sub_cdb24b86Address != msg.sender:
        revert with 0, 'Unifi: FORBIDDEN'
    sub_cdb24b86Address = arg1
}

function createPair(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 == arg2:
        revert with 0, 'Unifi: IDENTICAL_ADDRESSES'
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'Unifi: ZERO_ADDRESS'
        if pair[address(arg1)][address(arg2)]:
            revert with 0, 'Unifi: PAIR_EXISTS'
        create2 contract with 0 wei
                        salt: sha3(arg1, arg2)
                        code: code.data[2557 len 15021]
        require ext_code.size(address(create2.new_address))
        call address(create2.new_address).initialize(address arg1, address arg2, address arg3, uint256 arg4) with:
             gas gas_remaining wei
            args address(arg1), address(arg2), wbnbAddress, multiplier
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        pair[address(arg1)][address(arg2)] = address(create2.new_address)
        pair[address(arg2)][address(arg1)] = address(create2.new_address)
        allPairs.length++
        allPairs[allPairs.length] = address(create2.new_address)
        emit PairCreated(address(create2.new_address), allPairs.length, arg1, arg2);
    else:
        if not arg2:
            revert with 0, 'Unifi: ZERO_ADDRESS'
        if pair[address(arg2)][address(arg1)]:
            revert with 0, 'Unifi: PAIR_EXISTS'
        create2 contract with 0 wei
                        salt: sha3(arg2, arg1)
                        code: code.data[2557 len 15021]
        require ext_code.size(address(create2.new_address))
        call address(create2.new_address).initialize(address arg1, address arg2, address arg3, uint256 arg4) with:
             gas gas_remaining wei
            args address(arg2), address(arg1), wbnbAddress, multiplier
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
