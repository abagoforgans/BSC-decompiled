contract main {




// =====================  Runtime code  =====================


address _tokenAddress;
address stor1;

function _tokenAddress() payable {
    return _tokenAddress
}

function _fallback() payable {
    revert
}

function updateTokenAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != msg.sender:
        revert with 0, 'admin!'
    _tokenAddress = arg1
}

function sub_e6739326(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if stor1 != msg.sender:
        revert with 0, 'admin!'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'the lists don't match lengths'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 68] = cd[((32 * idx) + cd[36] + 36)]
        require ext_code.size(_tokenAddress)
        call _tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(cd[((32 * idx) + cd[4] + 36)]), cd[((32 * idx) + cd[36] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _11 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_11] == bool(mem[_11])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
