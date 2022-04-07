contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address stor151;
uint256 stor151;
address bakerySwapFactoryAddress;
address stor153;
address stor154;
uint8 feePercentX100; offset 160
address stor155;
uint256 lastTotalSupplyOfLPTokens;
uint8 stor157;

function feePercentX100() payable {
    return feePercentX100
}

function BakerySwapFactory() payable {
    return bakerySwapFactoryAddress
}

function owner() payable {
    return owner
}

function lastTotalSupplyOfLPTokens() payable {
    return lastTotalSupplyOfLPTokens
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setPaused(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor157 = uint8(arg1)
}

function setTcoreVaultAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor155 = arg1
}

function setFeeMultiplier(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    feePercentX100 = arg1
}

function sync() payable {
    require ext_code.size(address(stor151))
    staticcall address(stor151).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    lastTotalSupplyOfLPTokens = ext_call.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function calculateAmountsAfterFee(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if stor157:
        revert with 0, 'FEE APPROVER: Transfers Paused'
    require ext_code.size(address(stor151))
    staticcall address(stor151).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(stor151) == arg1:
        if lastTotalSupplyOfLPTokens > ext_call.return_data[0]:
            revert with 0, 'Liquidity withdrawals forbidden'
    if stor155 == arg1:
        staticcall 'console.log'.log(string rg1) with:
                gas gas_remaining wei
               args 0, 'Sending without fee'
        lastTotalSupplyOfLPTokens = ext_call.return_data[0]
        return arg3, 0
    if address(stor151) == arg1:
        staticcall 'console.log'.log(string rg1) with:
                gas gas_remaining wei
               args 0, 'Sending without fee'
        lastTotalSupplyOfLPTokens = ext_call.return_data[0]
        return arg3, 0
    staticcall 'console.log'.log(string rg1) with:
            gas gas_remaining wei
           args 0, 'ansfer'
    if not arg3:
        if 0 > arg3:
            revert with 0, 'SafeMath: subtraction overflow'
        lastTotalSupplyOfLPTokens = ext_call.return_data[0]
        return arg3, 0
    if feePercentX100 * arg3 / arg3 != feePercentX100:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 31]
    if feePercentX100 * arg3 / 1000 > arg3:
        revert with 0, 'SafeMath: subtraction overflow'
    lastTotalSupplyOfLPTokens = ext_call.return_data[0]
    return arg3 - (feePercentX100 * arg3 / 1000), feePercentX100 * arg3 / 1000
}

function initialize(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x72436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x72436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x72436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x72436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
    stor154 = arg1
    stor153 = arg2
    require ext_code.size(0x1bf7c66c6bd861915cdaae475042d3c4bae16a7)
    staticcall 0x1bf7c66c6bd861915cdaae475042d3c4bae16a7.getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor151) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor151))
    stor155 = arg3
    feePercentX100 = 20
    stor157 = 0
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}



}
