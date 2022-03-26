contract main {




// =====================  Runtime code  =====================


#
#  - getUnderlyingPrice(address arg1)
#
const isPriceOracle = 1

const QUOTE_SYMBOL = '', 0


address adminAddress;
address v1PriceOracleAddress;
address refAddress;
array of uint256 underlyingSymbols;
address sub_488f7d03Address;

function ref() payable {
    return refAddress
}

function sub_488f7d03(?) payable {
    return sub_488f7d03Address
}

function underlyingSymbols(address arg1) payable {
    return underlyingSymbols[arg1][0 len underlyingSymbols[arg1].length]
}

function admin() payable {
    return adminAddress
}

function v1PriceOracle() payable {
    return v1PriceOracleAddress
}

function _fallback() payable {
    revert
}

function _setAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, '!admin'
    adminAddress = arg1
}

function _setUnderlyingSymbols(address[] arg1, string[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if adminAddress != msg.sender:
        revert with 0, '!admin'
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require cd[(arg2 + (32 * idx) + 36)] < calldata.size + -arg2 - 67
        require cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] <= test266151307()
        require arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
        require idx < arg1.length
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 3
        mem[0] = sha3(address(cd[((32 * idx) + arg1 + 36)]), 3)
        underlyingSymbols[address(cd[((32 * idx) + arg1 + 36)])] = (2 * cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]) + 1
        s = sha3(sha3(address(cd[((32 * idx) + arg1 + 36)]), 3))
        t = arg2 + cd[(arg2 + (32 * idx) + 36)] + 68
        while arg2 + cd[(arg2 + (32 * idx) + 36)] + cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + 68 > t:
            stor[s] = cd[t]
            s = s + 1
            t = t + 32
            continue 
        t = s
        while sha3(sha3(address(cd[((32 * idx) + arg1 + 36)]), 3)) + (underlyingSymbols[address(cd[((32 * idx) + arg1 + 36)])].length + 31 / 32) > t:
            stor[t] = 0
            t = t + 1
            continue 
        idx = idx + 1
        continue 
}



}
