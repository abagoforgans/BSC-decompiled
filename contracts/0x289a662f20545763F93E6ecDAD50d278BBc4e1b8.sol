contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
array of address instantiations;
address stor2;

function isInstantiation(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor0[arg1])
}

function instantiations(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 < uint256(instantiations[arg1])
    return address(instantiations[arg1][arg2])
}

function getInstantiationCount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return uint256(instantiations[address(arg1)])
}

function _fallback() payable {
    revert
}

function sub_c35fee4b(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == uint8(cd[36])
    require cd[68] == uint8(cd[68])
    require cd[100] == cd[100]
    mem[floor32(('cd', 4).length) + 97 len 15321] = code.data[2423 len 15321]
    mem[floor32(('cd', 4).length) + 15418] = 128
    mem[floor32(('cd', 4).length) + 15546] = ('cd', 4).length
    idx = 0
    s = 128
    t = mem[64] + 15481
    while idx < ('cd', 4).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 4).length) + 15450] = uint8(cd[36])
    mem[floor32(('cd', 4).length) + 15482] = uint8(cd[68])
    mem[floor32(('cd', 4).length) + 15514] = cd[100]
    create contract with 0 wei
                    code: mem[mem[64] len floor32(('cd', 4).length) + (32 * ('cd', 4).length) + -mem[64] + 15578]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor2 = address(create.new_address)
    stor0[stor2] = 1
    uint256(instantiations[address(msg.sender)])++
    address(instantiations[address(msg.sender)][uint256(instantiations[address(msg.sender)])]) = stor2
    emit ContractInstantiation(msg.sender, stor2);
    return stor2
}



}
