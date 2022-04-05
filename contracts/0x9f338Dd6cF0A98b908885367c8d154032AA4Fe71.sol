contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
mapping of struct tokenList;
address adminAddress;
uint256 decimal;
uint256 intervalBlocks;

function intervalBlocks() payable {
    return intervalBlocks
}

function tokenList(address arg1) payable {
    require calldata.size - 4 >= 32
    return tokenList[arg1].field_0, tokenList[arg1].field_256, bool(tokenList[arg1].field_512)
}

function decimal() payable {
    return decimal
}

function get(address arg1) payable {
    require calldata.size - 4 >= 32
    return tokenList[address(arg1)].field_0
}

function adminAddress() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function sub_246a1c1f(?) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'admin: wut?'
    intervalBlocks = arg1
}

function setDecimal(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'admin: wut?'
    decimal = arg1
}

function sub_a3362110(?) payable {
    require calldata.size - 4 >= 32
    if block.number - tokenList[address(arg1)].field_256 >= intervalBlocks:
        return 0
    return 1
}

function put(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0, 'admin: wut?'
    tokenList[address(arg1)].field_0 = arg2
    tokenList[address(arg1)].field_256 = block.number
    emit 0x96a0422d: arg2, arg1
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor0.field_8):
        adminAddress = arg1
        decimal = 6
        intervalBlocks = 200
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0xfe496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            adminAddress = arg1
            decimal = 6
            intervalBlocks = 200
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            adminAddress = arg1
            decimal = 6
            intervalBlocks = 200
            uint8(stor0.field_8) = 0
}



}
