contract main {




// =====================  Runtime code  =====================


#
#  - retireDino(uint256 arg1, bool arg2)
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
#  - initialize()
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#  - tokenURI(uint256 arg1)
#
array of struct stor101;
array of struct stor102;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor106;
address ceoAddress;
address cfoAddress;
address cooAddress;
address spawningManagerAddress;
mapping of uint8 stor155;
uint8 paused;
array of struct stor157;
array of struct dino;
array of uint256 stor159;
array of uint256 stor160;
uint256 stor161;

function cfoAddress() payable {
    return cfoAddress
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function ceoAddress() payable {
    return ceoAddress
}

function totalSupply() payable {
    return dino.length
}

function paused() payable {
    return bool(paused)
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function getDino(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= dino.length:
        revert with 'NH{q', 50
    return dino[arg1].field_0, dino[arg1].field_256, dino[arg1].field_512, dino[arg1].field_768, dino[arg1].field_896
}

function spawningManager() payable {
    return spawningManagerAddress
}

function cooAddress() payable {
    return cooAddress
}

function whitelistedSpawner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor155[arg1])
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor106[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function unpause() payable {
    if ceoAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Permission  denied, only allow CEO'
    require paused
    paused = 0
}

function setCEO(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ceoAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Permission  denied, only allow CEO'
    require arg1
    ceoAddress = arg1
}

function setCOO(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ceoAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Permission  denied, only allow CEO'
    require arg1
    cooAddress = arg1
}

function setCFO(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ceoAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Permission  denied, only allow CEO'
    require arg1
    cfoAddress = arg1
}

function pause() payable {
    if cooAddress != msg.sender:
        if ceoAddress != msg.sender:
            if cfoAddress != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Permission  denied, only allow CLevel'
    require not paused
    paused = 1
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor106[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function sub_f6d372a7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if cooAddress != msg.sender:
        if ceoAddress != msg.sender:
            if cfoAddress != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Permission  denied, only allow CLevel'
    stor161 = arg1
}

function setSpawner(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if spawningManagerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Permission  denied, only allow spawning manager'
    stor155[address(arg1)] = uint8(arg2)
}

function setSpawningManager(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if cooAddress != msg.sender:
        if ceoAddress != msg.sender:
            if cfoAddress != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Permission  denied, only allow CLevel'
    spawningManagerAddress = arg1
}

function evolveDino(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor155[address(msg.sender)]:
        require msg.sender == spawningManagerAddress
    if arg2 < 1111:
        revert with 0, 'Dino genes is not valid'
    if arg1 >= dino.length:
        revert with 'NH{q', 50
    dino[arg1].field_0 = arg2
    emit DinoEvolved(dino[arg1].field_0, arg2, arg1);
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x80ac58cd00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x5b5e139f00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function updateDino(uint256 arg1, uint256 arg2, uint128 arg3, uint128 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if not stor155[address(msg.sender)]:
        require msg.sender == spawningManagerAddress
    if arg2 < 1111:
        revert with 0, 'Dino genes is not valid'
    if arg3 != 1:
        if arg3 != 2:
            revert with 0, 'Gender is not valid'
    if arg4 < 1:
        revert with 0, 'Generation is not valid'
    if arg1 >= dino.length:
        revert with 'NH{q', 50
    dino[arg1].field_0 = arg2
    dino[arg1].field_768 = arg3
    dino[arg1].field_896 = arg4
    emit DinoUpdated(arg1);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor106[stor103[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function getDinosByOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor157[address(arg1)].field_0:
        mem[128] = stor157[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * stor157[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = stor157[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor157[address(arg1)].field_0, data=mem[128 len 32 * stor157[address(arg1)].field_0])
    mem[(32 * stor157[address(arg1)].field_0) + 128] = 32
    mem[(32 * stor157[address(arg1)].field_0) + 160] = stor157[address(arg1)].field_0
    mem[(32 * stor157[address(arg1)].field_0) + 192 len 32 * stor157[address(arg1)].field_0] = mem[128 len 32 * stor157[address(arg1)].field_0]
    return memory
      from (32 * stor157[address(arg1)].field_0) + 128
       len (96 * stor157[address(arg1)].field_0) + 64
}

function sub_7851764d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if cooAddress != msg.sender:
        if ceoAddress != msg.sender:
            if cfoAddress != msg.sender:
                revert with 0, 'Permission  denied, only allow CLevel'
    if bool(stor160.length):
        if bool(stor160.length) == stor160.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor160[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor160.length = 0
            idx = 0
            while stor160.length.field_1 + 31 / 32 > idx:
                stor160[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor160.length) == stor160.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor160[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor160.length = 0
            idx = 0
            while stor160.length.field_1 + 31 / 32 > idx:
                stor160[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_edebb8fa(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if cooAddress != msg.sender:
        if ceoAddress != msg.sender:
            if cfoAddress != msg.sender:
                revert with 0, 'Permission  denied, only allow CLevel'
    if bool(stor159.length):
        if bool(stor159.length) == stor159.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor159[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor159.length = 0
            idx = 0
            while stor159.length.field_1 + 31 / 32 > idx:
                stor159[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor159.length) == stor159.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor159[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor159.length = 0
            idx = 0
            while stor159.length.field_1 + 31 / 32 > idx:
                stor159[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function createDino(uint256 arg1, address arg2, uint128 arg3, uint128 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if not stor155[address(msg.sender)]:
        require msg.sender == spawningManagerAddress
    if arg1 < 1111:
        revert with 0, 'Dino genes is not valid'
    if not arg2:
        revert with 0, 'Address is not valid'
    if arg3 != 1:
        if arg3 != 2:
            revert with 0, 'Gender should be 1 or 2'
    if arg4 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Generation number should be greater than 0'
    if block.timestamp > -stor161 - 1:
        revert with 'NH{q', 17
    dino.length++
    dino[dino.length].field_0 = arg1
    dino[dino.length].field_256 = block.timestamp
    dino[dino.length].field_512 = block.timestamp + stor161
    dino[dino.length].field_768 = arg3
    dino[dino.length].field_896 = arg4
    if dino.length < 1:
        revert with 'NH{q', 17
    if not arg2:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor158.length - 1]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    ownerOf[stor158.length - 1] = arg2
    emit Transfer(0, arg2, dino.length - 1);
    stor157[address(arg2)].field_0++
    stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 = dino.length - 1
    emit DinoSpawned(arg1, arg3 << 128, arg4, dino.length - 1, arg2);
    return (dino.length - 1)
}

function name() payable {
    if bool(stor101.length):
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor101.length):
            if bool(stor101.length) == stor101.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor101.length.field_1:
                if 31 < stor101.length.field_1:
                    mem[128] = uint256(stor101.field_0)
                    idx = 128
                    s = 0
                    while stor101.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor101[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor101.length.field_1), data=mem[128 len ceil32(stor101.length.field_1)])
                mem[128] = 256 * stor101.length.field_8
        else:
            if bool(stor101.length) == stor101.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor101.length.field_1:
                if 31 < stor101.length.field_1:
                    mem[128] = uint256(stor101.field_0)
                    idx = 128
                    s = 0
                    while stor101.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor101[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor101.length.field_1), data=mem[128 len ceil32(stor101.length.field_1)])
                mem[128] = 256 * stor101.length.field_8
        mem[ceil32(stor101.length.field_1) + 192 len ceil32(stor101.length.field_1)] = mem[128 len ceil32(stor101.length.field_1)]
        if ceil32(stor101.length.field_1) > stor101.length.field_1:
            mem[ceil32(stor101.length.field_1) + stor101.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor101.length.field_1), data=mem[128 len ceil32(stor101.length.field_1)], mem[(2 * ceil32(stor101.length.field_1)) + 192 len 2 * ceil32(stor101.length.field_1)]), 
    if bool(stor101.length) == stor101.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor101.length):
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor101.length.field_1:
            if 31 < stor101.length.field_1:
                mem[128] = uint256(stor101.field_0)
                idx = 128
                s = 0
                while stor101.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor101[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1)])
            mem[128] = 256 * stor101.length.field_8
    else:
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor101.length.field_1:
            if 31 < stor101.length.field_1:
                mem[128] = uint256(stor101.field_0)
                idx = 128
                s = 0
                while stor101.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor101[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1)])
            mem[128] = 256 * stor101.length.field_8
    mem[ceil32(stor101.length.field_1) + 192 len ceil32(stor101.length.field_1)] = mem[128 len ceil32(stor101.length.field_1)]
    if ceil32(stor101.length.field_1) > stor101.length.field_1:
        mem[ceil32(stor101.length.field_1) + stor101.length.field_1 + 192] = 0
    return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1)], mem[(2 * ceil32(stor101.length.field_1)) + 192 len 2 * ceil32(stor101.length.field_1)]), 
}

function symbol() payable {
    if bool(stor102.length):
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor102.length):
            if bool(stor102.length) == stor102.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor102.length.field_1:
                if 31 < stor102.length.field_1:
                    mem[128] = uint256(stor102.field_0)
                    idx = 128
                    s = 0
                    while stor102.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor102[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor102.length.field_1), data=mem[128 len ceil32(stor102.length.field_1)])
                mem[128] = 256 * stor102.length.field_8
        else:
            if bool(stor102.length) == stor102.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor102.length.field_1:
                if 31 < stor102.length.field_1:
                    mem[128] = uint256(stor102.field_0)
                    idx = 128
                    s = 0
                    while stor102.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor102[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor102.length.field_1), data=mem[128 len ceil32(stor102.length.field_1)])
                mem[128] = 256 * stor102.length.field_8
        mem[ceil32(stor102.length.field_1) + 192 len ceil32(stor102.length.field_1)] = mem[128 len ceil32(stor102.length.field_1)]
        if ceil32(stor102.length.field_1) > stor102.length.field_1:
            mem[ceil32(stor102.length.field_1) + stor102.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor102.length.field_1), data=mem[128 len ceil32(stor102.length.field_1)], mem[(2 * ceil32(stor102.length.field_1)) + 192 len 2 * ceil32(stor102.length.field_1)]), 
    if bool(stor102.length) == stor102.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor102.length):
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor102.length.field_1:
            if 31 < stor102.length.field_1:
                mem[128] = uint256(stor102.field_0)
                idx = 128
                s = 0
                while stor102.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor102[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1)])
            mem[128] = 256 * stor102.length.field_8
    else:
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor102.length.field_1:
            if 31 < stor102.length.field_1:
                mem[128] = uint256(stor102.field_0)
                idx = 128
                s = 0
                while stor102.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor102[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1)])
            mem[128] = 256 * stor102.length.field_8
    mem[ceil32(stor102.length.field_1) + 192 len ceil32(stor102.length.field_1)] = mem[128 len ceil32(stor102.length.field_1)]
    if ceil32(stor102.length.field_1) > stor102.length.field_1:
        mem[ceil32(stor102.length.field_1) + stor102.length.field_1 + 192] = 0
    return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1)], mem[(2 * ceil32(stor102.length.field_1)) + 192 len 2 * ceil32(stor102.length.field_1)]), 
}

