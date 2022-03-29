contract main {




// =====================  Runtime code  =====================


#
#  - sub_7c00d96f(?)
#  - sub_b35c236a(?)
#  - sub_b5739b38(?)
#  - sub_e0ef9598(?)
#
array of address stor0;
mapping of address stor1;
mapping of uint256 stor2;
mapping of uint256 stor3;
array of address stor4;
mapping of uint256 stor5;
address stor6;

function _fallback() payable {
    revert
}

function approveTokens() payable {
    mem[64] = 96
    if not stor4.length:
        revert with 0, 'APPROVE_TOKENS_FAILED'
    if stor6 != msg.sender:
        revert with 0, 'OWNER_FAILED'
    idx = 0
    while idx < stor4.length:
        mem[0] = 4
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = 0xbf6527834dbb89cdc97a79fcd62e6c08b19f8ec0
        require ext_code.size(stor4[idx])
        staticcall stor4[idx].allowance(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(this.address), 0xbf6527834dbb89cdc97a79fcd62e6c08b19f8ec0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _18 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_18] != -1:
            require idx < stor4.length
            mem[0] = 4
            mem[mem[64] + 4] = 0xbf6527834dbb89cdc97a79fcd62e6c08b19f8ec0
            mem[mem[64] + 36] = -1
            require ext_code.size(stor4[idx])
            call stor4[idx].approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args 0xbf6527834dbb89cdc97a79fcd62e6c08b19f8ec0, -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _23 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_23] == bool(mem[_23])
        idx = idx + 1
        continue 
}

function sub_ddfb3ccf(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if not ('cd', 4).length:
        revert with 0, 'PARAMS_FAILED'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'PARAMS_FAILED'
    if stor6 != msg.sender:
        revert with 0, 'OWNER_FAILED'
    if ('cd', 4).length:
        mem[128 len 32 * ('cd', 4).length] = code.data[20201 len 32 * ('cd', 4).length]
    stor4.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while stor4.length > idx:
            stor4[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            stor4[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while stor4.length > idx:
            stor4[idx] = 0
            idx = idx + 1
            continue 
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        require idx < stor4.length
        stor4[idx] = address(cd[((32 * idx) + cd[4] + 36)])
        require idx < ('cd', 36).length
        require idx < ('cd', 4).length
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 5
        stor5[address(cd[((32 * idx) + cd[4] + 36)])] = cd[((32 * idx) + cd[36] + 36)]
        idx = idx + 1
        continue 
}

function sub_3247d940(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if not ('cd', 4).length:
        revert with 0, 'PARAMS_FAILED'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'PARAMS_FAILED'
    if ('cd', 4).length != ('cd', 68).length:
        revert with 0, 'PARAMS_FAILED'
    if ('cd', 4).length != ('cd', 100).length:
        revert with 0, 'PARAMS_FAILED'
    if stor6 != msg.sender:
        revert with 0, 'OWNER_FAILED'
    if ('cd', 4).length:
        mem[128 len 32 * ('cd', 4).length] = code.data[20201 len 32 * ('cd', 4).length]
    stor0.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while stor0.length > idx:
            stor0[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            stor0[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while stor0.length > idx:
            stor0[idx] = 0
            idx = idx + 1
            continue 
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        require idx < stor0.length
        stor0[idx] = address(cd[((32 * idx) + cd[4] + 36)])
        require idx < ('cd', 36).length
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        require idx < ('cd', 4).length
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        stor1[address(cd[((32 * idx) + cd[4] + 36)])] = address(cd[((32 * idx) + cd[36] + 36)])
        require idx < ('cd', 68).length
        require idx < ('cd', 4).length
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        stor2[address(cd[((32 * idx) + cd[4] + 36)])] = cd[((32 * idx) + cd[68] + 36)]
        require idx < ('cd', 100).length
        require idx < ('cd', 4).length
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 3
        stor3[address(cd[((32 * idx) + cd[4] + 36)])] = cd[((32 * idx) + cd[100] + 36)]
        idx = idx + 1
        continue 
}



}
