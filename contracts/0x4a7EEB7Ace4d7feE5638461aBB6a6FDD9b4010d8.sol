contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
array of address converterCount;
mapping of address token;
array of address tokens;
mapping of struct sub_22d2ca35;

function sub_22d2ca35(?) {
    return bool(sub_22d2ca35[arg1].field_0), sub_22d2ca35[arg1].field_256
}

function tokens(uint256 arg1) {
    require arg1 < tokens.length
    return address(tokens[arg1])
}

function owner() {
    return owner
}

function tokenAddress(address arg1) {
    return token[address(arg1)]
}

function tokenCount() {
    return tokens.length
}

function converterCount(address arg1) {
    return uint256(converterCount[address(arg1)])
}

function newOwner() {
    return newOwner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require owner != arg1
    newOwner = arg1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnerUpdate(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function converterAddress(address arg1, uint32 arg2) {
    if arg2 >= uint256(converterCount[address(arg1)]):
        return 0
    require arg2 < uint256(converterCount[address(arg1)])
    return address(converterCount[address(arg1)][arg2])
}

function sub_4d2f46c4(?) {
    if 0 >= uint256(converterCount[address(arg1)]):
        return 0
    require uint256(converterCount[address(arg1)]) - 1 < uint256(converterCount[address(arg1)])
    return address(converterCount[address(arg1)][uint256(converterCount[address(arg1)])])
}

function registerConverter(address arg1, address arg2) {
    require msg.sender == owner
    require arg1
    require arg2
    require not token[address(arg2)]
    if not sub_22d2ca35[address(arg1)].field_0:
        sub_22d2ca35[address(arg1)].field_0 = 1
        tokens.length++
        address(tokens[tokens.length]) = arg1
        sub_22d2ca35[address(arg1)].field_256 = tokens.length
        emit 0xf9e0431c: arg1
    uint256(converterCount[address(arg1)])++
    address(converterCount[address(arg1)][uint256(converterCount[address(arg1)])]) = arg2
    token[address(arg2)] = arg1
    emit ConverterAddition(arg2, arg1);
}

function unregisterConverter(address arg1, uint32 arg2) {
    require msg.sender == owner
    require arg1
    require arg2 < uint256(converterCount[address(arg1)])
    require arg2 < uint256(converterCount[address(arg1)])
    idx = arg2 + 1
    while uint32(idx) < uint256(converterCount[address(arg1)]):
        require uint32(idx) < uint256(converterCount[address(arg1)])
        require uint32(idx - 1) < uint256(converterCount[address(arg1)])
        address(converterCount[address(arg1)][uint32(idx - 1)]) = address(converterCount[address(arg1)][uint32(idx)])
        mem[0] = arg1
        mem[32] = 2
        idx = idx + 1
        continue 
    uint256(converterCount[address(arg1)])--
    if uint256(converterCount[address(arg1)]) > uint256(converterCount[address(arg1)]) - 1:
        idx = uint256(converterCount[address(arg1)]) - 1
        while uint256(converterCount[address(arg1)]) > idx:
            uint256(converterCount[address(arg1)][idx]) = 0
            idx = idx + 1
            continue 
    if not uint256(converterCount[address(arg1)]):
        require sub_22d2ca35[address(arg1)].field_256 < tokens.length
        require address(tokens[stor5[address(arg1)].field_256]) == arg1
        require tokens.length - 1 < tokens.length
        sub_22d2ca35[address(stor4[stor4.length])].field_256 = sub_22d2ca35[address(arg1)].field_256
        require sub_22d2ca35[address(arg1)].field_256 < tokens.length
        address(tokens[stor5[address(arg1)].field_256]) = address(tokens[tokens.length])
        tokens.length--
        if tokens.length > tokens.length - 1:
            idx = tokens.length - 1
            while tokens.length > idx:
                uint256(tokens[idx]) = 0
                idx = idx + 1
                continue 
        sub_22d2ca35[address(arg1)].field_0 = 0
        sub_22d2ca35[address(arg1)].field_256 = 0
        emit 0xa8126e18: arg1
    token[address(stor2[address(arg1)][arg2])] = 0
    emit ConverterRemoval(address(converterCount[address(arg1)][arg2]), arg1);
}



}
