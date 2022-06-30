contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
array of address stor1;
mapping of uint8 stor2;
address stor3;
address stor4;
address stor5;
address governanceAddress;

function governance() payable {
    return governanceAddress
}

function sub_dd8f5fb9(?) payable {
    return stor1.length
}

function _fallback() payable {
    revert
}

function sub_b3454de0(?) payable {
    if governanceAddress != msg.sender:
        revert with 0, 'forbid'
    require ext_code.size(stor5)
    staticcall stor5.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor5)
    call stor5.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_53be7f85(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if governanceAddress != msg.sender:
        revert with 0, 'forbid'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[32] = 0
        stor0[mem[(32 * idx) + 140 len 20]] = 1
        require idx < arg1.length
        stor1.length++
        mem[0] = 1
        stor1[stor1.length] = mem[(32 * idx) + 140 len 20]
        idx = idx + 1
        continue 
}

function sub_65ead589(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if governanceAddress != msg.sender:
        revert with 0, 'forbid'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _37 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 140 len 20]
        require ext_code.size(stor3)
        staticcall stor3.0x70a08231 with:
                gas gas_remaining wei
               args address(_37)
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < arg1.length
        _43 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 140 len 20]
        require ext_code.size(stor4)
        staticcall stor4.0x70a08231 with:
                gas gas_remaining wei
               args address(_43)
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < arg1.length
        _49 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 140 len 20]
        require ext_code.size(stor4)
        staticcall stor4.0xbe3b8e8c with:
                gas gas_remaining wei
               args address(_49)
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 2
            if not stor2[mem[(32 * idx) + 140 len 20]]:
                if ext_call.return_data[0] > 0:
                    require idx < arg1.length
                    mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 140 len 20]
                    mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
                    require ext_code.size(stor5)
                    call stor5.0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[(32 * arg1.length) + 132], ext_call.return_data[0]
                    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < arg1.length
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 2
                    stor2[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}



}
