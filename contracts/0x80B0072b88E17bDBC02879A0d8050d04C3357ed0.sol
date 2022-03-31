contract main {




// =====================  Runtime code  =====================


const _getSeed = block.hash(block.number - 1)


mapping of uint256 randomNumber;
address lotteryAddress;

function lottery() payable {
    return lotteryAddress
}

function randomNumber(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return randomNumber[arg1]
}

function _fallback() payable {
    revert
}

function fulfillRandomness(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    randomNumber[arg2] = arg1
    require ext_code.size(lotteryAddress)
    call lotteryAddress.0xe3b6ceff with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function requestRandom(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    randomNumber[arg1] = block.hash(block.number - 1)
    require ext_code.size(lotteryAddress)
    call lotteryAddress.0xe3b6ceff with:
         gas gas_remaining wei
        args block.hash(block.number - 1), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
