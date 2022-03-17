contract main {




// =====================  Runtime code  =====================


uint256 version;
address DGASAddress;
address CONFIGAddress;
address owner;
mapping of address pair;
mapping of uint8 stor5;
array of address allPairs;
array of address playerPairs;
mapping of uint8 stor8;
uint256 contractCodeHash;

function allPairs(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < allPairs.length
    return allPairs[arg1]
}

function version() payable {
    return version
}

function allPairsLength() payable {
    return allPairs.length
}

function DGAS() payable {
    return DGASAddress
}

function contractCodeHash() payable {
    return contractCodeHash
}

function owner() payable {
    return owner
}

function playerPairs(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < uint256(playerPairs[arg1])
    return address(playerPairs[arg1][arg2])
}

function CONFIG() payable {
    return CONFIGAddress
}

function isPair(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function getPair(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return pair[arg1][arg2]
}

function _fallback() payable {
    revert
}

function getPlayerPairCount(address arg1) payable {
    require calldata.size - 4 >= 32
    if uint256(playerPairs[address(arg1)]):
        return uint256(playerPairs[address(arg1)])
    else:
        return 0
}

function addPlayerPair(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(CONFIGAddress)
    staticcall CONFIGAddress.platform() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'DEMAX FACTORY: PERMISSION'
    if not stor8[address(arg1)][address(arg2)]:
        stor8[address(arg1)][address(arg2)] = 1
        uint256(playerPairs[address(arg1)])++
        address(playerPairs[address(arg1)][uint256(playerPairs[address(arg1)])]) = arg2
    return 1
}

function updateConfig(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'DEMAX FACTORY: PERMISSION'
    CONFIGAddress = arg1
    idx = 0
    while idx < allPairs.length:
        require ext_code.size(allPairs[idx])
        staticcall allPairs[idx].token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < allPairs.length
        mem[0] = 6
        require ext_code.size(allPairs[idx])
        staticcall allPairs[idx].token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = 0xf8c8765e00000000000000000000000000000000000000000000000000000000
        mem[100] = address(ext_call.return_data[0])
        mem[132] = address(ext_call.return_data[0])
        mem[164] = arg1
        mem[196] = DGASAddress
        require ext_code.size(allPairs[idx])
        call allPairs[idx].initialize(address rg1, address rg2, address rg3, address rg4) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), address(arg1), DGASAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function createPair(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(CONFIGAddress)
    staticcall CONFIGAddress.platform() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'DEMAX FACTORY: PERMISSION'
    if arg1 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 34, code.data[13953 len 34], mem[198 len 30]
    require ext_code.size(CONFIGAddress)
    staticcall CONFIGAddress.checkToken(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'DEMAX FACTORY: NOT LIST'
    require ext_code.size(CONFIGAddress)
    staticcall CONFIGAddress.checkToken(address rg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'DEMAX FACTORY: NOT LIST'
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'DEMAX FACTORY: ZERO_ADDRESS'
        if pair[address(arg1)][address(arg2)]:
            revert with 0, 'DEMAX FACTORY: PAIR_EXISTS'
        if not contractCodeHash:
            contractCodeHash = sha3(code.data[3273 len 10680])
        create2 contract with 0 wei
                        salt: sha3(arg1, arg2)
                        code: code.data[3273 len 10680]
        stor5[address(create2.new_address)] = 1
        require ext_code.size(address(create2.new_address))
        call address(create2.new_address).initialize(address rg1, address rg2, address rg3, address rg4) with:
             gas gas_remaining wei
            args address(arg1), address(arg2), CONFIGAddress, DGASAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        pair[address(arg1)][address(arg2)] = address(create2.new_address)
        pair[address(arg2)][address(arg1)] = address(create2.new_address)
        allPairs.length++
        allPairs[allPairs.length] = address(create2.new_address)
        emit PairCreated(address(create2.new_address), allPairs.length, arg1, arg2);
    else:
        if not arg2:
            revert with 0, 'DEMAX FACTORY: ZERO_ADDRESS'
        if pair[address(arg2)][address(arg1)]:
            revert with 0, 'DEMAX FACTORY: PAIR_EXISTS'
        if not contractCodeHash:
            contractCodeHash = sha3(code.data[3273 len 10680])
        create2 contract with 0 wei
                        salt: sha3(arg2, arg1)
                        code: code.data[3273 len 10680]
        stor5[address(create2.new_address)] = 1
        require ext_code.size(address(create2.new_address))
        call address(create2.new_address).initialize(address rg1, address rg2, address rg3, address rg4) with:
             gas gas_remaining wei
            args address(arg2), address(arg1), CONFIGAddress, DGASAddress
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