function sub_1741fb72(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 36).length) + 97
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            if mem[(32 * idx) + 128] != cd[4]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if var74003 < 1:
                revert with 'NH{q', 17
            if var78002 < var78001:
                if var90003 > -2:
                    revert with 'NH{q', 17
                idx = var92002 + 1
                s = var92006
                while idx < ('cd', 36).length:
                    if s >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    mem[(32 * s) + 128] = mem[(32 * idx) + 128]
                    if s == -1:
                        revert with 'NH{q', 17
                    if ('cd', 36).length < 1:
                        revert with 'NH{q', 17
                    if s + 1 < ('cd', 36).length - 1:
                        if s + 1 > -2:
                            revert with 'NH{q', 17
                        idx = s + 2
                        s = s + 1
                        continue 
                    if ('cd', 36).length < 1:
                        revert with 'NH{q', 17
                    if ('cd', 36).length - 1 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    mem[(32 * ('cd', 36).length - 1) + 128] = 0
                    if ('cd', 36).length < 1:
                        revert with 'NH{q', 17
                    if ('cd', 36).length - 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[floor32(('cd', 36).length) + 97] = ('cd', 36).length - 1
                    if ('cd', 36).length - 1:
                        mem[floor32(('cd', 36).length) + 129 len 32 * ('cd', 36).length - 1] = call.data[calldata.size len 32 * ('cd', 36).length - 1]
                    idx = 0
                    while idx < mem[floor32(('cd', 36).length) + 97]:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx >= mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(('cd', 36).length) + 129] = mem[(32 * idx) + 128]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    # nil
                revert with 'NH{q', 50
            if ('cd', 36).length < 1:
                revert with 'NH{q', 17
            if ('cd', 36).length - 1 >= ('cd', 36).length:
                revert with 'NH{q', 50
            mem[(32 * ('cd', 36).length - 1) + 128] = 0
            if ('cd', 36).length < 1:
                revert with 'NH{q', 17
            if ('cd', 36).length - 1 > test266151307():
                revert with 'NH{q', 65
            mem[floor32(('cd', 36).length) + 97] = ('cd', 36).length - 1
            mem[64] = floor32(('cd', 36).length) + (32 * ('cd', 36).length - 1) + 129
            if not ('cd', 36).length - 1:
                idx = 0
                while idx < mem[floor32(('cd', 36).length) + 97]:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[floor32(('cd', 36).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 36).length) + 129] = mem[(32 * idx) + 128]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _330 = mem[64]
                mem[mem[64]] = 32
                _332 = mem[floor32(('cd', 36).length) + 97]
                mem[mem[64] + 32] = mem[floor32(('cd', 36).length) + 97]
                idx = 0
                s = floor32(('cd', 36).length) + 129
                t = mem[64] + 64
                while idx < _332:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _330 + (32 * _332) + -mem[64] + 64
            mem[floor32(('cd', 36).length) + 129 len 32 * ('cd', 36).length - 1] = call.data[calldata.size len 32 * ('cd', 36).length - 1]
            idx = 0
            while idx < mem[floor32(('cd', 36).length) + 97]:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx >= mem[floor32(('cd', 36).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 36).length) + 129] = mem[(32 * idx) + 128]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _331 = mem[64]
            mem[mem[64]] = 32
            _333 = mem[floor32(('cd', 36).length) + 97]
            mem[mem[64] + 32] = mem[floor32(('cd', 36).length) + 97]
            idx = 0
            s = floor32(('cd', 36).length) + 129
            t = mem[64] + 64
            while idx < _333:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _331 + (32 * _333) + -mem[64] + 64
    mem[floor32(('cd', 36).length) + 97] = 32
    mem[floor32(('cd', 36).length) + 129] = ('cd', 36).length
    mem[floor32(('cd', 36).length) + 161 len 32 * ('cd', 36).length] = mem[128 len 32 * ('cd', 36).length]
    return Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + 161 len 32 * ('cd', 36).length])
}



}
