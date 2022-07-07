contract main {




// =====================  Runtime code  =====================


const sub_e62c61a4(?) = 0

const requestRandomness = 0


function _fallback() payable {
    revert
}

function sub_e57f946e(?) payable {
    require calldata.size - 4 >= 64
    return 0
}

function getRandomNumber(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return sha3(block.timestamp, block.difficulty, tx.origin, eth.balance(tx.origin), gas_remaining, arg1)
}



}
