contract main {




// =====================  Runtime code  =====================


address _owner;

function _owner() payable {
    return _owner
}

function _fallback() payable {
    revert
}

function sub_0fb93d6e(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 97 > test266151307() or ceil32(32 * ('cd', 68).length) + 97 < 96:
        revert with 0, 65
    mem[96] = ('cd', 68).length
    require (32 * ('cd', 68).length) + cd[68] + 36 <= calldata.size
    s = 128
    idx = cd[68] + 36
    while idx < (32 * ('cd', 68).length) + cd[68] + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    require msg.sender == _owner
    idx = 0
    while idx < ('cd', 68).length:
        if idx >= mem[96]:
            revert with 0, 50
        _14 = mem[(32 * idx) + 128]
        mem[ceil32(32 * ('cd', 68).length) + 97] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * ('cd', 68).length) + 101] = msg.sender
        mem[ceil32(32 * ('cd', 68).length) + 133] = address(cd[36])
        mem[ceil32(32 * ('cd', 68).length) + 165] = _14
        require ext_code.size(address(cd[4]))
        call address(cd[4]).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(cd[36]), _14
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
