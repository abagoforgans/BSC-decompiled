contract main {


// =======================  Init code  ======================


const _fallback = code.data[29 len 193]




// =====================  Runtime code  =====================


const random = uint8(sha3(block.timestamp, block.difficulty) % 251)


function _fallback() payable {
    revert
}



}
