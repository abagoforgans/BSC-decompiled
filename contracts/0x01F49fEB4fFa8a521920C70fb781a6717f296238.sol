contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 1126]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function slice32(bytes arg1, uint256 arg2) payable {
    mem[128 len arg1.length] = arg1[all]
    idx = 0
    s = 0
    while idx < 32:
        require arg2 + idx < arg1.length
        idx = idx + 1
        s = Mask(8, 248, mem[arg2 + idx + 128]) / 2^(8 * idx) or s
        continue 
    return (32 * Mask(8, 248, _7) / 0)
}

function slice2(bytes arg1, uint256 arg2) payable {
    mem[128 len arg1.length] = arg1[all]
    idx = 0
    s = 0
    while idx < 2:
        require arg2 + idx < arg1.length
        idx = idx + 1
        s = Mask(8, 248, mem[arg2 + idx + 128]) / 2^(8 * idx) or s
        continue 
    return (2 * Mask(16, 239, Mask(8, 248, _7) / 65536))
}

function sliceAddress(bytes arg1, uint256 arg2) payable {
    mem[128 len arg1.length] = arg1[all]
    idx = 0
    s = 0
    while idx < 20:
        require arg2 + idx < arg1.length
        idx = idx + 1
        s = Mask(8, 248, mem[arg2 + idx + 128]) / 2^(8 * idx + 12) or s
        continue 
    return address(20 * Mask(8, 248, _7) / 0)
}

function slice4(bytes arg1, uint256 arg2) payable {
    mem[128 len arg1.length] = arg1[all]
    idx = 0
    s = 0
    while idx < 4:
        require arg2 + idx < arg1.length
        idx = idx + 1
        s = Mask(8, 248, mem[arg2 + idx + 128]) / 2^(8 * idx) or s
        continue 
    return (4 * Mask(32, 222, Mask(8, 248, _7) / 4294967296))
}

function slice16(bytes arg1, uint256 arg2) payable {
    mem[128 len arg1.length] = arg1[all]
    idx = 0
    s = 0
    while idx < 16:
        require arg2 + idx < arg1.length
        idx = idx + 1
        s = Mask(8, 248, mem[arg2 + idx + 128]) / 2^(8 * idx) or s
        continue 
    return (16 * Mask(128, 124, Mask(8, 248, _7) / 0x100000000000000000000000000000000))
}



}
