contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
address feeAddress;
uint128 sub_525a1486;
uint128 numOfThisBlockchain; offset 128
mapping of uint128 feeAmountOfBlockchain;

function feeAddress() payable {
    return feeAddress
}

function sub_525a1486(?) payable {
    return sub_525a1486
}

function owner() payable {
    return owner
}

function tokenAddress() payable {
    return tokenAddress
}

function numOfThisBlockchain() payable {
    return numOfThisBlockchain
}

function feeAmountOfBlockchain(uint128 arg1) payable {
    require calldata.size - 4 >= 32
    return feeAmountOfBlockchain[arg1]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function changeFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    feeAddress = arg1
}

function setFeeAmountOfBlockchain(uint128 arg1, uint128 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    feeAmountOfBlockchain[arg1 << 128] = arg2
}

function changeInformationAboutOtherBlockchain(uint128 arg1, uint128 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_525a1486 = arg2
    numOfThisBlockchain = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function transferToUserWithoutFee(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit TransferFromOtherBlockchain(address(arg1), arg2);
}

function transferToUserWithFee(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if feeAmountOfBlockchain[stor3] > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2 - feeAmountOfBlockchain[stor3]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args feeAddress, feeAmountOfBlockchain[stor3]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit TransferFromOtherBlockchain(address(arg1), arg2);
}

function transferToOtherBlockchain(uint128 arg1, uint256 arg2, string arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if arg3.length <= 0:
        revert with 0, 
                    32,
                    45,
                    0x7373776170436f6e74726163743a204e6f2064657374696e6174696f6e20616464726573732070726f76696465,
                    mem[ceil32(arg3.length) + 241 len 19]
    if arg1 >= sub_525a1486:
        revert with 0, 
                    32,
                    40,
                    0x6473776170436f6e74726163743a2057726f6e672063686f6f7365206f6620626c6f636b63686169,
                    mem[ceil32(arg3.length) + 236 len 24]
    if numOfThisBlockchain == arg1:
        revert with 0, 
                    32,
                    40,
                    0x6473776170436f6e74726163743a2057726f6e672063686f6f7365206f6620626c6f636b63686169,
                    mem[ceil32(arg3.length) + 236 len 24]
    if arg2 < feeAmountOfBlockchain[arg1 << 128]:
        revert with 0, 
                    32,
                    41,
                    0x7373776170436f6e74726163743a204e6f7420656e6f75676820616d6f756e74206f6620746f6b656e,
                    mem[ceil32(arg3.length) + 237 len 23]
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'swapContract: Not enough balance'
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg3.length) + 128] = arg1
    mem[ceil32(arg3.length) + 288 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        emit TransferToOtherBlockchain(uint128 rg1, address rg2, uint256 rg3, string rg4):
                                       0,
                                       Mask(96, 0, arg1) << 128,
                                       msg.sender,
                                       arg2,
                                       128,
                                       arg3.length,
                                       Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256,
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 288] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 320 len arg3.length % 32]
        emit TransferToOtherBlockchain(uint128 rg1, address rg2, uint256 rg3, string rg4):
                                       0,
                                       Mask(96, 0, arg1) << 128,
                                       msg.sender,
                                       arg2,
                                       128,
                                       arg3.length,
                                       Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                       mem[(2 * ceil32(arg3.length)) + 288 len floor32(arg3.length) + -ceil32(arg3.length) + 32],
}



}
