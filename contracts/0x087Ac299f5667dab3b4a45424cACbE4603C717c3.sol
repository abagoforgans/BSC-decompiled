contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;

function sub_d1142a75(?) payable {
    require calldata.size - 4 >= 64
    return bool(stor0[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function sub_8a0cfa75(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require ext_code.size(address(cd[4]))
    call address(cd[4]).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, 100 * 10^18 * ('cd', 36).length
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    idx = 0
    while idx < ('cd', 36).length:
        mem[100] = address(cd[((32 * idx) + cd[36] + 36)])
        mem[132] = 100 * 10^18
        require ext_code.size(address(cd[4]))
        call address(cd[4]).0xa9059cbb with:
             gas gas_remaining wei
            args address(cd[((32 * idx) + cd[36] + 36)]), 100 * 10^18
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        idx = idx + 1
        continue 
}

function sub_ebd4f15c(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require ext_code.size(address(cd[4]))
    call address(cd[4]).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, 100 * 10^18 * ('cd', 36).length
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    idx = 0
    while idx < ('cd', 36).length:
        mem[100] = address(cd[((32 * idx) + cd[36] + 36)])
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).0x70a08231 with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[36] + 36)])
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            require idx < ('cd', 36).length
            mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[32] = sha3(address(cd[4]), 0)
            stor0[address(cd[4])][address(cd[((32 * idx) + cd[36] + 36)])] = 1
            if not stor0[address(cd[4])][address(cd[((32 * idx) + cd[36] + 36)])]:
                require idx < ('cd', 36).length
                mem[100] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[132] = 100 * 10^18
                require ext_code.size(address(cd[4]))
                call address(cd[4]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(cd[((32 * idx) + cd[36] + 36)]), 100 * 10^18
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
        idx = idx + 1
        continue 
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(cd[4]))
        call address(cd[4]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    return 1
}



}
