contract main {




// =====================  Runtime code  =====================


mapping of address pairs;
address collectorAddress;
uint256 fee;
mapping of uint8 stor3;

function pairs(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return pairs[arg1][arg2]
}

function collector() payable {
    return collectorAddress
}

function isSwapper(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[address(arg1)])
}

function fee() payable {
    return fee
}

function getPair(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return pairs[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function addSwapper(address arg1) payable {
    require calldata.size - 4 >= 32
    if collectorAddress != msg.sender:
        revert with 0, 'youre not the collector'
    stor3[address(arg1)] = 1
}

function changeFee(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if collectorAddress != msg.sender:
        revert with 0, 'youre not the collector'
    fee = arg1
    collectorAddress = arg2
}

function createContract(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 == arg2:
        revert with 0, 'same currencies'
    if pairs[address(arg1)][address(arg2)]:
        revert with 0, 'contract exists'
    create contract with 0 wei
                    code: code.data[1327 len 23106], address(arg1), address(arg2), collectorAddress, fee
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    pairs[address(arg1)][address(arg2)] = address(create.new_address)
    emit NewPairCreated(address(arg1), address(arg2), address(create.new_address));
}



}
