contract main {




// =====================  Runtime code  =====================


#
#  - rescue()
#  - addManyToBarnAndPack(address arg1, uint16[] arg2)
#  - sub_a0d7f1e4(?)
#  - sub_bb9d7d71(?)
#
const sub_5dc2473c(?) = 400000000 * 10^18

const sub_6c4672d7(?) = 20


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
uint8 paused;
address minerAddress;
address spiceAddress;
mapping of struct barn;
array of struct pack;
mapping of uint256 packIndices;
uint256 sub_5f596bed;
uint256 unaccountedRewards;
uint128 stor158;
uint256 sub_bc633bf2;
array of uint256 sub_637d0d7b;
uint256 MINIMUM_TO_EXIT;
uint256 sub_2d8c2ef1;
array of uint256 sub_39b4dbcc;
uint256 lastClaimTimestamp;
uint8 rescueEnabled;
uint8 maxPerAmount;
address shieldAddress; offset 8
array of uint256 stor181;
array of uint256 sub_3f30e8d8;
address sub_7d4cd2b5Address;
address owner;

function sub_2d8c2ef1(?) payable {
    return sub_2d8c2ef1
}

function miner() payable {
    return minerAddress
}

function MINIMUM_TO_EXIT() payable {
    return MINIMUM_TO_EXIT
}

function barn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return uint16(barn[arg1].field_0), Mask(80, 0, barn[arg1].field_0), address(barn[arg1].field_96)
}

function sub_39b4dbcc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 8
    return sub_39b4dbcc[arg1]
}

function rescueEnabled() payable {
    return bool(rescueEnabled)
}

function sub_3f30e8d8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 5
    return sub_3f30e8d8[arg1]
}

function spice() payable {
    return spiceAddress
}

function sub_50d424bd(?) payable {
    return address(stor181.length)
}

function paused() payable {
    return bool(paused)
}

function sub_5f596bed(?) payable {
    return sub_5f596bed
}

function lastClaimTimestamp() payable {
    return lastClaimTimestamp
}

function sub_637d0d7b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 8
    return sub_637d0d7b[arg1]
}

function packIndices(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return packIndices[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return uint256(balanceOf[address(arg1)].field_0)
}

function shield() payable {
    return shieldAddress
}

function sub_7544385a(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < uint256(balanceOf[arg1].field_0)
    return sub_7544385a[uint8(arg2)]
}

function sub_7d4cd2b5(?) payable {
    return sub_7d4cd2b5Address
}

function owner() payable {
    return owner
}

function sub_bc633bf2(?) payable {
    return uint256(sub_bc633bf2)
}

function unaccountedRewards() payable {
    return unaccountedRewards
}

function pack(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < uint256(pack[arg1].field_0)
    return uint16(pack[arg1][arg2].field_0), Mask(80, 0, pack[arg1][arg2].field_0), address(pack[arg1][arg2].field_96)
}

function maxPerAmount() payable {
    return maxPerAmount
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

function sub_fb4c96cc(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    MINIMUM_TO_EXIT = arg1
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function setRescueEnabled(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rescueEnabled = uint8(arg1)
}

function sub_39e31a25(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_7d4cd2b5Address = address(arg1)
}

function setMaxPerAmount(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1
    require arg1 <= 100
    maxPerAmount = arg1
}

function setShield(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Invalid address'
    shieldAddress = arg1
}

function sub_6e554e52(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'Invalid address'
    address(stor181.length) = address(arg1)
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

function sub_6bac56cc(?) payable {
    require calldata.size - 4 >= 32
    if msg.sender != tx.origin:
        revert with 0, 'Only EOA'
    if address(barn[arg1].field_96) != msg.sender:
        revert with 0, 'No Auth'
    require ext_code.size(shieldAddress)
    call shieldAddress.0x21a3e942 with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_05a58a3f(?) payable {
    require calldata.size - 4 >= 160
    require 35 < calldata.size
    require calldata.size >= 164
    idx = 0
    s = 4
    t = 96
    while idx < 5:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < 5:
        sub_3f30e8d8[idx] = mem[(32 * idx) + 96]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_cea6d380(?) payable {
    require calldata.size - 4 >= 256
    require 35 < calldata.size
    require calldata.size >= 260
    s = 4
    t = 96
    idx = 0
    while idx < 8:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < 8:
        if mem[(32 * idx) + 96] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if idx >= 8:
            revert with 0, 50
        sub_637d0d7b[idx] = 10^18 * mem[(32 * idx) + 96]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_af174784(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(minerAddress)
    staticcall minerAddress.getTokenTraits(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if not bool(ceil32(return_data.size) + 224 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_call.return_data[32] == ext_call.return_data[63 len 1]
    require ext_call.return_data[64] == ext_call.return_data[95 len 1]
    require ext_call.return_data[96] == ext_call.return_data[127 len 1]
    return ext_call.return_data[63 len 1]
}

function sub_bec98691(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(minerAddress)
    staticcall minerAddress.getTokenTraits(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if not bool(ceil32(return_data.size) + 224 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_call.return_data[32] == ext_call.return_data[63 len 1]
    require ext_call.return_data[64] == ext_call.return_data[95 len 1]
    require ext_call.return_data[96] == ext_call.return_data[127 len 1]
    return ext_call.return_data[127 len 1]
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(minerAddress)
    staticcall minerAddress.getTokenTraits(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if not bool(ceil32(return_data.size) + 224 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_call.return_data[32] == ext_call.return_data[63 len 1]
    require ext_call.return_data[64] == ext_call.return_data[95 len 1]
    require ext_call.return_data[96] == ext_call.return_data[127 len 1]
    if 0 == ext_call.return_data[63 len 1]:
        return address(barn[arg1].field_96)
    if packIndices[arg1] >= uint256(pack[ext_call.return_data[127 len 1]].field_0):
        revert with 0, 50
    return address(pack[ext_call.return_data[127 len 1]][stor155[arg1]].field_96)
}

function sub_453cb376(?) payable {
    require calldata.size - 4 >= 32
    if sub_5f596bed != 0:
        if not sub_5f596bed:
            revert with 0, 18
        idx = 1
        s = 0
        while idx <= 5:
            if idx < 1:
                revert with 0, 17
            if idx - 1 >= 5:
                revert with 0, 50
            mem[0] = idx
            mem[32] = 154
            if uint256(pack[idx].field_0) and uint256(stor181[idx]) > -1 / uint256(pack[idx].field_0):
                revert with 0, 17
            if s > !(uint256(pack[idx].field_0) * uint256(stor181[idx])):
                revert with 0, 17
            if arg1 % sub_5f596bed >= s + (uint256(pack[idx].field_0) * uint256(stor181[idx])):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (uint256(pack[idx].field_0) * uint256(stor181[idx]))
                continue 
            if not uint256(pack[idx].field_0):
                revert with 0, 18
            if Mask(224, 0, arg1) >> 32 % uint256(pack[idx].field_0) >= uint256(pack[idx].field_0):
                revert with 0, 50
            return address(pack[idx][Mask(224, 0, arg1) >> 32 % uint256(pack[idx].field_0)].field_96)
        return 0
    else:
        return 0
}

function pendingRewards(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(minerAddress)
    staticcall minerAddress.getTokenTraits(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if not bool(ceil32(return_data.size) + 224 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_call.return_data[32] == ext_call.return_data[63 len 1]
    require ext_call.return_data[64] == ext_call.return_data[95 len 1]
    require ext_call.return_data[96] == ext_call.return_data[127 len 1]
    if 0 == ext_call.return_data[127 len 1]:
        return 0
    if ext_call.return_data[63 len 1] != 0:
        if packIndices[arg1] >= uint256(pack[ext_call.return_data[127 len 1]].field_0):
            revert with 0, 50
        if not address(pack[ext_call.return_data[127 len 1]][stor155[arg1]].field_96):
            return 0
        if ext_call.return_data[127 len 1] < 1:
            revert with 0, 17
        if uint8(ext_call.return_data[127 len 1] - 1) >= 5:
            revert with 0, 50
        if uint256(sub_bc633bf2) < Mask(80, 0, pack[ext_call.return_data[127 len 1]][stor155[arg1]].field_16):
            revert with 0, 17
        if sub_3f30e8d8[uint8(ext_call.return_data[127 len 1] - 1)] and uint256(sub_bc633bf2) - Mask(80, 0, pack[ext_call.return_data[127 len 1]][stor155[arg1]].field_16) > -1 / sub_3f30e8d8[uint8(ext_call.return_data[127 len 1] - 1)]:
            revert with 0, 17
        return ((uint256(sub_bc633bf2) * sub_3f30e8d8[uint8(ext_call.return_data[127 len 1] - 1)]) - (Mask(80, 0, pack[ext_call.return_data[127 len 1]][stor155[arg1]].field_0) * sub_3f30e8d8[uint8(ext_call.return_data[127 len 1] - 1)]))
    if not address(barn[arg1].field_96):
        return 0
    if sub_2d8c2ef1 < 400000000 * 10^18:
        if ext_call.return_data[127 len 1] < 1:
            revert with 0, 17
        if uint8(ext_call.return_data[127 len 1] - 1) >= 8:
            revert with 0, 50
        if block.timestamp < Mask(80, 0, barn[arg1].field_16):
            revert with 0, 17
        if block.timestamp - Mask(80, 0, barn[arg1].field_16) and sub_637d0d7b[uint8(ext_call.return_data[127 len 1] - 1)] > -1 / block.timestamp - Mask(80, 0, barn[arg1].field_16):
            revert with 0, 17
        if (block.timestamp * sub_637d0d7b[uint8(ext_call.return_data[127 len 1] - 1)]) - (Mask(80, 0, barn[arg1].field_16) * sub_637d0d7b[uint8(ext_call.return_data[127 len 1] - 1)]) / 24 * 3600 and 80 > -1 / (block.timestamp * sub_637d0d7b[uint8(ext_call.return_data[127 len 1] - 1)]) - (Mask(80, 0, barn[arg1].field_16) * sub_637d0d7b[uint8(ext_call.return_data[127 len 1] - 1)]) / 24 * 3600:
            revert with 0, 17
        return (80 * (block.timestamp * sub_637d0d7b[uint8(ext_call.return_data[127 len 1] - 1)]) - (Mask(80, 0, barn[arg1].field_0) * sub_637d0d7b[uint8(ext_call.return_data[127 len 1] - 1)]) / 24 * 3600 / 100)
    if Mask(80, 0, barn[arg1].field_16) > lastClaimTimestamp:
        return 0
    if ext_call.return_data[127 len 1] < 1:
        revert with 0, 17
    if uint8(ext_call.return_data[127 len 1] - 1) >= 8:
        revert with 0, 50
    if lastClaimTimestamp < Mask(80, 0, barn[arg1].field_16):
        revert with 0, 17
    if lastClaimTimestamp - Mask(80, 0, barn[arg1].field_16) and sub_637d0d7b[uint8(ext_call.return_data[127 len 1] - 1)] > -1 / lastClaimTimestamp - Mask(80, 0, barn[arg1].field_16):
        revert with 0, 17
    if (lastClaimTimestamp * sub_637d0d7b[uint8(ext_call.return_data[127 len 1] - 1)]) - (Mask(80, 0, barn[arg1].field_16) * sub_637d0d7b[uint8(ext_call.return_data[127 len 1] - 1)]) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_637d0d7b[uint8(ext_call.return_data[127 len 1] - 1)]) - (Mask(80, 0, barn[arg1].field_16) * sub_637d0d7b[uint8(ext_call.return_data[127 len 1] - 1)]) / 24 * 3600:
        revert with 0, 17
    return (80 * (lastClaimTimestamp * sub_637d0d7b[uint8(ext_call.return_data[127 len 1] - 1)]) - (Mask(80, 0, barn[arg1].field_0) * sub_637d0d7b[uint8(ext_call.return_data[127 len 1] - 1)]) / 24 * 3600 / 100)
}

function initialize(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
    require arg1
    require arg2
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
        paused = 0
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
            paused = 0
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
                paused = 0
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                uint8(stor0.field_8) = 0
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    paused = 0
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    uint8(stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        paused = 0
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                        if uint8(stor0.field_8):
                            paused = 0
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            uint8(stor0.field_8) = 0
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                            if uint8(stor0.field_8):
                                paused = 0
                            else:
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                paused = 0
                                uint8(stor0.field_8) = 0
                                uint8(stor0.field_8) = 0
    minerAddress = arg1
    spiceAddress = arg2
    rescueEnabled = 0
    sub_5f596bed = 0
    unaccountedRewards = 0
    uint256(sub_bc633bf2) = 0
    maxPerAmount = 20
    mem[96] = 300 * 10^18
    mem[128] = 600 * 10^18
    mem[160] = 1200 * 10^18
    mem[192] = 2400 * 10^18
    mem[224] = 4800 * 10^18
    mem[256] = 7500 * 10^18
    mem[288] = 15000 * 10^18
    mem[320] = 10 * 10^18 * 3600
    s = 159
    idx = 96
    while 352 > idx:
        Mask(80, 0, stor[s].field_0) = mem[idx + 22 len 10]
        Mask(176, 0, stor[s].field_80) = 0
        s = s + 1
        idx = idx + 32
        continue 
    idx = 167
    while 167 > idx:
        uint256(stor[idx].field_0) = 0
        idx = idx + 1
        continue 
    mem[352] = 1
    mem[384] = 2
    mem[416] = 4
    mem[448] = 8
    mem[480] = 16
    s = 182
    idx = 352
    while 512 > idx:
        uint8(stor[s].field_0) = mem[idx + 31 len 1]
        Mask(248, 0, stor[s].field_8) = 0
        s = s + 1
        idx = idx + 32
        continue 
    idx = 187
    while 187 > idx:
        uint256(stor[idx].field_0) = 0
        idx = idx + 1
        continue 
    MINIMUM_TO_EXIT = 48 * 24 * 3600
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function sub_ae3945fd(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if uint16(arg1) <= 0:
        revert with 0, 'INVALID TOKEN ID'
    require ext_code.size(minerAddress)
    staticcall minerAddress.0x6352211e with:
            gas gas_remaining wei
           args uint16(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'AINT YO TOKEN'
    require ext_code.size(minerAddress)
    call minerAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), uint16(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(minerAddress)
    staticcall minerAddress.getTokenTraits(uint256 arg1) with:
            gas gas_remaining wei
           args uint16(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if not bool((2 * ceil32(return_data.size)) + 224 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_call.return_data[32] == ext_call.return_data[63 len 1]
    require ext_call.return_data[64] == ext_call.return_data[95 len 1]
    require ext_call.return_data[96] == ext_call.return_data[127 len 1]
    if paused:
        revert with 0, 'Pausable: paused'
    if ext_call.return_data[63 len 1]:
        require ext_code.size(minerAddress)
        staticcall minerAddress.getTokenTraits(uint256 arg1) with:
                gas gas_remaining wei
               args uint16(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        if not bool((4 * ceil32(return_data.size)) + 352 <= test266151307()):
            revert with 0, 65
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        require ext_call.return_data[32] == ext_call.return_data[63 len 1]
        require ext_call.return_data[64] == ext_call.return_data[95 len 1]
        require ext_call.return_data[96] == ext_call.return_data[127 len 1]
        if ext_call.return_data[127 len 1] <= 0:
            revert with 0, 'Invalid level'
        if ext_call.return_data[127 len 1] < 1:
            revert with 0, 17
        if uint8(ext_call.return_data[127 len 1] - 1) >= 5:
            revert with 0, 50
        if sub_5f596bed > !sub_3f30e8d8[uint8(ext_call.return_data[127 len 1] - 1)]:
            revert with 0, 17
        if sub_5f596bed + sub_3f30e8d8[uint8(ext_call.return_data[127 len 1] - 1)] < sub_5f596bed:
            revert with 0, 'SafeMath: addition overflow'
        sub_5f596bed += sub_3f30e8d8[uint8(ext_call.return_data[127 len 1] - 1)]
        packIndices[arg1 << 240] = uint256(pack[ext_call.return_data[127 len 1]].field_0)
        uint256(pack[ext_call.return_data[127 len 1]].field_0)++
        uint16(pack[ext_call.return_data[127 len 1]][uint256(pack[ext_call.return_data[127 len 1]].field_0)].field_0) = uint16(arg1)
        Mask(80, 0, pack[ext_call.return_data[127 len 1]][uint256(pack[ext_call.return_data[127 len 1]].field_0)].field_0) = Mask(80, 0, stor158)
        uint16(pack[ext_call.return_data[127 len 1]][uint256(pack[ext_call.return_data[127 len 1]].field_0)].field_80) = 0
        address(pack[ext_call.return_data[127 len 1]][uint256(pack[ext_call.return_data[127 len 1]].field_0)].field_96) = msg.sender
        emit TokenStaked(uint256(sub_bc633bf2), msg.sender, uint16(arg1));
    else:
        if lastClaimTimestamp < block.timestamp:
            if sub_2d8c2ef1 < 400000000 * 10^18:
                idx = 0
                while idx < 8:
                    if sub_39b4dbcc[idx]:
                        if idx >= 8:
                            revert with 0, 50
                        if block.timestamp < lastClaimTimestamp:
                            revert with 0, 17
                        if block.timestamp - lastClaimTimestamp and sub_39b4dbcc[idx] > -1 / block.timestamp - lastClaimTimestamp:
                            revert with 0, 17
                        if (block.timestamp * sub_39b4dbcc[idx]) - (lastClaimTimestamp * sub_39b4dbcc[idx]) and sub_637d0d7b[idx] > -1 / (block.timestamp * sub_39b4dbcc[idx]) - (lastClaimTimestamp * sub_39b4dbcc[idx]):
                            revert with 0, 17
                        if sub_2d8c2ef1 > !((block.timestamp * sub_39b4dbcc[idx] * sub_637d0d7b[idx]) - (lastClaimTimestamp * sub_39b4dbcc[idx] * sub_637d0d7b[idx]) / 24 * 3600):
                            revert with 0, 17
                        sub_2d8c2ef1 += (block.timestamp * sub_39b4dbcc[idx] * sub_637d0d7b[idx]) - (lastClaimTimestamp * sub_39b4dbcc[idx] * sub_637d0d7b[idx]) / 24 * 3600
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                lastClaimTimestamp = block.timestamp
        require ext_code.size(minerAddress)
        staticcall minerAddress.getTokenTraits(uint256 arg1) with:
                gas gas_remaining wei
               args uint16(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        if not bool((4 * ceil32(return_data.size)) + 352 <= test266151307()):
            revert with 0, 65
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        require ext_call.return_data[32] == ext_call.return_data[63 len 1]
        require ext_call.return_data[64] == ext_call.return_data[95 len 1]
        require ext_call.return_data[96] == ext_call.return_data[127 len 1]
        if ext_call.return_data[127 len 1] <= 0:
            revert with 0, 'Invalid level'
        uint16(barn[arg1 << 240].field_0) = uint16(arg1)
        Mask(80, 0, barn[arg1 << 240].field_16) = Mask(80, 0, block.timestamp)
        address(barn[arg1 << 240].field_96) = msg.sender
        if uint8(ext_call.return_data[96]) < 1:
            revert with 0, 17
        if uint8(uint8(ext_call.return_data[96]) - 1) >= 8:
            revert with 0, 50
        if sub_39b4dbcc[uint8(uint8(ext_call.return_data[96]) - 1)] > -2:
            revert with 0, 17
        sub_39b4dbcc[uint8(uint8(ext_call.return_data[96]) - 1)]++
        emit TokenStaked(block.timestamp, msg.sender, uint16(arg1));
    uint256(balanceOf[address(msg.sender)].field_0)++
    uint256(balanceOf[address(msg.sender)][Mask(252, 0, balanceOf[address(msg.sender)].field_4)].field_0) = uint16(arg1) * 256^(2 * balanceOf[address(msg.sender)].field_0 % 16) or uint256(balanceOf[address(msg.sender)][Mask(252, 0, balanceOf[address(msg.sender)].field_4)].field_0) and !(65535 * 256^(2 * balanceOf[address(msg.sender)].field_0 % 16))
    if sub_7d4cd2b5Address:
        require ext_code.size(sub_7d4cd2b5Address)
        call sub_7d4cd2b5Address.deposit(address arg1, uint16 arg2) with:
             gas gas_remaining wei
            args msg.sender, uint16(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_88a827c6(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == uint16(arg2)
    if paused:
        revert with 0, 'Pausable: paused'
    require msg.sender == sub_7d4cd2b5Address
    require ext_code.size(minerAddress)
    staticcall minerAddress.0x6352211e with:
            gas gas_remaining wei
           args uint16(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'AINT A PART OF THE PACK'
    if lastClaimTimestamp < block.timestamp:
        if sub_2d8c2ef1 < 400000000 * 10^18:
            idx = 0
            while idx < 8:
                if sub_39b4dbcc[idx]:
                    if idx >= 8:
                        revert with 0, 50
                    if block.timestamp < lastClaimTimestamp:
                        revert with 0, 17
                    if block.timestamp - lastClaimTimestamp and sub_39b4dbcc[idx] > -1 / block.timestamp - lastClaimTimestamp:
                        revert with 0, 17
                    if (block.timestamp * sub_39b4dbcc[idx]) - (lastClaimTimestamp * sub_39b4dbcc[idx]) and sub_637d0d7b[idx] > -1 / (block.timestamp * sub_39b4dbcc[idx]) - (lastClaimTimestamp * sub_39b4dbcc[idx]):
                        revert with 0, 17
                    if sub_2d8c2ef1 > !((block.timestamp * sub_39b4dbcc[idx] * sub_637d0d7b[idx]) - (lastClaimTimestamp * sub_39b4dbcc[idx] * sub_637d0d7b[idx]) / 24 * 3600):
                        revert with 0, 17
                    sub_2d8c2ef1 += (block.timestamp * sub_39b4dbcc[idx] * sub_637d0d7b[idx]) - (lastClaimTimestamp * sub_39b4dbcc[idx] * sub_637d0d7b[idx]) / 24 * 3600
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            lastClaimTimestamp = block.timestamp
    require ext_code.size(minerAddress)
    staticcall minerAddress.getTokenTraits(uint256 arg1) with:
            gas gas_remaining wei
           args uint16(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if not bool((2 * ceil32(return_data.size)) + 224 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_call.return_data[32] == ext_call.return_data[63 len 1]
    require ext_call.return_data[64] == ext_call.return_data[95 len 1]
    require ext_call.return_data[96] == ext_call.return_data[127 len 1]
    require ext_code.size(minerAddress)
    staticcall minerAddress.getTokenTraits(uint256 arg1) with:
            gas gas_remaining wei
           args uint16(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if ext_call.return_data[63 len 1]:
        if not bool((4 * ceil32(return_data.size)) + 352 <= test266151307()):
            revert with 0, 65
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        require ext_call.return_data[32] == ext_call.return_data[63 len 1]
        require ext_call.return_data[64] == ext_call.return_data[95 len 1]
        require ext_call.return_data[96] == ext_call.return_data[127 len 1]
        if packIndices[arg2 << 240] >= uint256(pack[ext_call.return_data[96] << 248].field_0):
            revert with 0, 50
        if uint8(ext_call.return_data[96]) < 1:
            revert with 0, 17
        if uint8(uint8(ext_call.return_data[96]) - 1) >= 5:
            revert with 0, 50
        if uint256(sub_bc633bf2) < Mask(80, 0, pack[ext_call.return_data[96] << 248][stor155[arg2 << 240]].field_16):
            revert with 0, 17
        if sub_3f30e8d8[uint8(uint8(ext_call.return_data[96]) - 1)] and uint256(sub_bc633bf2) - Mask(80, 0, pack[ext_call.return_data[96] << 248][stor155[arg2 << 240]].field_16) > -1 / sub_3f30e8d8[uint8(uint8(ext_call.return_data[96]) - 1)]:
            revert with 0, 17
        if packIndices[arg2 << 240] >= uint256(pack[ext_call.return_data[96] << 248].field_0):
            revert with 0, 50
        Mask(240, 0, pack[ext_call.return_data[96] << 248][stor155[arg2 << 240]].field_16) = Mask(80, 0, stor158)
        if (uint256(sub_bc633bf2) * sub_3f30e8d8[uint8(uint8(ext_call.return_data[96]) - 1)]) - (Mask(80, 0, pack[ext_call.return_data[96] << 248][stor155[arg2 << 240]].field_16) * sub_3f30e8d8[uint8(uint8(ext_call.return_data[96]) - 1)]):
            require ext_code.size(spiceAddress)
            call spiceAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(arg1), (uint256(sub_bc633bf2) * sub_3f30e8d8[uint8(uint8(ext_call.return_data[96]) - 1)]) - (Mask(80, 0, pack[ext_call.return_data[96] << 248][stor155[arg2 << 240]].field_16) * sub_3f30e8d8[uint8(uint8(ext_call.return_data[96]) - 1)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        if not bool((4 * ceil32(return_data.size)) + 448 <= test266151307()):
            revert with 0, 65
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        require ext_call.return_data[32] == ext_call.return_data[63 len 1]
        require ext_call.return_data[64] == ext_call.return_data[95 len 1]
        require ext_call.return_data[96] == ext_call.return_data[127 len 1]
        if sub_2d8c2ef1 < 400000000 * 10^18:
            if ext_call.return_data[127 len 1] < 1:
                revert with 0, 17
            if uint8(ext_call.return_data[127 len 1] - 1) >= 8:
                revert with 0, 50
            if block.timestamp < Mask(80, 0, barn[arg2 << 240].field_16):
                revert with 0, 17
            if block.timestamp - Mask(80, 0, barn[arg2 << 240].field_16) and sub_637d0d7b[uint8(ext_call.return_data[127 len 1] - 1)] > -1 / block.timestamp - Mask(80, 0, barn[arg2 << 240].field_16):
                revert with 0, 17
            Mask(80, 0, barn[arg2 << 240].field_16) = Mask(80, 0, block.timestamp)
            if (block.timestamp * sub_637d0d7b[uint8(ext_call.return_data[127 len 1] - 1)]) - (Mask(80, 0, barn[arg2 << 240].field_16) * sub_637d0d7b[uint8(ext_call.return_data[127 len 1] - 1)]) / 24 * 3600:
                require ext_code.size(spiceAddress)
                call spiceAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(arg1), (block.timestamp * sub_637d0d7b[uint8(uint8(ext_call.return_data[96]) - 1)]) - (Mask(80, 0, barn[arg2 << 240].field_16) * sub_637d0d7b[uint8(uint8(ext_call.return_data[96]) - 1)]) / 24 * 3600
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if Mask(80, 0, barn[arg2 << 240].field_16) > lastClaimTimestamp:
                Mask(80, 0, barn[arg2 << 240].field_16) = Mask(80, 0, block.timestamp)
            else:
                if ext_call.return_data[127 len 1] < 1:
                    revert with 0, 17
                if uint8(ext_call.return_data[127 len 1] - 1) >= 8:
                    revert with 0, 50
                if lastClaimTimestamp < Mask(80, 0, barn[arg2 << 240].field_16):
                    revert with 0, 17
                if lastClaimTimestamp - Mask(80, 0, barn[arg2 << 240].field_16) and sub_637d0d7b[uint8(ext_call.return_data[127 len 1] - 1)] > -1 / lastClaimTimestamp - Mask(80, 0, barn[arg2 << 240].field_16):
                    revert with 0, 17
                Mask(80, 0, barn[arg2 << 240].field_16) = Mask(80, 0, block.timestamp)
                if (lastClaimTimestamp * sub_637d0d7b[uint8(ext_call.return_data[127 len 1] - 1)]) - (Mask(80, 0, barn[arg2 << 240].field_16) * sub_637d0d7b[uint8(ext_call.return_data[127 len 1] - 1)]) / 24 * 3600:
                    require ext_code.size(spiceAddress)
                    call spiceAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(arg1), (lastClaimTimestamp * sub_637d0d7b[uint8(uint8(ext_call.return_data[96]) - 1)]) - (Mask(80, 0, barn[arg2 << 240].field_16) * sub_637d0d7b[uint8(uint8(ext_call.return_data[96]) - 1)]) / 24 * 3600
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
}

function sub_bcf7e64b(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 == uint8(arg3)
    require uint8(arg3) <= maxPerAmount
    require uint8(arg3)
    if uint8(arg3) > test266151307():
        revert with 0, 65
    mem[96] = uint8(arg3)
    mem[64] = (32 * uint8(arg3)) + 128
    if not uint8(arg3):
        mem[0] = address(arg1)
        mem[32] = 179
        if not uint256(balanceOf[address(arg1)].field_0):
            mem[(32 * uint8(arg3)) + 128] = 64
            mem[(32 * uint8(arg3)) + 192] = uint8(arg3)
            idx = 0
            s = 128
            t = (32 * uint8(arg3)) + 224
            while idx < mem[96]:
                _1219 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_1219 + 63 len 1]
                mem[t + 64] = mem[_1219 + 95 len 1]
                mem[t + 96] = mem[_1219 + 127 len 1]
                mem[t + 128] = mem[_1219 + 159 len 1]
                mem[t + 160] = mem[_1219 + 160]
                mem[t + 192] = mem[_1219 + 192]
                mem[t + 224] = mem[_1219 + 224]
                idx = idx + 1
                s = s + 32
                t = t + 256
                continue 
            mem[(32 * uint8(arg3)) + 160] = 0
            return memory
              from mem[64]
               len (32 * uint8(arg3)) + (uint8(arg3) << 8) + -mem[64] + 224
        if arg2 >= uint256(balanceOf[address(arg1)].field_0):
            mem[(32 * uint8(arg3)) + 128] = 64
            mem[(32 * uint8(arg3)) + 192] = uint8(arg3)
            idx = 0
            s = 128
            t = (32 * uint8(arg3)) + 224
            while idx < mem[96]:
                _1226 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_1226 + 63 len 1]
                mem[t + 64] = mem[_1226 + 95 len 1]
                mem[t + 96] = mem[_1226 + 127 len 1]
                mem[t + 128] = mem[_1226 + 159 len 1]
                mem[t + 160] = mem[_1226 + 160]
                mem[t + 192] = mem[_1226 + 192]
                mem[t + 224] = mem[_1226 + 224]
                idx = idx + 1
                s = s + 32
                t = t + 256
                continue 
            mem[(32 * uint8(arg3)) + 160] = 0
            return memory
              from mem[64]
               len (32 * uint8(arg3)) + (uint8(arg3) << 8) + -mem[64] + 224
        mem[0] = address(arg1)
        mem[32] = 179
        mem[64] = (32 * uint8(arg3)) + (32 * uint256(balanceOf[address(arg1)].field_0)) + 160
        mem[(32 * uint8(arg3)) + 128] = uint256(balanceOf[address(arg1)].field_0)
        if not uint256(balanceOf[address(arg1)].field_0):
            idx = 0
            s = 0
            t = arg2
            while uint8(idx) < uint8(arg3):
                if t >= mem[(32 * uint8(arg3)) + 128]:
                    revert with 0, 50
                _1234 = mem[(32 * t) + (32 * uint8(arg3)) + 160]
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128]] = mem[(32 * t) + (32 * uint8(arg3)) + 190 len 2]
                require ext_code.size(minerAddress)
                staticcall minerAddress.getTokenTraits(uint256 arg1) with:
                        gas gas_remaining wei
                       args (_1234 << 240)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1265 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _1274 = mem[64]
                if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 128
                require mem[_1265] == mem[_1265 + 31 len 1]
                mem[_1274] = mem[_1265]
                require mem[_1265 + 32] == mem[_1265 + 63 len 1]
                mem[_1274 + 32] = mem[_1265 + 32]
                require mem[_1265 + 64] == mem[_1265 + 95 len 1]
                mem[_1274 + 64] = mem[_1265 + 64]
                require mem[_1265 + 96] == mem[_1265 + 127 len 1]
                mem[_1274 + 96] = mem[_1265 + 96]
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 32] = mem[_1274 + 31 len 1]
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 64] = mem[_1274 + 63 len 1]
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 96] = mem[_1274 + 95 len 1]
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 128] = mem[_1274 + 127 len 1]
                if mem[_1274 + 63 len 1]:
                    require ext_code.size(minerAddress)
                    staticcall minerAddress.getTokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args (_1234 << 240)
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1401 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _1408 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 128
                    require mem[_1401] == mem[_1401 + 31 len 1]
                    mem[_1408] = mem[_1401]
                    require mem[_1401 + 32] == mem[_1401 + 63 len 1]
                    mem[_1408 + 32] = mem[_1401 + 32]
                    require mem[_1401 + 64] == mem[_1401 + 95 len 1]
                    mem[_1408 + 64] = mem[_1401 + 64]
                    require mem[_1401 + 96] == mem[_1401 + 127 len 1]
                    mem[_1408 + 96] = mem[_1401 + 96]
                    if 0 == mem[_1408 + 127 len 1]:
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                        if t == -1:
                            revert with 0, 17
                        if uint8(s) == 255:
                            revert with 0, 17
                        if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = uint8(s) + 1
                            t = t + 1
                            continue 
                        _1564 = mem[64]
                        mem[mem[64]] = 64
                        _1574 = mem[96]
                        mem[mem[64] + 64] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 96
                        while idx < _1574:
                            _2471 = mem[t]
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_2471 + 63 len 1]
                            mem[u + 64] = mem[_2471 + 95 len 1]
                            mem[u + 96] = mem[_2471 + 127 len 1]
                            mem[u + 128] = mem[_2471 + 159 len 1]
                            mem[u + 160] = mem[_2471 + 160]
                            mem[u + 192] = mem[_2471 + 192]
                            mem[u + 224] = mem[_2471 + 224]
                            idx = idx + 1
                            t = t + 32
                            u = u + 256
                            continue 
                        mem[_1564 + 32] = uint8(uint8(s) + 1)
                        return memory
                          from mem[64]
                           len _1564 + (256 * _1574) + -mem[64] + 96
                    if mem[_1408 + 63 len 1] != 0:
                        mem[0] = mem[_1408 + 127 len 1]
                        mem[32] = 154
                        if packIndices[_1234 << 240] >= uint256(pack[mem[0]].field_0):
                            revert with 0, 50
                        mem[0] = sha3(mem[0], 154)
                        _1498 = sha3(mem[0])
                        _1499 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_1499] = uint16(stor[sha3(mem[0]) + stor155[_1234 << 240]].field_0)
                        mem[_1499 + 32] = Mask(80, 0, stor[_1498 + stor155[_1234 << 240]].field_16)
                        mem[_1499 + 64] = address(stor[_1498 + stor155[_1234 << 240]].field_96)
                        if not address(stor[_1498 + stor155[_1234 << 240]].field_96):
                            if uint8(idx) >= mem[96]:
                                revert with 0, 50
                            mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                            if t == -1:
                                revert with 0, 17
                            if uint8(s) == 255:
                                revert with 0, 17
                            if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                                if uint8(idx) == 255:
                                    revert with 0, 17
                                idx = uint8(idx) + 1
                                s = uint8(s) + 1
                                t = t + 1
                                continue 
                            _1600 = mem[64]
                            mem[mem[64]] = 64
                            _1622 = mem[96]
                            mem[mem[64] + 64] = mem[96]
                            idx = 0
                            t = 128
                            u = mem[64] + 96
                            while idx < _1622:
                                _2441 = mem[t]
                                mem[u] = mem[mem[t]]
                                mem[u + 32] = mem[_2441 + 63 len 1]
                                mem[u + 64] = mem[_2441 + 95 len 1]
                                mem[u + 96] = mem[_2441 + 127 len 1]
                                mem[u + 128] = mem[_2441 + 159 len 1]
                                mem[u + 160] = mem[_2441 + 160]
                                mem[u + 192] = mem[_2441 + 192]
                                mem[u + 224] = mem[_2441 + 224]
                                idx = idx + 1
                                t = t + 32
                                u = u + 256
                                continue 
                            mem[_1600 + 32] = uint8(uint8(s) + 1)
                            return memory
                              from mem[64]
                               len _1600 + (256 * _1622) + -mem[64] + 96
                        if mem[_1408 + 127 len 1] < 1:
                            revert with 0, 17
                        if uint8(mem[_1408 + 127 len 1] - 1) >= 5:
                            revert with 0, 50
                        if uint256(sub_bc633bf2) < Mask(80, 0, stor[_1498 + stor155[_1234 << 240]].field_16):
                            revert with 0, 17
                        if sub_3f30e8d8[uint8(mem[_1408 + 127 len 1] - 1)] and uint256(sub_bc633bf2) - Mask(80, 0, stor[_1498 + stor155[_1234 << 240]].field_16) > -1 / sub_3f30e8d8[uint8(mem[_1408 + 127 len 1] - 1)]:
                            revert with 0, 17
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 224] = (uint256(sub_bc633bf2) * sub_3f30e8d8[uint8(mem[_1408 + 127 len 1] - 1)]) - (Mask(80, 0, stor[_1498 + stor155[_1234 << 240]].field_16) * sub_3f30e8d8[uint8(mem[_1408 + 127 len 1] - 1)])
                        if t == -1:
                            revert with 0, 17
                        if uint8(s) == 255:
                            revert with 0, 17
                        if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = uint8(s) + 1
                            t = t + 1
                            continue 
                        _1749 = mem[64]
                        mem[mem[64]] = 64
                        _1768 = mem[96]
                        mem[mem[64] + 64] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 96
                        while idx < _1768:
                            _2435 = mem[t]
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_2435 + 63 len 1]
                            mem[u + 64] = mem[_2435 + 95 len 1]
                            mem[u + 96] = mem[_2435 + 127 len 1]
                            mem[u + 128] = mem[_2435 + 159 len 1]
                            mem[u + 160] = mem[_2435 + 160]
                            mem[u + 192] = mem[_2435 + 192]
                            mem[u + 224] = mem[_2435 + 224]
                            idx = idx + 1
                            t = t + 32
                            u = u + 256
                            continue 
                        mem[_1749 + 32] = uint8(uint8(s) + 1)
                        return memory
                          from mem[64]
                           len _1749 + (256 * _1768) + -mem[64] + 96
                    mem[0] = uint16(_1234)
                    mem[32] = 153
                    _1496 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1496] = uint16(barn[_1234 << 240].field_0)
                    mem[_1496 + 32] = Mask(80, 0, barn[_1234 << 240].field_16)
                    mem[_1496 + 64] = address(barn[_1234 << 240].field_96)
                    if not address(barn[_1234 << 240].field_96):
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                        if t == -1:
                            revert with 0, 17
                        if uint8(s) == 255:
                            revert with 0, 17
                        if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = uint8(s) + 1
                            t = t + 1
                            continue 
                        _1586 = mem[64]
                        mem[mem[64]] = 64
                        _1601 = mem[96]
                        mem[mem[64] + 64] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 96
                        while idx < _1601:
                            _2465 = mem[t]
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_2465 + 63 len 1]
                            mem[u + 64] = mem[_2465 + 95 len 1]
                            mem[u + 96] = mem[_2465 + 127 len 1]
                            mem[u + 128] = mem[_2465 + 159 len 1]
                            mem[u + 160] = mem[_2465 + 160]
                            mem[u + 192] = mem[_2465 + 192]
                            mem[u + 224] = mem[_2465 + 224]
                            idx = idx + 1
                            t = t + 32
                            u = u + 256
                            continue 
                        mem[_1586 + 32] = uint8(uint8(s) + 1)
                        return memory
                          from mem[64]
                           len _1586 + (256 * _1601) + -mem[64] + 96
                    if sub_2d8c2ef1 < 400000000 * 10^18:
                        if mem[_1408 + 127 len 1] < 1:
                            revert with 0, 17
                        if uint8(mem[_1408 + 127 len 1] - 1) >= 8:
                            revert with 0, 50
                        if block.timestamp < Mask(80, 0, barn[_1234 << 240].field_16):
                            revert with 0, 17
                        if block.timestamp - Mask(80, 0, barn[_1234 << 240].field_16) and sub_637d0d7b[uint8(mem[_1408 + 127 len 1] - 1)] > -1 / block.timestamp - Mask(80, 0, barn[_1234 << 240].field_16):
                            revert with 0, 17
                        if (block.timestamp * sub_637d0d7b[uint8(mem[_1408 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_1234 << 240].field_16) * sub_637d0d7b[uint8(mem[_1408 + 127 len 1] - 1)]) / 24 * 3600 and 80 > -1 / (block.timestamp * sub_637d0d7b[uint8(mem[_1408 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_1234 << 240].field_16) * sub_637d0d7b[uint8(mem[_1408 + 127 len 1] - 1)]) / 24 * 3600:
                            revert with 0, 17
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 224] = 80 * (block.timestamp * sub_637d0d7b[uint8(mem[_1408 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_1234 << 240].field_16) * sub_637d0d7b[uint8(mem[_1408 + 127 len 1] - 1)]) / 24 * 3600 / 100
                        if t == -1:
                            revert with 0, 17
                        if uint8(s) == 255:
                            revert with 0, 17
                        if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = uint8(s) + 1
                            t = t + 1
                            continue 
                        _2012 = mem[64]
                        mem[mem[64]] = 64
                        _2034 = mem[96]
                        mem[mem[64] + 64] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 96
                        while idx < _2034:
                            _2459 = mem[t]
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_2459 + 63 len 1]
                            mem[u + 64] = mem[_2459 + 95 len 1]
                            mem[u + 96] = mem[_2459 + 127 len 1]
                            mem[u + 128] = mem[_2459 + 159 len 1]
                            mem[u + 160] = mem[_2459 + 160]
                            mem[u + 192] = mem[_2459 + 192]
                            mem[u + 224] = mem[_2459 + 224]
                            idx = idx + 1
                            t = t + 32
                            u = u + 256
                            continue 
                        mem[_2012 + 32] = uint8(uint8(s) + 1)
                        return memory
                          from mem[64]
                           len _2012 + (256 * _2034) + -mem[64] + 96
                    if Mask(80, 0, barn[_1234 << 240].field_16) > lastClaimTimestamp:
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                        if t == -1:
                            revert with 0, 17
                        if uint8(s) == 255:
                            revert with 0, 17
                        if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = uint8(s) + 1
                            t = t + 1
                            continue 
                        _1769 = mem[64]
                        mem[mem[64]] = 64
                        _1789 = mem[96]
                        mem[mem[64] + 64] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 96
                        while idx < _1789:
                            _2453 = mem[t]
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_2453 + 63 len 1]
                            mem[u + 64] = mem[_2453 + 95 len 1]
                            mem[u + 96] = mem[_2453 + 127 len 1]
                            mem[u + 128] = mem[_2453 + 159 len 1]
                            mem[u + 160] = mem[_2453 + 160]
                            mem[u + 192] = mem[_2453 + 192]
                            mem[u + 224] = mem[_2453 + 224]
                            idx = idx + 1
                            t = t + 32
                            u = u + 256
                            continue 
                        mem[_1769 + 32] = uint8(uint8(s) + 1)
                        return memory
                          from mem[64]
                           len _1769 + (256 * _1789) + -mem[64] + 96
                    if mem[_1408 + 127 len 1] < 1:
                        revert with 0, 17
                    if uint8(mem[_1408 + 127 len 1] - 1) >= 8:
                        revert with 0, 50
                    if lastClaimTimestamp < Mask(80, 0, barn[_1234 << 240].field_16):
                        revert with 0, 17
                    if lastClaimTimestamp - Mask(80, 0, barn[_1234 << 240].field_16) and sub_637d0d7b[uint8(mem[_1408 + 127 len 1] - 1)] > -1 / lastClaimTimestamp - Mask(80, 0, barn[_1234 << 240].field_16):
                        revert with 0, 17
                    if (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_1408 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_1234 << 240].field_16) * sub_637d0d7b[uint8(mem[_1408 + 127 len 1] - 1)]) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_1408 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_1234 << 240].field_16) * sub_637d0d7b[uint8(mem[_1408 + 127 len 1] - 1)]) / 24 * 3600:
                        revert with 0, 17
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 224] = 80 * (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_1408 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_1234 << 240].field_16) * sub_637d0d7b[uint8(mem[_1408 + 127 len 1] - 1)]) / 24 * 3600 / 100
                    if t == -1:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(s) + 1
                        t = t + 1
                        continue 
                    _2033 = mem[64]
                    mem[mem[64]] = 64
                    _2069 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 96
                    while idx < _2069:
                        _2447 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_2447 + 63 len 1]
                        mem[u + 64] = mem[_2447 + 95 len 1]
                        mem[u + 96] = mem[_2447 + 127 len 1]
                        mem[u + 128] = mem[_2447 + 159 len 1]
                        mem[u + 160] = mem[_2447 + 160]
                        mem[u + 192] = mem[_2447 + 192]
                        mem[u + 224] = mem[_2447 + 224]
                        idx = idx + 1
                        t = t + 32
                        u = u + 256
                        continue 
                    mem[_2033 + 32] = uint8(uint8(s) + 1)
                    return memory
                      from mem[64]
                       len _2033 + (256 * _2069) + -mem[64] + 96
                mem[0] = uint16(_1234)
                mem[32] = 153
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 160] = Mask(80, 0, barn[_1234 << 240].field_16)
                mem[mem[64] + 4] = uint16(_1234)
                require ext_code.size(shieldAddress)
                staticcall shieldAddress.0x478ba63b with:
                        gas gas_remaining wei
                       args (_1234 << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1402 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 192] = mem[_1402]
                require ext_code.size(minerAddress)
                staticcall minerAddress.getTokenTraits(uint256 arg1) with:
                        gas gas_remaining wei
                       args (_1234 << 240)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1459 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _1467 = mem[64]
                if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 128
                require mem[_1459] == mem[_1459 + 31 len 1]
                mem[_1467] = mem[_1459]
                require mem[_1459 + 32] == mem[_1459 + 63 len 1]
                mem[_1467 + 32] = mem[_1459 + 32]
                require mem[_1459 + 64] == mem[_1459 + 95 len 1]
                mem[_1467 + 64] = mem[_1459 + 64]
                require mem[_1459 + 96] == mem[_1459 + 127 len 1]
                mem[_1467 + 96] = mem[_1459 + 96]
                if 0 == mem[_1467 + 127 len 1]:
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                    if t == -1:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(s) + 1
                        t = t + 1
                        continue 
                    _1721 = mem[64]
                    mem[mem[64]] = 64
                    _1731 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 96
                    while idx < _1731:
                        _2513 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_2513 + 63 len 1]
                        mem[u + 64] = mem[_2513 + 95 len 1]
                        mem[u + 96] = mem[_2513 + 127 len 1]
                        mem[u + 128] = mem[_2513 + 159 len 1]
                        mem[u + 160] = mem[_2513 + 160]
                        mem[u + 192] = mem[_2513 + 192]
                        mem[u + 224] = mem[_2513 + 224]
                        idx = idx + 1
                        t = t + 32
                        u = u + 256
                        continue 
                    mem[_1721 + 32] = uint8(uint8(s) + 1)
                    return memory
                      from mem[64]
                       len _1721 + (256 * _1731) + -mem[64] + 96
                if mem[_1467 + 63 len 1] != 0:
                    mem[0] = mem[_1467 + 127 len 1]
                    mem[32] = 154
                    if packIndices[_1234 << 240] >= uint256(pack[mem[0]].field_0):
                        revert with 0, 50
                    mem[0] = sha3(mem[0], 154)
                    _1565 = sha3(mem[0])
                    _1566 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1566] = uint16(stor[sha3(mem[0]) + stor155[_1234 << 240]].field_0)
                    mem[_1566 + 32] = Mask(80, 0, stor[_1565 + stor155[_1234 << 240]].field_16)
                    mem[_1566 + 64] = address(stor[_1565 + stor155[_1234 << 240]].field_96)
                    if not address(stor[_1565 + stor155[_1234 << 240]].field_96):
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                        if t == -1:
                            revert with 0, 17
                        if uint8(s) == 255:
                            revert with 0, 17
                        if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = uint8(s) + 1
                            t = t + 1
                            continue 
                        _1751 = mem[64]
                        mem[mem[64]] = 64
                        _1771 = mem[96]
                        mem[mem[64] + 64] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 96
                        while idx < _1771:
                            _2483 = mem[t]
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_2483 + 63 len 1]
                            mem[u + 64] = mem[_2483 + 95 len 1]
                            mem[u + 96] = mem[_2483 + 127 len 1]
                            mem[u + 128] = mem[_2483 + 159 len 1]
                            mem[u + 160] = mem[_2483 + 160]
                            mem[u + 192] = mem[_2483 + 192]
                            mem[u + 224] = mem[_2483 + 224]
                            idx = idx + 1
                            t = t + 32
                            u = u + 256
                            continue 
                        mem[_1751 + 32] = uint8(uint8(s) + 1)
                        return memory
                          from mem[64]
                           len _1751 + (256 * _1771) + -mem[64] + 96
                    if mem[_1467 + 127 len 1] < 1:
                        revert with 0, 17
                    if uint8(mem[_1467 + 127 len 1] - 1) >= 5:
                        revert with 0, 50
                    if uint256(sub_bc633bf2) < Mask(80, 0, stor[_1565 + stor155[_1234 << 240]].field_16):
                        revert with 0, 17
                    if sub_3f30e8d8[uint8(mem[_1467 + 127 len 1] - 1)] and uint256(sub_bc633bf2) - Mask(80, 0, stor[_1565 + stor155[_1234 << 240]].field_16) > -1 / sub_3f30e8d8[uint8(mem[_1467 + 127 len 1] - 1)]:
                        revert with 0, 17
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 224] = (uint256(sub_bc633bf2) * sub_3f30e8d8[uint8(mem[_1467 + 127 len 1] - 1)]) - (Mask(80, 0, stor[_1565 + stor155[_1234 << 240]].field_16) * sub_3f30e8d8[uint8(mem[_1467 + 127 len 1] - 1)])
                    if t == -1:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(s) + 1
                        t = t + 1
                        continue 
                    _1988 = mem[64]
                    mem[mem[64]] = 64
                    _1992 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 96
                    while idx < _1992:
                        _2477 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_2477 + 63 len 1]
                        mem[u + 64] = mem[_2477 + 95 len 1]
                        mem[u + 96] = mem[_2477 + 127 len 1]
                        mem[u + 128] = mem[_2477 + 159 len 1]
                        mem[u + 160] = mem[_2477 + 160]
                        mem[u + 192] = mem[_2477 + 192]
                        mem[u + 224] = mem[_2477 + 224]
                        idx = idx + 1
                        t = t + 32
                        u = u + 256
                        continue 
                    mem[_1988 + 32] = uint8(uint8(s) + 1)
                    return memory
                      from mem[64]
                       len _1988 + (256 * _1992) + -mem[64] + 96
                mem[0] = uint16(_1234)
                mem[32] = 153
                _1561 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1561] = uint16(barn[_1234 << 240].field_0)
                mem[_1561 + 32] = Mask(80, 0, barn[_1234 << 240].field_16)
                mem[_1561 + 64] = address(barn[_1234 << 240].field_96)
                if not address(barn[_1234 << 240].field_96):
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                    if t == -1:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(s) + 1
                        t = t + 1
                        continue 
                    _1741 = mem[64]
                    mem[mem[64]] = 64
                    _1752 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 96
                    while idx < _1752:
                        _2507 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_2507 + 63 len 1]
                        mem[u + 64] = mem[_2507 + 95 len 1]
                        mem[u + 96] = mem[_2507 + 127 len 1]
                        mem[u + 128] = mem[_2507 + 159 len 1]
                        mem[u + 160] = mem[_2507 + 160]
                        mem[u + 192] = mem[_2507 + 192]
                        mem[u + 224] = mem[_2507 + 224]
                        idx = idx + 1
                        t = t + 32
                        u = u + 256
                        continue 
                    mem[_1741 + 32] = uint8(uint8(s) + 1)
                    return memory
                      from mem[64]
                       len _1741 + (256 * _1752) + -mem[64] + 96
                if sub_2d8c2ef1 < 400000000 * 10^18:
                    if mem[_1467 + 127 len 1] < 1:
                        revert with 0, 17
                    if uint8(mem[_1467 + 127 len 1] - 1) >= 8:
                        revert with 0, 50
                    if block.timestamp < Mask(80, 0, barn[_1234 << 240].field_16):
                        revert with 0, 17
                    if block.timestamp - Mask(80, 0, barn[_1234 << 240].field_16) and sub_637d0d7b[uint8(mem[_1467 + 127 len 1] - 1)] > -1 / block.timestamp - Mask(80, 0, barn[_1234 << 240].field_16):
                        revert with 0, 17
                    if (block.timestamp * sub_637d0d7b[uint8(mem[_1467 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_1234 << 240].field_16) * sub_637d0d7b[uint8(mem[_1467 + 127 len 1] - 1)]) / 24 * 3600 and 80 > -1 / (block.timestamp * sub_637d0d7b[uint8(mem[_1467 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_1234 << 240].field_16) * sub_637d0d7b[uint8(mem[_1467 + 127 len 1] - 1)]) / 24 * 3600:
                        revert with 0, 17
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 224] = 80 * (block.timestamp * sub_637d0d7b[uint8(mem[_1467 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_1234 << 240].field_16) * sub_637d0d7b[uint8(mem[_1467 + 127 len 1] - 1)]) / 24 * 3600 / 100
                    if t == -1:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(s) + 1
                        t = t + 1
                        continue 
                    _2230 = mem[64]
                    mem[mem[64]] = 64
                    _2234 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 96
                    while idx < _2234:
                        _2501 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_2501 + 63 len 1]
                        mem[u + 64] = mem[_2501 + 95 len 1]
                        mem[u + 96] = mem[_2501 + 127 len 1]
                        mem[u + 128] = mem[_2501 + 159 len 1]
                        mem[u + 160] = mem[_2501 + 160]
                        mem[u + 192] = mem[_2501 + 192]
                        mem[u + 224] = mem[_2501 + 224]
                        idx = idx + 1
                        t = t + 32
                        u = u + 256
                        continue 
                    mem[_2230 + 32] = uint8(uint8(s) + 1)
                    return memory
                      from mem[64]
                       len _2230 + (256 * _2234) + -mem[64] + 96
                if Mask(80, 0, barn[_1234 << 240].field_16) > lastClaimTimestamp:
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                    if t == -1:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(s) + 1
                        t = t + 1
                        continue 
                    _1993 = mem[64]
                    mem[mem[64]] = 64
                    _2005 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 96
                    while idx < _2005:
                        _2495 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_2495 + 63 len 1]
                        mem[u + 64] = mem[_2495 + 95 len 1]
                        mem[u + 96] = mem[_2495 + 127 len 1]
                        mem[u + 128] = mem[_2495 + 159 len 1]
                        mem[u + 160] = mem[_2495 + 160]
                        mem[u + 192] = mem[_2495 + 192]
                        mem[u + 224] = mem[_2495 + 224]
                        idx = idx + 1
                        t = t + 32
                        u = u + 256
                        continue 
                    mem[_1993 + 32] = uint8(uint8(s) + 1)
                    return memory
                      from mem[64]
                       len _1993 + (256 * _2005) + -mem[64] + 96
                if mem[_1467 + 127 len 1] < 1:
                    revert with 0, 17
                if uint8(mem[_1467 + 127 len 1] - 1) >= 8:
                    revert with 0, 50
                if lastClaimTimestamp < Mask(80, 0, barn[_1234 << 240].field_16):
                    revert with 0, 17
                if lastClaimTimestamp - Mask(80, 0, barn[_1234 << 240].field_16) and sub_637d0d7b[uint8(mem[_1467 + 127 len 1] - 1)] > -1 / lastClaimTimestamp - Mask(80, 0, barn[_1234 << 240].field_16):
                    revert with 0, 17
                if (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_1467 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_1234 << 240].field_16) * sub_637d0d7b[uint8(mem[_1467 + 127 len 1] - 1)]) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_1467 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_1234 << 240].field_16) * sub_637d0d7b[uint8(mem[_1467 + 127 len 1] - 1)]) / 24 * 3600:
                    revert with 0, 17
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 224] = 80 * (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_1467 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_1234 << 240].field_16) * sub_637d0d7b[uint8(mem[_1467 + 127 len 1] - 1)]) / 24 * 3600 / 100
                if t == -1:
                    revert with 0, 17
                if uint8(s) == 255:
                    revert with 0, 17
                if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(s) + 1
                    t = t + 1
                    continue 
                _2233 = mem[64]
                mem[mem[64]] = 64
                _2244 = mem[96]
                mem[mem[64] + 64] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 96
                while idx < _2244:
                    _2489 = mem[t]
                    mem[u] = mem[mem[t]]
                    mem[u + 32] = mem[_2489 + 63 len 1]
                    mem[u + 64] = mem[_2489 + 95 len 1]
                    mem[u + 96] = mem[_2489 + 127 len 1]
                    mem[u + 128] = mem[_2489 + 159 len 1]
                    mem[u + 160] = mem[_2489 + 160]
                    mem[u + 192] = mem[_2489 + 192]
                    mem[u + 224] = mem[_2489 + 224]
                    idx = idx + 1
                    t = t + 32
                    u = u + 256
                    continue 
                mem[_2233 + 32] = uint8(uint8(s) + 1)
                return memory
                  from mem[64]
                   len _2233 + (256 * _2244) + -mem[64] + 96
            _1233 = mem[64]
            mem[mem[64]] = 64
            _1239 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            t = 128
            u = mem[64] + 96
            while idx < _1239:
                _2429 = mem[t]
                mem[u] = mem[mem[t]]
                mem[u + 32] = mem[_2429 + 63 len 1]
                mem[u + 64] = mem[_2429 + 95 len 1]
                mem[u + 96] = mem[_2429 + 127 len 1]
                mem[u + 128] = mem[_2429 + 159 len 1]
                mem[u + 160] = mem[_2429 + 160]
                mem[u + 192] = mem[_2429 + 192]
                mem[u + 224] = mem[_2429 + 224]
                idx = idx + 1
                t = t + 32
                u = u + 256
                continue 
            mem[_1233 + 32] = uint8(s)
            return memory
              from mem[64]
               len _1233 + (256 * _1239) + -mem[64] + 96
        mem[0] = sha3(address(arg1), 179)
        mem[(32 * uint8(arg3)) + 160] = uint16(balanceOf[address(arg1)].field_0)
        idx = (32 * uint8(arg3)) + 160
        s = 0
        while (32 * uint8(arg3)) + (32 * uint256(balanceOf[address(arg1)].field_0)) + 128 > idx:
            mem[idx + 32] = uint16(balanceOf[address(arg1)].field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
            idx = idx + 32
            s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
            continue 
        idx = 0
        s = 0
        t = arg2
        while uint8(idx) < uint8(arg3):
            if t >= mem[(32 * uint8(arg3)) + 128]:
                revert with 0, 50
            _2521 = mem[(32 * t) + (32 * uint8(arg3)) + 160]
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128]] = mem[(32 * t) + (32 * uint8(arg3)) + 190 len 2]
            require ext_code.size(minerAddress)
            staticcall minerAddress.getTokenTraits(uint256 arg1) with:
                    gas gas_remaining wei
                   args (_2521 << 240)
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2597 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _2601 = mem[64]
            if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 128
            require mem[_2597] == mem[_2597 + 31 len 1]
            mem[_2601] = mem[_2597]
            require mem[_2597 + 32] == mem[_2597 + 63 len 1]
            mem[_2601 + 32] = mem[_2597 + 32]
            require mem[_2597 + 64] == mem[_2597 + 95 len 1]
            mem[_2601 + 64] = mem[_2597 + 64]
            require mem[_2597 + 96] == mem[_2597 + 127 len 1]
            mem[_2601 + 96] = mem[_2597 + 96]
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128] + 32] = mem[_2601 + 31 len 1]
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128] + 64] = mem[_2601 + 63 len 1]
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128] + 96] = mem[_2601 + 95 len 1]
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128] + 128] = mem[_2601 + 127 len 1]
            if mem[_2601 + 63 len 1]:
                require ext_code.size(minerAddress)
                staticcall minerAddress.getTokenTraits(uint256 arg1) with:
                        gas gas_remaining wei
                       args (_2521 << 240)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2699 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _2706 = mem[64]
                if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 128
                require mem[_2699] == mem[_2699 + 31 len 1]
                mem[_2706] = mem[_2699]
                require mem[_2699 + 32] == mem[_2699 + 63 len 1]
                mem[_2706 + 32] = mem[_2699 + 32]
                require mem[_2699 + 64] == mem[_2699 + 95 len 1]
                mem[_2706 + 64] = mem[_2699 + 64]
                require mem[_2699 + 96] == mem[_2699 + 127 len 1]
                mem[_2706 + 96] = mem[_2699 + 96]
                if 0 == mem[_2706 + 127 len 1]:
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                    if t == -1:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(s) + 1
                        t = t + 1
                        continue 
                    _2824 = mem[64]
                    mem[mem[64]] = 64
                    _2834 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 96
                    while idx < _2834:
                        _3519 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_3519 + 63 len 1]
                        mem[u + 64] = mem[_3519 + 95 len 1]
                        mem[u + 96] = mem[_3519 + 127 len 1]
                        mem[u + 128] = mem[_3519 + 159 len 1]
                        mem[u + 160] = mem[_3519 + 160]
                        mem[u + 192] = mem[_3519 + 192]
                        mem[u + 224] = mem[_3519 + 224]
                        idx = idx + 1
                        t = t + 32
                        u = u + 256
                        continue 
                    mem[_2824 + 32] = uint8(uint8(s) + 1)
                    return memory
                      from mem[64]
                       len _2824 + (256 * _2834) + -mem[64] + 96
                if mem[_2706 + 63 len 1] != 0:
                    mem[0] = mem[_2706 + 127 len 1]
                    mem[32] = 154
                    if packIndices[_2521 << 240] >= uint256(pack[mem[0]].field_0):
                        revert with 0, 50
                    mem[0] = sha3(mem[0], 154)
                    _2779 = sha3(mem[0])
                    _2780 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_2780] = uint16(stor[sha3(mem[0]) + stor155[_2521 << 240]].field_0)
                    mem[_2780 + 32] = Mask(80, 0, stor[_2779 + stor155[_2521 << 240]].field_16)
                    mem[_2780 + 64] = address(stor[_2779 + stor155[_2521 << 240]].field_96)
                    if not address(stor[_2779 + stor155[_2521 << 240]].field_96):
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                        if t == -1:
                            revert with 0, 17
                        if uint8(s) == 255:
                            revert with 0, 17
                        if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = uint8(s) + 1
                            t = t + 1
                            continue 
                        _2855 = mem[64]
                        mem[mem[64]] = 64
                        _2873 = mem[96]
                        mem[mem[64] + 64] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 96
                        while idx < _2873:
                            _3489 = mem[t]
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_3489 + 63 len 1]
                            mem[u + 64] = mem[_3489 + 95 len 1]
                            mem[u + 96] = mem[_3489 + 127 len 1]
                            mem[u + 128] = mem[_3489 + 159 len 1]
                            mem[u + 160] = mem[_3489 + 160]
                            mem[u + 192] = mem[_3489 + 192]
                            mem[u + 224] = mem[_3489 + 224]
                            idx = idx + 1
                            t = t + 32
                            u = u + 256
                            continue 
                        mem[_2855 + 32] = uint8(uint8(s) + 1)
                        return memory
                          from mem[64]
                           len _2855 + (256 * _2873) + -mem[64] + 96
                    if mem[_2706 + 127 len 1] < 1:
                        revert with 0, 17
                    if uint8(mem[_2706 + 127 len 1] - 1) >= 5:
                        revert with 0, 50
                    if uint256(sub_bc633bf2) < Mask(80, 0, stor[_2779 + stor155[_2521 << 240]].field_16):
                        revert with 0, 17
                    if sub_3f30e8d8[uint8(mem[_2706 + 127 len 1] - 1)] and uint256(sub_bc633bf2) - Mask(80, 0, stor[_2779 + stor155[_2521 << 240]].field_16) > -1 / sub_3f30e8d8[uint8(mem[_2706 + 127 len 1] - 1)]:
                        revert with 0, 17
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 224] = (uint256(sub_bc633bf2) * sub_3f30e8d8[uint8(mem[_2706 + 127 len 1] - 1)]) - (Mask(80, 0, stor[_2779 + stor155[_2521 << 240]].field_16) * sub_3f30e8d8[uint8(mem[_2706 + 127 len 1] - 1)])
                    if t == -1:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(s) + 1
                        t = t + 1
                        continue 
                    _2950 = mem[64]
                    mem[mem[64]] = 64
                    _2975 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 96
                    while idx < _2975:
                        _3483 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_3483 + 63 len 1]
                        mem[u + 64] = mem[_3483 + 95 len 1]
                        mem[u + 96] = mem[_3483 + 127 len 1]
                        mem[u + 128] = mem[_3483 + 159 len 1]
                        mem[u + 160] = mem[_3483 + 160]
                        mem[u + 192] = mem[_3483 + 192]
                        mem[u + 224] = mem[_3483 + 224]
                        idx = idx + 1
                        t = t + 32
                        u = u + 256
                        continue 
                    mem[_2950 + 32] = uint8(uint8(s) + 1)
                    return memory
                      from mem[64]
                       len _2950 + (256 * _2975) + -mem[64] + 96
                mem[0] = uint16(_2521)
                mem[32] = 153
                _2777 = mem[64]
                mem[64] = mem[64] + 96
                mem[_2777] = uint16(barn[_2521 << 240].field_0)
                mem[_2777 + 32] = Mask(80, 0, barn[_2521 << 240].field_16)
                mem[_2777 + 64] = address(barn[_2521 << 240].field_96)
                if not address(barn[_2521 << 240].field_96):
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                    if t == -1:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(s) + 1
                        t = t + 1
                        continue 
                    _2844 = mem[64]
                    mem[mem[64]] = 64
                    _2856 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 96
                    while idx < _2856:
                        _3513 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_3513 + 63 len 1]
                        mem[u + 64] = mem[_3513 + 95 len 1]
                        mem[u + 96] = mem[_3513 + 127 len 1]
                        mem[u + 128] = mem[_3513 + 159 len 1]
                        mem[u + 160] = mem[_3513 + 160]
                        mem[u + 192] = mem[_3513 + 192]
                        mem[u + 224] = mem[_3513 + 224]
                        idx = idx + 1
                        t = t + 32
                        u = u + 256
                        continue 
                    mem[_2844 + 32] = uint8(uint8(s) + 1)
                    return memory
                      from mem[64]
                       len _2844 + (256 * _2856) + -mem[64] + 96
                if sub_2d8c2ef1 < 400000000 * 10^18:
                    if mem[_2706 + 127 len 1] < 1:
                        revert with 0, 17
                    if uint8(mem[_2706 + 127 len 1] - 1) >= 8:
                        revert with 0, 50
                    if block.timestamp < Mask(80, 0, barn[_2521 << 240].field_16):
                        revert with 0, 17
                    if block.timestamp - Mask(80, 0, barn[_2521 << 240].field_16) and sub_637d0d7b[uint8(mem[_2706 + 127 len 1] - 1)] > -1 / block.timestamp - Mask(80, 0, barn[_2521 << 240].field_16):
                        revert with 0, 17
                    if (block.timestamp * sub_637d0d7b[uint8(mem[_2706 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_2521 << 240].field_16) * sub_637d0d7b[uint8(mem[_2706 + 127 len 1] - 1)]) / 24 * 3600 and 80 > -1 / (block.timestamp * sub_637d0d7b[uint8(mem[_2706 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_2521 << 240].field_16) * sub_637d0d7b[uint8(mem[_2706 + 127 len 1] - 1)]) / 24 * 3600:
                        revert with 0, 17
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 224] = 80 * (block.timestamp * sub_637d0d7b[uint8(mem[_2706 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_2521 << 240].field_16) * sub_637d0d7b[uint8(mem[_2706 + 127 len 1] - 1)]) / 24 * 3600 / 100
                    if t == -1:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(s) + 1
                        t = t + 1
                        continue 
                    _3149 = mem[64]
                    mem[mem[64]] = 64
                    _3182 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 96
                    while idx < _3182:
                        _3507 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_3507 + 63 len 1]
                        mem[u + 64] = mem[_3507 + 95 len 1]
                        mem[u + 96] = mem[_3507 + 127 len 1]
                        mem[u + 128] = mem[_3507 + 159 len 1]
                        mem[u + 160] = mem[_3507 + 160]
                        mem[u + 192] = mem[_3507 + 192]
                        mem[u + 224] = mem[_3507 + 224]
                        idx = idx + 1
                        t = t + 32
                        u = u + 256
                        continue 
                    mem[_3149 + 32] = uint8(uint8(s) + 1)
                    return memory
                      from mem[64]
                       len _3149 + (256 * _3182) + -mem[64] + 96
                if Mask(80, 0, barn[_2521 << 240].field_16) > lastClaimTimestamp:
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                    if t == -1:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(s) + 1
                        t = t + 1
                        continue 
                    _2976 = mem[64]
                    mem[mem[64]] = 64
                    _2989 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 96
                    while idx < _2989:
                        _3501 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_3501 + 63 len 1]
                        mem[u + 64] = mem[_3501 + 95 len 1]
                        mem[u + 96] = mem[_3501 + 127 len 1]
                        mem[u + 128] = mem[_3501 + 159 len 1]
                        mem[u + 160] = mem[_3501 + 160]
                        mem[u + 192] = mem[_3501 + 192]
                        mem[u + 224] = mem[_3501 + 224]
                        idx = idx + 1
                        t = t + 32
                        u = u + 256
                        continue 
                    mem[_2976 + 32] = uint8(uint8(s) + 1)
                    return memory
                      from mem[64]
                       len _2976 + (256 * _2989) + -mem[64] + 96
                if mem[_2706 + 127 len 1] < 1:
                    revert with 0, 17
                if uint8(mem[_2706 + 127 len 1] - 1) >= 8:
                    revert with 0, 50
                if lastClaimTimestamp < Mask(80, 0, barn[_2521 << 240].field_16):
                    revert with 0, 17
                if lastClaimTimestamp - Mask(80, 0, barn[_2521 << 240].field_16) and sub_637d0d7b[uint8(mem[_2706 + 127 len 1] - 1)] > -1 / lastClaimTimestamp - Mask(80, 0, barn[_2521 << 240].field_16):
                    revert with 0, 17
                if (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_2706 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_2521 << 240].field_16) * sub_637d0d7b[uint8(mem[_2706 + 127 len 1] - 1)]) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_2706 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_2521 << 240].field_16) * sub_637d0d7b[uint8(mem[_2706 + 127 len 1] - 1)]) / 24 * 3600:
                    revert with 0, 17
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 224] = 80 * (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_2706 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_2521 << 240].field_16) * sub_637d0d7b[uint8(mem[_2706 + 127 len 1] - 1)]) / 24 * 3600 / 100
                if t == -1:
                    revert with 0, 17
                if uint8(s) == 255:
                    revert with 0, 17
                if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(s) + 1
                    t = t + 1
                    continue 
                _3181 = mem[64]
                mem[mem[64]] = 64
                _3207 = mem[96]
                mem[mem[64] + 64] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 96
                while idx < _3207:
                    _3495 = mem[t]
                    mem[u] = mem[mem[t]]
                    mem[u + 32] = mem[_3495 + 63 len 1]
                    mem[u + 64] = mem[_3495 + 95 len 1]
                    mem[u + 96] = mem[_3495 + 127 len 1]
                    mem[u + 128] = mem[_3495 + 159 len 1]
                    mem[u + 160] = mem[_3495 + 160]
                    mem[u + 192] = mem[_3495 + 192]
                    mem[u + 224] = mem[_3495 + 224]
                    idx = idx + 1
                    t = t + 32
                    u = u + 256
                    continue 
                mem[_3181 + 32] = uint8(uint8(s) + 1)
                return memory
                  from mem[64]
                   len _3181 + (256 * _3207) + -mem[64] + 96
            mem[0] = uint16(_2521)
            mem[32] = 153
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128] + 160] = Mask(80, 0, barn[_2521 << 240].field_16)
            mem[mem[64] + 4] = uint16(_2521)
            require ext_code.size(shieldAddress)
            staticcall shieldAddress.0x478ba63b with:
                    gas gas_remaining wei
                   args (_2521 << 240)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2700 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128] + 192] = mem[_2700]
            require ext_code.size(minerAddress)
            staticcall minerAddress.getTokenTraits(uint256 arg1) with:
                    gas gas_remaining wei
                   args (_2521 << 240)
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2748 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _2754 = mem[64]
            if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 128
            require mem[_2748] == mem[_2748 + 31 len 1]
            mem[_2754] = mem[_2748]
            require mem[_2748 + 32] == mem[_2748 + 63 len 1]
            mem[_2754 + 32] = mem[_2748 + 32]
            require mem[_2748 + 64] == mem[_2748 + 95 len 1]
            mem[_2754 + 64] = mem[_2748 + 64]
            require mem[_2748 + 96] == mem[_2748 + 127 len 1]
            mem[_2754 + 96] = mem[_2748 + 96]
            if 0 == mem[_2754 + 127 len 1]:
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                if t == -1:
                    revert with 0, 17
                if uint8(s) == 255:
                    revert with 0, 17
                if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(s) + 1
                    t = t + 1
                    continue 
                _2928 = mem[64]
                mem[mem[64]] = 64
                _2934 = mem[96]
                mem[mem[64] + 64] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 96
                while idx < _2934:
                    _3561 = mem[t]
                    mem[u] = mem[mem[t]]
                    mem[u + 32] = mem[_3561 + 63 len 1]
                    mem[u + 64] = mem[_3561 + 95 len 1]
                    mem[u + 96] = mem[_3561 + 127 len 1]
                    mem[u + 128] = mem[_3561 + 159 len 1]
                    mem[u + 160] = mem[_3561 + 160]
                    mem[u + 192] = mem[_3561 + 192]
                    mem[u + 224] = mem[_3561 + 224]
                    idx = idx + 1
                    t = t + 32
                    u = u + 256
                    continue 
                mem[_2928 + 32] = uint8(uint8(s) + 1)
                return memory
                  from mem[64]
                   len _2928 + (256 * _2934) + -mem[64] + 96
            if mem[_2754 + 63 len 1] != 0:
                mem[0] = mem[_2754 + 127 len 1]
                mem[32] = 154
                if packIndices[_2521 << 240] >= uint256(pack[mem[0]].field_0):
                    revert with 0, 50
                mem[0] = sha3(mem[0], 154)
                _2825 = sha3(mem[0])
                _2826 = mem[64]
                mem[64] = mem[64] + 96
                mem[_2826] = uint16(stor[sha3(mem[0]) + stor155[_2521 << 240]].field_0)
                mem[_2826 + 32] = Mask(80, 0, stor[_2825 + stor155[_2521 << 240]].field_16)
                mem[_2826 + 64] = address(stor[_2825 + stor155[_2521 << 240]].field_96)
                if not address(stor[_2825 + stor155[_2521 << 240]].field_96):
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                    if t == -1:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(s) + 1
                        t = t + 1
                        continue 
                    _2952 = mem[64]
                    mem[mem[64]] = 64
                    _2978 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 96
                    while idx < _2978:
                        _3531 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_3531 + 63 len 1]
                        mem[u + 64] = mem[_3531 + 95 len 1]
                        mem[u + 96] = mem[_3531 + 127 len 1]
                        mem[u + 128] = mem[_3531 + 159 len 1]
                        mem[u + 160] = mem[_3531 + 160]
                        mem[u + 192] = mem[_3531 + 192]
                        mem[u + 224] = mem[_3531 + 224]
                        idx = idx + 1
                        t = t + 32
                        u = u + 256
                        continue 
                    mem[_2952 + 32] = uint8(uint8(s) + 1)
                    return memory
                      from mem[64]
                       len _2952 + (256 * _2978) + -mem[64] + 96
                if mem[_2754 + 127 len 1] < 1:
                    revert with 0, 17
                if uint8(mem[_2754 + 127 len 1] - 1) >= 5:
                    revert with 0, 50
                if uint256(sub_bc633bf2) < Mask(80, 0, stor[_2825 + stor155[_2521 << 240]].field_16):
                    revert with 0, 17
                if sub_3f30e8d8[uint8(mem[_2754 + 127 len 1] - 1)] and uint256(sub_bc633bf2) - Mask(80, 0, stor[_2825 + stor155[_2521 << 240]].field_16) > -1 / sub_3f30e8d8[uint8(mem[_2754 + 127 len 1] - 1)]:
                    revert with 0, 17
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 224] = (uint256(sub_bc633bf2) * sub_3f30e8d8[uint8(mem[_2754 + 127 len 1] - 1)]) - (Mask(80, 0, stor[_2825 + stor155[_2521 << 240]].field_16) * sub_3f30e8d8[uint8(mem[_2754 + 127 len 1] - 1)])
                if t == -1:
                    revert with 0, 17
                if uint8(s) == 255:
                    revert with 0, 17
                if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(s) + 1
                    t = t + 1
                    continue 
                _3116 = mem[64]
                mem[mem[64]] = 64
                _3128 = mem[96]
                mem[mem[64] + 64] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 96
                while idx < _3128:
                    _3525 = mem[t]
                    mem[u] = mem[mem[t]]
                    mem[u + 32] = mem[_3525 + 63 len 1]
                    mem[u + 64] = mem[_3525 + 95 len 1]
                    mem[u + 96] = mem[_3525 + 127 len 1]
                    mem[u + 128] = mem[_3525 + 159 len 1]
                    mem[u + 160] = mem[_3525 + 160]
                    mem[u + 192] = mem[_3525 + 192]
                    mem[u + 224] = mem[_3525 + 224]
                    idx = idx + 1
                    t = t + 32
                    u = u + 256
                    continue 
                mem[_3116 + 32] = uint8(uint8(s) + 1)
                return memory
                  from mem[64]
                   len _3116 + (256 * _3128) + -mem[64] + 96
            mem[0] = uint16(_2521)
            mem[32] = 153
            _2818 = mem[64]
            mem[64] = mem[64] + 96
            mem[_2818] = uint16(barn[_2521 << 240].field_0)
            mem[_2818 + 32] = Mask(80, 0, barn[_2521 << 240].field_16)
            mem[_2818 + 64] = address(barn[_2521 << 240].field_96)
            if not address(barn[_2521 << 240].field_96):
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                if t == -1:
                    revert with 0, 17
                if uint8(s) == 255:
                    revert with 0, 17
                if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(s) + 1
                    t = t + 1
                    continue 
                _2941 = mem[64]
                mem[mem[64]] = 64
                _2953 = mem[96]
                mem[mem[64] + 64] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 96
                while idx < _2953:
                    _3555 = mem[t]
                    mem[u] = mem[mem[t]]
                    mem[u + 32] = mem[_3555 + 63 len 1]
                    mem[u + 64] = mem[_3555 + 95 len 1]
                    mem[u + 96] = mem[_3555 + 127 len 1]
                    mem[u + 128] = mem[_3555 + 159 len 1]
                    mem[u + 160] = mem[_3555 + 160]
                    mem[u + 192] = mem[_3555 + 192]
                    mem[u + 224] = mem[_3555 + 224]
                    idx = idx + 1
                    t = t + 32
                    u = u + 256
                    continue 
                mem[_2941 + 32] = uint8(uint8(s) + 1)
                return memory
                  from mem[64]
                   len _2941 + (256 * _2953) + -mem[64] + 96
            if sub_2d8c2ef1 < 400000000 * 10^18:
                if mem[_2754 + 127 len 1] < 1:
                    revert with 0, 17
                if uint8(mem[_2754 + 127 len 1] - 1) >= 8:
                    revert with 0, 50
                if block.timestamp < Mask(80, 0, barn[_2521 << 240].field_16):
                    revert with 0, 17
                if block.timestamp - Mask(80, 0, barn[_2521 << 240].field_16) and sub_637d0d7b[uint8(mem[_2754 + 127 len 1] - 1)] > -1 / block.timestamp - Mask(80, 0, barn[_2521 << 240].field_16):
                    revert with 0, 17
                if (block.timestamp * sub_637d0d7b[uint8(mem[_2754 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_2521 << 240].field_16) * sub_637d0d7b[uint8(mem[_2754 + 127 len 1] - 1)]) / 24 * 3600 and 80 > -1 / (block.timestamp * sub_637d0d7b[uint8(mem[_2754 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_2521 << 240].field_16) * sub_637d0d7b[uint8(mem[_2754 + 127 len 1] - 1)]) / 24 * 3600:
                    revert with 0, 17
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 224] = 80 * (block.timestamp * sub_637d0d7b[uint8(mem[_2754 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_2521 << 240].field_16) * sub_637d0d7b[uint8(mem[_2754 + 127 len 1] - 1)]) / 24 * 3600 / 100
                if t == -1:
                    revert with 0, 17
                if uint8(s) == 255:
                    revert with 0, 17
                if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(s) + 1
                    t = t + 1
                    continue 
                _3305 = mem[64]
                mem[mem[64]] = 64
                _3316 = mem[96]
                mem[mem[64] + 64] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 96
                while idx < _3316:
                    _3549 = mem[t]
                    mem[u] = mem[mem[t]]
                    mem[u + 32] = mem[_3549 + 63 len 1]
                    mem[u + 64] = mem[_3549 + 95 len 1]
                    mem[u + 96] = mem[_3549 + 127 len 1]
                    mem[u + 128] = mem[_3549 + 159 len 1]
                    mem[u + 160] = mem[_3549 + 160]
                    mem[u + 192] = mem[_3549 + 192]
                    mem[u + 224] = mem[_3549 + 224]
                    idx = idx + 1
                    t = t + 32
                    u = u + 256
                    continue 
                mem[_3305 + 32] = uint8(uint8(s) + 1)
                return memory
                  from mem[64]
                   len _3305 + (256 * _3316) + -mem[64] + 96
            if Mask(80, 0, barn[_2521 << 240].field_16) > lastClaimTimestamp:
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                if t == -1:
                    revert with 0, 17
                if uint8(s) == 255:
                    revert with 0, 17
                if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(s) + 1
                    t = t + 1
                    continue 
                _3129 = mem[64]
                mem[mem[64]] = 64
                _3136 = mem[96]
                mem[mem[64] + 64] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 96
                while idx < _3136:
                    _3543 = mem[t]
                    mem[u] = mem[mem[t]]
                    mem[u + 32] = mem[_3543 + 63 len 1]
                    mem[u + 64] = mem[_3543 + 95 len 1]
                    mem[u + 96] = mem[_3543 + 127 len 1]
                    mem[u + 128] = mem[_3543 + 159 len 1]
                    mem[u + 160] = mem[_3543 + 160]
                    mem[u + 192] = mem[_3543 + 192]
                    mem[u + 224] = mem[_3543 + 224]
                    idx = idx + 1
                    t = t + 32
                    u = u + 256
                    continue 
                mem[_3129 + 32] = uint8(uint8(s) + 1)
                return memory
                  from mem[64]
                   len _3129 + (256 * _3136) + -mem[64] + 96
            if mem[_2754 + 127 len 1] < 1:
                revert with 0, 17
            if uint8(mem[_2754 + 127 len 1] - 1) >= 8:
                revert with 0, 50
            if lastClaimTimestamp < Mask(80, 0, barn[_2521 << 240].field_16):
                revert with 0, 17
            if lastClaimTimestamp - Mask(80, 0, barn[_2521 << 240].field_16) and sub_637d0d7b[uint8(mem[_2754 + 127 len 1] - 1)] > -1 / lastClaimTimestamp - Mask(80, 0, barn[_2521 << 240].field_16):
                revert with 0, 17
            if (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_2754 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_2521 << 240].field_16) * sub_637d0d7b[uint8(mem[_2754 + 127 len 1] - 1)]) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_2754 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_2521 << 240].field_16) * sub_637d0d7b[uint8(mem[_2754 + 127 len 1] - 1)]) / 24 * 3600:
                revert with 0, 17
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128] + 224] = 80 * (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_2754 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_2521 << 240].field_16) * sub_637d0d7b[uint8(mem[_2754 + 127 len 1] - 1)]) / 24 * 3600 / 100
            if t == -1:
                revert with 0, 17
            if uint8(s) == 255:
                revert with 0, 17
            if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                if uint8(idx) == 255:
                    revert with 0, 17
                idx = uint8(idx) + 1
                s = uint8(s) + 1
                t = t + 1
                continue 
            _3315 = mem[64]
            mem[mem[64]] = 64
            _3329 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            t = 128
            u = mem[64] + 96
            while idx < _3329:
                _3537 = mem[t]
                mem[u] = mem[mem[t]]
                mem[u + 32] = mem[_3537 + 63 len 1]
                mem[u + 64] = mem[_3537 + 95 len 1]
                mem[u + 96] = mem[_3537 + 127 len 1]
                mem[u + 128] = mem[_3537 + 159 len 1]
                mem[u + 160] = mem[_3537 + 160]
                mem[u + 192] = mem[_3537 + 192]
                mem[u + 224] = mem[_3537 + 224]
                idx = idx + 1
                t = t + 32
                u = u + 256
                continue 
            mem[_3315 + 32] = uint8(uint8(s) + 1)
            return memory
              from mem[64]
               len _3315 + (256 * _3329) + -mem[64] + 96
        _2520 = mem[64]
        mem[mem[64]] = 64
        _2568 = mem[96]
        mem[mem[64] + 64] = mem[96]
        idx = 0
        t = 128
        u = mem[64] + 96
        while idx < _2568:
            _3477 = mem[t]
            mem[u] = mem[mem[t]]
            mem[u + 32] = mem[_3477 + 63 len 1]
            mem[u + 64] = mem[_3477 + 95 len 1]
            mem[u + 96] = mem[_3477 + 127 len 1]
            mem[u + 128] = mem[_3477 + 159 len 1]
            mem[u + 160] = mem[_3477 + 160]
            mem[u + 192] = mem[_3477 + 192]
            mem[u + 224] = mem[_3477 + 224]
            idx = idx + 1
            t = t + 32
            u = u + 256
            continue 
        mem[_2520 + 32] = uint8(s)
        return memory
          from mem[64]
           len _2520 + (256 * _2568) + -mem[64] + 96
    mem[64] = (32 * uint8(arg3)) + 384
    mem[(32 * uint8(arg3)) + 128] = 0
    mem[(32 * uint8(arg3)) + 160] = 0
    mem[(32 * uint8(arg3)) + 192] = 0
    mem[(32 * uint8(arg3)) + 224] = 0
    mem[(32 * uint8(arg3)) + 256] = 0
    mem[(32 * uint8(arg3)) + 288] = 0
    mem[(32 * uint8(arg3)) + 320] = 0
    mem[(32 * uint8(arg3)) + 352] = 0
    mem[var20001] = (32 * uint8(arg3)) + 128
    s = var20001
    idx = var20002
    while idx - 1:
        mem[64] = mem[64] + 256
        mem[(32 * uint8(arg3)) + 128] = 0
        mem[(32 * uint8(arg3)) + 160] = 0
        mem[(32 * uint8(arg3)) + 192] = 0
        mem[(32 * uint8(arg3)) + 224] = 0
        mem[(32 * uint8(arg3)) + 256] = 0
        mem[(32 * uint8(arg3)) + 288] = 0
        mem[(32 * uint8(arg3)) + 320] = 0
        mem[(32 * uint8(arg3)) + 352] = 0
        mem[s + 32] = (32 * uint8(arg3)) + 128
        s = s + 32
        idx = idx - 1
        continue 
    mem[0] = address(arg1)
    mem[32] = 179
    if not uint256(balanceOf[address(arg1)].field_0):
        _2602 = mem[64]
        mem[mem[64]] = 64
        _2605 = mem[96]
        mem[mem[64] + 64] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 96
        while idx < _2605:
            _3567 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_3567 + 63 len 1]
            mem[t + 64] = mem[_3567 + 95 len 1]
            mem[t + 96] = mem[_3567 + 127 len 1]
            mem[t + 128] = mem[_3567 + 159 len 1]
            mem[t + 160] = mem[_3567 + 160]
            mem[t + 192] = mem[_3567 + 192]
            mem[t + 224] = mem[_3567 + 224]
            idx = idx + 1
            s = s + 32
            t = t + 256
            continue 
        mem[_2602 + 32] = 0
        return memory
          from mem[64]
           len _2602 + (256 * _2605) + -mem[64] + 96
    if arg2 >= uint256(balanceOf[address(arg1)].field_0):
        _2606 = mem[64]
        mem[mem[64]] = 64
        _2608 = mem[96]
        mem[mem[64] + 64] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 96
        while idx < _2608:
            _3574 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_3574 + 63 len 1]
            mem[t + 64] = mem[_3574 + 95 len 1]
            mem[t + 96] = mem[_3574 + 127 len 1]
            mem[t + 128] = mem[_3574 + 159 len 1]
            mem[t + 160] = mem[_3574 + 160]
            mem[t + 192] = mem[_3574 + 192]
            mem[t + 224] = mem[_3574 + 224]
            idx = idx + 1
            s = s + 32
            t = t + 256
            continue 
        mem[_2606 + 32] = 0
        return memory
          from mem[64]
           len _2606 + (256 * _2608) + -mem[64] + 96
    mem[0] = address(arg1)
    mem[32] = 179
    _2600 = mem[64]
    mem[64] = mem[64] + (32 * uint256(balanceOf[address(arg1)].field_0)) + 32
    mem[_2600] = uint256(balanceOf[address(arg1)].field_0)
    if not uint256(balanceOf[address(arg1)].field_0):
        idx = 0
        s = 0
        t = arg2
        while uint8(idx) < uint8(arg3):
            if t >= mem[_2600]:
                revert with 0, 50
            _3581 = mem[(32 * t) + _2600 + 32]
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128]] = mem[(32 * t) + _2600 + 62 len 2]
            require ext_code.size(minerAddress)
            staticcall minerAddress.getTokenTraits(uint256 arg1) with:
                    gas gas_remaining wei
                   args (_3581 << 240)
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3671 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _3680 = mem[64]
            if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 128
            require mem[_3671] == mem[_3671 + 31 len 1]
            mem[_3680] = mem[_3671]
            require mem[_3671 + 32] == mem[_3671 + 63 len 1]
            mem[_3680 + 32] = mem[_3671 + 32]
            require mem[_3671 + 64] == mem[_3671 + 95 len 1]
            mem[_3680 + 64] = mem[_3671 + 64]
            require mem[_3671 + 96] == mem[_3671 + 127 len 1]
            mem[_3680 + 96] = mem[_3671 + 96]
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128] + 32] = mem[_3680 + 31 len 1]
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128] + 64] = mem[_3680 + 63 len 1]
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128] + 96] = mem[_3680 + 95 len 1]
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128] + 128] = mem[_3680 + 127 len 1]
            if mem[_3680 + 63 len 1]:
                require ext_code.size(minerAddress)
                staticcall minerAddress.getTokenTraits(uint256 arg1) with:
                        gas gas_remaining wei
                       args (_3581 << 240)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3733 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _3737 = mem[64]
                if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 128
                require mem[_3733] == mem[_3733 + 31 len 1]
                mem[_3737] = mem[_3733]
                require mem[_3733 + 32] == mem[_3733 + 63 len 1]
                mem[_3737 + 32] = mem[_3733 + 32]
                require mem[_3733 + 64] == mem[_3733 + 95 len 1]
                mem[_3737 + 64] = mem[_3733 + 64]
                require mem[_3733 + 96] == mem[_3733 + 127 len 1]
                mem[_3737 + 96] = mem[_3733 + 96]
                if 0 == mem[_3737 + 127 len 1]:
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                    if t == -1:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(s) + 1
                        t = t + 1
                        continue 
                    _3822 = mem[64]
                    mem[mem[64]] = 64
                    _3827 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 96
                    while idx < _3827:
                        _4269 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_4269 + 63 len 1]
                        mem[u + 64] = mem[_4269 + 95 len 1]
                        mem[u + 96] = mem[_4269 + 127 len 1]
                        mem[u + 128] = mem[_4269 + 159 len 1]
                        mem[u + 160] = mem[_4269 + 160]
                        mem[u + 192] = mem[_4269 + 192]
                        mem[u + 224] = mem[_4269 + 224]
                        idx = idx + 1
                        t = t + 32
                        u = u + 256
                        continue 
                    mem[_3822 + 32] = uint8(uint8(s) + 1)
                    return memory
                      from mem[64]
                       len _3822 + (256 * _3827) + -mem[64] + 96
                if mem[_3737 + 63 len 1] != 0:
                    mem[0] = mem[_3737 + 127 len 1]
                    mem[32] = 154
                    if packIndices[_3581 << 240] >= uint256(pack[mem[0]].field_0):
                        revert with 0, 50
                    mem[0] = sha3(mem[0], 154)
                    _3773 = sha3(mem[0])
                    _3774 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_3774] = uint16(stor[sha3(mem[0]) + stor155[_3581 << 240]].field_0)
                    mem[_3774 + 32] = Mask(80, 0, stor[_3773 + stor155[_3581 << 240]].field_16)
                    mem[_3774 + 64] = address(stor[_3773 + stor155[_3581 << 240]].field_96)
                    if not address(stor[_3773 + stor155[_3581 << 240]].field_96):
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                        if t == -1:
                            revert with 0, 17
                        if uint8(s) == 255:
                            revert with 0, 17
                        if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = uint8(s) + 1
                            t = t + 1
                            continue 
                        _3842 = mem[64]
                        mem[mem[64]] = 64
                        _3857 = mem[96]
                        mem[mem[64] + 64] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 96
                        while idx < _3857:
                            _4239 = mem[t]
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_4239 + 63 len 1]
                            mem[u + 64] = mem[_4239 + 95 len 1]
                            mem[u + 96] = mem[_4239 + 127 len 1]
                            mem[u + 128] = mem[_4239 + 159 len 1]
                            mem[u + 160] = mem[_4239 + 160]
                            mem[u + 192] = mem[_4239 + 192]
                            mem[u + 224] = mem[_4239 + 224]
                            idx = idx + 1
                            t = t + 32
                            u = u + 256
                            continue 
                        mem[_3842 + 32] = uint8(uint8(s) + 1)
                        return memory
                          from mem[64]
                           len _3842 + (256 * _3857) + -mem[64] + 96
                    if mem[_3737 + 127 len 1] < 1:
                        revert with 0, 17
                    if uint8(mem[_3737 + 127 len 1] - 1) >= 5:
                        revert with 0, 50
                    if uint256(sub_bc633bf2) < Mask(80, 0, stor[_3773 + stor155[_3581 << 240]].field_16):
                        revert with 0, 17
                    if sub_3f30e8d8[uint8(mem[_3737 + 127 len 1] - 1)] and uint256(sub_bc633bf2) - Mask(80, 0, stor[_3773 + stor155[_3581 << 240]].field_16) > -1 / sub_3f30e8d8[uint8(mem[_3737 + 127 len 1] - 1)]:
                        revert with 0, 17
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 224] = (uint256(sub_bc633bf2) * sub_3f30e8d8[uint8(mem[_3737 + 127 len 1] - 1)]) - (Mask(80, 0, stor[_3773 + stor155[_3581 << 240]].field_16) * sub_3f30e8d8[uint8(mem[_3737 + 127 len 1] - 1)])
                    if t == -1:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(s) + 1
                        t = t + 1
                        continue 
                    _3942 = mem[64]
                    mem[mem[64]] = 64
                    _3953 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 96
                    while idx < _3953:
                        _4233 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_4233 + 63 len 1]
                        mem[u + 64] = mem[_4233 + 95 len 1]
                        mem[u + 96] = mem[_4233 + 127 len 1]
                        mem[u + 128] = mem[_4233 + 159 len 1]
                        mem[u + 160] = mem[_4233 + 160]
                        mem[u + 192] = mem[_4233 + 192]
                        mem[u + 224] = mem[_4233 + 224]
                        idx = idx + 1
                        t = t + 32
                        u = u + 256
                        continue 
                    mem[_3942 + 32] = uint8(uint8(s) + 1)
                    return memory
                      from mem[64]
                       len _3942 + (256 * _3953) + -mem[64] + 96
                mem[0] = uint16(_3581)
                mem[32] = 153
                _3772 = mem[64]
                mem[64] = mem[64] + 96
                mem[_3772] = uint16(barn[_3581 << 240].field_0)
                mem[_3772 + 32] = Mask(80, 0, barn[_3581 << 240].field_16)
                mem[_3772 + 64] = address(barn[_3581 << 240].field_96)
                if not address(barn[_3581 << 240].field_96):
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                    if t == -1:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(s) + 1
                        t = t + 1
                        continue 
                    _3833 = mem[64]
                    mem[mem[64]] = 64
                    _3843 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 96
                    while idx < _3843:
                        _4263 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_4263 + 63 len 1]
                        mem[u + 64] = mem[_4263 + 95 len 1]
                        mem[u + 96] = mem[_4263 + 127 len 1]
                        mem[u + 128] = mem[_4263 + 159 len 1]
                        mem[u + 160] = mem[_4263 + 160]
                        mem[u + 192] = mem[_4263 + 192]
                        mem[u + 224] = mem[_4263 + 224]
                        idx = idx + 1
                        t = t + 32
                        u = u + 256
                        continue 
                    mem[_3833 + 32] = uint8(uint8(s) + 1)
                    return memory
                      from mem[64]
                       len _3833 + (256 * _3843) + -mem[64] + 96
                if sub_2d8c2ef1 < 400000000 * 10^18:
                    if mem[_3737 + 127 len 1] < 1:
                        revert with 0, 17
                    if uint8(mem[_3737 + 127 len 1] - 1) >= 8:
                        revert with 0, 50
                    if block.timestamp < Mask(80, 0, barn[_3581 << 240].field_16):
                        revert with 0, 17
                    if block.timestamp - Mask(80, 0, barn[_3581 << 240].field_16) and sub_637d0d7b[uint8(mem[_3737 + 127 len 1] - 1)] > -1 / block.timestamp - Mask(80, 0, barn[_3581 << 240].field_16):
                        revert with 0, 17
                    if (block.timestamp * sub_637d0d7b[uint8(mem[_3737 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_3581 << 240].field_16) * sub_637d0d7b[uint8(mem[_3737 + 127 len 1] - 1)]) / 24 * 3600 and 80 > -1 / (block.timestamp * sub_637d0d7b[uint8(mem[_3737 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_3581 << 240].field_16) * sub_637d0d7b[uint8(mem[_3737 + 127 len 1] - 1)]) / 24 * 3600:
                        revert with 0, 17
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 224] = 80 * (block.timestamp * sub_637d0d7b[uint8(mem[_3737 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_3581 << 240].field_16) * sub_637d0d7b[uint8(mem[_3737 + 127 len 1] - 1)]) / 24 * 3600 / 100
                    if t == -1:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(s) + 1
                        t = t + 1
                        continue 
                    _4079 = mem[64]
                    mem[mem[64]] = 64
                    _4089 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 96
                    while idx < _4089:
                        _4257 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_4257 + 63 len 1]
                        mem[u + 64] = mem[_4257 + 95 len 1]
                        mem[u + 96] = mem[_4257 + 127 len 1]
                        mem[u + 128] = mem[_4257 + 159 len 1]
                        mem[u + 160] = mem[_4257 + 160]
                        mem[u + 192] = mem[_4257 + 192]
                        mem[u + 224] = mem[_4257 + 224]
                        idx = idx + 1
                        t = t + 32
                        u = u + 256
                        continue 
                    mem[_4079 + 32] = uint8(uint8(s) + 1)
                    return memory
                      from mem[64]
                       len _4079 + (256 * _4089) + -mem[64] + 96
                if Mask(80, 0, barn[_3581 << 240].field_16) > lastClaimTimestamp:
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                    if t == -1:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(s) + 1
                        t = t + 1
                        continue 
                    _3954 = mem[64]
                    mem[mem[64]] = 64
                    _3959 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 96
                    while idx < _3959:
                        _4251 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_4251 + 63 len 1]
                        mem[u + 64] = mem[_4251 + 95 len 1]
                        mem[u + 96] = mem[_4251 + 127 len 1]
                        mem[u + 128] = mem[_4251 + 159 len 1]
                        mem[u + 160] = mem[_4251 + 160]
                        mem[u + 192] = mem[_4251 + 192]
                        mem[u + 224] = mem[_4251 + 224]
                        idx = idx + 1
                        t = t + 32
                        u = u + 256
                        continue 
                    mem[_3954 + 32] = uint8(uint8(s) + 1)
                    return memory
                      from mem[64]
                       len _3954 + (256 * _3959) + -mem[64] + 96
                if mem[_3737 + 127 len 1] < 1:
                    revert with 0, 17
                if uint8(mem[_3737 + 127 len 1] - 1) >= 8:
                    revert with 0, 50
                if lastClaimTimestamp < Mask(80, 0, barn[_3581 << 240].field_16):
                    revert with 0, 17
                if lastClaimTimestamp - Mask(80, 0, barn[_3581 << 240].field_16) and sub_637d0d7b[uint8(mem[_3737 + 127 len 1] - 1)] > -1 / lastClaimTimestamp - Mask(80, 0, barn[_3581 << 240].field_16):
                    revert with 0, 17
                if (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_3737 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_3581 << 240].field_16) * sub_637d0d7b[uint8(mem[_3737 + 127 len 1] - 1)]) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_3737 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_3581 << 240].field_16) * sub_637d0d7b[uint8(mem[_3737 + 127 len 1] - 1)]) / 24 * 3600:
                    revert with 0, 17
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 224] = 80 * (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_3737 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_3581 << 240].field_16) * sub_637d0d7b[uint8(mem[_3737 + 127 len 1] - 1)]) / 24 * 3600 / 100
                if t == -1:
                    revert with 0, 17
                if uint8(s) == 255:
                    revert with 0, 17
                if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(s) + 1
                    t = t + 1
                    continue 
                _4088 = mem[64]
                mem[mem[64]] = 64
                _4100 = mem[96]
                mem[mem[64] + 64] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 96
                while idx < _4100:
                    _4245 = mem[t]
                    mem[u] = mem[mem[t]]
                    mem[u + 32] = mem[_4245 + 63 len 1]
                    mem[u + 64] = mem[_4245 + 95 len 1]
                    mem[u + 96] = mem[_4245 + 127 len 1]
                    mem[u + 128] = mem[_4245 + 159 len 1]
                    mem[u + 160] = mem[_4245 + 160]
                    mem[u + 192] = mem[_4245 + 192]
                    mem[u + 224] = mem[_4245 + 224]
                    idx = idx + 1
                    t = t + 32
                    u = u + 256
                    continue 
                mem[_4088 + 32] = uint8(uint8(s) + 1)
                return memory
                  from mem[64]
                   len _4088 + (256 * _4100) + -mem[64] + 96
            mem[0] = uint16(_3581)
            mem[32] = 153
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128] + 160] = Mask(80, 0, barn[_3581 << 240].field_16)
            mem[mem[64] + 4] = uint16(_3581)
            require ext_code.size(shieldAddress)
            staticcall shieldAddress.0x478ba63b with:
                    gas gas_remaining wei
                   args (_3581 << 240)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3734 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128] + 192] = mem[_3734]
            require ext_code.size(minerAddress)
            staticcall minerAddress.getTokenTraits(uint256 arg1) with:
                    gas gas_remaining wei
                   args (_3581 << 240)
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3755 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _3758 = mem[64]
            if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 128
            require mem[_3755] == mem[_3755 + 31 len 1]
            mem[_3758] = mem[_3755]
            require mem[_3755 + 32] == mem[_3755 + 63 len 1]
            mem[_3758 + 32] = mem[_3755 + 32]
            require mem[_3755 + 64] == mem[_3755 + 95 len 1]
            mem[_3758 + 64] = mem[_3755 + 64]
            require mem[_3755 + 96] == mem[_3755 + 127 len 1]
            mem[_3758 + 96] = mem[_3755 + 96]
            if 0 == mem[_3758 + 127 len 1]:
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                if t == -1:
                    revert with 0, 17
                if uint8(s) == 255:
                    revert with 0, 17
                if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(s) + 1
                    t = t + 1
                    continue 
                _3931 = mem[64]
                mem[mem[64]] = 64
                _3935 = mem[96]
                mem[mem[64] + 64] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 96
                while idx < _3935:
                    _4311 = mem[t]
                    mem[u] = mem[mem[t]]
                    mem[u + 32] = mem[_4311 + 63 len 1]
                    mem[u + 64] = mem[_4311 + 95 len 1]
                    mem[u + 96] = mem[_4311 + 127 len 1]
                    mem[u + 128] = mem[_4311 + 159 len 1]
                    mem[u + 160] = mem[_4311 + 160]
                    mem[u + 192] = mem[_4311 + 192]
                    mem[u + 224] = mem[_4311 + 224]
                    idx = idx + 1
                    t = t + 32
                    u = u + 256
                    continue 
                mem[_3931 + 32] = uint8(uint8(s) + 1)
                return memory
                  from mem[64]
                   len _3931 + (256 * _3935) + -mem[64] + 96
            if mem[_3758 + 63 len 1] != 0:
                mem[0] = mem[_3758 + 127 len 1]
                mem[32] = 154
                if packIndices[_3581 << 240] >= uint256(pack[mem[0]].field_0):
                    revert with 0, 50
                mem[0] = sha3(mem[0], 154)
                _3823 = sha3(mem[0])
                _3824 = mem[64]
                mem[64] = mem[64] + 96
                mem[_3824] = uint16(stor[sha3(mem[0]) + stor155[_3581 << 240]].field_0)
                mem[_3824 + 32] = Mask(80, 0, stor[_3823 + stor155[_3581 << 240]].field_16)
                mem[_3824 + 64] = address(stor[_3823 + stor155[_3581 << 240]].field_96)
                if not address(stor[_3823 + stor155[_3581 << 240]].field_96):
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                    if t == -1:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(s) + 1
                        t = t + 1
                        continue 
                    _3944 = mem[64]
                    mem[mem[64]] = 64
                    _3956 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 96
                    while idx < _3956:
                        _4281 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_4281 + 63 len 1]
                        mem[u + 64] = mem[_4281 + 95 len 1]
                        mem[u + 96] = mem[_4281 + 127 len 1]
                        mem[u + 128] = mem[_4281 + 159 len 1]
                        mem[u + 160] = mem[_4281 + 160]
                        mem[u + 192] = mem[_4281 + 192]
                        mem[u + 224] = mem[_4281 + 224]
                        idx = idx + 1
                        t = t + 32
                        u = u + 256
                        continue 
                    mem[_3944 + 32] = uint8(uint8(s) + 1)
                    return memory
                      from mem[64]
                       len _3944 + (256 * _3956) + -mem[64] + 96
                if mem[_3758 + 127 len 1] < 1:
                    revert with 0, 17
                if uint8(mem[_3758 + 127 len 1] - 1) >= 5:
                    revert with 0, 50
                if uint256(sub_bc633bf2) < Mask(80, 0, stor[_3823 + stor155[_3581 << 240]].field_16):
                    revert with 0, 17
                if sub_3f30e8d8[uint8(mem[_3758 + 127 len 1] - 1)] and uint256(sub_bc633bf2) - Mask(80, 0, stor[_3823 + stor155[_3581 << 240]].field_16) > -1 / sub_3f30e8d8[uint8(mem[_3758 + 127 len 1] - 1)]:
                    revert with 0, 17
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 224] = (uint256(sub_bc633bf2) * sub_3f30e8d8[uint8(mem[_3758 + 127 len 1] - 1)]) - (Mask(80, 0, stor[_3823 + stor155[_3581 << 240]].field_16) * sub_3f30e8d8[uint8(mem[_3758 + 127 len 1] - 1)])
                if t == -1:
                    revert with 0, 17
                if uint8(s) == 255:
                    revert with 0, 17
                if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(s) + 1
                    t = t + 1
                    continue 
                _4074 = mem[64]
                mem[mem[64]] = 64
                _4076 = mem[96]
                mem[mem[64] + 64] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 96
                while idx < _4076:
                    _4275 = mem[t]
                    mem[u] = mem[mem[t]]
                    mem[u + 32] = mem[_4275 + 63 len 1]
                    mem[u + 64] = mem[_4275 + 95 len 1]
                    mem[u + 96] = mem[_4275 + 127 len 1]
                    mem[u + 128] = mem[_4275 + 159 len 1]
                    mem[u + 160] = mem[_4275 + 160]
                    mem[u + 192] = mem[_4275 + 192]
                    mem[u + 224] = mem[_4275 + 224]
                    idx = idx + 1
                    t = t + 32
                    u = u + 256
                    continue 
                mem[_4074 + 32] = uint8(uint8(s) + 1)
                return memory
                  from mem[64]
                   len _4074 + (256 * _4076) + -mem[64] + 96
            mem[0] = uint16(_3581)
            mem[32] = 153
            _3820 = mem[64]
            mem[64] = mem[64] + 96
            mem[_3820] = uint16(barn[_3581 << 240].field_0)
            mem[_3820 + 32] = Mask(80, 0, barn[_3581 << 240].field_16)
            mem[_3820 + 64] = address(barn[_3581 << 240].field_96)
            if not address(barn[_3581 << 240].field_96):
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                if t == -1:
                    revert with 0, 17
                if uint8(s) == 255:
                    revert with 0, 17
                if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(s) + 1
                    t = t + 1
                    continue 
                _3940 = mem[64]
                mem[mem[64]] = 64
                _3945 = mem[96]
                mem[mem[64] + 64] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 96
                while idx < _3945:
                    _4305 = mem[t]
                    mem[u] = mem[mem[t]]
                    mem[u + 32] = mem[_4305 + 63 len 1]
                    mem[u + 64] = mem[_4305 + 95 len 1]
                    mem[u + 96] = mem[_4305 + 127 len 1]
                    mem[u + 128] = mem[_4305 + 159 len 1]
                    mem[u + 160] = mem[_4305 + 160]
                    mem[u + 192] = mem[_4305 + 192]
                    mem[u + 224] = mem[_4305 + 224]
                    idx = idx + 1
                    t = t + 32
                    u = u + 256
                    continue 
                mem[_3940 + 32] = uint8(uint8(s) + 1)
                return memory
                  from mem[64]
                   len _3940 + (256 * _3945) + -mem[64] + 96
            if sub_2d8c2ef1 < 400000000 * 10^18:
                if mem[_3758 + 127 len 1] < 1:
                    revert with 0, 17
                if uint8(mem[_3758 + 127 len 1] - 1) >= 8:
                    revert with 0, 50
                if block.timestamp < Mask(80, 0, barn[_3581 << 240].field_16):
                    revert with 0, 17
                if block.timestamp - Mask(80, 0, barn[_3581 << 240].field_16) and sub_637d0d7b[uint8(mem[_3758 + 127 len 1] - 1)] > -1 / block.timestamp - Mask(80, 0, barn[_3581 << 240].field_16):
                    revert with 0, 17
                if (block.timestamp * sub_637d0d7b[uint8(mem[_3758 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_3581 << 240].field_16) * sub_637d0d7b[uint8(mem[_3758 + 127 len 1] - 1)]) / 24 * 3600 and 80 > -1 / (block.timestamp * sub_637d0d7b[uint8(mem[_3758 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_3581 << 240].field_16) * sub_637d0d7b[uint8(mem[_3758 + 127 len 1] - 1)]) / 24 * 3600:
                    revert with 0, 17
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 224] = 80 * (block.timestamp * sub_637d0d7b[uint8(mem[_3758 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_3581 << 240].field_16) * sub_637d0d7b[uint8(mem[_3758 + 127 len 1] - 1)]) / 24 * 3600 / 100
                if t == -1:
                    revert with 0, 17
                if uint8(s) == 255:
                    revert with 0, 17
                if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(s) + 1
                    t = t + 1
                    continue 
                _4178 = mem[64]
                mem[mem[64]] = 64
                _4181 = mem[96]
                mem[mem[64] + 64] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 96
                while idx < _4181:
                    _4299 = mem[t]
                    mem[u] = mem[mem[t]]
                    mem[u + 32] = mem[_4299 + 63 len 1]
                    mem[u + 64] = mem[_4299 + 95 len 1]
                    mem[u + 96] = mem[_4299 + 127 len 1]
                    mem[u + 128] = mem[_4299 + 159 len 1]
                    mem[u + 160] = mem[_4299 + 160]
                    mem[u + 192] = mem[_4299 + 192]
                    mem[u + 224] = mem[_4299 + 224]
                    idx = idx + 1
                    t = t + 32
                    u = u + 256
                    continue 
                mem[_4178 + 32] = uint8(uint8(s) + 1)
                return memory
                  from mem[64]
                   len _4178 + (256 * _4181) + -mem[64] + 96
            if Mask(80, 0, barn[_3581 << 240].field_16) > lastClaimTimestamp:
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                if t == -1:
                    revert with 0, 17
                if uint8(s) == 255:
                    revert with 0, 17
                if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(s) + 1
                    t = t + 1
                    continue 
                _4077 = mem[64]
                mem[mem[64]] = 64
                _4078 = mem[96]
                mem[mem[64] + 64] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 96
                while idx < _4078:
                    _4293 = mem[t]
                    mem[u] = mem[mem[t]]
                    mem[u + 32] = mem[_4293 + 63 len 1]
                    mem[u + 64] = mem[_4293 + 95 len 1]
                    mem[u + 96] = mem[_4293 + 127 len 1]
                    mem[u + 128] = mem[_4293 + 159 len 1]
                    mem[u + 160] = mem[_4293 + 160]
                    mem[u + 192] = mem[_4293 + 192]
                    mem[u + 224] = mem[_4293 + 224]
                    idx = idx + 1
                    t = t + 32
                    u = u + 256
                    continue 
                mem[_4077 + 32] = uint8(uint8(s) + 1)
                return memory
                  from mem[64]
                   len _4077 + (256 * _4078) + -mem[64] + 96
            if mem[_3758 + 127 len 1] < 1:
                revert with 0, 17
            if uint8(mem[_3758 + 127 len 1] - 1) >= 8:
                revert with 0, 50
            if lastClaimTimestamp < Mask(80, 0, barn[_3581 << 240].field_16):
                revert with 0, 17
            if lastClaimTimestamp - Mask(80, 0, barn[_3581 << 240].field_16) and sub_637d0d7b[uint8(mem[_3758 + 127 len 1] - 1)] > -1 / lastClaimTimestamp - Mask(80, 0, barn[_3581 << 240].field_16):
                revert with 0, 17
            if (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_3758 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_3581 << 240].field_16) * sub_637d0d7b[uint8(mem[_3758 + 127 len 1] - 1)]) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_3758 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_3581 << 240].field_16) * sub_637d0d7b[uint8(mem[_3758 + 127 len 1] - 1)]) / 24 * 3600:
                revert with 0, 17
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128] + 224] = 80 * (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_3758 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_3581 << 240].field_16) * sub_637d0d7b[uint8(mem[_3758 + 127 len 1] - 1)]) / 24 * 3600 / 100
            if t == -1:
                revert with 0, 17
            if uint8(s) == 255:
                revert with 0, 17
            if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                if uint8(idx) == 255:
                    revert with 0, 17
                idx = uint8(idx) + 1
                s = uint8(s) + 1
                t = t + 1
                continue 
            _4180 = mem[64]
            mem[mem[64]] = 64
            _4182 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            t = 128
            u = mem[64] + 96
            while idx < _4182:
                _4287 = mem[t]
                mem[u] = mem[mem[t]]
                mem[u + 32] = mem[_4287 + 63 len 1]
                mem[u + 64] = mem[_4287 + 95 len 1]
                mem[u + 96] = mem[_4287 + 127 len 1]
                mem[u + 128] = mem[_4287 + 159 len 1]
                mem[u + 160] = mem[_4287 + 160]
                mem[u + 192] = mem[_4287 + 192]
                mem[u + 224] = mem[_4287 + 224]
                idx = idx + 1
                t = t + 32
                u = u + 256
                continue 
            mem[_4180 + 32] = uint8(uint8(s) + 1)
            return memory
              from mem[64]
               len _4180 + (256 * _4182) + -mem[64] + 96
        _3580 = mem[64]
        mem[mem[64]] = 64
        _3631 = mem[96]
        mem[mem[64] + 64] = mem[96]
        idx = 0
        t = 128
        u = mem[64] + 96
        while idx < _3631:
            _4227 = mem[t]
            mem[u] = mem[mem[t]]
            mem[u + 32] = mem[_4227 + 63 len 1]
            mem[u + 64] = mem[_4227 + 95 len 1]
            mem[u + 96] = mem[_4227 + 127 len 1]
            mem[u + 128] = mem[_4227 + 159 len 1]
            mem[u + 160] = mem[_4227 + 160]
            mem[u + 192] = mem[_4227 + 192]
            mem[u + 224] = mem[_4227 + 224]
            idx = idx + 1
            t = t + 32
            u = u + 256
            continue 
        mem[_3580 + 32] = uint8(s)
        return memory
          from mem[64]
           len _3580 + (256 * _3631) + -mem[64] + 96
    mem[0] = sha3(address(arg1), 179)
    mem[_2600 + 32] = uint16(balanceOf[address(arg1)].field_0)
    idx = _2600 + 32
    s = 0
    while _2600 + (32 * uint256(balanceOf[address(arg1)].field_0)) > idx:
        mem[idx + 32] = uint16(balanceOf[address(arg1)].field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
        idx = idx + 32
        s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
        continue 
    idx = 0
    s = 0
    t = arg2
    while uint8(idx) < uint8(arg3):
        if t >= mem[_2600]:
            revert with 0, 50
        _4319 = mem[(32 * t) + _2600 + 32]
        if uint8(idx) >= mem[96]:
            revert with 0, 50
        mem[mem[(32 * uint8(idx)) + 128]] = mem[(32 * t) + _2600 + 62 len 2]
        require ext_code.size(minerAddress)
        staticcall minerAddress.getTokenTraits(uint256 arg1) with:
                gas gas_remaining wei
               args (_4319 << 240)
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _4394 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _4396 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 128
        require mem[_4394] == mem[_4394 + 31 len 1]
        mem[_4396] = mem[_4394]
        require mem[_4394 + 32] == mem[_4394 + 63 len 1]
        mem[_4396 + 32] = mem[_4394 + 32]
        require mem[_4394 + 64] == mem[_4394 + 95 len 1]
        mem[_4396 + 64] = mem[_4394 + 64]
        require mem[_4394 + 96] == mem[_4394 + 127 len 1]
        mem[_4396 + 96] = mem[_4394 + 96]
        if uint8(idx) >= mem[96]:
            revert with 0, 50
        mem[mem[(32 * uint8(idx)) + 128] + 32] = mem[_4396 + 31 len 1]
        if uint8(idx) >= mem[96]:
            revert with 0, 50
        mem[mem[(32 * uint8(idx)) + 128] + 64] = mem[_4396 + 63 len 1]
        if uint8(idx) >= mem[96]:
            revert with 0, 50
        mem[mem[(32 * uint8(idx)) + 128] + 96] = mem[_4396 + 95 len 1]
        if uint8(idx) >= mem[96]:
            revert with 0, 50
        mem[mem[(32 * uint8(idx)) + 128] + 128] = mem[_4396 + 127 len 1]
        if mem[_4396 + 63 len 1]:
            require ext_code.size(minerAddress)
            staticcall minerAddress.getTokenTraits(uint256 arg1) with:
                    gas gas_remaining wei
                   args (_4319 << 240)
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4421 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _4423 = mem[64]
            if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 128
            require mem[_4421] == mem[_4421 + 31 len 1]
            mem[_4423] = mem[_4421]
            require mem[_4421 + 32] == mem[_4421 + 63 len 1]
            mem[_4423 + 32] = mem[_4421 + 32]
            require mem[_4421 + 64] == mem[_4421 + 95 len 1]
            mem[_4423 + 64] = mem[_4421 + 64]
            require mem[_4421 + 96] == mem[_4421 + 127 len 1]
            mem[_4423 + 96] = mem[_4421 + 96]
            if 0 == mem[_4423 + 127 len 1]:
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                if t == -1:
                    revert with 0, 17
                if uint8(s) == 255:
                    revert with 0, 17
                if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(s) + 1
                    t = t + 1
                    continue 
                _4468 = mem[64]
                mem[mem[64]] = 64
                _4472 = mem[96]
                mem[mem[64] + 64] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 96
                while idx < _4472:
                    _4709 = mem[t]
                    mem[u] = mem[mem[t]]
                    mem[u + 32] = mem[_4709 + 63 len 1]
                    mem[u + 64] = mem[_4709 + 95 len 1]
                    mem[u + 96] = mem[_4709 + 127 len 1]
                    mem[u + 128] = mem[_4709 + 159 len 1]
                    mem[u + 160] = mem[_4709 + 160]
                    mem[u + 192] = mem[_4709 + 192]
                    mem[u + 224] = mem[_4709 + 224]
                    idx = idx + 1
                    t = t + 32
                    u = u + 256
                    continue 
                mem[_4468 + 32] = uint8(uint8(s) + 1)
                return memory
                  from mem[64]
                   len _4468 + (256 * _4472) + -mem[64] + 96
            if mem[_4423 + 63 len 1] != 0:
                mem[0] = mem[_4423 + 127 len 1]
                mem[32] = 154
                if packIndices[_4319 << 240] >= uint256(pack[mem[0]].field_0):
                    revert with 0, 50
                mem[0] = sha3(mem[0], 154)
                _4444 = sha3(mem[0])
                _4445 = mem[64]
                mem[64] = mem[64] + 96
                mem[_4445] = uint16(stor[sha3(mem[0]) + stor155[_4319 << 240]].field_0)
                mem[_4445 + 32] = Mask(80, 0, stor[_4444 + stor155[_4319 << 240]].field_16)
                mem[_4445 + 64] = address(stor[_4444 + stor155[_4319 << 240]].field_96)
                if not address(stor[_4444 + stor155[_4319 << 240]].field_96):
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                    if t == -1:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(s) + 1
                        t = t + 1
                        continue 
                    _4481 = mem[64]
                    mem[mem[64]] = 64
                    _4492 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 96
                    while idx < _4492:
                        _4679 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_4679 + 63 len 1]
                        mem[u + 64] = mem[_4679 + 95 len 1]
                        mem[u + 96] = mem[_4679 + 127 len 1]
                        mem[u + 128] = mem[_4679 + 159 len 1]
                        mem[u + 160] = mem[_4679 + 160]
                        mem[u + 192] = mem[_4679 + 192]
                        mem[u + 224] = mem[_4679 + 224]
                        idx = idx + 1
                        t = t + 32
                        u = u + 256
                        continue 
                    mem[_4481 + 32] = uint8(uint8(s) + 1)
                    return memory
                      from mem[64]
                       len _4481 + (256 * _4492) + -mem[64] + 96
                if mem[_4423 + 127 len 1] < 1:
                    revert with 0, 17
                if uint8(mem[_4423 + 127 len 1] - 1) >= 5:
                    revert with 0, 50
                if uint256(sub_bc633bf2) < Mask(80, 0, stor[_4444 + stor155[_4319 << 240]].field_16):
                    revert with 0, 17
                if sub_3f30e8d8[uint8(mem[_4423 + 127 len 1] - 1)] and uint256(sub_bc633bf2) - Mask(80, 0, stor[_4444 + stor155[_4319 << 240]].field_16) > -1 / sub_3f30e8d8[uint8(mem[_4423 + 127 len 1] - 1)]:
                    revert with 0, 17
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 224] = (uint256(sub_bc633bf2) * sub_3f30e8d8[uint8(mem[_4423 + 127 len 1] - 1)]) - (Mask(80, 0, stor[_4444 + stor155[_4319 << 240]].field_16) * sub_3f30e8d8[uint8(mem[_4423 + 127 len 1] - 1)])
                if t == -1:
                    revert with 0, 17
                if uint8(s) == 255:
                    revert with 0, 17
                if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(s) + 1
                    t = t + 1
                    continue 
                _4526 = mem[64]
                mem[mem[64]] = 64
                _4536 = mem[96]
                mem[mem[64] + 64] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 96
                while idx < _4536:
                    _4673 = mem[t]
                    mem[u] = mem[mem[t]]
                    mem[u + 32] = mem[_4673 + 63 len 1]
                    mem[u + 64] = mem[_4673 + 95 len 1]
                    mem[u + 96] = mem[_4673 + 127 len 1]
                    mem[u + 128] = mem[_4673 + 159 len 1]
                    mem[u + 160] = mem[_4673 + 160]
                    mem[u + 192] = mem[_4673 + 192]
                    mem[u + 224] = mem[_4673 + 224]
                    idx = idx + 1
                    t = t + 32
                    u = u + 256
                    continue 
                mem[_4526 + 32] = uint8(uint8(s) + 1)
                return memory
                  from mem[64]
                   len _4526 + (256 * _4536) + -mem[64] + 96
            mem[0] = uint16(_4319)
            mem[32] = 153
            _4443 = mem[64]
            mem[64] = mem[64] + 96
            mem[_4443] = uint16(barn[_4319 << 240].field_0)
            mem[_4443 + 32] = Mask(80, 0, barn[_4319 << 240].field_16)
            mem[_4443 + 64] = address(barn[_4319 << 240].field_96)
            if not address(barn[_4319 << 240].field_96):
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                if t == -1:
                    revert with 0, 17
                if uint8(s) == 255:
                    revert with 0, 17
                if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(s) + 1
                    t = t + 1
                    continue 
                _4477 = mem[64]
                mem[mem[64]] = 64
                _4482 = mem[96]
                mem[mem[64] + 64] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 96
                while idx < _4482:
                    _4703 = mem[t]
                    mem[u] = mem[mem[t]]
                    mem[u + 32] = mem[_4703 + 63 len 1]
                    mem[u + 64] = mem[_4703 + 95 len 1]
                    mem[u + 96] = mem[_4703 + 127 len 1]
                    mem[u + 128] = mem[_4703 + 159 len 1]
                    mem[u + 160] = mem[_4703 + 160]
                    mem[u + 192] = mem[_4703 + 192]
                    mem[u + 224] = mem[_4703 + 224]
                    idx = idx + 1
                    t = t + 32
                    u = u + 256
                    continue 
                mem[_4477 + 32] = uint8(uint8(s) + 1)
                return memory
                  from mem[64]
                   len _4477 + (256 * _4482) + -mem[64] + 96
            if sub_2d8c2ef1 < 400000000 * 10^18:
                if mem[_4423 + 127 len 1] < 1:
                    revert with 0, 17
                if uint8(mem[_4423 + 127 len 1] - 1) >= 8:
                    revert with 0, 50
                if block.timestamp < Mask(80, 0, barn[_4319 << 240].field_16):
                    revert with 0, 17
                if block.timestamp - Mask(80, 0, barn[_4319 << 240].field_16) and sub_637d0d7b[uint8(mem[_4423 + 127 len 1] - 1)] > -1 / block.timestamp - Mask(80, 0, barn[_4319 << 240].field_16):
                    revert with 0, 17
                if (block.timestamp * sub_637d0d7b[uint8(mem[_4423 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_4319 << 240].field_16) * sub_637d0d7b[uint8(mem[_4423 + 127 len 1] - 1)]) / 24 * 3600 and 80 > -1 / (block.timestamp * sub_637d0d7b[uint8(mem[_4423 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_4319 << 240].field_16) * sub_637d0d7b[uint8(mem[_4423 + 127 len 1] - 1)]) / 24 * 3600:
                    revert with 0, 17
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 224] = 80 * (block.timestamp * sub_637d0d7b[uint8(mem[_4423 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_4319 << 240].field_16) * sub_637d0d7b[uint8(mem[_4423 + 127 len 1] - 1)]) / 24 * 3600 / 100
                if t == -1:
                    revert with 0, 17
                if uint8(s) == 255:
                    revert with 0, 17
                if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(s) + 1
                    t = t + 1
                    continue 
                _4595 = mem[64]
                mem[mem[64]] = 64
                _4604 = mem[96]
                mem[mem[64] + 64] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 96
                while idx < _4604:
                    _4697 = mem[t]
                    mem[u] = mem[mem[t]]
                    mem[u + 32] = mem[_4697 + 63 len 1]
                    mem[u + 64] = mem[_4697 + 95 len 1]
                    mem[u + 96] = mem[_4697 + 127 len 1]
                    mem[u + 128] = mem[_4697 + 159 len 1]
                    mem[u + 160] = mem[_4697 + 160]
                    mem[u + 192] = mem[_4697 + 192]
                    mem[u + 224] = mem[_4697 + 224]
                    idx = idx + 1
                    t = t + 32
                    u = u + 256
                    continue 
                mem[_4595 + 32] = uint8(uint8(s) + 1)
                return memory
                  from mem[64]
                   len _4595 + (256 * _4604) + -mem[64] + 96
            if Mask(80, 0, barn[_4319 << 240].field_16) > lastClaimTimestamp:
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                if t == -1:
                    revert with 0, 17
                if uint8(s) == 255:
                    revert with 0, 17
                if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(s) + 1
                    t = t + 1
                    continue 
                _4537 = mem[64]
                mem[mem[64]] = 64
                _4541 = mem[96]
                mem[mem[64] + 64] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 96
                while idx < _4541:
                    _4691 = mem[t]
                    mem[u] = mem[mem[t]]
                    mem[u + 32] = mem[_4691 + 63 len 1]
                    mem[u + 64] = mem[_4691 + 95 len 1]
                    mem[u + 96] = mem[_4691 + 127 len 1]
                    mem[u + 128] = mem[_4691 + 159 len 1]
                    mem[u + 160] = mem[_4691 + 160]
                    mem[u + 192] = mem[_4691 + 192]
                    mem[u + 224] = mem[_4691 + 224]
                    idx = idx + 1
                    t = t + 32
                    u = u + 256
                    continue 
                mem[_4537 + 32] = uint8(uint8(s) + 1)
                return memory
                  from mem[64]
                   len _4537 + (256 * _4541) + -mem[64] + 96
            if mem[_4423 + 127 len 1] < 1:
                revert with 0, 17
            if uint8(mem[_4423 + 127 len 1] - 1) >= 8:
                revert with 0, 50
            if lastClaimTimestamp < Mask(80, 0, barn[_4319 << 240].field_16):
                revert with 0, 17
            if lastClaimTimestamp - Mask(80, 0, barn[_4319 << 240].field_16) and sub_637d0d7b[uint8(mem[_4423 + 127 len 1] - 1)] > -1 / lastClaimTimestamp - Mask(80, 0, barn[_4319 << 240].field_16):
                revert with 0, 17
            if (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_4423 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_4319 << 240].field_16) * sub_637d0d7b[uint8(mem[_4423 + 127 len 1] - 1)]) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_4423 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_4319 << 240].field_16) * sub_637d0d7b[uint8(mem[_4423 + 127 len 1] - 1)]) / 24 * 3600:
                revert with 0, 17
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128] + 224] = 80 * (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_4423 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_4319 << 240].field_16) * sub_637d0d7b[uint8(mem[_4423 + 127 len 1] - 1)]) / 24 * 3600 / 100
            if t == -1:
                revert with 0, 17
            if uint8(s) == 255:
                revert with 0, 17
            if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                if uint8(idx) == 255:
                    revert with 0, 17
                idx = uint8(idx) + 1
                s = uint8(s) + 1
                t = t + 1
                continue 
            _4603 = mem[64]
            mem[mem[64]] = 64
            _4613 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            t = 128
            u = mem[64] + 96
            while idx < _4613:
                _4685 = mem[t]
                mem[u] = mem[mem[t]]
                mem[u + 32] = mem[_4685 + 63 len 1]
                mem[u + 64] = mem[_4685 + 95 len 1]
                mem[u + 96] = mem[_4685 + 127 len 1]
                mem[u + 128] = mem[_4685 + 159 len 1]
                mem[u + 160] = mem[_4685 + 160]
                mem[u + 192] = mem[_4685 + 192]
                mem[u + 224] = mem[_4685 + 224]
                idx = idx + 1
                t = t + 32
                u = u + 256
                continue 
            mem[_4603 + 32] = uint8(uint8(s) + 1)
            return memory
              from mem[64]
               len _4603 + (256 * _4613) + -mem[64] + 96
        mem[0] = uint16(_4319)
        mem[32] = 153
        if uint8(idx) >= mem[96]:
            revert with 0, 50
        mem[mem[(32 * uint8(idx)) + 128] + 160] = Mask(80, 0, barn[_4319 << 240].field_16)
        mem[mem[64] + 4] = uint16(_4319)
        require ext_code.size(shieldAddress)
        staticcall shieldAddress.0x478ba63b with:
                gas gas_remaining wei
               args (_4319 << 240)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _4422 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if uint8(idx) >= mem[96]:
            revert with 0, 50
        mem[mem[(32 * uint8(idx)) + 128] + 192] = mem[_4422]
        require ext_code.size(minerAddress)
        staticcall minerAddress.getTokenTraits(uint256 arg1) with:
                gas gas_remaining wei
               args (_4319 << 240)
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _4432 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _4434 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 128
        require mem[_4432] == mem[_4432 + 31 len 1]
        mem[_4434] = mem[_4432]
        require mem[_4432 + 32] == mem[_4432 + 63 len 1]
        mem[_4434 + 32] = mem[_4432 + 32]
        require mem[_4432 + 64] == mem[_4432 + 95 len 1]
        mem[_4434 + 64] = mem[_4432 + 64]
        require mem[_4432 + 96] == mem[_4432 + 127 len 1]
        mem[_4434 + 96] = mem[_4432 + 96]
        if 0 == mem[_4434 + 127 len 1]:
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
            if t == -1:
                revert with 0, 17
            if uint8(s) == 255:
                revert with 0, 17
            if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                if uint8(idx) == 255:
                    revert with 0, 17
                idx = uint8(idx) + 1
                s = uint8(s) + 1
                t = t + 1
                continue 
            _4523 = mem[64]
            mem[mem[64]] = 64
            _4524 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            t = 128
            u = mem[64] + 96
            while idx < _4524:
                _4751 = mem[t]
                mem[u] = mem[mem[t]]
                mem[u + 32] = mem[_4751 + 63 len 1]
                mem[u + 64] = mem[_4751 + 95 len 1]
                mem[u + 96] = mem[_4751 + 127 len 1]
                mem[u + 128] = mem[_4751 + 159 len 1]
                mem[u + 160] = mem[_4751 + 160]
                mem[u + 192] = mem[_4751 + 192]
                mem[u + 224] = mem[_4751 + 224]
                idx = idx + 1
                t = t + 32
                u = u + 256
                continue 
            mem[_4523 + 32] = uint8(uint8(s) + 1)
            return memory
              from mem[64]
               len _4523 + (256 * _4524) + -mem[64] + 96
        if mem[_4434 + 63 len 1] != 0:
            mem[0] = mem[_4434 + 127 len 1]
            mem[32] = 154
            if packIndices[_4319 << 240] >= uint256(pack[mem[0]].field_0):
                revert with 0, 50
            mem[0] = sha3(mem[0], 154)
            _4469 = sha3(mem[0])
            _4470 = mem[64]
            mem[64] = mem[64] + 96
            mem[_4470] = uint16(stor[sha3(mem[0]) + stor155[_4319 << 240]].field_0)
            mem[_4470 + 32] = Mask(80, 0, stor[_4469 + stor155[_4319 << 240]].field_16)
            mem[_4470 + 64] = address(stor[_4469 + stor155[_4319 << 240]].field_96)
            if not address(stor[_4469 + stor155[_4319 << 240]].field_96):
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                if t == -1:
                    revert with 0, 17
                if uint8(s) == 255:
                    revert with 0, 17
                if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(s) + 1
                    t = t + 1
                    continue 
                _4528 = mem[64]
                mem[mem[64]] = 64
                _4539 = mem[96]
                mem[mem[64] + 64] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 96
                while idx < _4539:
                    _4721 = mem[t]
                    mem[u] = mem[mem[t]]
                    mem[u + 32] = mem[_4721 + 63 len 1]
                    mem[u + 64] = mem[_4721 + 95 len 1]
                    mem[u + 96] = mem[_4721 + 127 len 1]
                    mem[u + 128] = mem[_4721 + 159 len 1]
                    mem[u + 160] = mem[_4721 + 160]
                    mem[u + 192] = mem[_4721 + 192]
                    mem[u + 224] = mem[_4721 + 224]
                    idx = idx + 1
                    t = t + 32
                    u = u + 256
                    continue 
                mem[_4528 + 32] = uint8(uint8(s) + 1)
                return memory
                  from mem[64]
                   len _4528 + (256 * _4539) + -mem[64] + 96
            if mem[_4434 + 127 len 1] < 1:
                revert with 0, 17
            if uint8(mem[_4434 + 127 len 1] - 1) >= 5:
                revert with 0, 50
            if uint256(sub_bc633bf2) < Mask(80, 0, stor[_4469 + stor155[_4319 << 240]].field_16):
                revert with 0, 17
            if sub_3f30e8d8[uint8(mem[_4434 + 127 len 1] - 1)] and uint256(sub_bc633bf2) - Mask(80, 0, stor[_4469 + stor155[_4319 << 240]].field_16) > -1 / sub_3f30e8d8[uint8(mem[_4434 + 127 len 1] - 1)]:
                revert with 0, 17
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128] + 224] = (uint256(sub_bc633bf2) * sub_3f30e8d8[uint8(mem[_4434 + 127 len 1] - 1)]) - (Mask(80, 0, stor[_4469 + stor155[_4319 << 240]].field_16) * sub_3f30e8d8[uint8(mem[_4434 + 127 len 1] - 1)])
            if t == -1:
                revert with 0, 17
            if uint8(s) == 255:
                revert with 0, 17
            if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                if uint8(idx) == 255:
                    revert with 0, 17
                idx = uint8(idx) + 1
                s = uint8(s) + 1
                t = t + 1
                continue 
            _4591 = mem[64]
            mem[mem[64]] = 64
            _4592 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            t = 128
            u = mem[64] + 96
            while idx < _4592:
                _4715 = mem[t]
                mem[u] = mem[mem[t]]
                mem[u + 32] = mem[_4715 + 63 len 1]
                mem[u + 64] = mem[_4715 + 95 len 1]
                mem[u + 96] = mem[_4715 + 127 len 1]
                mem[u + 128] = mem[_4715 + 159 len 1]
                mem[u + 160] = mem[_4715 + 160]
                mem[u + 192] = mem[_4715 + 192]
                mem[u + 224] = mem[_4715 + 224]
                idx = idx + 1
                t = t + 32
                u = u + 256
                continue 
            mem[_4591 + 32] = uint8(uint8(s) + 1)
            return memory
              from mem[64]
               len _4591 + (256 * _4592) + -mem[64] + 96
        mem[0] = uint16(_4319)
        mem[32] = 153
        _4467 = mem[64]
        mem[64] = mem[64] + 96
        mem[_4467] = uint16(barn[_4319 << 240].field_0)
        mem[_4467 + 32] = Mask(80, 0, barn[_4319 << 240].field_16)
        mem[_4467 + 64] = address(barn[_4319 << 240].field_96)
        if not address(barn[_4319 << 240].field_96):
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
            if t == -1:
                revert with 0, 17
            if uint8(s) == 255:
                revert with 0, 17
            if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                if uint8(idx) == 255:
                    revert with 0, 17
                idx = uint8(idx) + 1
                s = uint8(s) + 1
                t = t + 1
                continue 
            _4525 = mem[64]
            mem[mem[64]] = 64
            _4529 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            t = 128
            u = mem[64] + 96
            while idx < _4529:
                _4745 = mem[t]
                mem[u] = mem[mem[t]]
                mem[u + 32] = mem[_4745 + 63 len 1]
                mem[u + 64] = mem[_4745 + 95 len 1]
                mem[u + 96] = mem[_4745 + 127 len 1]
                mem[u + 128] = mem[_4745 + 159 len 1]
                mem[u + 160] = mem[_4745 + 160]
                mem[u + 192] = mem[_4745 + 192]
                mem[u + 224] = mem[_4745 + 224]
                idx = idx + 1
                t = t + 32
                u = u + 256
                continue 
            mem[_4525 + 32] = uint8(uint8(s) + 1)
            return memory
              from mem[64]
               len _4525 + (256 * _4529) + -mem[64] + 96
        if sub_2d8c2ef1 < 400000000 * 10^18:
            if mem[_4434 + 127 len 1] < 1:
                revert with 0, 17
            if uint8(mem[_4434 + 127 len 1] - 1) >= 8:
                revert with 0, 50
            if block.timestamp < Mask(80, 0, barn[_4319 << 240].field_16):
                revert with 0, 17
            if block.timestamp - Mask(80, 0, barn[_4319 << 240].field_16) and sub_637d0d7b[uint8(mem[_4434 + 127 len 1] - 1)] > -1 / block.timestamp - Mask(80, 0, barn[_4319 << 240].field_16):
                revert with 0, 17
            if (block.timestamp * sub_637d0d7b[uint8(mem[_4434 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_4319 << 240].field_16) * sub_637d0d7b[uint8(mem[_4434 + 127 len 1] - 1)]) / 24 * 3600 and 80 > -1 / (block.timestamp * sub_637d0d7b[uint8(mem[_4434 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_4319 << 240].field_16) * sub_637d0d7b[uint8(mem[_4434 + 127 len 1] - 1)]) / 24 * 3600:
                revert with 0, 17
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128] + 224] = 80 * (block.timestamp * sub_637d0d7b[uint8(mem[_4434 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_4319 << 240].field_16) * sub_637d0d7b[uint8(mem[_4434 + 127 len 1] - 1)]) / 24 * 3600 / 100
            if t == -1:
                revert with 0, 17
            if uint8(s) == 255:
                revert with 0, 17
            if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                if uint8(idx) == 255:
                    revert with 0, 17
                idx = uint8(idx) + 1
                s = uint8(s) + 1
                t = t + 1
                continue 
            _4643 = mem[64]
            mem[mem[64]] = 64
            _4645 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            t = 128
            u = mem[64] + 96
            while idx < _4645:
                _4739 = mem[t]
                mem[u] = mem[mem[t]]
                mem[u + 32] = mem[_4739 + 63 len 1]
                mem[u + 64] = mem[_4739 + 95 len 1]
                mem[u + 96] = mem[_4739 + 127 len 1]
                mem[u + 128] = mem[_4739 + 159 len 1]
                mem[u + 160] = mem[_4739 + 160]
                mem[u + 192] = mem[_4739 + 192]
                mem[u + 224] = mem[_4739 + 224]
                idx = idx + 1
                t = t + 32
                u = u + 256
                continue 
            mem[_4643 + 32] = uint8(uint8(s) + 1)
            return memory
              from mem[64]
               len _4643 + (256 * _4645) + -mem[64] + 96
        if Mask(80, 0, barn[_4319 << 240].field_16) > lastClaimTimestamp:
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
            if t == -1:
                revert with 0, 17
            if uint8(s) == 255:
                revert with 0, 17
            if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                if uint8(idx) == 255:
                    revert with 0, 17
                idx = uint8(idx) + 1
                s = uint8(s) + 1
                t = t + 1
                continue 
            _4593 = mem[64]
            mem[mem[64]] = 64
            _4594 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            t = 128
            u = mem[64] + 96
            while idx < _4594:
                _4733 = mem[t]
                mem[u] = mem[mem[t]]
                mem[u + 32] = mem[_4733 + 63 len 1]
                mem[u + 64] = mem[_4733 + 95 len 1]
                mem[u + 96] = mem[_4733 + 127 len 1]
                mem[u + 128] = mem[_4733 + 159 len 1]
                mem[u + 160] = mem[_4733 + 160]
                mem[u + 192] = mem[_4733 + 192]
                mem[u + 224] = mem[_4733 + 224]
                idx = idx + 1
                t = t + 32
                u = u + 256
                continue 
            mem[_4593 + 32] = uint8(uint8(s) + 1)
            return memory
              from mem[64]
               len _4593 + (256 * _4594) + -mem[64] + 96
        if mem[_4434 + 127 len 1] < 1:
            revert with 0, 17
        if uint8(mem[_4434 + 127 len 1] - 1) >= 8:
            revert with 0, 50
        if lastClaimTimestamp < Mask(80, 0, barn[_4319 << 240].field_16):
            revert with 0, 17
        if lastClaimTimestamp - Mask(80, 0, barn[_4319 << 240].field_16) and sub_637d0d7b[uint8(mem[_4434 + 127 len 1] - 1)] > -1 / lastClaimTimestamp - Mask(80, 0, barn[_4319 << 240].field_16):
            revert with 0, 17
        if (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_4434 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_4319 << 240].field_16) * sub_637d0d7b[uint8(mem[_4434 + 127 len 1] - 1)]) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_4434 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_4319 << 240].field_16) * sub_637d0d7b[uint8(mem[_4434 + 127 len 1] - 1)]) / 24 * 3600:
            revert with 0, 17
        if uint8(idx) >= mem[96]:
            revert with 0, 50
        mem[mem[(32 * uint8(idx)) + 128] + 224] = 80 * (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_4434 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_4319 << 240].field_16) * sub_637d0d7b[uint8(mem[_4434 + 127 len 1] - 1)]) / 24 * 3600 / 100
        if t == -1:
            revert with 0, 17
        if uint8(s) == 255:
            revert with 0, 17
        if t + 1 < uint256(balanceOf[address(arg1)].field_0):
            if uint8(idx) == 255:
                revert with 0, 17
            idx = uint8(idx) + 1
            s = uint8(s) + 1
            t = t + 1
            continue 
        _4644 = mem[64]
        mem[mem[64]] = 64
        _4646 = mem[96]
        mem[mem[64] + 64] = mem[96]
        idx = 0
        t = 128
        u = mem[64] + 96
        while idx < _4646:
            _4727 = mem[t]
            mem[u] = mem[mem[t]]
            mem[u + 32] = mem[_4727 + 63 len 1]
            mem[u + 64] = mem[_4727 + 95 len 1]
            mem[u + 96] = mem[_4727 + 127 len 1]
            mem[u + 128] = mem[_4727 + 159 len 1]
            mem[u + 160] = mem[_4727 + 160]
            mem[u + 192] = mem[_4727 + 192]
            mem[u + 224] = mem[_4727 + 224]
            idx = idx + 1
            t = t + 32
            u = u + 256
            continue 
        mem[_4644 + 32] = uint8(uint8(s) + 1)
        return memory
          from mem[64]
           len _4644 + (256 * _4646) + -mem[64] + 96
    _4318 = mem[64]
    mem[mem[64]] = 64
    _4366 = mem[96]
    mem[mem[64] + 64] = mem[96]
    idx = 0
    t = 128
    u = mem[64] + 96
    while idx < _4366:
        _4667 = mem[t]
        mem[u] = mem[mem[t]]
        mem[u + 32] = mem[_4667 + 63 len 1]
        mem[u + 64] = mem[_4667 + 95 len 1]
        mem[u + 96] = mem[_4667 + 127 len 1]
        mem[u + 128] = mem[_4667 + 159 len 1]
        mem[u + 160] = mem[_4667 + 160]
        mem[u + 192] = mem[_4667 + 192]
        mem[u + 224] = mem[_4667 + 224]
        idx = idx + 1
        t = t + 32
        u = u + 256
        continue 
    mem[_4318 + 32] = uint8(s)
    return memory
      from mem[64]
       len _4318 + (256 * _4366) + -mem[64] + 96
}

function getUserNFT(address arg1, uint256 arg2, uint8 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3
    require arg3 <= maxPerAmount
    require arg3
    if arg3 > test266151307():
        revert with 0, 65
    mem[96] = arg3
    mem[64] = (32 * uint8(arg3)) + 128
    if not arg3:
        mem[0] = arg1
        mem[32] = 179
        if not uint256(balanceOf[address(arg1)].field_0):
            mem[(32 * uint8(arg3)) + 128] = 64
            mem[(32 * uint8(arg3)) + 192] = arg3
            idx = 0
            s = 128
            t = (32 * uint8(arg3)) + 224
            while idx < mem[96]:
                _2951 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_2951 + 63 len 1]
                mem[t + 64] = mem[_2951 + 95 len 1]
                mem[t + 96] = mem[_2951 + 127 len 1]
                mem[t + 128] = mem[_2951 + 159 len 1]
                mem[t + 160] = mem[_2951 + 160]
                mem[t + 192] = mem[_2951 + 192]
                mem[t + 224] = mem[_2951 + 224]
                mem[t + 256] = mem[_2951 + 256]
                idx = idx + 1
                s = s + 32
                t = t + 288
                continue 
            mem[(32 * uint8(arg3)) + 160] = 0
            return memory
              from mem[64]
               len (32 * uint8(arg3)) + (288 * arg3) + -mem[64] + 224
        if arg2 >= uint256(balanceOf[address(arg1)].field_0):
            mem[(32 * uint8(arg3)) + 128] = 64
            mem[(32 * uint8(arg3)) + 192] = arg3
            idx = 0
            s = 128
            t = (32 * uint8(arg3)) + 224
            while idx < mem[96]:
                _2958 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_2958 + 63 len 1]
                mem[t + 64] = mem[_2958 + 95 len 1]
                mem[t + 96] = mem[_2958 + 127 len 1]
                mem[t + 128] = mem[_2958 + 159 len 1]
                mem[t + 160] = mem[_2958 + 160]
                mem[t + 192] = mem[_2958 + 192]
                mem[t + 224] = mem[_2958 + 224]
                mem[t + 256] = mem[_2958 + 256]
                idx = idx + 1
                s = s + 32
                t = t + 288
                continue 
            mem[(32 * uint8(arg3)) + 160] = 0
            return memory
              from mem[64]
               len (32 * uint8(arg3)) + (288 * arg3) + -mem[64] + 224
        mem[0] = arg1
        mem[32] = 179
        mem[64] = (32 * uint8(arg3)) + (32 * uint256(balanceOf[address(arg1)].field_0)) + 160
        mem[(32 * uint8(arg3)) + 128] = uint256(balanceOf[address(arg1)].field_0)
        if not uint256(balanceOf[address(arg1)].field_0):
            if sub_7d4cd2b5Address != 0xfb4c2c55180cf3a6b6acacb825cbcc9085858edc:
                idx = 0
                s = 0
                t = arg2
                while uint8(idx) < arg3:
                    if t >= mem[(32 * uint8(arg3)) + 128]:
                        revert with 0, 50
                    _2964 = mem[(32 * t) + (32 * uint8(arg3)) + 160]
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128]] = mem[(32 * t) + (32 * uint8(arg3)) + 190 len 2]
                    require ext_code.size(minerAddress)
                    staticcall minerAddress.getTokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args (_2964 << 240)
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3003 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _3018 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 128
                    require mem[_3003] == mem[_3003 + 31 len 1]
                    mem[_3018] = mem[_3003]
                    require mem[_3003 + 32] == mem[_3003 + 63 len 1]
                    mem[_3018 + 32] = mem[_3003 + 32]
                    require mem[_3003 + 64] == mem[_3003 + 95 len 1]
                    mem[_3018 + 64] = mem[_3003 + 64]
                    require mem[_3003 + 96] == mem[_3003 + 127 len 1]
                    mem[_3018 + 96] = mem[_3003 + 96]
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 32] = mem[_3018 + 31 len 1]
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 64] = mem[_3018 + 63 len 1]
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 96] = mem[_3018 + 95 len 1]
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 128] = mem[_3018 + 127 len 1]
                    if mem[_3018 + 63 len 1]:
                        require ext_code.size(minerAddress)
                        staticcall minerAddress.getTokenTraits(uint256 arg1) with:
                                gas gas_remaining wei
                               args (_2964 << 240)
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3268 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _3282 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 128
                        require mem[_3268] == mem[_3268 + 31 len 1]
                        mem[_3282] = mem[_3268]
                        require mem[_3268 + 32] == mem[_3268 + 63 len 1]
                        mem[_3282 + 32] = mem[_3268 + 32]
                        require mem[_3268 + 64] == mem[_3268 + 95 len 1]
                        mem[_3282 + 64] = mem[_3268 + 64]
                        require mem[_3268 + 96] == mem[_3268 + 127 len 1]
                        mem[_3282 + 96] = mem[_3268 + 96]
                        if 0 == mem[_3282 + 127 len 1]:
                            if uint8(idx) >= mem[96]:
                                revert with 0, 50
                            mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                            mem[mem[64] + 4] = uint16(_2964)
                            require ext_code.size(sub_7d4cd2b5Address)
                            staticcall sub_7d4cd2b5Address.0x224e5e22 with:
                                    gas gas_remaining wei
                                   args (_2964 << 240)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3549 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if uint8(idx) >= mem[96]:
                                revert with 0, 50
                            mem[mem[(32 * uint8(idx)) + 128] + 256] = mem[_3549]
                            if t == -1:
                                revert with 0, 17
                            if uint8(s) == 255:
                                revert with 0, 17
                            if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                                if uint8(idx) == 255:
                                    revert with 0, 17
                                idx = uint8(idx) + 1
                                s = uint8(s) + 1
                                t = t + 1
                                continue 
                            _3858 = mem[64]
                            mem[mem[64]] = 64
                            _3891 = mem[96]
                            mem[mem[64] + 64] = mem[96]
                            idx = 0
                            t = 128
                            u = mem[64] + 96
                            while idx < _3891:
                                _5928 = mem[t]
                                mem[u] = mem[mem[t]]
                                mem[u + 32] = mem[_5928 + 63 len 1]
                                mem[u + 64] = mem[_5928 + 95 len 1]
                                mem[u + 96] = mem[_5928 + 127 len 1]
                                mem[u + 128] = mem[_5928 + 159 len 1]
                                mem[u + 160] = mem[_5928 + 160]
                                mem[u + 192] = mem[_5928 + 192]
                                mem[u + 224] = mem[_5928 + 224]
                                mem[u + 256] = mem[_5928 + 256]
                                idx = idx + 1
                                t = t + 32
                                u = u + 288
                                continue 
                            mem[_3858 + 32] = uint8(uint8(s) + 1)
                            return memory
                              from mem[64]
                               len _3858 + (288 * _3891) + -mem[64] + 96
                        if mem[_3282 + 63 len 1] != 0:
                            mem[0] = mem[_3282 + 127 len 1]
                            mem[32] = 154
                            if packIndices[_2964 << 240] >= uint256(pack[mem[0]].field_0):
                                revert with 0, 50
                            mem[0] = sha3(mem[0], 154)
                            _3462 = sha3(mem[0])
                            _3463 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3463] = uint16(stor[sha3(mem[0]) + stor155[_2964 << 240]].field_0)
                            mem[_3463 + 32] = Mask(80, 0, stor[_3462 + stor155[_2964 << 240]].field_16)
                            mem[_3463 + 64] = address(stor[_3462 + stor155[_2964 << 240]].field_96)
                            if not address(stor[_3462 + stor155[_2964 << 240]].field_96):
                                if uint8(idx) >= mem[96]:
                                    revert with 0, 50
                                mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                                mem[mem[64] + 4] = uint16(_2964)
                                require ext_code.size(sub_7d4cd2b5Address)
                                staticcall sub_7d4cd2b5Address.0x224e5e22 with:
                                        gas gas_remaining wei
                                       args (_2964 << 240)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3591 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if uint8(idx) >= mem[96]:
                                    revert with 0, 50
                                mem[mem[(32 * uint8(idx)) + 128] + 256] = mem[_3591]
                                if t == -1:
                                    revert with 0, 17
                                if uint8(s) == 255:
                                    revert with 0, 17
                                if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                                    if uint8(idx) == 255:
                                        revert with 0, 17
                                    idx = uint8(idx) + 1
                                    s = uint8(s) + 1
                                    t = t + 1
                                    continue 
                                _3950 = mem[64]
                                mem[mem[64]] = 64
                                _3990 = mem[96]
                                mem[mem[64] + 64] = mem[96]
                                t = 0
                                u = 128
                                v = mem[64] + 96
                                while t < _3990:
                                    _5903 = mem[u]
                                    mem[v] = mem[mem[u]]
                                    mem[v + 32] = mem[_5903 + 63 len 1]
                                    mem[v + 64] = mem[_5903 + 95 len 1]
                                    mem[v + 96] = mem[_5903 + 127 len 1]
                                    mem[v + 128] = mem[_5903 + 159 len 1]
                                    mem[v + 160] = mem[_5903 + 160]
                                    mem[v + 192] = mem[_5903 + 192]
                                    mem[v + 224] = mem[_5903 + 224]
                                    mem[v + 256] = mem[_5903 + 256]
                                    t = t + 1
                                    u = u + 32
                                    v = v + 288
                                    continue 
                                mem[_3950 + 32] = uint8(uint8(_3950 + (288 * _3990) + 96) + 1)
                                return memory
                                  from mem[64]
                                   len _3950 + (288 * _3990) + -mem[64] + 96
                            if mem[_3282 + 127 len 1] < 1:
                                revert with 0, 17
                            if uint8(mem[_3282 + 127 len 1] - 1) >= 5:
                                revert with 0, 50
                            if uint256(sub_bc633bf2) < Mask(80, 0, stor[_3462 + stor155[_2964 << 240]].field_16):
                                revert with 0, 17
                            if sub_3f30e8d8[uint8(mem[_3282 + 127 len 1] - 1)] and uint256(sub_bc633bf2) - Mask(80, 0, stor[_3462 + stor155[_2964 << 240]].field_16) > -1 / sub_3f30e8d8[uint8(mem[_3282 + 127 len 1] - 1)]:
                                revert with 0, 17
                            if uint8(idx) >= mem[96]:
                                revert with 0, 50
                            mem[mem[(32 * uint8(idx)) + 128] + 224] = (uint256(sub_bc633bf2) * sub_3f30e8d8[uint8(mem[_3282 + 127 len 1] - 1)]) - (Mask(80, 0, stor[_3462 + stor155[_2964 << 240]].field_16) * sub_3f30e8d8[uint8(mem[_3282 + 127 len 1] - 1)])
                            mem[mem[64] + 4] = uint16(_2964)
                            require ext_code.size(sub_7d4cd2b5Address)
                            staticcall sub_7d4cd2b5Address.0x224e5e22 with:
                                    gas gas_remaining wei
                                   args (_2964 << 240)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3857 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if uint8(idx) >= mem[96]:
                                revert with 0, 50
                            mem[mem[(32 * uint8(idx)) + 128] + 256] = mem[_3857]
                            if t == -1:
                                revert with 0, 17
                            if uint8(s) == 255:
                                revert with 0, 17
                            if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                                if uint8(idx) == 255:
                                    revert with 0, 17
                                idx = uint8(idx) + 1
                                s = uint8(s) + 1
                                t = t + 1
                                continue 
                            _4369 = mem[64]
                            mem[mem[64]] = 64
                            _4424 = mem[96]
                            mem[mem[64] + 64] = mem[96]
                            idx = 0
                            t = 128
                            u = mem[64] + 96
                            while idx < _4424:
                                _5898 = mem[t]
                                mem[u] = mem[mem[t]]
                                mem[u + 32] = mem[_5898 + 63 len 1]
                                mem[u + 64] = mem[_5898 + 95 len 1]
                                mem[u + 96] = mem[_5898 + 127 len 1]
                                mem[u + 128] = mem[_5898 + 159 len 1]
                                mem[u + 160] = mem[_5898 + 160]
                                mem[u + 192] = mem[_5898 + 192]
                                mem[u + 224] = mem[_5898 + 224]
                                mem[u + 256] = mem[_5898 + 256]
                                idx = idx + 1
                                t = t + 32
                                u = u + 288
                                continue 
                            mem[_4369 + 32] = uint8(uint8(s) + 1)
                            return memory
                              from mem[64]
                               len _4369 + (288 * _4424) + -mem[64] + 96
                        mem[0] = uint16(_2964)
                        mem[32] = 153
                        _3450 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_3450] = uint16(barn[_2964 << 240].field_0)
                        mem[_3450 + 32] = Mask(80, 0, barn[_2964 << 240].field_16)
                        mem[_3450 + 64] = address(barn[_2964 << 240].field_96)
                        if not address(barn[_2964 << 240].field_96):
                            if uint8(idx) >= mem[96]:
                                revert with 0, 50
                            mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                            mem[mem[64] + 4] = uint16(_2964)
                            require ext_code.size(sub_7d4cd2b5Address)
                            staticcall sub_7d4cd2b5Address.0x224e5e22 with:
                                    gas gas_remaining wei
                                   args (_2964 << 240)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3580 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if uint8(idx) >= mem[96]:
                                revert with 0, 50
                            mem[mem[(32 * uint8(idx)) + 128] + 256] = mem[_3580]
                            if t == -1:
                                revert with 0, 17
                            if uint8(s) == 255:
                                revert with 0, 17
                            if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                                if uint8(idx) == 255:
                                    revert with 0, 17
                                idx = uint8(idx) + 1
                                s = uint8(s) + 1
                                t = t + 1
                                continue 
                            _3919 = mem[64]
                            mem[mem[64]] = 64
                            _3952 = mem[96]
                            mem[mem[64] + 64] = mem[96]
                            idx = 0
                            t = 128
                            u = mem[64] + 96
                            while idx < _3952:
                                _5923 = mem[t]
                                mem[u] = mem[mem[t]]
                                mem[u + 32] = mem[_5923 + 63 len 1]
                                mem[u + 64] = mem[_5923 + 95 len 1]
                                mem[u + 96] = mem[_5923 + 127 len 1]
                                mem[u + 128] = mem[_5923 + 159 len 1]
                                mem[u + 160] = mem[_5923 + 160]
                                mem[u + 192] = mem[_5923 + 192]
                                mem[u + 224] = mem[_5923 + 224]
                                mem[u + 256] = mem[_5923 + 256]
                                idx = idx + 1
                                t = t + 32
                                u = u + 288
                                continue 
                            mem[_3919 + 32] = uint8(uint8(s) + 1)
                            return memory
                              from mem[64]
                               len _3919 + (288 * _3952) + -mem[64] + 96
                        if sub_2d8c2ef1 < 400000000 * 10^18:
                            if mem[_3282 + 127 len 1] < 1:
                                revert with 0, 17
                            if uint8(mem[_3282 + 127 len 1] - 1) >= 8:
                                revert with 0, 50
                            if block.timestamp < Mask(80, 0, barn[_2964 << 240].field_16):
                                revert with 0, 17
                            if block.timestamp - Mask(80, 0, barn[_2964 << 240].field_16) and sub_637d0d7b[uint8(mem[_3282 + 127 len 1] - 1)] > -1 / block.timestamp - Mask(80, 0, barn[_2964 << 240].field_16):
                                revert with 0, 17
                            if (block.timestamp * sub_637d0d7b[uint8(mem[_3282 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_2964 << 240].field_16) * sub_637d0d7b[uint8(mem[_3282 + 127 len 1] - 1)]) / 24 * 3600 and 80 > -1 / (block.timestamp * sub_637d0d7b[uint8(mem[_3282 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_2964 << 240].field_16) * sub_637d0d7b[uint8(mem[_3282 + 127 len 1] - 1)]) / 24 * 3600:
                                revert with 0, 17
                            if uint8(idx) >= mem[96]:
                                revert with 0, 50
                            mem[mem[(32 * uint8(idx)) + 128] + 224] = 80 * (block.timestamp * sub_637d0d7b[uint8(mem[_3282 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_2964 << 240].field_16) * sub_637d0d7b[uint8(mem[_3282 + 127 len 1] - 1)]) / 24 * 3600 / 100
                            mem[mem[64] + 4] = uint16(_2964)
                            require ext_code.size(sub_7d4cd2b5Address)
                            staticcall sub_7d4cd2b5Address.0x224e5e22 with:
                                    gas gas_remaining wei
                                   args (_2964 << 240)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4370 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if uint8(idx) >= mem[96]:
                                revert with 0, 50
                            mem[mem[(32 * uint8(idx)) + 128] + 256] = mem[_4370]
                            if t == -1:
                                revert with 0, 17
                            if uint8(s) == 255:
                                revert with 0, 17
                            if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                                if uint8(idx) == 255:
                                    revert with 0, 17
                                idx = uint8(idx) + 1
                                s = uint8(s) + 1
                                t = t + 1
                                continue 
                            _5022 = mem[64]
                            mem[mem[64]] = 64
                            _5084 = mem[96]
                            mem[mem[64] + 64] = mem[96]
                            idx = 0
                            t = 128
                            u = mem[64] + 96
                            while idx < _5084:
                                _5918 = mem[t]
                                mem[u] = mem[mem[t]]
                                mem[u + 32] = mem[_5918 + 63 len 1]
                                mem[u + 64] = mem[_5918 + 95 len 1]
                                mem[u + 96] = mem[_5918 + 127 len 1]
                                mem[u + 128] = mem[_5918 + 159 len 1]
                                mem[u + 160] = mem[_5918 + 160]
                                mem[u + 192] = mem[_5918 + 192]
                                mem[u + 224] = mem[_5918 + 224]
                                mem[u + 256] = mem[_5918 + 256]
                                idx = idx + 1
                                t = t + 32
                                u = u + 288
                                continue 
                            mem[_5022 + 32] = uint8(uint8(s) + 1)
                            return memory
                              from mem[64]
                               len _5022 + (288 * _5084) + -mem[64] + 96
                        if Mask(80, 0, barn[_2964 << 240].field_16) > lastClaimTimestamp:
                            if uint8(idx) >= mem[96]:
                                revert with 0, 50
                            mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                            mem[mem[64] + 4] = uint16(_2964)
                            require ext_code.size(sub_7d4cd2b5Address)
                            staticcall sub_7d4cd2b5Address.0x224e5e22 with:
                                    gas gas_remaining wei
                                   args (_2964 << 240)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3890 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if uint8(idx) >= mem[96]:
                                revert with 0, 50
                            mem[mem[(32 * uint8(idx)) + 128] + 256] = mem[_3890]
                            if t == -1:
                                revert with 0, 17
                            if uint8(s) == 255:
                                revert with 0, 17
                            if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                                if uint8(idx) == 255:
                                    revert with 0, 17
                                idx = uint8(idx) + 1
                                s = uint8(s) + 1
                                t = t + 1
                                continue 
                            _4426 = mem[64]
                            mem[mem[64]] = 64
                            _4471 = mem[96]
                            mem[mem[64] + 64] = mem[96]
                            idx = 0
                            t = 128
                            u = mem[64] + 96
                            while idx < _4471:
                                _5913 = mem[t]
                                mem[u] = mem[mem[t]]
                                mem[u + 32] = mem[_5913 + 63 len 1]
                                mem[u + 64] = mem[_5913 + 95 len 1]
                                mem[u + 96] = mem[_5913 + 127 len 1]
                                mem[u + 128] = mem[_5913 + 159 len 1]
                                mem[u + 160] = mem[_5913 + 160]
                                mem[u + 192] = mem[_5913 + 192]
                                mem[u + 224] = mem[_5913 + 224]
                                mem[u + 256] = mem[_5913 + 256]
                                idx = idx + 1
                                t = t + 32
                                u = u + 288
                                continue 
                            mem[_4426 + 32] = uint8(uint8(s) + 1)
                            return memory
                              from mem[64]
                               len _4426 + (288 * _4471) + -mem[64] + 96
                        if mem[_3282 + 127 len 1] < 1:
                            revert with 0, 17
                        if uint8(mem[_3282 + 127 len 1] - 1) >= 8:
                            revert with 0, 50
                        if lastClaimTimestamp < Mask(80, 0, barn[_2964 << 240].field_16):
                            revert with 0, 17
                        if lastClaimTimestamp - Mask(80, 0, barn[_2964 << 240].field_16) and sub_637d0d7b[uint8(mem[_3282 + 127 len 1] - 1)] > -1 / lastClaimTimestamp - Mask(80, 0, barn[_2964 << 240].field_16):
                            revert with 0, 17
                        if (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_3282 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_2964 << 240].field_16) * sub_637d0d7b[uint8(mem[_3282 + 127 len 1] - 1)]) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_3282 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_2964 << 240].field_16) * sub_637d0d7b[uint8(mem[_3282 + 127 len 1] - 1)]) / 24 * 3600:
                            revert with 0, 17
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 224] = 80 * (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_3282 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_2964 << 240].field_16) * sub_637d0d7b[uint8(mem[_3282 + 127 len 1] - 1)]) / 24 * 3600 / 100
                        mem[mem[64] + 4] = uint16(_2964)
                        require ext_code.size(sub_7d4cd2b5Address)
                        staticcall sub_7d4cd2b5Address.0x224e5e22 with:
                                gas gas_remaining wei
                               args (_2964 << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4425 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 256] = mem[_4425]
                        if t == -1:
                            revert with 0, 17
                        if uint8(s) == 255:
                            revert with 0, 17
                        if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = uint8(s) + 1
                            t = t + 1
                            continue 
                        _5083 = mem[64]
                        mem[mem[64]] = 64
                        _5131 = mem[96]
                        mem[mem[64] + 64] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 96
                        while idx < _5131:
                            _5908 = mem[t]
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_5908 + 63 len 1]
                            mem[u + 64] = mem[_5908 + 95 len 1]
                            mem[u + 96] = mem[_5908 + 127 len 1]
                            mem[u + 128] = mem[_5908 + 159 len 1]
                            mem[u + 160] = mem[_5908 + 160]
                            mem[u + 192] = mem[_5908 + 192]
                            mem[u + 224] = mem[_5908 + 224]
                            mem[u + 256] = mem[_5908 + 256]
                            idx = idx + 1
                            t = t + 32
                            u = u + 288
                            continue 
                        mem[_5083 + 32] = uint8(uint8(s) + 1)
                        return memory
                          from mem[64]
                           len _5083 + (288 * _5131) + -mem[64] + 96
                    mem[0] = uint16(_2964)
                    mem[32] = 153
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 160] = Mask(80, 0, barn[_2964 << 240].field_16)
                    mem[mem[64] + 4] = uint16(_2964)
                    require ext_code.size(shieldAddress)
                    staticcall shieldAddress.0x478ba63b with:
                            gas gas_remaining wei
                           args (_2964 << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3269 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 192] = mem[_3269]
                    require ext_code.size(minerAddress)
                    staticcall minerAddress.getTokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args (_2964 << 240)
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3378 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _3397 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 128
                    require mem[_3378] == mem[_3378 + 31 len 1]
                    mem[_3397] = mem[_3378]
                    require mem[_3378 + 32] == mem[_3378 + 63 len 1]
                    mem[_3397 + 32] = mem[_3378 + 32]
                    require mem[_3378 + 64] == mem[_3378 + 95 len 1]
                    mem[_3397 + 64] = mem[_3378 + 64]
                    require mem[_3378 + 96] == mem[_3378 + 127 len 1]
                    mem[_3397 + 96] = mem[_3378 + 96]
                    if 0 == mem[_3397 + 127 len 1]:
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                        mem[mem[64] + 4] = uint16(_2964)
                        require ext_code.size(sub_7d4cd2b5Address)
                        staticcall sub_7d4cd2b5Address.0x224e5e22 with:
                                gas gas_remaining wei
                               args (_2964 << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3764 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 256] = mem[_3764]
                        if t == -1:
                            revert with 0, 17
                        if uint8(s) == 255:
                            revert with 0, 17
                        if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = uint8(s) + 1
                            t = t + 1
                            continue 
                        _4235 = mem[64]
                        mem[mem[64]] = 64
                        _4286 = mem[96]
                        mem[mem[64] + 64] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 96
                        while idx < _4286:
                            _5963 = mem[t]
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_5963 + 63 len 1]
                            mem[u + 64] = mem[_5963 + 95 len 1]
                            mem[u + 96] = mem[_5963 + 127 len 1]
                            mem[u + 128] = mem[_5963 + 159 len 1]
                            mem[u + 160] = mem[_5963 + 160]
                            mem[u + 192] = mem[_5963 + 192]
                            mem[u + 224] = mem[_5963 + 224]
                            mem[u + 256] = mem[_5963 + 256]
                            idx = idx + 1
                            t = t + 32
                            u = u + 288
                            continue 
                        mem[_4235 + 32] = uint8(uint8(s) + 1)
                        return memory
                          from mem[64]
                           len _4235 + (288 * _4286) + -mem[64] + 96
                    if mem[_3397 + 63 len 1] != 0:
                        mem[0] = mem[_3397 + 127 len 1]
                        mem[32] = 154
                        if packIndices[_2964 << 240] >= uint256(pack[mem[0]].field_0):
                            revert with 0, 50
                        mem[0] = sha3(mem[0], 154)
                        _3614 = sha3(mem[0])
                        _3615 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_3615] = uint16(stor[sha3(mem[0]) + stor155[_2964 << 240]].field_0)
                        mem[_3615 + 32] = Mask(80, 0, stor[_3614 + stor155[_2964 << 240]].field_16)
                        mem[_3615 + 64] = address(stor[_3614 + stor155[_2964 << 240]].field_96)
                        if not address(stor[_3614 + stor155[_2964 << 240]].field_96):
                            if uint8(idx) >= mem[96]:
                                revert with 0, 50
                            mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                            mem[mem[64] + 4] = uint16(_2964)
                            require ext_code.size(sub_7d4cd2b5Address)
                            staticcall sub_7d4cd2b5Address.0x224e5e22 with:
                                    gas gas_remaining wei
                                   args (_2964 << 240)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3859 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if uint8(idx) >= mem[96]:
                                revert with 0, 50
                            mem[mem[(32 * uint8(idx)) + 128] + 256] = mem[_3859]
                            if t == -1:
                                revert with 0, 17
                            if uint8(s) == 255:
                                revert with 0, 17
                            if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                                if uint8(idx) == 255:
                                    revert with 0, 17
                                idx = uint8(idx) + 1
                                s = uint8(s) + 1
                                t = t + 1
                                continue 
                            _4372 = mem[64]
                            mem[mem[64]] = 64
                            _4428 = mem[96]
                            mem[mem[64] + 64] = mem[96]
                            idx = 0
                            t = 128
                            u = mem[64] + 96
                            while idx < _4428:
                                _5938 = mem[t]
                                mem[u] = mem[mem[t]]
                                mem[u + 32] = mem[_5938 + 63 len 1]
                                mem[u + 64] = mem[_5938 + 95 len 1]
                                mem[u + 96] = mem[_5938 + 127 len 1]
                                mem[u + 128] = mem[_5938 + 159 len 1]
                                mem[u + 160] = mem[_5938 + 160]
                                mem[u + 192] = mem[_5938 + 192]
                                mem[u + 224] = mem[_5938 + 224]
                                mem[u + 256] = mem[_5938 + 256]
                                idx = idx + 1
                                t = t + 32
                                u = u + 288
                                continue 
                            mem[_4372 + 32] = uint8(uint8(s) + 1)
                            return memory
                              from mem[64]
                               len _4372 + (288 * _4428) + -mem[64] + 96
                        if mem[_3397 + 127 len 1] < 1:
                            revert with 0, 17
                        if uint8(mem[_3397 + 127 len 1] - 1) >= 5:
                            revert with 0, 50
                        if uint256(sub_bc633bf2) < Mask(80, 0, stor[_3614 + stor155[_2964 << 240]].field_16):
                            revert with 0, 17
                        if sub_3f30e8d8[uint8(mem[_3397 + 127 len 1] - 1)] and uint256(sub_bc633bf2) - Mask(80, 0, stor[_3614 + stor155[_2964 << 240]].field_16) > -1 / sub_3f30e8d8[uint8(mem[_3397 + 127 len 1] - 1)]:
                            revert with 0, 17
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 224] = (uint256(sub_bc633bf2) * sub_3f30e8d8[uint8(mem[_3397 + 127 len 1] - 1)]) - (Mask(80, 0, stor[_3614 + stor155[_2964 << 240]].field_16) * sub_3f30e8d8[uint8(mem[_3397 + 127 len 1] - 1)])
                        mem[mem[64] + 4] = uint16(_2964)
                        require ext_code.size(sub_7d4cd2b5Address)
                        staticcall sub_7d4cd2b5Address.0x224e5e22 with:
                                gas gas_remaining wei
                               args (_2964 << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4234 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 256] = mem[_4234]
                        if t == -1:
                            revert with 0, 17
                        if uint8(s) == 255:
                            revert with 0, 17
                        if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = uint8(s) + 1
                            t = t + 1
                            continue 
                        _4868 = mem[64]
                        mem[mem[64]] = 64
                        _4923 = mem[96]
                        mem[mem[64] + 64] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 96
                        while idx < _4923:
                            _5933 = mem[t]
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_5933 + 63 len 1]
                            mem[u + 64] = mem[_5933 + 95 len 1]
                            mem[u + 96] = mem[_5933 + 127 len 1]
                            mem[u + 128] = mem[_5933 + 159 len 1]
                            mem[u + 160] = mem[_5933 + 160]
                            mem[u + 192] = mem[_5933 + 192]
                            mem[u + 224] = mem[_5933 + 224]
                            mem[u + 256] = mem[_5933 + 256]
                            idx = idx + 1
                            t = t + 32
                            u = u + 288
                            continue 
                        mem[_4868 + 32] = uint8(uint8(s) + 1)
                        return memory
                          from mem[64]
                           len _4868 + (288 * _4923) + -mem[64] + 96
                    mem[0] = uint16(_2964)
                    mem[32] = 153
                    _3597 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_3597] = uint16(barn[_2964 << 240].field_0)
                    mem[_3597 + 32] = Mask(80, 0, barn[_2964 << 240].field_16)
                    mem[_3597 + 64] = address(barn[_2964 << 240].field_96)
                    if not address(barn[_2964 << 240].field_96):
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                        mem[mem[64] + 4] = uint16(_2964)
                        require ext_code.size(sub_7d4cd2b5Address)
                        staticcall sub_7d4cd2b5Address.0x224e5e22 with:
                                gas gas_remaining wei
                               args (_2964 << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3828 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 256] = mem[_3828]
                        if t == -1:
                            revert with 0, 17
                        if uint8(s) == 255:
                            revert with 0, 17
                        if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = uint8(s) + 1
                            t = t + 1
                            continue 
                        _4327 = mem[64]
                        mem[mem[64]] = 64
                        _4374 = mem[96]
                        mem[mem[64] + 64] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 96
                        while idx < _4374:
                            _5958 = mem[t]
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_5958 + 63 len 1]
                            mem[u + 64] = mem[_5958 + 95 len 1]
                            mem[u + 96] = mem[_5958 + 127 len 1]
                            mem[u + 128] = mem[_5958 + 159 len 1]
                            mem[u + 160] = mem[_5958 + 160]
                            mem[u + 192] = mem[_5958 + 192]
                            mem[u + 224] = mem[_5958 + 224]
                            mem[u + 256] = mem[_5958 + 256]
                            idx = idx + 1
                            t = t + 32
                            u = u + 288
                            continue 
                        mem[_4327 + 32] = uint8(uint8(s) + 1)
                        return memory
                          from mem[64]
                           len _4327 + (288 * _4374) + -mem[64] + 96
                    if sub_2d8c2ef1 < 400000000 * 10^18:
                        if mem[_3397 + 127 len 1] < 1:
                            revert with 0, 17
                        if uint8(mem[_3397 + 127 len 1] - 1) >= 8:
                            revert with 0, 50
                        if block.timestamp < Mask(80, 0, barn[_2964 << 240].field_16):
                            revert with 0, 17
                        if block.timestamp - Mask(80, 0, barn[_2964 << 240].field_16) and sub_637d0d7b[uint8(mem[_3397 + 127 len 1] - 1)] > -1 / block.timestamp - Mask(80, 0, barn[_2964 << 240].field_16):
                            revert with 0, 17
                        if (block.timestamp * sub_637d0d7b[uint8(mem[_3397 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_2964 << 240].field_16) * sub_637d0d7b[uint8(mem[_3397 + 127 len 1] - 1)]) / 24 * 3600 and 80 > -1 / (block.timestamp * sub_637d0d7b[uint8(mem[_3397 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_2964 << 240].field_16) * sub_637d0d7b[uint8(mem[_3397 + 127 len 1] - 1)]) / 24 * 3600:
                            revert with 0, 17
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 224] = 80 * (block.timestamp * sub_637d0d7b[uint8(mem[_3397 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_2964 << 240].field_16) * sub_637d0d7b[uint8(mem[_3397 + 127 len 1] - 1)]) / 24 * 3600 / 100
                        mem[mem[64] + 4] = uint16(_2964)
                        require ext_code.size(sub_7d4cd2b5Address)
                        staticcall sub_7d4cd2b5Address.0x224e5e22 with:
                                gas gas_remaining wei
                               args (_2964 << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4869 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 256] = mem[_4869]
                        if t == -1:
                            revert with 0, 17
                        if uint8(s) == 255:
                            revert with 0, 17
                        if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = uint8(s) + 1
                            t = t + 1
                            continue 
                        _5463 = mem[64]
                        mem[mem[64]] = 64
                        _5500 = mem[96]
                        mem[mem[64] + 64] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 96
                        while idx < _5500:
                            _5953 = mem[t]
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_5953 + 63 len 1]
                            mem[u + 64] = mem[_5953 + 95 len 1]
                            mem[u + 96] = mem[_5953 + 127 len 1]
                            mem[u + 128] = mem[_5953 + 159 len 1]
                            mem[u + 160] = mem[_5953 + 160]
                            mem[u + 192] = mem[_5953 + 192]
                            mem[u + 224] = mem[_5953 + 224]
                            mem[u + 256] = mem[_5953 + 256]
                            idx = idx + 1
                            t = t + 32
                            u = u + 288
                            continue 
                        mem[_5463 + 32] = uint8(uint8(s) + 1)
                        return memory
                          from mem[64]
                           len _5463 + (288 * _5500) + -mem[64] + 96
                    if Mask(80, 0, barn[_2964 << 240].field_16) > lastClaimTimestamp:
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                        mem[mem[64] + 4] = uint16(_2964)
                        require ext_code.size(sub_7d4cd2b5Address)
                        staticcall sub_7d4cd2b5Address.0x224e5e22 with:
                                gas gas_remaining wei
                               args (_2964 << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4285 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 256] = mem[_4285]
                        if t == -1:
                            revert with 0, 17
                        if uint8(s) == 255:
                            revert with 0, 17
                        if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = uint8(s) + 1
                            t = t + 1
                            continue 
                        _4925 = mem[64]
                        mem[mem[64]] = 64
                        _4974 = mem[96]
                        mem[mem[64] + 64] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 96
                        while idx < _4974:
                            _5948 = mem[t]
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_5948 + 63 len 1]
                            mem[u + 64] = mem[_5948 + 95 len 1]
                            mem[u + 96] = mem[_5948 + 127 len 1]
                            mem[u + 128] = mem[_5948 + 159 len 1]
                            mem[u + 160] = mem[_5948 + 160]
                            mem[u + 192] = mem[_5948 + 192]
                            mem[u + 224] = mem[_5948 + 224]
                            mem[u + 256] = mem[_5948 + 256]
                            idx = idx + 1
                            t = t + 32
                            u = u + 288
                            continue 
                        mem[_4925 + 32] = uint8(uint8(s) + 1)
                        return memory
                          from mem[64]
                           len _4925 + (288 * _4974) + -mem[64] + 96
                    if mem[_3397 + 127 len 1] < 1:
                        revert with 0, 17
                    if uint8(mem[_3397 + 127 len 1] - 1) >= 8:
                        revert with 0, 50
                    if lastClaimTimestamp < Mask(80, 0, barn[_2964 << 240].field_16):
                        revert with 0, 17
                    if lastClaimTimestamp - Mask(80, 0, barn[_2964 << 240].field_16) and sub_637d0d7b[uint8(mem[_3397 + 127 len 1] - 1)] > -1 / lastClaimTimestamp - Mask(80, 0, barn[_2964 << 240].field_16):
                        revert with 0, 17
                    if (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_3397 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_2964 << 240].field_16) * sub_637d0d7b[uint8(mem[_3397 + 127 len 1] - 1)]) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_3397 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_2964 << 240].field_16) * sub_637d0d7b[uint8(mem[_3397 + 127 len 1] - 1)]) / 24 * 3600:
                        revert with 0, 17
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 224] = 80 * (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_3397 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_2964 << 240].field_16) * sub_637d0d7b[uint8(mem[_3397 + 127 len 1] - 1)]) / 24 * 3600 / 100
                    mem[mem[64] + 4] = uint16(_2964)
                    require ext_code.size(sub_7d4cd2b5Address)
                    staticcall sub_7d4cd2b5Address.0x224e5e22 with:
                            gas gas_remaining wei
                           args (_2964 << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4924 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 256] = mem[_4924]
                    if t == -1:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(s) + 1
                        t = t + 1
                        continue 
                    _5499 = mem[64]
                    mem[mem[64]] = 64
                    _5536 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 96
                    while idx < _5536:
                        _5943 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_5943 + 63 len 1]
                        mem[u + 64] = mem[_5943 + 95 len 1]
                        mem[u + 96] = mem[_5943 + 127 len 1]
                        mem[u + 128] = mem[_5943 + 159 len 1]
                        mem[u + 160] = mem[_5943 + 160]
                        mem[u + 192] = mem[_5943 + 192]
                        mem[u + 224] = mem[_5943 + 224]
                        mem[u + 256] = mem[_5943 + 256]
                        idx = idx + 1
                        t = t + 32
                        u = u + 288
                        continue 
                    mem[_5499 + 32] = uint8(uint8(s) + 1)
                    return memory
                      from mem[64]
                       len _5499 + (288 * _5536) + -mem[64] + 96
                _2969 = mem[64]
                mem[mem[64]] = 64
                _2977 = mem[96]
                mem[mem[64] + 64] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 96
                while idx < _2977:
                    _5893 = mem[t]
                    mem[u] = mem[mem[t]]
                    mem[u + 32] = mem[_5893 + 63 len 1]
                    mem[u + 64] = mem[_5893 + 95 len 1]
                    mem[u + 96] = mem[_5893 + 127 len 1]
                    mem[u + 128] = mem[_5893 + 159 len 1]
                    mem[u + 160] = mem[_5893 + 160]
                    mem[u + 192] = mem[_5893 + 192]
                    mem[u + 224] = mem[_5893 + 224]
                    mem[u + 256] = mem[_5893 + 256]
                    idx = idx + 1
                    t = t + 32
                    u = u + 288
                    continue 
                mem[_2969 + 32] = uint8(s)
                return memory
                  from mem[64]
                   len _2969 + (288 * _2977) + -mem[64] + 96
            idx = 0
            s = 0
            t = arg2
            while uint8(idx) < arg3:
                if t >= mem[(32 * uint8(arg3)) + 128]:
                    revert with 0, 50
                _2966 = mem[(32 * t) + (32 * uint8(arg3)) + 160]
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128]] = mem[(32 * t) + (32 * uint8(arg3)) + 190 len 2]
                require ext_code.size(minerAddress)
                staticcall minerAddress.getTokenTraits(uint256 arg1) with:
                        gas gas_remaining wei
                       args (_2966 << 240)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3004 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _3020 = mem[64]
                if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 128
                require mem[_3004] == mem[_3004 + 31 len 1]
                mem[_3020] = mem[_3004]
                require mem[_3004 + 32] == mem[_3004 + 63 len 1]
                mem[_3020 + 32] = mem[_3004 + 32]
                require mem[_3004 + 64] == mem[_3004 + 95 len 1]
                mem[_3020 + 64] = mem[_3004 + 64]
                require mem[_3004 + 96] == mem[_3004 + 127 len 1]
                mem[_3020 + 96] = mem[_3004 + 96]
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 32] = mem[_3020 + 31 len 1]
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 64] = mem[_3020 + 63 len 1]
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 96] = mem[_3020 + 95 len 1]
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 128] = mem[_3020 + 127 len 1]
                if mem[_3020 + 63 len 1]:
                    require ext_code.size(minerAddress)
                    staticcall minerAddress.getTokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args (_2966 << 240)
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3270 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _3284 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 128
                    require mem[_3270] == mem[_3270 + 31 len 1]
                    mem[_3284] = mem[_3270]
                    require mem[_3270 + 32] == mem[_3270 + 63 len 1]
                    mem[_3284 + 32] = mem[_3270 + 32]
                    require mem[_3270 + 64] == mem[_3270 + 95 len 1]
                    mem[_3284 + 64] = mem[_3270 + 64]
                    require mem[_3270 + 96] == mem[_3270 + 127 len 1]
                    mem[_3284 + 96] = mem[_3270 + 96]
                    if 0 == mem[_3284 + 127 len 1]:
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 256] = 0
                        if t == -1:
                            revert with 0, 17
                        if uint8(s) == 255:
                            revert with 0, 17
                        if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = uint8(s) + 1
                            t = t + 1
                            continue 
                        _3676 = mem[64]
                        mem[mem[64]] = 64
                        _3703 = mem[96]
                        mem[mem[64] + 64] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 96
                        while idx < _3703:
                            _6003 = mem[t]
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_6003 + 63 len 1]
                            mem[u + 64] = mem[_6003 + 95 len 1]
                            mem[u + 96] = mem[_6003 + 127 len 1]
                            mem[u + 128] = mem[_6003 + 159 len 1]
                            mem[u + 160] = mem[_6003 + 160]
                            mem[u + 192] = mem[_6003 + 192]
                            mem[u + 224] = mem[_6003 + 224]
                            mem[u + 256] = mem[_6003 + 256]
                            idx = idx + 1
                            t = t + 32
                            u = u + 288
                            continue 
                        mem[_3676 + 32] = uint8(uint8(s) + 1)
                        return memory
                          from mem[64]
                           len _3676 + (288 * _3703) + -mem[64] + 96
                    if mem[_3284 + 63 len 1] != 0:
                        mem[0] = mem[_3284 + 127 len 1]
                        mem[32] = 154
                        if packIndices[_2966 << 240] >= uint256(pack[mem[0]].field_0):
                            revert with 0, 50
                        mem[0] = sha3(mem[0], 154)
                        _3466 = sha3(mem[0])
                        _3467 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_3467] = uint16(stor[sha3(mem[0]) + stor155[_2966 << 240]].field_0)
                        mem[_3467 + 32] = Mask(80, 0, stor[_3466 + stor155[_2966 << 240]].field_16)
                        mem[_3467 + 64] = address(stor[_3466 + stor155[_2966 << 240]].field_96)
                        if not address(stor[_3466 + stor155[_2966 << 240]].field_96):
                            if uint8(idx) >= mem[96]:
                                revert with 0, 50
                            mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                            if uint8(idx) >= mem[96]:
                                revert with 0, 50
                            mem[mem[(32 * uint8(idx)) + 128] + 256] = 0
                            if t == -1:
                                revert with 0, 17
                            if uint8(s) == 255:
                                revert with 0, 17
                            if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                                if uint8(idx) == 255:
                                    revert with 0, 17
                                idx = uint8(idx) + 1
                                s = uint8(s) + 1
                                t = t + 1
                                continue 
                            _3766 = mem[64]
                            mem[mem[64]] = 64
                            _3804 = mem[96]
                            mem[mem[64] + 64] = mem[96]
                            t = 0
                            u = 128
                            v = mem[64] + 96
                            while t < _3804:
                                _5978 = mem[u]
                                mem[v] = mem[mem[u]]
                                mem[v + 32] = mem[_5978 + 63 len 1]
                                mem[v + 64] = mem[_5978 + 95 len 1]
                                mem[v + 96] = mem[_5978 + 127 len 1]
                                mem[v + 128] = mem[_5978 + 159 len 1]
                                mem[v + 160] = mem[_5978 + 160]
                                mem[v + 192] = mem[_5978 + 192]
                                mem[v + 224] = mem[_5978 + 224]
                                mem[v + 256] = mem[_5978 + 256]
                                t = t + 1
                                u = u + 32
                                v = v + 288
                                continue 
                            mem[_3766 + 32] = uint8(uint8(_3766 + (288 * _3804) + 96) + 1)
                            return memory
                              from mem[64]
                               len _3766 + (288 * _3804) + -mem[64] + 96
                        if mem[_3284 + 127 len 1] < 1:
                            revert with 0, 17
                        if uint8(mem[_3284 + 127 len 1] - 1) >= 5:
                            revert with 0, 50
                        if uint256(sub_bc633bf2) < Mask(80, 0, stor[_3466 + stor155[_2966 << 240]].field_16):
                            revert with 0, 17
                        if sub_3f30e8d8[uint8(mem[_3284 + 127 len 1] - 1)] and uint256(sub_bc633bf2) - Mask(80, 0, stor[_3466 + stor155[_2966 << 240]].field_16) > -1 / sub_3f30e8d8[uint8(mem[_3284 + 127 len 1] - 1)]:
                            revert with 0, 17
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 224] = (uint256(sub_bc633bf2) * sub_3f30e8d8[uint8(mem[_3284 + 127 len 1] - 1)]) - (Mask(80, 0, stor[_3466 + stor155[_2966 << 240]].field_16) * sub_3f30e8d8[uint8(mem[_3284 + 127 len 1] - 1)])
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 256] = 0
                        if t == -1:
                            revert with 0, 17
                        if uint8(s) == 255:
                            revert with 0, 17
                        if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = uint8(s) + 1
                            t = t + 1
                            continue 
                        _4103 = mem[64]
                        mem[mem[64]] = 64
                        _4141 = mem[96]
                        mem[mem[64] + 64] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 96
                        while idx < _4141:
                            _5973 = mem[t]
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_5973 + 63 len 1]
                            mem[u + 64] = mem[_5973 + 95 len 1]
                            mem[u + 96] = mem[_5973 + 127 len 1]
                            mem[u + 128] = mem[_5973 + 159 len 1]
                            mem[u + 160] = mem[_5973 + 160]
                            mem[u + 192] = mem[_5973 + 192]
                            mem[u + 224] = mem[_5973 + 224]
                            mem[u + 256] = mem[_5973 + 256]
                            idx = idx + 1
                            t = t + 32
                            u = u + 288
                            continue 
                        mem[_4103 + 32] = uint8(uint8(s) + 1)
                        return memory
                          from mem[64]
                           len _4103 + (288 * _4141) + -mem[64] + 96
                    mem[0] = uint16(_2966)
                    mem[32] = 153
                    _3455 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_3455] = uint16(barn[_2966 << 240].field_0)
                    mem[_3455 + 32] = Mask(80, 0, barn[_2966 << 240].field_16)
                    mem[_3455 + 64] = address(barn[_2966 << 240].field_96)
                    if not address(barn[_2966 << 240].field_96):
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 256] = 0
                        if t == -1:
                            revert with 0, 17
                        if uint8(s) == 255:
                            revert with 0, 17
                        if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = uint8(s) + 1
                            t = t + 1
                            continue 
                        _3734 = mem[64]
                        mem[mem[64]] = 64
                        _3767 = mem[96]
                        mem[mem[64] + 64] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 96
                        while idx < _3767:
                            _5998 = mem[t]
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_5998 + 63 len 1]
                            mem[u + 64] = mem[_5998 + 95 len 1]
                            mem[u + 96] = mem[_5998 + 127 len 1]
                            mem[u + 128] = mem[_5998 + 159 len 1]
                            mem[u + 160] = mem[_5998 + 160]
                            mem[u + 192] = mem[_5998 + 192]
                            mem[u + 224] = mem[_5998 + 224]
                            mem[u + 256] = mem[_5998 + 256]
                            idx = idx + 1
                            t = t + 32
                            u = u + 288
                            continue 
                        mem[_3734 + 32] = uint8(uint8(s) + 1)
                        return memory
                          from mem[64]
                           len _3734 + (288 * _3767) + -mem[64] + 96
                    if sub_2d8c2ef1 < 400000000 * 10^18:
                        if mem[_3284 + 127 len 1] < 1:
                            revert with 0, 17
                        if uint8(mem[_3284 + 127 len 1] - 1) >= 8:
                            revert with 0, 50
                        if block.timestamp < Mask(80, 0, barn[_2966 << 240].field_16):
                            revert with 0, 17
                        if block.timestamp - Mask(80, 0, barn[_2966 << 240].field_16) and sub_637d0d7b[uint8(mem[_3284 + 127 len 1] - 1)] > -1 / block.timestamp - Mask(80, 0, barn[_2966 << 240].field_16):
                            revert with 0, 17
                        if (block.timestamp * sub_637d0d7b[uint8(mem[_3284 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_2966 << 240].field_16) * sub_637d0d7b[uint8(mem[_3284 + 127 len 1] - 1)]) / 24 * 3600 and 80 > -1 / (block.timestamp * sub_637d0d7b[uint8(mem[_3284 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_2966 << 240].field_16) * sub_637d0d7b[uint8(mem[_3284 + 127 len 1] - 1)]) / 24 * 3600:
                            revert with 0, 17
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 224] = 80 * (block.timestamp * sub_637d0d7b[uint8(mem[_3284 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_2966 << 240].field_16) * sub_637d0d7b[uint8(mem[_3284 + 127 len 1] - 1)]) / 24 * 3600 / 100
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 256] = 0
                        if t == -1:
                            revert with 0, 17
                        if uint8(s) == 255:
                            revert with 0, 17
                        if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = uint8(s) + 1
                            t = t + 1
                            continue 
                        _4723 = mem[64]
                        mem[mem[64]] = 64
                        _4777 = mem[96]
                        mem[mem[64] + 64] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 96
                        while idx < _4777:
                            _5993 = mem[t]
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_5993 + 63 len 1]
                            mem[u + 64] = mem[_5993 + 95 len 1]
                            mem[u + 96] = mem[_5993 + 127 len 1]
                            mem[u + 128] = mem[_5993 + 159 len 1]
                            mem[u + 160] = mem[_5993 + 160]
                            mem[u + 192] = mem[_5993 + 192]
                            mem[u + 224] = mem[_5993 + 224]
                            mem[u + 256] = mem[_5993 + 256]
                            idx = idx + 1
                            t = t + 32
                            u = u + 288
                            continue 
                        mem[_4723 + 32] = uint8(uint8(s) + 1)
                        return memory
                          from mem[64]
                           len _4723 + (288 * _4777) + -mem[64] + 96
                    if Mask(80, 0, barn[_2966 << 240].field_16) > lastClaimTimestamp:
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 256] = 0
                        if t == -1:
                            revert with 0, 17
                        if uint8(s) == 255:
                            revert with 0, 17
                        if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = uint8(s) + 1
                            t = t + 1
                            continue 
                        _4143 = mem[64]
                        mem[mem[64]] = 64
                        _4193 = mem[96]
                        mem[mem[64] + 64] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 96
                        while idx < _4193:
                            _5988 = mem[t]
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_5988 + 63 len 1]
                            mem[u + 64] = mem[_5988 + 95 len 1]
                            mem[u + 96] = mem[_5988 + 127 len 1]
                            mem[u + 128] = mem[_5988 + 159 len 1]
                            mem[u + 160] = mem[_5988 + 160]
                            mem[u + 192] = mem[_5988 + 192]
                            mem[u + 224] = mem[_5988 + 224]
                            mem[u + 256] = mem[_5988 + 256]
                            idx = idx + 1
                            t = t + 32
                            u = u + 288
                            continue 
                        mem[_4143 + 32] = uint8(uint8(s) + 1)
                        return memory
                          from mem[64]
                           len _4143 + (288 * _4193) + -mem[64] + 96
                    if mem[_3284 + 127 len 1] < 1:
                        revert with 0, 17
                    if uint8(mem[_3284 + 127 len 1] - 1) >= 8:
                        revert with 0, 50
                    if lastClaimTimestamp < Mask(80, 0, barn[_2966 << 240].field_16):
                        revert with 0, 17
                    if lastClaimTimestamp - Mask(80, 0, barn[_2966 << 240].field_16) and sub_637d0d7b[uint8(mem[_3284 + 127 len 1] - 1)] > -1 / lastClaimTimestamp - Mask(80, 0, barn[_2966 << 240].field_16):
                        revert with 0, 17
                    if (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_3284 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_2966 << 240].field_16) * sub_637d0d7b[uint8(mem[_3284 + 127 len 1] - 1)]) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_3284 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_2966 << 240].field_16) * sub_637d0d7b[uint8(mem[_3284 + 127 len 1] - 1)]) / 24 * 3600:
                        revert with 0, 17
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 224] = 80 * (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_3284 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_2966 << 240].field_16) * sub_637d0d7b[uint8(mem[_3284 + 127 len 1] - 1)]) / 24 * 3600 / 100
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 256] = 0
                    if t == -1:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(s) + 1
                        t = t + 1
                        continue 
                    _4776 = mem[64]
                    mem[mem[64]] = 64
                    _4823 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 96
                    while idx < _4823:
                        _5983 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_5983 + 63 len 1]
                        mem[u + 64] = mem[_5983 + 95 len 1]
                        mem[u + 96] = mem[_5983 + 127 len 1]
                        mem[u + 128] = mem[_5983 + 159 len 1]
                        mem[u + 160] = mem[_5983 + 160]
                        mem[u + 192] = mem[_5983 + 192]
                        mem[u + 224] = mem[_5983 + 224]
                        mem[u + 256] = mem[_5983 + 256]
                        idx = idx + 1
                        t = t + 32
                        u = u + 288
                        continue 
                    mem[_4776 + 32] = uint8(uint8(s) + 1)
                    return memory
                      from mem[64]
                       len _4776 + (288 * _4823) + -mem[64] + 96
                mem[0] = uint16(_2966)
                mem[32] = 153
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 160] = Mask(80, 0, barn[_2966 << 240].field_16)
                mem[mem[64] + 4] = uint16(_2966)
                require ext_code.size(shieldAddress)
                staticcall shieldAddress.0x478ba63b with:
                        gas gas_remaining wei
                       args (_2966 << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3271 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 192] = mem[_3271]
                require ext_code.size(minerAddress)
                staticcall minerAddress.getTokenTraits(uint256 arg1) with:
                        gas gas_remaining wei
                       args (_2966 << 240)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3379 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _3399 = mem[64]
                if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 128
                require mem[_3379] == mem[_3379 + 31 len 1]
                mem[_3399] = mem[_3379]
                require mem[_3379 + 32] == mem[_3379 + 63 len 1]
                mem[_3399 + 32] = mem[_3379 + 32]
                require mem[_3379 + 64] == mem[_3379 + 95 len 1]
                mem[_3399 + 64] = mem[_3379 + 64]
                require mem[_3379 + 96] == mem[_3379 + 127 len 1]
                mem[_3399 + 96] = mem[_3379 + 96]
                if 0 == mem[_3399 + 127 len 1]:
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 256] = 0
                    if t == -1:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(s) + 1
                        t = t + 1
                        continue 
                    _3999 = mem[64]
                    mem[mem[64]] = 64
                    _4033 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 96
                    while idx < _4033:
                        _6038 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_6038 + 63 len 1]
                        mem[u + 64] = mem[_6038 + 95 len 1]
                        mem[u + 96] = mem[_6038 + 127 len 1]
                        mem[u + 128] = mem[_6038 + 159 len 1]
                        mem[u + 160] = mem[_6038 + 160]
                        mem[u + 192] = mem[_6038 + 192]
                        mem[u + 224] = mem[_6038 + 224]
                        mem[u + 256] = mem[_6038 + 256]
                        idx = idx + 1
                        t = t + 32
                        u = u + 288
                        continue 
                    mem[_3999 + 32] = uint8(uint8(s) + 1)
                    return memory
                      from mem[64]
                       len _3999 + (288 * _4033) + -mem[64] + 96
                if mem[_3399 + 63 len 1] != 0:
                    mem[0] = mem[_3399 + 127 len 1]
                    mem[32] = 154
                    if packIndices[_2966 << 240] >= uint256(pack[mem[0]].field_0):
                        revert with 0, 50
                    mem[0] = sha3(mem[0], 154)
                    _3617 = sha3(mem[0])
                    _3618 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_3618] = uint16(stor[sha3(mem[0]) + stor155[_2966 << 240]].field_0)
                    mem[_3618 + 32] = Mask(80, 0, stor[_3617 + stor155[_2966 << 240]].field_16)
                    mem[_3618 + 64] = address(stor[_3617 + stor155[_2966 << 240]].field_96)
                    if not address(stor[_3617 + stor155[_2966 << 240]].field_96):
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 256] = 0
                        if t == -1:
                            revert with 0, 17
                        if uint8(s) == 255:
                            revert with 0, 17
                        if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = uint8(s) + 1
                            t = t + 1
                            continue 
                        _4106 = mem[64]
                        mem[mem[64]] = 64
                        _4146 = mem[96]
                        mem[mem[64] + 64] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 96
                        while idx < _4146:
                            _6013 = mem[t]
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_6013 + 63 len 1]
                            mem[u + 64] = mem[_6013 + 95 len 1]
                            mem[u + 96] = mem[_6013 + 127 len 1]
                            mem[u + 128] = mem[_6013 + 159 len 1]
                            mem[u + 160] = mem[_6013 + 160]
                            mem[u + 192] = mem[_6013 + 192]
                            mem[u + 224] = mem[_6013 + 224]
                            mem[u + 256] = mem[_6013 + 256]
                            idx = idx + 1
                            t = t + 32
                            u = u + 288
                            continue 
                        mem[_4106 + 32] = uint8(uint8(s) + 1)
                        return memory
                          from mem[64]
                           len _4106 + (288 * _4146) + -mem[64] + 96
                    if mem[_3399 + 127 len 1] < 1:
                        revert with 0, 17
                    if uint8(mem[_3399 + 127 len 1] - 1) >= 5:
                        revert with 0, 50
                    if uint256(sub_bc633bf2) < Mask(80, 0, stor[_3617 + stor155[_2966 << 240]].field_16):
                        revert with 0, 17
                    if sub_3f30e8d8[uint8(mem[_3399 + 127 len 1] - 1)] and uint256(sub_bc633bf2) - Mask(80, 0, stor[_3617 + stor155[_2966 << 240]].field_16) > -1 / sub_3f30e8d8[uint8(mem[_3399 + 127 len 1] - 1)]:
                        revert with 0, 17
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 224] = (uint256(sub_bc633bf2) * sub_3f30e8d8[uint8(mem[_3399 + 127 len 1] - 1)]) - (Mask(80, 0, stor[_3617 + stor155[_2966 << 240]].field_16) * sub_3f30e8d8[uint8(mem[_3399 + 127 len 1] - 1)])
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 256] = 0
                    if t == -1:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(s) + 1
                        t = t + 1
                        continue 
                    _4586 = mem[64]
                    mem[mem[64]] = 64
                    _4621 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 96
                    while idx < _4621:
                        _6008 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_6008 + 63 len 1]
                        mem[u + 64] = mem[_6008 + 95 len 1]
                        mem[u + 96] = mem[_6008 + 127 len 1]
                        mem[u + 128] = mem[_6008 + 159 len 1]
                        mem[u + 160] = mem[_6008 + 160]
                        mem[u + 192] = mem[_6008 + 192]
                        mem[u + 224] = mem[_6008 + 224]
                        mem[u + 256] = mem[_6008 + 256]
                        idx = idx + 1
                        t = t + 32
                        u = u + 288
                        continue 
                    mem[_4586 + 32] = uint8(uint8(s) + 1)
                    return memory
                      from mem[64]
                       len _4586 + (288 * _4621) + -mem[64] + 96
                mem[0] = uint16(_2966)
                mem[32] = 153
                _3602 = mem[64]
                mem[64] = mem[64] + 96
                mem[_3602] = uint16(barn[_2966 << 240].field_0)
                mem[_3602 + 32] = Mask(80, 0, barn[_2966 << 240].field_16)
                mem[_3602 + 64] = address(barn[_2966 << 240].field_96)
                if not address(barn[_2966 << 240].field_96):
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 256] = 0
                    if t == -1:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(s) + 1
                        t = t + 1
                        continue 
                    _4067 = mem[64]
                    mem[mem[64]] = 64
                    _4107 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 96
                    while idx < _4107:
                        _6033 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_6033 + 63 len 1]
                        mem[u + 64] = mem[_6033 + 95 len 1]
                        mem[u + 96] = mem[_6033 + 127 len 1]
                        mem[u + 128] = mem[_6033 + 159 len 1]
                        mem[u + 160] = mem[_6033 + 160]
                        mem[u + 192] = mem[_6033 + 192]
                        mem[u + 224] = mem[_6033 + 224]
                        mem[u + 256] = mem[_6033 + 256]
                        idx = idx + 1
                        t = t + 32
                        u = u + 288
                        continue 
                    mem[_4067 + 32] = uint8(uint8(s) + 1)
                    return memory
                      from mem[64]
                       len _4067 + (288 * _4107) + -mem[64] + 96
                if sub_2d8c2ef1 < 400000000 * 10^18:
                    if mem[_3399 + 127 len 1] < 1:
                        revert with 0, 17
                    if uint8(mem[_3399 + 127 len 1] - 1) >= 8:
                        revert with 0, 50
                    if block.timestamp < Mask(80, 0, barn[_2966 << 240].field_16):
                        revert with 0, 17
                    if block.timestamp - Mask(80, 0, barn[_2966 << 240].field_16) and sub_637d0d7b[uint8(mem[_3399 + 127 len 1] - 1)] > -1 / block.timestamp - Mask(80, 0, barn[_2966 << 240].field_16):
                        revert with 0, 17
                    if (block.timestamp * sub_637d0d7b[uint8(mem[_3399 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_2966 << 240].field_16) * sub_637d0d7b[uint8(mem[_3399 + 127 len 1] - 1)]) / 24 * 3600 and 80 > -1 / (block.timestamp * sub_637d0d7b[uint8(mem[_3399 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_2966 << 240].field_16) * sub_637d0d7b[uint8(mem[_3399 + 127 len 1] - 1)]) / 24 * 3600:
                        revert with 0, 17
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 224] = 80 * (block.timestamp * sub_637d0d7b[uint8(mem[_3399 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_2966 << 240].field_16) * sub_637d0d7b[uint8(mem[_3399 + 127 len 1] - 1)]) / 24 * 3600 / 100
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 256] = 0
                    if t == -1:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(s) + 1
                        t = t + 1
                        continue 
                    _5228 = mem[64]
                    mem[mem[64]] = 64
                    _5272 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 96
                    while idx < _5272:
                        _6028 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_6028 + 63 len 1]
                        mem[u + 64] = mem[_6028 + 95 len 1]
                        mem[u + 96] = mem[_6028 + 127 len 1]
                        mem[u + 128] = mem[_6028 + 159 len 1]
                        mem[u + 160] = mem[_6028 + 160]
                        mem[u + 192] = mem[_6028 + 192]
                        mem[u + 224] = mem[_6028 + 224]
                        mem[u + 256] = mem[_6028 + 256]
                        idx = idx + 1
                        t = t + 32
                        u = u + 288
                        continue 
                    mem[_5228 + 32] = uint8(uint8(s) + 1)
                    return memory
                      from mem[64]
                       len _5228 + (288 * _5272) + -mem[64] + 96
                if Mask(80, 0, barn[_2966 << 240].field_16) > lastClaimTimestamp:
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 256] = 0
                    if t == -1:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(s) + 1
                        t = t + 1
                        continue 
                    _4623 = mem[64]
                    mem[mem[64]] = 64
                    _4671 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 96
                    while idx < _4671:
                        _6023 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_6023 + 63 len 1]
                        mem[u + 64] = mem[_6023 + 95 len 1]
                        mem[u + 96] = mem[_6023 + 127 len 1]
                        mem[u + 128] = mem[_6023 + 159 len 1]
                        mem[u + 160] = mem[_6023 + 160]
                        mem[u + 192] = mem[_6023 + 192]
                        mem[u + 224] = mem[_6023 + 224]
                        mem[u + 256] = mem[_6023 + 256]
                        idx = idx + 1
                        t = t + 32
                        u = u + 288
                        continue 
                    mem[_4623 + 32] = uint8(uint8(s) + 1)
                    return memory
                      from mem[64]
                       len _4623 + (288 * _4671) + -mem[64] + 96
                if mem[_3399 + 127 len 1] < 1:
                    revert with 0, 17
                if uint8(mem[_3399 + 127 len 1] - 1) >= 8:
                    revert with 0, 50
                if lastClaimTimestamp < Mask(80, 0, barn[_2966 << 240].field_16):
                    revert with 0, 17
                if lastClaimTimestamp - Mask(80, 0, barn[_2966 << 240].field_16) and sub_637d0d7b[uint8(mem[_3399 + 127 len 1] - 1)] > -1 / lastClaimTimestamp - Mask(80, 0, barn[_2966 << 240].field_16):
                    revert with 0, 17
                if (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_3399 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_2966 << 240].field_16) * sub_637d0d7b[uint8(mem[_3399 + 127 len 1] - 1)]) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_3399 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_2966 << 240].field_16) * sub_637d0d7b[uint8(mem[_3399 + 127 len 1] - 1)]) / 24 * 3600:
                    revert with 0, 17
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 224] = 80 * (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_3399 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_2966 << 240].field_16) * sub_637d0d7b[uint8(mem[_3399 + 127 len 1] - 1)]) / 24 * 3600 / 100
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 256] = 0
                if t == -1:
                    revert with 0, 17
                if uint8(s) == 255:
                    revert with 0, 17
                if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(s) + 1
                    t = t + 1
                    continue 
                _5271 = mem[64]
                mem[mem[64]] = 64
                _5308 = mem[96]
                mem[mem[64] + 64] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 96
                while idx < _5308:
                    _6018 = mem[t]
                    mem[u] = mem[mem[t]]
                    mem[u + 32] = mem[_6018 + 63 len 1]
                    mem[u + 64] = mem[_6018 + 95 len 1]
                    mem[u + 96] = mem[_6018 + 127 len 1]
                    mem[u + 128] = mem[_6018 + 159 len 1]
                    mem[u + 160] = mem[_6018 + 160]
                    mem[u + 192] = mem[_6018 + 192]
                    mem[u + 224] = mem[_6018 + 224]
                    mem[u + 256] = mem[_6018 + 256]
                    idx = idx + 1
                    t = t + 32
                    u = u + 288
                    continue 
                mem[_5271 + 32] = uint8(uint8(s) + 1)
                return memory
                  from mem[64]
                   len _5271 + (288 * _5308) + -mem[64] + 96
            _2972 = mem[64]
            mem[mem[64]] = 64
            _2978 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            t = 128
            u = mem[64] + 96
            while idx < _2978:
                _5968 = mem[t]
                mem[u] = mem[mem[t]]
                mem[u + 32] = mem[_5968 + 63 len 1]
                mem[u + 64] = mem[_5968 + 95 len 1]
                mem[u + 96] = mem[_5968 + 127 len 1]
                mem[u + 128] = mem[_5968 + 159 len 1]
                mem[u + 160] = mem[_5968 + 160]
                mem[u + 192] = mem[_5968 + 192]
                mem[u + 224] = mem[_5968 + 224]
                mem[u + 256] = mem[_5968 + 256]
                idx = idx + 1
                t = t + 32
                u = u + 288
                continue 
            mem[_2972 + 32] = uint8(s)
            return memory
              from mem[64]
               len _2972 + (288 * _2978) + -mem[64] + 96
        mem[0] = sha3(address(arg1), 179)
        mem[(32 * uint8(arg3)) + 160] = uint16(balanceOf[address(arg1)].field_0)
        idx = (32 * uint8(arg3)) + 160
        s = 0
        while (32 * uint8(arg3)) + (32 * uint256(balanceOf[address(arg1)].field_0)) + 128 > idx:
            mem[idx + 32] = uint16(balanceOf[address(arg1)].field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
            idx = idx + 32
            s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
            continue 
        if sub_7d4cd2b5Address != 0xfb4c2c55180cf3a6b6acacb825cbcc9085858edc:
            idx = 0
            s = 0
            t = arg2
            while uint8(idx) < arg3:
                if t >= mem[(32 * uint8(arg3)) + 128]:
                    revert with 0, 50
                _6045 = mem[(32 * t) + (32 * uint8(arg3)) + 160]
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128]] = mem[(32 * t) + (32 * uint8(arg3)) + 190 len 2]
                require ext_code.size(minerAddress)
                staticcall minerAddress.getTokenTraits(uint256 arg1) with:
                        gas gas_remaining wei
                       args (_6045 << 240)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6250 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _6257 = mem[64]
                if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 128
                require mem[_6250] == mem[_6250 + 31 len 1]
                mem[_6257] = mem[_6250]
                require mem[_6250 + 32] == mem[_6250 + 63 len 1]
                mem[_6257 + 32] = mem[_6250 + 32]
                require mem[_6250 + 64] == mem[_6250 + 95 len 1]
                mem[_6257 + 64] = mem[_6250 + 64]
                require mem[_6250 + 96] == mem[_6250 + 127 len 1]
                mem[_6257 + 96] = mem[_6250 + 96]
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 32] = mem[_6257 + 31 len 1]
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 64] = mem[_6257 + 63 len 1]
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 96] = mem[_6257 + 95 len 1]
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 128] = mem[_6257 + 127 len 1]
                if mem[_6257 + 63 len 1]:
                    require ext_code.size(minerAddress)
                    staticcall minerAddress.getTokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args (_6045 << 240)
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6441 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _6447 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 128
                    require mem[_6441] == mem[_6441 + 31 len 1]
                    mem[_6447] = mem[_6441]
                    require mem[_6441 + 32] == mem[_6441 + 63 len 1]
                    mem[_6447 + 32] = mem[_6441 + 32]
                    require mem[_6441 + 64] == mem[_6441 + 95 len 1]
                    mem[_6447 + 64] = mem[_6441 + 64]
                    require mem[_6441 + 96] == mem[_6441 + 127 len 1]
                    mem[_6447 + 96] = mem[_6441 + 96]
                    if 0 == mem[_6447 + 127 len 1]:
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                        mem[mem[64] + 4] = uint16(_6045)
                        require ext_code.size(sub_7d4cd2b5Address)
                        staticcall sub_7d4cd2b5Address.0x224e5e22 with:
                                gas gas_remaining wei
                               args (_6045 << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6660 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 256] = mem[_6660]
                        if t == -1:
                            revert with 0, 17
                        if uint8(s) == 255:
                            revert with 0, 17
                        if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = uint8(s) + 1
                            t = t + 1
                            continue 
                        _6885 = mem[64]
                        mem[mem[64]] = 64
                        _6904 = mem[96]
                        mem[mem[64] + 64] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 96
                        while idx < _6904:
                            _8454 = mem[t]
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_8454 + 63 len 1]
                            mem[u + 64] = mem[_8454 + 95 len 1]
                            mem[u + 96] = mem[_8454 + 127 len 1]
                            mem[u + 128] = mem[_8454 + 159 len 1]
                            mem[u + 160] = mem[_8454 + 160]
                            mem[u + 192] = mem[_8454 + 192]
                            mem[u + 224] = mem[_8454 + 224]
                            mem[u + 256] = mem[_8454 + 256]
                            idx = idx + 1
                            t = t + 32
                            u = u + 288
                            continue 
                        mem[_6885 + 32] = uint8(uint8(s) + 1)
                        return memory
                          from mem[64]
                           len _6885 + (288 * _6904) + -mem[64] + 96
                    if mem[_6447 + 63 len 1] != 0:
                        mem[0] = mem[_6447 + 127 len 1]
                        mem[32] = 154
                        if packIndices[_6045 << 240] >= uint256(pack[mem[0]].field_0):
                            revert with 0, 50
                        mem[0] = sha3(mem[0], 154)
                        _6599 = sha3(mem[0])
                        _6600 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_6600] = uint16(stor[sha3(mem[0]) + stor155[_6045 << 240]].field_0)
                        mem[_6600 + 32] = Mask(80, 0, stor[_6599 + stor155[_6045 << 240]].field_16)
                        mem[_6600 + 64] = address(stor[_6599 + stor155[_6045 << 240]].field_96)
                        if not address(stor[_6599 + stor155[_6045 << 240]].field_96):
                            if uint8(idx) >= mem[96]:
                                revert with 0, 50
                            mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                            mem[mem[64] + 4] = uint16(_6045)
                            require ext_code.size(sub_7d4cd2b5Address)
                            staticcall sub_7d4cd2b5Address.0x224e5e22 with:
                                    gas gas_remaining wei
                                   args (_6045 << 240)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6680 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if uint8(idx) >= mem[96]:
                                revert with 0, 50
                            mem[mem[(32 * uint8(idx)) + 128] + 256] = mem[_6680]
                            if t == -1:
                                revert with 0, 17
                            if uint8(s) == 255:
                                revert with 0, 17
                            if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                                if uint8(idx) == 255:
                                    revert with 0, 17
                                idx = uint8(idx) + 1
                                s = uint8(s) + 1
                                t = t + 1
                                continue 
                            _6947 = mem[64]
                            mem[mem[64]] = 64
                            _6975 = mem[96]
                            mem[mem[64] + 64] = mem[96]
                            t = 0
                            u = 128
                            v = mem[64] + 96
                            while t < _6975:
                                _8429 = mem[u]
                                mem[v] = mem[mem[u]]
                                mem[v + 32] = mem[_8429 + 63 len 1]
                                mem[v + 64] = mem[_8429 + 95 len 1]
                                mem[v + 96] = mem[_8429 + 127 len 1]
                                mem[v + 128] = mem[_8429 + 159 len 1]
                                mem[v + 160] = mem[_8429 + 160]
                                mem[v + 192] = mem[_8429 + 192]
                                mem[v + 224] = mem[_8429 + 224]
                                mem[v + 256] = mem[_8429 + 256]
                                t = t + 1
                                u = u + 32
                                v = v + 288
                                continue 
                            mem[_6947 + 32] = uint8(uint8(_6947 + (288 * _6975) + 96) + 1)
                            return memory
                              from mem[64]
                               len _6947 + (288 * _6975) + -mem[64] + 96
                        if mem[_6447 + 127 len 1] < 1:
                            revert with 0, 17
                        if uint8(mem[_6447 + 127 len 1] - 1) >= 5:
                            revert with 0, 50
                        if uint256(sub_bc633bf2) < Mask(80, 0, stor[_6599 + stor155[_6045 << 240]].field_16):
                            revert with 0, 17
                        if sub_3f30e8d8[uint8(mem[_6447 + 127 len 1] - 1)] and uint256(sub_bc633bf2) - Mask(80, 0, stor[_6599 + stor155[_6045 << 240]].field_16) > -1 / sub_3f30e8d8[uint8(mem[_6447 + 127 len 1] - 1)]:
                            revert with 0, 17
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 224] = (uint256(sub_bc633bf2) * sub_3f30e8d8[uint8(mem[_6447 + 127 len 1] - 1)]) - (Mask(80, 0, stor[_6599 + stor155[_6045 << 240]].field_16) * sub_3f30e8d8[uint8(mem[_6447 + 127 len 1] - 1)])
                        mem[mem[64] + 4] = uint16(_6045)
                        require ext_code.size(sub_7d4cd2b5Address)
                        staticcall sub_7d4cd2b5Address.0x224e5e22 with:
                                gas gas_remaining wei
                               args (_6045 << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6884 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 256] = mem[_6884]
                        if t == -1:
                            revert with 0, 17
                        if uint8(s) == 255:
                            revert with 0, 17
                        if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = uint8(s) + 1
                            t = t + 1
                            continue 
                        _7266 = mem[64]
                        mem[mem[64]] = 64
                        _7299 = mem[96]
                        mem[mem[64] + 64] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 96
                        while idx < _7299:
                            _8424 = mem[t]
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_8424 + 63 len 1]
                            mem[u + 64] = mem[_8424 + 95 len 1]
                            mem[u + 96] = mem[_8424 + 127 len 1]
                            mem[u + 128] = mem[_8424 + 159 len 1]
                            mem[u + 160] = mem[_8424 + 160]
                            mem[u + 192] = mem[_8424 + 192]
                            mem[u + 224] = mem[_8424 + 224]
                            mem[u + 256] = mem[_8424 + 256]
                            idx = idx + 1
                            t = t + 32
                            u = u + 288
                            continue 
                        mem[_7266 + 32] = uint8(uint8(s) + 1)
                        return memory
                          from mem[64]
                           len _7266 + (288 * _7299) + -mem[64] + 96
                    mem[0] = uint16(_6045)
                    mem[32] = 153
                    _6585 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_6585] = uint16(barn[_6045 << 240].field_0)
                    mem[_6585 + 32] = Mask(80, 0, barn[_6045 << 240].field_16)
                    mem[_6585 + 64] = address(barn[_6045 << 240].field_96)
                    if not address(barn[_6045 << 240].field_96):
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                        mem[mem[64] + 4] = uint16(_6045)
                        require ext_code.size(sub_7d4cd2b5Address)
                        staticcall sub_7d4cd2b5Address.0x224e5e22 with:
                                gas gas_remaining wei
                               args (_6045 << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6672 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 256] = mem[_6672]
                        if t == -1:
                            revert with 0, 17
                        if uint8(s) == 255:
                            revert with 0, 17
                        if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = uint8(s) + 1
                            t = t + 1
                            continue 
                        _6923 = mem[64]
                        mem[mem[64]] = 64
                        _6949 = mem[96]
                        mem[mem[64] + 64] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 96
                        while idx < _6949:
                            _8449 = mem[t]
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_8449 + 63 len 1]
                            mem[u + 64] = mem[_8449 + 95 len 1]
                            mem[u + 96] = mem[_8449 + 127 len 1]
                            mem[u + 128] = mem[_8449 + 159 len 1]
                            mem[u + 160] = mem[_8449 + 160]
                            mem[u + 192] = mem[_8449 + 192]
                            mem[u + 224] = mem[_8449 + 224]
                            mem[u + 256] = mem[_8449 + 256]
                            idx = idx + 1
                            t = t + 32
                            u = u + 288
                            continue 
                        mem[_6923 + 32] = uint8(uint8(s) + 1)
                        return memory
                          from mem[64]
                           len _6923 + (288 * _6949) + -mem[64] + 96
                    if sub_2d8c2ef1 < 400000000 * 10^18:
                        if mem[_6447 + 127 len 1] < 1:
                            revert with 0, 17
                        if uint8(mem[_6447 + 127 len 1] - 1) >= 8:
                            revert with 0, 50
                        if block.timestamp < Mask(80, 0, barn[_6045 << 240].field_16):
                            revert with 0, 17
                        if block.timestamp - Mask(80, 0, barn[_6045 << 240].field_16) and sub_637d0d7b[uint8(mem[_6447 + 127 len 1] - 1)] > -1 / block.timestamp - Mask(80, 0, barn[_6045 << 240].field_16):
                            revert with 0, 17
                        if (block.timestamp * sub_637d0d7b[uint8(mem[_6447 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_6045 << 240].field_16) * sub_637d0d7b[uint8(mem[_6447 + 127 len 1] - 1)]) / 24 * 3600 and 80 > -1 / (block.timestamp * sub_637d0d7b[uint8(mem[_6447 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_6045 << 240].field_16) * sub_637d0d7b[uint8(mem[_6447 + 127 len 1] - 1)]) / 24 * 3600:
                            revert with 0, 17
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 224] = 80 * (block.timestamp * sub_637d0d7b[uint8(mem[_6447 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_6045 << 240].field_16) * sub_637d0d7b[uint8(mem[_6447 + 127 len 1] - 1)]) / 24 * 3600 / 100
                        mem[mem[64] + 4] = uint16(_6045)
                        require ext_code.size(sub_7d4cd2b5Address)
                        staticcall sub_7d4cd2b5Address.0x224e5e22 with:
                                gas gas_remaining wei
                               args (_6045 << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7267 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 256] = mem[_7267]
                        if t == -1:
                            revert with 0, 17
                        if uint8(s) == 255:
                            revert with 0, 17
                        if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = uint8(s) + 1
                            t = t + 1
                            continue 
                        _7749 = mem[64]
                        mem[mem[64]] = 64
                        _7790 = mem[96]
                        mem[mem[64] + 64] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 96
                        while idx < _7790:
                            _8444 = mem[t]
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_8444 + 63 len 1]
                            mem[u + 64] = mem[_8444 + 95 len 1]
                            mem[u + 96] = mem[_8444 + 127 len 1]
                            mem[u + 128] = mem[_8444 + 159 len 1]
                            mem[u + 160] = mem[_8444 + 160]
                            mem[u + 192] = mem[_8444 + 192]
                            mem[u + 224] = mem[_8444 + 224]
                            mem[u + 256] = mem[_8444 + 256]
                            idx = idx + 1
                            t = t + 32
                            u = u + 288
                            continue 
                        mem[_7749 + 32] = uint8(uint8(s) + 1)
                        return memory
                          from mem[64]
                           len _7749 + (288 * _7790) + -mem[64] + 96
                    if Mask(80, 0, barn[_6045 << 240].field_16) > lastClaimTimestamp:
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                        mem[mem[64] + 4] = uint16(_6045)
                        require ext_code.size(sub_7d4cd2b5Address)
                        staticcall sub_7d4cd2b5Address.0x224e5e22 with:
                                gas gas_remaining wei
                               args (_6045 << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6903 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 256] = mem[_6903]
                        if t == -1:
                            revert with 0, 17
                        if uint8(s) == 255:
                            revert with 0, 17
                        if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = uint8(s) + 1
                            t = t + 1
                            continue 
                        _7301 = mem[64]
                        mem[mem[64]] = 64
                        _7330 = mem[96]
                        mem[mem[64] + 64] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 96
                        while idx < _7330:
                            _8439 = mem[t]
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_8439 + 63 len 1]
                            mem[u + 64] = mem[_8439 + 95 len 1]
                            mem[u + 96] = mem[_8439 + 127 len 1]
                            mem[u + 128] = mem[_8439 + 159 len 1]
                            mem[u + 160] = mem[_8439 + 160]
                            mem[u + 192] = mem[_8439 + 192]
                            mem[u + 224] = mem[_8439 + 224]
                            mem[u + 256] = mem[_8439 + 256]
                            idx = idx + 1
                            t = t + 32
                            u = u + 288
                            continue 
                        mem[_7301 + 32] = uint8(uint8(s) + 1)
                        return memory
                          from mem[64]
                           len _7301 + (288 * _7330) + -mem[64] + 96
                    if mem[_6447 + 127 len 1] < 1:
                        revert with 0, 17
                    if uint8(mem[_6447 + 127 len 1] - 1) >= 8:
                        revert with 0, 50
                    if lastClaimTimestamp < Mask(80, 0, barn[_6045 << 240].field_16):
                        revert with 0, 17
                    if lastClaimTimestamp - Mask(80, 0, barn[_6045 << 240].field_16) and sub_637d0d7b[uint8(mem[_6447 + 127 len 1] - 1)] > -1 / lastClaimTimestamp - Mask(80, 0, barn[_6045 << 240].field_16):
                        revert with 0, 17
                    if (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_6447 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_6045 << 240].field_16) * sub_637d0d7b[uint8(mem[_6447 + 127 len 1] - 1)]) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_6447 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_6045 << 240].field_16) * sub_637d0d7b[uint8(mem[_6447 + 127 len 1] - 1)]) / 24 * 3600:
                        revert with 0, 17
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 224] = 80 * (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_6447 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_6045 << 240].field_16) * sub_637d0d7b[uint8(mem[_6447 + 127 len 1] - 1)]) / 24 * 3600 / 100
                    mem[mem[64] + 4] = uint16(_6045)
                    require ext_code.size(sub_7d4cd2b5Address)
                    staticcall sub_7d4cd2b5Address.0x224e5e22 with:
                            gas gas_remaining wei
                           args (_6045 << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7300 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 256] = mem[_7300]
                    if t == -1:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(s) + 1
                        t = t + 1
                        continue 
                    _7789 = mem[64]
                    mem[mem[64]] = 64
                    _7823 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 96
                    while idx < _7823:
                        _8434 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_8434 + 63 len 1]
                        mem[u + 64] = mem[_8434 + 95 len 1]
                        mem[u + 96] = mem[_8434 + 127 len 1]
                        mem[u + 128] = mem[_8434 + 159 len 1]
                        mem[u + 160] = mem[_8434 + 160]
                        mem[u + 192] = mem[_8434 + 192]
                        mem[u + 224] = mem[_8434 + 224]
                        mem[u + 256] = mem[_8434 + 256]
                        idx = idx + 1
                        t = t + 32
                        u = u + 288
                        continue 
                    mem[_7789 + 32] = uint8(uint8(s) + 1)
                    return memory
                      from mem[64]
                       len _7789 + (288 * _7823) + -mem[64] + 96
                mem[0] = uint16(_6045)
                mem[32] = 153
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 160] = Mask(80, 0, barn[_6045 << 240].field_16)
                mem[mem[64] + 4] = uint16(_6045)
                require ext_code.size(shieldAddress)
                staticcall shieldAddress.0x478ba63b with:
                        gas gas_remaining wei
                       args (_6045 << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6442 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 192] = mem[_6442]
                require ext_code.size(minerAddress)
                staticcall minerAddress.getTokenTraits(uint256 arg1) with:
                        gas gas_remaining wei
                       args (_6045 << 240)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6527 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _6544 = mem[64]
                if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 128
                require mem[_6527] == mem[_6527 + 31 len 1]
                mem[_6544] = mem[_6527]
                require mem[_6527 + 32] == mem[_6527 + 63 len 1]
                mem[_6544 + 32] = mem[_6527 + 32]
                require mem[_6527 + 64] == mem[_6527 + 95 len 1]
                mem[_6544 + 64] = mem[_6527 + 64]
                require mem[_6527 + 96] == mem[_6527 + 127 len 1]
                mem[_6544 + 96] = mem[_6527 + 96]
                if 0 == mem[_6544 + 127 len 1]:
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                    mem[mem[64] + 4] = uint16(_6045)
                    require ext_code.size(sub_7d4cd2b5Address)
                    staticcall sub_7d4cd2b5Address.0x224e5e22 with:
                            gas gas_remaining wei
                           args (_6045 << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6819 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 256] = mem[_6819]
                    if t == -1:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(s) + 1
                        t = t + 1
                        continue 
                    _7170 = mem[64]
                    mem[mem[64]] = 64
                    _7201 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 96
                    while idx < _7201:
                        _8489 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_8489 + 63 len 1]
                        mem[u + 64] = mem[_8489 + 95 len 1]
                        mem[u + 96] = mem[_8489 + 127 len 1]
                        mem[u + 128] = mem[_8489 + 159 len 1]
                        mem[u + 160] = mem[_8489 + 160]
                        mem[u + 192] = mem[_8489 + 192]
                        mem[u + 224] = mem[_8489 + 224]
                        mem[u + 256] = mem[_8489 + 256]
                        idx = idx + 1
                        t = t + 32
                        u = u + 288
                        continue 
                    mem[_7170 + 32] = uint8(uint8(s) + 1)
                    return memory
                      from mem[64]
                       len _7170 + (288 * _7201) + -mem[64] + 96
                if mem[_6544 + 63 len 1] != 0:
                    mem[0] = mem[_6544 + 127 len 1]
                    mem[32] = 154
                    if packIndices[_6045 << 240] >= uint256(pack[mem[0]].field_0):
                        revert with 0, 50
                    mem[0] = sha3(mem[0], 154)
                    _6700 = sha3(mem[0])
                    _6701 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_6701] = uint16(stor[sha3(mem[0]) + stor155[_6045 << 240]].field_0)
                    mem[_6701 + 32] = Mask(80, 0, stor[_6700 + stor155[_6045 << 240]].field_16)
                    mem[_6701 + 64] = address(stor[_6700 + stor155[_6045 << 240]].field_96)
                    if not address(stor[_6700 + stor155[_6045 << 240]].field_96):
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                        mem[mem[64] + 4] = uint16(_6045)
                        require ext_code.size(sub_7d4cd2b5Address)
                        staticcall sub_7d4cd2b5Address.0x224e5e22 with:
                                gas gas_remaining wei
                               args (_6045 << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6886 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 256] = mem[_6886]
                        if t == -1:
                            revert with 0, 17
                        if uint8(s) == 255:
                            revert with 0, 17
                        if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = uint8(s) + 1
                            t = t + 1
                            continue 
                        _7269 = mem[64]
                        mem[mem[64]] = 64
                        _7303 = mem[96]
                        mem[mem[64] + 64] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 96
                        while idx < _7303:
                            _8464 = mem[t]
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_8464 + 63 len 1]
                            mem[u + 64] = mem[_8464 + 95 len 1]
                            mem[u + 96] = mem[_8464 + 127 len 1]
                            mem[u + 128] = mem[_8464 + 159 len 1]
                            mem[u + 160] = mem[_8464 + 160]
                            mem[u + 192] = mem[_8464 + 192]
                            mem[u + 224] = mem[_8464 + 224]
                            mem[u + 256] = mem[_8464 + 256]
                            idx = idx + 1
                            t = t + 32
                            u = u + 288
                            continue 
                        mem[_7269 + 32] = uint8(uint8(s) + 1)
                        return memory
                          from mem[64]
                           len _7269 + (288 * _7303) + -mem[64] + 96
                    if mem[_6544 + 127 len 1] < 1:
                        revert with 0, 17
                    if uint8(mem[_6544 + 127 len 1] - 1) >= 5:
                        revert with 0, 50
                    if uint256(sub_bc633bf2) < Mask(80, 0, stor[_6700 + stor155[_6045 << 240]].field_16):
                        revert with 0, 17
                    if sub_3f30e8d8[uint8(mem[_6544 + 127 len 1] - 1)] and uint256(sub_bc633bf2) - Mask(80, 0, stor[_6700 + stor155[_6045 << 240]].field_16) > -1 / sub_3f30e8d8[uint8(mem[_6544 + 127 len 1] - 1)]:
                        revert with 0, 17
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 224] = (uint256(sub_bc633bf2) * sub_3f30e8d8[uint8(mem[_6544 + 127 len 1] - 1)]) - (Mask(80, 0, stor[_6700 + stor155[_6045 << 240]].field_16) * sub_3f30e8d8[uint8(mem[_6544 + 127 len 1] - 1)])
                    mem[mem[64] + 4] = uint16(_6045)
                    require ext_code.size(sub_7d4cd2b5Address)
                    staticcall sub_7d4cd2b5Address.0x224e5e22 with:
                            gas gas_remaining wei
                           args (_6045 << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7169 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 256] = mem[_7169]
                    if t == -1:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(s) + 1
                        t = t + 1
                        continue 
                    _7632 = mem[64]
                    mem[mem[64]] = 64
                    _7668 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 96
                    while idx < _7668:
                        _8459 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_8459 + 63 len 1]
                        mem[u + 64] = mem[_8459 + 95 len 1]
                        mem[u + 96] = mem[_8459 + 127 len 1]
                        mem[u + 128] = mem[_8459 + 159 len 1]
                        mem[u + 160] = mem[_8459 + 160]
                        mem[u + 192] = mem[_8459 + 192]
                        mem[u + 224] = mem[_8459 + 224]
                        mem[u + 256] = mem[_8459 + 256]
                        idx = idx + 1
                        t = t + 32
                        u = u + 288
                        continue 
                    mem[_7632 + 32] = uint8(uint8(s) + 1)
                    return memory
                      from mem[64]
                       len _7632 + (288 * _7668) + -mem[64] + 96
                mem[0] = uint16(_6045)
                mem[32] = 153
                _6686 = mem[64]
                mem[64] = mem[64] + 96
                mem[_6686] = uint16(barn[_6045 << 240].field_0)
                mem[_6686 + 32] = Mask(80, 0, barn[_6045 << 240].field_16)
                mem[_6686 + 64] = address(barn[_6045 << 240].field_96)
                if not address(barn[_6045 << 240].field_96):
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                    mem[mem[64] + 4] = uint16(_6045)
                    require ext_code.size(sub_7d4cd2b5Address)
                    staticcall sub_7d4cd2b5Address.0x224e5e22 with:
                            gas gas_remaining wei
                           args (_6045 << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6862 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 256] = mem[_6862]
                    if t == -1:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(s) + 1
                        t = t + 1
                        continue 
                    _7236 = mem[64]
                    mem[mem[64]] = 64
                    _7271 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 96
                    while idx < _7271:
                        _8484 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_8484 + 63 len 1]
                        mem[u + 64] = mem[_8484 + 95 len 1]
                        mem[u + 96] = mem[_8484 + 127 len 1]
                        mem[u + 128] = mem[_8484 + 159 len 1]
                        mem[u + 160] = mem[_8484 + 160]
                        mem[u + 192] = mem[_8484 + 192]
                        mem[u + 224] = mem[_8484 + 224]
                        mem[u + 256] = mem[_8484 + 256]
                        idx = idx + 1
                        t = t + 32
                        u = u + 288
                        continue 
                    mem[_7236 + 32] = uint8(uint8(s) + 1)
                    return memory
                      from mem[64]
                       len _7236 + (288 * _7271) + -mem[64] + 96
                if sub_2d8c2ef1 < 400000000 * 10^18:
                    if mem[_6544 + 127 len 1] < 1:
                        revert with 0, 17
                    if uint8(mem[_6544 + 127 len 1] - 1) >= 8:
                        revert with 0, 50
                    if block.timestamp < Mask(80, 0, barn[_6045 << 240].field_16):
                        revert with 0, 17
                    if block.timestamp - Mask(80, 0, barn[_6045 << 240].field_16) and sub_637d0d7b[uint8(mem[_6544 + 127 len 1] - 1)] > -1 / block.timestamp - Mask(80, 0, barn[_6045 << 240].field_16):
                        revert with 0, 17
                    if (block.timestamp * sub_637d0d7b[uint8(mem[_6544 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_6045 << 240].field_16) * sub_637d0d7b[uint8(mem[_6544 + 127 len 1] - 1)]) / 24 * 3600 and 80 > -1 / (block.timestamp * sub_637d0d7b[uint8(mem[_6544 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_6045 << 240].field_16) * sub_637d0d7b[uint8(mem[_6544 + 127 len 1] - 1)]) / 24 * 3600:
                        revert with 0, 17
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 224] = 80 * (block.timestamp * sub_637d0d7b[uint8(mem[_6544 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_6045 << 240].field_16) * sub_637d0d7b[uint8(mem[_6544 + 127 len 1] - 1)]) / 24 * 3600 / 100
                    mem[mem[64] + 4] = uint16(_6045)
                    require ext_code.size(sub_7d4cd2b5Address)
                    staticcall sub_7d4cd2b5Address.0x224e5e22 with:
                            gas gas_remaining wei
                           args (_6045 << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7633 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 256] = mem[_7633]
                    if t == -1:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(s) + 1
                        t = t + 1
                        continue 
                    _8083 = mem[64]
                    mem[mem[64]] = 64
                    _8114 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 96
                    while idx < _8114:
                        _8479 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_8479 + 63 len 1]
                        mem[u + 64] = mem[_8479 + 95 len 1]
                        mem[u + 96] = mem[_8479 + 127 len 1]
                        mem[u + 128] = mem[_8479 + 159 len 1]
                        mem[u + 160] = mem[_8479 + 160]
                        mem[u + 192] = mem[_8479 + 192]
                        mem[u + 224] = mem[_8479 + 224]
                        mem[u + 256] = mem[_8479 + 256]
                        idx = idx + 1
                        t = t + 32
                        u = u + 288
                        continue 
                    mem[_8083 + 32] = uint8(uint8(s) + 1)
                    return memory
                      from mem[64]
                       len _8083 + (288 * _8114) + -mem[64] + 96
                if Mask(80, 0, barn[_6045 << 240].field_16) > lastClaimTimestamp:
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                    mem[mem[64] + 4] = uint16(_6045)
                    require ext_code.size(sub_7d4cd2b5Address)
                    staticcall sub_7d4cd2b5Address.0x224e5e22 with:
                            gas gas_remaining wei
                           args (_6045 << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7200 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 256] = mem[_7200]
                    if t == -1:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(s) + 1
                        t = t + 1
                        continue 
                    _7670 = mem[64]
                    mem[mem[64]] = 64
                    _7705 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 96
                    while idx < _7705:
                        _8474 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_8474 + 63 len 1]
                        mem[u + 64] = mem[_8474 + 95 len 1]
                        mem[u + 96] = mem[_8474 + 127 len 1]
                        mem[u + 128] = mem[_8474 + 159 len 1]
                        mem[u + 160] = mem[_8474 + 160]
                        mem[u + 192] = mem[_8474 + 192]
                        mem[u + 224] = mem[_8474 + 224]
                        mem[u + 256] = mem[_8474 + 256]
                        idx = idx + 1
                        t = t + 32
                        u = u + 288
                        continue 
                    mem[_7670 + 32] = uint8(uint8(s) + 1)
                    return memory
                      from mem[64]
                       len _7670 + (288 * _7705) + -mem[64] + 96
                if mem[_6544 + 127 len 1] < 1:
                    revert with 0, 17
                if uint8(mem[_6544 + 127 len 1] - 1) >= 8:
                    revert with 0, 50
                if lastClaimTimestamp < Mask(80, 0, barn[_6045 << 240].field_16):
                    revert with 0, 17
                if lastClaimTimestamp - Mask(80, 0, barn[_6045 << 240].field_16) and sub_637d0d7b[uint8(mem[_6544 + 127 len 1] - 1)] > -1 / lastClaimTimestamp - Mask(80, 0, barn[_6045 << 240].field_16):
                    revert with 0, 17
                if (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_6544 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_6045 << 240].field_16) * sub_637d0d7b[uint8(mem[_6544 + 127 len 1] - 1)]) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_6544 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_6045 << 240].field_16) * sub_637d0d7b[uint8(mem[_6544 + 127 len 1] - 1)]) / 24 * 3600:
                    revert with 0, 17
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 224] = 80 * (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_6544 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_6045 << 240].field_16) * sub_637d0d7b[uint8(mem[_6544 + 127 len 1] - 1)]) / 24 * 3600 / 100
                mem[mem[64] + 4] = uint16(_6045)
                require ext_code.size(sub_7d4cd2b5Address)
                staticcall sub_7d4cd2b5Address.0x224e5e22 with:
                        gas gas_remaining wei
                       args (_6045 << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7669 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 256] = mem[_7669]
                if t == -1:
                    revert with 0, 17
                if uint8(s) == 255:
                    revert with 0, 17
                if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(s) + 1
                    t = t + 1
                    continue 
                _8113 = mem[64]
                mem[mem[64]] = 64
                _8131 = mem[96]
                mem[mem[64] + 64] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 96
                while idx < _8131:
                    _8469 = mem[t]
                    mem[u] = mem[mem[t]]
                    mem[u + 32] = mem[_8469 + 63 len 1]
                    mem[u + 64] = mem[_8469 + 95 len 1]
                    mem[u + 96] = mem[_8469 + 127 len 1]
                    mem[u + 128] = mem[_8469 + 159 len 1]
                    mem[u + 160] = mem[_8469 + 160]
                    mem[u + 192] = mem[_8469 + 192]
                    mem[u + 224] = mem[_8469 + 224]
                    mem[u + 256] = mem[_8469 + 256]
                    idx = idx + 1
                    t = t + 32
                    u = u + 288
                    continue 
                mem[_8113 + 32] = uint8(uint8(s) + 1)
                return memory
                  from mem[64]
                   len _8113 + (288 * _8131) + -mem[64] + 96
            _6079 = mem[64]
            mem[mem[64]] = 64
            _6115 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            t = 128
            u = mem[64] + 96
            while idx < _6115:
                _8419 = mem[t]
                mem[u] = mem[mem[t]]
                mem[u + 32] = mem[_8419 + 63 len 1]
                mem[u + 64] = mem[_8419 + 95 len 1]
                mem[u + 96] = mem[_8419 + 127 len 1]
                mem[u + 128] = mem[_8419 + 159 len 1]
                mem[u + 160] = mem[_8419 + 160]
                mem[u + 192] = mem[_8419 + 192]
                mem[u + 224] = mem[_8419 + 224]
                mem[u + 256] = mem[_8419 + 256]
                idx = idx + 1
                t = t + 32
                u = u + 288
                continue 
            mem[_6079 + 32] = uint8(s)
            return memory
              from mem[64]
               len _6079 + (288 * _6115) + -mem[64] + 96
        idx = 0
        s = 0
        t = arg2
        while uint8(idx) < arg3:
            if t >= mem[(32 * uint8(arg3)) + 128]:
                revert with 0, 50
            _6047 = mem[(32 * t) + (32 * uint8(arg3)) + 160]
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128]] = mem[(32 * t) + (32 * uint8(arg3)) + 190 len 2]
            require ext_code.size(minerAddress)
            staticcall minerAddress.getTokenTraits(uint256 arg1) with:
                    gas gas_remaining wei
                   args (_6047 << 240)
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _6251 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _6259 = mem[64]
            if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 128
            require mem[_6251] == mem[_6251 + 31 len 1]
            mem[_6259] = mem[_6251]
            require mem[_6251 + 32] == mem[_6251 + 63 len 1]
            mem[_6259 + 32] = mem[_6251 + 32]
            require mem[_6251 + 64] == mem[_6251 + 95 len 1]
            mem[_6259 + 64] = mem[_6251 + 64]
            require mem[_6251 + 96] == mem[_6251 + 127 len 1]
            mem[_6259 + 96] = mem[_6251 + 96]
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128] + 32] = mem[_6259 + 31 len 1]
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128] + 64] = mem[_6259 + 63 len 1]
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128] + 96] = mem[_6259 + 95 len 1]
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128] + 128] = mem[_6259 + 127 len 1]
            if mem[_6259 + 63 len 1]:
                require ext_code.size(minerAddress)
                staticcall minerAddress.getTokenTraits(uint256 arg1) with:
                        gas gas_remaining wei
                       args (_6047 << 240)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6443 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _6449 = mem[64]
                if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 128
                require mem[_6443] == mem[_6443 + 31 len 1]
                mem[_6449] = mem[_6443]
                require mem[_6443 + 32] == mem[_6443 + 63 len 1]
                mem[_6449 + 32] = mem[_6443 + 32]
                require mem[_6443 + 64] == mem[_6443 + 95 len 1]
                mem[_6449 + 64] = mem[_6443 + 64]
                require mem[_6443 + 96] == mem[_6443 + 127 len 1]
                mem[_6449 + 96] = mem[_6443 + 96]
                if 0 == mem[_6449 + 127 len 1]:
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 256] = 0
                    if t == -1:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(s) + 1
                        t = t + 1
                        continue 
                    _6752 = mem[64]
                    mem[mem[64]] = 64
                    _6773 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 96
                    while idx < _6773:
                        _8529 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_8529 + 63 len 1]
                        mem[u + 64] = mem[_8529 + 95 len 1]
                        mem[u + 96] = mem[_8529 + 127 len 1]
                        mem[u + 128] = mem[_8529 + 159 len 1]
                        mem[u + 160] = mem[_8529 + 160]
                        mem[u + 192] = mem[_8529 + 192]
                        mem[u + 224] = mem[_8529 + 224]
                        mem[u + 256] = mem[_8529 + 256]
                        idx = idx + 1
                        t = t + 32
                        u = u + 288
                        continue 
                    mem[_6752 + 32] = uint8(uint8(s) + 1)
                    return memory
                      from mem[64]
                       len _6752 + (288 * _6773) + -mem[64] + 96
                if mem[_6449 + 63 len 1] != 0:
                    mem[0] = mem[_6449 + 127 len 1]
                    mem[32] = 154
                    if packIndices[_6047 << 240] >= uint256(pack[mem[0]].field_0):
                        revert with 0, 50
                    mem[0] = sha3(mem[0], 154)
                    _6603 = sha3(mem[0])
                    _6604 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_6604] = uint16(stor[sha3(mem[0]) + stor155[_6047 << 240]].field_0)
                    mem[_6604 + 32] = Mask(80, 0, stor[_6603 + stor155[_6047 << 240]].field_16)
                    mem[_6604 + 64] = address(stor[_6603 + stor155[_6047 << 240]].field_96)
                    if not address(stor[_6603 + stor155[_6047 << 240]].field_96):
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 256] = 0
                        if t == -1:
                            revert with 0, 17
                        if uint8(s) == 255:
                            revert with 0, 17
                        if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = uint8(s) + 1
                            t = t + 1
                            continue 
                        _6821 = mem[64]
                        mem[mem[64]] = 64
                        _6847 = mem[96]
                        mem[mem[64] + 64] = mem[96]
                        t = 0
                        u = 128
                        v = mem[64] + 96
                        while t < _6847:
                            _8504 = mem[u]
                            mem[v] = mem[mem[u]]
                            mem[v + 32] = mem[_8504 + 63 len 1]
                            mem[v + 64] = mem[_8504 + 95 len 1]
                            mem[v + 96] = mem[_8504 + 127 len 1]
                            mem[v + 128] = mem[_8504 + 159 len 1]
                            mem[v + 160] = mem[_8504 + 160]
                            mem[v + 192] = mem[_8504 + 192]
                            mem[v + 224] = mem[_8504 + 224]
                            mem[v + 256] = mem[_8504 + 256]
                            t = t + 1
                            u = u + 32
                            v = v + 288
                            continue 
                        mem[_6821 + 32] = uint8(uint8(_6821 + (288 * _6847) + 96) + 1)
                        return memory
                          from mem[64]
                           len _6821 + (288 * _6847) + -mem[64] + 96
                    if mem[_6449 + 127 len 1] < 1:
                        revert with 0, 17
                    if uint8(mem[_6449 + 127 len 1] - 1) >= 5:
                        revert with 0, 50
                    if uint256(sub_bc633bf2) < Mask(80, 0, stor[_6603 + stor155[_6047 << 240]].field_16):
                        revert with 0, 17
                    if sub_3f30e8d8[uint8(mem[_6449 + 127 len 1] - 1)] and uint256(sub_bc633bf2) - Mask(80, 0, stor[_6603 + stor155[_6047 << 240]].field_16) > -1 / sub_3f30e8d8[uint8(mem[_6449 + 127 len 1] - 1)]:
                        revert with 0, 17
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 224] = (uint256(sub_bc633bf2) * sub_3f30e8d8[uint8(mem[_6449 + 127 len 1] - 1)]) - (Mask(80, 0, stor[_6603 + stor155[_6047 << 240]].field_16) * sub_3f30e8d8[uint8(mem[_6449 + 127 len 1] - 1)])
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 256] = 0
                    if t == -1:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(s) + 1
                        t = t + 1
                        continue 
                    _7064 = mem[64]
                    mem[mem[64]] = 64
                    _7099 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 96
                    while idx < _7099:
                        _8499 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_8499 + 63 len 1]
                        mem[u + 64] = mem[_8499 + 95 len 1]
                        mem[u + 96] = mem[_8499 + 127 len 1]
                        mem[u + 128] = mem[_8499 + 159 len 1]
                        mem[u + 160] = mem[_8499 + 160]
                        mem[u + 192] = mem[_8499 + 192]
                        mem[u + 224] = mem[_8499 + 224]
                        mem[u + 256] = mem[_8499 + 256]
                        idx = idx + 1
                        t = t + 32
                        u = u + 288
                        continue 
                    mem[_7064 + 32] = uint8(uint8(s) + 1)
                    return memory
                      from mem[64]
                       len _7064 + (288 * _7099) + -mem[64] + 96
                mem[0] = uint16(_6047)
                mem[32] = 153
                _6590 = mem[64]
                mem[64] = mem[64] + 96
                mem[_6590] = uint16(barn[_6047 << 240].field_0)
                mem[_6590 + 32] = Mask(80, 0, barn[_6047 << 240].field_16)
                mem[_6590 + 64] = address(barn[_6047 << 240].field_96)
                if not address(barn[_6047 << 240].field_96):
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 256] = 0
                    if t == -1:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(s) + 1
                        t = t + 1
                        continue 
                    _6797 = mem[64]
                    mem[mem[64]] = 64
                    _6822 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 96
                    while idx < _6822:
                        _8524 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_8524 + 63 len 1]
                        mem[u + 64] = mem[_8524 + 95 len 1]
                        mem[u + 96] = mem[_8524 + 127 len 1]
                        mem[u + 128] = mem[_8524 + 159 len 1]
                        mem[u + 160] = mem[_8524 + 160]
                        mem[u + 192] = mem[_8524 + 192]
                        mem[u + 224] = mem[_8524 + 224]
                        mem[u + 256] = mem[_8524 + 256]
                        idx = idx + 1
                        t = t + 32
                        u = u + 288
                        continue 
                    mem[_6797 + 32] = uint8(uint8(s) + 1)
                    return memory
                      from mem[64]
                       len _6797 + (288 * _6822) + -mem[64] + 96
                if sub_2d8c2ef1 < 400000000 * 10^18:
                    if mem[_6449 + 127 len 1] < 1:
                        revert with 0, 17
                    if uint8(mem[_6449 + 127 len 1] - 1) >= 8:
                        revert with 0, 50
                    if block.timestamp < Mask(80, 0, barn[_6047 << 240].field_16):
                        revert with 0, 17
                    if block.timestamp - Mask(80, 0, barn[_6047 << 240].field_16) and sub_637d0d7b[uint8(mem[_6449 + 127 len 1] - 1)] > -1 / block.timestamp - Mask(80, 0, barn[_6047 << 240].field_16):
                        revert with 0, 17
                    if (block.timestamp * sub_637d0d7b[uint8(mem[_6449 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_6047 << 240].field_16) * sub_637d0d7b[uint8(mem[_6449 + 127 len 1] - 1)]) / 24 * 3600 and 80 > -1 / (block.timestamp * sub_637d0d7b[uint8(mem[_6449 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_6047 << 240].field_16) * sub_637d0d7b[uint8(mem[_6449 + 127 len 1] - 1)]) / 24 * 3600:
                        revert with 0, 17
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 224] = 80 * (block.timestamp * sub_637d0d7b[uint8(mem[_6449 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_6047 << 240].field_16) * sub_637d0d7b[uint8(mem[_6449 + 127 len 1] - 1)]) / 24 * 3600 / 100
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 256] = 0
                    if t == -1:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(s) + 1
                        t = t + 1
                        continue 
                    _7520 = mem[64]
                    mem[mem[64]] = 64
                    _7557 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 96
                    while idx < _7557:
                        _8519 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_8519 + 63 len 1]
                        mem[u + 64] = mem[_8519 + 95 len 1]
                        mem[u + 96] = mem[_8519 + 127 len 1]
                        mem[u + 128] = mem[_8519 + 159 len 1]
                        mem[u + 160] = mem[_8519 + 160]
                        mem[u + 192] = mem[_8519 + 192]
                        mem[u + 224] = mem[_8519 + 224]
                        mem[u + 256] = mem[_8519 + 256]
                        idx = idx + 1
                        t = t + 32
                        u = u + 288
                        continue 
                    mem[_7520 + 32] = uint8(uint8(s) + 1)
                    return memory
                      from mem[64]
                       len _7520 + (288 * _7557) + -mem[64] + 96
                if Mask(80, 0, barn[_6047 << 240].field_16) > lastClaimTimestamp:
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 256] = 0
                    if t == -1:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(s) + 1
                        t = t + 1
                        continue 
                    _7101 = mem[64]
                    mem[mem[64]] = 64
                    _7132 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 96
                    while idx < _7132:
                        _8514 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_8514 + 63 len 1]
                        mem[u + 64] = mem[_8514 + 95 len 1]
                        mem[u + 96] = mem[_8514 + 127 len 1]
                        mem[u + 128] = mem[_8514 + 159 len 1]
                        mem[u + 160] = mem[_8514 + 160]
                        mem[u + 192] = mem[_8514 + 192]
                        mem[u + 224] = mem[_8514 + 224]
                        mem[u + 256] = mem[_8514 + 256]
                        idx = idx + 1
                        t = t + 32
                        u = u + 288
                        continue 
                    mem[_7101 + 32] = uint8(uint8(s) + 1)
                    return memory
                      from mem[64]
                       len _7101 + (288 * _7132) + -mem[64] + 96
                if mem[_6449 + 127 len 1] < 1:
                    revert with 0, 17
                if uint8(mem[_6449 + 127 len 1] - 1) >= 8:
                    revert with 0, 50
                if lastClaimTimestamp < Mask(80, 0, barn[_6047 << 240].field_16):
                    revert with 0, 17
                if lastClaimTimestamp - Mask(80, 0, barn[_6047 << 240].field_16) and sub_637d0d7b[uint8(mem[_6449 + 127 len 1] - 1)] > -1 / lastClaimTimestamp - Mask(80, 0, barn[_6047 << 240].field_16):
                    revert with 0, 17
                if (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_6449 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_6047 << 240].field_16) * sub_637d0d7b[uint8(mem[_6449 + 127 len 1] - 1)]) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_6449 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_6047 << 240].field_16) * sub_637d0d7b[uint8(mem[_6449 + 127 len 1] - 1)]) / 24 * 3600:
                    revert with 0, 17
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 224] = 80 * (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_6449 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_6047 << 240].field_16) * sub_637d0d7b[uint8(mem[_6449 + 127 len 1] - 1)]) / 24 * 3600 / 100
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 256] = 0
                if t == -1:
                    revert with 0, 17
                if uint8(s) == 255:
                    revert with 0, 17
                if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(s) + 1
                    t = t + 1
                    continue 
                _7556 = mem[64]
                mem[mem[64]] = 64
                _7593 = mem[96]
                mem[mem[64] + 64] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 96
                while idx < _7593:
                    _8509 = mem[t]
                    mem[u] = mem[mem[t]]
                    mem[u + 32] = mem[_8509 + 63 len 1]
                    mem[u + 64] = mem[_8509 + 95 len 1]
                    mem[u + 96] = mem[_8509 + 127 len 1]
                    mem[u + 128] = mem[_8509 + 159 len 1]
                    mem[u + 160] = mem[_8509 + 160]
                    mem[u + 192] = mem[_8509 + 192]
                    mem[u + 224] = mem[_8509 + 224]
                    mem[u + 256] = mem[_8509 + 256]
                    idx = idx + 1
                    t = t + 32
                    u = u + 288
                    continue 
                mem[_7556 + 32] = uint8(uint8(s) + 1)
                return memory
                  from mem[64]
                   len _7556 + (288 * _7593) + -mem[64] + 96
            mem[0] = uint16(_6047)
            mem[32] = 153
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128] + 160] = Mask(80, 0, barn[_6047 << 240].field_16)
            mem[mem[64] + 4] = uint16(_6047)
            require ext_code.size(shieldAddress)
            staticcall shieldAddress.0x478ba63b with:
                    gas gas_remaining wei
                   args (_6047 << 240)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _6444 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128] + 192] = mem[_6444]
            require ext_code.size(minerAddress)
            staticcall minerAddress.getTokenTraits(uint256 arg1) with:
                    gas gas_remaining wei
                   args (_6047 << 240)
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _6528 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _6546 = mem[64]
            if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 128
            require mem[_6528] == mem[_6528 + 31 len 1]
            mem[_6546] = mem[_6528]
            require mem[_6528 + 32] == mem[_6528 + 63 len 1]
            mem[_6546 + 32] = mem[_6528 + 32]
            require mem[_6528 + 64] == mem[_6528 + 95 len 1]
            mem[_6546 + 64] = mem[_6528 + 64]
            require mem[_6528 + 96] == mem[_6528 + 127 len 1]
            mem[_6546 + 96] = mem[_6528 + 96]
            if 0 == mem[_6546 + 127 len 1]:
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 256] = 0
                if t == -1:
                    revert with 0, 17
                if uint8(s) == 255:
                    revert with 0, 17
                if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(s) + 1
                    t = t + 1
                    continue 
                _6984 = mem[64]
                mem[mem[64]] = 64
                _7010 = mem[96]
                mem[mem[64] + 64] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 96
                while idx < _7010:
                    _8564 = mem[t]
                    mem[u] = mem[mem[t]]
                    mem[u + 32] = mem[_8564 + 63 len 1]
                    mem[u + 64] = mem[_8564 + 95 len 1]
                    mem[u + 96] = mem[_8564 + 127 len 1]
                    mem[u + 128] = mem[_8564 + 159 len 1]
                    mem[u + 160] = mem[_8564 + 160]
                    mem[u + 192] = mem[_8564 + 192]
                    mem[u + 224] = mem[_8564 + 224]
                    mem[u + 256] = mem[_8564 + 256]
                    idx = idx + 1
                    t = t + 32
                    u = u + 288
                    continue 
                mem[_6984 + 32] = uint8(uint8(s) + 1)
                return memory
                  from mem[64]
                   len _6984 + (288 * _7010) + -mem[64] + 96
            if mem[_6546 + 63 len 1] != 0:
                mem[0] = mem[_6546 + 127 len 1]
                mem[32] = 154
                if packIndices[_6047 << 240] >= uint256(pack[mem[0]].field_0):
                    revert with 0, 50
                mem[0] = sha3(mem[0], 154)
                _6703 = sha3(mem[0])
                _6704 = mem[64]
                mem[64] = mem[64] + 96
                mem[_6704] = uint16(stor[sha3(mem[0]) + stor155[_6047 << 240]].field_0)
                mem[_6704 + 32] = Mask(80, 0, stor[_6703 + stor155[_6047 << 240]].field_16)
                mem[_6704 + 64] = address(stor[_6703 + stor155[_6047 << 240]].field_96)
                if not address(stor[_6703 + stor155[_6047 << 240]].field_96):
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 256] = 0
                    if t == -1:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(s) + 1
                        t = t + 1
                        continue 
                    _7067 = mem[64]
                    mem[mem[64]] = 64
                    _7104 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 96
                    while idx < _7104:
                        _8539 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_8539 + 63 len 1]
                        mem[u + 64] = mem[_8539 + 95 len 1]
                        mem[u + 96] = mem[_8539 + 127 len 1]
                        mem[u + 128] = mem[_8539 + 159 len 1]
                        mem[u + 160] = mem[_8539 + 160]
                        mem[u + 192] = mem[_8539 + 192]
                        mem[u + 224] = mem[_8539 + 224]
                        mem[u + 256] = mem[_8539 + 256]
                        idx = idx + 1
                        t = t + 32
                        u = u + 288
                        continue 
                    mem[_7067 + 32] = uint8(uint8(s) + 1)
                    return memory
                      from mem[64]
                       len _7067 + (288 * _7104) + -mem[64] + 96
                if mem[_6546 + 127 len 1] < 1:
                    revert with 0, 17
                if uint8(mem[_6546 + 127 len 1] - 1) >= 5:
                    revert with 0, 50
                if uint256(sub_bc633bf2) < Mask(80, 0, stor[_6703 + stor155[_6047 << 240]].field_16):
                    revert with 0, 17
                if sub_3f30e8d8[uint8(mem[_6546 + 127 len 1] - 1)] and uint256(sub_bc633bf2) - Mask(80, 0, stor[_6703 + stor155[_6047 << 240]].field_16) > -1 / sub_3f30e8d8[uint8(mem[_6546 + 127 len 1] - 1)]:
                    revert with 0, 17
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 224] = (uint256(sub_bc633bf2) * sub_3f30e8d8[uint8(mem[_6546 + 127 len 1] - 1)]) - (Mask(80, 0, stor[_6703 + stor155[_6047 << 240]].field_16) * sub_3f30e8d8[uint8(mem[_6546 + 127 len 1] - 1)])
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 256] = 0
                if t == -1:
                    revert with 0, 17
                if uint8(s) == 255:
                    revert with 0, 17
                if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(s) + 1
                    t = t + 1
                    continue 
                _7415 = mem[64]
                mem[mem[64]] = 64
                _7441 = mem[96]
                mem[mem[64] + 64] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 96
                while idx < _7441:
                    _8534 = mem[t]
                    mem[u] = mem[mem[t]]
                    mem[u + 32] = mem[_8534 + 63 len 1]
                    mem[u + 64] = mem[_8534 + 95 len 1]
                    mem[u + 96] = mem[_8534 + 127 len 1]
                    mem[u + 128] = mem[_8534 + 159 len 1]
                    mem[u + 160] = mem[_8534 + 160]
                    mem[u + 192] = mem[_8534 + 192]
                    mem[u + 224] = mem[_8534 + 224]
                    mem[u + 256] = mem[_8534 + 256]
                    idx = idx + 1
                    t = t + 32
                    u = u + 288
                    continue 
                mem[_7415 + 32] = uint8(uint8(s) + 1)
                return memory
                  from mem[64]
                   len _7415 + (288 * _7441) + -mem[64] + 96
            mem[0] = uint16(_6047)
            mem[32] = 153
            _6691 = mem[64]
            mem[64] = mem[64] + 96
            mem[_6691] = uint16(barn[_6047 << 240].field_0)
            mem[_6691 + 32] = Mask(80, 0, barn[_6047 << 240].field_16)
            mem[_6691 + 64] = address(barn[_6047 << 240].field_96)
            if not address(barn[_6047 << 240].field_96):
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 256] = 0
                if t == -1:
                    revert with 0, 17
                if uint8(s) == 255:
                    revert with 0, 17
                if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(s) + 1
                    t = t + 1
                    continue 
                _7039 = mem[64]
                mem[mem[64]] = 64
                _7068 = mem[96]
                mem[mem[64] + 64] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 96
                while idx < _7068:
                    _8559 = mem[t]
                    mem[u] = mem[mem[t]]
                    mem[u + 32] = mem[_8559 + 63 len 1]
                    mem[u + 64] = mem[_8559 + 95 len 1]
                    mem[u + 96] = mem[_8559 + 127 len 1]
                    mem[u + 128] = mem[_8559 + 159 len 1]
                    mem[u + 160] = mem[_8559 + 160]
                    mem[u + 192] = mem[_8559 + 192]
                    mem[u + 224] = mem[_8559 + 224]
                    mem[u + 256] = mem[_8559 + 256]
                    idx = idx + 1
                    t = t + 32
                    u = u + 288
                    continue 
                mem[_7039 + 32] = uint8(uint8(s) + 1)
                return memory
                  from mem[64]
                   len _7039 + (288 * _7068) + -mem[64] + 96
            if sub_2d8c2ef1 < 400000000 * 10^18:
                if mem[_6546 + 127 len 1] < 1:
                    revert with 0, 17
                if uint8(mem[_6546 + 127 len 1] - 1) >= 8:
                    revert with 0, 50
                if block.timestamp < Mask(80, 0, barn[_6047 << 240].field_16):
                    revert with 0, 17
                if block.timestamp - Mask(80, 0, barn[_6047 << 240].field_16) and sub_637d0d7b[uint8(mem[_6546 + 127 len 1] - 1)] > -1 / block.timestamp - Mask(80, 0, barn[_6047 << 240].field_16):
                    revert with 0, 17
                if (block.timestamp * sub_637d0d7b[uint8(mem[_6546 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_6047 << 240].field_16) * sub_637d0d7b[uint8(mem[_6546 + 127 len 1] - 1)]) / 24 * 3600 and 80 > -1 / (block.timestamp * sub_637d0d7b[uint8(mem[_6546 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_6047 << 240].field_16) * sub_637d0d7b[uint8(mem[_6546 + 127 len 1] - 1)]) / 24 * 3600:
                    revert with 0, 17
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 224] = 80 * (block.timestamp * sub_637d0d7b[uint8(mem[_6546 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_6047 << 240].field_16) * sub_637d0d7b[uint8(mem[_6546 + 127 len 1] - 1)]) / 24 * 3600 / 100
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 256] = 0
                if t == -1:
                    revert with 0, 17
                if uint8(s) == 255:
                    revert with 0, 17
                if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(s) + 1
                    t = t + 1
                    continue 
                _7908 = mem[64]
                mem[mem[64]] = 64
                _7938 = mem[96]
                mem[mem[64] + 64] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 96
                while idx < _7938:
                    _8554 = mem[t]
                    mem[u] = mem[mem[t]]
                    mem[u + 32] = mem[_8554 + 63 len 1]
                    mem[u + 64] = mem[_8554 + 95 len 1]
                    mem[u + 96] = mem[_8554 + 127 len 1]
                    mem[u + 128] = mem[_8554 + 159 len 1]
                    mem[u + 160] = mem[_8554 + 160]
                    mem[u + 192] = mem[_8554 + 192]
                    mem[u + 224] = mem[_8554 + 224]
                    mem[u + 256] = mem[_8554 + 256]
                    idx = idx + 1
                    t = t + 32
                    u = u + 288
                    continue 
                mem[_7908 + 32] = uint8(uint8(s) + 1)
                return memory
                  from mem[64]
                   len _7908 + (288 * _7938) + -mem[64] + 96
            if Mask(80, 0, barn[_6047 << 240].field_16) > lastClaimTimestamp:
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 256] = 0
                if t == -1:
                    revert with 0, 17
                if uint8(s) == 255:
                    revert with 0, 17
                if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(s) + 1
                    t = t + 1
                    continue 
                _7443 = mem[64]
                mem[mem[64]] = 64
                _7481 = mem[96]
                mem[mem[64] + 64] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 96
                while idx < _7481:
                    _8549 = mem[t]
                    mem[u] = mem[mem[t]]
                    mem[u + 32] = mem[_8549 + 63 len 1]
                    mem[u + 64] = mem[_8549 + 95 len 1]
                    mem[u + 96] = mem[_8549 + 127 len 1]
                    mem[u + 128] = mem[_8549 + 159 len 1]
                    mem[u + 160] = mem[_8549 + 160]
                    mem[u + 192] = mem[_8549 + 192]
                    mem[u + 224] = mem[_8549 + 224]
                    mem[u + 256] = mem[_8549 + 256]
                    idx = idx + 1
                    t = t + 32
                    u = u + 288
                    continue 
                mem[_7443 + 32] = uint8(uint8(s) + 1)
                return memory
                  from mem[64]
                   len _7443 + (288 * _7481) + -mem[64] + 96
            if mem[_6546 + 127 len 1] < 1:
                revert with 0, 17
            if uint8(mem[_6546 + 127 len 1] - 1) >= 8:
                revert with 0, 50
            if lastClaimTimestamp < Mask(80, 0, barn[_6047 << 240].field_16):
                revert with 0, 17
            if lastClaimTimestamp - Mask(80, 0, barn[_6047 << 240].field_16) and sub_637d0d7b[uint8(mem[_6546 + 127 len 1] - 1)] > -1 / lastClaimTimestamp - Mask(80, 0, barn[_6047 << 240].field_16):
                revert with 0, 17
            if (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_6546 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_6047 << 240].field_16) * sub_637d0d7b[uint8(mem[_6546 + 127 len 1] - 1)]) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_6546 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_6047 << 240].field_16) * sub_637d0d7b[uint8(mem[_6546 + 127 len 1] - 1)]) / 24 * 3600:
                revert with 0, 17
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128] + 224] = 80 * (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_6546 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_6047 << 240].field_16) * sub_637d0d7b[uint8(mem[_6546 + 127 len 1] - 1)]) / 24 * 3600 / 100
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128] + 256] = 0
            if t == -1:
                revert with 0, 17
            if uint8(s) == 255:
                revert with 0, 17
            if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                if uint8(idx) == 255:
                    revert with 0, 17
                idx = uint8(idx) + 1
                s = uint8(s) + 1
                t = t + 1
                continue 
            _7937 = mem[64]
            mem[mem[64]] = 64
            _7965 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            t = 128
            u = mem[64] + 96
            while idx < _7965:
                _8544 = mem[t]
                mem[u] = mem[mem[t]]
                mem[u + 32] = mem[_8544 + 63 len 1]
                mem[u + 64] = mem[_8544 + 95 len 1]
                mem[u + 96] = mem[_8544 + 127 len 1]
                mem[u + 128] = mem[_8544 + 159 len 1]
                mem[u + 160] = mem[_8544 + 160]
                mem[u + 192] = mem[_8544 + 192]
                mem[u + 224] = mem[_8544 + 224]
                mem[u + 256] = mem[_8544 + 256]
                idx = idx + 1
                t = t + 32
                u = u + 288
                continue 
            mem[_7937 + 32] = uint8(uint8(s) + 1)
            return memory
              from mem[64]
               len _7937 + (288 * _7965) + -mem[64] + 96
        _6082 = mem[64]
        mem[mem[64]] = 64
        _6116 = mem[96]
        mem[mem[64] + 64] = mem[96]
        idx = 0
        t = 128
        u = mem[64] + 96
        while idx < _6116:
            _8494 = mem[t]
            mem[u] = mem[mem[t]]
            mem[u + 32] = mem[_8494 + 63 len 1]
            mem[u + 64] = mem[_8494 + 95 len 1]
            mem[u + 96] = mem[_8494 + 127 len 1]
            mem[u + 128] = mem[_8494 + 159 len 1]
            mem[u + 160] = mem[_8494 + 160]
            mem[u + 192] = mem[_8494 + 192]
            mem[u + 224] = mem[_8494 + 224]
            mem[u + 256] = mem[_8494 + 256]
            idx = idx + 1
            t = t + 32
            u = u + 288
            continue 
        mem[_6082 + 32] = uint8(s)
        return memory
          from mem[64]
           len _6082 + (288 * _6116) + -mem[64] + 96
    mem[64] = (32 * uint8(arg3)) + 416
    mem[(32 * uint8(arg3)) + 128] = 0
    mem[(32 * uint8(arg3)) + 160] = 0
    mem[(32 * uint8(arg3)) + 192] = 0
    mem[(32 * uint8(arg3)) + 224] = 0
    mem[(32 * uint8(arg3)) + 256] = 0
    mem[(32 * uint8(arg3)) + 288] = 0
    mem[(32 * uint8(arg3)) + 320] = 0
    mem[(32 * uint8(arg3)) + 352] = 0
    mem[(32 * uint8(arg3)) + 384] = 0
    mem[var20001] = (32 * uint8(arg3)) + 128
    s = var20001
    idx = var20002
    while idx - 1:
        mem[64] = mem[64] + 288
        mem[(32 * uint8(arg3)) + 128] = 0
        mem[(32 * uint8(arg3)) + 160] = 0
        mem[(32 * uint8(arg3)) + 192] = 0
        mem[(32 * uint8(arg3)) + 224] = 0
        mem[(32 * uint8(arg3)) + 256] = 0
        mem[(32 * uint8(arg3)) + 288] = 0
        mem[(32 * uint8(arg3)) + 320] = 0
        mem[(32 * uint8(arg3)) + 352] = 0
        mem[(32 * uint8(arg3)) + 384] = 0
        mem[s + 32] = (32 * uint8(arg3)) + 128
        s = s + 32
        idx = idx - 1
        continue 
    mem[0] = arg1
    mem[32] = 179
    if not uint256(balanceOf[address(arg1)].field_0):
        _6260 = mem[64]
        mem[mem[64]] = 64
        _6272 = mem[96]
        mem[mem[64] + 64] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 96
        while idx < _6272:
            _8569 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_8569 + 63 len 1]
            mem[t + 64] = mem[_8569 + 95 len 1]
            mem[t + 96] = mem[_8569 + 127 len 1]
            mem[t + 128] = mem[_8569 + 159 len 1]
            mem[t + 160] = mem[_8569 + 160]
            mem[t + 192] = mem[_8569 + 192]
            mem[t + 224] = mem[_8569 + 224]
            mem[t + 256] = mem[_8569 + 256]
            idx = idx + 1
            s = s + 32
            t = t + 288
            continue 
        mem[_6260 + 32] = 0
        return memory
          from mem[64]
           len _6260 + (288 * _6272) + -mem[64] + 96
    if arg2 >= uint256(balanceOf[address(arg1)].field_0):
        _6273 = mem[64]
        mem[mem[64]] = 64
        _6274 = mem[96]
        mem[mem[64] + 64] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 96
        while idx < _6274:
            _8576 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_8576 + 63 len 1]
            mem[t + 64] = mem[_8576 + 95 len 1]
            mem[t + 96] = mem[_8576 + 127 len 1]
            mem[t + 128] = mem[_8576 + 159 len 1]
            mem[t + 160] = mem[_8576 + 160]
            mem[t + 192] = mem[_8576 + 192]
            mem[t + 224] = mem[_8576 + 224]
            mem[t + 256] = mem[_8576 + 256]
            idx = idx + 1
            s = s + 32
            t = t + 288
            continue 
        mem[_6273 + 32] = 0
        return memory
          from mem[64]
           len _6273 + (288 * _6274) + -mem[64] + 96
    mem[0] = arg1
    mem[32] = 179
    _6255 = mem[64]
    mem[64] = mem[64] + (32 * uint256(balanceOf[address(arg1)].field_0)) + 32
    mem[_6255] = uint256(balanceOf[address(arg1)].field_0)
    if not uint256(balanceOf[address(arg1)].field_0):
        if sub_7d4cd2b5Address != 0xfb4c2c55180cf3a6b6acacb825cbcc9085858edc:
            idx = 0
            s = 0
            t = arg2
            while uint8(idx) < arg3:
                if t >= mem[_6255]:
                    revert with 0, 50
                _8581 = mem[(32 * t) + _6255 + 32]
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128]] = mem[(32 * t) + _6255 + 62 len 2]
                require ext_code.size(minerAddress)
                staticcall minerAddress.getTokenTraits(uint256 arg1) with:
                        gas gas_remaining wei
                       args (_8581 << 240)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _8799 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _8814 = mem[64]
                if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 128
                require mem[_8799] == mem[_8799 + 31 len 1]
                mem[_8814] = mem[_8799]
                require mem[_8799 + 32] == mem[_8799 + 63 len 1]
                mem[_8814 + 32] = mem[_8799 + 32]
                require mem[_8799 + 64] == mem[_8799 + 95 len 1]
                mem[_8814 + 64] = mem[_8799 + 64]
                require mem[_8799 + 96] == mem[_8799 + 127 len 1]
                mem[_8814 + 96] = mem[_8799 + 96]
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 32] = mem[_8814 + 31 len 1]
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 64] = mem[_8814 + 63 len 1]
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 96] = mem[_8814 + 95 len 1]
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 128] = mem[_8814 + 127 len 1]
                if mem[_8814 + 63 len 1]:
                    require ext_code.size(minerAddress)
                    staticcall minerAddress.getTokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args (_8581 << 240)
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _8937 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _8951 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 128
                    require mem[_8937] == mem[_8937 + 31 len 1]
                    mem[_8951] = mem[_8937]
                    require mem[_8937 + 32] == mem[_8937 + 63 len 1]
                    mem[_8951 + 32] = mem[_8937 + 32]
                    require mem[_8937 + 64] == mem[_8937 + 95 len 1]
                    mem[_8951 + 64] = mem[_8937 + 64]
                    require mem[_8937 + 96] == mem[_8937 + 127 len 1]
                    mem[_8951 + 96] = mem[_8937 + 96]
                    if 0 == mem[_8951 + 127 len 1]:
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                        mem[mem[64] + 4] = uint16(_8581)
                        require ext_code.size(sub_7d4cd2b5Address)
                        staticcall sub_7d4cd2b5Address.0x224e5e22 with:
                                gas gas_remaining wei
                               args (_8581 << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9092 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 256] = mem[_9092]
                        if t == -1:
                            revert with 0, 17
                        if uint8(s) == 255:
                            revert with 0, 17
                        if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = uint8(s) + 1
                            t = t + 1
                            continue 
                        _9293 = mem[64]
                        mem[mem[64]] = 64
                        _9313 = mem[96]
                        mem[mem[64] + 64] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 96
                        while idx < _9313:
                            _10250 = mem[t]
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_10250 + 63 len 1]
                            mem[u + 64] = mem[_10250 + 95 len 1]
                            mem[u + 96] = mem[_10250 + 127 len 1]
                            mem[u + 128] = mem[_10250 + 159 len 1]
                            mem[u + 160] = mem[_10250 + 160]
                            mem[u + 192] = mem[_10250 + 192]
                            mem[u + 224] = mem[_10250 + 224]
                            mem[u + 256] = mem[_10250 + 256]
                            idx = idx + 1
                            t = t + 32
                            u = u + 288
                            continue 
                        mem[_9293 + 32] = uint8(uint8(s) + 1)
                        return memory
                          from mem[64]
                           len _9293 + (288 * _9313) + -mem[64] + 96
                    if mem[_8951 + 63 len 1] != 0:
                        mem[0] = mem[_8951 + 127 len 1]
                        mem[32] = 154
                        if packIndices[_8581 << 240] >= uint256(pack[mem[0]].field_0):
                            revert with 0, 50
                        mem[0] = sha3(mem[0], 154)
                        _9027 = sha3(mem[0])
                        _9028 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_9028] = uint16(stor[sha3(mem[0]) + stor155[_8581 << 240]].field_0)
                        mem[_9028 + 32] = Mask(80, 0, stor[_9027 + stor155[_8581 << 240]].field_16)
                        mem[_9028 + 64] = address(stor[_9027 + stor155[_8581 << 240]].field_96)
                        if not address(stor[_9027 + stor155[_8581 << 240]].field_96):
                            if uint8(idx) >= mem[96]:
                                revert with 0, 50
                            mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                            mem[mem[64] + 4] = uint16(_8581)
                            require ext_code.size(sub_7d4cd2b5Address)
                            staticcall sub_7d4cd2b5Address.0x224e5e22 with:
                                    gas gas_remaining wei
                                   args (_8581 << 240)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9124 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if uint8(idx) >= mem[96]:
                                revert with 0, 50
                            mem[mem[(32 * uint8(idx)) + 128] + 256] = mem[_9124]
                            if t == -1:
                                revert with 0, 17
                            if uint8(s) == 255:
                                revert with 0, 17
                            if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                                if uint8(idx) == 255:
                                    revert with 0, 17
                                idx = uint8(idx) + 1
                                s = uint8(s) + 1
                                t = t + 1
                                continue 
                            _9353 = mem[64]
                            mem[mem[64]] = 64
                            _9375 = mem[96]
                            mem[mem[64] + 64] = mem[96]
                            t = 0
                            u = 128
                            v = mem[64] + 96
                            while t < _9375:
                                _10225 = mem[u]
                                mem[v] = mem[mem[u]]
                                mem[v + 32] = mem[_10225 + 63 len 1]
                                mem[v + 64] = mem[_10225 + 95 len 1]
                                mem[v + 96] = mem[_10225 + 127 len 1]
                                mem[v + 128] = mem[_10225 + 159 len 1]
                                mem[v + 160] = mem[_10225 + 160]
                                mem[v + 192] = mem[_10225 + 192]
                                mem[v + 224] = mem[_10225 + 224]
                                mem[v + 256] = mem[_10225 + 256]
                                t = t + 1
                                u = u + 32
                                v = v + 288
                                continue 
                            mem[_9353 + 32] = uint8(uint8(_9353 + (288 * _9375) + 96) + 1)
                            return memory
                              from mem[64]
                               len _9353 + (288 * _9375) + -mem[64] + 96
                        if mem[_8951 + 127 len 1] < 1:
                            revert with 0, 17
                        if uint8(mem[_8951 + 127 len 1] - 1) >= 5:
                            revert with 0, 50
                        if uint256(sub_bc633bf2) < Mask(80, 0, stor[_9027 + stor155[_8581 << 240]].field_16):
                            revert with 0, 17
                        if sub_3f30e8d8[uint8(mem[_8951 + 127 len 1] - 1)] and uint256(sub_bc633bf2) - Mask(80, 0, stor[_9027 + stor155[_8581 << 240]].field_16) > -1 / sub_3f30e8d8[uint8(mem[_8951 + 127 len 1] - 1)]:
                            revert with 0, 17
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 224] = (uint256(sub_bc633bf2) * sub_3f30e8d8[uint8(mem[_8951 + 127 len 1] - 1)]) - (Mask(80, 0, stor[_9027 + stor155[_8581 << 240]].field_16) * sub_3f30e8d8[uint8(mem[_8951 + 127 len 1] - 1)])
                        mem[mem[64] + 4] = uint16(_8581)
                        require ext_code.size(sub_7d4cd2b5Address)
                        staticcall sub_7d4cd2b5Address.0x224e5e22 with:
                                gas gas_remaining wei
                               args (_8581 << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9292 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 256] = mem[_9292]
                        if t == -1:
                            revert with 0, 17
                        if uint8(s) == 255:
                            revert with 0, 17
                        if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = uint8(s) + 1
                            t = t + 1
                            continue 
                        _9595 = mem[64]
                        mem[mem[64]] = 64
                        _9625 = mem[96]
                        mem[mem[64] + 64] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 96
                        while idx < _9625:
                            _10220 = mem[t]
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_10220 + 63 len 1]
                            mem[u + 64] = mem[_10220 + 95 len 1]
                            mem[u + 96] = mem[_10220 + 127 len 1]
                            mem[u + 128] = mem[_10220 + 159 len 1]
                            mem[u + 160] = mem[_10220 + 160]
                            mem[u + 192] = mem[_10220 + 192]
                            mem[u + 224] = mem[_10220 + 224]
                            mem[u + 256] = mem[_10220 + 256]
                            idx = idx + 1
                            t = t + 32
                            u = u + 288
                            continue 
                        mem[_9595 + 32] = uint8(uint8(s) + 1)
                        return memory
                          from mem[64]
                           len _9595 + (288 * _9625) + -mem[64] + 96
                    mem[0] = uint16(_8581)
                    mem[32] = 153
                    _9019 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_9019] = uint16(barn[_8581 << 240].field_0)
                    mem[_9019 + 32] = Mask(80, 0, barn[_8581 << 240].field_16)
                    mem[_9019 + 64] = address(barn[_8581 << 240].field_96)
                    if not address(barn[_8581 << 240].field_96):
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                        mem[mem[64] + 4] = uint16(_8581)
                        require ext_code.size(sub_7d4cd2b5Address)
                        staticcall sub_7d4cd2b5Address.0x224e5e22 with:
                                gas gas_remaining wei
                               args (_8581 << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9113 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 256] = mem[_9113]
                        if t == -1:
                            revert with 0, 17
                        if uint8(s) == 255:
                            revert with 0, 17
                        if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = uint8(s) + 1
                            t = t + 1
                            continue 
                        _9332 = mem[64]
                        mem[mem[64]] = 64
                        _9355 = mem[96]
                        mem[mem[64] + 64] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 96
                        while idx < _9355:
                            _10245 = mem[t]
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_10245 + 63 len 1]
                            mem[u + 64] = mem[_10245 + 95 len 1]
                            mem[u + 96] = mem[_10245 + 127 len 1]
                            mem[u + 128] = mem[_10245 + 159 len 1]
                            mem[u + 160] = mem[_10245 + 160]
                            mem[u + 192] = mem[_10245 + 192]
                            mem[u + 224] = mem[_10245 + 224]
                            mem[u + 256] = mem[_10245 + 256]
                            idx = idx + 1
                            t = t + 32
                            u = u + 288
                            continue 
                        mem[_9332 + 32] = uint8(uint8(s) + 1)
                        return memory
                          from mem[64]
                           len _9332 + (288 * _9355) + -mem[64] + 96
                    if sub_2d8c2ef1 < 400000000 * 10^18:
                        if mem[_8951 + 127 len 1] < 1:
                            revert with 0, 17
                        if uint8(mem[_8951 + 127 len 1] - 1) >= 8:
                            revert with 0, 50
                        if block.timestamp < Mask(80, 0, barn[_8581 << 240].field_16):
                            revert with 0, 17
                        if block.timestamp - Mask(80, 0, barn[_8581 << 240].field_16) and sub_637d0d7b[uint8(mem[_8951 + 127 len 1] - 1)] > -1 / block.timestamp - Mask(80, 0, barn[_8581 << 240].field_16):
                            revert with 0, 17
                        if (block.timestamp * sub_637d0d7b[uint8(mem[_8951 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_8581 << 240].field_16) * sub_637d0d7b[uint8(mem[_8951 + 127 len 1] - 1)]) / 24 * 3600 and 80 > -1 / (block.timestamp * sub_637d0d7b[uint8(mem[_8951 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_8581 << 240].field_16) * sub_637d0d7b[uint8(mem[_8951 + 127 len 1] - 1)]) / 24 * 3600:
                            revert with 0, 17
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 224] = 80 * (block.timestamp * sub_637d0d7b[uint8(mem[_8951 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_8581 << 240].field_16) * sub_637d0d7b[uint8(mem[_8951 + 127 len 1] - 1)]) / 24 * 3600 / 100
                        mem[mem[64] + 4] = uint16(_8581)
                        require ext_code.size(sub_7d4cd2b5Address)
                        staticcall sub_7d4cd2b5Address.0x224e5e22 with:
                                gas gas_remaining wei
                               args (_8581 << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9596 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 256] = mem[_9596]
                        if t == -1:
                            revert with 0, 17
                        if uint8(s) == 255:
                            revert with 0, 17
                        if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = uint8(s) + 1
                            t = t + 1
                            continue 
                        _9936 = mem[64]
                        mem[mem[64]] = 64
                        _9961 = mem[96]
                        mem[mem[64] + 64] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 96
                        while idx < _9961:
                            _10240 = mem[t]
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_10240 + 63 len 1]
                            mem[u + 64] = mem[_10240 + 95 len 1]
                            mem[u + 96] = mem[_10240 + 127 len 1]
                            mem[u + 128] = mem[_10240 + 159 len 1]
                            mem[u + 160] = mem[_10240 + 160]
                            mem[u + 192] = mem[_10240 + 192]
                            mem[u + 224] = mem[_10240 + 224]
                            mem[u + 256] = mem[_10240 + 256]
                            idx = idx + 1
                            t = t + 32
                            u = u + 288
                            continue 
                        mem[_9936 + 32] = uint8(uint8(s) + 1)
                        return memory
                          from mem[64]
                           len _9936 + (288 * _9961) + -mem[64] + 96
                    if Mask(80, 0, barn[_8581 << 240].field_16) > lastClaimTimestamp:
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                        mem[mem[64] + 4] = uint16(_8581)
                        require ext_code.size(sub_7d4cd2b5Address)
                        staticcall sub_7d4cd2b5Address.0x224e5e22 with:
                                gas gas_remaining wei
                               args (_8581 << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9312 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 256] = mem[_9312]
                        if t == -1:
                            revert with 0, 17
                        if uint8(s) == 255:
                            revert with 0, 17
                        if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = uint8(s) + 1
                            t = t + 1
                            continue 
                        _9627 = mem[64]
                        mem[mem[64]] = 64
                        _9657 = mem[96]
                        mem[mem[64] + 64] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 96
                        while idx < _9657:
                            _10235 = mem[t]
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_10235 + 63 len 1]
                            mem[u + 64] = mem[_10235 + 95 len 1]
                            mem[u + 96] = mem[_10235 + 127 len 1]
                            mem[u + 128] = mem[_10235 + 159 len 1]
                            mem[u + 160] = mem[_10235 + 160]
                            mem[u + 192] = mem[_10235 + 192]
                            mem[u + 224] = mem[_10235 + 224]
                            mem[u + 256] = mem[_10235 + 256]
                            idx = idx + 1
                            t = t + 32
                            u = u + 288
                            continue 
                        mem[_9627 + 32] = uint8(uint8(s) + 1)
                        return memory
                          from mem[64]
                           len _9627 + (288 * _9657) + -mem[64] + 96
                    if mem[_8951 + 127 len 1] < 1:
                        revert with 0, 17
                    if uint8(mem[_8951 + 127 len 1] - 1) >= 8:
                        revert with 0, 50
                    if lastClaimTimestamp < Mask(80, 0, barn[_8581 << 240].field_16):
                        revert with 0, 17
                    if lastClaimTimestamp - Mask(80, 0, barn[_8581 << 240].field_16) and sub_637d0d7b[uint8(mem[_8951 + 127 len 1] - 1)] > -1 / lastClaimTimestamp - Mask(80, 0, barn[_8581 << 240].field_16):
                        revert with 0, 17
                    if (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_8951 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_8581 << 240].field_16) * sub_637d0d7b[uint8(mem[_8951 + 127 len 1] - 1)]) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_8951 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_8581 << 240].field_16) * sub_637d0d7b[uint8(mem[_8951 + 127 len 1] - 1)]) / 24 * 3600:
                        revert with 0, 17
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 224] = 80 * (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_8951 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_8581 << 240].field_16) * sub_637d0d7b[uint8(mem[_8951 + 127 len 1] - 1)]) / 24 * 3600 / 100
                    mem[mem[64] + 4] = uint16(_8581)
                    require ext_code.size(sub_7d4cd2b5Address)
                    staticcall sub_7d4cd2b5Address.0x224e5e22 with:
                            gas gas_remaining wei
                           args (_8581 << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9626 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 256] = mem[_9626]
                    if t == -1:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(s) + 1
                        t = t + 1
                        continue 
                    _9960 = mem[64]
                    mem[mem[64]] = 64
                    _9978 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 96
                    while idx < _9978:
                        _10230 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_10230 + 63 len 1]
                        mem[u + 64] = mem[_10230 + 95 len 1]
                        mem[u + 96] = mem[_10230 + 127 len 1]
                        mem[u + 128] = mem[_10230 + 159 len 1]
                        mem[u + 160] = mem[_10230 + 160]
                        mem[u + 192] = mem[_10230 + 192]
                        mem[u + 224] = mem[_10230 + 224]
                        mem[u + 256] = mem[_10230 + 256]
                        idx = idx + 1
                        t = t + 32
                        u = u + 288
                        continue 
                    mem[_9960 + 32] = uint8(uint8(s) + 1)
                    return memory
                      from mem[64]
                       len _9960 + (288 * _9978) + -mem[64] + 96
                mem[0] = uint16(_8581)
                mem[32] = 153
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 160] = Mask(80, 0, barn[_8581 << 240].field_16)
                mem[mem[64] + 4] = uint16(_8581)
                require ext_code.size(shieldAddress)
                staticcall shieldAddress.0x478ba63b with:
                        gas gas_remaining wei
                       args (_8581 << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _8938 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 192] = mem[_8938]
                require ext_code.size(minerAddress)
                staticcall minerAddress.getTokenTraits(uint256 arg1) with:
                        gas gas_remaining wei
                       args (_8581 << 240)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _8987 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _8994 = mem[64]
                if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 128
                require mem[_8987] == mem[_8987 + 31 len 1]
                mem[_8994] = mem[_8987]
                require mem[_8987 + 32] == mem[_8987 + 63 len 1]
                mem[_8994 + 32] = mem[_8987 + 32]
                require mem[_8987 + 64] == mem[_8987 + 95 len 1]
                mem[_8994 + 64] = mem[_8987 + 64]
                require mem[_8987 + 96] == mem[_8987 + 127 len 1]
                mem[_8994 + 96] = mem[_8987 + 96]
                if 0 == mem[_8994 + 127 len 1]:
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                    mem[mem[64] + 4] = uint16(_8581)
                    require ext_code.size(sub_7d4cd2b5Address)
                    staticcall sub_7d4cd2b5Address.0x224e5e22 with:
                            gas gas_remaining wei
                           args (_8581 << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9238 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 256] = mem[_9238]
                    if t == -1:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(s) + 1
                        t = t + 1
                        continue 
                    _9521 = mem[64]
                    mem[mem[64]] = 64
                    _9548 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 96
                    while idx < _9548:
                        _10285 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_10285 + 63 len 1]
                        mem[u + 64] = mem[_10285 + 95 len 1]
                        mem[u + 96] = mem[_10285 + 127 len 1]
                        mem[u + 128] = mem[_10285 + 159 len 1]
                        mem[u + 160] = mem[_10285 + 160]
                        mem[u + 192] = mem[_10285 + 192]
                        mem[u + 224] = mem[_10285 + 224]
                        mem[u + 256] = mem[_10285 + 256]
                        idx = idx + 1
                        t = t + 32
                        u = u + 288
                        continue 
                    mem[_9521 + 32] = uint8(uint8(s) + 1)
                    return memory
                      from mem[64]
                       len _9521 + (288 * _9548) + -mem[64] + 96
                if mem[_8994 + 63 len 1] != 0:
                    mem[0] = mem[_8994 + 127 len 1]
                    mem[32] = 154
                    if packIndices[_8581 << 240] >= uint256(pack[mem[0]].field_0):
                        revert with 0, 50
                    mem[0] = sha3(mem[0], 154)
                    _9143 = sha3(mem[0])
                    _9144 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_9144] = uint16(stor[sha3(mem[0]) + stor155[_8581 << 240]].field_0)
                    mem[_9144 + 32] = Mask(80, 0, stor[_9143 + stor155[_8581 << 240]].field_16)
                    mem[_9144 + 64] = address(stor[_9143 + stor155[_8581 << 240]].field_96)
                    if not address(stor[_9143 + stor155[_8581 << 240]].field_96):
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                        mem[mem[64] + 4] = uint16(_8581)
                        require ext_code.size(sub_7d4cd2b5Address)
                        staticcall sub_7d4cd2b5Address.0x224e5e22 with:
                                gas gas_remaining wei
                               args (_8581 << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9294 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 256] = mem[_9294]
                        if t == -1:
                            revert with 0, 17
                        if uint8(s) == 255:
                            revert with 0, 17
                        if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = uint8(s) + 1
                            t = t + 1
                            continue 
                        _9598 = mem[64]
                        mem[mem[64]] = 64
                        _9629 = mem[96]
                        mem[mem[64] + 64] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 96
                        while idx < _9629:
                            _10260 = mem[t]
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_10260 + 63 len 1]
                            mem[u + 64] = mem[_10260 + 95 len 1]
                            mem[u + 96] = mem[_10260 + 127 len 1]
                            mem[u + 128] = mem[_10260 + 159 len 1]
                            mem[u + 160] = mem[_10260 + 160]
                            mem[u + 192] = mem[_10260 + 192]
                            mem[u + 224] = mem[_10260 + 224]
                            mem[u + 256] = mem[_10260 + 256]
                            idx = idx + 1
                            t = t + 32
                            u = u + 288
                            continue 
                        mem[_9598 + 32] = uint8(uint8(s) + 1)
                        return memory
                          from mem[64]
                           len _9598 + (288 * _9629) + -mem[64] + 96
                    if mem[_8994 + 127 len 1] < 1:
                        revert with 0, 17
                    if uint8(mem[_8994 + 127 len 1] - 1) >= 5:
                        revert with 0, 50
                    if uint256(sub_bc633bf2) < Mask(80, 0, stor[_9143 + stor155[_8581 << 240]].field_16):
                        revert with 0, 17
                    if sub_3f30e8d8[uint8(mem[_8994 + 127 len 1] - 1)] and uint256(sub_bc633bf2) - Mask(80, 0, stor[_9143 + stor155[_8581 << 240]].field_16) > -1 / sub_3f30e8d8[uint8(mem[_8994 + 127 len 1] - 1)]:
                        revert with 0, 17
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 224] = (uint256(sub_bc633bf2) * sub_3f30e8d8[uint8(mem[_8994 + 127 len 1] - 1)]) - (Mask(80, 0, stor[_9143 + stor155[_8581 << 240]].field_16) * sub_3f30e8d8[uint8(mem[_8994 + 127 len 1] - 1)])
                    mem[mem[64] + 4] = uint16(_8581)
                    require ext_code.size(sub_7d4cd2b5Address)
                    staticcall sub_7d4cd2b5Address.0x224e5e22 with:
                            gas gas_remaining wei
                           args (_8581 << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9520 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 256] = mem[_9520]
                    if t == -1:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(s) + 1
                        t = t + 1
                        continue 
                    _9869 = mem[64]
                    mem[mem[64]] = 64
                    _9888 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 96
                    while idx < _9888:
                        _10255 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_10255 + 63 len 1]
                        mem[u + 64] = mem[_10255 + 95 len 1]
                        mem[u + 96] = mem[_10255 + 127 len 1]
                        mem[u + 128] = mem[_10255 + 159 len 1]
                        mem[u + 160] = mem[_10255 + 160]
                        mem[u + 192] = mem[_10255 + 192]
                        mem[u + 224] = mem[_10255 + 224]
                        mem[u + 256] = mem[_10255 + 256]
                        idx = idx + 1
                        t = t + 32
                        u = u + 288
                        continue 
                    mem[_9869 + 32] = uint8(uint8(s) + 1)
                    return memory
                      from mem[64]
                       len _9869 + (288 * _9888) + -mem[64] + 96
                mem[0] = uint16(_8581)
                mem[32] = 153
                _9130 = mem[64]
                mem[64] = mem[64] + 96
                mem[_9130] = uint16(barn[_8581 << 240].field_0)
                mem[_9130 + 32] = Mask(80, 0, barn[_8581 << 240].field_16)
                mem[_9130 + 64] = address(barn[_8581 << 240].field_96)
                if not address(barn[_8581 << 240].field_96):
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                    mem[mem[64] + 4] = uint16(_8581)
                    require ext_code.size(sub_7d4cd2b5Address)
                    staticcall sub_7d4cd2b5Address.0x224e5e22 with:
                            gas gas_remaining wei
                           args (_8581 << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9274 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 256] = mem[_9274]
                    if t == -1:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(s) + 1
                        t = t + 1
                        continue 
                    _9573 = mem[64]
                    mem[mem[64]] = 64
                    _9600 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 96
                    while idx < _9600:
                        _10280 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_10280 + 63 len 1]
                        mem[u + 64] = mem[_10280 + 95 len 1]
                        mem[u + 96] = mem[_10280 + 127 len 1]
                        mem[u + 128] = mem[_10280 + 159 len 1]
                        mem[u + 160] = mem[_10280 + 160]
                        mem[u + 192] = mem[_10280 + 192]
                        mem[u + 224] = mem[_10280 + 224]
                        mem[u + 256] = mem[_10280 + 256]
                        idx = idx + 1
                        t = t + 32
                        u = u + 288
                        continue 
                    mem[_9573 + 32] = uint8(uint8(s) + 1)
                    return memory
                      from mem[64]
                       len _9573 + (288 * _9600) + -mem[64] + 96
                if sub_2d8c2ef1 < 400000000 * 10^18:
                    if mem[_8994 + 127 len 1] < 1:
                        revert with 0, 17
                    if uint8(mem[_8994 + 127 len 1] - 1) >= 8:
                        revert with 0, 50
                    if block.timestamp < Mask(80, 0, barn[_8581 << 240].field_16):
                        revert with 0, 17
                    if block.timestamp - Mask(80, 0, barn[_8581 << 240].field_16) and sub_637d0d7b[uint8(mem[_8994 + 127 len 1] - 1)] > -1 / block.timestamp - Mask(80, 0, barn[_8581 << 240].field_16):
                        revert with 0, 17
                    if (block.timestamp * sub_637d0d7b[uint8(mem[_8994 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_8581 << 240].field_16) * sub_637d0d7b[uint8(mem[_8994 + 127 len 1] - 1)]) / 24 * 3600 and 80 > -1 / (block.timestamp * sub_637d0d7b[uint8(mem[_8994 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_8581 << 240].field_16) * sub_637d0d7b[uint8(mem[_8994 + 127 len 1] - 1)]) / 24 * 3600:
                        revert with 0, 17
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 224] = 80 * (block.timestamp * sub_637d0d7b[uint8(mem[_8994 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_8581 << 240].field_16) * sub_637d0d7b[uint8(mem[_8994 + 127 len 1] - 1)]) / 24 * 3600 / 100
                    mem[mem[64] + 4] = uint16(_8581)
                    require ext_code.size(sub_7d4cd2b5Address)
                    staticcall sub_7d4cd2b5Address.0x224e5e22 with:
                            gas gas_remaining wei
                           args (_8581 << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9870 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 256] = mem[_9870]
                    if t == -1:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(s) + 1
                        t = t + 1
                        continue 
                    _10111 = mem[64]
                    mem[mem[64]] = 64
                    _10122 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 96
                    while idx < _10122:
                        _10275 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_10275 + 63 len 1]
                        mem[u + 64] = mem[_10275 + 95 len 1]
                        mem[u + 96] = mem[_10275 + 127 len 1]
                        mem[u + 128] = mem[_10275 + 159 len 1]
                        mem[u + 160] = mem[_10275 + 160]
                        mem[u + 192] = mem[_10275 + 192]
                        mem[u + 224] = mem[_10275 + 224]
                        mem[u + 256] = mem[_10275 + 256]
                        idx = idx + 1
                        t = t + 32
                        u = u + 288
                        continue 
                    mem[_10111 + 32] = uint8(uint8(s) + 1)
                    return memory
                      from mem[64]
                       len _10111 + (288 * _10122) + -mem[64] + 96
                if Mask(80, 0, barn[_8581 << 240].field_16) > lastClaimTimestamp:
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                    mem[mem[64] + 4] = uint16(_8581)
                    require ext_code.size(sub_7d4cd2b5Address)
                    staticcall sub_7d4cd2b5Address.0x224e5e22 with:
                            gas gas_remaining wei
                           args (_8581 << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9547 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 256] = mem[_9547]
                    if t == -1:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(s) + 1
                        t = t + 1
                        continue 
                    _9890 = mem[64]
                    mem[mem[64]] = 64
                    _9912 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 96
                    while idx < _9912:
                        _10270 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_10270 + 63 len 1]
                        mem[u + 64] = mem[_10270 + 95 len 1]
                        mem[u + 96] = mem[_10270 + 127 len 1]
                        mem[u + 128] = mem[_10270 + 159 len 1]
                        mem[u + 160] = mem[_10270 + 160]
                        mem[u + 192] = mem[_10270 + 192]
                        mem[u + 224] = mem[_10270 + 224]
                        mem[u + 256] = mem[_10270 + 256]
                        idx = idx + 1
                        t = t + 32
                        u = u + 288
                        continue 
                    mem[_9890 + 32] = uint8(uint8(s) + 1)
                    return memory
                      from mem[64]
                       len _9890 + (288 * _9912) + -mem[64] + 96
                if mem[_8994 + 127 len 1] < 1:
                    revert with 0, 17
                if uint8(mem[_8994 + 127 len 1] - 1) >= 8:
                    revert with 0, 50
                if lastClaimTimestamp < Mask(80, 0, barn[_8581 << 240].field_16):
                    revert with 0, 17
                if lastClaimTimestamp - Mask(80, 0, barn[_8581 << 240].field_16) and sub_637d0d7b[uint8(mem[_8994 + 127 len 1] - 1)] > -1 / lastClaimTimestamp - Mask(80, 0, barn[_8581 << 240].field_16):
                    revert with 0, 17
                if (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_8994 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_8581 << 240].field_16) * sub_637d0d7b[uint8(mem[_8994 + 127 len 1] - 1)]) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_8994 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_8581 << 240].field_16) * sub_637d0d7b[uint8(mem[_8994 + 127 len 1] - 1)]) / 24 * 3600:
                    revert with 0, 17
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 224] = 80 * (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_8994 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_8581 << 240].field_16) * sub_637d0d7b[uint8(mem[_8994 + 127 len 1] - 1)]) / 24 * 3600 / 100
                mem[mem[64] + 4] = uint16(_8581)
                require ext_code.size(sub_7d4cd2b5Address)
                staticcall sub_7d4cd2b5Address.0x224e5e22 with:
                        gas gas_remaining wei
                       args (_8581 << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _9889 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 256] = mem[_9889]
                if t == -1:
                    revert with 0, 17
                if uint8(s) == 255:
                    revert with 0, 17
                if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(s) + 1
                    t = t + 1
                    continue 
                _10121 = mem[64]
                mem[mem[64]] = 64
                _10131 = mem[96]
                mem[mem[64] + 64] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 96
                while idx < _10131:
                    _10265 = mem[t]
                    mem[u] = mem[mem[t]]
                    mem[u + 32] = mem[_10265 + 63 len 1]
                    mem[u + 64] = mem[_10265 + 95 len 1]
                    mem[u + 96] = mem[_10265 + 127 len 1]
                    mem[u + 128] = mem[_10265 + 159 len 1]
                    mem[u + 160] = mem[_10265 + 160]
                    mem[u + 192] = mem[_10265 + 192]
                    mem[u + 224] = mem[_10265 + 224]
                    mem[u + 256] = mem[_10265 + 256]
                    idx = idx + 1
                    t = t + 32
                    u = u + 288
                    continue 
                mem[_10121 + 32] = uint8(uint8(s) + 1)
                return memory
                  from mem[64]
                   len _10121 + (288 * _10131) + -mem[64] + 96
            _8616 = mem[64]
            mem[mem[64]] = 64
            _8654 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            t = 128
            u = mem[64] + 96
            while idx < _8654:
                _10215 = mem[t]
                mem[u] = mem[mem[t]]
                mem[u + 32] = mem[_10215 + 63 len 1]
                mem[u + 64] = mem[_10215 + 95 len 1]
                mem[u + 96] = mem[_10215 + 127 len 1]
                mem[u + 128] = mem[_10215 + 159 len 1]
                mem[u + 160] = mem[_10215 + 160]
                mem[u + 192] = mem[_10215 + 192]
                mem[u + 224] = mem[_10215 + 224]
                mem[u + 256] = mem[_10215 + 256]
                idx = idx + 1
                t = t + 32
                u = u + 288
                continue 
            mem[_8616 + 32] = uint8(s)
            return memory
              from mem[64]
               len _8616 + (288 * _8654) + -mem[64] + 96
        idx = 0
        s = 0
        t = arg2
        while uint8(idx) < arg3:
            if t >= mem[_6255]:
                revert with 0, 50
            _8583 = mem[(32 * t) + _6255 + 32]
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128]] = mem[(32 * t) + _6255 + 62 len 2]
            require ext_code.size(minerAddress)
            staticcall minerAddress.getTokenTraits(uint256 arg1) with:
                    gas gas_remaining wei
                   args (_8583 << 240)
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _8800 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _8816 = mem[64]
            if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 128
            require mem[_8800] == mem[_8800 + 31 len 1]
            mem[_8816] = mem[_8800]
            require mem[_8800 + 32] == mem[_8800 + 63 len 1]
            mem[_8816 + 32] = mem[_8800 + 32]
            require mem[_8800 + 64] == mem[_8800 + 95 len 1]
            mem[_8816 + 64] = mem[_8800 + 64]
            require mem[_8800 + 96] == mem[_8800 + 127 len 1]
            mem[_8816 + 96] = mem[_8800 + 96]
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128] + 32] = mem[_8816 + 31 len 1]
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128] + 64] = mem[_8816 + 63 len 1]
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128] + 96] = mem[_8816 + 95 len 1]
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128] + 128] = mem[_8816 + 127 len 1]
            if mem[_8816 + 63 len 1]:
                require ext_code.size(minerAddress)
                staticcall minerAddress.getTokenTraits(uint256 arg1) with:
                        gas gas_remaining wei
                       args (_8583 << 240)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _8939 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _8953 = mem[64]
                if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 128
                require mem[_8939] == mem[_8939 + 31 len 1]
                mem[_8953] = mem[_8939]
                require mem[_8939 + 32] == mem[_8939 + 63 len 1]
                mem[_8953 + 32] = mem[_8939 + 32]
                require mem[_8939 + 64] == mem[_8939 + 95 len 1]
                mem[_8953 + 64] = mem[_8939 + 64]
                require mem[_8939 + 96] == mem[_8939 + 127 len 1]
                mem[_8953 + 96] = mem[_8939 + 96]
                if 0 == mem[_8953 + 127 len 1]:
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 256] = 0
                    if t == -1:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(s) + 1
                        t = t + 1
                        continue 
                    _9187 = mem[64]
                    mem[mem[64]] = 64
                    _9202 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 96
                    while idx < _9202:
                        _10325 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_10325 + 63 len 1]
                        mem[u + 64] = mem[_10325 + 95 len 1]
                        mem[u + 96] = mem[_10325 + 127 len 1]
                        mem[u + 128] = mem[_10325 + 159 len 1]
                        mem[u + 160] = mem[_10325 + 160]
                        mem[u + 192] = mem[_10325 + 192]
                        mem[u + 224] = mem[_10325 + 224]
                        mem[u + 256] = mem[_10325 + 256]
                        idx = idx + 1
                        t = t + 32
                        u = u + 288
                        continue 
                    mem[_9187 + 32] = uint8(uint8(s) + 1)
                    return memory
                      from mem[64]
                       len _9187 + (288 * _9202) + -mem[64] + 96
                if mem[_8953 + 63 len 1] != 0:
                    mem[0] = mem[_8953 + 127 len 1]
                    mem[32] = 154
                    if packIndices[_8583 << 240] >= uint256(pack[mem[0]].field_0):
                        revert with 0, 50
                    mem[0] = sha3(mem[0], 154)
                    _9031 = sha3(mem[0])
                    _9032 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_9032] = uint16(stor[sha3(mem[0]) + stor155[_8583 << 240]].field_0)
                    mem[_9032 + 32] = Mask(80, 0, stor[_9031 + stor155[_8583 << 240]].field_16)
                    mem[_9032 + 64] = address(stor[_9031 + stor155[_8583 << 240]].field_96)
                    if not address(stor[_9031 + stor155[_8583 << 240]].field_96):
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 256] = 0
                        if t == -1:
                            revert with 0, 17
                        if uint8(s) == 255:
                            revert with 0, 17
                        if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = uint8(s) + 1
                            t = t + 1
                            continue 
                        _9240 = mem[64]
                        mem[mem[64]] = 64
                        _9263 = mem[96]
                        mem[mem[64] + 64] = mem[96]
                        t = 0
                        u = 128
                        v = mem[64] + 96
                        while t < _9263:
                            _10300 = mem[u]
                            mem[v] = mem[mem[u]]
                            mem[v + 32] = mem[_10300 + 63 len 1]
                            mem[v + 64] = mem[_10300 + 95 len 1]
                            mem[v + 96] = mem[_10300 + 127 len 1]
                            mem[v + 128] = mem[_10300 + 159 len 1]
                            mem[v + 160] = mem[_10300 + 160]
                            mem[v + 192] = mem[_10300 + 192]
                            mem[v + 224] = mem[_10300 + 224]
                            mem[v + 256] = mem[_10300 + 256]
                            t = t + 1
                            u = u + 32
                            v = v + 288
                            continue 
                        mem[_9240 + 32] = uint8(uint8(_9240 + (288 * _9263) + 96) + 1)
                        return memory
                          from mem[64]
                           len _9240 + (288 * _9263) + -mem[64] + 96
                    if mem[_8953 + 127 len 1] < 1:
                        revert with 0, 17
                    if uint8(mem[_8953 + 127 len 1] - 1) >= 5:
                        revert with 0, 50
                    if uint256(sub_bc633bf2) < Mask(80, 0, stor[_9031 + stor155[_8583 << 240]].field_16):
                        revert with 0, 17
                    if sub_3f30e8d8[uint8(mem[_8953 + 127 len 1] - 1)] and uint256(sub_bc633bf2) - Mask(80, 0, stor[_9031 + stor155[_8583 << 240]].field_16) > -1 / sub_3f30e8d8[uint8(mem[_8953 + 127 len 1] - 1)]:
                        revert with 0, 17
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 224] = (uint256(sub_bc633bf2) * sub_3f30e8d8[uint8(mem[_8953 + 127 len 1] - 1)]) - (Mask(80, 0, stor[_9031 + stor155[_8583 << 240]].field_16) * sub_3f30e8d8[uint8(mem[_8953 + 127 len 1] - 1)])
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 256] = 0
                    if t == -1:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(s) + 1
                        t = t + 1
                        continue 
                    _9443 = mem[64]
                    mem[mem[64]] = 64
                    _9464 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 96
                    while idx < _9464:
                        _10295 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_10295 + 63 len 1]
                        mem[u + 64] = mem[_10295 + 95 len 1]
                        mem[u + 96] = mem[_10295 + 127 len 1]
                        mem[u + 128] = mem[_10295 + 159 len 1]
                        mem[u + 160] = mem[_10295 + 160]
                        mem[u + 192] = mem[_10295 + 192]
                        mem[u + 224] = mem[_10295 + 224]
                        mem[u + 256] = mem[_10295 + 256]
                        idx = idx + 1
                        t = t + 32
                        u = u + 288
                        continue 
                    mem[_9443 + 32] = uint8(uint8(s) + 1)
                    return memory
                      from mem[64]
                       len _9443 + (288 * _9464) + -mem[64] + 96
                mem[0] = uint16(_8583)
                mem[32] = 153
                _9024 = mem[64]
                mem[64] = mem[64] + 96
                mem[_9024] = uint16(barn[_8583 << 240].field_0)
                mem[_9024 + 32] = Mask(80, 0, barn[_8583 << 240].field_16)
                mem[_9024 + 64] = address(barn[_8583 << 240].field_96)
                if not address(barn[_8583 << 240].field_96):
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 256] = 0
                    if t == -1:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(s) + 1
                        t = t + 1
                        continue 
                    _9223 = mem[64]
                    mem[mem[64]] = 64
                    _9241 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 96
                    while idx < _9241:
                        _10320 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_10320 + 63 len 1]
                        mem[u + 64] = mem[_10320 + 95 len 1]
                        mem[u + 96] = mem[_10320 + 127 len 1]
                        mem[u + 128] = mem[_10320 + 159 len 1]
                        mem[u + 160] = mem[_10320 + 160]
                        mem[u + 192] = mem[_10320 + 192]
                        mem[u + 224] = mem[_10320 + 224]
                        mem[u + 256] = mem[_10320 + 256]
                        idx = idx + 1
                        t = t + 32
                        u = u + 288
                        continue 
                    mem[_9223 + 32] = uint8(uint8(s) + 1)
                    return memory
                      from mem[64]
                       len _9223 + (288 * _9241) + -mem[64] + 96
                if sub_2d8c2ef1 < 400000000 * 10^18:
                    if mem[_8953 + 127 len 1] < 1:
                        revert with 0, 17
                    if uint8(mem[_8953 + 127 len 1] - 1) >= 8:
                        revert with 0, 50
                    if block.timestamp < Mask(80, 0, barn[_8583 << 240].field_16):
                        revert with 0, 17
                    if block.timestamp - Mask(80, 0, barn[_8583 << 240].field_16) and sub_637d0d7b[uint8(mem[_8953 + 127 len 1] - 1)] > -1 / block.timestamp - Mask(80, 0, barn[_8583 << 240].field_16):
                        revert with 0, 17
                    if (block.timestamp * sub_637d0d7b[uint8(mem[_8953 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_8583 << 240].field_16) * sub_637d0d7b[uint8(mem[_8953 + 127 len 1] - 1)]) / 24 * 3600 and 80 > -1 / (block.timestamp * sub_637d0d7b[uint8(mem[_8953 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_8583 << 240].field_16) * sub_637d0d7b[uint8(mem[_8953 + 127 len 1] - 1)]) / 24 * 3600:
                        revert with 0, 17
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 224] = 80 * (block.timestamp * sub_637d0d7b[uint8(mem[_8953 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_8583 << 240].field_16) * sub_637d0d7b[uint8(mem[_8953 + 127 len 1] - 1)]) / 24 * 3600 / 100
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 256] = 0
                    if t == -1:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(s) + 1
                        t = t + 1
                        continue 
                    _9803 = mem[64]
                    mem[mem[64]] = 64
                    _9829 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 96
                    while idx < _9829:
                        _10315 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_10315 + 63 len 1]
                        mem[u + 64] = mem[_10315 + 95 len 1]
                        mem[u + 96] = mem[_10315 + 127 len 1]
                        mem[u + 128] = mem[_10315 + 159 len 1]
                        mem[u + 160] = mem[_10315 + 160]
                        mem[u + 192] = mem[_10315 + 192]
                        mem[u + 224] = mem[_10315 + 224]
                        mem[u + 256] = mem[_10315 + 256]
                        idx = idx + 1
                        t = t + 32
                        u = u + 288
                        continue 
                    mem[_9803 + 32] = uint8(uint8(s) + 1)
                    return memory
                      from mem[64]
                       len _9803 + (288 * _9829) + -mem[64] + 96
                if Mask(80, 0, barn[_8583 << 240].field_16) > lastClaimTimestamp:
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 256] = 0
                    if t == -1:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(s) + 1
                        t = t + 1
                        continue 
                    _9466 = mem[64]
                    mem[mem[64]] = 64
                    _9496 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 96
                    while idx < _9496:
                        _10310 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_10310 + 63 len 1]
                        mem[u + 64] = mem[_10310 + 95 len 1]
                        mem[u + 96] = mem[_10310 + 127 len 1]
                        mem[u + 128] = mem[_10310 + 159 len 1]
                        mem[u + 160] = mem[_10310 + 160]
                        mem[u + 192] = mem[_10310 + 192]
                        mem[u + 224] = mem[_10310 + 224]
                        mem[u + 256] = mem[_10310 + 256]
                        idx = idx + 1
                        t = t + 32
                        u = u + 288
                        continue 
                    mem[_9466 + 32] = uint8(uint8(s) + 1)
                    return memory
                      from mem[64]
                       len _9466 + (288 * _9496) + -mem[64] + 96
                if mem[_8953 + 127 len 1] < 1:
                    revert with 0, 17
                if uint8(mem[_8953 + 127 len 1] - 1) >= 8:
                    revert with 0, 50
                if lastClaimTimestamp < Mask(80, 0, barn[_8583 << 240].field_16):
                    revert with 0, 17
                if lastClaimTimestamp - Mask(80, 0, barn[_8583 << 240].field_16) and sub_637d0d7b[uint8(mem[_8953 + 127 len 1] - 1)] > -1 / lastClaimTimestamp - Mask(80, 0, barn[_8583 << 240].field_16):
                    revert with 0, 17
                if (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_8953 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_8583 << 240].field_16) * sub_637d0d7b[uint8(mem[_8953 + 127 len 1] - 1)]) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_8953 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_8583 << 240].field_16) * sub_637d0d7b[uint8(mem[_8953 + 127 len 1] - 1)]) / 24 * 3600:
                    revert with 0, 17
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 224] = 80 * (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_8953 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_8583 << 240].field_16) * sub_637d0d7b[uint8(mem[_8953 + 127 len 1] - 1)]) / 24 * 3600 / 100
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 256] = 0
                if t == -1:
                    revert with 0, 17
                if uint8(s) == 255:
                    revert with 0, 17
                if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(s) + 1
                    t = t + 1
                    continue 
                _9828 = mem[64]
                mem[mem[64]] = 64
                _9851 = mem[96]
                mem[mem[64] + 64] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 96
                while idx < _9851:
                    _10305 = mem[t]
                    mem[u] = mem[mem[t]]
                    mem[u + 32] = mem[_10305 + 63 len 1]
                    mem[u + 64] = mem[_10305 + 95 len 1]
                    mem[u + 96] = mem[_10305 + 127 len 1]
                    mem[u + 128] = mem[_10305 + 159 len 1]
                    mem[u + 160] = mem[_10305 + 160]
                    mem[u + 192] = mem[_10305 + 192]
                    mem[u + 224] = mem[_10305 + 224]
                    mem[u + 256] = mem[_10305 + 256]
                    idx = idx + 1
                    t = t + 32
                    u = u + 288
                    continue 
                mem[_9828 + 32] = uint8(uint8(s) + 1)
                return memory
                  from mem[64]
                   len _9828 + (288 * _9851) + -mem[64] + 96
            mem[0] = uint16(_8583)
            mem[32] = 153
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128] + 160] = Mask(80, 0, barn[_8583 << 240].field_16)
            mem[mem[64] + 4] = uint16(_8583)
            require ext_code.size(shieldAddress)
            staticcall shieldAddress.0x478ba63b with:
                    gas gas_remaining wei
                   args (_8583 << 240)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _8940 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128] + 192] = mem[_8940]
            require ext_code.size(minerAddress)
            staticcall minerAddress.getTokenTraits(uint256 arg1) with:
                    gas gas_remaining wei
                   args (_8583 << 240)
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _8988 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _8996 = mem[64]
            if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 128
            require mem[_8988] == mem[_8988 + 31 len 1]
            mem[_8996] = mem[_8988]
            require mem[_8988 + 32] == mem[_8988 + 63 len 1]
            mem[_8996 + 32] = mem[_8988 + 32]
            require mem[_8988 + 64] == mem[_8988 + 95 len 1]
            mem[_8996 + 64] = mem[_8988 + 64]
            require mem[_8988 + 96] == mem[_8988 + 127 len 1]
            mem[_8996 + 96] = mem[_8988 + 96]
            if 0 == mem[_8996 + 127 len 1]:
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 256] = 0
                if t == -1:
                    revert with 0, 17
                if uint8(s) == 255:
                    revert with 0, 17
                if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(s) + 1
                    t = t + 1
                    continue 
                _9384 = mem[64]
                mem[mem[64]] = 64
                _9406 = mem[96]
                mem[mem[64] + 64] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 96
                while idx < _9406:
                    _10360 = mem[t]
                    mem[u] = mem[mem[t]]
                    mem[u + 32] = mem[_10360 + 63 len 1]
                    mem[u + 64] = mem[_10360 + 95 len 1]
                    mem[u + 96] = mem[_10360 + 127 len 1]
                    mem[u + 128] = mem[_10360 + 159 len 1]
                    mem[u + 160] = mem[_10360 + 160]
                    mem[u + 192] = mem[_10360 + 192]
                    mem[u + 224] = mem[_10360 + 224]
                    mem[u + 256] = mem[_10360 + 256]
                    idx = idx + 1
                    t = t + 32
                    u = u + 288
                    continue 
                mem[_9384 + 32] = uint8(uint8(s) + 1)
                return memory
                  from mem[64]
                   len _9384 + (288 * _9406) + -mem[64] + 96
            if mem[_8996 + 63 len 1] != 0:
                mem[0] = mem[_8996 + 127 len 1]
                mem[32] = 154
                if packIndices[_8583 << 240] >= uint256(pack[mem[0]].field_0):
                    revert with 0, 50
                mem[0] = sha3(mem[0], 154)
                _9146 = sha3(mem[0])
                _9147 = mem[64]
                mem[64] = mem[64] + 96
                mem[_9147] = uint16(stor[sha3(mem[0]) + stor155[_8583 << 240]].field_0)
                mem[_9147 + 32] = Mask(80, 0, stor[_9146 + stor155[_8583 << 240]].field_16)
                mem[_9147 + 64] = address(stor[_9146 + stor155[_8583 << 240]].field_96)
                if not address(stor[_9146 + stor155[_8583 << 240]].field_96):
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 256] = 0
                    if t == -1:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(s) + 1
                        t = t + 1
                        continue 
                    _9446 = mem[64]
                    mem[mem[64]] = 64
                    _9469 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 96
                    while idx < _9469:
                        _10335 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_10335 + 63 len 1]
                        mem[u + 64] = mem[_10335 + 95 len 1]
                        mem[u + 96] = mem[_10335 + 127 len 1]
                        mem[u + 128] = mem[_10335 + 159 len 1]
                        mem[u + 160] = mem[_10335 + 160]
                        mem[u + 192] = mem[_10335 + 192]
                        mem[u + 224] = mem[_10335 + 224]
                        mem[u + 256] = mem[_10335 + 256]
                        idx = idx + 1
                        t = t + 32
                        u = u + 288
                        continue 
                    mem[_9446 + 32] = uint8(uint8(s) + 1)
                    return memory
                      from mem[64]
                       len _9446 + (288 * _9469) + -mem[64] + 96
                if mem[_8996 + 127 len 1] < 1:
                    revert with 0, 17
                if uint8(mem[_8996 + 127 len 1] - 1) >= 5:
                    revert with 0, 50
                if uint256(sub_bc633bf2) < Mask(80, 0, stor[_9146 + stor155[_8583 << 240]].field_16):
                    revert with 0, 17
                if sub_3f30e8d8[uint8(mem[_8996 + 127 len 1] - 1)] and uint256(sub_bc633bf2) - Mask(80, 0, stor[_9146 + stor155[_8583 << 240]].field_16) > -1 / sub_3f30e8d8[uint8(mem[_8996 + 127 len 1] - 1)]:
                    revert with 0, 17
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 224] = (uint256(sub_bc633bf2) * sub_3f30e8d8[uint8(mem[_8996 + 127 len 1] - 1)]) - (Mask(80, 0, stor[_9146 + stor155[_8583 << 240]].field_16) * sub_3f30e8d8[uint8(mem[_8996 + 127 len 1] - 1)])
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 256] = 0
                if t == -1:
                    revert with 0, 17
                if uint8(s) == 255:
                    revert with 0, 17
                if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(s) + 1
                    t = t + 1
                    continue 
                _9730 = mem[64]
                mem[mem[64]] = 64
                _9745 = mem[96]
                mem[mem[64] + 64] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 96
                while idx < _9745:
                    _10330 = mem[t]
                    mem[u] = mem[mem[t]]
                    mem[u + 32] = mem[_10330 + 63 len 1]
                    mem[u + 64] = mem[_10330 + 95 len 1]
                    mem[u + 96] = mem[_10330 + 127 len 1]
                    mem[u + 128] = mem[_10330 + 159 len 1]
                    mem[u + 160] = mem[_10330 + 160]
                    mem[u + 192] = mem[_10330 + 192]
                    mem[u + 224] = mem[_10330 + 224]
                    mem[u + 256] = mem[_10330 + 256]
                    idx = idx + 1
                    t = t + 32
                    u = u + 288
                    continue 
                mem[_9730 + 32] = uint8(uint8(s) + 1)
                return memory
                  from mem[64]
                   len _9730 + (288 * _9745) + -mem[64] + 96
            mem[0] = uint16(_8583)
            mem[32] = 153
            _9135 = mem[64]
            mem[64] = mem[64] + 96
            mem[_9135] = uint16(barn[_8583 << 240].field_0)
            mem[_9135 + 32] = Mask(80, 0, barn[_8583 << 240].field_16)
            mem[_9135 + 64] = address(barn[_8583 << 240].field_96)
            if not address(barn[_8583 << 240].field_96):
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 256] = 0
                if t == -1:
                    revert with 0, 17
                if uint8(s) == 255:
                    revert with 0, 17
                if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(s) + 1
                    t = t + 1
                    continue 
                _9426 = mem[64]
                mem[mem[64]] = 64
                _9447 = mem[96]
                mem[mem[64] + 64] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 96
                while idx < _9447:
                    _10355 = mem[t]
                    mem[u] = mem[mem[t]]
                    mem[u + 32] = mem[_10355 + 63 len 1]
                    mem[u + 64] = mem[_10355 + 95 len 1]
                    mem[u + 96] = mem[_10355 + 127 len 1]
                    mem[u + 128] = mem[_10355 + 159 len 1]
                    mem[u + 160] = mem[_10355 + 160]
                    mem[u + 192] = mem[_10355 + 192]
                    mem[u + 224] = mem[_10355 + 224]
                    mem[u + 256] = mem[_10355 + 256]
                    idx = idx + 1
                    t = t + 32
                    u = u + 288
                    continue 
                mem[_9426 + 32] = uint8(uint8(s) + 1)
                return memory
                  from mem[64]
                   len _9426 + (288 * _9447) + -mem[64] + 96
            if sub_2d8c2ef1 < 400000000 * 10^18:
                if mem[_8996 + 127 len 1] < 1:
                    revert with 0, 17
                if uint8(mem[_8996 + 127 len 1] - 1) >= 8:
                    revert with 0, 50
                if block.timestamp < Mask(80, 0, barn[_8583 << 240].field_16):
                    revert with 0, 17
                if block.timestamp - Mask(80, 0, barn[_8583 << 240].field_16) and sub_637d0d7b[uint8(mem[_8996 + 127 len 1] - 1)] > -1 / block.timestamp - Mask(80, 0, barn[_8583 << 240].field_16):
                    revert with 0, 17
                if (block.timestamp * sub_637d0d7b[uint8(mem[_8996 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_8583 << 240].field_16) * sub_637d0d7b[uint8(mem[_8996 + 127 len 1] - 1)]) / 24 * 3600 and 80 > -1 / (block.timestamp * sub_637d0d7b[uint8(mem[_8996 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_8583 << 240].field_16) * sub_637d0d7b[uint8(mem[_8996 + 127 len 1] - 1)]) / 24 * 3600:
                    revert with 0, 17
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 224] = 80 * (block.timestamp * sub_637d0d7b[uint8(mem[_8996 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_8583 << 240].field_16) * sub_637d0d7b[uint8(mem[_8996 + 127 len 1] - 1)]) / 24 * 3600 / 100
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 256] = 0
                if t == -1:
                    revert with 0, 17
                if uint8(s) == 255:
                    revert with 0, 17
                if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(s) + 1
                    t = t + 1
                    continue 
                _10024 = mem[64]
                mem[mem[64]] = 64
                _10038 = mem[96]
                mem[mem[64] + 64] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 96
                while idx < _10038:
                    _10350 = mem[t]
                    mem[u] = mem[mem[t]]
                    mem[u + 32] = mem[_10350 + 63 len 1]
                    mem[u + 64] = mem[_10350 + 95 len 1]
                    mem[u + 96] = mem[_10350 + 127 len 1]
                    mem[u + 128] = mem[_10350 + 159 len 1]
                    mem[u + 160] = mem[_10350 + 160]
                    mem[u + 192] = mem[_10350 + 192]
                    mem[u + 224] = mem[_10350 + 224]
                    mem[u + 256] = mem[_10350 + 256]
                    idx = idx + 1
                    t = t + 32
                    u = u + 288
                    continue 
                mem[_10024 + 32] = uint8(uint8(s) + 1)
                return memory
                  from mem[64]
                   len _10024 + (288 * _10038) + -mem[64] + 96
            if Mask(80, 0, barn[_8583 << 240].field_16) > lastClaimTimestamp:
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 256] = 0
                if t == -1:
                    revert with 0, 17
                if uint8(s) == 255:
                    revert with 0, 17
                if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(s) + 1
                    t = t + 1
                    continue 
                _9747 = mem[64]
                mem[mem[64]] = 64
                _9777 = mem[96]
                mem[mem[64] + 64] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 96
                while idx < _9777:
                    _10345 = mem[t]
                    mem[u] = mem[mem[t]]
                    mem[u + 32] = mem[_10345 + 63 len 1]
                    mem[u + 64] = mem[_10345 + 95 len 1]
                    mem[u + 96] = mem[_10345 + 127 len 1]
                    mem[u + 128] = mem[_10345 + 159 len 1]
                    mem[u + 160] = mem[_10345 + 160]
                    mem[u + 192] = mem[_10345 + 192]
                    mem[u + 224] = mem[_10345 + 224]
                    mem[u + 256] = mem[_10345 + 256]
                    idx = idx + 1
                    t = t + 32
                    u = u + 288
                    continue 
                mem[_9747 + 32] = uint8(uint8(s) + 1)
                return memory
                  from mem[64]
                   len _9747 + (288 * _9777) + -mem[64] + 96
            if mem[_8996 + 127 len 1] < 1:
                revert with 0, 17
            if uint8(mem[_8996 + 127 len 1] - 1) >= 8:
                revert with 0, 50
            if lastClaimTimestamp < Mask(80, 0, barn[_8583 << 240].field_16):
                revert with 0, 17
            if lastClaimTimestamp - Mask(80, 0, barn[_8583 << 240].field_16) and sub_637d0d7b[uint8(mem[_8996 + 127 len 1] - 1)] > -1 / lastClaimTimestamp - Mask(80, 0, barn[_8583 << 240].field_16):
                revert with 0, 17
            if (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_8996 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_8583 << 240].field_16) * sub_637d0d7b[uint8(mem[_8996 + 127 len 1] - 1)]) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_8996 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_8583 << 240].field_16) * sub_637d0d7b[uint8(mem[_8996 + 127 len 1] - 1)]) / 24 * 3600:
                revert with 0, 17
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128] + 224] = 80 * (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_8996 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_8583 << 240].field_16) * sub_637d0d7b[uint8(mem[_8996 + 127 len 1] - 1)]) / 24 * 3600 / 100
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128] + 256] = 0
            if t == -1:
                revert with 0, 17
            if uint8(s) == 255:
                revert with 0, 17
            if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                if uint8(idx) == 255:
                    revert with 0, 17
                idx = uint8(idx) + 1
                s = uint8(s) + 1
                t = t + 1
                continue 
            _10037 = mem[64]
            mem[mem[64]] = 64
            _10051 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            t = 128
            u = mem[64] + 96
            while idx < _10051:
                _10340 = mem[t]
                mem[u] = mem[mem[t]]
                mem[u + 32] = mem[_10340 + 63 len 1]
                mem[u + 64] = mem[_10340 + 95 len 1]
                mem[u + 96] = mem[_10340 + 127 len 1]
                mem[u + 128] = mem[_10340 + 159 len 1]
                mem[u + 160] = mem[_10340 + 160]
                mem[u + 192] = mem[_10340 + 192]
                mem[u + 224] = mem[_10340 + 224]
                mem[u + 256] = mem[_10340 + 256]
                idx = idx + 1
                t = t + 32
                u = u + 288
                continue 
            mem[_10037 + 32] = uint8(uint8(s) + 1)
            return memory
              from mem[64]
               len _10037 + (288 * _10051) + -mem[64] + 96
        _8619 = mem[64]
        mem[mem[64]] = 64
        _8655 = mem[96]
        mem[mem[64] + 64] = mem[96]
        idx = 0
        t = 128
        u = mem[64] + 96
        while idx < _8655:
            _10290 = mem[t]
            mem[u] = mem[mem[t]]
            mem[u + 32] = mem[_10290 + 63 len 1]
            mem[u + 64] = mem[_10290 + 95 len 1]
            mem[u + 96] = mem[_10290 + 127 len 1]
            mem[u + 128] = mem[_10290 + 159 len 1]
            mem[u + 160] = mem[_10290 + 160]
            mem[u + 192] = mem[_10290 + 192]
            mem[u + 224] = mem[_10290 + 224]
            mem[u + 256] = mem[_10290 + 256]
            idx = idx + 1
            t = t + 32
            u = u + 288
            continue 
        mem[_8619 + 32] = uint8(s)
        return memory
          from mem[64]
           len _8619 + (288 * _8655) + -mem[64] + 96
    mem[0] = sha3(address(arg1), 179)
    mem[_6255 + 32] = uint16(balanceOf[address(arg1)].field_0)
    idx = _6255 + 32
    s = 0
    while _6255 + (32 * uint256(balanceOf[address(arg1)].field_0)) > idx:
        mem[idx + 32] = uint16(balanceOf[address(arg1)].field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
        idx = idx + 32
        s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
        continue 
    if sub_7d4cd2b5Address != 0xfb4c2c55180cf3a6b6acacb825cbcc9085858edc:
        idx = 0
        s = 0
        t = arg2
        while uint8(idx) < arg3:
            if t >= mem[_6255]:
                revert with 0, 50
            _10367 = mem[(32 * t) + _6255 + 32]
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128]] = mem[(32 * t) + _6255 + 62 len 2]
            require ext_code.size(minerAddress)
            staticcall minerAddress.getTokenTraits(uint256 arg1) with:
                    gas gas_remaining wei
                   args (_10367 << 240)
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _10571 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _10576 = mem[64]
            if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 128
            require mem[_10571] == mem[_10571 + 31 len 1]
            mem[_10576] = mem[_10571]
            require mem[_10571 + 32] == mem[_10571 + 63 len 1]
            mem[_10576 + 32] = mem[_10571 + 32]
            require mem[_10571 + 64] == mem[_10571 + 95 len 1]
            mem[_10576 + 64] = mem[_10571 + 64]
            require mem[_10571 + 96] == mem[_10571 + 127 len 1]
            mem[_10576 + 96] = mem[_10571 + 96]
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128] + 32] = mem[_10576 + 31 len 1]
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128] + 64] = mem[_10576 + 63 len 1]
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128] + 96] = mem[_10576 + 95 len 1]
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128] + 128] = mem[_10576 + 127 len 1]
            if mem[_10576 + 63 len 1]:
                require ext_code.size(minerAddress)
                staticcall minerAddress.getTokenTraits(uint256 arg1) with:
                        gas gas_remaining wei
                       args (_10367 << 240)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10635 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _10639 = mem[64]
                if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 128
                require mem[_10635] == mem[_10635 + 31 len 1]
                mem[_10639] = mem[_10635]
                require mem[_10635 + 32] == mem[_10635 + 63 len 1]
                mem[_10639 + 32] = mem[_10635 + 32]
                require mem[_10635 + 64] == mem[_10635 + 95 len 1]
                mem[_10639 + 64] = mem[_10635 + 64]
                require mem[_10635 + 96] == mem[_10635 + 127 len 1]
                mem[_10639 + 96] = mem[_10635 + 96]
                if 0 == mem[_10639 + 127 len 1]:
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                    mem[mem[64] + 4] = uint16(_10367)
                    require ext_code.size(sub_7d4cd2b5Address)
                    staticcall sub_7d4cd2b5Address.0x224e5e22 with:
                            gas gas_remaining wei
                           args (_10367 << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10722 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 256] = mem[_10722]
                    if t == -1:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(s) + 1
                        t = t + 1
                        continue 
                    _10832 = mem[64]
                    mem[mem[64]] = 64
                    _10842 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 96
                    while idx < _10842:
                        _11302 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_11302 + 63 len 1]
                        mem[u + 64] = mem[_11302 + 95 len 1]
                        mem[u + 96] = mem[_11302 + 127 len 1]
                        mem[u + 128] = mem[_11302 + 159 len 1]
                        mem[u + 160] = mem[_11302 + 160]
                        mem[u + 192] = mem[_11302 + 192]
                        mem[u + 224] = mem[_11302 + 224]
                        mem[u + 256] = mem[_11302 + 256]
                        idx = idx + 1
                        t = t + 32
                        u = u + 288
                        continue 
                    mem[_10832 + 32] = uint8(uint8(s) + 1)
                    return memory
                      from mem[64]
                       len _10832 + (288 * _10842) + -mem[64] + 96
                if mem[_10639 + 63 len 1] != 0:
                    mem[0] = mem[_10639 + 127 len 1]
                    mem[32] = 154
                    if packIndices[_10367 << 240] >= uint256(pack[mem[0]].field_0):
                        revert with 0, 50
                    mem[0] = sha3(mem[0], 154)
                    _10681 = sha3(mem[0])
                    _10682 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_10682] = uint16(stor[sha3(mem[0]) + stor155[_10367 << 240]].field_0)
                    mem[_10682 + 32] = Mask(80, 0, stor[_10681 + stor155[_10367 << 240]].field_16)
                    mem[_10682 + 64] = address(stor[_10681 + stor155[_10367 << 240]].field_96)
                    if not address(stor[_10681 + stor155[_10367 << 240]].field_96):
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                        mem[mem[64] + 4] = uint16(_10367)
                        require ext_code.size(sub_7d4cd2b5Address)
                        staticcall sub_7d4cd2b5Address.0x224e5e22 with:
                                gas gas_remaining wei
                               args (_10367 << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10734 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint8(idx) >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * uint8(idx)) + 128] + 256] = mem[_10734]
                        if t == -1:
                            revert with 0, 17
                        if uint8(s) == 255:
                            revert with 0, 17
                        if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = uint8(s) + 1
                            t = t + 1
                            continue 
                        _10857 = mem[64]
                        mem[mem[64]] = 64
                        _10873 = mem[96]
                        mem[mem[64] + 64] = mem[96]
                        t = 0
                        u = 128
                        v = mem[64] + 96
                        while t < _10873:
                            _11277 = mem[u]
                            mem[v] = mem[mem[u]]
                            mem[v + 32] = mem[_11277 + 63 len 1]
                            mem[v + 64] = mem[_11277 + 95 len 1]
                            mem[v + 96] = mem[_11277 + 127 len 1]
                            mem[v + 128] = mem[_11277 + 159 len 1]
                            mem[v + 160] = mem[_11277 + 160]
                            mem[v + 192] = mem[_11277 + 192]
                            mem[v + 224] = mem[_11277 + 224]
                            mem[v + 256] = mem[_11277 + 256]
                            t = t + 1
                            u = u + 32
                            v = v + 288
                            continue 
                        mem[_10857 + 32] = uint8(uint8(_10857 + (288 * _10873) + 96) + 1)
                        return memory
                          from mem[64]
                           len _10857 + (288 * _10873) + -mem[64] + 96
                    if mem[_10639 + 127 len 1] < 1:
                        revert with 0, 17
                    if uint8(mem[_10639 + 127 len 1] - 1) >= 5:
                        revert with 0, 50
                    if uint256(sub_bc633bf2) < Mask(80, 0, stor[_10681 + stor155[_10367 << 240]].field_16):
                        revert with 0, 17
                    if sub_3f30e8d8[uint8(mem[_10639 + 127 len 1] - 1)] and uint256(sub_bc633bf2) - Mask(80, 0, stor[_10681 + stor155[_10367 << 240]].field_16) > -1 / sub_3f30e8d8[uint8(mem[_10639 + 127 len 1] - 1)]:
                        revert with 0, 17
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 224] = (uint256(sub_bc633bf2) * sub_3f30e8d8[uint8(mem[_10639 + 127 len 1] - 1)]) - (Mask(80, 0, stor[_10681 + stor155[_10367 << 240]].field_16) * sub_3f30e8d8[uint8(mem[_10639 + 127 len 1] - 1)])
                    mem[mem[64] + 4] = uint16(_10367)
                    require ext_code.size(sub_7d4cd2b5Address)
                    staticcall sub_7d4cd2b5Address.0x224e5e22 with:
                            gas gas_remaining wei
                           args (_10367 << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10831 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 256] = mem[_10831]
                    if t == -1:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(s) + 1
                        t = t + 1
                        continue 
                    _10992 = mem[64]
                    mem[mem[64]] = 64
                    _11010 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 96
                    while idx < _11010:
                        _11272 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_11272 + 63 len 1]
                        mem[u + 64] = mem[_11272 + 95 len 1]
                        mem[u + 96] = mem[_11272 + 127 len 1]
                        mem[u + 128] = mem[_11272 + 159 len 1]
                        mem[u + 160] = mem[_11272 + 160]
                        mem[u + 192] = mem[_11272 + 192]
                        mem[u + 224] = mem[_11272 + 224]
                        mem[u + 256] = mem[_11272 + 256]
                        idx = idx + 1
                        t = t + 32
                        u = u + 288
                        continue 
                    mem[_10992 + 32] = uint8(uint8(s) + 1)
                    return memory
                      from mem[64]
                       len _10992 + (288 * _11010) + -mem[64] + 96
                mem[0] = uint16(_10367)
                mem[32] = 153
                _10675 = mem[64]
                mem[64] = mem[64] + 96
                mem[_10675] = uint16(barn[_10367 << 240].field_0)
                mem[_10675 + 32] = Mask(80, 0, barn[_10367 << 240].field_16)
                mem[_10675 + 64] = address(barn[_10367 << 240].field_96)
                if not address(barn[_10367 << 240].field_96):
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                    mem[mem[64] + 4] = uint16(_10367)
                    require ext_code.size(sub_7d4cd2b5Address)
                    staticcall sub_7d4cd2b5Address.0x224e5e22 with:
                            gas gas_remaining wei
                           args (_10367 << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10730 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 256] = mem[_10730]
                    if t == -1:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(s) + 1
                        t = t + 1
                        continue 
                    _10851 = mem[64]
                    mem[mem[64]] = 64
                    _10859 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 96
                    while idx < _10859:
                        _11297 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_11297 + 63 len 1]
                        mem[u + 64] = mem[_11297 + 95 len 1]
                        mem[u + 96] = mem[_11297 + 127 len 1]
                        mem[u + 128] = mem[_11297 + 159 len 1]
                        mem[u + 160] = mem[_11297 + 160]
                        mem[u + 192] = mem[_11297 + 192]
                        mem[u + 224] = mem[_11297 + 224]
                        mem[u + 256] = mem[_11297 + 256]
                        idx = idx + 1
                        t = t + 32
                        u = u + 288
                        continue 
                    mem[_10851 + 32] = uint8(uint8(s) + 1)
                    return memory
                      from mem[64]
                       len _10851 + (288 * _10859) + -mem[64] + 96
                if sub_2d8c2ef1 < 400000000 * 10^18:
                    if mem[_10639 + 127 len 1] < 1:
                        revert with 0, 17
                    if uint8(mem[_10639 + 127 len 1] - 1) >= 8:
                        revert with 0, 50
                    if block.timestamp < Mask(80, 0, barn[_10367 << 240].field_16):
                        revert with 0, 17
                    if block.timestamp - Mask(80, 0, barn[_10367 << 240].field_16) and sub_637d0d7b[uint8(mem[_10639 + 127 len 1] - 1)] > -1 / block.timestamp - Mask(80, 0, barn[_10367 << 240].field_16):
                        revert with 0, 17
                    if (block.timestamp * sub_637d0d7b[uint8(mem[_10639 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_10367 << 240].field_16) * sub_637d0d7b[uint8(mem[_10639 + 127 len 1] - 1)]) / 24 * 3600 and 80 > -1 / (block.timestamp * sub_637d0d7b[uint8(mem[_10639 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_10367 << 240].field_16) * sub_637d0d7b[uint8(mem[_10639 + 127 len 1] - 1)]) / 24 * 3600:
                        revert with 0, 17
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 224] = 80 * (block.timestamp * sub_637d0d7b[uint8(mem[_10639 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_10367 << 240].field_16) * sub_637d0d7b[uint8(mem[_10639 + 127 len 1] - 1)]) / 24 * 3600 / 100
                    mem[mem[64] + 4] = uint16(_10367)
                    require ext_code.size(sub_7d4cd2b5Address)
                    staticcall sub_7d4cd2b5Address.0x224e5e22 with:
                            gas gas_remaining wei
                           args (_10367 << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10993 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 256] = mem[_10993]
                    if t == -1:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(s) + 1
                        t = t + 1
                        continue 
                    _11151 = mem[64]
                    mem[mem[64]] = 64
                    _11162 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 96
                    while idx < _11162:
                        _11292 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_11292 + 63 len 1]
                        mem[u + 64] = mem[_11292 + 95 len 1]
                        mem[u + 96] = mem[_11292 + 127 len 1]
                        mem[u + 128] = mem[_11292 + 159 len 1]
                        mem[u + 160] = mem[_11292 + 160]
                        mem[u + 192] = mem[_11292 + 192]
                        mem[u + 224] = mem[_11292 + 224]
                        mem[u + 256] = mem[_11292 + 256]
                        idx = idx + 1
                        t = t + 32
                        u = u + 288
                        continue 
                    mem[_11151 + 32] = uint8(uint8(s) + 1)
                    return memory
                      from mem[64]
                       len _11151 + (288 * _11162) + -mem[64] + 96
                if Mask(80, 0, barn[_10367 << 240].field_16) > lastClaimTimestamp:
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                    mem[mem[64] + 4] = uint16(_10367)
                    require ext_code.size(sub_7d4cd2b5Address)
                    staticcall sub_7d4cd2b5Address.0x224e5e22 with:
                            gas gas_remaining wei
                           args (_10367 << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10841 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 256] = mem[_10841]
                    if t == -1:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(s) + 1
                        t = t + 1
                        continue 
                    _11012 = mem[64]
                    mem[mem[64]] = 64
                    _11025 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 96
                    while idx < _11025:
                        _11287 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_11287 + 63 len 1]
                        mem[u + 64] = mem[_11287 + 95 len 1]
                        mem[u + 96] = mem[_11287 + 127 len 1]
                        mem[u + 128] = mem[_11287 + 159 len 1]
                        mem[u + 160] = mem[_11287 + 160]
                        mem[u + 192] = mem[_11287 + 192]
                        mem[u + 224] = mem[_11287 + 224]
                        mem[u + 256] = mem[_11287 + 256]
                        idx = idx + 1
                        t = t + 32
                        u = u + 288
                        continue 
                    mem[_11012 + 32] = uint8(uint8(s) + 1)
                    return memory
                      from mem[64]
                       len _11012 + (288 * _11025) + -mem[64] + 96
                if mem[_10639 + 127 len 1] < 1:
                    revert with 0, 17
                if uint8(mem[_10639 + 127 len 1] - 1) >= 8:
                    revert with 0, 50
                if lastClaimTimestamp < Mask(80, 0, barn[_10367 << 240].field_16):
                    revert with 0, 17
                if lastClaimTimestamp - Mask(80, 0, barn[_10367 << 240].field_16) and sub_637d0d7b[uint8(mem[_10639 + 127 len 1] - 1)] > -1 / lastClaimTimestamp - Mask(80, 0, barn[_10367 << 240].field_16):
                    revert with 0, 17
                if (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_10639 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_10367 << 240].field_16) * sub_637d0d7b[uint8(mem[_10639 + 127 len 1] - 1)]) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_10639 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_10367 << 240].field_16) * sub_637d0d7b[uint8(mem[_10639 + 127 len 1] - 1)]) / 24 * 3600:
                    revert with 0, 17
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 224] = 80 * (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_10639 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_10367 << 240].field_16) * sub_637d0d7b[uint8(mem[_10639 + 127 len 1] - 1)]) / 24 * 3600 / 100
                mem[mem[64] + 4] = uint16(_10367)
                require ext_code.size(sub_7d4cd2b5Address)
                staticcall sub_7d4cd2b5Address.0x224e5e22 with:
                        gas gas_remaining wei
                       args (_10367 << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11011 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 256] = mem[_11011]
                if t == -1:
                    revert with 0, 17
                if uint8(s) == 255:
                    revert with 0, 17
                if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(s) + 1
                    t = t + 1
                    continue 
                _11161 = mem[64]
                mem[mem[64]] = 64
                _11175 = mem[96]
                mem[mem[64] + 64] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 96
                while idx < _11175:
                    _11282 = mem[t]
                    mem[u] = mem[mem[t]]
                    mem[u + 32] = mem[_11282 + 63 len 1]
                    mem[u + 64] = mem[_11282 + 95 len 1]
                    mem[u + 96] = mem[_11282 + 127 len 1]
                    mem[u + 128] = mem[_11282 + 159 len 1]
                    mem[u + 160] = mem[_11282 + 160]
                    mem[u + 192] = mem[_11282 + 192]
                    mem[u + 224] = mem[_11282 + 224]
                    mem[u + 256] = mem[_11282 + 256]
                    idx = idx + 1
                    t = t + 32
                    u = u + 288
                    continue 
                mem[_11161 + 32] = uint8(uint8(s) + 1)
                return memory
                  from mem[64]
                   len _11161 + (288 * _11175) + -mem[64] + 96
            mem[0] = uint16(_10367)
            mem[32] = 153
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128] + 160] = Mask(80, 0, barn[_10367 << 240].field_16)
            mem[mem[64] + 4] = uint16(_10367)
            require ext_code.size(shieldAddress)
            staticcall shieldAddress.0x478ba63b with:
                    gas gas_remaining wei
                   args (_10367 << 240)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _10636 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128] + 192] = mem[_10636]
            require ext_code.size(minerAddress)
            staticcall minerAddress.getTokenTraits(uint256 arg1) with:
                    gas gas_remaining wei
                   args (_10367 << 240)
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _10657 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _10660 = mem[64]
            if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 128
            require mem[_10657] == mem[_10657 + 31 len 1]
            mem[_10660] = mem[_10657]
            require mem[_10657 + 32] == mem[_10657 + 63 len 1]
            mem[_10660 + 32] = mem[_10657 + 32]
            require mem[_10657 + 64] == mem[_10657 + 95 len 1]
            mem[_10660 + 64] = mem[_10657 + 64]
            require mem[_10657 + 96] == mem[_10657 + 127 len 1]
            mem[_10660 + 96] = mem[_10657 + 96]
            if 0 == mem[_10660 + 127 len 1]:
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                mem[mem[64] + 4] = uint16(_10367)
                require ext_code.size(sub_7d4cd2b5Address)
                staticcall sub_7d4cd2b5Address.0x224e5e22 with:
                        gas gas_remaining wei
                       args (_10367 << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10803 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 256] = mem[_10803]
                if t == -1:
                    revert with 0, 17
                if uint8(s) == 255:
                    revert with 0, 17
                if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(s) + 1
                    t = t + 1
                    continue 
                _10957 = mem[64]
                mem[mem[64]] = 64
                _10972 = mem[96]
                mem[mem[64] + 64] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 96
                while idx < _10972:
                    _11337 = mem[t]
                    mem[u] = mem[mem[t]]
                    mem[u + 32] = mem[_11337 + 63 len 1]
                    mem[u + 64] = mem[_11337 + 95 len 1]
                    mem[u + 96] = mem[_11337 + 127 len 1]
                    mem[u + 128] = mem[_11337 + 159 len 1]
                    mem[u + 160] = mem[_11337 + 160]
                    mem[u + 192] = mem[_11337 + 192]
                    mem[u + 224] = mem[_11337 + 224]
                    mem[u + 256] = mem[_11337 + 256]
                    idx = idx + 1
                    t = t + 32
                    u = u + 288
                    continue 
                mem[_10957 + 32] = uint8(uint8(s) + 1)
                return memory
                  from mem[64]
                   len _10957 + (288 * _10972) + -mem[64] + 96
            if mem[_10660 + 63 len 1] != 0:
                mem[0] = mem[_10660 + 127 len 1]
                mem[32] = 154
                if packIndices[_10367 << 240] >= uint256(pack[mem[0]].field_0):
                    revert with 0, 50
                mem[0] = sha3(mem[0], 154)
                _10748 = sha3(mem[0])
                _10749 = mem[64]
                mem[64] = mem[64] + 96
                mem[_10749] = uint16(stor[sha3(mem[0]) + stor155[_10367 << 240]].field_0)
                mem[_10749 + 32] = Mask(80, 0, stor[_10748 + stor155[_10367 << 240]].field_16)
                mem[_10749 + 64] = address(stor[_10748 + stor155[_10367 << 240]].field_96)
                if not address(stor[_10748 + stor155[_10367 << 240]].field_96):
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                    mem[mem[64] + 4] = uint16(_10367)
                    require ext_code.size(sub_7d4cd2b5Address)
                    staticcall sub_7d4cd2b5Address.0x224e5e22 with:
                            gas gas_remaining wei
                           args (_10367 << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10833 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 256] = mem[_10833]
                    if t == -1:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(s) + 1
                        t = t + 1
                        continue 
                    _10995 = mem[64]
                    mem[mem[64]] = 64
                    _11014 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 96
                    while idx < _11014:
                        _11312 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_11312 + 63 len 1]
                        mem[u + 64] = mem[_11312 + 95 len 1]
                        mem[u + 96] = mem[_11312 + 127 len 1]
                        mem[u + 128] = mem[_11312 + 159 len 1]
                        mem[u + 160] = mem[_11312 + 160]
                        mem[u + 192] = mem[_11312 + 192]
                        mem[u + 224] = mem[_11312 + 224]
                        mem[u + 256] = mem[_11312 + 256]
                        idx = idx + 1
                        t = t + 32
                        u = u + 288
                        continue 
                    mem[_10995 + 32] = uint8(uint8(s) + 1)
                    return memory
                      from mem[64]
                       len _10995 + (288 * _11014) + -mem[64] + 96
                if mem[_10660 + 127 len 1] < 1:
                    revert with 0, 17
                if uint8(mem[_10660 + 127 len 1] - 1) >= 5:
                    revert with 0, 50
                if uint256(sub_bc633bf2) < Mask(80, 0, stor[_10748 + stor155[_10367 << 240]].field_16):
                    revert with 0, 17
                if sub_3f30e8d8[uint8(mem[_10660 + 127 len 1] - 1)] and uint256(sub_bc633bf2) - Mask(80, 0, stor[_10748 + stor155[_10367 << 240]].field_16) > -1 / sub_3f30e8d8[uint8(mem[_10660 + 127 len 1] - 1)]:
                    revert with 0, 17
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 224] = (uint256(sub_bc633bf2) * sub_3f30e8d8[uint8(mem[_10660 + 127 len 1] - 1)]) - (Mask(80, 0, stor[_10748 + stor155[_10367 << 240]].field_16) * sub_3f30e8d8[uint8(mem[_10660 + 127 len 1] - 1)])
                mem[mem[64] + 4] = uint16(_10367)
                require ext_code.size(sub_7d4cd2b5Address)
                staticcall sub_7d4cd2b5Address.0x224e5e22 with:
                        gas gas_remaining wei
                       args (_10367 << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10956 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 256] = mem[_10956]
                if t == -1:
                    revert with 0, 17
                if uint8(s) == 255:
                    revert with 0, 17
                if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(s) + 1
                    t = t + 1
                    continue 
                _11122 = mem[64]
                mem[mem[64]] = 64
                _11131 = mem[96]
                mem[mem[64] + 64] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 96
                while idx < _11131:
                    _11307 = mem[t]
                    mem[u] = mem[mem[t]]
                    mem[u + 32] = mem[_11307 + 63 len 1]
                    mem[u + 64] = mem[_11307 + 95 len 1]
                    mem[u + 96] = mem[_11307 + 127 len 1]
                    mem[u + 128] = mem[_11307 + 159 len 1]
                    mem[u + 160] = mem[_11307 + 160]
                    mem[u + 192] = mem[_11307 + 192]
                    mem[u + 224] = mem[_11307 + 224]
                    mem[u + 256] = mem[_11307 + 256]
                    idx = idx + 1
                    t = t + 32
                    u = u + 288
                    continue 
                mem[_11122 + 32] = uint8(uint8(s) + 1)
                return memory
                  from mem[64]
                   len _11122 + (288 * _11131) + -mem[64] + 96
            mem[0] = uint16(_10367)
            mem[32] = 153
            _10740 = mem[64]
            mem[64] = mem[64] + 96
            mem[_10740] = uint16(barn[_10367 << 240].field_0)
            mem[_10740 + 32] = Mask(80, 0, barn[_10367 << 240].field_16)
            mem[_10740 + 64] = address(barn[_10367 << 240].field_96)
            if not address(barn[_10367 << 240].field_96):
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                mem[mem[64] + 4] = uint16(_10367)
                require ext_code.size(sub_7d4cd2b5Address)
                staticcall sub_7d4cd2b5Address.0x224e5e22 with:
                        gas gas_remaining wei
                       args (_10367 << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10822 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 256] = mem[_10822]
                if t == -1:
                    revert with 0, 17
                if uint8(s) == 255:
                    revert with 0, 17
                if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(s) + 1
                    t = t + 1
                    continue 
                _10987 = mem[64]
                mem[mem[64]] = 64
                _10997 = mem[96]
                mem[mem[64] + 64] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 96
                while idx < _10997:
                    _11332 = mem[t]
                    mem[u] = mem[mem[t]]
                    mem[u + 32] = mem[_11332 + 63 len 1]
                    mem[u + 64] = mem[_11332 + 95 len 1]
                    mem[u + 96] = mem[_11332 + 127 len 1]
                    mem[u + 128] = mem[_11332 + 159 len 1]
                    mem[u + 160] = mem[_11332 + 160]
                    mem[u + 192] = mem[_11332 + 192]
                    mem[u + 224] = mem[_11332 + 224]
                    mem[u + 256] = mem[_11332 + 256]
                    idx = idx + 1
                    t = t + 32
                    u = u + 288
                    continue 
                mem[_10987 + 32] = uint8(uint8(s) + 1)
                return memory
                  from mem[64]
                   len _10987 + (288 * _10997) + -mem[64] + 96
            if sub_2d8c2ef1 < 400000000 * 10^18:
                if mem[_10660 + 127 len 1] < 1:
                    revert with 0, 17
                if uint8(mem[_10660 + 127 len 1] - 1) >= 8:
                    revert with 0, 50
                if block.timestamp < Mask(80, 0, barn[_10367 << 240].field_16):
                    revert with 0, 17
                if block.timestamp - Mask(80, 0, barn[_10367 << 240].field_16) and sub_637d0d7b[uint8(mem[_10660 + 127 len 1] - 1)] > -1 / block.timestamp - Mask(80, 0, barn[_10367 << 240].field_16):
                    revert with 0, 17
                if (block.timestamp * sub_637d0d7b[uint8(mem[_10660 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_10367 << 240].field_16) * sub_637d0d7b[uint8(mem[_10660 + 127 len 1] - 1)]) / 24 * 3600 and 80 > -1 / (block.timestamp * sub_637d0d7b[uint8(mem[_10660 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_10367 << 240].field_16) * sub_637d0d7b[uint8(mem[_10660 + 127 len 1] - 1)]) / 24 * 3600:
                    revert with 0, 17
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 224] = 80 * (block.timestamp * sub_637d0d7b[uint8(mem[_10660 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_10367 << 240].field_16) * sub_637d0d7b[uint8(mem[_10660 + 127 len 1] - 1)]) / 24 * 3600 / 100
                mem[mem[64] + 4] = uint16(_10367)
                require ext_code.size(sub_7d4cd2b5Address)
                staticcall sub_7d4cd2b5Address.0x224e5e22 with:
                        gas gas_remaining wei
                       args (_10367 << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11123 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 256] = mem[_11123]
                if t == -1:
                    revert with 0, 17
                if uint8(s) == 255:
                    revert with 0, 17
                if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(s) + 1
                    t = t + 1
                    continue 
                _11230 = mem[64]
                mem[mem[64]] = 64
                _11234 = mem[96]
                mem[mem[64] + 64] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 96
                while idx < _11234:
                    _11327 = mem[t]
                    mem[u] = mem[mem[t]]
                    mem[u + 32] = mem[_11327 + 63 len 1]
                    mem[u + 64] = mem[_11327 + 95 len 1]
                    mem[u + 96] = mem[_11327 + 127 len 1]
                    mem[u + 128] = mem[_11327 + 159 len 1]
                    mem[u + 160] = mem[_11327 + 160]
                    mem[u + 192] = mem[_11327 + 192]
                    mem[u + 224] = mem[_11327 + 224]
                    mem[u + 256] = mem[_11327 + 256]
                    idx = idx + 1
                    t = t + 32
                    u = u + 288
                    continue 
                mem[_11230 + 32] = uint8(uint8(s) + 1)
                return memory
                  from mem[64]
                   len _11230 + (288 * _11234) + -mem[64] + 96
            if Mask(80, 0, barn[_10367 << 240].field_16) > lastClaimTimestamp:
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                mem[mem[64] + 4] = uint16(_10367)
                require ext_code.size(sub_7d4cd2b5Address)
                staticcall sub_7d4cd2b5Address.0x224e5e22 with:
                        gas gas_remaining wei
                       args (_10367 << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10971 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 256] = mem[_10971]
                if t == -1:
                    revert with 0, 17
                if uint8(s) == 255:
                    revert with 0, 17
                if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(s) + 1
                    t = t + 1
                    continue 
                _11133 = mem[64]
                mem[mem[64]] = 64
                _11144 = mem[96]
                mem[mem[64] + 64] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 96
                while idx < _11144:
                    _11322 = mem[t]
                    mem[u] = mem[mem[t]]
                    mem[u + 32] = mem[_11322 + 63 len 1]
                    mem[u + 64] = mem[_11322 + 95 len 1]
                    mem[u + 96] = mem[_11322 + 127 len 1]
                    mem[u + 128] = mem[_11322 + 159 len 1]
                    mem[u + 160] = mem[_11322 + 160]
                    mem[u + 192] = mem[_11322 + 192]
                    mem[u + 224] = mem[_11322 + 224]
                    mem[u + 256] = mem[_11322 + 256]
                    idx = idx + 1
                    t = t + 32
                    u = u + 288
                    continue 
                mem[_11133 + 32] = uint8(uint8(s) + 1)
                return memory
                  from mem[64]
                   len _11133 + (288 * _11144) + -mem[64] + 96
            if mem[_10660 + 127 len 1] < 1:
                revert with 0, 17
            if uint8(mem[_10660 + 127 len 1] - 1) >= 8:
                revert with 0, 50
            if lastClaimTimestamp < Mask(80, 0, barn[_10367 << 240].field_16):
                revert with 0, 17
            if lastClaimTimestamp - Mask(80, 0, barn[_10367 << 240].field_16) and sub_637d0d7b[uint8(mem[_10660 + 127 len 1] - 1)] > -1 / lastClaimTimestamp - Mask(80, 0, barn[_10367 << 240].field_16):
                revert with 0, 17
            if (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_10660 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_10367 << 240].field_16) * sub_637d0d7b[uint8(mem[_10660 + 127 len 1] - 1)]) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_10660 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_10367 << 240].field_16) * sub_637d0d7b[uint8(mem[_10660 + 127 len 1] - 1)]) / 24 * 3600:
                revert with 0, 17
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128] + 224] = 80 * (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_10660 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_10367 << 240].field_16) * sub_637d0d7b[uint8(mem[_10660 + 127 len 1] - 1)]) / 24 * 3600 / 100
            mem[mem[64] + 4] = uint16(_10367)
            require ext_code.size(sub_7d4cd2b5Address)
            staticcall sub_7d4cd2b5Address.0x224e5e22 with:
                    gas gas_remaining wei
                   args (_10367 << 240)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _11132 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128] + 256] = mem[_11132]
            if t == -1:
                revert with 0, 17
            if uint8(s) == 255:
                revert with 0, 17
            if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                if uint8(idx) == 255:
                    revert with 0, 17
                idx = uint8(idx) + 1
                s = uint8(s) + 1
                t = t + 1
                continue 
            _11233 = mem[64]
            mem[mem[64]] = 64
            _11240 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            t = 128
            u = mem[64] + 96
            while idx < _11240:
                _11317 = mem[t]
                mem[u] = mem[mem[t]]
                mem[u + 32] = mem[_11317 + 63 len 1]
                mem[u + 64] = mem[_11317 + 95 len 1]
                mem[u + 96] = mem[_11317 + 127 len 1]
                mem[u + 128] = mem[_11317 + 159 len 1]
                mem[u + 160] = mem[_11317 + 160]
                mem[u + 192] = mem[_11317 + 192]
                mem[u + 224] = mem[_11317 + 224]
                mem[u + 256] = mem[_11317 + 256]
                idx = idx + 1
                t = t + 32
                u = u + 288
                continue 
            mem[_11233 + 32] = uint8(uint8(s) + 1)
            return memory
              from mem[64]
               len _11233 + (288 * _11240) + -mem[64] + 96
        _10401 = mem[64]
        mem[mem[64]] = 64
        _10437 = mem[96]
        mem[mem[64] + 64] = mem[96]
        idx = 0
        t = 128
        u = mem[64] + 96
        while idx < _10437:
            _11267 = mem[t]
            mem[u] = mem[mem[t]]
            mem[u + 32] = mem[_11267 + 63 len 1]
            mem[u + 64] = mem[_11267 + 95 len 1]
            mem[u + 96] = mem[_11267 + 127 len 1]
            mem[u + 128] = mem[_11267 + 159 len 1]
            mem[u + 160] = mem[_11267 + 160]
            mem[u + 192] = mem[_11267 + 192]
            mem[u + 224] = mem[_11267 + 224]
            mem[u + 256] = mem[_11267 + 256]
            idx = idx + 1
            t = t + 32
            u = u + 288
            continue 
        mem[_10401 + 32] = uint8(s)
        return memory
          from mem[64]
           len _10401 + (288 * _10437) + -mem[64] + 96
    idx = 0
    s = 0
    t = arg2
    while uint8(idx) < arg3:
        if t >= mem[_6255]:
            revert with 0, 50
        _10369 = mem[(32 * t) + _6255 + 32]
        if uint8(idx) >= mem[96]:
            revert with 0, 50
        mem[mem[(32 * uint8(idx)) + 128]] = mem[(32 * t) + _6255 + 62 len 2]
        require ext_code.size(minerAddress)
        staticcall minerAddress.getTokenTraits(uint256 arg1) with:
                gas gas_remaining wei
               args (_10369 << 240)
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _10572 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _10578 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 128
        require mem[_10572] == mem[_10572 + 31 len 1]
        mem[_10578] = mem[_10572]
        require mem[_10572 + 32] == mem[_10572 + 63 len 1]
        mem[_10578 + 32] = mem[_10572 + 32]
        require mem[_10572 + 64] == mem[_10572 + 95 len 1]
        mem[_10578 + 64] = mem[_10572 + 64]
        require mem[_10572 + 96] == mem[_10572 + 127 len 1]
        mem[_10578 + 96] = mem[_10572 + 96]
        if uint8(idx) >= mem[96]:
            revert with 0, 50
        mem[mem[(32 * uint8(idx)) + 128] + 32] = mem[_10578 + 31 len 1]
        if uint8(idx) >= mem[96]:
            revert with 0, 50
        mem[mem[(32 * uint8(idx)) + 128] + 64] = mem[_10578 + 63 len 1]
        if uint8(idx) >= mem[96]:
            revert with 0, 50
        mem[mem[(32 * uint8(idx)) + 128] + 96] = mem[_10578 + 95 len 1]
        if uint8(idx) >= mem[96]:
            revert with 0, 50
        mem[mem[(32 * uint8(idx)) + 128] + 128] = mem[_10578 + 127 len 1]
        if mem[_10578 + 63 len 1]:
            require ext_code.size(minerAddress)
            staticcall minerAddress.getTokenTraits(uint256 arg1) with:
                    gas gas_remaining wei
                   args (_10369 << 240)
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _10637 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _10641 = mem[64]
            if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 128
            require mem[_10637] == mem[_10637 + 31 len 1]
            mem[_10641] = mem[_10637]
            require mem[_10637 + 32] == mem[_10637 + 63 len 1]
            mem[_10641 + 32] = mem[_10637 + 32]
            require mem[_10637 + 64] == mem[_10637 + 95 len 1]
            mem[_10641 + 64] = mem[_10637 + 64]
            require mem[_10637 + 96] == mem[_10637 + 127 len 1]
            mem[_10641 + 96] = mem[_10637 + 96]
            if 0 == mem[_10641 + 127 len 1]:
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 256] = 0
                if t == -1:
                    revert with 0, 17
                if uint8(s) == 255:
                    revert with 0, 17
                if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(s) + 1
                    t = t + 1
                    continue 
                _10776 = mem[64]
                mem[mem[64]] = 64
                _10787 = mem[96]
                mem[mem[64] + 64] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 96
                while idx < _10787:
                    _11377 = mem[t]
                    mem[u] = mem[mem[t]]
                    mem[u + 32] = mem[_11377 + 63 len 1]
                    mem[u + 64] = mem[_11377 + 95 len 1]
                    mem[u + 96] = mem[_11377 + 127 len 1]
                    mem[u + 128] = mem[_11377 + 159 len 1]
                    mem[u + 160] = mem[_11377 + 160]
                    mem[u + 192] = mem[_11377 + 192]
                    mem[u + 224] = mem[_11377 + 224]
                    mem[u + 256] = mem[_11377 + 256]
                    idx = idx + 1
                    t = t + 32
                    u = u + 288
                    continue 
                mem[_10776 + 32] = uint8(uint8(s) + 1)
                return memory
                  from mem[64]
                   len _10776 + (288 * _10787) + -mem[64] + 96
            if mem[_10641 + 63 len 1] != 0:
                mem[0] = mem[_10641 + 127 len 1]
                mem[32] = 154
                if packIndices[_10369 << 240] >= uint256(pack[mem[0]].field_0):
                    revert with 0, 50
                mem[0] = sha3(mem[0], 154)
                _10685 = sha3(mem[0])
                _10686 = mem[64]
                mem[64] = mem[64] + 96
                mem[_10686] = uint16(stor[sha3(mem[0]) + stor155[_10369 << 240]].field_0)
                mem[_10686 + 32] = Mask(80, 0, stor[_10685 + stor155[_10369 << 240]].field_16)
                mem[_10686 + 64] = address(stor[_10685 + stor155[_10369 << 240]].field_96)
                if not address(stor[_10685 + stor155[_10369 << 240]].field_96):
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                    if uint8(idx) >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * uint8(idx)) + 128] + 256] = 0
                    if t == -1:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(s) + 1
                        t = t + 1
                        continue 
                    _10805 = mem[64]
                    mem[mem[64]] = 64
                    _10818 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    t = 0
                    u = 128
                    v = mem[64] + 96
                    while t < _10818:
                        _11352 = mem[u]
                        mem[v] = mem[mem[u]]
                        mem[v + 32] = mem[_11352 + 63 len 1]
                        mem[v + 64] = mem[_11352 + 95 len 1]
                        mem[v + 96] = mem[_11352 + 127 len 1]
                        mem[v + 128] = mem[_11352 + 159 len 1]
                        mem[v + 160] = mem[_11352 + 160]
                        mem[v + 192] = mem[_11352 + 192]
                        mem[v + 224] = mem[_11352 + 224]
                        mem[v + 256] = mem[_11352 + 256]
                        t = t + 1
                        u = u + 32
                        v = v + 288
                        continue 
                    mem[_10805 + 32] = uint8(uint8(_10805 + (288 * _10818) + 96) + 1)
                    return memory
                      from mem[64]
                       len _10805 + (288 * _10818) + -mem[64] + 96
                if mem[_10641 + 127 len 1] < 1:
                    revert with 0, 17
                if uint8(mem[_10641 + 127 len 1] - 1) >= 5:
                    revert with 0, 50
                if uint256(sub_bc633bf2) < Mask(80, 0, stor[_10685 + stor155[_10369 << 240]].field_16):
                    revert with 0, 17
                if sub_3f30e8d8[uint8(mem[_10641 + 127 len 1] - 1)] and uint256(sub_bc633bf2) - Mask(80, 0, stor[_10685 + stor155[_10369 << 240]].field_16) > -1 / sub_3f30e8d8[uint8(mem[_10641 + 127 len 1] - 1)]:
                    revert with 0, 17
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 224] = (uint256(sub_bc633bf2) * sub_3f30e8d8[uint8(mem[_10641 + 127 len 1] - 1)]) - (Mask(80, 0, stor[_10685 + stor155[_10369 << 240]].field_16) * sub_3f30e8d8[uint8(mem[_10641 + 127 len 1] - 1)])
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 256] = 0
                if t == -1:
                    revert with 0, 17
                if uint8(s) == 255:
                    revert with 0, 17
                if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(s) + 1
                    t = t + 1
                    continue 
                _10912 = mem[64]
                mem[mem[64]] = 64
                _10927 = mem[96]
                mem[mem[64] + 64] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 96
                while idx < _10927:
                    _11347 = mem[t]
                    mem[u] = mem[mem[t]]
                    mem[u + 32] = mem[_11347 + 63 len 1]
                    mem[u + 64] = mem[_11347 + 95 len 1]
                    mem[u + 96] = mem[_11347 + 127 len 1]
                    mem[u + 128] = mem[_11347 + 159 len 1]
                    mem[u + 160] = mem[_11347 + 160]
                    mem[u + 192] = mem[_11347 + 192]
                    mem[u + 224] = mem[_11347 + 224]
                    mem[u + 256] = mem[_11347 + 256]
                    idx = idx + 1
                    t = t + 32
                    u = u + 288
                    continue 
                mem[_10912 + 32] = uint8(uint8(s) + 1)
                return memory
                  from mem[64]
                   len _10912 + (288 * _10927) + -mem[64] + 96
            mem[0] = uint16(_10369)
            mem[32] = 153
            _10680 = mem[64]
            mem[64] = mem[64] + 96
            mem[_10680] = uint16(barn[_10369 << 240].field_0)
            mem[_10680 + 32] = Mask(80, 0, barn[_10369 << 240].field_16)
            mem[_10680 + 64] = address(barn[_10369 << 240].field_96)
            if not address(barn[_10369 << 240].field_96):
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 256] = 0
                if t == -1:
                    revert with 0, 17
                if uint8(s) == 255:
                    revert with 0, 17
                if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(s) + 1
                    t = t + 1
                    continue 
                _10796 = mem[64]
                mem[mem[64]] = 64
                _10806 = mem[96]
                mem[mem[64] + 64] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 96
                while idx < _10806:
                    _11372 = mem[t]
                    mem[u] = mem[mem[t]]
                    mem[u + 32] = mem[_11372 + 63 len 1]
                    mem[u + 64] = mem[_11372 + 95 len 1]
                    mem[u + 96] = mem[_11372 + 127 len 1]
                    mem[u + 128] = mem[_11372 + 159 len 1]
                    mem[u + 160] = mem[_11372 + 160]
                    mem[u + 192] = mem[_11372 + 192]
                    mem[u + 224] = mem[_11372 + 224]
                    mem[u + 256] = mem[_11372 + 256]
                    idx = idx + 1
                    t = t + 32
                    u = u + 288
                    continue 
                mem[_10796 + 32] = uint8(uint8(s) + 1)
                return memory
                  from mem[64]
                   len _10796 + (288 * _10806) + -mem[64] + 96
            if sub_2d8c2ef1 < 400000000 * 10^18:
                if mem[_10641 + 127 len 1] < 1:
                    revert with 0, 17
                if uint8(mem[_10641 + 127 len 1] - 1) >= 8:
                    revert with 0, 50
                if block.timestamp < Mask(80, 0, barn[_10369 << 240].field_16):
                    revert with 0, 17
                if block.timestamp - Mask(80, 0, barn[_10369 << 240].field_16) and sub_637d0d7b[uint8(mem[_10641 + 127 len 1] - 1)] > -1 / block.timestamp - Mask(80, 0, barn[_10369 << 240].field_16):
                    revert with 0, 17
                if (block.timestamp * sub_637d0d7b[uint8(mem[_10641 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_10369 << 240].field_16) * sub_637d0d7b[uint8(mem[_10641 + 127 len 1] - 1)]) / 24 * 3600 and 80 > -1 / (block.timestamp * sub_637d0d7b[uint8(mem[_10641 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_10369 << 240].field_16) * sub_637d0d7b[uint8(mem[_10641 + 127 len 1] - 1)]) / 24 * 3600:
                    revert with 0, 17
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 224] = 80 * (block.timestamp * sub_637d0d7b[uint8(mem[_10641 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_10369 << 240].field_16) * sub_637d0d7b[uint8(mem[_10641 + 127 len 1] - 1)]) / 24 * 3600 / 100
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 256] = 0
                if t == -1:
                    revert with 0, 17
                if uint8(s) == 255:
                    revert with 0, 17
                if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(s) + 1
                    t = t + 1
                    continue 
                _11097 = mem[64]
                mem[mem[64]] = 64
                _11110 = mem[96]
                mem[mem[64] + 64] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 96
                while idx < _11110:
                    _11367 = mem[t]
                    mem[u] = mem[mem[t]]
                    mem[u + 32] = mem[_11367 + 63 len 1]
                    mem[u + 64] = mem[_11367 + 95 len 1]
                    mem[u + 96] = mem[_11367 + 127 len 1]
                    mem[u + 128] = mem[_11367 + 159 len 1]
                    mem[u + 160] = mem[_11367 + 160]
                    mem[u + 192] = mem[_11367 + 192]
                    mem[u + 224] = mem[_11367 + 224]
                    mem[u + 256] = mem[_11367 + 256]
                    idx = idx + 1
                    t = t + 32
                    u = u + 288
                    continue 
                mem[_11097 + 32] = uint8(uint8(s) + 1)
                return memory
                  from mem[64]
                   len _11097 + (288 * _11110) + -mem[64] + 96
            if Mask(80, 0, barn[_10369 << 240].field_16) > lastClaimTimestamp:
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 256] = 0
                if t == -1:
                    revert with 0, 17
                if uint8(s) == 255:
                    revert with 0, 17
                if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(s) + 1
                    t = t + 1
                    continue 
                _10929 = mem[64]
                mem[mem[64]] = 64
                _10943 = mem[96]
                mem[mem[64] + 64] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 96
                while idx < _10943:
                    _11362 = mem[t]
                    mem[u] = mem[mem[t]]
                    mem[u + 32] = mem[_11362 + 63 len 1]
                    mem[u + 64] = mem[_11362 + 95 len 1]
                    mem[u + 96] = mem[_11362 + 127 len 1]
                    mem[u + 128] = mem[_11362 + 159 len 1]
                    mem[u + 160] = mem[_11362 + 160]
                    mem[u + 192] = mem[_11362 + 192]
                    mem[u + 224] = mem[_11362 + 224]
                    mem[u + 256] = mem[_11362 + 256]
                    idx = idx + 1
                    t = t + 32
                    u = u + 288
                    continue 
                mem[_10929 + 32] = uint8(uint8(s) + 1)
                return memory
                  from mem[64]
                   len _10929 + (288 * _10943) + -mem[64] + 96
            if mem[_10641 + 127 len 1] < 1:
                revert with 0, 17
            if uint8(mem[_10641 + 127 len 1] - 1) >= 8:
                revert with 0, 50
            if lastClaimTimestamp < Mask(80, 0, barn[_10369 << 240].field_16):
                revert with 0, 17
            if lastClaimTimestamp - Mask(80, 0, barn[_10369 << 240].field_16) and sub_637d0d7b[uint8(mem[_10641 + 127 len 1] - 1)] > -1 / lastClaimTimestamp - Mask(80, 0, barn[_10369 << 240].field_16):
                revert with 0, 17
            if (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_10641 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_10369 << 240].field_16) * sub_637d0d7b[uint8(mem[_10641 + 127 len 1] - 1)]) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_10641 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_10369 << 240].field_16) * sub_637d0d7b[uint8(mem[_10641 + 127 len 1] - 1)]) / 24 * 3600:
                revert with 0, 17
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128] + 224] = 80 * (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_10641 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_10369 << 240].field_16) * sub_637d0d7b[uint8(mem[_10641 + 127 len 1] - 1)]) / 24 * 3600 / 100
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128] + 256] = 0
            if t == -1:
                revert with 0, 17
            if uint8(s) == 255:
                revert with 0, 17
            if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                if uint8(idx) == 255:
                    revert with 0, 17
                idx = uint8(idx) + 1
                s = uint8(s) + 1
                t = t + 1
                continue 
            _11109 = mem[64]
            mem[mem[64]] = 64
            _11119 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            t = 128
            u = mem[64] + 96
            while idx < _11119:
                _11357 = mem[t]
                mem[u] = mem[mem[t]]
                mem[u + 32] = mem[_11357 + 63 len 1]
                mem[u + 64] = mem[_11357 + 95 len 1]
                mem[u + 96] = mem[_11357 + 127 len 1]
                mem[u + 128] = mem[_11357 + 159 len 1]
                mem[u + 160] = mem[_11357 + 160]
                mem[u + 192] = mem[_11357 + 192]
                mem[u + 224] = mem[_11357 + 224]
                mem[u + 256] = mem[_11357 + 256]
                idx = idx + 1
                t = t + 32
                u = u + 288
                continue 
            mem[_11109 + 32] = uint8(uint8(s) + 1)
            return memory
              from mem[64]
               len _11109 + (288 * _11119) + -mem[64] + 96
        mem[0] = uint16(_10369)
        mem[32] = 153
        if uint8(idx) >= mem[96]:
            revert with 0, 50
        mem[mem[(32 * uint8(idx)) + 128] + 160] = Mask(80, 0, barn[_10369 << 240].field_16)
        mem[mem[64] + 4] = uint16(_10369)
        require ext_code.size(shieldAddress)
        staticcall shieldAddress.0x478ba63b with:
                gas gas_remaining wei
               args (_10369 << 240)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _10638 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if uint8(idx) >= mem[96]:
            revert with 0, 50
        mem[mem[(32 * uint8(idx)) + 128] + 192] = mem[_10638]
        require ext_code.size(minerAddress)
        staticcall minerAddress.getTokenTraits(uint256 arg1) with:
                gas gas_remaining wei
               args (_10369 << 240)
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _10658 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _10662 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 128
        require mem[_10658] == mem[_10658 + 31 len 1]
        mem[_10662] = mem[_10658]
        require mem[_10658 + 32] == mem[_10658 + 63 len 1]
        mem[_10662 + 32] = mem[_10658 + 32]
        require mem[_10658 + 64] == mem[_10658 + 95 len 1]
        mem[_10662 + 64] = mem[_10658 + 64]
        require mem[_10658 + 96] == mem[_10658 + 127 len 1]
        mem[_10662 + 96] = mem[_10658 + 96]
        if 0 == mem[_10662 + 127 len 1]:
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128] + 256] = 0
            if t == -1:
                revert with 0, 17
            if uint8(s) == 255:
                revert with 0, 17
            if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                if uint8(idx) == 255:
                    revert with 0, 17
                idx = uint8(idx) + 1
                s = uint8(s) + 1
                t = t + 1
                continue 
            _10882 = mem[64]
            mem[mem[64]] = 64
            _10894 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            t = 128
            u = mem[64] + 96
            while idx < _10894:
                _11412 = mem[t]
                mem[u] = mem[mem[t]]
                mem[u + 32] = mem[_11412 + 63 len 1]
                mem[u + 64] = mem[_11412 + 95 len 1]
                mem[u + 96] = mem[_11412 + 127 len 1]
                mem[u + 128] = mem[_11412 + 159 len 1]
                mem[u + 160] = mem[_11412 + 160]
                mem[u + 192] = mem[_11412 + 192]
                mem[u + 224] = mem[_11412 + 224]
                mem[u + 256] = mem[_11412 + 256]
                idx = idx + 1
                t = t + 32
                u = u + 288
                continue 
            mem[_10882 + 32] = uint8(uint8(s) + 1)
            return memory
              from mem[64]
               len _10882 + (288 * _10894) + -mem[64] + 96
        if mem[_10662 + 63 len 1] != 0:
            mem[0] = mem[_10662 + 127 len 1]
            mem[32] = 154
            if packIndices[_10369 << 240] >= uint256(pack[mem[0]].field_0):
                revert with 0, 50
            mem[0] = sha3(mem[0], 154)
            _10751 = sha3(mem[0])
            _10752 = mem[64]
            mem[64] = mem[64] + 96
            mem[_10752] = uint16(stor[sha3(mem[0]) + stor155[_10369 << 240]].field_0)
            mem[_10752 + 32] = Mask(80, 0, stor[_10751 + stor155[_10369 << 240]].field_16)
            mem[_10752 + 64] = address(stor[_10751 + stor155[_10369 << 240]].field_96)
            if not address(stor[_10751 + stor155[_10369 << 240]].field_96):
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
                if uint8(idx) >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * uint8(idx)) + 128] + 256] = 0
                if t == -1:
                    revert with 0, 17
                if uint8(s) == 255:
                    revert with 0, 17
                if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(s) + 1
                    t = t + 1
                    continue 
                _10915 = mem[64]
                mem[mem[64]] = 64
                _10932 = mem[96]
                mem[mem[64] + 64] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 96
                while idx < _10932:
                    _11387 = mem[t]
                    mem[u] = mem[mem[t]]
                    mem[u + 32] = mem[_11387 + 63 len 1]
                    mem[u + 64] = mem[_11387 + 95 len 1]
                    mem[u + 96] = mem[_11387 + 127 len 1]
                    mem[u + 128] = mem[_11387 + 159 len 1]
                    mem[u + 160] = mem[_11387 + 160]
                    mem[u + 192] = mem[_11387 + 192]
                    mem[u + 224] = mem[_11387 + 224]
                    mem[u + 256] = mem[_11387 + 256]
                    idx = idx + 1
                    t = t + 32
                    u = u + 288
                    continue 
                mem[_10915 + 32] = uint8(uint8(s) + 1)
                return memory
                  from mem[64]
                   len _10915 + (288 * _10932) + -mem[64] + 96
            if mem[_10662 + 127 len 1] < 1:
                revert with 0, 17
            if uint8(mem[_10662 + 127 len 1] - 1) >= 5:
                revert with 0, 50
            if uint256(sub_bc633bf2) < Mask(80, 0, stor[_10751 + stor155[_10369 << 240]].field_16):
                revert with 0, 17
            if sub_3f30e8d8[uint8(mem[_10662 + 127 len 1] - 1)] and uint256(sub_bc633bf2) - Mask(80, 0, stor[_10751 + stor155[_10369 << 240]].field_16) > -1 / sub_3f30e8d8[uint8(mem[_10662 + 127 len 1] - 1)]:
                revert with 0, 17
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128] + 224] = (uint256(sub_bc633bf2) * sub_3f30e8d8[uint8(mem[_10662 + 127 len 1] - 1)]) - (Mask(80, 0, stor[_10751 + stor155[_10369 << 240]].field_16) * sub_3f30e8d8[uint8(mem[_10662 + 127 len 1] - 1)])
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128] + 256] = 0
            if t == -1:
                revert with 0, 17
            if uint8(s) == 255:
                revert with 0, 17
            if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                if uint8(idx) == 255:
                    revert with 0, 17
                idx = uint8(idx) + 1
                s = uint8(s) + 1
                t = t + 1
                continue 
            _11064 = mem[64]
            mem[mem[64]] = 64
            _11072 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            t = 128
            u = mem[64] + 96
            while idx < _11072:
                _11382 = mem[t]
                mem[u] = mem[mem[t]]
                mem[u + 32] = mem[_11382 + 63 len 1]
                mem[u + 64] = mem[_11382 + 95 len 1]
                mem[u + 96] = mem[_11382 + 127 len 1]
                mem[u + 128] = mem[_11382 + 159 len 1]
                mem[u + 160] = mem[_11382 + 160]
                mem[u + 192] = mem[_11382 + 192]
                mem[u + 224] = mem[_11382 + 224]
                mem[u + 256] = mem[_11382 + 256]
                idx = idx + 1
                t = t + 32
                u = u + 288
                continue 
            mem[_11064 + 32] = uint8(uint8(s) + 1)
            return memory
              from mem[64]
               len _11064 + (288 * _11072) + -mem[64] + 96
        mem[0] = uint16(_10369)
        mem[32] = 153
        _10745 = mem[64]
        mem[64] = mem[64] + 96
        mem[_10745] = uint16(barn[_10369 << 240].field_0)
        mem[_10745 + 32] = Mask(80, 0, barn[_10369 << 240].field_16)
        mem[_10745 + 64] = address(barn[_10369 << 240].field_96)
        if not address(barn[_10369 << 240].field_96):
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128] + 256] = 0
            if t == -1:
                revert with 0, 17
            if uint8(s) == 255:
                revert with 0, 17
            if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                if uint8(idx) == 255:
                    revert with 0, 17
                idx = uint8(idx) + 1
                s = uint8(s) + 1
                t = t + 1
                continue 
            _10904 = mem[64]
            mem[mem[64]] = 64
            _10916 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            t = 128
            u = mem[64] + 96
            while idx < _10916:
                _11407 = mem[t]
                mem[u] = mem[mem[t]]
                mem[u + 32] = mem[_11407 + 63 len 1]
                mem[u + 64] = mem[_11407 + 95 len 1]
                mem[u + 96] = mem[_11407 + 127 len 1]
                mem[u + 128] = mem[_11407 + 159 len 1]
                mem[u + 160] = mem[_11407 + 160]
                mem[u + 192] = mem[_11407 + 192]
                mem[u + 224] = mem[_11407 + 224]
                mem[u + 256] = mem[_11407 + 256]
                idx = idx + 1
                t = t + 32
                u = u + 288
                continue 
            mem[_10904 + 32] = uint8(uint8(s) + 1)
            return memory
              from mem[64]
               len _10904 + (288 * _10916) + -mem[64] + 96
        if sub_2d8c2ef1 < 400000000 * 10^18:
            if mem[_10662 + 127 len 1] < 1:
                revert with 0, 17
            if uint8(mem[_10662 + 127 len 1] - 1) >= 8:
                revert with 0, 50
            if block.timestamp < Mask(80, 0, barn[_10369 << 240].field_16):
                revert with 0, 17
            if block.timestamp - Mask(80, 0, barn[_10369 << 240].field_16) and sub_637d0d7b[uint8(mem[_10662 + 127 len 1] - 1)] > -1 / block.timestamp - Mask(80, 0, barn[_10369 << 240].field_16):
                revert with 0, 17
            if (block.timestamp * sub_637d0d7b[uint8(mem[_10662 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_10369 << 240].field_16) * sub_637d0d7b[uint8(mem[_10662 + 127 len 1] - 1)]) / 24 * 3600 and 80 > -1 / (block.timestamp * sub_637d0d7b[uint8(mem[_10662 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_10369 << 240].field_16) * sub_637d0d7b[uint8(mem[_10662 + 127 len 1] - 1)]) / 24 * 3600:
                revert with 0, 17
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128] + 224] = 80 * (block.timestamp * sub_637d0d7b[uint8(mem[_10662 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_10369 << 240].field_16) * sub_637d0d7b[uint8(mem[_10662 + 127 len 1] - 1)]) / 24 * 3600 / 100
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128] + 256] = 0
            if t == -1:
                revert with 0, 17
            if uint8(s) == 255:
                revert with 0, 17
            if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                if uint8(idx) == 255:
                    revert with 0, 17
                idx = uint8(idx) + 1
                s = uint8(s) + 1
                t = t + 1
                continue 
            _11199 = mem[64]
            mem[mem[64]] = 64
            _11206 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            t = 128
            u = mem[64] + 96
            while idx < _11206:
                _11402 = mem[t]
                mem[u] = mem[mem[t]]
                mem[u + 32] = mem[_11402 + 63 len 1]
                mem[u + 64] = mem[_11402 + 95 len 1]
                mem[u + 96] = mem[_11402 + 127 len 1]
                mem[u + 128] = mem[_11402 + 159 len 1]
                mem[u + 160] = mem[_11402 + 160]
                mem[u + 192] = mem[_11402 + 192]
                mem[u + 224] = mem[_11402 + 224]
                mem[u + 256] = mem[_11402 + 256]
                idx = idx + 1
                t = t + 32
                u = u + 288
                continue 
            mem[_11199 + 32] = uint8(uint8(s) + 1)
            return memory
              from mem[64]
               len _11199 + (288 * _11206) + -mem[64] + 96
        if Mask(80, 0, barn[_10369 << 240].field_16) > lastClaimTimestamp:
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128] + 224] = 0
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * uint8(idx)) + 128] + 256] = 0
            if t == -1:
                revert with 0, 17
            if uint8(s) == 255:
                revert with 0, 17
            if t + 1 < uint256(balanceOf[address(arg1)].field_0):
                if uint8(idx) == 255:
                    revert with 0, 17
                idx = uint8(idx) + 1
                s = uint8(s) + 1
                t = t + 1
                continue 
            _11074 = mem[64]
            mem[mem[64]] = 64
            _11086 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            t = 128
            u = mem[64] + 96
            while idx < _11086:
                _11397 = mem[t]
                mem[u] = mem[mem[t]]
                mem[u + 32] = mem[_11397 + 63 len 1]
                mem[u + 64] = mem[_11397 + 95 len 1]
                mem[u + 96] = mem[_11397 + 127 len 1]
                mem[u + 128] = mem[_11397 + 159 len 1]
                mem[u + 160] = mem[_11397 + 160]
                mem[u + 192] = mem[_11397 + 192]
                mem[u + 224] = mem[_11397 + 224]
                mem[u + 256] = mem[_11397 + 256]
                idx = idx + 1
                t = t + 32
                u = u + 288
                continue 
            mem[_11074 + 32] = uint8(uint8(s) + 1)
            return memory
              from mem[64]
               len _11074 + (288 * _11086) + -mem[64] + 96
        if mem[_10662 + 127 len 1] < 1:
            revert with 0, 17
        if uint8(mem[_10662 + 127 len 1] - 1) >= 8:
            revert with 0, 50
        if lastClaimTimestamp < Mask(80, 0, barn[_10369 << 240].field_16):
            revert with 0, 17
        if lastClaimTimestamp - Mask(80, 0, barn[_10369 << 240].field_16) and sub_637d0d7b[uint8(mem[_10662 + 127 len 1] - 1)] > -1 / lastClaimTimestamp - Mask(80, 0, barn[_10369 << 240].field_16):
            revert with 0, 17
        if (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_10662 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_10369 << 240].field_16) * sub_637d0d7b[uint8(mem[_10662 + 127 len 1] - 1)]) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_10662 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_10369 << 240].field_16) * sub_637d0d7b[uint8(mem[_10662 + 127 len 1] - 1)]) / 24 * 3600:
            revert with 0, 17
        if uint8(idx) >= mem[96]:
            revert with 0, 50
        mem[mem[(32 * uint8(idx)) + 128] + 224] = 80 * (lastClaimTimestamp * sub_637d0d7b[uint8(mem[_10662 + 127 len 1] - 1)]) - (Mask(80, 0, barn[_10369 << 240].field_16) * sub_637d0d7b[uint8(mem[_10662 + 127 len 1] - 1)]) / 24 * 3600 / 100
        if uint8(idx) >= mem[96]:
            revert with 0, 50
        mem[mem[(32 * uint8(idx)) + 128] + 256] = 0
        if t == -1:
            revert with 0, 17
        if uint8(s) == 255:
            revert with 0, 17
        if t + 1 < uint256(balanceOf[address(arg1)].field_0):
            if uint8(idx) == 255:
                revert with 0, 17
            idx = uint8(idx) + 1
            s = uint8(s) + 1
            t = t + 1
            continue 
        _11205 = mem[64]
        mem[mem[64]] = 64
        _11209 = mem[96]
        mem[mem[64] + 64] = mem[96]
        idx = 0
        t = 128
        u = mem[64] + 96
        while idx < _11209:
            _11392 = mem[t]
            mem[u] = mem[mem[t]]
            mem[u + 32] = mem[_11392 + 63 len 1]
            mem[u + 64] = mem[_11392 + 95 len 1]
            mem[u + 96] = mem[_11392 + 127 len 1]
            mem[u + 128] = mem[_11392 + 159 len 1]
            mem[u + 160] = mem[_11392 + 160]
            mem[u + 192] = mem[_11392 + 192]
            mem[u + 224] = mem[_11392 + 224]
            mem[u + 256] = mem[_11392 + 256]
            idx = idx + 1
            t = t + 32
            u = u + 288
            continue 
        mem[_11205 + 32] = uint8(uint8(s) + 1)
        return memory
          from mem[64]
           len _11205 + (288 * _11209) + -mem[64] + 96
    _10404 = mem[64]
    mem[mem[64]] = 64
    _10438 = mem[96]
    mem[mem[64] + 64] = mem[96]
    idx = 0
    t = 128
    u = mem[64] + 96
    while idx < _10438:
        _11342 = mem[t]
        mem[u] = mem[mem[t]]
        mem[u + 32] = mem[_11342 + 63 len 1]
        mem[u + 64] = mem[_11342 + 95 len 1]
        mem[u + 96] = mem[_11342 + 127 len 1]
        mem[u + 128] = mem[_11342 + 159 len 1]
        mem[u + 160] = mem[_11342 + 160]
        mem[u + 192] = mem[_11342 + 192]
        mem[u + 224] = mem[_11342 + 224]
        mem[u + 256] = mem[_11342 + 256]
        idx = idx + 1
        t = t + 32
        u = u + 288
        continue 
    mem[_10404 + 32] = uint8(s)
    return memory
      from mem[64]
       len _10404 + (288 * _10438) + -mem[64] + 96
}



}
