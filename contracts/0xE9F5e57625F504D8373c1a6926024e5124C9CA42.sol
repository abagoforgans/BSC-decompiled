contract main {




// =====================  Runtime code  =====================


address aggregatorAddress;
address adminAddress;
address proposedAdminAddress;
mapping of struct stor3;

function aggregator() payable {
    return aggregatorAddress
}

function proposedAdmin() payable {
    return proposedAdminAddress
}

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function claimAdministration() payable {
    if proposedAdminAddress != msg.sender:
        revert with 0, 'Not proposed admin.'
    adminAddress = proposedAdminAddress
    proposedAdminAddress = 0
}

function setAggregator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, 'require admin'
    aggregatorAddress = arg1
}

function proposeNewAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, 'require admin'
    proposedAdminAddress = arg1
}

function pairs(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[128] = stor3[arg1].field_0
    idx = 128
    s = 0
    while stor3[arg1].length + 96 > idx:
        mem[idx + 32] = stor3[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor3[arg1].length, data=mem[128 len ceil32(stor3[arg1].length)]), stor3[arg1].field_256
}

function sub_3fa9e882(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == arg3
    if adminAddress != msg.sender:
        revert with 0, 'require admin'
    stor3[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
    stor3[address(arg1)].field_256 = arg3
}

function get(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not Mask(255, 1, stor3[address(arg1)].field_0 and (256 * not stor3[address(arg1)].field_0) - 1):
        return 0
    mem[96] = 1
    mem[32] = 3
    mem[64] = ceil32(stor3[address(arg1)].length) + 192
    mem[160] = stor3[address(arg1)].length
    mem[0] = sha3(address(arg1), 3)
    mem[192] = stor3[address(arg1)].field_0
    idx = 192
    s = 0
    while stor3[address(arg1)].length + 160 > idx:
        mem[idx + 32] = stor3[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[128] = 160
    mem[ceil32(stor3[address(arg1)].length) + 192] = 0xd486151b00000000000000000000000000000000000000000000000000000000
    mem[ceil32(stor3[address(arg1)].length) + 196] = 32
    mem[ceil32(stor3[address(arg1)].length) + 228] = 1
    idx = 0
    s = 128
    t = ceil32(stor3[address(arg1)].length) + (32 * mem[96]) + 260
    u = ceil32(stor3[address(arg1)].length) + 260
    while idx < 1:
        mem[u] = t + -ceil32(stor3[address(arg1)].length) - 260
        _117 = mem[s]
        _127 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        while v < _127:
            mem[v + t + 32] = mem[v + _117 + 32]
            v = v + 32
            continue 
        if ceil32(_127) > _127:
            mem[t + _127 + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_127) + 32
        u = u + 32
        continue 
    require ext_code.size(aggregatorAddress)
    staticcall aggregatorAddress.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len t + -mem[64] - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _129 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _130 = mem[_129]
    require mem[_129] <= test266151307()
    require _129 + mem[_129] + 31 < _129 + return_data.size
    _131 = mem[_129 + mem[_129]]
    require mem[_129 + mem[_129]] <= test266151307()
    require (32 * mem[_129 + mem[_129]]) + 32 >= 0 and _129 + ceil32(return_data.size) + (32 * mem[_129 + mem[_129]]) + 32 <= test266151307()
    mem[64] = _129 + ceil32(return_data.size) + (32 * mem[_129 + mem[_129]]) + 32
    mem[_129 + ceil32(return_data.size)] = _131
    require _130 + (32 * _131) + 32 <= return_data.size
    idx = 0
    s = _129 + _130 + 32
    t = _129 + ceil32(return_data.size) + 32
    while idx < _131:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[32] = 3
    require 0 < _131
    if not mem[_129 + ceil32(return_data.size) + 32]:
        return 0, 1
    require 10^(-stor3[address(arg1)].field_256 + 18) * mem[_129 + ceil32(return_data.size) + 32] / mem[_129 + ceil32(return_data.size) + 32] == 10^(-stor3[address(arg1)].field_256 + 18)
    mem[mem[64]] = 10^(-stor3[address(arg1)].field_256 + 18) * mem[_129 + ceil32(return_data.size) + 32]
    return mem[mem[64]], 1
}



}
