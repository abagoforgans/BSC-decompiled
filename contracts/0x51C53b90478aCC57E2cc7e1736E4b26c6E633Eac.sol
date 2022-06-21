contract main {




// =====================  Runtime code  =====================


address owner;
array of address sub_941658ef;

function sub_27b38318(?) payable {
    require calldata.size - 4 >= 32
    if arg1 >= sub_941658ef.length:
        revert with 0, 'Index is over'
    return sub_941658ef[arg1]
}

function owner() payable {
    return owner
}

function sub_941658ef(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_941658ef.length
    return sub_941658ef[arg1]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_ee8e096d(?) payable {
    require calldata.size - 4 >= 416
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(('cd', 4).length)) + 97 < 96 or ceil32(ceil32(('cd', 4).length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    mem[128 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
    mem[('cd', 4).length + 128] = 0
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(('cd', 36).length)) + 98 < 97 or ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(ceil32(('cd', 4).length)) + 97] = ('cd', 36).length
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    mem[ceil32(ceil32(('cd', 4).length)) + 129 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
    mem[ceil32(ceil32(('cd', 4).length)) + ('cd', 36).length + 129] = 0
    require 131 < calldata.size
    if not bool(ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 226 <= test266151307()):
        revert with 0, 65
    require 228 <= calldata.size
    idx = 0
    s = 100
    t = ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 98
    while idx < 4:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require 259 < calldata.size
    if not bool(ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 322 <= test266151307()):
        revert with 0, 65
    require calldata.size >= 324
    idx = 0
    s = 228
    t = ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 226
    while idx < 3:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[356] == address(cd[356])
    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 322 len 18166] = code.data[2069 len 18166]
    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 18488] = 416
    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 18904] = mem[96]
    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 18936 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) > mem[96]:
        mem[ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + mem[96] + 18936] = 0
    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 18520] = ceil32(mem[96]) + 448
    mem[ceil32(mem[96]) + ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 18936] = mem[ceil32(ceil32(('cd', 4).length)) + 97]
    mem[ceil32(mem[96]) + ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 18968 len ceil32(mem[ceil32(ceil32(('cd', 4).length)) + 97])] = mem[ceil32(ceil32(('cd', 4).length)) + 129 len ceil32(mem[ceil32(ceil32(('cd', 4).length)) + 97])]
    if ceil32(mem[ceil32(ceil32(('cd', 4).length)) + 97]) > mem[ceil32(ceil32(('cd', 4).length)) + 97]:
        mem[ceil32(mem[96]) + ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + mem[ceil32(ceil32(('cd', 4).length)) + 97] + 18968] = 0
    idx = 0
    s = ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 98
    t = ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 18584
    while idx < 4:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    create contract with 0 wei
                    code: code.data[2069 len 18166], 416, ceil32(mem[96]) + 448, cd[68], mem[ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 18584 len 128], mem[ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 226 len 96], cd[324], address(cd[356]), cd[388], mem[96], mem[ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 18936 len ceil32(mem[ceil32(ceil32(('cd', 4).length)) + 97]) + ceil32(mem[96]) + 32]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    sub_941658ef.length++
    sub_941658ef[sub_941658ef.length] = address(create.new_address)
    emit 0xf5798d1a: address(create.new_address)
    return address(create.new_address)
}



}
