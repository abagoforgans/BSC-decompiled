contract main {




// =====================  Runtime code  =====================


const getBlockDifficulty = block.difficulty

const sub_2df8e949(?) = address(block.coinbase)

const getBlockNumber = block.number

const getBlockTimestamp = block.timestamp

const sub_9402e681(?) = block.gas_limit


uint256 timelockDelay;
address owner;

function owner() payable {
    return owner
}

function timelockDelay() payable {
    return timelockDelay
}

function _fallback() payable {
    revert
}

function sub_10e7e311(?) payable {
    require calldata.size - 4 >= 32
    return sha3(arg1)
}

function getBlockHash(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return block.hash(arg1)
}

function sub_21d3d923(?) payable {
    require calldata.size - 4 >= 32
    return (block.timestamp + timelockDelay + arg1)
}

function sub_af267f8f(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Out of here'
    timelockDelay = arg1
}



}
