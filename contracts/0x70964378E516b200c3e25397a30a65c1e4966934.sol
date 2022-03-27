contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address depositTokenAddress;
address feeToAddress;
uint256 totalSupply;
mapping of uint256 balanceOf;

function feeTo() payable {
    return feeToAddress
}

function totalSupply() payable {
    return totalSupply
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function depositToken() payable {
    return depositTokenAddress
}

function _fallback() payable {
    revert
}

function feeToUpdate(address arg1) payable {
    require calldata.size - 4 >= 32
    if feeToAddress != msg.sender:
        revert with 0, 'feeTo: wut?'
    feeToAddress = arg1
}

function initialize(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if uint8(stor0.field_8):
        depositTokenAddress = arg1
        feeToAddress = arg2
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0xfe436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            depositTokenAddress = arg1
            feeToAddress = arg2
        else:
            Mask(248, 0, stor0.field_8) = 1
            uint8(stor0.field_0) = 1
            depositTokenAddress = arg1
            feeToAddress = arg2
            Mask(248, 0, stor0.field_8) = 0
}



}
