contract main {




// =====================  Runtime code  =====================


const sub_6dcfd74a(?) = 10^9


address refAddress;
array of uint256 baseCurrency;
array of uint256 sub_6932ba72;

function ref() payable {
    return refAddress
}

function sub_6932ba72(?) payable {
    return sub_6932ba72[0 len sub_6932ba72.length].field_0
}

function baseCurrency() payable {
    return baseCurrency[0 len baseCurrency.length].field_0
}

function _fallback() payable {
    revert
}

function sub_b9e1a0c6(?) payable {
    mem[64] = 192
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0x65555bcc00000000000000000000000000000000000000000000000000000000
    mem[196] = 64
    if not bool(baseCurrency.length):
        if not bool(sub_6932ba72.length):
            require ext_code.size(refAddress)
            staticcall refAddress.getReferenceData(string rg1, string rg2) with:
                    gas gas_remaining wei
                   args 64, 128, baseCurrency.length % 128, Mask(248, 8, baseCurrency.length), sub_6932ba72.length % 128, Mask(248, 8, sub_6932ba72.length)
        else:
            if bool(sub_6932ba72.length) != 1:
                require ext_code.size(refAddress)
                staticcall refAddress.getReferenceData(string rg1, string rg2) with:
                        gas gas_remaining wei
                       args mem[196 len -196]
            else:
                idx = 0
                s = 0
                while idx < sub_6932ba72.length.field_1:
                    mem[idx + 356] = sub_6932ba72[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(refAddress)
                staticcall refAddress.getReferenceData(string rg1, string rg2) with:
                        gas gas_remaining wei
                       args 64, 128, baseCurrency.length % 128, Mask(248, 8, baseCurrency.length), 2 * Mask(256, -1, sub_6932ba72.length.field_1), mem[356 len ceil32(sub_6932ba72.length.field_1)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require bool(ceil32(return_data.size) + 288 <= test266151307())
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        return (ext_call.return_data[0] / 10^9)
    if bool(baseCurrency.length) == 1:
        idx = 0
        s = 0
        while idx < baseCurrency.length.field_1:
            mem[idx + 292] = baseCurrency[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        if not bool(sub_6932ba72.length):
            mem[ceil32(baseCurrency.length.field_1) + 292] = sub_6932ba72.length.field_1
            require ext_code.size(refAddress)
            staticcall refAddress.getReferenceData(string rg1, string rg2) with:
                    gas gas_remaining wei
                   args Array(len=2 * Mask(256, -1, baseCurrency.length.field_1), data=mem[292 len ceil32(baseCurrency.length.field_1) + 32], Mask(248, 8, sub_6932ba72.length)), ceil32(baseCurrency.length.field_1) + 96
        else:
            if bool(sub_6932ba72.length) != 1:
                require ext_code.size(refAddress)
                staticcall refAddress.getReferenceData(string rg1, string rg2) with:
                        gas gas_remaining wei
                       args mem[196 len -196]
            else:
                mem[ceil32(baseCurrency.length.field_1) + 292] = sub_6932ba72.length.field_1
                idx = 0
                s = 0
                while idx < sub_6932ba72.length.field_1:
                    mem[idx + ceil32(baseCurrency.length.field_1) + 324] = sub_6932ba72[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(refAddress)
                staticcall refAddress.getReferenceData(string rg1, string rg2) with:
                        gas gas_remaining wei
                       args Array(len=2 * Mask(256, -1, baseCurrency.length.field_1), data=mem[292 len ceil32(baseCurrency.length.field_1) + ceil32(sub_6932ba72.length.field_1) + 32]), ceil32(baseCurrency.length.field_1) + 96
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require bool(ceil32(return_data.size) + 288 <= test266151307())
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        return (ext_call.return_data[0] / 10^9)
    mem[228] = -196
    if not bool(sub_6932ba72.length):
        require ext_code.size(refAddress)
        staticcall refAddress.getReferenceData(string rg1, string rg2) with:
                gas gas_remaining wei
               args mem[196 len -132]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require bool(ceil32(return_data.size) + 288 <= test266151307())
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        return (ext_call.return_data[0] / 10^9)
    if bool(sub_6932ba72.length) != 1:
        require ext_code.size(refAddress)
        staticcall refAddress.getReferenceData(string rg1, string rg2) with:
                gas gas_remaining wei
               args mem[196 len -196]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require bool(ceil32(return_data.size) + 288 <= test266151307())
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        return (ext_call.return_data[0] / 10^9)
    mem[0] = 2
    idx = 0
    s = 0
    while idx < sub_6932ba72.length.field_1:
        mem[idx + 32] = sub_6932ba72[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(refAddress)
    staticcall refAddress.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len ceil32(sub_6932ba72.length.field_1) + -mem[64] + 28]
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _91 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    _97 = mem[64]
    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
    mem[64] = mem[64] + 96
    require mem[_91] == mem[_91]
    mem[_97] = mem[_91]
    require mem[_91 + 32] == mem[_91 + 32]
    mem[_97 + 32] = mem[_91 + 32]
    require mem[_91 + 64] == mem[_91 + 64]
    mem[_97 + 64] = mem[_91 + 64]
    mem[mem[64]] = mem[_97] / 10^9
    return memory
      from mem[64]
       len 32
}



}
