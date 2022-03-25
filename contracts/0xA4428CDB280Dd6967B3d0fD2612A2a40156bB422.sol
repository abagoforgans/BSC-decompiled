contract main {




// =====================  Runtime code  =====================


#
#  - getUnderlyingPrice(address arg1)
#
const isPriceOracle = 1

const QUOTE_SYMBOL = '', 0


address adminAddress;
address v1PriceOracleAddress;
address stor2;
array of uint256 symbols;
address sub_488f7d03Address;

function sub_488f7d03(?) payable {
    return sub_488f7d03Address
}

function symbols(address arg1) payable {
    return symbols[arg1][0 len symbols[arg1].length]
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
        symbols[address(cd[((32 * idx) + cd[4] + 36)])] = (2 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 1
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

function sub_6ba31b48(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 160] = 3
    mem[ceil32(arg1.length) + 192] = 0x424e420000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 256] = 64
    mem[ceil32(arg1.length) + 320] = arg1.length
    mem[ceil32(arg1.length) + 352 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if ceil32(arg1.length) <= arg1.length:
        mem[ceil32(arg1.length) + 288] = ceil32(arg1.length) + 96
        mem[(2 * ceil32(arg1.length)) + 352] = 3
        mem[(2 * ceil32(arg1.length)) + 384] = 0x424e420000000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(arg1.length)) + 387] = 0
        mem[(2 * ceil32(arg1.length)) + 448] = 0x65555bcc00000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(arg1.length)) + 452 len ceil32(ceil32(arg1.length)) + 5] = mem[ceil32(arg1.length) + 256 len ceil32(ceil32(arg1.length)) + 5]
        if ceil32(ceil32(arg1.length)) + 5 > ceil32(arg1.length) + 160:
            mem[(4 * ceil32(arg1.length)) + 612] = 0
    else:
        mem[arg1.length + ceil32(arg1.length) + 352] = 0
        mem[ceil32(arg1.length) + 288] = ceil32(arg1.length) + 96
        mem[(2 * ceil32(arg1.length)) + 352] = 3
        mem[(2 * ceil32(arg1.length)) + 384] = 0x424e420000000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(arg1.length)) + 387] = 0
        mem[(2 * ceil32(arg1.length)) + 448] = 0x65555bcc00000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(arg1.length)) + 452 len ceil32(ceil32(arg1.length)) + 5] = mem[ceil32(arg1.length) + 256 len ceil32(ceil32(arg1.length)) + 5]
        if ceil32(ceil32(arg1.length)) + 5 > ceil32(arg1.length) + 160:
            mem[(4 * ceil32(arg1.length)) + 612] = 0
        mem[(2 * ceil32(arg1.length)) + 416] = ceil32(arg1.length) + 164
    mem[(4 * ceil32(arg1.length)) + 612 len floor32(ceil32(arg1.length) + 195)] = 0, mem[ceil32(arg1.length) + 256 len ceil32(ceil32(arg1.length)) + 5], mem[(2 * ceil32(arg1.length)) + ceil32(ceil32(arg1.length)) + 457 len floor32(ceil32(arg1.length) + 195) + -ceil32(ceil32(arg1.length)) - 9]
    if floor32(ceil32(arg1.length) + 195) > ceil32(arg1.length) + 164:
        mem[(2 * ceil32(arg1.length) + 160) + (2 * ceil32(arg1.length)) + 456] = 0
    staticcall stor2.mem[(4 * ceil32(arg1.length)) + 612 len 4] with:
            gas gas_remaining wei
           args mem[(4 * ceil32(arg1.length)) + 616 len ceil32(arg1.length) + 160]
    if not return_data.size:
        if not ext_call.success:
            mem[(4 * ceil32(arg1.length)) + 644] = 1
            mem[(4 * ceil32(arg1.length)) + 676] = 0
            return memory
              from (4 * ceil32(arg1.length)) + 644
               len ceil32(arg1.length) + 64
        require arg1.length >= 96
        require bool((4 * ceil32(arg1.length)) + 804 <= test266151307())
        require mem[128] == mem[128]
        require mem[160] == mem[160]
        require mem[192] == mem[192]
        mem[(4 * ceil32(arg1.length)) + 836] = 0
        mem[(4 * ceil32(arg1.length)) + 868] = mem[128]
        return memory
          from (4 * ceil32(arg1.length)) + 836
           len ceil32(arg1.length) + 64
    mem[(4 * ceil32(arg1.length)) + 612] = return_data.size
    mem[(4 * ceil32(arg1.length)) + 644 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        mem[(4 * ceil32(arg1.length)) + ceil32(return_data.size) + 645] = 1
        mem[(4 * ceil32(arg1.length)) + ceil32(return_data.size) + 677] = 0
        return memory
          from (4 * ceil32(arg1.length)) + ceil32(return_data.size) + 645
           len ceil32(arg1.length) + 64
    mem[(4 * ceil32(arg1.length)) + ceil32(return_data.size) + 613] = 0
    mem[(4 * ceil32(arg1.length)) + ceil32(return_data.size) + 645] = 0
    mem[(4 * ceil32(arg1.length)) + ceil32(return_data.size) + 677] = 0
    require return_data.size >= 96
    require bool((4 * ceil32(arg1.length)) + ceil32(return_data.size) + 805 <= test266151307())
    require mem[(4 * ceil32(arg1.length)) + 644] == mem[(4 * ceil32(arg1.length)) + 644]
    mem[(4 * ceil32(arg1.length)) + ceil32(return_data.size) + 709] = mem[(4 * ceil32(arg1.length)) + 644]
    require mem[(4 * ceil32(arg1.length)) + 676] == mem[(4 * ceil32(arg1.length)) + 676]
    require mem[(4 * ceil32(arg1.length)) + 708] == mem[(4 * ceil32(arg1.length)) + 708]
    mem[(4 * ceil32(arg1.length)) + ceil32(return_data.size) + 837] = 0
    mem[(4 * ceil32(arg1.length)) + ceil32(return_data.size) + 869] = mem[(4 * ceil32(arg1.length)) + 644]
    return memory
      from (4 * ceil32(arg1.length)) + ceil32(return_data.size) + 837
       len ceil32(arg1.length) + 64
}



}
