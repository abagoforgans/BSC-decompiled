contract main {




// =====================  Runtime code  =====================


#
#  - sub_6ba31b48(?)
#
const isPriceOracle = 1

const QUOTE_SYMBOL = '', 0


address adminAddress;
address v1PriceOracleAddress;
address stor2;
array of struct symbols;
address sub_488f7d03Address;

function sub_488f7d03(?) payable {
    return sub_488f7d03Address
}

function symbols(address arg1) payable {
    return symbols[arg1][0 len symbols[arg1].length].field_0
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

function sub_804f5b77(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 128] = 0
    require ext_code.size(stor2)
    staticcall stor2.getReferenceData(string rg1, string rg2) with:
            gas gas_remaining wei
           args 64, ceil32(arg1.length) + 96, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, 3, 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require bool(ceil32(arg1.length) + ceil32(return_data.size) + 416 <= test266151307())
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    if ext_call.return_data[32] <= block.timestamp:
        if ext_call.return_data[64] <= block.timestamp:
            return 0, ext_call.return_data[0]
    return 1, 0
}

function sub_176e75a4(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only the admin may set the underlying symbols'
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
        require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
        require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
        require idx < ('cd', 4).length
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 3
        mem[0] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 3)
        symbols[address(cd[((32 * idx) + cd[4] + 36)])].field_0 = (2 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 1
        s = sha3(sha3(address(cd[((32 * idx) + cd[4] + 36)]), 3))
        t = cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68
        while cd[36] + cd[(cd[36] + (32 * idx) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 68 > t:
            stor[s] = cd[t]
            s = s + 1
            t = t + 32
            continue 
        t = s
        while sha3(sha3(address(cd[((32 * idx) + cd[4] + 36)]), 3)) + (symbols[address(cd[((32 * idx) + cd[4] + 36)])].length + 31 / 32) > t:
            stor[t] = 0
            t = t + 1
            continue 
        idx = idx + 1
        continue 
}

function getUnderlyingPrice(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_488f7d03Address == arg1:
        return 10^18
    mem[128] = symbols[address(arg1)].field_0
    idx = 128
    s = 0
    while symbols[address(arg1)].length + 96 > idx:
        mem[idx + 32] = symbols[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if symbols[address(arg1)].length != 0:
        require ext_code.size(stor2)
        staticcall stor2.getReferenceData(string rg1, string rg2) with:
                gas gas_remaining wei
               args 64, ceil32(symbols[address(arg1)].length) + 96, symbols[address(arg1)].length, mem[128 len ceil32(symbols[address(arg1)].length)], 3, 0, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require bool(ceil32(symbols[address(arg1)].length) + ceil32(return_data.size) + 448 <= test266151307())
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        if ext_call.return_data[32] <= block.timestamp:
            if ext_call.return_data[64] <= block.timestamp:
                if ext_call.return_data[0]:
                    require ext_code.size(arg1)
                    staticcall arg1.underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(ext_call.return_data[12 len 20])
                    staticcall ext_call.return_data[12 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not ext_call.return_data[0]:
                        return 0
                    if 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[0] / ext_call.return_data[0] == 10^(-uint8(ext_call.return_data[0]) + 18):
                        return (10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[0])
    require ext_code.size(arg1)
    staticcall arg1.underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(v1PriceOracleAddress)
    staticcall v1PriceOracleAddress.assetPrices(address rg1) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}



}
