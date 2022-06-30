contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert
}

function withdrawBNB(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Not allowed'
    call stor0 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_923d2acf(?) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Not allowed'
    require ext_code.size(stor1)
    call stor1.0x2e1a7d4d with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function depositETH(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Not allowed'
    require ext_code.size(stor1)
    call stor1.deposit() with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_2ee49001(?) {
    require calldata.size - 4 >= 128
    if stor0 != msg.sender:
        revert with 0, 'Not allowed'
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args address(arg2), address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function withdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0, 'Not allowed'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_355c395c(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 128
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require 0 < ('cd', 68).length
    require ('cd', 68).length - 1 < ('cd', 68).length
    if cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] <= ('cd', 68)[0]:
        revert with 0, 'Trade at a loss'
    require 0 < ('cd', 4).length
    require 0 < ('cd', 68).length
    mem[100] = address(('cd', 4)[0])
    mem[132] = ('cd', 68)[0]
    require ext_code.size(address(cd[100]))
    call address(cd[100]).0xa9059cbb with:
         gas gas_remaining wei
        args address(('cd', 4)[0]), ('cd', 68)[0]
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    idx = 0
    while idx < ('cd', 4).length - 1:
        require idx < ('cd', 36).length
        require idx + 1 < ('cd', 68).length
        require idx < ('cd', 4).length
        require idx + 1 < ('cd', 4).length
        if not Mask(8, 248, cd[((32 * idx) + cd[36] + 36)]):
            _23 = mem[64]
            mem[64] = mem[64] + 32
            mem[_23 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_23 + 36] = 0
            mem[_23 + 68] = cd[((32 * idx + 1) + cd[68] + 36)]
            mem[_23 + 100] = address(cd[((32 * idx + 1) + cd[4] + 36)])
            mem[_23 + 132] = 128
            mem[_23 + 164] = mem[_23]
            s = 0
            while s < mem[_23]:
                mem[_23 + s + 196] = mem[_23 + s + 32]
                s = s + 32
                continue 
            if not mem[_23] % 32:
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, cd[((32 * idx + 1) + cd[68] + 36)], address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_23 + 164 len mem[_23] + 32]
            else:
                mem[floor32(mem[_23]) + _23 + 196] = mem[floor32(mem[_23]) + _23 + -(mem[_23] % 32) + 228 len mem[_23] % 32]
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, cd[((32 * idx + 1) + cd[68] + 36)], address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_23], mem[_23 + 196 len floor32(mem[_23]) + 32]
        else:
            _24 = mem[64]
            mem[64] = mem[64] + 32
            mem[_24 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_24 + 36] = cd[((32 * idx + 1) + cd[68] + 36)]
            mem[_24 + 68] = 0
            mem[_24 + 100] = address(cd[((32 * idx + 1) + cd[4] + 36)])
            mem[_24 + 132] = 128
            mem[_24 + 164] = mem[_24]
            s = 0
            while s < mem[_24]:
                mem[_24 + s + 196] = mem[_24 + s + 32]
                s = s + 32
                continue 
            if not mem[_24] % 32:
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args cd[((32 * idx + 1) + cd[68] + 36)], 0, address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_24 + 164 len mem[_24] + 32]
            else:
                mem[floor32(mem[_24]) + _24 + 196] = mem[floor32(mem[_24]) + _24 + -(mem[_24] % 32) + 228 len mem[_24] % 32]
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args cd[((32 * idx + 1) + cd[68] + 36)], 0, address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_24], mem[_24 + 196 len floor32(mem[_24]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}
