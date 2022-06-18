contract main {




// =====================  Runtime code  =====================


address airdropTokenAddress;
address owner;
mapping of uint256 sub_58cf77fa;
uint256 sub_2499f61c;

function sub_2499f61c(?) payable {
    return sub_2499f61c
}

function airdropToken() payable {
    return airdropTokenAddress
}

function sub_58cf77fa(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_58cf77fa[arg1]
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function sub_86668da3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'ownable: caller is not the owner'
    airdropTokenAddress = address(arg1)
}

function ownerWithdraw() payable {
    if owner != msg.sender:
        revert with 0, 'ownable: caller is not the owner'
    if eth.balance(this.address) <= 0:
        revert with 0, 'insufficient balance.'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sweep(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_2e523c51(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (64 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size - s >= 64
        _26 = mem[64]
        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 64
        require cd[s] == address(cd[s])
        mem[_26] = cd[s]
        require cd[(s + 32)] == cd[(s + 32)]
        mem[_26 + 32] = cd[(s + 32)]
        mem[t] = _26
        idx = idx + 1
        s = s + 64
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'ownable: caller is not the owner'
    _50 = mem[96]
    idx = 0
    while idx < _50:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if not mem[mem[(32 * idx) + 128] + 12 len 20]:
            revert with 0, 'receiver is 0.'
        if mem[mem[(32 * idx) + 128] + 32] <= 0:
            revert with 0, 'amount is 0.'
        mem[0] = mem[mem[(32 * idx) + 128] + 12 len 20]
        mem[32] = 2
        if sub_58cf77fa[mem[0]]:
            revert with 0, 'has been dropped.'
        _59 = mem[mem[(32 * idx) + 128] + 32]
        mem[0] = mem[mem[(32 * idx) + 128] + 12 len 20]
        mem[32] = 2
        sub_58cf77fa[mem[0]] = _59
        if sub_2499f61c > -mem[mem[(32 * idx) + 128] + 32] - 1:
            revert with 'NH{q', 17
        sub_2499f61c += mem[mem[(32 * idx) + 128] + 32]
        _65 = mem[mem[(32 * idx) + 128]]
        _66 = mem[mem[(32 * idx) + 128] + 32]
        mem[mem[64]] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(_65)
        mem[mem[64] + 36] = _66
        require ext_code.size(airdropTokenAddress)
        call airdropTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(_65), _66
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        _50 = mem[96]
        idx = idx + 1
        continue 
}



}
