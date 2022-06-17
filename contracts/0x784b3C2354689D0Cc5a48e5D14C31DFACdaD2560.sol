contract main {




// =====================  Runtime code  =====================


#
#  - compileAttributes(uint256 arg1)
#  - initialize()
#  - sub_9c504400(?)
#  - tokenURI(uint256 arg1)
#
const sub_f48edb9f(?) = 32, 64, 0xc74142434445464748494a4b4c4d4e4f505152535455565758595a6162636465666768696a6b6c6d6e6f707172737475767778797a303132333435363738392b


address owner;
address minerAddress;
array of uint256 sub_4b90a558;
array of uint256 sub_9887a73e;

function miner() payable {
    return minerAddress
}

function sub_4b90a558(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 8
    return sub_4b90a558[arg1]
}

function owner() payable {
    return owner
}

function sub_9887a73e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 5
    return sub_9887a73e[arg1]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setMiner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    minerAddress = arg1
}

function sub_eb7fc044(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == uint8(arg3)
    require arg4 == uint8(arg4)
    if uint8(arg3) != 0:
        return '', 0
    return '', 0
}

function sub_463fc58e(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == uint8(arg3)
    require arg4 == uint8(arg4)
    if uint8(arg1):
        if uint8(arg1) != 1:
            return '', 0
        else:
            return '', 0
    else:
        return '', 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_2ff1e5aa(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == uint8(arg3)
    require arg4 == uint8(arg4)
    if 0 == uint8(arg2):
        return '', 0
    if 1 == uint8(arg2):
        return '', 0
    if 2 == uint8(arg2):
        return 'Sandworm', 0
    if uint8(arg2) != 3:
        return '', 0
    return 'Bene Gesserit #', 0
}

function sub_e239dd89(?) payable {
    require calldata.size - 4 >= 416
    require 35 < calldata.size
    require 260 <= calldata.size
    idx = 0
    s = 4
    t = 96
    while idx < 8:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require 291 < calldata.size
    require calldata.size >= 420
    idx = 0
    s = 260
    t = 352
    while idx < 5:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_4b90a558.length = mem[96]
    s = 105
    idx = 128
    while 352 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 112
    while 112 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    sub_9887a73e.length = mem[352]
    s = 113
    idx = 384
    while 512 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 117
    while 117 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
}



}
