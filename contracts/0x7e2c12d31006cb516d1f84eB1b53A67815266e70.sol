contract main {




// =====================  Runtime code  =====================


const sub_d879f507(?) = 2400000000 * 10^18

const sub_e2bd598b(?) = 20

const MAX_ALPHA = 8


uint8 stor0; offset 160
address owner;
address stor1;
address stor2;
mapping of struct sub_771f2476;
array of struct pack;
mapping of uint256 packIndices;
array of struct stor6;
uint256 totalAlphaStaked;
uint256 unaccountedRewards;
uint128 stor9;
uint256 sub_2c5124a9;
uint256 sub_9795314b;
uint256 MINIMUM_TO_EXIT;
uint256 sub_91fae6c2;
uint256 sub_3308e6c1;
uint256 sub_d5958b35;
uint256 lastClaimTimestamp;
uint8 rescueEnabled;
uint8 stor16; offset 8

function sub_2c5124a9(?) payable {
    return uint256(sub_2c5124a9)
}

function sub_3308e6c1(?) payable {
    return sub_3308e6c1
}

function MINIMUM_TO_EXIT() payable {
    return MINIMUM_TO_EXIT
}

function rescueEnabled() payable {
    return bool(rescueEnabled)
}

function paused() payable {
    return bool(stor0)
}

function lastClaimTimestamp() payable {
    return lastClaimTimestamp
}

function packIndices(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return packIndices[arg1]
}

function totalAlphaStaked() payable {
    return totalAlphaStaked
}

function sub_771f2476(?) payable {
    require calldata.size - 4 >= 32
    return uint16(sub_771f2476[arg1].field_0), Mask(80, 0, sub_771f2476[arg1].field_0), address(sub_771f2476[arg1].field_96)
}

function owner() payable {
    return owner
}

function sub_91fae6c2(?) payable {
    return sub_91fae6c2
}

function sub_9795314b(?) payable {
    return sub_9795314b
}

function unaccountedRewards() payable {
    return unaccountedRewards
}

function sub_d5958b35(?) payable {
    return sub_d5958b35
}

function pack(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < uint256(pack[arg1].field_0)
    return uint16(pack[arg1][arg2].field_0), Mask(80, 0, pack[arg1][arg2].field_0), address(pack[arg1][arg2].field_96)
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

function setRescueEnabled(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rescueEnabled = uint8(arg1)
}

function setSettings(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    MINIMUM_TO_EXIT = arg2
    sub_9795314b = arg1
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

function setPaused(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        if not stor0:
            revert with 0, 'Pausable: not paused'
        stor0 = 0
        emit Unpaused(msg.sender);
    else:
        if stor0:
            revert with 0, 'Pausable: paused'
        stor0 = 1
        emit Paused(msg.sender);
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot send tokens to Barn directly'
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function getTokensOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint256(stor6[address(arg1)].field_0):
        mem[128] = uint256(stor6[address(arg1)].field_0)
        idx = 128
        s = 0
        while (32 * uint256(stor6[address(arg1)].field_0)) + 96 > idx:
            mem[idx + 32] = uint256(stor6[address(arg1)][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=uint256(stor6[address(arg1)].field_0), data=mem[128 len 32 * uint256(stor6[address(arg1)].field_0)])
    mem[(32 * uint256(stor6[address(arg1)].field_0)) + 128] = 32
    mem[(32 * uint256(stor6[address(arg1)].field_0)) + 160] = uint256(stor6[address(arg1)].field_0)
    mem[(32 * uint256(stor6[address(arg1)].field_0)) + 192 len 32 * uint256(stor6[address(arg1)].field_0)] = mem[128 len 32 * uint256(stor6[address(arg1)].field_0)]
    return memory
      from (32 * uint256(stor6[address(arg1)].field_0)) + 128
       len (96 * uint256(stor6[address(arg1)].field_0)) + 64
}

function sub_ed57ad24(?) payable {
    require calldata.size - 4 >= 32
    if totalAlphaStaked != 0:
        if not totalAlphaStaked:
            revert with 0, 18
        idx = 5
        s = 0
        while idx <= 8:
            mem[0] = idx
            mem[32] = 4
            if uint256(pack[idx].field_0) and idx > -1 / uint256(pack[idx].field_0):
                revert with 0, 17
            if s > !(uint256(pack[idx].field_0) * idx):
                revert with 0, 17
            if arg1 % totalAlphaStaked >= s + (uint256(pack[idx].field_0) * idx):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (uint256(pack[idx].field_0) * idx)
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

function sub_011a24b2(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor1)
    staticcall stor1.getTokenTraits(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 832
    if not bool(ceil32(return_data.size) + 928 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[32] == ext_call.return_data[63 len 1]
    require ext_call.return_data[64] == ext_call.return_data[95 len 1]
    require ext_call.return_data[96] == ext_call.return_data[127 len 1]
    require ext_call.return_data[128] == ext_call.return_data[159 len 1]
    require ext_call.return_data[160] == ext_call.return_data[191 len 1]
    require ext_call.return_data[192] == ext_call.return_data[223 len 1]
    require ext_call.return_data[224] == ext_call.return_data[255 len 1]
    require ext_call.return_data[256] == ext_call.return_data[287 len 1]
    require ext_call.return_data[288] == ext_call.return_data[319 len 1]
    require ext_call.return_data[320] == ext_call.return_data[351 len 1]
    require ext_call.return_data[352] == ext_call.return_data[383 len 1]
    require ext_call.return_data[384] == ext_call.return_data[415 len 1]
    require ext_call.return_data[416] == ext_call.return_data[447 len 1]
    require ext_call.return_data[448] == ext_call.return_data[479 len 1]
    require ext_call.return_data[480] == ext_call.return_data[511 len 1]
    require ext_call.return_data[512] == ext_call.return_data[543 len 1]
    require ext_call.return_data[544] == ext_call.return_data[575 len 1]
    require ext_call.return_data[576] == ext_call.return_data[607 len 1]
    require ext_call.return_data[608] == ext_call.return_data[639 len 1]
    require ext_call.return_data[640] == ext_call.return_data[671 len 1]
    require ext_call.return_data[672] == ext_call.return_data[703 len 1]
    require ext_call.return_data[704] == ext_call.return_data[735 len 1]
    require ext_call.return_data[736] == ext_call.return_data[767 len 1]
    require ext_call.return_data[768] == ext_call.return_data[799 len 1]
    require ext_call.return_data[800] == ext_call.return_data[831 len 1]
    return bool(ext_call.return_data[0])
}

function sub_9062ae06(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
        require ext_code.size(stor1)
        staticcall stor1.getTokenTraits(uint256 arg1) with:
                gas gas_remaining wei
               args (cd[((32 * idx) + cd[4] + 36)] << 240)
        mem[mem[64] len 832] = ext_call.return_data[0 len 832]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _71 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 832
        _72 = mem[64]
        if mem[64] + 832 < mem[64] or mem[64] + 832 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 832
        require mem[_71] == bool(mem[_71])
        mem[_72] = mem[_71]
        require mem[_71 + 32] == mem[_71 + 63 len 1]
        mem[_72 + 32] = mem[_71 + 32]
        require mem[_71 + 64] == mem[_71 + 95 len 1]
        mem[_72 + 64] = mem[_71 + 64]
        require mem[_71 + 96] == mem[_71 + 127 len 1]
        mem[_72 + 96] = mem[_71 + 96]
        require mem[_71 + 128] == mem[_71 + 159 len 1]
        mem[_72 + 128] = mem[_71 + 128]
        require mem[_71 + 160] == mem[_71 + 191 len 1]
        mem[_72 + 160] = mem[_71 + 160]
        require mem[_71 + 192] == mem[_71 + 223 len 1]
        mem[_72 + 192] = mem[_71 + 192]
        require mem[_71 + 224] == mem[_71 + 255 len 1]
        mem[_72 + 224] = mem[_71 + 224]
        require mem[_71 + 256] == mem[_71 + 287 len 1]
        mem[_72 + 256] = mem[_71 + 256]
        require mem[_71 + 288] == mem[_71 + 319 len 1]
        mem[_72 + 288] = mem[_71 + 288]
        require mem[_71 + 320] == mem[_71 + 351 len 1]
        mem[_72 + 320] = mem[_71 + 320]
        require mem[_71 + 352] == mem[_71 + 383 len 1]
        mem[_72 + 352] = mem[_71 + 352]
        require mem[_71 + 384] == mem[_71 + 415 len 1]
        mem[_72 + 384] = mem[_71 + 384]
        require mem[_71 + 416] == mem[_71 + 447 len 1]
        mem[_72 + 416] = mem[_71 + 416]
        require mem[_71 + 448] == mem[_71 + 479 len 1]
        mem[_72 + 448] = mem[_71 + 448]
        require mem[_71 + 480] == mem[_71 + 511 len 1]
        mem[_72 + 480] = mem[_71 + 480]
        require mem[_71 + 512] == mem[_71 + 543 len 1]
        mem[_72 + 512] = mem[_71 + 512]
        require mem[_71 + 544] == mem[_71 + 575 len 1]
        mem[_72 + 544] = mem[_71 + 544]
        require mem[_71 + 576] == mem[_71 + 607 len 1]
        mem[_72 + 576] = mem[_71 + 576]
        require mem[_71 + 608] == mem[_71 + 639 len 1]
        mem[_72 + 608] = mem[_71 + 608]
        require mem[_71 + 640] == mem[_71 + 671 len 1]
        mem[_72 + 640] = mem[_71 + 640]
        require mem[_71 + 672] == mem[_71 + 703 len 1]
        mem[_72 + 672] = mem[_71 + 672]
        require mem[_71 + 704] == mem[_71 + 735 len 1]
        mem[_72 + 704] = mem[_71 + 704]
        require mem[_71 + 736] == mem[_71 + 767 len 1]
        mem[_72 + 736] = mem[_71 + 736]
        require mem[_71 + 768] == mem[_71 + 799 len 1]
        mem[_72 + 768] = mem[_71 + 768]
        require mem[_71 + 800] == mem[_71 + 831 len 1]
        mem[_72 + 800] = mem[_71 + 800]
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
        if mem[_72]:
            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 3
            _101 = mem[64]
            mem[64] = mem[64] + 96
            mem[_101] = uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0)
            mem[_101 + 32] = Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)
            mem[_101 + 64] = address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96)
            if 2400000000 * 10^18 > sub_91fae6c2:
                if block.timestamp < Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                    revert with 0, 17
                if block.timestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) and sub_9795314b > -1 / block.timestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                    revert with 0, 17
                if (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 and 80 > -1 / (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600:
                    revert with 0, 17
                if s > !(80 * (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (80 * (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100)
                continue 
            if Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) > lastClaimTimestamp:
                if s > -1:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if lastClaimTimestamp < Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                revert with 0, 17
            if lastClaimTimestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) and sub_9795314b > -1 / lastClaimTimestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                revert with 0, 17
            if (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600:
                revert with 0, 17
            if s > !(80 * (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (80 * (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100)
            continue 
        require ext_code.size(stor1)
        staticcall stor1.getTokenTraits(uint256 arg1) with:
                gas gas_remaining wei
               args (cd[((32 * idx) + cd[4] + 36)] << 240)
        mem[mem[64] len 832] = ext_call.return_data[0 len 832]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _107 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 832
        _108 = mem[64]
        if mem[64] + 832 < mem[64] or mem[64] + 832 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 832
        require mem[_107] == bool(mem[_107])
        mem[_108] = mem[_107]
        require mem[_107 + 32] == mem[_107 + 63 len 1]
        mem[_108 + 32] = mem[_107 + 32]
        require mem[_107 + 64] == mem[_107 + 95 len 1]
        mem[_108 + 64] = mem[_107 + 64]
        require mem[_107 + 96] == mem[_107 + 127 len 1]
        mem[_108 + 96] = mem[_107 + 96]
        require mem[_107 + 128] == mem[_107 + 159 len 1]
        mem[_108 + 128] = mem[_107 + 128]
        require mem[_107 + 160] == mem[_107 + 191 len 1]
        mem[_108 + 160] = mem[_107 + 160]
        require mem[_107 + 192] == mem[_107 + 223 len 1]
        mem[_108 + 192] = mem[_107 + 192]
        require mem[_107 + 224] == mem[_107 + 255 len 1]
        mem[_108 + 224] = mem[_107 + 224]
        require mem[_107 + 256] == mem[_107 + 287 len 1]
        mem[_108 + 256] = mem[_107 + 256]
        require mem[_107 + 288] == mem[_107 + 319 len 1]
        mem[_108 + 288] = mem[_107 + 288]
        require mem[_107 + 320] == mem[_107 + 351 len 1]
        mem[_108 + 320] = mem[_107 + 320]
        require mem[_107 + 352] == mem[_107 + 383 len 1]
        mem[_108 + 352] = mem[_107 + 352]
        require mem[_107 + 384] == mem[_107 + 415 len 1]
        mem[_108 + 384] = mem[_107 + 384]
        require mem[_107 + 416] == mem[_107 + 447 len 1]
        mem[_108 + 416] = mem[_107 + 416]
        require mem[_107 + 448] == mem[_107 + 479 len 1]
        mem[_108 + 448] = mem[_107 + 448]
        require mem[_107 + 480] == mem[_107 + 511 len 1]
        mem[_108 + 480] = mem[_107 + 480]
        require mem[_107 + 512] == mem[_107 + 543 len 1]
        mem[_108 + 512] = mem[_107 + 512]
        require mem[_107 + 544] == mem[_107 + 575 len 1]
        mem[_108 + 544] = mem[_107 + 544]
        require mem[_107 + 576] == mem[_107 + 607 len 1]
        mem[_108 + 576] = mem[_107 + 576]
        require mem[_107 + 608] == mem[_107 + 639 len 1]
        mem[_108 + 608] = mem[_107 + 608]
        require mem[_107 + 640] == mem[_107 + 671 len 1]
        mem[_108 + 640] = mem[_107 + 640]
        require mem[_107 + 672] == mem[_107 + 703 len 1]
        mem[_108 + 672] = mem[_107 + 672]
        require mem[_107 + 704] == mem[_107 + 735 len 1]
        mem[_108 + 704] = mem[_107 + 704]
        require mem[_107 + 736] == mem[_107 + 767 len 1]
        mem[_108 + 736] = mem[_107 + 736]
        require mem[_107 + 768] == mem[_107 + 799 len 1]
        mem[_108 + 768] = mem[_107 + 768]
        require mem[_107 + 800] == mem[_107 + 831 len 1]
        mem[_108 + 800] = mem[_107 + 800]
        _135 = mem[_108 + 800]
        if 8 < mem[_108 + 831 len 1]:
            revert with 0, 17
        mem[0] = uint8(-mem[_108 + 831 len 1] + 8)
        _136 = sha3(mem[0], 4)
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 5
        if packIndices[cd[((32 * idx) + cd[4] + 36)] << 240] >= uint256(pack[mem[0]].field_0):
            revert with 0, 50
        mem[0] = sha3(mem[0], 4)
        _139 = mem[64]
        mem[64] = mem[64] + 96
        mem[_139] = uint16(stor[sha3(_136) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_0)
        mem[_139 + 32] = Mask(80, 0, stor[sha3(_136) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16)
        mem[_139 + 64] = address(stor[sha3(_136) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_96)
        if uint256(sub_2c5124a9) < Mask(80, 0, stor[sha3(_136) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16):
            revert with 0, 17
        if uint8(-uint8(_135) + 8) and uint256(sub_2c5124a9) - Mask(80, 0, stor[sha3(_136) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16) > -1 / uint8(-uint8(_135) + 8):
            revert with 0, 17
        if s > !((uint256(sub_2c5124a9) * uint8(-uint8(_135) + 8)) - (Mask(80, 0, stor[sha3(_136) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16) * uint8(-uint8(_135) + 8))):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + (uint256(sub_2c5124a9) * uint8(-uint8(_135) + 8)) - (Mask(80, 0, stor[sha3(_136) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16) * uint8(-uint8(_135) + 8))
        continue 
    return s
}

function rescue(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if stor16:
        revert with 0, 'No reentrancy'
    stor16 = 1
    if True and not rescueEnabled:
        revert with 0, 'RESCUE DISABLED'
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[64] = 288
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    idx = 0
    s = 96
    s = 0
    while idx < arg1.length:
        mem[0] = msg.sender
        mem[32] = 6
        s = 0
        while s < uint256(stor6[address(msg.sender)].field_0):
            mem[0] = sha3(address(msg.sender), 6)
            if uint256(stor6[address(msg.sender)][s].field_0) != cd[((32 * idx) + arg1 + 36)]:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                continue 
            if uint256(stor6[address(msg.sender)].field_0) < 1:
                revert with 0, 17
            if uint256(stor6[address(msg.sender)].field_0) - 1 >= uint256(stor6[address(msg.sender)].field_0):
                revert with 0, 50
            if s >= uint256(stor6[address(msg.sender)].field_0):
                revert with 0, 50
            uint256(stor6[address(msg.sender)][s].field_0) = uint256(stor6[address(msg.sender)][uint256(stor6[address(msg.sender)].field_0)].field_0)
            if not uint256(stor6[address(msg.sender)].field_0):
                revert with 0, 49
            mem[0] = sha3(address(msg.sender), 6)
            uint256(stor6[address(msg.sender)][uint256(stor6[address(msg.sender)].field_0)].field_0) = 0
            uint256(stor6[address(msg.sender)].field_0)--
            require ext_code.size(stor1)
            staticcall stor1.getTokenTraits(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + arg1 + 36)]
            mem[mem[64] len 832] = ext_call.return_data[0 len 832]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _309 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 832
            _311 = mem[64]
            if mem[64] + 832 < mem[64] or mem[64] + 832 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 832
            require mem[_309] == bool(mem[_309])
            mem[_311] = mem[_309]
            require mem[_309 + 32] == mem[_309 + 63 len 1]
            mem[_311 + 32] = mem[_309 + 32]
            require mem[_309 + 64] == mem[_309 + 95 len 1]
            mem[_311 + 64] = mem[_309 + 64]
            require mem[_309 + 96] == mem[_309 + 127 len 1]
            mem[_311 + 96] = mem[_309 + 96]
            require mem[_309 + 128] == mem[_309 + 159 len 1]
            mem[_311 + 128] = mem[_309 + 128]
            require mem[_309 + 160] == mem[_309 + 191 len 1]
            mem[_311 + 160] = mem[_309 + 160]
            require mem[_309 + 192] == mem[_309 + 223 len 1]
            mem[_311 + 192] = mem[_309 + 192]
            require mem[_309 + 224] == mem[_309 + 255 len 1]
            mem[_311 + 224] = mem[_309 + 224]
            require mem[_309 + 256] == mem[_309 + 287 len 1]
            mem[_311 + 256] = mem[_309 + 256]
            require mem[_309 + 288] == mem[_309 + 319 len 1]
            mem[_311 + 288] = mem[_309 + 288]
            require mem[_309 + 320] == mem[_309 + 351 len 1]
            mem[_311 + 320] = mem[_309 + 320]
            require mem[_309 + 352] == mem[_309 + 383 len 1]
            mem[_311 + 352] = mem[_309 + 352]
            require mem[_309 + 384] == mem[_309 + 415 len 1]
            mem[_311 + 384] = mem[_309 + 384]
            require mem[_309 + 416] == mem[_309 + 447 len 1]
            mem[_311 + 416] = mem[_309 + 416]
            require mem[_309 + 448] == mem[_309 + 479 len 1]
            mem[_311 + 448] = mem[_309 + 448]
            require mem[_309 + 480] == mem[_309 + 511 len 1]
            mem[_311 + 480] = mem[_309 + 480]
            require mem[_309 + 512] == mem[_309 + 543 len 1]
            mem[_311 + 512] = mem[_309 + 512]
            require mem[_309 + 544] == mem[_309 + 575 len 1]
            mem[_311 + 544] = mem[_309 + 544]
            require mem[_309 + 576] == mem[_309 + 607 len 1]
            mem[_311 + 576] = mem[_309 + 576]
            require mem[_309 + 608] == mem[_309 + 639 len 1]
            mem[_311 + 608] = mem[_309 + 608]
            require mem[_309 + 640] == mem[_309 + 671 len 1]
            mem[_311 + 640] = mem[_309 + 640]
            require mem[_309 + 672] == mem[_309 + 703 len 1]
            mem[_311 + 672] = mem[_309 + 672]
            require mem[_309 + 704] == mem[_309 + 735 len 1]
            mem[_311 + 704] = mem[_309 + 704]
            require mem[_309 + 736] == mem[_309 + 767 len 1]
            mem[_311 + 736] = mem[_309 + 736]
            require mem[_309 + 768] == mem[_309 + 799 len 1]
            mem[_311 + 768] = mem[_309 + 768]
            require mem[_309 + 800] == mem[_309 + 831 len 1]
            mem[_311 + 800] = mem[_309 + 800]
            if mem[_311]:
                mem[0] = cd[((32 * idx) + arg1 + 36)]
                mem[32] = 3
                _377 = mem[64]
                mem[64] = mem[64] + 96
                mem[_377] = uint16(sub_771f2476[cd[((32 * idx) + arg1 + 36)]].field_0)
                mem[_377 + 32] = Mask(80, 0, sub_771f2476[cd[((32 * idx) + arg1 + 36)]].field_16)
                mem[_377 + 64] = address(sub_771f2476[cd[((32 * idx) + arg1 + 36)]].field_96)
                if address(sub_771f2476[cd[((32 * idx) + arg1 + 36)]].field_96) != msg.sender:
                    revert with 0, 'SWIPER, NO SWIPING'
                require ext_code.size(stor1)
                call stor1.0x23b872dd with:
                     gas gas_remaining wei
                    args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = cd[((32 * idx) + arg1 + 36)]
                mem[32] = 3
                uint256(sub_771f2476[cd[((32 * idx) + arg1 + 36)]].field_0) = 0
                if sub_3308e6c1 < 1:
                    revert with 0, 17
                sub_3308e6c1--
                mem[mem[64]] = cd[((32 * idx) + arg1 + 36)]
                mem[mem[64] + 32] = 0
                mem[mem[64] + 64] = 1
                mem[mem[64] + 96] = msg.sender
                emit 0x64e9ba1a: cd[((32 * idx) + arg1 + 36)], 0, 1, msg.sender
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _377
                s = cd[((32 * idx) + arg1 + 36)]
                continue 
            require ext_code.size(stor1)
            staticcall stor1.getTokenTraits(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + arg1 + 36)]
            mem[mem[64] len 832] = ext_call.return_data[0 len 832]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _384 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 832
            _390 = mem[64]
            if mem[64] + 832 < mem[64] or mem[64] + 832 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 832
            require mem[_384] == bool(mem[_384])
            mem[_390] = mem[_384]
            require mem[_384 + 32] == mem[_384 + 63 len 1]
            mem[_390 + 32] = mem[_384 + 32]
            require mem[_384 + 64] == mem[_384 + 95 len 1]
            mem[_390 + 64] = mem[_384 + 64]
            require mem[_384 + 96] == mem[_384 + 127 len 1]
            mem[_390 + 96] = mem[_384 + 96]
            require mem[_384 + 128] == mem[_384 + 159 len 1]
            mem[_390 + 128] = mem[_384 + 128]
            require mem[_384 + 160] == mem[_384 + 191 len 1]
            mem[_390 + 160] = mem[_384 + 160]
            require mem[_384 + 192] == mem[_384 + 223 len 1]
            mem[_390 + 192] = mem[_384 + 192]
            require mem[_384 + 224] == mem[_384 + 255 len 1]
            mem[_390 + 224] = mem[_384 + 224]
            require mem[_384 + 256] == mem[_384 + 287 len 1]
            mem[_390 + 256] = mem[_384 + 256]
            require mem[_384 + 288] == mem[_384 + 319 len 1]
            mem[_390 + 288] = mem[_384 + 288]
            require mem[_384 + 320] == mem[_384 + 351 len 1]
            mem[_390 + 320] = mem[_384 + 320]
            require mem[_384 + 352] == mem[_384 + 383 len 1]
            mem[_390 + 352] = mem[_384 + 352]
            require mem[_384 + 384] == mem[_384 + 415 len 1]
            mem[_390 + 384] = mem[_384 + 384]
            require mem[_384 + 416] == mem[_384 + 447 len 1]
            mem[_390 + 416] = mem[_384 + 416]
            require mem[_384 + 448] == mem[_384 + 479 len 1]
            mem[_390 + 448] = mem[_384 + 448]
            require mem[_384 + 480] == mem[_384 + 511 len 1]
            mem[_390 + 480] = mem[_384 + 480]
            require mem[_384 + 512] == mem[_384 + 543 len 1]
            mem[_390 + 512] = mem[_384 + 512]
            require mem[_384 + 544] == mem[_384 + 575 len 1]
            mem[_390 + 544] = mem[_384 + 544]
            require mem[_384 + 576] == mem[_384 + 607 len 1]
            mem[_390 + 576] = mem[_384 + 576]
            require mem[_384 + 608] == mem[_384 + 639 len 1]
            mem[_390 + 608] = mem[_384 + 608]
            require mem[_384 + 640] == mem[_384 + 671 len 1]
            mem[_390 + 640] = mem[_384 + 640]
            require mem[_384 + 672] == mem[_384 + 703 len 1]
            mem[_390 + 672] = mem[_384 + 672]
            require mem[_384 + 704] == mem[_384 + 735 len 1]
            mem[_390 + 704] = mem[_384 + 704]
            require mem[_384 + 736] == mem[_384 + 767 len 1]
            mem[_390 + 736] = mem[_384 + 736]
            require mem[_384 + 768] == mem[_384 + 799 len 1]
            mem[_390 + 768] = mem[_384 + 768]
            require mem[_384 + 800] == mem[_384 + 831 len 1]
            mem[_390 + 800] = mem[_384 + 800]
            _451 = mem[_390 + 800]
            if 8 < mem[_390 + 831 len 1]:
                revert with 0, 17
            mem[0] = uint8(-mem[_390 + 831 len 1] + 8)
            _454 = sha3(mem[0], 4)
            mem[32] = 5
            if packIndices[cd[((32 * idx) + arg1 + 36)]] >= uint256(pack[mem[0]].field_0):
                revert with 0, 50
            mem[0] = sha3(mem[0], 4)
            _457 = mem[64]
            mem[64] = mem[64] + 96
            mem[_457] = uint16(stor[stor5[cd[((32 * idx) + arg1 + 36)]] + sha3(_454)].field_0)
            mem[_457 + 32] = Mask(80, 0, stor[stor5[cd[((32 * idx) + arg1 + 36)]] + sha3(_454)].field_16)
            mem[_457 + 64] = address(stor[stor5[cd[((32 * idx) + arg1 + 36)]] + sha3(_454)].field_96)
            if address(stor[stor5[cd[((32 * idx) + arg1 + 36)]] + sha3(_454)].field_96) != msg.sender:
                revert with 0, 'SWIPER, NO SWIPING'
            if totalAlphaStaked < uint8(-uint8(_451) + 8):
                revert with 0, 17
            totalAlphaStaked -= uint8(-uint8(_451) + 8)
            require ext_code.size(stor1)
            call stor1.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[32] = 4
            if uint256(pack[-uint8(_451) + 8 << 248].field_0) < 1:
                revert with 0, 17
            if uint256(pack[-uint8(_451) + 8 << 248].field_0) - 1 >= uint256(pack[-uint8(_451) + 8 << 248].field_0):
                revert with 0, 50
            mem[0] = sha3(-uint8(_451) + 8 << 248, 4)
            _483 = mem[64]
            mem[64] = mem[64] + 96
            mem[_483] = uint16(pack[-uint8(_451) + 8 << 248][uint256(pack[-uint8(_451) + 8 << 248].field_0)].field_0)
            mem[_483 + 32] = Mask(80, 0, pack[-uint8(_451) + 8 << 248][uint256(pack[-uint8(_451) + 8 << 248].field_0)].field_0)
            mem[_483 + 64] = address(pack[-uint8(_451) + 8 << 248][uint256(pack[-uint8(_451) + 8 << 248].field_0)].field_0)
            if packIndices[cd[((32 * idx) + arg1 + 36)]] >= uint256(pack[-uint8(_451) + 8 << 248].field_0):
                revert with 0, 50
            uint16(pack[-uint8(_451) + 8 << 248][stor5[cd[((32 * idx) + arg1 + 36)]]].field_0) = uint16(pack[-uint8(_451) + 8 << 248][uint256(pack[-uint8(_451) + 8 << 248].field_0)].field_0)
            Mask(80, 0, pack[-uint8(_451) + 8 << 248][stor5[cd[((32 * idx) + arg1 + 36)]]].field_16) = Mask(80, 0, pack[-uint8(_451) + 8 << 248][uint256(pack[-uint8(_451) + 8 << 248].field_0)].field_0)
            address(pack[-uint8(_451) + 8 << 248][stor5[cd[((32 * idx) + arg1 + 36)]]].field_96) = address(pack[-uint8(_451) + 8 << 248][uint256(pack[-uint8(_451) + 8 << 248].field_0)].field_0)
            packIndices[uint16(stor4[-uint8(_451) + 8 << 248][uint256(stor4[-uint8(_451) + 8 << 248].field_0)].field_0)] = packIndices[cd[((32 * idx) + arg1 + 36)]]
            if not uint256(pack[-uint8(_451) + 8 << 248].field_0):
                revert with 0, 49
            uint256(pack[-uint8(_451) + 8 << 248][uint256(pack[-uint8(_451) + 8 << 248].field_0)].field_0) = 0
            uint256(pack[-uint8(_451) + 8 << 248].field_0)--
            mem[0] = cd[((32 * idx) + arg1 + 36)]
            mem[32] = 5
            packIndices[cd[((32 * idx) + arg1 + 36)]] = 0
            if sub_d5958b35 < 1:
                revert with 0, 17
            sub_d5958b35--
            mem[mem[64]] = cd[((32 * idx) + arg1 + 36)]
            mem[mem[64] + 32] = 0
            mem[mem[64] + 64] = 1
            mem[mem[64] + 96] = msg.sender
            emit 0x8e310b66: cd[((32 * idx) + arg1 + 36)], 0, 1, msg.sender
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _457
            s = cd[((32 * idx) + arg1 + 36)]
            continue 
        require ext_code.size(stor1)
        staticcall stor1.getTokenTraits(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + arg1 + 36)]
        mem[mem[64] len 832] = ext_call.return_data[0 len 832]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _301 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 832
        _305 = mem[64]
        if mem[64] + 832 < mem[64] or mem[64] + 832 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 832
        require mem[_301] == bool(mem[_301])
        mem[_305] = mem[_301]
        require mem[_301 + 32] == mem[_301 + 63 len 1]
        mem[_305 + 32] = mem[_301 + 32]
        require mem[_301 + 64] == mem[_301 + 95 len 1]
        mem[_305 + 64] = mem[_301 + 64]
        require mem[_301 + 96] == mem[_301 + 127 len 1]
        mem[_305 + 96] = mem[_301 + 96]
        require mem[_301 + 128] == mem[_301 + 159 len 1]
        mem[_305 + 128] = mem[_301 + 128]
        require mem[_301 + 160] == mem[_301 + 191 len 1]
        mem[_305 + 160] = mem[_301 + 160]
        require mem[_301 + 192] == mem[_301 + 223 len 1]
        mem[_305 + 192] = mem[_301 + 192]
        require mem[_301 + 224] == mem[_301 + 255 len 1]
        mem[_305 + 224] = mem[_301 + 224]
        require mem[_301 + 256] == mem[_301 + 287 len 1]
        mem[_305 + 256] = mem[_301 + 256]
        require mem[_301 + 288] == mem[_301 + 319 len 1]
        mem[_305 + 288] = mem[_301 + 288]
        require mem[_301 + 320] == mem[_301 + 351 len 1]
        mem[_305 + 320] = mem[_301 + 320]
        require mem[_301 + 352] == mem[_301 + 383 len 1]
        mem[_305 + 352] = mem[_301 + 352]
        require mem[_301 + 384] == mem[_301 + 415 len 1]
        mem[_305 + 384] = mem[_301 + 384]
        require mem[_301 + 416] == mem[_301 + 447 len 1]
        mem[_305 + 416] = mem[_301 + 416]
        require mem[_301 + 448] == mem[_301 + 479 len 1]
        mem[_305 + 448] = mem[_301 + 448]
        require mem[_301 + 480] == mem[_301 + 511 len 1]
        mem[_305 + 480] = mem[_301 + 480]
        require mem[_301 + 512] == mem[_301 + 543 len 1]
        mem[_305 + 512] = mem[_301 + 512]
        require mem[_301 + 544] == mem[_301 + 575 len 1]
        mem[_305 + 544] = mem[_301 + 544]
        require mem[_301 + 576] == mem[_301 + 607 len 1]
        mem[_305 + 576] = mem[_301 + 576]
        require mem[_301 + 608] == mem[_301 + 639 len 1]
        mem[_305 + 608] = mem[_301 + 608]
        require mem[_301 + 640] == mem[_301 + 671 len 1]
        mem[_305 + 640] = mem[_301 + 640]
        require mem[_301 + 672] == mem[_301 + 703 len 1]
        mem[_305 + 672] = mem[_301 + 672]
        require mem[_301 + 704] == mem[_301 + 735 len 1]
        mem[_305 + 704] = mem[_301 + 704]
        require mem[_301 + 736] == mem[_301 + 767 len 1]
        mem[_305 + 736] = mem[_301 + 736]
        require mem[_301 + 768] == mem[_301 + 799 len 1]
        mem[_305 + 768] = mem[_301 + 768]
        require mem[_301 + 800] == mem[_301 + 831 len 1]
        mem[_305 + 800] = mem[_301 + 800]
        if mem[_305]:
            mem[0] = cd[((32 * idx) + arg1 + 36)]
            mem[32] = 3
            _362 = mem[64]
            mem[64] = mem[64] + 96
            mem[_362] = uint16(sub_771f2476[cd[((32 * idx) + arg1 + 36)]].field_0)
            mem[_362 + 32] = Mask(80, 0, sub_771f2476[cd[((32 * idx) + arg1 + 36)]].field_16)
            mem[_362 + 64] = address(sub_771f2476[cd[((32 * idx) + arg1 + 36)]].field_96)
            if address(sub_771f2476[cd[((32 * idx) + arg1 + 36)]].field_96) != msg.sender:
                revert with 0, 'SWIPER, NO SWIPING'
            require ext_code.size(stor1)
            call stor1.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[0] = cd[((32 * idx) + arg1 + 36)]
            mem[32] = 3
            uint256(sub_771f2476[cd[((32 * idx) + arg1 + 36)]].field_0) = 0
            if sub_3308e6c1 < 1:
                revert with 0, 17
            sub_3308e6c1--
            mem[mem[64]] = cd[((32 * idx) + arg1 + 36)]
            mem[mem[64] + 32] = 0
            mem[mem[64] + 64] = 1
            mem[mem[64] + 96] = msg.sender
            emit 0x64e9ba1a: cd[((32 * idx) + arg1 + 36)], 0, 1, msg.sender
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _362
            s = cd[((32 * idx) + arg1 + 36)]
            continue 
        require ext_code.size(stor1)
        staticcall stor1.getTokenTraits(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + arg1 + 36)]
        mem[mem[64] len 832] = ext_call.return_data[0 len 832]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _369 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 832
        _374 = mem[64]
        if mem[64] + 832 < mem[64] or mem[64] + 832 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 832
        require mem[_369] == bool(mem[_369])
        mem[_374] = mem[_369]
        require mem[_369 + 32] == mem[_369 + 63 len 1]
        mem[_374 + 32] = mem[_369 + 32]
        require mem[_369 + 64] == mem[_369 + 95 len 1]
        mem[_374 + 64] = mem[_369 + 64]
        require mem[_369 + 96] == mem[_369 + 127 len 1]
        mem[_374 + 96] = mem[_369 + 96]
        require mem[_369 + 128] == mem[_369 + 159 len 1]
        mem[_374 + 128] = mem[_369 + 128]
        require mem[_369 + 160] == mem[_369 + 191 len 1]
        mem[_374 + 160] = mem[_369 + 160]
        require mem[_369 + 192] == mem[_369 + 223 len 1]
        mem[_374 + 192] = mem[_369 + 192]
        require mem[_369 + 224] == mem[_369 + 255 len 1]
        mem[_374 + 224] = mem[_369 + 224]
        require mem[_369 + 256] == mem[_369 + 287 len 1]
        mem[_374 + 256] = mem[_369 + 256]
        require mem[_369 + 288] == mem[_369 + 319 len 1]
        mem[_374 + 288] = mem[_369 + 288]
        require mem[_369 + 320] == mem[_369 + 351 len 1]
        mem[_374 + 320] = mem[_369 + 320]
        require mem[_369 + 352] == mem[_369 + 383 len 1]
        mem[_374 + 352] = mem[_369 + 352]
        require mem[_369 + 384] == mem[_369 + 415 len 1]
        mem[_374 + 384] = mem[_369 + 384]
        require mem[_369 + 416] == mem[_369 + 447 len 1]
        mem[_374 + 416] = mem[_369 + 416]
        require mem[_369 + 448] == mem[_369 + 479 len 1]
        mem[_374 + 448] = mem[_369 + 448]
        require mem[_369 + 480] == mem[_369 + 511 len 1]
        mem[_374 + 480] = mem[_369 + 480]
        require mem[_369 + 512] == mem[_369 + 543 len 1]
        mem[_374 + 512] = mem[_369 + 512]
        require mem[_369 + 544] == mem[_369 + 575 len 1]
        mem[_374 + 544] = mem[_369 + 544]
        require mem[_369 + 576] == mem[_369 + 607 len 1]
        mem[_374 + 576] = mem[_369 + 576]
        require mem[_369 + 608] == mem[_369 + 639 len 1]
        mem[_374 + 608] = mem[_369 + 608]
        require mem[_369 + 640] == mem[_369 + 671 len 1]
        mem[_374 + 640] = mem[_369 + 640]
        require mem[_369 + 672] == mem[_369 + 703 len 1]
        mem[_374 + 672] = mem[_369 + 672]
        require mem[_369 + 704] == mem[_369 + 735 len 1]
        mem[_374 + 704] = mem[_369 + 704]
        require mem[_369 + 736] == mem[_369 + 767 len 1]
        mem[_374 + 736] = mem[_369 + 736]
        require mem[_369 + 768] == mem[_369 + 799 len 1]
        mem[_374 + 768] = mem[_369 + 768]
        require mem[_369 + 800] == mem[_369 + 831 len 1]
        mem[_374 + 800] = mem[_369 + 800]
        _441 = mem[_374 + 800]
        if 8 < mem[_374 + 831 len 1]:
            revert with 0, 17
        mem[0] = uint8(-mem[_374 + 831 len 1] + 8)
        _444 = sha3(mem[0], 4)
        mem[32] = 5
        if packIndices[cd[((32 * idx) + arg1 + 36)]] >= uint256(pack[mem[0]].field_0):
            revert with 0, 50
        mem[0] = sha3(mem[0], 4)
        _447 = mem[64]
        mem[64] = mem[64] + 96
        mem[_447] = uint16(stor[stor5[cd[((32 * idx) + arg1 + 36)]] + sha3(_444)].field_0)
        mem[_447 + 32] = Mask(80, 0, stor[stor5[cd[((32 * idx) + arg1 + 36)]] + sha3(_444)].field_16)
        mem[_447 + 64] = address(stor[stor5[cd[((32 * idx) + arg1 + 36)]] + sha3(_444)].field_96)
        if address(stor[stor5[cd[((32 * idx) + arg1 + 36)]] + sha3(_444)].field_96) != msg.sender:
            revert with 0, 'SWIPER, NO SWIPING'
        if totalAlphaStaked < uint8(-uint8(_441) + 8):
            revert with 0, 17
        totalAlphaStaked -= uint8(-uint8(_441) + 8)
        require ext_code.size(stor1)
        call stor1.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[32] = 4
        if uint256(pack[-uint8(_441) + 8 << 248].field_0) < 1:
            revert with 0, 17
        if uint256(pack[-uint8(_441) + 8 << 248].field_0) - 1 >= uint256(pack[-uint8(_441) + 8 << 248].field_0):
            revert with 0, 50
        mem[0] = sha3(-uint8(_441) + 8 << 248, 4)
        _464 = mem[64]
        mem[64] = mem[64] + 96
        mem[_464] = uint16(pack[-uint8(_441) + 8 << 248][uint256(pack[-uint8(_441) + 8 << 248].field_0)].field_0)
        mem[_464 + 32] = Mask(80, 0, pack[-uint8(_441) + 8 << 248][uint256(pack[-uint8(_441) + 8 << 248].field_0)].field_0)
        mem[_464 + 64] = address(pack[-uint8(_441) + 8 << 248][uint256(pack[-uint8(_441) + 8 << 248].field_0)].field_0)
        if packIndices[cd[((32 * idx) + arg1 + 36)]] >= uint256(pack[-uint8(_441) + 8 << 248].field_0):
            revert with 0, 50
        uint16(pack[-uint8(_441) + 8 << 248][stor5[cd[((32 * idx) + arg1 + 36)]]].field_0) = uint16(pack[-uint8(_441) + 8 << 248][uint256(pack[-uint8(_441) + 8 << 248].field_0)].field_0)
        Mask(80, 0, pack[-uint8(_441) + 8 << 248][stor5[cd[((32 * idx) + arg1 + 36)]]].field_16) = Mask(80, 0, pack[-uint8(_441) + 8 << 248][uint256(pack[-uint8(_441) + 8 << 248].field_0)].field_0)
        address(pack[-uint8(_441) + 8 << 248][stor5[cd[((32 * idx) + arg1 + 36)]]].field_96) = address(pack[-uint8(_441) + 8 << 248][uint256(pack[-uint8(_441) + 8 << 248].field_0)].field_0)
        packIndices[uint16(stor4[-uint8(_441) + 8 << 248][uint256(stor4[-uint8(_441) + 8 << 248].field_0)].field_0)] = packIndices[cd[((32 * idx) + arg1 + 36)]]
        if not uint256(pack[-uint8(_441) + 8 << 248].field_0):
            revert with 0, 49
        uint256(pack[-uint8(_441) + 8 << 248][uint256(pack[-uint8(_441) + 8 << 248].field_0)].field_0) = 0
        uint256(pack[-uint8(_441) + 8 << 248].field_0)--
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 5
        packIndices[cd[((32 * idx) + arg1 + 36)]] = 0
        if sub_d5958b35 < 1:
            revert with 0, 17
        sub_d5958b35--
        mem[mem[64]] = cd[((32 * idx) + arg1 + 36)]
        mem[mem[64] + 32] = 0
        mem[mem[64] + 64] = 1
        mem[mem[64] + 96] = msg.sender
        emit 0x8e310b66: cd[((32 * idx) + arg1 + 36)], 0, 1, msg.sender
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = _447
        s = cd[((32 * idx) + arg1 + 36)]
        continue 
    stor16 = 0
}

function sub_5b519142(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if stor16:
        revert with 0, 'No reentrancy'
    stor16 = 1
    if address(cd[4]) != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'DONT GIVE YOUR TOKENS AWAY'
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
            if uint16(cd[((32 * idx) + cd[36] + 36)]):
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                mem[32] = 6
                uint256(stor6[address(msg.sender)].field_0)++
                mem[0] = sha3(address(msg.sender), 6)
                uint16(stor6[address(msg.sender)][uint256(stor6[address(msg.sender)].field_0)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                Mask(240, 0, stor6[address(msg.sender)][uint256(stor6[address(msg.sender)].field_0)].field_16) = 0
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                if msg.sender == stor1:
                    require ext_code.size(stor1)
                    staticcall stor1.getTokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args (cd[((32 * idx) + cd[36] + 36)] << 240)
                    mem[mem[64] len 832] = ext_call.return_data[0 len 832]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _414 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 832
                    _420 = mem[64]
                    if mem[64] + 832 < mem[64] or mem[64] + 832 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + 832
                    require mem[_414] == bool(mem[_414])
                    mem[_420] = mem[_414]
                    require mem[_414 + 32] == mem[_414 + 63 len 1]
                    mem[_420 + 32] = mem[_414 + 32]
                    require mem[_414 + 64] == mem[_414 + 95 len 1]
                    mem[_420 + 64] = mem[_414 + 64]
                    require mem[_414 + 96] == mem[_414 + 127 len 1]
                    mem[_420 + 96] = mem[_414 + 96]
                    require mem[_414 + 128] == mem[_414 + 159 len 1]
                    mem[_420 + 128] = mem[_414 + 128]
                    require mem[_414 + 160] == mem[_414 + 191 len 1]
                    mem[_420 + 160] = mem[_414 + 160]
                    require mem[_414 + 192] == mem[_414 + 223 len 1]
                    mem[_420 + 192] = mem[_414 + 192]
                    require mem[_414 + 224] == mem[_414 + 255 len 1]
                    mem[_420 + 224] = mem[_414 + 224]
                    require mem[_414 + 256] == mem[_414 + 287 len 1]
                    mem[_420 + 256] = mem[_414 + 256]
                    require mem[_414 + 288] == mem[_414 + 319 len 1]
                    mem[_420 + 288] = mem[_414 + 288]
                    require mem[_414 + 320] == mem[_414 + 351 len 1]
                    mem[_420 + 320] = mem[_414 + 320]
                    require mem[_414 + 352] == mem[_414 + 383 len 1]
                    mem[_420 + 352] = mem[_414 + 352]
                    require mem[_414 + 384] == mem[_414 + 415 len 1]
                    mem[_420 + 384] = mem[_414 + 384]
                    require mem[_414 + 416] == mem[_414 + 447 len 1]
                    mem[_420 + 416] = mem[_414 + 416]
                    require mem[_414 + 448] == mem[_414 + 479 len 1]
                    mem[_420 + 448] = mem[_414 + 448]
                    require mem[_414 + 480] == mem[_414 + 511 len 1]
                    mem[_420 + 480] = mem[_414 + 480]
                    require mem[_414 + 512] == mem[_414 + 543 len 1]
                    mem[_420 + 512] = mem[_414 + 512]
                    require mem[_414 + 544] == mem[_414 + 575 len 1]
                    mem[_420 + 544] = mem[_414 + 544]
                    require mem[_414 + 576] == mem[_414 + 607 len 1]
                    mem[_420 + 576] = mem[_414 + 576]
                    require mem[_414 + 608] == mem[_414 + 639 len 1]
                    mem[_420 + 608] = mem[_414 + 608]
                    require mem[_414 + 640] == mem[_414 + 671 len 1]
                    mem[_420 + 640] = mem[_414 + 640]
                    require mem[_414 + 672] == mem[_414 + 703 len 1]
                    mem[_420 + 672] = mem[_414 + 672]
                    require mem[_414 + 704] == mem[_414 + 735 len 1]
                    mem[_420 + 704] = mem[_414 + 704]
                    require mem[_414 + 736] == mem[_414 + 767 len 1]
                    mem[_420 + 736] = mem[_414 + 736]
                    require mem[_414 + 768] == mem[_414 + 799 len 1]
                    mem[_420 + 768] = mem[_414 + 768]
                    require mem[_414 + 800] == mem[_414 + 831 len 1]
                    mem[_420 + 800] = mem[_414 + 800]
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    if mem[_420]:
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        if sub_91fae6c2 >= 2400000000 * 10^18:
                            _600 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_600] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_600 + 32] = Mask(80, 0, block.timestamp)
                            mem[_600 + 64] = address(cd[4])
                        else:
                            if block.timestamp < lastClaimTimestamp:
                                revert with 0, 17
                            if block.timestamp - lastClaimTimestamp and sub_3308e6c1 > -1 / block.timestamp - lastClaimTimestamp:
                                revert with 0, 17
                            if (block.timestamp * sub_3308e6c1) - (lastClaimTimestamp * sub_3308e6c1) and sub_9795314b > -1 / (block.timestamp * sub_3308e6c1) - (lastClaimTimestamp * sub_3308e6c1):
                                revert with 0, 17
                            if sub_91fae6c2 > !((block.timestamp * sub_3308e6c1 * sub_9795314b) - (lastClaimTimestamp * sub_3308e6c1 * sub_9795314b) / 24 * 3600):
                                revert with 0, 17
                            sub_91fae6c2 += (block.timestamp * sub_3308e6c1 * sub_9795314b) - (lastClaimTimestamp * sub_3308e6c1 * sub_9795314b) / 24 * 3600
                            lastClaimTimestamp = block.timestamp
                            _657 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_657] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_657 + 32] = Mask(80, 0, block.timestamp)
                            mem[_657 + 64] = address(cd[4])
                        mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[32] = 3
                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                        address(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                        if sub_3308e6c1 > -2:
                            revert with 0, 17
                        sub_3308e6c1++
                        mem[mem[64]] = address(cd[4])
                        mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 64] = block.timestamp
                        emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                    else:
                        require ext_code.size(stor1)
                        staticcall stor1.getTokenTraits(uint256 arg1) with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64] len 832] = ext_call.return_data[0 len 832]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _618 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 832
                        _630 = mem[64]
                        if mem[64] + 832 < mem[64] or mem[64] + 832 > test266151307():
                            revert with 0, 65
                        mem[64] = mem[64] + 832
                        require mem[_618] == bool(mem[_618])
                        mem[_630] = mem[_618]
                        require mem[_618 + 32] == mem[_618 + 63 len 1]
                        mem[_630 + 32] = mem[_618 + 32]
                        require mem[_618 + 64] == mem[_618 + 95 len 1]
                        mem[_630 + 64] = mem[_618 + 64]
                        require mem[_618 + 96] == mem[_618 + 127 len 1]
                        mem[_630 + 96] = mem[_618 + 96]
                        require mem[_618 + 128] == mem[_618 + 159 len 1]
                        mem[_630 + 128] = mem[_618 + 128]
                        require mem[_618 + 160] == mem[_618 + 191 len 1]
                        mem[_630 + 160] = mem[_618 + 160]
                        require mem[_618 + 192] == mem[_618 + 223 len 1]
                        mem[_630 + 192] = mem[_618 + 192]
                        require mem[_618 + 224] == mem[_618 + 255 len 1]
                        mem[_630 + 224] = mem[_618 + 224]
                        require mem[_618 + 256] == mem[_618 + 287 len 1]
                        mem[_630 + 256] = mem[_618 + 256]
                        require mem[_618 + 288] == mem[_618 + 319 len 1]
                        mem[_630 + 288] = mem[_618 + 288]
                        require mem[_618 + 320] == mem[_618 + 351 len 1]
                        mem[_630 + 320] = mem[_618 + 320]
                        require mem[_618 + 352] == mem[_618 + 383 len 1]
                        mem[_630 + 352] = mem[_618 + 352]
                        require mem[_618 + 384] == mem[_618 + 415 len 1]
                        mem[_630 + 384] = mem[_618 + 384]
                        require mem[_618 + 416] == mem[_618 + 447 len 1]
                        mem[_630 + 416] = mem[_618 + 416]
                        require mem[_618 + 448] == mem[_618 + 479 len 1]
                        mem[_630 + 448] = mem[_618 + 448]
                        require mem[_618 + 480] == mem[_618 + 511 len 1]
                        mem[_630 + 480] = mem[_618 + 480]
                        require mem[_618 + 512] == mem[_618 + 543 len 1]
                        mem[_630 + 512] = mem[_618 + 512]
                        require mem[_618 + 544] == mem[_618 + 575 len 1]
                        mem[_630 + 544] = mem[_618 + 544]
                        require mem[_618 + 576] == mem[_618 + 607 len 1]
                        mem[_630 + 576] = mem[_618 + 576]
                        require mem[_618 + 608] == mem[_618 + 639 len 1]
                        mem[_630 + 608] = mem[_618 + 608]
                        require mem[_618 + 640] == mem[_618 + 671 len 1]
                        mem[_630 + 640] = mem[_618 + 640]
                        require mem[_618 + 672] == mem[_618 + 703 len 1]
                        mem[_630 + 672] = mem[_618 + 672]
                        require mem[_618 + 704] == mem[_618 + 735 len 1]
                        mem[_630 + 704] = mem[_618 + 704]
                        require mem[_618 + 736] == mem[_618 + 767 len 1]
                        mem[_630 + 736] = mem[_618 + 736]
                        require mem[_618 + 768] == mem[_618 + 799 len 1]
                        mem[_630 + 768] = mem[_618 + 768]
                        require mem[_618 + 800] == mem[_618 + 831 len 1]
                        mem[_630 + 800] = mem[_618 + 800]
                        if 8 < mem[_630 + 831 len 1]:
                            revert with 0, 17
                        if totalAlphaStaked > !uint8(-mem[_630 + 831 len 1] + 8):
                            revert with 0, 17
                        totalAlphaStaked += uint8(-mem[_630 + 831 len 1] + 8)
                        mem[0] = uint8(-mem[_630 + 831 len 1] + 8)
                        _870 = sha3(mem[0], 4)
                        mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = uint256(stor[_870].field_0)
                        mem[32] = 4
                        _872 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_872] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[_872 + 32] = Mask(80, 0, stor9)
                        mem[_872 + 64] = address(cd[4])
                        uint256(stor[_870].field_0)++
                        mem[0] = _870
                        uint16(stor[uint256(stor[_870].field_0) + sha3(_870)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                        Mask(80, 0, stor[uint256(stor[_870].field_0) + sha3(_870)].field_0) = Mask(80, 0, stor9)
                        uint16(stor[uint256(stor[_870].field_0) + sha3(_870)].field_80) = 0
                        address(stor[uint256(stor[_870].field_0) + sha3(_870)].field_96) = address(cd[4])
                        if sub_d5958b35 > -2:
                            revert with 0, 17
                        sub_d5958b35++
                        mem[mem[64]] = address(cd[4])
                        mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 64] = uint256(sub_2c5124a9)
                        emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, uint256(sub_2c5124a9));
                else:
                    mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[36] + 36)])
                    require ext_code.size(stor1)
                    staticcall stor1.0x6352211e with:
                            gas gas_remaining wei
                           args (cd[((32 * idx) + cd[36] + 36)] << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _417 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_417] == mem[_417 + 12 len 20]
                    if mem[_417 + 12 len 20] != msg.sender:
                        revert with 0, 'AINT YO TOKEN'
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    require ext_code.size(stor1)
                    call stor1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), uint16(cd[((32 * idx) + cd[36] + 36)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    require ext_code.size(stor1)
                    staticcall stor1.getTokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args (cd[((32 * idx) + cd[36] + 36)] << 240)
                    mem[mem[64] len 832] = ext_call.return_data[0 len 832]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _468 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 832
                    _474 = mem[64]
                    if mem[64] + 832 < mem[64] or mem[64] + 832 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + 832
                    require mem[_468] == bool(mem[_468])
                    mem[_474] = mem[_468]
                    require mem[_468 + 32] == mem[_468 + 63 len 1]
                    mem[_474 + 32] = mem[_468 + 32]
                    require mem[_468 + 64] == mem[_468 + 95 len 1]
                    mem[_474 + 64] = mem[_468 + 64]
                    require mem[_468 + 96] == mem[_468 + 127 len 1]
                    mem[_474 + 96] = mem[_468 + 96]
                    require mem[_468 + 128] == mem[_468 + 159 len 1]
                    mem[_474 + 128] = mem[_468 + 128]
                    require mem[_468 + 160] == mem[_468 + 191 len 1]
                    mem[_474 + 160] = mem[_468 + 160]
                    require mem[_468 + 192] == mem[_468 + 223 len 1]
                    mem[_474 + 192] = mem[_468 + 192]
                    require mem[_468 + 224] == mem[_468 + 255 len 1]
                    mem[_474 + 224] = mem[_468 + 224]
                    require mem[_468 + 256] == mem[_468 + 287 len 1]
                    mem[_474 + 256] = mem[_468 + 256]
                    require mem[_468 + 288] == mem[_468 + 319 len 1]
                    mem[_474 + 288] = mem[_468 + 288]
                    require mem[_468 + 320] == mem[_468 + 351 len 1]
                    mem[_474 + 320] = mem[_468 + 320]
                    require mem[_468 + 352] == mem[_468 + 383 len 1]
                    mem[_474 + 352] = mem[_468 + 352]
                    require mem[_468 + 384] == mem[_468 + 415 len 1]
                    mem[_474 + 384] = mem[_468 + 384]
                    require mem[_468 + 416] == mem[_468 + 447 len 1]
                    mem[_474 + 416] = mem[_468 + 416]
                    require mem[_468 + 448] == mem[_468 + 479 len 1]
                    mem[_474 + 448] = mem[_468 + 448]
                    require mem[_468 + 480] == mem[_468 + 511 len 1]
                    mem[_474 + 480] = mem[_468 + 480]
                    require mem[_468 + 512] == mem[_468 + 543 len 1]
                    mem[_474 + 512] = mem[_468 + 512]
                    require mem[_468 + 544] == mem[_468 + 575 len 1]
                    mem[_474 + 544] = mem[_468 + 544]
                    require mem[_468 + 576] == mem[_468 + 607 len 1]
                    mem[_474 + 576] = mem[_468 + 576]
                    require mem[_468 + 608] == mem[_468 + 639 len 1]
                    mem[_474 + 608] = mem[_468 + 608]
                    require mem[_468 + 640] == mem[_468 + 671 len 1]
                    mem[_474 + 640] = mem[_468 + 640]
                    require mem[_468 + 672] == mem[_468 + 703 len 1]
                    mem[_474 + 672] = mem[_468 + 672]
                    require mem[_468 + 704] == mem[_468 + 735 len 1]
                    mem[_474 + 704] = mem[_468 + 704]
                    require mem[_468 + 736] == mem[_468 + 767 len 1]
                    mem[_474 + 736] = mem[_468 + 736]
                    require mem[_468 + 768] == mem[_468 + 799 len 1]
                    mem[_474 + 768] = mem[_468 + 768]
                    require mem[_468 + 800] == mem[_468 + 831 len 1]
                    mem[_474 + 800] = mem[_468 + 800]
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    if mem[_474]:
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        if sub_91fae6c2 >= 2400000000 * 10^18:
                            _703 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_703] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_703 + 32] = Mask(80, 0, block.timestamp)
                            mem[_703 + 64] = address(cd[4])
                        else:
                            if block.timestamp < lastClaimTimestamp:
                                revert with 0, 17
                            if block.timestamp - lastClaimTimestamp and sub_3308e6c1 > -1 / block.timestamp - lastClaimTimestamp:
                                revert with 0, 17
                            if (block.timestamp * sub_3308e6c1) - (lastClaimTimestamp * sub_3308e6c1) and sub_9795314b > -1 / (block.timestamp * sub_3308e6c1) - (lastClaimTimestamp * sub_3308e6c1):
                                revert with 0, 17
                            if sub_91fae6c2 > !((block.timestamp * sub_3308e6c1 * sub_9795314b) - (lastClaimTimestamp * sub_3308e6c1 * sub_9795314b) / 24 * 3600):
                                revert with 0, 17
                            sub_91fae6c2 += (block.timestamp * sub_3308e6c1 * sub_9795314b) - (lastClaimTimestamp * sub_3308e6c1 * sub_9795314b) / 24 * 3600
                            lastClaimTimestamp = block.timestamp
                            _759 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_759] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_759 + 32] = Mask(80, 0, block.timestamp)
                            mem[_759 + 64] = address(cd[4])
                        mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[32] = 3
                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                        address(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                        if sub_3308e6c1 > -2:
                            revert with 0, 17
                        sub_3308e6c1++
                        mem[mem[64]] = address(cd[4])
                        mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 64] = block.timestamp
                        emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                    else:
                        require ext_code.size(stor1)
                        staticcall stor1.getTokenTraits(uint256 arg1) with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64] len 832] = ext_call.return_data[0 len 832]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _720 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 832
                        _732 = mem[64]
                        if mem[64] + 832 < mem[64] or mem[64] + 832 > test266151307():
                            revert with 0, 65
                        mem[64] = mem[64] + 832
                        require mem[_720] == bool(mem[_720])
                        mem[_732] = mem[_720]
                        require mem[_720 + 32] == mem[_720 + 63 len 1]
                        mem[_732 + 32] = mem[_720 + 32]
                        require mem[_720 + 64] == mem[_720 + 95 len 1]
                        mem[_732 + 64] = mem[_720 + 64]
                        require mem[_720 + 96] == mem[_720 + 127 len 1]
                        mem[_732 + 96] = mem[_720 + 96]
                        require mem[_720 + 128] == mem[_720 + 159 len 1]
                        mem[_732 + 128] = mem[_720 + 128]
                        require mem[_720 + 160] == mem[_720 + 191 len 1]
                        mem[_732 + 160] = mem[_720 + 160]
                        require mem[_720 + 192] == mem[_720 + 223 len 1]
                        mem[_732 + 192] = mem[_720 + 192]
                        require mem[_720 + 224] == mem[_720 + 255 len 1]
                        mem[_732 + 224] = mem[_720 + 224]
                        require mem[_720 + 256] == mem[_720 + 287 len 1]
                        mem[_732 + 256] = mem[_720 + 256]
                        require mem[_720 + 288] == mem[_720 + 319 len 1]
                        mem[_732 + 288] = mem[_720 + 288]
                        require mem[_720 + 320] == mem[_720 + 351 len 1]
                        mem[_732 + 320] = mem[_720 + 320]
                        require mem[_720 + 352] == mem[_720 + 383 len 1]
                        mem[_732 + 352] = mem[_720 + 352]
                        require mem[_720 + 384] == mem[_720 + 415 len 1]
                        mem[_732 + 384] = mem[_720 + 384]
                        require mem[_720 + 416] == mem[_720 + 447 len 1]
                        mem[_732 + 416] = mem[_720 + 416]
                        require mem[_720 + 448] == mem[_720 + 479 len 1]
                        mem[_732 + 448] = mem[_720 + 448]
                        require mem[_720 + 480] == mem[_720 + 511 len 1]
                        mem[_732 + 480] = mem[_720 + 480]
                        require mem[_720 + 512] == mem[_720 + 543 len 1]
                        mem[_732 + 512] = mem[_720 + 512]
                        require mem[_720 + 544] == mem[_720 + 575 len 1]
                        mem[_732 + 544] = mem[_720 + 544]
                        require mem[_720 + 576] == mem[_720 + 607 len 1]
                        mem[_732 + 576] = mem[_720 + 576]
                        require mem[_720 + 608] == mem[_720 + 639 len 1]
                        mem[_732 + 608] = mem[_720 + 608]
                        require mem[_720 + 640] == mem[_720 + 671 len 1]
                        mem[_732 + 640] = mem[_720 + 640]
                        require mem[_720 + 672] == mem[_720 + 703 len 1]
                        mem[_732 + 672] = mem[_720 + 672]
                        require mem[_720 + 704] == mem[_720 + 735 len 1]
                        mem[_732 + 704] = mem[_720 + 704]
                        require mem[_720 + 736] == mem[_720 + 767 len 1]
                        mem[_732 + 736] = mem[_720 + 736]
                        require mem[_720 + 768] == mem[_720 + 799 len 1]
                        mem[_732 + 768] = mem[_720 + 768]
                        require mem[_720 + 800] == mem[_720 + 831 len 1]
                        mem[_732 + 800] = mem[_720 + 800]
                        if 8 < mem[_732 + 831 len 1]:
                            revert with 0, 17
                        if totalAlphaStaked > !uint8(-mem[_732 + 831 len 1] + 8):
                            revert with 0, 17
                        totalAlphaStaked += uint8(-mem[_732 + 831 len 1] + 8)
                        mem[0] = uint8(-mem[_732 + 831 len 1] + 8)
                        _921 = sha3(mem[0], 4)
                        mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = uint256(stor[_921].field_0)
                        mem[32] = 4
                        _923 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_923] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[_923 + 32] = Mask(80, 0, stor9)
                        mem[_923 + 64] = address(cd[4])
                        uint256(stor[_921].field_0)++
                        mem[0] = _921
                        uint16(stor[uint256(stor[_921].field_0) + sha3(_921)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                        Mask(80, 0, stor[uint256(stor[_921].field_0) + sha3(_921)].field_0) = Mask(80, 0, stor9)
                        uint16(stor[uint256(stor[_921].field_0) + sha3(_921)].field_80) = 0
                        address(stor[uint256(stor[_921].field_0) + sha3(_921)].field_96) = address(cd[4])
                        if sub_d5958b35 > -2:
                            revert with 0, 17
                        sub_d5958b35++
                        mem[mem[64]] = address(cd[4])
                        mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 64] = uint256(sub_2c5124a9)
                        emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, uint256(sub_2c5124a9));
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if tx.origin == address(cd[4]):
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                if uint16(cd[((32 * idx) + cd[36] + 36)]):
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    mem[32] = 6
                    uint256(stor6[address(msg.sender)].field_0)++
                    mem[0] = sha3(address(msg.sender), 6)
                    uint16(stor6[address(msg.sender)][uint256(stor6[address(msg.sender)].field_0)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                    Mask(240, 0, stor6[address(msg.sender)][uint256(stor6[address(msg.sender)].field_0)].field_16) = 0
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    if msg.sender == stor1:
                        require ext_code.size(stor1)
                        staticcall stor1.getTokenTraits(uint256 arg1) with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64] len 832] = ext_call.return_data[0 len 832]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _415 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 832
                        _422 = mem[64]
                        if mem[64] + 832 < mem[64] or mem[64] + 832 > test266151307():
                            revert with 0, 65
                        mem[64] = mem[64] + 832
                        require mem[_415] == bool(mem[_415])
                        mem[_422] = mem[_415]
                        require mem[_415 + 32] == mem[_415 + 63 len 1]
                        mem[_422 + 32] = mem[_415 + 32]
                        require mem[_415 + 64] == mem[_415 + 95 len 1]
                        mem[_422 + 64] = mem[_415 + 64]
                        require mem[_415 + 96] == mem[_415 + 127 len 1]
                        mem[_422 + 96] = mem[_415 + 96]
                        require mem[_415 + 128] == mem[_415 + 159 len 1]
                        mem[_422 + 128] = mem[_415 + 128]
                        require mem[_415 + 160] == mem[_415 + 191 len 1]
                        mem[_422 + 160] = mem[_415 + 160]
                        require mem[_415 + 192] == mem[_415 + 223 len 1]
                        mem[_422 + 192] = mem[_415 + 192]
                        require mem[_415 + 224] == mem[_415 + 255 len 1]
                        mem[_422 + 224] = mem[_415 + 224]
                        require mem[_415 + 256] == mem[_415 + 287 len 1]
                        mem[_422 + 256] = mem[_415 + 256]
                        require mem[_415 + 288] == mem[_415 + 319 len 1]
                        mem[_422 + 288] = mem[_415 + 288]
                        require mem[_415 + 320] == mem[_415 + 351 len 1]
                        mem[_422 + 320] = mem[_415 + 320]
                        require mem[_415 + 352] == mem[_415 + 383 len 1]
                        mem[_422 + 352] = mem[_415 + 352]
                        require mem[_415 + 384] == mem[_415 + 415 len 1]
                        mem[_422 + 384] = mem[_415 + 384]
                        require mem[_415 + 416] == mem[_415 + 447 len 1]
                        mem[_422 + 416] = mem[_415 + 416]
                        require mem[_415 + 448] == mem[_415 + 479 len 1]
                        mem[_422 + 448] = mem[_415 + 448]
                        require mem[_415 + 480] == mem[_415 + 511 len 1]
                        mem[_422 + 480] = mem[_415 + 480]
                        require mem[_415 + 512] == mem[_415 + 543 len 1]
                        mem[_422 + 512] = mem[_415 + 512]
                        require mem[_415 + 544] == mem[_415 + 575 len 1]
                        mem[_422 + 544] = mem[_415 + 544]
                        require mem[_415 + 576] == mem[_415 + 607 len 1]
                        mem[_422 + 576] = mem[_415 + 576]
                        require mem[_415 + 608] == mem[_415 + 639 len 1]
                        mem[_422 + 608] = mem[_415 + 608]
                        require mem[_415 + 640] == mem[_415 + 671 len 1]
                        mem[_422 + 640] = mem[_415 + 640]
                        require mem[_415 + 672] == mem[_415 + 703 len 1]
                        mem[_422 + 672] = mem[_415 + 672]
                        require mem[_415 + 704] == mem[_415 + 735 len 1]
                        mem[_422 + 704] = mem[_415 + 704]
                        require mem[_415 + 736] == mem[_415 + 767 len 1]
                        mem[_422 + 736] = mem[_415 + 736]
                        require mem[_415 + 768] == mem[_415 + 799 len 1]
                        mem[_422 + 768] = mem[_415 + 768]
                        require mem[_415 + 800] == mem[_415 + 831 len 1]
                        mem[_422 + 800] = mem[_415 + 800]
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        if mem[_422]:
                            if stor0:
                                revert with 0, 'Pausable: paused'
                            if sub_91fae6c2 >= 2400000000 * 10^18:
                                _606 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_606] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_606 + 32] = Mask(80, 0, block.timestamp)
                                mem[_606 + 64] = address(cd[4])
                            else:
                                if block.timestamp < lastClaimTimestamp:
                                    revert with 0, 17
                                if block.timestamp - lastClaimTimestamp and sub_3308e6c1 > -1 / block.timestamp - lastClaimTimestamp:
                                    revert with 0, 17
                                if (block.timestamp * sub_3308e6c1) - (lastClaimTimestamp * sub_3308e6c1) and sub_9795314b > -1 / (block.timestamp * sub_3308e6c1) - (lastClaimTimestamp * sub_3308e6c1):
                                    revert with 0, 17
                                if sub_91fae6c2 > !((block.timestamp * sub_3308e6c1 * sub_9795314b) - (lastClaimTimestamp * sub_3308e6c1 * sub_9795314b) / 24 * 3600):
                                    revert with 0, 17
                                sub_91fae6c2 += (block.timestamp * sub_3308e6c1 * sub_9795314b) - (lastClaimTimestamp * sub_3308e6c1 * sub_9795314b) / 24 * 3600
                                lastClaimTimestamp = block.timestamp
                                _662 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_662] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_662 + 32] = Mask(80, 0, block.timestamp)
                                mem[_662 + 64] = address(cd[4])
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[32] = 3
                            uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                            address(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                            if sub_3308e6c1 > -2:
                                revert with 0, 17
                            sub_3308e6c1++
                            mem[mem[64]] = address(cd[4])
                            mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 64] = block.timestamp
                            emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[36] + 36)] << 240)
                            mem[mem[64] len 832] = ext_call.return_data[0 len 832]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _620 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 832
                            _631 = mem[64]
                            if mem[64] + 832 < mem[64] or mem[64] + 832 > test266151307():
                                revert with 0, 65
                            mem[64] = mem[64] + 832
                            require mem[_620] == bool(mem[_620])
                            mem[_631] = mem[_620]
                            require mem[_620 + 32] == mem[_620 + 63 len 1]
                            mem[_631 + 32] = mem[_620 + 32]
                            require mem[_620 + 64] == mem[_620 + 95 len 1]
                            mem[_631 + 64] = mem[_620 + 64]
                            require mem[_620 + 96] == mem[_620 + 127 len 1]
                            mem[_631 + 96] = mem[_620 + 96]
                            require mem[_620 + 128] == mem[_620 + 159 len 1]
                            mem[_631 + 128] = mem[_620 + 128]
                            require mem[_620 + 160] == mem[_620 + 191 len 1]
                            mem[_631 + 160] = mem[_620 + 160]
                            require mem[_620 + 192] == mem[_620 + 223 len 1]
                            mem[_631 + 192] = mem[_620 + 192]
                            require mem[_620 + 224] == mem[_620 + 255 len 1]
                            mem[_631 + 224] = mem[_620 + 224]
                            require mem[_620 + 256] == mem[_620 + 287 len 1]
                            mem[_631 + 256] = mem[_620 + 256]
                            require mem[_620 + 288] == mem[_620 + 319 len 1]
                            mem[_631 + 288] = mem[_620 + 288]
                            require mem[_620 + 320] == mem[_620 + 351 len 1]
                            mem[_631 + 320] = mem[_620 + 320]
                            require mem[_620 + 352] == mem[_620 + 383 len 1]
                            mem[_631 + 352] = mem[_620 + 352]
                            require mem[_620 + 384] == mem[_620 + 415 len 1]
                            mem[_631 + 384] = mem[_620 + 384]
                            require mem[_620 + 416] == mem[_620 + 447 len 1]
                            mem[_631 + 416] = mem[_620 + 416]
                            require mem[_620 + 448] == mem[_620 + 479 len 1]
                            mem[_631 + 448] = mem[_620 + 448]
                            require mem[_620 + 480] == mem[_620 + 511 len 1]
                            mem[_631 + 480] = mem[_620 + 480]
                            require mem[_620 + 512] == mem[_620 + 543 len 1]
                            mem[_631 + 512] = mem[_620 + 512]
                            require mem[_620 + 544] == mem[_620 + 575 len 1]
                            mem[_631 + 544] = mem[_620 + 544]
                            require mem[_620 + 576] == mem[_620 + 607 len 1]
                            mem[_631 + 576] = mem[_620 + 576]
                            require mem[_620 + 608] == mem[_620 + 639 len 1]
                            mem[_631 + 608] = mem[_620 + 608]
                            require mem[_620 + 640] == mem[_620 + 671 len 1]
                            mem[_631 + 640] = mem[_620 + 640]
                            require mem[_620 + 672] == mem[_620 + 703 len 1]
                            mem[_631 + 672] = mem[_620 + 672]
                            require mem[_620 + 704] == mem[_620 + 735 len 1]
                            mem[_631 + 704] = mem[_620 + 704]
                            require mem[_620 + 736] == mem[_620 + 767 len 1]
                            mem[_631 + 736] = mem[_620 + 736]
                            require mem[_620 + 768] == mem[_620 + 799 len 1]
                            mem[_631 + 768] = mem[_620 + 768]
                            require mem[_620 + 800] == mem[_620 + 831 len 1]
                            mem[_631 + 800] = mem[_620 + 800]
                            if 8 < mem[_631 + 831 len 1]:
                                revert with 0, 17
                            if totalAlphaStaked > !uint8(-mem[_631 + 831 len 1] + 8):
                                revert with 0, 17
                            totalAlphaStaked += uint8(-mem[_631 + 831 len 1] + 8)
                            mem[0] = uint8(-mem[_631 + 831 len 1] + 8)
                            _877 = sha3(mem[0], 4)
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = uint256(stor[_877].field_0)
                            mem[32] = 4
                            _879 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_879] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_879 + 32] = Mask(80, 0, stor9)
                            mem[_879 + 64] = address(cd[4])
                            uint256(stor[_877].field_0)++
                            mem[0] = _877
                            uint16(stor[uint256(stor[_877].field_0) + sha3(_877)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, stor[uint256(stor[_877].field_0) + sha3(_877)].field_0) = Mask(80, 0, stor9)
                            uint16(stor[uint256(stor[_877].field_0) + sha3(_877)].field_80) = 0
                            address(stor[uint256(stor[_877].field_0) + sha3(_877)].field_96) = address(cd[4])
                            if sub_d5958b35 > -2:
                                revert with 0, 17
                            sub_d5958b35++
                            mem[mem[64]] = address(cd[4])
                            mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 64] = uint256(sub_2c5124a9)
                            emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, uint256(sub_2c5124a9));
                    else:
                        mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(stor1)
                        staticcall stor1.0x6352211e with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _418 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_418] == mem[_418 + 12 len 20]
                        if mem[_418 + 12 len 20] != msg.sender:
                            revert with 0, 'AINT YO TOKEN'
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(stor1)
                        call stor1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), uint16(cd[((32 * idx) + cd[36] + 36)])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(stor1)
                        staticcall stor1.getTokenTraits(uint256 arg1) with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64] len 832] = ext_call.return_data[0 len 832]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _469 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 832
                        _475 = mem[64]
                        if mem[64] + 832 < mem[64] or mem[64] + 832 > test266151307():
                            revert with 0, 65
                        mem[64] = mem[64] + 832
                        require mem[_469] == bool(mem[_469])
                        mem[_475] = mem[_469]
                        require mem[_469 + 32] == mem[_469 + 63 len 1]
                        mem[_475 + 32] = mem[_469 + 32]
                        require mem[_469 + 64] == mem[_469 + 95 len 1]
                        mem[_475 + 64] = mem[_469 + 64]
                        require mem[_469 + 96] == mem[_469 + 127 len 1]
                        mem[_475 + 96] = mem[_469 + 96]
                        require mem[_469 + 128] == mem[_469 + 159 len 1]
                        mem[_475 + 128] = mem[_469 + 128]
                        require mem[_469 + 160] == mem[_469 + 191 len 1]
                        mem[_475 + 160] = mem[_469 + 160]
                        require mem[_469 + 192] == mem[_469 + 223 len 1]
                        mem[_475 + 192] = mem[_469 + 192]
                        require mem[_469 + 224] == mem[_469 + 255 len 1]
                        mem[_475 + 224] = mem[_469 + 224]
                        require mem[_469 + 256] == mem[_469 + 287 len 1]
                        mem[_475 + 256] = mem[_469 + 256]
                        require mem[_469 + 288] == mem[_469 + 319 len 1]
                        mem[_475 + 288] = mem[_469 + 288]
                        require mem[_469 + 320] == mem[_469 + 351 len 1]
                        mem[_475 + 320] = mem[_469 + 320]
                        require mem[_469 + 352] == mem[_469 + 383 len 1]
                        mem[_475 + 352] = mem[_469 + 352]
                        require mem[_469 + 384] == mem[_469 + 415 len 1]
                        mem[_475 + 384] = mem[_469 + 384]
                        require mem[_469 + 416] == mem[_469 + 447 len 1]
                        mem[_475 + 416] = mem[_469 + 416]
                        require mem[_469 + 448] == mem[_469 + 479 len 1]
                        mem[_475 + 448] = mem[_469 + 448]
                        require mem[_469 + 480] == mem[_469 + 511 len 1]
                        mem[_475 + 480] = mem[_469 + 480]
                        require mem[_469 + 512] == mem[_469 + 543 len 1]
                        mem[_475 + 512] = mem[_469 + 512]
                        require mem[_469 + 544] == mem[_469 + 575 len 1]
                        mem[_475 + 544] = mem[_469 + 544]
                        require mem[_469 + 576] == mem[_469 + 607 len 1]
                        mem[_475 + 576] = mem[_469 + 576]
                        require mem[_469 + 608] == mem[_469 + 639 len 1]
                        mem[_475 + 608] = mem[_469 + 608]
                        require mem[_469 + 640] == mem[_469 + 671 len 1]
                        mem[_475 + 640] = mem[_469 + 640]
                        require mem[_469 + 672] == mem[_469 + 703 len 1]
                        mem[_475 + 672] = mem[_469 + 672]
                        require mem[_469 + 704] == mem[_469 + 735 len 1]
                        mem[_475 + 704] = mem[_469 + 704]
                        require mem[_469 + 736] == mem[_469 + 767 len 1]
                        mem[_475 + 736] = mem[_469 + 736]
                        require mem[_469 + 768] == mem[_469 + 799 len 1]
                        mem[_475 + 768] = mem[_469 + 768]
                        require mem[_469 + 800] == mem[_469 + 831 len 1]
                        mem[_475 + 800] = mem[_469 + 800]
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        if mem[_475]:
                            if stor0:
                                revert with 0, 'Pausable: paused'
                            if sub_91fae6c2 >= 2400000000 * 10^18:
                                _709 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_709] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_709 + 32] = Mask(80, 0, block.timestamp)
                                mem[_709 + 64] = address(cd[4])
                            else:
                                if block.timestamp < lastClaimTimestamp:
                                    revert with 0, 17
                                if block.timestamp - lastClaimTimestamp and sub_3308e6c1 > -1 / block.timestamp - lastClaimTimestamp:
                                    revert with 0, 17
                                if (block.timestamp * sub_3308e6c1) - (lastClaimTimestamp * sub_3308e6c1) and sub_9795314b > -1 / (block.timestamp * sub_3308e6c1) - (lastClaimTimestamp * sub_3308e6c1):
                                    revert with 0, 17
                                if sub_91fae6c2 > !((block.timestamp * sub_3308e6c1 * sub_9795314b) - (lastClaimTimestamp * sub_3308e6c1 * sub_9795314b) / 24 * 3600):
                                    revert with 0, 17
                                sub_91fae6c2 += (block.timestamp * sub_3308e6c1 * sub_9795314b) - (lastClaimTimestamp * sub_3308e6c1 * sub_9795314b) / 24 * 3600
                                lastClaimTimestamp = block.timestamp
                                _764 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_764] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_764 + 32] = Mask(80, 0, block.timestamp)
                                mem[_764 + 64] = address(cd[4])
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[32] = 3
                            uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                            address(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                            if sub_3308e6c1 > -2:
                                revert with 0, 17
                            sub_3308e6c1++
                            mem[mem[64]] = address(cd[4])
                            mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 64] = block.timestamp
                            emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[36] + 36)] << 240)
                            mem[mem[64] len 832] = ext_call.return_data[0 len 832]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _722 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 832
                            _733 = mem[64]
                            if mem[64] + 832 < mem[64] or mem[64] + 832 > test266151307():
                                revert with 0, 65
                            mem[64] = mem[64] + 832
                            require mem[_722] == bool(mem[_722])
                            mem[_733] = mem[_722]
                            require mem[_722 + 32] == mem[_722 + 63 len 1]
                            mem[_733 + 32] = mem[_722 + 32]
                            require mem[_722 + 64] == mem[_722 + 95 len 1]
                            mem[_733 + 64] = mem[_722 + 64]
                            require mem[_722 + 96] == mem[_722 + 127 len 1]
                            mem[_733 + 96] = mem[_722 + 96]
                            require mem[_722 + 128] == mem[_722 + 159 len 1]
                            mem[_733 + 128] = mem[_722 + 128]
                            require mem[_722 + 160] == mem[_722 + 191 len 1]
                            mem[_733 + 160] = mem[_722 + 160]
                            require mem[_722 + 192] == mem[_722 + 223 len 1]
                            mem[_733 + 192] = mem[_722 + 192]
                            require mem[_722 + 224] == mem[_722 + 255 len 1]
                            mem[_733 + 224] = mem[_722 + 224]
                            require mem[_722 + 256] == mem[_722 + 287 len 1]
                            mem[_733 + 256] = mem[_722 + 256]
                            require mem[_722 + 288] == mem[_722 + 319 len 1]
                            mem[_733 + 288] = mem[_722 + 288]
                            require mem[_722 + 320] == mem[_722 + 351 len 1]
                            mem[_733 + 320] = mem[_722 + 320]
                            require mem[_722 + 352] == mem[_722 + 383 len 1]
                            mem[_733 + 352] = mem[_722 + 352]
                            require mem[_722 + 384] == mem[_722 + 415 len 1]
                            mem[_733 + 384] = mem[_722 + 384]
                            require mem[_722 + 416] == mem[_722 + 447 len 1]
                            mem[_733 + 416] = mem[_722 + 416]
                            require mem[_722 + 448] == mem[_722 + 479 len 1]
                            mem[_733 + 448] = mem[_722 + 448]
                            require mem[_722 + 480] == mem[_722 + 511 len 1]
                            mem[_733 + 480] = mem[_722 + 480]
                            require mem[_722 + 512] == mem[_722 + 543 len 1]
                            mem[_733 + 512] = mem[_722 + 512]
                            require mem[_722 + 544] == mem[_722 + 575 len 1]
                            mem[_733 + 544] = mem[_722 + 544]
                            require mem[_722 + 576] == mem[_722 + 607 len 1]
                            mem[_733 + 576] = mem[_722 + 576]
                            require mem[_722 + 608] == mem[_722 + 639 len 1]
                            mem[_733 + 608] = mem[_722 + 608]
                            require mem[_722 + 640] == mem[_722 + 671 len 1]
                            mem[_733 + 640] = mem[_722 + 640]
                            require mem[_722 + 672] == mem[_722 + 703 len 1]
                            mem[_733 + 672] = mem[_722 + 672]
                            require mem[_722 + 704] == mem[_722 + 735 len 1]
                            mem[_733 + 704] = mem[_722 + 704]
                            require mem[_722 + 736] == mem[_722 + 767 len 1]
                            mem[_733 + 736] = mem[_722 + 736]
                            require mem[_722 + 768] == mem[_722 + 799 len 1]
                            mem[_733 + 768] = mem[_722 + 768]
                            require mem[_722 + 800] == mem[_722 + 831 len 1]
                            mem[_733 + 800] = mem[_722 + 800]
                            if 8 < mem[_733 + 831 len 1]:
                                revert with 0, 17
                            if totalAlphaStaked > !uint8(-mem[_733 + 831 len 1] + 8):
                                revert with 0, 17
                            totalAlphaStaked += uint8(-mem[_733 + 831 len 1] + 8)
                            mem[0] = uint8(-mem[_733 + 831 len 1] + 8)
                            _928 = sha3(mem[0], 4)
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = uint256(stor[_928].field_0)
                            mem[32] = 4
                            _930 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_930] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_930 + 32] = Mask(80, 0, stor9)
                            mem[_930 + 64] = address(cd[4])
                            uint256(stor[_928].field_0)++
                            mem[0] = _928
                            uint16(stor[uint256(stor[_928].field_0) + sha3(_928)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, stor[uint256(stor[_928].field_0) + sha3(_928)].field_0) = Mask(80, 0, stor9)
                            uint16(stor[uint256(stor[_928].field_0) + sha3(_928)].field_80) = 0
                            address(stor[uint256(stor[_928].field_0) + sha3(_928)].field_96) = address(cd[4])
                            if sub_d5958b35 > -2:
                                revert with 0, 17
                            sub_d5958b35++
                            mem[mem[64]] = address(cd[4])
                            mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 64] = uint256(sub_2c5124a9)
                            emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, uint256(sub_2c5124a9));
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if stor1 != msg.sender:
                revert with 0, 'DONT GIVE YOUR TOKENS AWAY'
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                if uint16(cd[((32 * idx) + cd[36] + 36)]):
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    mem[32] = 6
                    uint256(stor6[address(msg.sender)].field_0)++
                    mem[0] = sha3(address(msg.sender), 6)
                    uint16(stor6[address(msg.sender)][uint256(stor6[address(msg.sender)].field_0)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                    Mask(240, 0, stor6[address(msg.sender)][uint256(stor6[address(msg.sender)].field_0)].field_16) = 0
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    if msg.sender == stor1:
                        require ext_code.size(stor1)
                        staticcall stor1.getTokenTraits(uint256 arg1) with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64] len 832] = ext_call.return_data[0 len 832]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _416 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 832
                        _424 = mem[64]
                        if mem[64] + 832 < mem[64] or mem[64] + 832 > test266151307():
                            revert with 0, 65
                        mem[64] = mem[64] + 832
                        require mem[_416] == bool(mem[_416])
                        mem[_424] = mem[_416]
                        require mem[_416 + 32] == mem[_416 + 63 len 1]
                        mem[_424 + 32] = mem[_416 + 32]
                        require mem[_416 + 64] == mem[_416 + 95 len 1]
                        mem[_424 + 64] = mem[_416 + 64]
                        require mem[_416 + 96] == mem[_416 + 127 len 1]
                        mem[_424 + 96] = mem[_416 + 96]
                        require mem[_416 + 128] == mem[_416 + 159 len 1]
                        mem[_424 + 128] = mem[_416 + 128]
                        require mem[_416 + 160] == mem[_416 + 191 len 1]
                        mem[_424 + 160] = mem[_416 + 160]
                        require mem[_416 + 192] == mem[_416 + 223 len 1]
                        mem[_424 + 192] = mem[_416 + 192]
                        require mem[_416 + 224] == mem[_416 + 255 len 1]
                        mem[_424 + 224] = mem[_416 + 224]
                        require mem[_416 + 256] == mem[_416 + 287 len 1]
                        mem[_424 + 256] = mem[_416 + 256]
                        require mem[_416 + 288] == mem[_416 + 319 len 1]
                        mem[_424 + 288] = mem[_416 + 288]
                        require mem[_416 + 320] == mem[_416 + 351 len 1]
                        mem[_424 + 320] = mem[_416 + 320]
                        require mem[_416 + 352] == mem[_416 + 383 len 1]
                        mem[_424 + 352] = mem[_416 + 352]
                        require mem[_416 + 384] == mem[_416 + 415 len 1]
                        mem[_424 + 384] = mem[_416 + 384]
                        require mem[_416 + 416] == mem[_416 + 447 len 1]
                        mem[_424 + 416] = mem[_416 + 416]
                        require mem[_416 + 448] == mem[_416 + 479 len 1]
                        mem[_424 + 448] = mem[_416 + 448]
                        require mem[_416 + 480] == mem[_416 + 511 len 1]
                        mem[_424 + 480] = mem[_416 + 480]
                        require mem[_416 + 512] == mem[_416 + 543 len 1]
                        mem[_424 + 512] = mem[_416 + 512]
                        require mem[_416 + 544] == mem[_416 + 575 len 1]
                        mem[_424 + 544] = mem[_416 + 544]
                        require mem[_416 + 576] == mem[_416 + 607 len 1]
                        mem[_424 + 576] = mem[_416 + 576]
                        require mem[_416 + 608] == mem[_416 + 639 len 1]
                        mem[_424 + 608] = mem[_416 + 608]
                        require mem[_416 + 640] == mem[_416 + 671 len 1]
                        mem[_424 + 640] = mem[_416 + 640]
                        require mem[_416 + 672] == mem[_416 + 703 len 1]
                        mem[_424 + 672] = mem[_416 + 672]
                        require mem[_416 + 704] == mem[_416 + 735 len 1]
                        mem[_424 + 704] = mem[_416 + 704]
                        require mem[_416 + 736] == mem[_416 + 767 len 1]
                        mem[_424 + 736] = mem[_416 + 736]
                        require mem[_416 + 768] == mem[_416 + 799 len 1]
                        mem[_424 + 768] = mem[_416 + 768]
                        require mem[_416 + 800] == mem[_416 + 831 len 1]
                        mem[_424 + 800] = mem[_416 + 800]
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        if mem[_424]:
                            if stor0:
                                revert with 0, 'Pausable: paused'
                            if sub_91fae6c2 >= 2400000000 * 10^18:
                                _612 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_612] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_612 + 32] = Mask(80, 0, block.timestamp)
                                mem[_612 + 64] = address(cd[4])
                            else:
                                if block.timestamp < lastClaimTimestamp:
                                    revert with 0, 17
                                if block.timestamp - lastClaimTimestamp and sub_3308e6c1 > -1 / block.timestamp - lastClaimTimestamp:
                                    revert with 0, 17
                                if (block.timestamp * sub_3308e6c1) - (lastClaimTimestamp * sub_3308e6c1) and sub_9795314b > -1 / (block.timestamp * sub_3308e6c1) - (lastClaimTimestamp * sub_3308e6c1):
                                    revert with 0, 17
                                if sub_91fae6c2 > !((block.timestamp * sub_3308e6c1 * sub_9795314b) - (lastClaimTimestamp * sub_3308e6c1 * sub_9795314b) / 24 * 3600):
                                    revert with 0, 17
                                sub_91fae6c2 += (block.timestamp * sub_3308e6c1 * sub_9795314b) - (lastClaimTimestamp * sub_3308e6c1 * sub_9795314b) / 24 * 3600
                                lastClaimTimestamp = block.timestamp
                                _667 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_667] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_667 + 32] = Mask(80, 0, block.timestamp)
                                mem[_667 + 64] = address(cd[4])
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[32] = 3
                            uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                            address(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                            if sub_3308e6c1 > -2:
                                revert with 0, 17
                            sub_3308e6c1++
                            mem[mem[64]] = address(cd[4])
                            mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 64] = block.timestamp
                            emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[36] + 36)] << 240)
                            mem[mem[64] len 832] = ext_call.return_data[0 len 832]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _622 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 832
                            _632 = mem[64]
                            if mem[64] + 832 < mem[64] or mem[64] + 832 > test266151307():
                                revert with 0, 65
                            mem[64] = mem[64] + 832
                            require mem[_622] == bool(mem[_622])
                            mem[_632] = mem[_622]
                            require mem[_622 + 32] == mem[_622 + 63 len 1]
                            mem[_632 + 32] = mem[_622 + 32]
                            require mem[_622 + 64] == mem[_622 + 95 len 1]
                            mem[_632 + 64] = mem[_622 + 64]
                            require mem[_622 + 96] == mem[_622 + 127 len 1]
                            mem[_632 + 96] = mem[_622 + 96]
                            require mem[_622 + 128] == mem[_622 + 159 len 1]
                            mem[_632 + 128] = mem[_622 + 128]
                            require mem[_622 + 160] == mem[_622 + 191 len 1]
                            mem[_632 + 160] = mem[_622 + 160]
                            require mem[_622 + 192] == mem[_622 + 223 len 1]
                            mem[_632 + 192] = mem[_622 + 192]
                            require mem[_622 + 224] == mem[_622 + 255 len 1]
                            mem[_632 + 224] = mem[_622 + 224]
                            require mem[_622 + 256] == mem[_622 + 287 len 1]
                            mem[_632 + 256] = mem[_622 + 256]
                            require mem[_622 + 288] == mem[_622 + 319 len 1]
                            mem[_632 + 288] = mem[_622 + 288]
                            require mem[_622 + 320] == mem[_622 + 351 len 1]
                            mem[_632 + 320] = mem[_622 + 320]
                            require mem[_622 + 352] == mem[_622 + 383 len 1]
                            mem[_632 + 352] = mem[_622 + 352]
                            require mem[_622 + 384] == mem[_622 + 415 len 1]
                            mem[_632 + 384] = mem[_622 + 384]
                            require mem[_622 + 416] == mem[_622 + 447 len 1]
                            mem[_632 + 416] = mem[_622 + 416]
                            require mem[_622 + 448] == mem[_622 + 479 len 1]
                            mem[_632 + 448] = mem[_622 + 448]
                            require mem[_622 + 480] == mem[_622 + 511 len 1]
                            mem[_632 + 480] = mem[_622 + 480]
                            require mem[_622 + 512] == mem[_622 + 543 len 1]
                            mem[_632 + 512] = mem[_622 + 512]
                            require mem[_622 + 544] == mem[_622 + 575 len 1]
                            mem[_632 + 544] = mem[_622 + 544]
                            require mem[_622 + 576] == mem[_622 + 607 len 1]
                            mem[_632 + 576] = mem[_622 + 576]
                            require mem[_622 + 608] == mem[_622 + 639 len 1]
                            mem[_632 + 608] = mem[_622 + 608]
                            require mem[_622 + 640] == mem[_622 + 671 len 1]
                            mem[_632 + 640] = mem[_622 + 640]
                            require mem[_622 + 672] == mem[_622 + 703 len 1]
                            mem[_632 + 672] = mem[_622 + 672]
                            require mem[_622 + 704] == mem[_622 + 735 len 1]
                            mem[_632 + 704] = mem[_622 + 704]
                            require mem[_622 + 736] == mem[_622 + 767 len 1]
                            mem[_632 + 736] = mem[_622 + 736]
                            require mem[_622 + 768] == mem[_622 + 799 len 1]
                            mem[_632 + 768] = mem[_622 + 768]
                            require mem[_622 + 800] == mem[_622 + 831 len 1]
                            mem[_632 + 800] = mem[_622 + 800]
                            if 8 < mem[_632 + 831 len 1]:
                                revert with 0, 17
                            if totalAlphaStaked > !uint8(-mem[_632 + 831 len 1] + 8):
                                revert with 0, 17
                            totalAlphaStaked += uint8(-mem[_632 + 831 len 1] + 8)
                            mem[0] = uint8(-mem[_632 + 831 len 1] + 8)
                            _884 = sha3(mem[0], 4)
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = uint256(stor[_884].field_0)
                            mem[32] = 4
                            _886 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_886] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_886 + 32] = Mask(80, 0, stor9)
                            mem[_886 + 64] = address(cd[4])
                            uint256(stor[_884].field_0)++
                            mem[0] = _884
                            uint16(stor[uint256(stor[_884].field_0) + sha3(_884)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, stor[uint256(stor[_884].field_0) + sha3(_884)].field_0) = Mask(80, 0, stor9)
                            uint16(stor[uint256(stor[_884].field_0) + sha3(_884)].field_80) = 0
                            address(stor[uint256(stor[_884].field_0) + sha3(_884)].field_96) = address(cd[4])
                            if sub_d5958b35 > -2:
                                revert with 0, 17
                            sub_d5958b35++
                            mem[mem[64]] = address(cd[4])
                            mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 64] = uint256(sub_2c5124a9)
                            emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, uint256(sub_2c5124a9));
                    else:
                        mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(stor1)
                        staticcall stor1.0x6352211e with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _419 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_419] == mem[_419 + 12 len 20]
                        if mem[_419 + 12 len 20] != msg.sender:
                            revert with 0, 'AINT YO TOKEN'
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(stor1)
                        call stor1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), uint16(cd[((32 * idx) + cd[36] + 36)])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(stor1)
                        staticcall stor1.getTokenTraits(uint256 arg1) with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64] len 832] = ext_call.return_data[0 len 832]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _470 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 832
                        _476 = mem[64]
                        if mem[64] + 832 < mem[64] or mem[64] + 832 > test266151307():
                            revert with 0, 65
                        mem[64] = mem[64] + 832
                        require mem[_470] == bool(mem[_470])
                        mem[_476] = mem[_470]
                        require mem[_470 + 32] == mem[_470 + 63 len 1]
                        mem[_476 + 32] = mem[_470 + 32]
                        require mem[_470 + 64] == mem[_470 + 95 len 1]
                        mem[_476 + 64] = mem[_470 + 64]
                        require mem[_470 + 96] == mem[_470 + 127 len 1]
                        mem[_476 + 96] = mem[_470 + 96]
                        require mem[_470 + 128] == mem[_470 + 159 len 1]
                        mem[_476 + 128] = mem[_470 + 128]
                        require mem[_470 + 160] == mem[_470 + 191 len 1]
                        mem[_476 + 160] = mem[_470 + 160]
                        require mem[_470 + 192] == mem[_470 + 223 len 1]
                        mem[_476 + 192] = mem[_470 + 192]
                        require mem[_470 + 224] == mem[_470 + 255 len 1]
                        mem[_476 + 224] = mem[_470 + 224]
                        require mem[_470 + 256] == mem[_470 + 287 len 1]
                        mem[_476 + 256] = mem[_470 + 256]
                        require mem[_470 + 288] == mem[_470 + 319 len 1]
                        mem[_476 + 288] = mem[_470 + 288]
                        require mem[_470 + 320] == mem[_470 + 351 len 1]
                        mem[_476 + 320] = mem[_470 + 320]
                        require mem[_470 + 352] == mem[_470 + 383 len 1]
                        mem[_476 + 352] = mem[_470 + 352]
                        require mem[_470 + 384] == mem[_470 + 415 len 1]
                        mem[_476 + 384] = mem[_470 + 384]
                        require mem[_470 + 416] == mem[_470 + 447 len 1]
                        mem[_476 + 416] = mem[_470 + 416]
                        require mem[_470 + 448] == mem[_470 + 479 len 1]
                        mem[_476 + 448] = mem[_470 + 448]
                        require mem[_470 + 480] == mem[_470 + 511 len 1]
                        mem[_476 + 480] = mem[_470 + 480]
                        require mem[_470 + 512] == mem[_470 + 543 len 1]
                        mem[_476 + 512] = mem[_470 + 512]
                        require mem[_470 + 544] == mem[_470 + 575 len 1]
                        mem[_476 + 544] = mem[_470 + 544]
                        require mem[_470 + 576] == mem[_470 + 607 len 1]
                        mem[_476 + 576] = mem[_470 + 576]
                        require mem[_470 + 608] == mem[_470 + 639 len 1]
                        mem[_476 + 608] = mem[_470 + 608]
                        require mem[_470 + 640] == mem[_470 + 671 len 1]
                        mem[_476 + 640] = mem[_470 + 640]
                        require mem[_470 + 672] == mem[_470 + 703 len 1]
                        mem[_476 + 672] = mem[_470 + 672]
                        require mem[_470 + 704] == mem[_470 + 735 len 1]
                        mem[_476 + 704] = mem[_470 + 704]
                        require mem[_470 + 736] == mem[_470 + 767 len 1]
                        mem[_476 + 736] = mem[_470 + 736]
                        require mem[_470 + 768] == mem[_470 + 799 len 1]
                        mem[_476 + 768] = mem[_470 + 768]
                        require mem[_470 + 800] == mem[_470 + 831 len 1]
                        mem[_476 + 800] = mem[_470 + 800]
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        if mem[_476]:
                            if stor0:
                                revert with 0, 'Pausable: paused'
                            if sub_91fae6c2 >= 2400000000 * 10^18:
                                _715 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_715] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_715 + 32] = Mask(80, 0, block.timestamp)
                                mem[_715 + 64] = address(cd[4])
                            else:
                                if block.timestamp < lastClaimTimestamp:
                                    revert with 0, 17
                                if block.timestamp - lastClaimTimestamp and sub_3308e6c1 > -1 / block.timestamp - lastClaimTimestamp:
                                    revert with 0, 17
                                if (block.timestamp * sub_3308e6c1) - (lastClaimTimestamp * sub_3308e6c1) and sub_9795314b > -1 / (block.timestamp * sub_3308e6c1) - (lastClaimTimestamp * sub_3308e6c1):
                                    revert with 0, 17
                                if sub_91fae6c2 > !((block.timestamp * sub_3308e6c1 * sub_9795314b) - (lastClaimTimestamp * sub_3308e6c1 * sub_9795314b) / 24 * 3600):
                                    revert with 0, 17
                                sub_91fae6c2 += (block.timestamp * sub_3308e6c1 * sub_9795314b) - (lastClaimTimestamp * sub_3308e6c1 * sub_9795314b) / 24 * 3600
                                lastClaimTimestamp = block.timestamp
                                _769 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_769] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_769 + 32] = Mask(80, 0, block.timestamp)
                                mem[_769 + 64] = address(cd[4])
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[32] = 3
                            uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                            address(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                            if sub_3308e6c1 > -2:
                                revert with 0, 17
                            sub_3308e6c1++
                            mem[mem[64]] = address(cd[4])
                            mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 64] = block.timestamp
                            emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[36] + 36)] << 240)
                            mem[mem[64] len 832] = ext_call.return_data[0 len 832]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _724 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 832
                            _734 = mem[64]
                            if mem[64] + 832 < mem[64] or mem[64] + 832 > test266151307():
                                revert with 0, 65
                            mem[64] = mem[64] + 832
                            require mem[_724] == bool(mem[_724])
                            mem[_734] = mem[_724]
                            require mem[_724 + 32] == mem[_724 + 63 len 1]
                            mem[_734 + 32] = mem[_724 + 32]
                            require mem[_724 + 64] == mem[_724 + 95 len 1]
                            mem[_734 + 64] = mem[_724 + 64]
                            require mem[_724 + 96] == mem[_724 + 127 len 1]
                            mem[_734 + 96] = mem[_724 + 96]
                            require mem[_724 + 128] == mem[_724 + 159 len 1]
                            mem[_734 + 128] = mem[_724 + 128]
                            require mem[_724 + 160] == mem[_724 + 191 len 1]
                            mem[_734 + 160] = mem[_724 + 160]
                            require mem[_724 + 192] == mem[_724 + 223 len 1]
                            mem[_734 + 192] = mem[_724 + 192]
                            require mem[_724 + 224] == mem[_724 + 255 len 1]
                            mem[_734 + 224] = mem[_724 + 224]
                            require mem[_724 + 256] == mem[_724 + 287 len 1]
                            mem[_734 + 256] = mem[_724 + 256]
                            require mem[_724 + 288] == mem[_724 + 319 len 1]
                            mem[_734 + 288] = mem[_724 + 288]
                            require mem[_724 + 320] == mem[_724 + 351 len 1]
                            mem[_734 + 320] = mem[_724 + 320]
                            require mem[_724 + 352] == mem[_724 + 383 len 1]
                            mem[_734 + 352] = mem[_724 + 352]
                            require mem[_724 + 384] == mem[_724 + 415 len 1]
                            mem[_734 + 384] = mem[_724 + 384]
                            require mem[_724 + 416] == mem[_724 + 447 len 1]
                            mem[_734 + 416] = mem[_724 + 416]
                            require mem[_724 + 448] == mem[_724 + 479 len 1]
                            mem[_734 + 448] = mem[_724 + 448]
                            require mem[_724 + 480] == mem[_724 + 511 len 1]
                            mem[_734 + 480] = mem[_724 + 480]
                            require mem[_724 + 512] == mem[_724 + 543 len 1]
                            mem[_734 + 512] = mem[_724 + 512]
                            require mem[_724 + 544] == mem[_724 + 575 len 1]
                            mem[_734 + 544] = mem[_724 + 544]
                            require mem[_724 + 576] == mem[_724 + 607 len 1]
                            mem[_734 + 576] = mem[_724 + 576]
                            require mem[_724 + 608] == mem[_724 + 639 len 1]
                            mem[_734 + 608] = mem[_724 + 608]
                            require mem[_724 + 640] == mem[_724 + 671 len 1]
                            mem[_734 + 640] = mem[_724 + 640]
                            require mem[_724 + 672] == mem[_724 + 703 len 1]
                            mem[_734 + 672] = mem[_724 + 672]
                            require mem[_724 + 704] == mem[_724 + 735 len 1]
                            mem[_734 + 704] = mem[_724 + 704]
                            require mem[_724 + 736] == mem[_724 + 767 len 1]
                            mem[_734 + 736] = mem[_724 + 736]
                            require mem[_724 + 768] == mem[_724 + 799 len 1]
                            mem[_734 + 768] = mem[_724 + 768]
                            require mem[_724 + 800] == mem[_724 + 831 len 1]
                            mem[_734 + 800] = mem[_724 + 800]
                            if 8 < mem[_734 + 831 len 1]:
                                revert with 0, 17
                            if totalAlphaStaked > !uint8(-mem[_734 + 831 len 1] + 8):
                                revert with 0, 17
                            totalAlphaStaked += uint8(-mem[_734 + 831 len 1] + 8)
                            mem[0] = uint8(-mem[_734 + 831 len 1] + 8)
                            _935 = sha3(mem[0], 4)
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = uint256(stor[_935].field_0)
                            mem[32] = 4
                            _937 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_937] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_937 + 32] = Mask(80, 0, stor9)
                            mem[_937 + 64] = address(cd[4])
                            uint256(stor[_935].field_0)++
                            mem[0] = _935
                            uint16(stor[uint256(stor[_935].field_0) + sha3(_935)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, stor[uint256(stor[_935].field_0) + sha3(_935)].field_0) = Mask(80, 0, stor9)
                            uint16(stor[uint256(stor[_935].field_0) + sha3(_935)].field_80) = 0
                            address(stor[uint256(stor[_935].field_0) + sha3(_935)].field_96) = address(cd[4])
                            if sub_d5958b35 > -2:
                                revert with 0, 17
                            sub_d5958b35++
                            mem[mem[64]] = address(cd[4])
                            mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 64] = uint256(sub_2c5124a9)
                            emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, uint256(sub_2c5124a9));
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
    stor16 = 0
}

function sub_b40b03d2(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == bool(cd[36])
    if stor16:
        revert with 0, 'No reentrancy'
    stor16 = 1
    if stor0:
        revert with 0, 'Pausable: paused'
    if sub_91fae6c2 >= 2400000000 * 10^18:
        if msg.sender != tx.origin:
            revert with 0, 'Only EOA'
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(stor1)
            staticcall stor1.getTokenTraits(uint256 arg1) with:
                    gas gas_remaining wei
                   args (cd[((32 * idx) + cd[4] + 36)] << 240)
            mem[mem[64] len 832] = ext_call.return_data[0 len 832]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _804 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 832
            _806 = mem[64]
            if mem[64] + 832 < mem[64] or mem[64] + 832 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 832
            require mem[_804] == bool(mem[_804])
            mem[_806] = mem[_804]
            require mem[_804 + 32] == mem[_804 + 63 len 1]
            mem[_806 + 32] = mem[_804 + 32]
            require mem[_804 + 64] == mem[_804 + 95 len 1]
            mem[_806 + 64] = mem[_804 + 64]
            require mem[_804 + 96] == mem[_804 + 127 len 1]
            mem[_806 + 96] = mem[_804 + 96]
            require mem[_804 + 128] == mem[_804 + 159 len 1]
            mem[_806 + 128] = mem[_804 + 128]
            require mem[_804 + 160] == mem[_804 + 191 len 1]
            mem[_806 + 160] = mem[_804 + 160]
            require mem[_804 + 192] == mem[_804 + 223 len 1]
            mem[_806 + 192] = mem[_804 + 192]
            require mem[_804 + 224] == mem[_804 + 255 len 1]
            mem[_806 + 224] = mem[_804 + 224]
            require mem[_804 + 256] == mem[_804 + 287 len 1]
            mem[_806 + 256] = mem[_804 + 256]
            require mem[_804 + 288] == mem[_804 + 319 len 1]
            mem[_806 + 288] = mem[_804 + 288]
            require mem[_804 + 320] == mem[_804 + 351 len 1]
            mem[_806 + 320] = mem[_804 + 320]
            require mem[_804 + 352] == mem[_804 + 383 len 1]
            mem[_806 + 352] = mem[_804 + 352]
            require mem[_804 + 384] == mem[_804 + 415 len 1]
            mem[_806 + 384] = mem[_804 + 384]
            require mem[_804 + 416] == mem[_804 + 447 len 1]
            mem[_806 + 416] = mem[_804 + 416]
            require mem[_804 + 448] == mem[_804 + 479 len 1]
            mem[_806 + 448] = mem[_804 + 448]
            require mem[_804 + 480] == mem[_804 + 511 len 1]
            mem[_806 + 480] = mem[_804 + 480]
            require mem[_804 + 512] == mem[_804 + 543 len 1]
            mem[_806 + 512] = mem[_804 + 512]
            require mem[_804 + 544] == mem[_804 + 575 len 1]
            mem[_806 + 544] = mem[_804 + 544]
            require mem[_804 + 576] == mem[_804 + 607 len 1]
            mem[_806 + 576] = mem[_804 + 576]
            require mem[_804 + 608] == mem[_804 + 639 len 1]
            mem[_806 + 608] = mem[_804 + 608]
            require mem[_804 + 640] == mem[_804 + 671 len 1]
            mem[_806 + 640] = mem[_804 + 640]
            require mem[_804 + 672] == mem[_804 + 703 len 1]
            mem[_806 + 672] = mem[_804 + 672]
            require mem[_804 + 704] == mem[_804 + 735 len 1]
            mem[_806 + 704] = mem[_804 + 704]
            require mem[_804 + 736] == mem[_804 + 767 len 1]
            mem[_806 + 736] = mem[_804 + 736]
            require mem[_804 + 768] == mem[_804 + 799 len 1]
            mem[_806 + 768] = mem[_804 + 768]
            require mem[_804 + 800] == mem[_804 + 831 len 1]
            mem[_806 + 800] = mem[_804 + 800]
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
            if mem[_806]:
                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 3
                _864 = mem[64]
                mem[64] = mem[64] + 96
                mem[_864] = uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0)
                mem[_864 + 32] = Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)
                mem[_864 + 64] = address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96)
                if address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96) != msg.sender:
                    revert with 0, 'SWIPER, NO SWIPING'
                if not cd[36]:
                    if sub_91fae6c2 < 2400000000 * 10^18:
                        if block.timestamp < Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                            revert with 0, 17
                        if block.timestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) and sub_9795314b > -1 / block.timestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                            revert with 0, 17
                        if not cd[36]:
                            if (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 and 20 > -1 / (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600:
                                revert with 0, 17
                            if not totalAlphaStaked:
                                if unaccountedRewards > !(20 * (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100):
                                    revert with 0, 17
                                unaccountedRewards += 20 * (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100
                                if (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 and 80 > -1 / (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600:
                                    revert with 0, 17
                                _1142 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1142] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_1142 + 32] = Mask(80, 0, block.timestamp)
                                mem[_1142 + 64] = msg.sender
                            else:
                                if 20 * (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100 > !unaccountedRewards:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    revert with 0, 18
                                if uint256(sub_2c5124a9) > !((20 * (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked):
                                    revert with 0, 17
                                uint256(sub_2c5124a9) += (20 * (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                unaccountedRewards = 0
                                if (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 and 80 > -1 / (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600:
                                    revert with 0, 17
                                _1250 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1250] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_1250 + 32] = Mask(80, 0, block.timestamp)
                                mem[_1250 + 64] = msg.sender
                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 3
                            uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[4] + 36)])
                            Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                            address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96) = msg.sender
                            mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 32] = 80 * (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100
                            mem[mem[64] + 64] = bool(cd[36])
                            mem[mem[64] + 96] = msg.sender
                            emit 0x64e9ba1a: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100, bool(cd[36]), msg.sender
                            if 0 > !(80 * (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100):
                                revert with 0, 17
                        else:
                            mem[0] = msg.sender
                            mem[32] = 6
                            s = 0
                            while s < uint256(stor6[address(msg.sender)].field_0):
                                mem[0] = sha3(address(msg.sender), 6)
                                if uint256(stor6[address(msg.sender)][s].field_0) != uint16(cd[((32 * idx) + cd[4] + 36)]):
                                    if s == -1:
                                        revert with 0, 17
                                    s = s + 1
                                    continue 
                                if uint256(stor6[address(msg.sender)].field_0) < 1:
                                    revert with 0, 17
                                if uint256(stor6[address(msg.sender)].field_0) - 1 >= uint256(stor6[address(msg.sender)].field_0):
                                    revert with 0, 50
                                if s >= uint256(stor6[address(msg.sender)].field_0):
                                    revert with 0, 50
                                uint256(stor6[address(msg.sender)][s].field_0) = uint256(stor6[address(msg.sender)][uint256(stor6[address(msg.sender)].field_0)].field_0)
                                if not uint256(stor6[address(msg.sender)].field_0):
                                    revert with 0, 49
                                mem[0] = sha3(address(msg.sender), 6)
                                uint256(stor6[address(msg.sender)][uint256(stor6[address(msg.sender)].field_0)].field_0) = 0
                                uint256(stor6[address(msg.sender)].field_0)--
                                if block.number < 1:
                                    revert with 0, 17
                                _1782 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 148] = sub_3308e6c1
                                mem[mem[64] + 180] = totalAlphaStaked
                                mem[mem[64] + 212] = lastClaimTimestamp
                                _1813 = mem[64]
                                mem[mem[64]] = 212
                                mem[64] = mem[64] + 244
                                if bool(sha3(mem[_1813 + 32 len mem[_1813]])) != 1:
                                    require ext_code.size(stor1)
                                    call stor1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[32] = 3
                                    uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                    if sub_3308e6c1 < 1:
                                        revert with 0, 17
                                    sub_3308e6c1--
                                    mem[_1782 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_1782 + 276] = (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600
                                    mem[_1782 + 308] = bool(cd[36])
                                    mem[_1782 + 340] = msg.sender
                                    emit 0x64e9ba1a: cd[((32 * idx) + cd[4] + 36)] << 240, (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600, bool(cd[36]), msg.sender
                                    if 0 > !((block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600):
                                        revert with 0, 17
                                else:
                                    if not totalAlphaStaked:
                                        if unaccountedRewards > !((block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600):
                                            revert with 0, 17
                                        unaccountedRewards += (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600
                                    else:
                                        if (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 > !unaccountedRewards:
                                            revert with 0, 17
                                        if not totalAlphaStaked:
                                            revert with 0, 18
                                        if uint256(sub_2c5124a9) > !(((block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                            revert with 0, 17
                                        uint256(sub_2c5124a9) += ((block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                        unaccountedRewards = 0
                                    require ext_code.size(stor1)
                                    call stor1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[32] = 3
                                    uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                    if sub_3308e6c1 < 1:
                                        revert with 0, 17
                                    sub_3308e6c1--
                                    mem[_1782 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_1782 + 276] = 0
                                    mem[_1782 + 308] = bool(cd[36])
                                    mem[_1782 + 340] = msg.sender
                                    emit 0x64e9ba1a: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36]), msg.sender
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if block.number < 1:
                                revert with 0, 17
                            _1660 = mem[64]
                            mem[mem[64] + 32] = tx.origin
                            mem[mem[64] + 52] = block.hash(block.number - 1)
                            mem[mem[64] + 84] = block.timestamp
                            mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 148] = sub_3308e6c1
                            mem[mem[64] + 180] = totalAlphaStaked
                            mem[mem[64] + 212] = lastClaimTimestamp
                            _1692 = mem[64]
                            mem[mem[64]] = 212
                            mem[64] = mem[64] + 244
                            if bool(sha3(mem[_1692 + 32 len mem[_1692]])) != 1:
                                require ext_code.size(stor1)
                                call stor1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                if sub_3308e6c1 < 1:
                                    revert with 0, 17
                                sub_3308e6c1--
                                mem[_1660 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_1660 + 276] = (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600
                                mem[_1660 + 308] = bool(cd[36])
                                mem[_1660 + 340] = msg.sender
                                emit 0x64e9ba1a: cd[((32 * idx) + cd[4] + 36)] << 240, (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600, bool(cd[36]), msg.sender
                                if 0 > !((block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600):
                                    revert with 0, 17
                            else:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > !((block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600):
                                        revert with 0, 17
                                    unaccountedRewards += (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600
                                else:
                                    if (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_2c5124a9) > !(((block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_2c5124a9) += ((block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                require ext_code.size(stor1)
                                call stor1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                if sub_3308e6c1 < 1:
                                    revert with 0, 17
                                sub_3308e6c1--
                                mem[_1660 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_1660 + 276] = 0
                                mem[_1660 + 308] = bool(cd[36])
                                mem[_1660 + 340] = msg.sender
                                emit 0x64e9ba1a: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36]), msg.sender
                    else:
                        if Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) > lastClaimTimestamp:
                            if not cd[36]:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > -1:
                                        revert with 0, 17
                                    _1011 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1011] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_1011 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1011 + 64] = msg.sender
                                else:
                                    if 0 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_2c5124a9) > !(unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_2c5124a9) += unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    _1082 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1082] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_1082 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1082 + 64] = msg.sender
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[4] + 36)])
                                Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 64] = bool(cd[36])
                                mem[mem[64] + 96] = msg.sender
                            else:
                                mem[0] = msg.sender
                                mem[32] = 6
                                s = 0
                                while s < uint256(stor6[address(msg.sender)].field_0):
                                    mem[0] = sha3(address(msg.sender), 6)
                                    if uint256(stor6[address(msg.sender)][s].field_0) != uint16(cd[((32 * idx) + cd[4] + 36)]):
                                        if s == -1:
                                            revert with 0, 17
                                        s = s + 1
                                        continue 
                                    if uint256(stor6[address(msg.sender)].field_0) < 1:
                                        revert with 0, 17
                                    if uint256(stor6[address(msg.sender)].field_0) - 1 >= uint256(stor6[address(msg.sender)].field_0):
                                        revert with 0, 50
                                    if s >= uint256(stor6[address(msg.sender)].field_0):
                                        revert with 0, 50
                                    uint256(stor6[address(msg.sender)][s].field_0) = uint256(stor6[address(msg.sender)][uint256(stor6[address(msg.sender)].field_0)].field_0)
                                    if not uint256(stor6[address(msg.sender)].field_0):
                                        revert with 0, 49
                                    mem[0] = sha3(address(msg.sender), 6)
                                    uint256(stor6[address(msg.sender)][uint256(stor6[address(msg.sender)].field_0)].field_0) = 0
                                    uint256(stor6[address(msg.sender)].field_0)--
                                    if block.number < 1:
                                        revert with 0, 17
                                    _1781 = mem[64]
                                    mem[mem[64] + 32] = tx.origin
                                    mem[mem[64] + 52] = block.hash(block.number - 1)
                                    mem[mem[64] + 84] = block.timestamp
                                    mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[mem[64] + 148] = sub_3308e6c1
                                    mem[mem[64] + 180] = totalAlphaStaked
                                    mem[mem[64] + 212] = lastClaimTimestamp
                                    _1810 = mem[64]
                                    mem[mem[64]] = 212
                                    mem[64] = mem[64] + 244
                                    if 1 == bool(sha3(mem[_1810 + 32 len mem[_1810]])):
                                        if not totalAlphaStaked:
                                            if unaccountedRewards > -1:
                                                revert with 0, 17
                                        else:
                                            if 0 > !unaccountedRewards:
                                                revert with 0, 17
                                            if not totalAlphaStaked:
                                                revert with 0, 18
                                            if uint256(sub_2c5124a9) > !(unaccountedRewards / totalAlphaStaked):
                                                revert with 0, 17
                                            uint256(sub_2c5124a9) += unaccountedRewards / totalAlphaStaked
                                            unaccountedRewards = 0
                                    require ext_code.size(stor1)
                                    call stor1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[32] = 3
                                    uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                    if sub_3308e6c1 < 1:
                                        revert with 0, 17
                                    sub_3308e6c1--
                                    mem[_1781 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_1781 + 276] = 0
                                    mem[_1781 + 308] = bool(cd[36])
                                    mem[_1781 + 340] = msg.sender
                                    emit 0x64e9ba1a: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36]), msg.sender
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                if block.number < 1:
                                    revert with 0, 17
                                _1659 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 148] = sub_3308e6c1
                                mem[mem[64] + 180] = totalAlphaStaked
                                mem[mem[64] + 212] = lastClaimTimestamp
                                _1688 = mem[64]
                                mem[mem[64]] = 212
                                mem[64] = mem[64] + 244
                                if 1 == bool(sha3(mem[_1688 + 32 len mem[_1688]])):
                                    if not totalAlphaStaked:
                                        if unaccountedRewards > -1:
                                            revert with 0, 17
                                    else:
                                        if 0 > !unaccountedRewards:
                                            revert with 0, 17
                                        if not totalAlphaStaked:
                                            revert with 0, 18
                                        if uint256(sub_2c5124a9) > !(unaccountedRewards / totalAlphaStaked):
                                            revert with 0, 17
                                        uint256(sub_2c5124a9) += unaccountedRewards / totalAlphaStaked
                                        unaccountedRewards = 0
                                require ext_code.size(stor1)
                                call stor1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                if sub_3308e6c1 < 1:
                                    revert with 0, 17
                                sub_3308e6c1--
                                mem[_1659 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_1659 + 276] = 0
                                mem[_1659 + 308] = bool(cd[36])
                                mem[_1659 + 340] = msg.sender
                            emit 0x64e9ba1a: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36]), msg.sender
                        else:
                            if lastClaimTimestamp < Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                                revert with 0, 17
                            if lastClaimTimestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) and sub_9795314b > -1 / lastClaimTimestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                                revert with 0, 17
                            if not cd[36]:
                                if (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 and 20 > -1 / (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    if unaccountedRewards > !(20 * (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100):
                                        revert with 0, 17
                                    unaccountedRewards += 20 * (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100
                                    if (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600:
                                        revert with 0, 17
                                    _1154 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1154] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_1154 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1154 + 64] = msg.sender
                                else:
                                    if 20 * (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_2c5124a9) > !((20 * (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_2c5124a9) += (20 * (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    if (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600:
                                        revert with 0, 17
                                    _1265 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1265] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_1265 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1265 + 64] = msg.sender
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[4] + 36)])
                                Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 32] = 80 * (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100
                                mem[mem[64] + 64] = bool(cd[36])
                                mem[mem[64] + 96] = msg.sender
                                emit 0x64e9ba1a: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100, bool(cd[36]), msg.sender
                                if 0 > !(80 * (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100):
                                    revert with 0, 17
                            else:
                                mem[0] = msg.sender
                                mem[32] = 6
                                s = 0
                                while s < uint256(stor6[address(msg.sender)].field_0):
                                    mem[0] = sha3(address(msg.sender), 6)
                                    if uint256(stor6[address(msg.sender)][s].field_0) != uint16(cd[((32 * idx) + cd[4] + 36)]):
                                        if s == -1:
                                            revert with 0, 17
                                        s = s + 1
                                        continue 
                                    if uint256(stor6[address(msg.sender)].field_0) < 1:
                                        revert with 0, 17
                                    if uint256(stor6[address(msg.sender)].field_0) - 1 >= uint256(stor6[address(msg.sender)].field_0):
                                        revert with 0, 50
                                    if s >= uint256(stor6[address(msg.sender)].field_0):
                                        revert with 0, 50
                                    uint256(stor6[address(msg.sender)][s].field_0) = uint256(stor6[address(msg.sender)][uint256(stor6[address(msg.sender)].field_0)].field_0)
                                    if not uint256(stor6[address(msg.sender)].field_0):
                                        revert with 0, 49
                                    mem[0] = sha3(address(msg.sender), 6)
                                    uint256(stor6[address(msg.sender)][uint256(stor6[address(msg.sender)].field_0)].field_0) = 0
                                    uint256(stor6[address(msg.sender)].field_0)--
                                    if block.number < 1:
                                        revert with 0, 17
                                    _1780 = mem[64]
                                    mem[mem[64] + 32] = tx.origin
                                    mem[mem[64] + 52] = block.hash(block.number - 1)
                                    mem[mem[64] + 84] = block.timestamp
                                    mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[mem[64] + 148] = sub_3308e6c1
                                    mem[mem[64] + 180] = totalAlphaStaked
                                    mem[mem[64] + 212] = lastClaimTimestamp
                                    _1807 = mem[64]
                                    mem[mem[64]] = 212
                                    mem[64] = mem[64] + 244
                                    if bool(sha3(mem[_1807 + 32 len mem[_1807]])) != 1:
                                        require ext_code.size(stor1)
                                        call stor1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                        mem[32] = 3
                                        uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                        if sub_3308e6c1 < 1:
                                            revert with 0, 17
                                        sub_3308e6c1--
                                        mem[_1780 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                        mem[_1780 + 276] = (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600
                                        mem[_1780 + 308] = bool(cd[36])
                                        mem[_1780 + 340] = msg.sender
                                        emit 0x64e9ba1a: cd[((32 * idx) + cd[4] + 36)] << 240, (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600, bool(cd[36]), msg.sender
                                        if 0 > !((lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600):
                                            revert with 0, 17
                                    else:
                                        if not totalAlphaStaked:
                                            if unaccountedRewards > !((lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600):
                                                revert with 0, 17
                                            unaccountedRewards += (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600
                                        else:
                                            if (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 > !unaccountedRewards:
                                                revert with 0, 17
                                            if not totalAlphaStaked:
                                                revert with 0, 18
                                            if uint256(sub_2c5124a9) > !(((lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                                revert with 0, 17
                                            uint256(sub_2c5124a9) += ((lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                            unaccountedRewards = 0
                                        require ext_code.size(stor1)
                                        call stor1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                        mem[32] = 3
                                        uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                        if sub_3308e6c1 < 1:
                                            revert with 0, 17
                                        sub_3308e6c1--
                                        mem[_1780 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                        mem[_1780 + 276] = 0
                                        mem[_1780 + 308] = bool(cd[36])
                                        mem[_1780 + 340] = msg.sender
                                        emit 0x64e9ba1a: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36]), msg.sender
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                if block.number < 1:
                                    revert with 0, 17
                                _1658 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 148] = sub_3308e6c1
                                mem[mem[64] + 180] = totalAlphaStaked
                                mem[mem[64] + 212] = lastClaimTimestamp
                                _1684 = mem[64]
                                mem[mem[64]] = 212
                                mem[64] = mem[64] + 244
                                if bool(sha3(mem[_1684 + 32 len mem[_1684]])) != 1:
                                    require ext_code.size(stor1)
                                    call stor1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[32] = 3
                                    uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                    if sub_3308e6c1 < 1:
                                        revert with 0, 17
                                    sub_3308e6c1--
                                    mem[_1658 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_1658 + 276] = (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600
                                    mem[_1658 + 308] = bool(cd[36])
                                    mem[_1658 + 340] = msg.sender
                                    emit 0x64e9ba1a: cd[((32 * idx) + cd[4] + 36)] << 240, (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600, bool(cd[36]), msg.sender
                                    if 0 > !((lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600):
                                        revert with 0, 17
                                else:
                                    if not totalAlphaStaked:
                                        if unaccountedRewards > !((lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600):
                                            revert with 0, 17
                                        unaccountedRewards += (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600
                                    else:
                                        if (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 > !unaccountedRewards:
                                            revert with 0, 17
                                        if not totalAlphaStaked:
                                            revert with 0, 18
                                        if uint256(sub_2c5124a9) > !(((lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                            revert with 0, 17
                                        uint256(sub_2c5124a9) += ((lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                        unaccountedRewards = 0
                                    require ext_code.size(stor1)
                                    call stor1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[32] = 3
                                    uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                    if sub_3308e6c1 < 1:
                                        revert with 0, 17
                                    sub_3308e6c1--
                                    mem[_1658 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_1658 + 276] = 0
                                    mem[_1658 + 308] = bool(cd[36])
                                    mem[_1658 + 340] = msg.sender
                                    emit 0x64e9ba1a: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36]), msg.sender
                else:
                    if block.timestamp < Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                        revert with 0, 17
                    if block.timestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) < MINIMUM_TO_EXIT:
                        revert with 0, 'GONNA BE COLD WITHOUT TWO DAY'S HEART'
                    if sub_91fae6c2 < 2400000000 * 10^18:
                        if block.timestamp < Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                            revert with 0, 17
                        if block.timestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) and sub_9795314b > -1 / block.timestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                            revert with 0, 17
                        if not cd[36]:
                            if (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 and 20 > -1 / (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600:
                                revert with 0, 17
                            if not totalAlphaStaked:
                                if unaccountedRewards > !(20 * (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100):
                                    revert with 0, 17
                                unaccountedRewards += 20 * (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100
                                if (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 and 80 > -1 / (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600:
                                    revert with 0, 17
                                _1236 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1236] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_1236 + 32] = Mask(80, 0, block.timestamp)
                                mem[_1236 + 64] = msg.sender
                            else:
                                if 20 * (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100 > !unaccountedRewards:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    revert with 0, 18
                                if uint256(sub_2c5124a9) > !((20 * (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked):
                                    revert with 0, 17
                                uint256(sub_2c5124a9) += (20 * (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                unaccountedRewards = 0
                                if (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 and 80 > -1 / (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600:
                                    revert with 0, 17
                                _1361 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1361] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_1361 + 32] = Mask(80, 0, block.timestamp)
                                mem[_1361 + 64] = msg.sender
                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 3
                            uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[4] + 36)])
                            Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                            address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96) = msg.sender
                            mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 32] = 80 * (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100
                            mem[mem[64] + 64] = bool(cd[36])
                            mem[mem[64] + 96] = msg.sender
                            emit 0x64e9ba1a: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100, bool(cd[36]), msg.sender
                            if 0 > !(80 * (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100):
                                revert with 0, 17
                        else:
                            mem[0] = msg.sender
                            mem[32] = 6
                            s = 0
                            while s < uint256(stor6[address(msg.sender)].field_0):
                                mem[0] = sha3(address(msg.sender), 6)
                                if uint256(stor6[address(msg.sender)][s].field_0) != uint16(cd[((32 * idx) + cd[4] + 36)]):
                                    if s == -1:
                                        revert with 0, 17
                                    s = s + 1
                                    continue 
                                if uint256(stor6[address(msg.sender)].field_0) < 1:
                                    revert with 0, 17
                                if uint256(stor6[address(msg.sender)].field_0) - 1 >= uint256(stor6[address(msg.sender)].field_0):
                                    revert with 0, 50
                                if s >= uint256(stor6[address(msg.sender)].field_0):
                                    revert with 0, 50
                                uint256(stor6[address(msg.sender)][s].field_0) = uint256(stor6[address(msg.sender)][uint256(stor6[address(msg.sender)].field_0)].field_0)
                                if not uint256(stor6[address(msg.sender)].field_0):
                                    revert with 0, 49
                                mem[0] = sha3(address(msg.sender), 6)
                                uint256(stor6[address(msg.sender)][uint256(stor6[address(msg.sender)].field_0)].field_0) = 0
                                uint256(stor6[address(msg.sender)].field_0)--
                                if block.number < 1:
                                    revert with 0, 17
                                _1785 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 148] = sub_3308e6c1
                                mem[mem[64] + 180] = totalAlphaStaked
                                mem[mem[64] + 212] = lastClaimTimestamp
                                _1822 = mem[64]
                                mem[mem[64]] = 212
                                mem[64] = mem[64] + 244
                                if bool(sha3(mem[_1822 + 32 len mem[_1822]])) != 1:
                                    require ext_code.size(stor1)
                                    call stor1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[32] = 3
                                    uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                    if sub_3308e6c1 < 1:
                                        revert with 0, 17
                                    sub_3308e6c1--
                                    mem[_1785 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_1785 + 276] = (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600
                                    mem[_1785 + 308] = bool(cd[36])
                                    mem[_1785 + 340] = msg.sender
                                    emit 0x64e9ba1a: cd[((32 * idx) + cd[4] + 36)] << 240, (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600, bool(cd[36]), msg.sender
                                    if 0 > !((block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600):
                                        revert with 0, 17
                                else:
                                    if not totalAlphaStaked:
                                        if unaccountedRewards > !((block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600):
                                            revert with 0, 17
                                        unaccountedRewards += (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600
                                    else:
                                        if (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 > !unaccountedRewards:
                                            revert with 0, 17
                                        if not totalAlphaStaked:
                                            revert with 0, 18
                                        if uint256(sub_2c5124a9) > !(((block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                            revert with 0, 17
                                        uint256(sub_2c5124a9) += ((block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                        unaccountedRewards = 0
                                    require ext_code.size(stor1)
                                    call stor1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[32] = 3
                                    uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                    if sub_3308e6c1 < 1:
                                        revert with 0, 17
                                    sub_3308e6c1--
                                    mem[_1785 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_1785 + 276] = 0
                                    mem[_1785 + 308] = bool(cd[36])
                                    mem[_1785 + 340] = msg.sender
                                    emit 0x64e9ba1a: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36]), msg.sender
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if block.number < 1:
                                revert with 0, 17
                            _1663 = mem[64]
                            mem[mem[64] + 32] = tx.origin
                            mem[mem[64] + 52] = block.hash(block.number - 1)
                            mem[mem[64] + 84] = block.timestamp
                            mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 148] = sub_3308e6c1
                            mem[mem[64] + 180] = totalAlphaStaked
                            mem[mem[64] + 212] = lastClaimTimestamp
                            _1704 = mem[64]
                            mem[mem[64]] = 212
                            mem[64] = mem[64] + 244
                            if bool(sha3(mem[_1704 + 32 len mem[_1704]])) != 1:
                                require ext_code.size(stor1)
                                call stor1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                if sub_3308e6c1 < 1:
                                    revert with 0, 17
                                sub_3308e6c1--
                                mem[_1663 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_1663 + 276] = (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600
                                mem[_1663 + 308] = bool(cd[36])
                                mem[_1663 + 340] = msg.sender
                                emit 0x64e9ba1a: cd[((32 * idx) + cd[4] + 36)] << 240, (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600, bool(cd[36]), msg.sender
                                if 0 > !((block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600):
                                    revert with 0, 17
                            else:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > !((block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600):
                                        revert with 0, 17
                                    unaccountedRewards += (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600
                                else:
                                    if (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_2c5124a9) > !(((block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_2c5124a9) += ((block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                require ext_code.size(stor1)
                                call stor1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                if sub_3308e6c1 < 1:
                                    revert with 0, 17
                                sub_3308e6c1--
                                mem[_1663 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_1663 + 276] = 0
                                mem[_1663 + 308] = bool(cd[36])
                                mem[_1663 + 340] = msg.sender
                                emit 0x64e9ba1a: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36]), msg.sender
                    else:
                        if Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) > lastClaimTimestamp:
                            if not cd[36]:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > -1:
                                        revert with 0, 17
                                    _1074 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1074] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_1074 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1074 + 64] = msg.sender
                                else:
                                    if 0 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_2c5124a9) > !(unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_2c5124a9) += unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    _1157 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1157] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_1157 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1157 + 64] = msg.sender
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[4] + 36)])
                                Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 64] = bool(cd[36])
                                mem[mem[64] + 96] = msg.sender
                            else:
                                mem[0] = msg.sender
                                mem[32] = 6
                                s = 0
                                while s < uint256(stor6[address(msg.sender)].field_0):
                                    mem[0] = sha3(address(msg.sender), 6)
                                    if uint256(stor6[address(msg.sender)][s].field_0) != uint16(cd[((32 * idx) + cd[4] + 36)]):
                                        if s == -1:
                                            revert with 0, 17
                                        s = s + 1
                                        continue 
                                    if uint256(stor6[address(msg.sender)].field_0) < 1:
                                        revert with 0, 17
                                    if uint256(stor6[address(msg.sender)].field_0) - 1 >= uint256(stor6[address(msg.sender)].field_0):
                                        revert with 0, 50
                                    if s >= uint256(stor6[address(msg.sender)].field_0):
                                        revert with 0, 50
                                    uint256(stor6[address(msg.sender)][s].field_0) = uint256(stor6[address(msg.sender)][uint256(stor6[address(msg.sender)].field_0)].field_0)
                                    if not uint256(stor6[address(msg.sender)].field_0):
                                        revert with 0, 49
                                    mem[0] = sha3(address(msg.sender), 6)
                                    uint256(stor6[address(msg.sender)][uint256(stor6[address(msg.sender)].field_0)].field_0) = 0
                                    uint256(stor6[address(msg.sender)].field_0)--
                                    if block.number < 1:
                                        revert with 0, 17
                                    _1784 = mem[64]
                                    mem[mem[64] + 32] = tx.origin
                                    mem[mem[64] + 52] = block.hash(block.number - 1)
                                    mem[mem[64] + 84] = block.timestamp
                                    mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[mem[64] + 148] = sub_3308e6c1
                                    mem[mem[64] + 180] = totalAlphaStaked
                                    mem[mem[64] + 212] = lastClaimTimestamp
                                    _1819 = mem[64]
                                    mem[mem[64]] = 212
                                    mem[64] = mem[64] + 244
                                    if 1 == bool(sha3(mem[_1819 + 32 len mem[_1819]])):
                                        if not totalAlphaStaked:
                                            if unaccountedRewards > -1:
                                                revert with 0, 17
                                        else:
                                            if 0 > !unaccountedRewards:
                                                revert with 0, 17
                                            if not totalAlphaStaked:
                                                revert with 0, 18
                                            if uint256(sub_2c5124a9) > !(unaccountedRewards / totalAlphaStaked):
                                                revert with 0, 17
                                            uint256(sub_2c5124a9) += unaccountedRewards / totalAlphaStaked
                                            unaccountedRewards = 0
                                    require ext_code.size(stor1)
                                    call stor1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[32] = 3
                                    uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                    if sub_3308e6c1 < 1:
                                        revert with 0, 17
                                    sub_3308e6c1--
                                    mem[_1784 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_1784 + 276] = 0
                                    mem[_1784 + 308] = bool(cd[36])
                                    mem[_1784 + 340] = msg.sender
                                    emit 0x64e9ba1a: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36]), msg.sender
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                if block.number < 1:
                                    revert with 0, 17
                                _1662 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 148] = sub_3308e6c1
                                mem[mem[64] + 180] = totalAlphaStaked
                                mem[mem[64] + 212] = lastClaimTimestamp
                                _1700 = mem[64]
                                mem[mem[64]] = 212
                                mem[64] = mem[64] + 244
                                if 1 == bool(sha3(mem[_1700 + 32 len mem[_1700]])):
                                    if not totalAlphaStaked:
                                        if unaccountedRewards > -1:
                                            revert with 0, 17
                                    else:
                                        if 0 > !unaccountedRewards:
                                            revert with 0, 17
                                        if not totalAlphaStaked:
                                            revert with 0, 18
                                        if uint256(sub_2c5124a9) > !(unaccountedRewards / totalAlphaStaked):
                                            revert with 0, 17
                                        uint256(sub_2c5124a9) += unaccountedRewards / totalAlphaStaked
                                        unaccountedRewards = 0
                                require ext_code.size(stor1)
                                call stor1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                if sub_3308e6c1 < 1:
                                    revert with 0, 17
                                sub_3308e6c1--
                                mem[_1662 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_1662 + 276] = 0
                                mem[_1662 + 308] = bool(cd[36])
                                mem[_1662 + 340] = msg.sender
                            emit 0x64e9ba1a: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36]), msg.sender
                        else:
                            if lastClaimTimestamp < Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                                revert with 0, 17
                            if lastClaimTimestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) and sub_9795314b > -1 / lastClaimTimestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                                revert with 0, 17
                            if not cd[36]:
                                if (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 and 20 > -1 / (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    if unaccountedRewards > !(20 * (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100):
                                        revert with 0, 17
                                    unaccountedRewards += 20 * (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100
                                    if (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600:
                                        revert with 0, 17
                                    _1253 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1253] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_1253 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1253 + 64] = msg.sender
                                else:
                                    if 20 * (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_2c5124a9) > !((20 * (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_2c5124a9) += (20 * (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    if (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600:
                                        revert with 0, 17
                                    _1377 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1377] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_1377 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1377 + 64] = msg.sender
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[4] + 36)])
                                Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 32] = 80 * (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100
                                mem[mem[64] + 64] = bool(cd[36])
                                mem[mem[64] + 96] = msg.sender
                                emit 0x64e9ba1a: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100, bool(cd[36]), msg.sender
                                if 0 > !(80 * (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100):
                                    revert with 0, 17
                            else:
                                mem[0] = msg.sender
                                mem[32] = 6
                                s = 0
                                while s < uint256(stor6[address(msg.sender)].field_0):
                                    mem[0] = sha3(address(msg.sender), 6)
                                    if uint256(stor6[address(msg.sender)][s].field_0) != uint16(cd[((32 * idx) + cd[4] + 36)]):
                                        if s == -1:
                                            revert with 0, 17
                                        s = s + 1
                                        continue 
                                    if uint256(stor6[address(msg.sender)].field_0) < 1:
                                        revert with 0, 17
                                    if uint256(stor6[address(msg.sender)].field_0) - 1 >= uint256(stor6[address(msg.sender)].field_0):
                                        revert with 0, 50
                                    if s >= uint256(stor6[address(msg.sender)].field_0):
                                        revert with 0, 50
                                    uint256(stor6[address(msg.sender)][s].field_0) = uint256(stor6[address(msg.sender)][uint256(stor6[address(msg.sender)].field_0)].field_0)
                                    if not uint256(stor6[address(msg.sender)].field_0):
                                        revert with 0, 49
                                    mem[0] = sha3(address(msg.sender), 6)
                                    uint256(stor6[address(msg.sender)][uint256(stor6[address(msg.sender)].field_0)].field_0) = 0
                                    uint256(stor6[address(msg.sender)].field_0)--
                                    if block.number < 1:
                                        revert with 0, 17
                                    _1783 = mem[64]
                                    mem[mem[64] + 32] = tx.origin
                                    mem[mem[64] + 52] = block.hash(block.number - 1)
                                    mem[mem[64] + 84] = block.timestamp
                                    mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[mem[64] + 148] = sub_3308e6c1
                                    mem[mem[64] + 180] = totalAlphaStaked
                                    mem[mem[64] + 212] = lastClaimTimestamp
                                    _1816 = mem[64]
                                    mem[mem[64]] = 212
                                    mem[64] = mem[64] + 244
                                    if bool(sha3(mem[_1816 + 32 len mem[_1816]])) != 1:
                                        require ext_code.size(stor1)
                                        call stor1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                        mem[32] = 3
                                        uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                        if sub_3308e6c1 < 1:
                                            revert with 0, 17
                                        sub_3308e6c1--
                                        mem[_1783 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                        mem[_1783 + 276] = (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600
                                        mem[_1783 + 308] = bool(cd[36])
                                        mem[_1783 + 340] = msg.sender
                                        emit 0x64e9ba1a: cd[((32 * idx) + cd[4] + 36)] << 240, (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600, bool(cd[36]), msg.sender
                                        if 0 > !((lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600):
                                            revert with 0, 17
                                    else:
                                        if not totalAlphaStaked:
                                            if unaccountedRewards > !((lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600):
                                                revert with 0, 17
                                            unaccountedRewards += (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600
                                        else:
                                            if (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 > !unaccountedRewards:
                                                revert with 0, 17
                                            if not totalAlphaStaked:
                                                revert with 0, 18
                                            if uint256(sub_2c5124a9) > !(((lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                                revert with 0, 17
                                            uint256(sub_2c5124a9) += ((lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                            unaccountedRewards = 0
                                        require ext_code.size(stor1)
                                        call stor1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                        mem[32] = 3
                                        uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                        if sub_3308e6c1 < 1:
                                            revert with 0, 17
                                        sub_3308e6c1--
                                        mem[_1783 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                        mem[_1783 + 276] = 0
                                        mem[_1783 + 308] = bool(cd[36])
                                        mem[_1783 + 340] = msg.sender
                                        emit 0x64e9ba1a: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36]), msg.sender
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                if block.number < 1:
                                    revert with 0, 17
                                _1661 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 148] = sub_3308e6c1
                                mem[mem[64] + 180] = totalAlphaStaked
                                mem[mem[64] + 212] = lastClaimTimestamp
                                _1696 = mem[64]
                                mem[mem[64]] = 212
                                mem[64] = mem[64] + 244
                                if bool(sha3(mem[_1696 + 32 len mem[_1696]])) != 1:
                                    require ext_code.size(stor1)
                                    call stor1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[32] = 3
                                    uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                    if sub_3308e6c1 < 1:
                                        revert with 0, 17
                                    sub_3308e6c1--
                                    mem[_1661 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_1661 + 276] = (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600
                                    mem[_1661 + 308] = bool(cd[36])
                                    mem[_1661 + 340] = msg.sender
                                    emit 0x64e9ba1a: cd[((32 * idx) + cd[4] + 36)] << 240, (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600, bool(cd[36]), msg.sender
                                    if 0 > !((lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600):
                                        revert with 0, 17
                                else:
                                    if not totalAlphaStaked:
                                        if unaccountedRewards > !((lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600):
                                            revert with 0, 17
                                        unaccountedRewards += (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600
                                    else:
                                        if (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 > !unaccountedRewards:
                                            revert with 0, 17
                                        if not totalAlphaStaked:
                                            revert with 0, 18
                                        if uint256(sub_2c5124a9) > !(((lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                            revert with 0, 17
                                        uint256(sub_2c5124a9) += ((lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                        unaccountedRewards = 0
                                    require ext_code.size(stor1)
                                    call stor1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[32] = 3
                                    uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                    if sub_3308e6c1 < 1:
                                        revert with 0, 17
                                    sub_3308e6c1--
                                    mem[_1661 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_1661 + 276] = 0
                                    mem[_1661 + 308] = bool(cd[36])
                                    mem[_1661 + 340] = msg.sender
                                    emit 0x64e9ba1a: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36]), msg.sender
            else:
                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                require ext_code.size(stor1)
                staticcall stor1.0x6352211e with:
                        gas gas_remaining wei
                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _874 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_874] == mem[_874 + 12 len 20]
                if mem[_874 + 12 len 20] != this.address:
                    revert with 0, 'AINT A PART OF THE PACK'
                require ext_code.size(stor1)
                staticcall stor1.getTokenTraits(uint256 arg1) with:
                        gas gas_remaining wei
                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                mem[mem[64] len 832] = ext_call.return_data[0 len 832]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _910 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 832
                _914 = mem[64]
                if mem[64] + 832 < mem[64] or mem[64] + 832 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + 832
                require mem[_910] == bool(mem[_910])
                mem[_914] = mem[_910]
                require mem[_910 + 32] == mem[_910 + 63 len 1]
                mem[_914 + 32] = mem[_910 + 32]
                require mem[_910 + 64] == mem[_910 + 95 len 1]
                mem[_914 + 64] = mem[_910 + 64]
                require mem[_910 + 96] == mem[_910 + 127 len 1]
                mem[_914 + 96] = mem[_910 + 96]
                require mem[_910 + 128] == mem[_910 + 159 len 1]
                mem[_914 + 128] = mem[_910 + 128]
                require mem[_910 + 160] == mem[_910 + 191 len 1]
                mem[_914 + 160] = mem[_910 + 160]
                require mem[_910 + 192] == mem[_910 + 223 len 1]
                mem[_914 + 192] = mem[_910 + 192]
                require mem[_910 + 224] == mem[_910 + 255 len 1]
                mem[_914 + 224] = mem[_910 + 224]
                require mem[_910 + 256] == mem[_910 + 287 len 1]
                mem[_914 + 256] = mem[_910 + 256]
                require mem[_910 + 288] == mem[_910 + 319 len 1]
                mem[_914 + 288] = mem[_910 + 288]
                require mem[_910 + 320] == mem[_910 + 351 len 1]
                mem[_914 + 320] = mem[_910 + 320]
                require mem[_910 + 352] == mem[_910 + 383 len 1]
                mem[_914 + 352] = mem[_910 + 352]
                require mem[_910 + 384] == mem[_910 + 415 len 1]
                mem[_914 + 384] = mem[_910 + 384]
                require mem[_910 + 416] == mem[_910 + 447 len 1]
                mem[_914 + 416] = mem[_910 + 416]
                require mem[_910 + 448] == mem[_910 + 479 len 1]
                mem[_914 + 448] = mem[_910 + 448]
                require mem[_910 + 480] == mem[_910 + 511 len 1]
                mem[_914 + 480] = mem[_910 + 480]
                require mem[_910 + 512] == mem[_910 + 543 len 1]
                mem[_914 + 512] = mem[_910 + 512]
                require mem[_910 + 544] == mem[_910 + 575 len 1]
                mem[_914 + 544] = mem[_910 + 544]
                require mem[_910 + 576] == mem[_910 + 607 len 1]
                mem[_914 + 576] = mem[_910 + 576]
                require mem[_910 + 608] == mem[_910 + 639 len 1]
                mem[_914 + 608] = mem[_910 + 608]
                require mem[_910 + 640] == mem[_910 + 671 len 1]
                mem[_914 + 640] = mem[_910 + 640]
                require mem[_910 + 672] == mem[_910 + 703 len 1]
                mem[_914 + 672] = mem[_910 + 672]
                require mem[_910 + 704] == mem[_910 + 735 len 1]
                mem[_914 + 704] = mem[_910 + 704]
                require mem[_910 + 736] == mem[_910 + 767 len 1]
                mem[_914 + 736] = mem[_910 + 736]
                require mem[_910 + 768] == mem[_910 + 799 len 1]
                mem[_914 + 768] = mem[_910 + 768]
                require mem[_910 + 800] == mem[_910 + 831 len 1]
                mem[_914 + 800] = mem[_910 + 800]
                _1670 = mem[_914 + 800]
                if 8 < mem[_914 + 831 len 1]:
                    revert with 0, 17
                mem[0] = uint8(-mem[_914 + 831 len 1] + 8)
                _1744 = sha3(mem[0], 4)
                mem[32] = 5
                if packIndices[cd[((32 * idx) + cd[4] + 36)] << 240] >= uint256(pack[mem[0]].field_0):
                    revert with 0, 50
                mem[0] = sha3(mem[0], 4)
                _1749 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1749] = uint16(stor[stor5[cd[((32 * idx) + cd[4] + 36)] << 240] + sha3(_1744)].field_0)
                mem[_1749 + 32] = Mask(80, 0, stor[stor5[cd[((32 * idx) + cd[4] + 36)] << 240] + sha3(_1744)].field_16)
                mem[_1749 + 64] = address(stor[stor5[cd[((32 * idx) + cd[4] + 36)] << 240] + sha3(_1744)].field_96)
                if address(stor[stor5[cd[((32 * idx) + cd[4] + 36)] << 240] + sha3(_1744)].field_96) != msg.sender:
                    revert with 0, 'SWIPER, NO SWIPING'
                if uint256(sub_2c5124a9) < Mask(80, 0, stor[stor5[cd[((32 * idx) + cd[4] + 36)] << 240] + sha3(_1744)].field_16):
                    revert with 0, 17
                if uint8(-uint8(_1670) + 8) and uint256(sub_2c5124a9) - Mask(80, 0, stor[stor5[cd[((32 * idx) + cd[4] + 36)] << 240] + sha3(_1744)].field_16) > -1 / uint8(-uint8(_1670) + 8):
                    revert with 0, 17
                if not cd[36]:
                    _1868 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1868] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[_1868 + 32] = Mask(80, 0, stor9)
                    mem[_1868 + 64] = msg.sender
                    mem[32] = 5
                    if packIndices[cd[((32 * idx) + cd[4] + 36)] << 240] >= uint256(pack[-uint8(_1670) + 8 << 248].field_0):
                        revert with 0, 50
                    mem[0] = sha3(-uint8(_1670) + 8 << 248, 4)
                    Mask(80, 0, pack[-uint8(_1670) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_0) = Mask(80, 0, stor9)
                    uint16(pack[-uint8(_1670) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_0) = uint16(cd[((32 * idx) + cd[4] + 36)])
                    Mask(80, 0, pack[-uint8(_1670) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16) = 0
                    address(pack[-uint8(_1670) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_96) = msg.sender
                else:
                    s = 0
                    while s < uint256(stor6[address(msg.sender)].field_0):
                        mem[0] = sha3(address(msg.sender), 6)
                        if uint256(stor6[address(msg.sender)][s].field_0) != uint16(cd[((32 * idx) + cd[4] + 36)]):
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            continue 
                        if uint256(stor6[address(msg.sender)].field_0) < 1:
                            revert with 0, 17
                        if uint256(stor6[address(msg.sender)].field_0) - 1 >= uint256(stor6[address(msg.sender)].field_0):
                            revert with 0, 50
                        if s >= uint256(stor6[address(msg.sender)].field_0):
                            revert with 0, 50
                        uint256(stor6[address(msg.sender)][s].field_0) = uint256(stor6[address(msg.sender)][uint256(stor6[address(msg.sender)].field_0)].field_0)
                        if not uint256(stor6[address(msg.sender)].field_0):
                            revert with 0, 49
                        uint256(stor6[address(msg.sender)][uint256(stor6[address(msg.sender)].field_0)].field_0) = 0
                        uint256(stor6[address(msg.sender)].field_0)--
                        if totalAlphaStaked < uint8(-uint8(_1670) + 8):
                            revert with 0, 17
                        totalAlphaStaked -= uint8(-uint8(_1670) + 8)
                        require ext_code.size(stor1)
                        call stor1.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[32] = 4
                        if uint256(pack[-uint8(_1670) + 8 << 248].field_0) < 1:
                            revert with 0, 17
                        if uint256(pack[-uint8(_1670) + 8 << 248].field_0) - 1 >= uint256(pack[-uint8(_1670) + 8 << 248].field_0):
                            revert with 0, 50
                        mem[0] = sha3(-uint8(_1670) + 8 << 248, 4)
                        _2323 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_2323] = uint16(pack[-uint8(_1670) + 8 << 248][uint256(pack[-uint8(_1670) + 8 << 248].field_0)].field_0)
                        mem[_2323 + 32] = Mask(80, 0, pack[-uint8(_1670) + 8 << 248][uint256(pack[-uint8(_1670) + 8 << 248].field_0)].field_0)
                        mem[_2323 + 64] = address(pack[-uint8(_1670) + 8 << 248][uint256(pack[-uint8(_1670) + 8 << 248].field_0)].field_0)
                        if packIndices[cd[((32 * idx) + cd[4] + 36)] << 240] >= uint256(pack[-uint8(_1670) + 8 << 248].field_0):
                            revert with 0, 50
                        uint16(pack[-uint8(_1670) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_0) = uint16(pack[-uint8(_1670) + 8 << 248][uint256(pack[-uint8(_1670) + 8 << 248].field_0)].field_0)
                        Mask(80, 0, pack[-uint8(_1670) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16) = Mask(80, 0, pack[-uint8(_1670) + 8 << 248][uint256(pack[-uint8(_1670) + 8 << 248].field_0)].field_0)
                        address(pack[-uint8(_1670) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_96) = address(pack[-uint8(_1670) + 8 << 248][uint256(pack[-uint8(_1670) + 8 << 248].field_0)].field_0)
                        packIndices[uint16(stor4[-uint8(_1670) + 8 << 248][uint256(stor4[-uint8(_1670) + 8 << 248].field_0)].field_0)] = packIndices[cd[((32 * idx) + cd[4] + 36)] << 240]
                        if not uint256(pack[-uint8(_1670) + 8 << 248].field_0):
                            revert with 0, 49
                        uint256(pack[-uint8(_1670) + 8 << 248][uint256(pack[-uint8(_1670) + 8 << 248].field_0)].field_0) = 0
                        uint256(pack[-uint8(_1670) + 8 << 248].field_0)--
                        mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                        mem[32] = 5
                        packIndices[cd[((32 * idx) + cd[4] + 36)] << 240] = 0
                        if sub_d5958b35 < 1:
                            revert with 0, 17
                        sub_d5958b35--
                        mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] + 32] = (uint256(sub_2c5124a9) * uint8(-uint8(_1670) + 8)) - (Mask(80, 0, stor[stor5[cd[((32 * idx) + cd[4] + 36)] << 240] + sha3(_1744)].field_16) * uint8(-uint8(_1670) + 8))
                        mem[mem[64] + 64] = bool(cd[36])
                        mem[mem[64] + 96] = msg.sender
                        emit 0x8e310b66: cd[((32 * idx) + cd[4] + 36)] << 240, (uint256(sub_2c5124a9) * uint8(-uint8(_1670) + 8)) - (Mask(80, 0, stor[stor5[cd[((32 * idx) + cd[4] + 36)] << 240] + sha3(_1744)].field_16) * uint8(-uint8(_1670) + 8)), bool(cd[36]), msg.sender
                        if 0 > !((uint256(sub_2c5124a9) * uint8(-uint8(_1670) + 8)) - (Mask(80, 0, stor[stor5[cd[((32 * idx) + cd[4] + 36)] << 240] + sha3(_1744)].field_16) * uint8(-uint8(_1670) + 8))):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if totalAlphaStaked < uint8(-uint8(_1670) + 8):
                        revert with 0, 17
                    totalAlphaStaked -= uint8(-uint8(_1670) + 8)
                    require ext_code.size(stor1)
                    call stor1.0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[32] = 4
                    if uint256(pack[-uint8(_1670) + 8 << 248].field_0) < 1:
                        revert with 0, 17
                    if uint256(pack[-uint8(_1670) + 8 << 248].field_0) - 1 >= uint256(pack[-uint8(_1670) + 8 << 248].field_0):
                        revert with 0, 50
                    mem[0] = sha3(-uint8(_1670) + 8 << 248, 4)
                    _2287 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_2287] = uint16(pack[-uint8(_1670) + 8 << 248][uint256(pack[-uint8(_1670) + 8 << 248].field_0)].field_0)
                    mem[_2287 + 32] = Mask(80, 0, pack[-uint8(_1670) + 8 << 248][uint256(pack[-uint8(_1670) + 8 << 248].field_0)].field_0)
                    mem[_2287 + 64] = address(pack[-uint8(_1670) + 8 << 248][uint256(pack[-uint8(_1670) + 8 << 248].field_0)].field_0)
                    if packIndices[cd[((32 * idx) + cd[4] + 36)] << 240] >= uint256(pack[-uint8(_1670) + 8 << 248].field_0):
                        revert with 0, 50
                    uint16(pack[-uint8(_1670) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_0) = uint16(pack[-uint8(_1670) + 8 << 248][uint256(pack[-uint8(_1670) + 8 << 248].field_0)].field_0)
                    Mask(80, 0, pack[-uint8(_1670) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16) = Mask(80, 0, pack[-uint8(_1670) + 8 << 248][uint256(pack[-uint8(_1670) + 8 << 248].field_0)].field_0)
                    address(pack[-uint8(_1670) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_96) = address(pack[-uint8(_1670) + 8 << 248][uint256(pack[-uint8(_1670) + 8 << 248].field_0)].field_0)
                    packIndices[uint16(stor4[-uint8(_1670) + 8 << 248][uint256(stor4[-uint8(_1670) + 8 << 248].field_0)].field_0)] = packIndices[cd[((32 * idx) + cd[4] + 36)] << 240]
                    if not uint256(pack[-uint8(_1670) + 8 << 248].field_0):
                        revert with 0, 49
                    uint256(pack[-uint8(_1670) + 8 << 248][uint256(pack[-uint8(_1670) + 8 << 248].field_0)].field_0) = 0
                    uint256(pack[-uint8(_1670) + 8 << 248].field_0)--
                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = 5
                    packIndices[cd[((32 * idx) + cd[4] + 36)] << 240] = 0
                    if sub_d5958b35 < 1:
                        revert with 0, 17
                    sub_d5958b35--
                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] + 32] = (uint256(sub_2c5124a9) * uint8(-uint8(_1670) + 8)) - (Mask(80, 0, stor[stor5[cd[((32 * idx) + cd[4] + 36)] << 240] + sha3(_1744)].field_16) * uint8(-uint8(_1670) + 8))
                mem[mem[64] + 64] = bool(cd[36])
                mem[mem[64] + 96] = msg.sender
                emit 0x8e310b66: cd[((32 * idx) + cd[4] + 36)] << 240, (uint256(sub_2c5124a9) * uint8(-uint8(_1670) + 8)) - (Mask(80, 0, stor[stor5[cd[((32 * idx) + cd[4] + 36)] << 240] + sha3(_1744)].field_16) * uint8(-uint8(_1670) + 8)), bool(cd[36]), msg.sender
                if 0 > !((uint256(sub_2c5124a9) * uint8(-uint8(_1670) + 8)) - (Mask(80, 0, stor[stor5[cd[((32 * idx) + cd[4] + 36)] << 240] + sha3(_1744)].field_16) * uint8(-uint8(_1670) + 8))):
                    revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if block.timestamp < lastClaimTimestamp:
            revert with 0, 17
        if block.timestamp - lastClaimTimestamp and sub_3308e6c1 > -1 / block.timestamp - lastClaimTimestamp:
            revert with 0, 17
        if (block.timestamp * sub_3308e6c1) - (lastClaimTimestamp * sub_3308e6c1) and sub_9795314b > -1 / (block.timestamp * sub_3308e6c1) - (lastClaimTimestamp * sub_3308e6c1):
            revert with 0, 17
        if sub_91fae6c2 > !((block.timestamp * sub_3308e6c1 * sub_9795314b) - (lastClaimTimestamp * sub_3308e6c1 * sub_9795314b) / 24 * 3600):
            revert with 0, 17
        sub_91fae6c2 += (block.timestamp * sub_3308e6c1 * sub_9795314b) - (lastClaimTimestamp * sub_3308e6c1 * sub_9795314b) / 24 * 3600
        lastClaimTimestamp = block.timestamp
        if msg.sender != tx.origin:
            revert with 0, 'Only EOA'
        idx = 0
        s = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(stor1)
            staticcall stor1.getTokenTraits(uint256 arg1) with:
                    gas gas_remaining wei
                   args (cd[((32 * idx) + cd[4] + 36)] << 240)
            mem[mem[64] len 832] = ext_call.return_data[0 len 832]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _805 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 832
            _807 = mem[64]
            if mem[64] + 832 < mem[64] or mem[64] + 832 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 832
            require mem[_805] == bool(mem[_805])
            mem[_807] = mem[_805]
            require mem[_805 + 32] == mem[_805 + 63 len 1]
            mem[_807 + 32] = mem[_805 + 32]
            require mem[_805 + 64] == mem[_805 + 95 len 1]
            mem[_807 + 64] = mem[_805 + 64]
            require mem[_805 + 96] == mem[_805 + 127 len 1]
            mem[_807 + 96] = mem[_805 + 96]
            require mem[_805 + 128] == mem[_805 + 159 len 1]
            mem[_807 + 128] = mem[_805 + 128]
            require mem[_805 + 160] == mem[_805 + 191 len 1]
            mem[_807 + 160] = mem[_805 + 160]
            require mem[_805 + 192] == mem[_805 + 223 len 1]
            mem[_807 + 192] = mem[_805 + 192]
            require mem[_805 + 224] == mem[_805 + 255 len 1]
            mem[_807 + 224] = mem[_805 + 224]
            require mem[_805 + 256] == mem[_805 + 287 len 1]
            mem[_807 + 256] = mem[_805 + 256]
            require mem[_805 + 288] == mem[_805 + 319 len 1]
            mem[_807 + 288] = mem[_805 + 288]
            require mem[_805 + 320] == mem[_805 + 351 len 1]
            mem[_807 + 320] = mem[_805 + 320]
            require mem[_805 + 352] == mem[_805 + 383 len 1]
            mem[_807 + 352] = mem[_805 + 352]
            require mem[_805 + 384] == mem[_805 + 415 len 1]
            mem[_807 + 384] = mem[_805 + 384]
            require mem[_805 + 416] == mem[_805 + 447 len 1]
            mem[_807 + 416] = mem[_805 + 416]
            require mem[_805 + 448] == mem[_805 + 479 len 1]
            mem[_807 + 448] = mem[_805 + 448]
            require mem[_805 + 480] == mem[_805 + 511 len 1]
            mem[_807 + 480] = mem[_805 + 480]
            require mem[_805 + 512] == mem[_805 + 543 len 1]
            mem[_807 + 512] = mem[_805 + 512]
            require mem[_805 + 544] == mem[_805 + 575 len 1]
            mem[_807 + 544] = mem[_805 + 544]
            require mem[_805 + 576] == mem[_805 + 607 len 1]
            mem[_807 + 576] = mem[_805 + 576]
            require mem[_805 + 608] == mem[_805 + 639 len 1]
            mem[_807 + 608] = mem[_805 + 608]
            require mem[_805 + 640] == mem[_805 + 671 len 1]
            mem[_807 + 640] = mem[_805 + 640]
            require mem[_805 + 672] == mem[_805 + 703 len 1]
            mem[_807 + 672] = mem[_805 + 672]
            require mem[_805 + 704] == mem[_805 + 735 len 1]
            mem[_807 + 704] = mem[_805 + 704]
            require mem[_805 + 736] == mem[_805 + 767 len 1]
            mem[_807 + 736] = mem[_805 + 736]
            require mem[_805 + 768] == mem[_805 + 799 len 1]
            mem[_807 + 768] = mem[_805 + 768]
            require mem[_805 + 800] == mem[_805 + 831 len 1]
            mem[_807 + 800] = mem[_805 + 800]
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
            if mem[_807]:
                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 3
                _867 = mem[64]
                mem[64] = mem[64] + 96
                mem[_867] = uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0)
                mem[_867 + 32] = Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)
                mem[_867 + 64] = address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96)
                if address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96) != msg.sender:
                    revert with 0, 'SWIPER, NO SWIPING'
                if not cd[36]:
                    if sub_91fae6c2 < 2400000000 * 10^18:
                        if block.timestamp < Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                            revert with 0, 17
                        if block.timestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) and sub_9795314b > -1 / block.timestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                            revert with 0, 17
                        if not cd[36]:
                            if (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 and 20 > -1 / (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600:
                                revert with 0, 17
                            if not totalAlphaStaked:
                                if unaccountedRewards > !(20 * (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100):
                                    revert with 0, 17
                                unaccountedRewards += 20 * (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100
                                if (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 and 80 > -1 / (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600:
                                    revert with 0, 17
                                _1150 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1150] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_1150 + 32] = Mask(80, 0, block.timestamp)
                                mem[_1150 + 64] = msg.sender
                            else:
                                if 20 * (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100 > !unaccountedRewards:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    revert with 0, 18
                                if uint256(sub_2c5124a9) > !((20 * (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked):
                                    revert with 0, 17
                                uint256(sub_2c5124a9) += (20 * (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                unaccountedRewards = 0
                                if (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 and 80 > -1 / (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600:
                                    revert with 0, 17
                                _1259 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1259] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_1259 + 32] = Mask(80, 0, block.timestamp)
                                mem[_1259 + 64] = msg.sender
                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 3
                            uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[4] + 36)])
                            Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                            address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96) = msg.sender
                            mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 32] = 80 * (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100
                            mem[mem[64] + 64] = bool(cd[36])
                            mem[mem[64] + 96] = msg.sender
                            emit 0x64e9ba1a: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100, bool(cd[36]), msg.sender
                            if s > !(80 * (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (80 * (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100)
                            continue 
                        mem[0] = msg.sender
                        mem[32] = 6
                        t = 0
                        while t < uint256(stor6[address(msg.sender)].field_0):
                            mem[0] = sha3(address(msg.sender), 6)
                            if uint256(stor6[address(msg.sender)][t].field_0) != uint16(cd[((32 * idx) + cd[4] + 36)]):
                                if t == -1:
                                    revert with 0, 17
                                t = t + 1
                                continue 
                            if uint256(stor6[address(msg.sender)].field_0) < 1:
                                revert with 0, 17
                            if uint256(stor6[address(msg.sender)].field_0) - 1 >= uint256(stor6[address(msg.sender)].field_0):
                                revert with 0, 50
                            if t >= uint256(stor6[address(msg.sender)].field_0):
                                revert with 0, 50
                            uint256(stor6[address(msg.sender)][t].field_0) = uint256(stor6[address(msg.sender)][uint256(stor6[address(msg.sender)].field_0)].field_0)
                            if not uint256(stor6[address(msg.sender)].field_0):
                                revert with 0, 49
                            mem[0] = sha3(address(msg.sender), 6)
                            uint256(stor6[address(msg.sender)][uint256(stor6[address(msg.sender)].field_0)].field_0) = 0
                            uint256(stor6[address(msg.sender)].field_0)--
                            if block.number < 1:
                                revert with 0, 17
                            _1790 = mem[64]
                            mem[mem[64] + 32] = tx.origin
                            mem[mem[64] + 52] = block.hash(block.number - 1)
                            mem[mem[64] + 84] = block.timestamp
                            mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 148] = sub_3308e6c1
                            mem[mem[64] + 180] = totalAlphaStaked
                            mem[mem[64] + 212] = lastClaimTimestamp
                            _1832 = mem[64]
                            mem[mem[64]] = 212
                            mem[64] = mem[64] + 244
                            if bool(sha3(mem[_1832 + 32 len mem[_1832]])) != 1:
                                require ext_code.size(stor1)
                                call stor1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                if sub_3308e6c1 < 1:
                                    revert with 0, 17
                                sub_3308e6c1--
                                mem[_1790 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_1790 + 276] = (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600
                                mem[_1790 + 308] = bool(cd[36])
                                mem[_1790 + 340] = msg.sender
                                emit 0x64e9ba1a: cd[((32 * idx) + cd[4] + 36)] << 240, (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600, bool(cd[36]), msg.sender
                                if s > !((block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600):
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + ((block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600)
                                continue 
                            if not totalAlphaStaked:
                                if unaccountedRewards > !((block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600):
                                    revert with 0, 17
                                unaccountedRewards += (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600
                            else:
                                if (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 > !unaccountedRewards:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    revert with 0, 18
                                if uint256(sub_2c5124a9) > !(((block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                    revert with 0, 17
                                uint256(sub_2c5124a9) += ((block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                unaccountedRewards = 0
                            require ext_code.size(stor1)
                            call stor1.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 3
                            uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                            if sub_3308e6c1 < 1:
                                revert with 0, 17
                            sub_3308e6c1--
                            mem[_1790 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[_1790 + 276] = 0
                            mem[_1790 + 308] = bool(cd[36])
                            mem[_1790 + 340] = msg.sender
                            emit 0x64e9ba1a: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36]), msg.sender
                            if s > -1:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                        if block.number < 1:
                            revert with 0, 17
                        _1666 = mem[64]
                        mem[mem[64] + 32] = tx.origin
                        mem[mem[64] + 52] = block.hash(block.number - 1)
                        mem[mem[64] + 84] = block.timestamp
                        mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] + 148] = sub_3308e6c1
                        mem[mem[64] + 180] = totalAlphaStaked
                        mem[mem[64] + 212] = lastClaimTimestamp
                        _1716 = mem[64]
                        mem[mem[64]] = 212
                        mem[64] = mem[64] + 244
                        if bool(sha3(mem[_1716 + 32 len mem[_1716]])) != 1:
                            require ext_code.size(stor1)
                            call stor1.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 3
                            uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                            if sub_3308e6c1 < 1:
                                revert with 0, 17
                            sub_3308e6c1--
                            mem[_1666 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[_1666 + 276] = (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600
                            mem[_1666 + 308] = bool(cd[36])
                            mem[_1666 + 340] = msg.sender
                            emit 0x64e9ba1a: cd[((32 * idx) + cd[4] + 36)] << 240, (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600, bool(cd[36]), msg.sender
                            if s > !((block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + ((block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600)
                            continue 
                        if not totalAlphaStaked:
                            if unaccountedRewards > !((block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600):
                                revert with 0, 17
                            unaccountedRewards += (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600
                        else:
                            if (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 > !unaccountedRewards:
                                revert with 0, 17
                            if not totalAlphaStaked:
                                revert with 0, 18
                            if uint256(sub_2c5124a9) > !(((block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                revert with 0, 17
                            uint256(sub_2c5124a9) += ((block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                            unaccountedRewards = 0
                        require ext_code.size(stor1)
                        call stor1.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                        mem[32] = 3
                        uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                        if sub_3308e6c1 < 1:
                            revert with 0, 17
                        sub_3308e6c1--
                        mem[_1666 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                        mem[_1666 + 276] = 0
                        mem[_1666 + 308] = bool(cd[36])
                        mem[_1666 + 340] = msg.sender
                    else:
                        if Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) > lastClaimTimestamp:
                            if not cd[36]:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > -1:
                                        revert with 0, 17
                                    _1015 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1015] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_1015 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1015 + 64] = msg.sender
                                else:
                                    if 0 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_2c5124a9) > !(unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_2c5124a9) += unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    _1088 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1088] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_1088 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1088 + 64] = msg.sender
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[4] + 36)])
                                Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 64] = bool(cd[36])
                                mem[mem[64] + 96] = msg.sender
                            else:
                                mem[0] = msg.sender
                                mem[32] = 6
                                t = 0
                                while t < uint256(stor6[address(msg.sender)].field_0):
                                    mem[0] = sha3(address(msg.sender), 6)
                                    if uint256(stor6[address(msg.sender)][t].field_0) != uint16(cd[((32 * idx) + cd[4] + 36)]):
                                        if t == -1:
                                            revert with 0, 17
                                        t = t + 1
                                        continue 
                                    if uint256(stor6[address(msg.sender)].field_0) < 1:
                                        revert with 0, 17
                                    if uint256(stor6[address(msg.sender)].field_0) - 1 >= uint256(stor6[address(msg.sender)].field_0):
                                        revert with 0, 50
                                    if t >= uint256(stor6[address(msg.sender)].field_0):
                                        revert with 0, 50
                                    uint256(stor6[address(msg.sender)][t].field_0) = uint256(stor6[address(msg.sender)][uint256(stor6[address(msg.sender)].field_0)].field_0)
                                    if not uint256(stor6[address(msg.sender)].field_0):
                                        revert with 0, 49
                                    mem[0] = sha3(address(msg.sender), 6)
                                    uint256(stor6[address(msg.sender)][uint256(stor6[address(msg.sender)].field_0)].field_0) = 0
                                    uint256(stor6[address(msg.sender)].field_0)--
                                    if block.number < 1:
                                        revert with 0, 17
                                    _1789 = mem[64]
                                    mem[mem[64] + 32] = tx.origin
                                    mem[mem[64] + 52] = block.hash(block.number - 1)
                                    mem[mem[64] + 84] = block.timestamp
                                    mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[mem[64] + 148] = sub_3308e6c1
                                    mem[mem[64] + 180] = totalAlphaStaked
                                    mem[mem[64] + 212] = lastClaimTimestamp
                                    _1829 = mem[64]
                                    mem[mem[64]] = 212
                                    mem[64] = mem[64] + 244
                                    if 1 == bool(sha3(mem[_1829 + 32 len mem[_1829]])):
                                        if not totalAlphaStaked:
                                            if unaccountedRewards > -1:
                                                revert with 0, 17
                                        else:
                                            if 0 > !unaccountedRewards:
                                                revert with 0, 17
                                            if not totalAlphaStaked:
                                                revert with 0, 18
                                            if uint256(sub_2c5124a9) > !(unaccountedRewards / totalAlphaStaked):
                                                revert with 0, 17
                                            uint256(sub_2c5124a9) += unaccountedRewards / totalAlphaStaked
                                            unaccountedRewards = 0
                                    require ext_code.size(stor1)
                                    call stor1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[32] = 3
                                    uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                    if sub_3308e6c1 < 1:
                                        revert with 0, 17
                                    sub_3308e6c1--
                                    mem[_1789 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_1789 + 276] = 0
                                    mem[_1789 + 308] = bool(cd[36])
                                    mem[_1789 + 340] = msg.sender
                                    emit 0x64e9ba1a: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36]), msg.sender
                                    if s > -1:
                                        revert with 0, 17
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s
                                    continue 
                                if block.number < 1:
                                    revert with 0, 17
                                _1665 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 148] = sub_3308e6c1
                                mem[mem[64] + 180] = totalAlphaStaked
                                mem[mem[64] + 212] = lastClaimTimestamp
                                _1712 = mem[64]
                                mem[mem[64]] = 212
                                mem[64] = mem[64] + 244
                                if 1 == bool(sha3(mem[_1712 + 32 len mem[_1712]])):
                                    if not totalAlphaStaked:
                                        if unaccountedRewards > -1:
                                            revert with 0, 17
                                    else:
                                        if 0 > !unaccountedRewards:
                                            revert with 0, 17
                                        if not totalAlphaStaked:
                                            revert with 0, 18
                                        if uint256(sub_2c5124a9) > !(unaccountedRewards / totalAlphaStaked):
                                            revert with 0, 17
                                        uint256(sub_2c5124a9) += unaccountedRewards / totalAlphaStaked
                                        unaccountedRewards = 0
                                require ext_code.size(stor1)
                                call stor1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                if sub_3308e6c1 < 1:
                                    revert with 0, 17
                                sub_3308e6c1--
                                mem[_1665 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_1665 + 276] = 0
                                mem[_1665 + 308] = bool(cd[36])
                                mem[_1665 + 340] = msg.sender
                        else:
                            if lastClaimTimestamp < Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                                revert with 0, 17
                            if lastClaimTimestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) and sub_9795314b > -1 / lastClaimTimestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                                revert with 0, 17
                            if not cd[36]:
                                if (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 and 20 > -1 / (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    if unaccountedRewards > !(20 * (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100):
                                        revert with 0, 17
                                    unaccountedRewards += 20 * (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100
                                    if (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600:
                                        revert with 0, 17
                                    _1161 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1161] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_1161 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1161 + 64] = msg.sender
                                else:
                                    if 20 * (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_2c5124a9) > !((20 * (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_2c5124a9) += (20 * (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    if (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600:
                                        revert with 0, 17
                                    _1278 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1278] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_1278 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1278 + 64] = msg.sender
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[4] + 36)])
                                Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 32] = 80 * (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100
                                mem[mem[64] + 64] = bool(cd[36])
                                mem[mem[64] + 96] = msg.sender
                                emit 0x64e9ba1a: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100, bool(cd[36]), msg.sender
                                if s > !(80 * (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100):
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + (80 * (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100)
                                continue 
                            mem[0] = msg.sender
                            mem[32] = 6
                            t = 0
                            while t < uint256(stor6[address(msg.sender)].field_0):
                                mem[0] = sha3(address(msg.sender), 6)
                                if uint256(stor6[address(msg.sender)][t].field_0) != uint16(cd[((32 * idx) + cd[4] + 36)]):
                                    if t == -1:
                                        revert with 0, 17
                                    t = t + 1
                                    continue 
                                if uint256(stor6[address(msg.sender)].field_0) < 1:
                                    revert with 0, 17
                                if uint256(stor6[address(msg.sender)].field_0) - 1 >= uint256(stor6[address(msg.sender)].field_0):
                                    revert with 0, 50
                                if t >= uint256(stor6[address(msg.sender)].field_0):
                                    revert with 0, 50
                                uint256(stor6[address(msg.sender)][t].field_0) = uint256(stor6[address(msg.sender)][uint256(stor6[address(msg.sender)].field_0)].field_0)
                                if not uint256(stor6[address(msg.sender)].field_0):
                                    revert with 0, 49
                                mem[0] = sha3(address(msg.sender), 6)
                                uint256(stor6[address(msg.sender)][uint256(stor6[address(msg.sender)].field_0)].field_0) = 0
                                uint256(stor6[address(msg.sender)].field_0)--
                                if block.number < 1:
                                    revert with 0, 17
                                _1788 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 148] = sub_3308e6c1
                                mem[mem[64] + 180] = totalAlphaStaked
                                mem[mem[64] + 212] = lastClaimTimestamp
                                _1826 = mem[64]
                                mem[mem[64]] = 212
                                mem[64] = mem[64] + 244
                                if bool(sha3(mem[_1826 + 32 len mem[_1826]])) != 1:
                                    require ext_code.size(stor1)
                                    call stor1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[32] = 3
                                    uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                    if sub_3308e6c1 < 1:
                                        revert with 0, 17
                                    sub_3308e6c1--
                                    mem[_1788 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_1788 + 276] = (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600
                                    mem[_1788 + 308] = bool(cd[36])
                                    mem[_1788 + 340] = msg.sender
                                    emit 0x64e9ba1a: cd[((32 * idx) + cd[4] + 36)] << 240, (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600, bool(cd[36]), msg.sender
                                    if s > !((lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600):
                                        revert with 0, 17
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + ((lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600)
                                    continue 
                                if not totalAlphaStaked:
                                    if unaccountedRewards > !((lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600):
                                        revert with 0, 17
                                    unaccountedRewards += (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600
                                else:
                                    if (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_2c5124a9) > !(((lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_2c5124a9) += ((lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                require ext_code.size(stor1)
                                call stor1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                if sub_3308e6c1 < 1:
                                    revert with 0, 17
                                sub_3308e6c1--
                                mem[_1788 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_1788 + 276] = 0
                                mem[_1788 + 308] = bool(cd[36])
                                mem[_1788 + 340] = msg.sender
                                emit 0x64e9ba1a: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36]), msg.sender
                                if s > -1:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                            if block.number < 1:
                                revert with 0, 17
                            _1664 = mem[64]
                            mem[mem[64] + 32] = tx.origin
                            mem[mem[64] + 52] = block.hash(block.number - 1)
                            mem[mem[64] + 84] = block.timestamp
                            mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 148] = sub_3308e6c1
                            mem[mem[64] + 180] = totalAlphaStaked
                            mem[mem[64] + 212] = lastClaimTimestamp
                            _1708 = mem[64]
                            mem[mem[64]] = 212
                            mem[64] = mem[64] + 244
                            if bool(sha3(mem[_1708 + 32 len mem[_1708]])) != 1:
                                require ext_code.size(stor1)
                                call stor1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                if sub_3308e6c1 < 1:
                                    revert with 0, 17
                                sub_3308e6c1--
                                mem[_1664 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_1664 + 276] = (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600
                                mem[_1664 + 308] = bool(cd[36])
                                mem[_1664 + 340] = msg.sender
                                emit 0x64e9ba1a: cd[((32 * idx) + cd[4] + 36)] << 240, (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600, bool(cd[36]), msg.sender
                                if s > !((lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600):
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + ((lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600)
                                continue 
                            if not totalAlphaStaked:
                                if unaccountedRewards > !((lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600):
                                    revert with 0, 17
                                unaccountedRewards += (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600
                            else:
                                if (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 > !unaccountedRewards:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    revert with 0, 18
                                if uint256(sub_2c5124a9) > !(((lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                    revert with 0, 17
                                uint256(sub_2c5124a9) += ((lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                unaccountedRewards = 0
                            require ext_code.size(stor1)
                            call stor1.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 3
                            uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                            if sub_3308e6c1 < 1:
                                revert with 0, 17
                            sub_3308e6c1--
                            mem[_1664 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[_1664 + 276] = 0
                            mem[_1664 + 308] = bool(cd[36])
                            mem[_1664 + 340] = msg.sender
                else:
                    if block.timestamp < Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                        revert with 0, 17
                    if block.timestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) < MINIMUM_TO_EXIT:
                        revert with 0, 'GONNA BE COLD WITHOUT TWO DAY'S HEART'
                    if sub_91fae6c2 < 2400000000 * 10^18:
                        if block.timestamp < Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                            revert with 0, 17
                        if block.timestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) and sub_9795314b > -1 / block.timestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                            revert with 0, 17
                        if not cd[36]:
                            if (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 and 20 > -1 / (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600:
                                revert with 0, 17
                            if not totalAlphaStaked:
                                if unaccountedRewards > !(20 * (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100):
                                    revert with 0, 17
                                unaccountedRewards += 20 * (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100
                                if (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 and 80 > -1 / (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600:
                                    revert with 0, 17
                                _1245 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1245] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_1245 + 32] = Mask(80, 0, block.timestamp)
                                mem[_1245 + 64] = msg.sender
                            else:
                                if 20 * (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100 > !unaccountedRewards:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    revert with 0, 18
                                if uint256(sub_2c5124a9) > !((20 * (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked):
                                    revert with 0, 17
                                uint256(sub_2c5124a9) += (20 * (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                unaccountedRewards = 0
                                if (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 and 80 > -1 / (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600:
                                    revert with 0, 17
                                _1371 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1371] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_1371 + 32] = Mask(80, 0, block.timestamp)
                                mem[_1371 + 64] = msg.sender
                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 3
                            uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[4] + 36)])
                            Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                            address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96) = msg.sender
                            mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 32] = 80 * (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100
                            mem[mem[64] + 64] = bool(cd[36])
                            mem[mem[64] + 96] = msg.sender
                            emit 0x64e9ba1a: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100, bool(cd[36]), msg.sender
                            if s > !(80 * (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (80 * (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100)
                            continue 
                        mem[0] = msg.sender
                        mem[32] = 6
                        t = 0
                        while t < uint256(stor6[address(msg.sender)].field_0):
                            mem[0] = sha3(address(msg.sender), 6)
                            if uint256(stor6[address(msg.sender)][t].field_0) != uint16(cd[((32 * idx) + cd[4] + 36)]):
                                if t == -1:
                                    revert with 0, 17
                                t = t + 1
                                continue 
                            if uint256(stor6[address(msg.sender)].field_0) < 1:
                                revert with 0, 17
                            if uint256(stor6[address(msg.sender)].field_0) - 1 >= uint256(stor6[address(msg.sender)].field_0):
                                revert with 0, 50
                            if t >= uint256(stor6[address(msg.sender)].field_0):
                                revert with 0, 50
                            uint256(stor6[address(msg.sender)][t].field_0) = uint256(stor6[address(msg.sender)][uint256(stor6[address(msg.sender)].field_0)].field_0)
                            if not uint256(stor6[address(msg.sender)].field_0):
                                revert with 0, 49
                            mem[0] = sha3(address(msg.sender), 6)
                            uint256(stor6[address(msg.sender)][uint256(stor6[address(msg.sender)].field_0)].field_0) = 0
                            uint256(stor6[address(msg.sender)].field_0)--
                            if block.number < 1:
                                revert with 0, 17
                            _1793 = mem[64]
                            mem[mem[64] + 32] = tx.origin
                            mem[mem[64] + 52] = block.hash(block.number - 1)
                            mem[mem[64] + 84] = block.timestamp
                            mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 148] = sub_3308e6c1
                            mem[mem[64] + 180] = totalAlphaStaked
                            mem[mem[64] + 212] = lastClaimTimestamp
                            _1841 = mem[64]
                            mem[mem[64]] = 212
                            mem[64] = mem[64] + 244
                            if bool(sha3(mem[_1841 + 32 len mem[_1841]])) != 1:
                                require ext_code.size(stor1)
                                call stor1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                if sub_3308e6c1 < 1:
                                    revert with 0, 17
                                sub_3308e6c1--
                                mem[_1793 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_1793 + 276] = (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600
                                mem[_1793 + 308] = bool(cd[36])
                                mem[_1793 + 340] = msg.sender
                                emit 0x64e9ba1a: cd[((32 * idx) + cd[4] + 36)] << 240, (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600, bool(cd[36]), msg.sender
                                if s > !((block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600):
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + ((block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600)
                                continue 
                            if not totalAlphaStaked:
                                if unaccountedRewards > !((block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600):
                                    revert with 0, 17
                                unaccountedRewards += (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600
                            else:
                                if (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 > !unaccountedRewards:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    revert with 0, 18
                                if uint256(sub_2c5124a9) > !(((block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                    revert with 0, 17
                                uint256(sub_2c5124a9) += ((block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                unaccountedRewards = 0
                            require ext_code.size(stor1)
                            call stor1.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 3
                            uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                            if sub_3308e6c1 < 1:
                                revert with 0, 17
                            sub_3308e6c1--
                            mem[_1793 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[_1793 + 276] = 0
                            mem[_1793 + 308] = bool(cd[36])
                            mem[_1793 + 340] = msg.sender
                            emit 0x64e9ba1a: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36]), msg.sender
                            if s > -1:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                        if block.number < 1:
                            revert with 0, 17
                        _1669 = mem[64]
                        mem[mem[64] + 32] = tx.origin
                        mem[mem[64] + 52] = block.hash(block.number - 1)
                        mem[mem[64] + 84] = block.timestamp
                        mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] + 148] = sub_3308e6c1
                        mem[mem[64] + 180] = totalAlphaStaked
                        mem[mem[64] + 212] = lastClaimTimestamp
                        _1728 = mem[64]
                        mem[mem[64]] = 212
                        mem[64] = mem[64] + 244
                        if bool(sha3(mem[_1728 + 32 len mem[_1728]])) != 1:
                            require ext_code.size(stor1)
                            call stor1.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 3
                            uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                            if sub_3308e6c1 < 1:
                                revert with 0, 17
                            sub_3308e6c1--
                            mem[_1669 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[_1669 + 276] = (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600
                            mem[_1669 + 308] = bool(cd[36])
                            mem[_1669 + 340] = msg.sender
                            emit 0x64e9ba1a: cd[((32 * idx) + cd[4] + 36)] << 240, (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600, bool(cd[36]), msg.sender
                            if s > !((block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + ((block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600)
                            continue 
                        if not totalAlphaStaked:
                            if unaccountedRewards > !((block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600):
                                revert with 0, 17
                            unaccountedRewards += (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600
                        else:
                            if (block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 > !unaccountedRewards:
                                revert with 0, 17
                            if not totalAlphaStaked:
                                revert with 0, 18
                            if uint256(sub_2c5124a9) > !(((block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                revert with 0, 17
                            uint256(sub_2c5124a9) += ((block.timestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                            unaccountedRewards = 0
                        require ext_code.size(stor1)
                        call stor1.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                        mem[32] = 3
                        uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                        if sub_3308e6c1 < 1:
                            revert with 0, 17
                        sub_3308e6c1--
                        mem[_1669 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                        mem[_1669 + 276] = 0
                        mem[_1669 + 308] = bool(cd[36])
                        mem[_1669 + 340] = msg.sender
                    else:
                        if Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) > lastClaimTimestamp:
                            if not cd[36]:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > -1:
                                        revert with 0, 17
                                    _1079 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1079] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_1079 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1079 + 64] = msg.sender
                                else:
                                    if 0 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_2c5124a9) > !(unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_2c5124a9) += unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    _1164 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1164] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_1164 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1164 + 64] = msg.sender
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[4] + 36)])
                                Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 64] = bool(cd[36])
                                mem[mem[64] + 96] = msg.sender
                            else:
                                mem[0] = msg.sender
                                mem[32] = 6
                                t = 0
                                while t < uint256(stor6[address(msg.sender)].field_0):
                                    mem[0] = sha3(address(msg.sender), 6)
                                    if uint256(stor6[address(msg.sender)][t].field_0) != uint16(cd[((32 * idx) + cd[4] + 36)]):
                                        if t == -1:
                                            revert with 0, 17
                                        t = t + 1
                                        continue 
                                    if uint256(stor6[address(msg.sender)].field_0) < 1:
                                        revert with 0, 17
                                    if uint256(stor6[address(msg.sender)].field_0) - 1 >= uint256(stor6[address(msg.sender)].field_0):
                                        revert with 0, 50
                                    if t >= uint256(stor6[address(msg.sender)].field_0):
                                        revert with 0, 50
                                    uint256(stor6[address(msg.sender)][t].field_0) = uint256(stor6[address(msg.sender)][uint256(stor6[address(msg.sender)].field_0)].field_0)
                                    if not uint256(stor6[address(msg.sender)].field_0):
                                        revert with 0, 49
                                    mem[0] = sha3(address(msg.sender), 6)
                                    uint256(stor6[address(msg.sender)][uint256(stor6[address(msg.sender)].field_0)].field_0) = 0
                                    uint256(stor6[address(msg.sender)].field_0)--
                                    if block.number < 1:
                                        revert with 0, 17
                                    _1792 = mem[64]
                                    mem[mem[64] + 32] = tx.origin
                                    mem[mem[64] + 52] = block.hash(block.number - 1)
                                    mem[mem[64] + 84] = block.timestamp
                                    mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[mem[64] + 148] = sub_3308e6c1
                                    mem[mem[64] + 180] = totalAlphaStaked
                                    mem[mem[64] + 212] = lastClaimTimestamp
                                    _1838 = mem[64]
                                    mem[mem[64]] = 212
                                    mem[64] = mem[64] + 244
                                    if 1 == bool(sha3(mem[_1838 + 32 len mem[_1838]])):
                                        if not totalAlphaStaked:
                                            if unaccountedRewards > -1:
                                                revert with 0, 17
                                        else:
                                            if 0 > !unaccountedRewards:
                                                revert with 0, 17
                                            if not totalAlphaStaked:
                                                revert with 0, 18
                                            if uint256(sub_2c5124a9) > !(unaccountedRewards / totalAlphaStaked):
                                                revert with 0, 17
                                            uint256(sub_2c5124a9) += unaccountedRewards / totalAlphaStaked
                                            unaccountedRewards = 0
                                    require ext_code.size(stor1)
                                    call stor1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[32] = 3
                                    uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                    if sub_3308e6c1 < 1:
                                        revert with 0, 17
                                    sub_3308e6c1--
                                    mem[_1792 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_1792 + 276] = 0
                                    mem[_1792 + 308] = bool(cd[36])
                                    mem[_1792 + 340] = msg.sender
                                    emit 0x64e9ba1a: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36]), msg.sender
                                    if s > -1:
                                        revert with 0, 17
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s
                                    continue 
                                if block.number < 1:
                                    revert with 0, 17
                                _1668 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 148] = sub_3308e6c1
                                mem[mem[64] + 180] = totalAlphaStaked
                                mem[mem[64] + 212] = lastClaimTimestamp
                                _1724 = mem[64]
                                mem[mem[64]] = 212
                                mem[64] = mem[64] + 244
                                if 1 == bool(sha3(mem[_1724 + 32 len mem[_1724]])):
                                    if not totalAlphaStaked:
                                        if unaccountedRewards > -1:
                                            revert with 0, 17
                                    else:
                                        if 0 > !unaccountedRewards:
                                            revert with 0, 17
                                        if not totalAlphaStaked:
                                            revert with 0, 18
                                        if uint256(sub_2c5124a9) > !(unaccountedRewards / totalAlphaStaked):
                                            revert with 0, 17
                                        uint256(sub_2c5124a9) += unaccountedRewards / totalAlphaStaked
                                        unaccountedRewards = 0
                                require ext_code.size(stor1)
                                call stor1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                if sub_3308e6c1 < 1:
                                    revert with 0, 17
                                sub_3308e6c1--
                                mem[_1668 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_1668 + 276] = 0
                                mem[_1668 + 308] = bool(cd[36])
                                mem[_1668 + 340] = msg.sender
                        else:
                            if lastClaimTimestamp < Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                                revert with 0, 17
                            if lastClaimTimestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) and sub_9795314b > -1 / lastClaimTimestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                                revert with 0, 17
                            if not cd[36]:
                                if (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 and 20 > -1 / (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    if unaccountedRewards > !(20 * (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100):
                                        revert with 0, 17
                                    unaccountedRewards += 20 * (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100
                                    if (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600:
                                        revert with 0, 17
                                    _1262 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1262] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_1262 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1262 + 64] = msg.sender
                                else:
                                    if 20 * (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_2c5124a9) > !((20 * (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_2c5124a9) += (20 * (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    if (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600:
                                        revert with 0, 17
                                    _1386 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1386] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_1386 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1386 + 64] = msg.sender
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[4] + 36)])
                                Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 32] = 80 * (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100
                                mem[mem[64] + 64] = bool(cd[36])
                                mem[mem[64] + 96] = msg.sender
                                emit 0x64e9ba1a: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100, bool(cd[36]), msg.sender
                                if s > !(80 * (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100):
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + (80 * (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 / 100)
                                continue 
                            mem[0] = msg.sender
                            mem[32] = 6
                            t = 0
                            while t < uint256(stor6[address(msg.sender)].field_0):
                                mem[0] = sha3(address(msg.sender), 6)
                                if uint256(stor6[address(msg.sender)][t].field_0) != uint16(cd[((32 * idx) + cd[4] + 36)]):
                                    if t == -1:
                                        revert with 0, 17
                                    t = t + 1
                                    continue 
                                if uint256(stor6[address(msg.sender)].field_0) < 1:
                                    revert with 0, 17
                                if uint256(stor6[address(msg.sender)].field_0) - 1 >= uint256(stor6[address(msg.sender)].field_0):
                                    revert with 0, 50
                                if t >= uint256(stor6[address(msg.sender)].field_0):
                                    revert with 0, 50
                                uint256(stor6[address(msg.sender)][t].field_0) = uint256(stor6[address(msg.sender)][uint256(stor6[address(msg.sender)].field_0)].field_0)
                                if not uint256(stor6[address(msg.sender)].field_0):
                                    revert with 0, 49
                                mem[0] = sha3(address(msg.sender), 6)
                                uint256(stor6[address(msg.sender)][uint256(stor6[address(msg.sender)].field_0)].field_0) = 0
                                uint256(stor6[address(msg.sender)].field_0)--
                                if block.number < 1:
                                    revert with 0, 17
                                _1791 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 148] = sub_3308e6c1
                                mem[mem[64] + 180] = totalAlphaStaked
                                mem[mem[64] + 212] = lastClaimTimestamp
                                _1835 = mem[64]
                                mem[mem[64]] = 212
                                mem[64] = mem[64] + 244
                                if bool(sha3(mem[_1835 + 32 len mem[_1835]])) != 1:
                                    require ext_code.size(stor1)
                                    call stor1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[32] = 3
                                    uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                    if sub_3308e6c1 < 1:
                                        revert with 0, 17
                                    sub_3308e6c1--
                                    mem[_1791 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_1791 + 276] = (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600
                                    mem[_1791 + 308] = bool(cd[36])
                                    mem[_1791 + 340] = msg.sender
                                    emit 0x64e9ba1a: cd[((32 * idx) + cd[4] + 36)] << 240, (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600, bool(cd[36]), msg.sender
                                    if s > !((lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600):
                                        revert with 0, 17
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + ((lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600)
                                    continue 
                                if not totalAlphaStaked:
                                    if unaccountedRewards > !((lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600):
                                        revert with 0, 17
                                    unaccountedRewards += (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600
                                else:
                                    if (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_2c5124a9) > !(((lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_2c5124a9) += ((lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                require ext_code.size(stor1)
                                call stor1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                if sub_3308e6c1 < 1:
                                    revert with 0, 17
                                sub_3308e6c1--
                                mem[_1791 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_1791 + 276] = 0
                                mem[_1791 + 308] = bool(cd[36])
                                mem[_1791 + 340] = msg.sender
                                emit 0x64e9ba1a: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36]), msg.sender
                                if s > -1:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                            if block.number < 1:
                                revert with 0, 17
                            _1667 = mem[64]
                            mem[mem[64] + 32] = tx.origin
                            mem[mem[64] + 52] = block.hash(block.number - 1)
                            mem[mem[64] + 84] = block.timestamp
                            mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 148] = sub_3308e6c1
                            mem[mem[64] + 180] = totalAlphaStaked
                            mem[mem[64] + 212] = lastClaimTimestamp
                            _1720 = mem[64]
                            mem[mem[64]] = 212
                            mem[64] = mem[64] + 244
                            if bool(sha3(mem[_1720 + 32 len mem[_1720]])) != 1:
                                require ext_code.size(stor1)
                                call stor1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                if sub_3308e6c1 < 1:
                                    revert with 0, 17
                                sub_3308e6c1--
                                mem[_1667 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_1667 + 276] = (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600
                                mem[_1667 + 308] = bool(cd[36])
                                mem[_1667 + 340] = msg.sender
                                emit 0x64e9ba1a: cd[((32 * idx) + cd[4] + 36)] << 240, (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600, bool(cd[36]), msg.sender
                                if s > !((lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600):
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + ((lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600)
                                continue 
                            if not totalAlphaStaked:
                                if unaccountedRewards > !((lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600):
                                    revert with 0, 17
                                unaccountedRewards += (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600
                            else:
                                if (lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600 > !unaccountedRewards:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    revert with 0, 18
                                if uint256(sub_2c5124a9) > !(((lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                    revert with 0, 17
                                uint256(sub_2c5124a9) += ((lastClaimTimestamp * sub_9795314b) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_9795314b) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                unaccountedRewards = 0
                            require ext_code.size(stor1)
                            call stor1.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 3
                            uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                            if sub_3308e6c1 < 1:
                                revert with 0, 17
                            sub_3308e6c1--
                            mem[_1667 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[_1667 + 276] = 0
                            mem[_1667 + 308] = bool(cd[36])
                            mem[_1667 + 340] = msg.sender
                emit 0x64e9ba1a: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36]), msg.sender
                if s > -1:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(stor1)
            staticcall stor1.0x6352211e with:
                    gas gas_remaining wei
                   args (cd[((32 * idx) + cd[4] + 36)] << 240)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _876 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_876] == mem[_876 + 12 len 20]
            if mem[_876 + 12 len 20] != this.address:
                revert with 0, 'AINT A PART OF THE PACK'
            require ext_code.size(stor1)
            staticcall stor1.getTokenTraits(uint256 arg1) with:
                    gas gas_remaining wei
                   args (cd[((32 * idx) + cd[4] + 36)] << 240)
            mem[mem[64] len 832] = ext_call.return_data[0 len 832]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _912 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 832
            _917 = mem[64]
            if mem[64] + 832 < mem[64] or mem[64] + 832 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 832
            require mem[_912] == bool(mem[_912])
            mem[_917] = mem[_912]
            require mem[_912 + 32] == mem[_912 + 63 len 1]
            mem[_917 + 32] = mem[_912 + 32]
            require mem[_912 + 64] == mem[_912 + 95 len 1]
            mem[_917 + 64] = mem[_912 + 64]
            require mem[_912 + 96] == mem[_912 + 127 len 1]
            mem[_917 + 96] = mem[_912 + 96]
            require mem[_912 + 128] == mem[_912 + 159 len 1]
            mem[_917 + 128] = mem[_912 + 128]
            require mem[_912 + 160] == mem[_912 + 191 len 1]
            mem[_917 + 160] = mem[_912 + 160]
            require mem[_912 + 192] == mem[_912 + 223 len 1]
            mem[_917 + 192] = mem[_912 + 192]
            require mem[_912 + 224] == mem[_912 + 255 len 1]
            mem[_917 + 224] = mem[_912 + 224]
            require mem[_912 + 256] == mem[_912 + 287 len 1]
            mem[_917 + 256] = mem[_912 + 256]
            require mem[_912 + 288] == mem[_912 + 319 len 1]
            mem[_917 + 288] = mem[_912 + 288]
            require mem[_912 + 320] == mem[_912 + 351 len 1]
            mem[_917 + 320] = mem[_912 + 320]
            require mem[_912 + 352] == mem[_912 + 383 len 1]
            mem[_917 + 352] = mem[_912 + 352]
            require mem[_912 + 384] == mem[_912 + 415 len 1]
            mem[_917 + 384] = mem[_912 + 384]
            require mem[_912 + 416] == mem[_912 + 447 len 1]
            mem[_917 + 416] = mem[_912 + 416]
            require mem[_912 + 448] == mem[_912 + 479 len 1]
            mem[_917 + 448] = mem[_912 + 448]
            require mem[_912 + 480] == mem[_912 + 511 len 1]
            mem[_917 + 480] = mem[_912 + 480]
            require mem[_912 + 512] == mem[_912 + 543 len 1]
            mem[_917 + 512] = mem[_912 + 512]
            require mem[_912 + 544] == mem[_912 + 575 len 1]
            mem[_917 + 544] = mem[_912 + 544]
            require mem[_912 + 576] == mem[_912 + 607 len 1]
            mem[_917 + 576] = mem[_912 + 576]
            require mem[_912 + 608] == mem[_912 + 639 len 1]
            mem[_917 + 608] = mem[_912 + 608]
            require mem[_912 + 640] == mem[_912 + 671 len 1]
            mem[_917 + 640] = mem[_912 + 640]
            require mem[_912 + 672] == mem[_912 + 703 len 1]
            mem[_917 + 672] = mem[_912 + 672]
            require mem[_912 + 704] == mem[_912 + 735 len 1]
            mem[_917 + 704] = mem[_912 + 704]
            require mem[_912 + 736] == mem[_912 + 767 len 1]
            mem[_917 + 736] = mem[_912 + 736]
            require mem[_912 + 768] == mem[_912 + 799 len 1]
            mem[_917 + 768] = mem[_912 + 768]
            require mem[_912 + 800] == mem[_912 + 831 len 1]
            mem[_917 + 800] = mem[_912 + 800]
            _1677 = mem[_917 + 800]
            if 8 < mem[_917 + 831 len 1]:
                revert with 0, 17
            mem[0] = uint8(-mem[_917 + 831 len 1] + 8)
            _1746 = sha3(mem[0], 4)
            mem[32] = 5
            if packIndices[cd[((32 * idx) + cd[4] + 36)] << 240] >= uint256(pack[mem[0]].field_0):
                revert with 0, 50
            mem[0] = sha3(mem[0], 4)
            _1757 = mem[64]
            mem[64] = mem[64] + 96
            mem[_1757] = uint16(stor[stor5[cd[((32 * idx) + cd[4] + 36)] << 240] + sha3(_1746)].field_0)
            mem[_1757 + 32] = Mask(80, 0, stor[stor5[cd[((32 * idx) + cd[4] + 36)] << 240] + sha3(_1746)].field_16)
            mem[_1757 + 64] = address(stor[stor5[cd[((32 * idx) + cd[4] + 36)] << 240] + sha3(_1746)].field_96)
            if address(stor[stor5[cd[((32 * idx) + cd[4] + 36)] << 240] + sha3(_1746)].field_96) != msg.sender:
                revert with 0, 'SWIPER, NO SWIPING'
            if uint256(sub_2c5124a9) < Mask(80, 0, stor[stor5[cd[((32 * idx) + cd[4] + 36)] << 240] + sha3(_1746)].field_16):
                revert with 0, 17
            if uint8(-uint8(_1677) + 8) and uint256(sub_2c5124a9) - Mask(80, 0, stor[stor5[cd[((32 * idx) + cd[4] + 36)] << 240] + sha3(_1746)].field_16) > -1 / uint8(-uint8(_1677) + 8):
                revert with 0, 17
            if not cd[36]:
                _1881 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1881] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[_1881 + 32] = Mask(80, 0, stor9)
                mem[_1881 + 64] = msg.sender
                mem[32] = 5
                if packIndices[cd[((32 * idx) + cd[4] + 36)] << 240] >= uint256(pack[-uint8(_1677) + 8 << 248].field_0):
                    revert with 0, 50
                mem[0] = sha3(-uint8(_1677) + 8 << 248, 4)
                Mask(80, 0, pack[-uint8(_1677) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_0) = Mask(80, 0, stor9)
                uint16(pack[-uint8(_1677) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_0) = uint16(cd[((32 * idx) + cd[4] + 36)])
                Mask(80, 0, pack[-uint8(_1677) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16) = 0
                address(pack[-uint8(_1677) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_96) = msg.sender
            else:
                t = 0
                while t < uint256(stor6[address(msg.sender)].field_0):
                    mem[0] = sha3(address(msg.sender), 6)
                    if uint256(stor6[address(msg.sender)][t].field_0) != uint16(cd[((32 * idx) + cd[4] + 36)]):
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        continue 
                    if uint256(stor6[address(msg.sender)].field_0) < 1:
                        revert with 0, 17
                    if uint256(stor6[address(msg.sender)].field_0) - 1 >= uint256(stor6[address(msg.sender)].field_0):
                        revert with 0, 50
                    if t >= uint256(stor6[address(msg.sender)].field_0):
                        revert with 0, 50
                    uint256(stor6[address(msg.sender)][t].field_0) = uint256(stor6[address(msg.sender)][uint256(stor6[address(msg.sender)].field_0)].field_0)
                    if not uint256(stor6[address(msg.sender)].field_0):
                        revert with 0, 49
                    uint256(stor6[address(msg.sender)][uint256(stor6[address(msg.sender)].field_0)].field_0) = 0
                    uint256(stor6[address(msg.sender)].field_0)--
                    if totalAlphaStaked < uint8(-uint8(_1677) + 8):
                        revert with 0, 17
                    totalAlphaStaked -= uint8(-uint8(_1677) + 8)
                    require ext_code.size(stor1)
                    call stor1.0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[32] = 4
                    if uint256(pack[-uint8(_1677) + 8 << 248].field_0) < 1:
                        revert with 0, 17
                    if uint256(pack[-uint8(_1677) + 8 << 248].field_0) - 1 >= uint256(pack[-uint8(_1677) + 8 << 248].field_0):
                        revert with 0, 50
                    mem[0] = sha3(-uint8(_1677) + 8 << 248, 4)
                    _2327 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_2327] = uint16(pack[-uint8(_1677) + 8 << 248][uint256(pack[-uint8(_1677) + 8 << 248].field_0)].field_0)
                    mem[_2327 + 32] = Mask(80, 0, pack[-uint8(_1677) + 8 << 248][uint256(pack[-uint8(_1677) + 8 << 248].field_0)].field_0)
                    mem[_2327 + 64] = address(pack[-uint8(_1677) + 8 << 248][uint256(pack[-uint8(_1677) + 8 << 248].field_0)].field_0)
                    if packIndices[cd[((32 * idx) + cd[4] + 36)] << 240] >= uint256(pack[-uint8(_1677) + 8 << 248].field_0):
                        revert with 0, 50
                    uint16(pack[-uint8(_1677) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_0) = uint16(pack[-uint8(_1677) + 8 << 248][uint256(pack[-uint8(_1677) + 8 << 248].field_0)].field_0)
                    Mask(80, 0, pack[-uint8(_1677) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16) = Mask(80, 0, pack[-uint8(_1677) + 8 << 248][uint256(pack[-uint8(_1677) + 8 << 248].field_0)].field_0)
                    address(pack[-uint8(_1677) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_96) = address(pack[-uint8(_1677) + 8 << 248][uint256(pack[-uint8(_1677) + 8 << 248].field_0)].field_0)
                    packIndices[uint16(stor4[-uint8(_1677) + 8 << 248][uint256(stor4[-uint8(_1677) + 8 << 248].field_0)].field_0)] = packIndices[cd[((32 * idx) + cd[4] + 36)] << 240]
                    if not uint256(pack[-uint8(_1677) + 8 << 248].field_0):
                        revert with 0, 49
                    uint256(pack[-uint8(_1677) + 8 << 248][uint256(pack[-uint8(_1677) + 8 << 248].field_0)].field_0) = 0
                    uint256(pack[-uint8(_1677) + 8 << 248].field_0)--
                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = 5
                    packIndices[cd[((32 * idx) + cd[4] + 36)] << 240] = 0
                    if sub_d5958b35 < 1:
                        revert with 0, 17
                    sub_d5958b35--
                    mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64] + 32] = (uint256(sub_2c5124a9) * uint8(-uint8(_1677) + 8)) - (Mask(80, 0, stor[stor5[cd[((32 * idx) + cd[4] + 36)] << 240] + sha3(_1746)].field_16) * uint8(-uint8(_1677) + 8))
                    mem[mem[64] + 64] = bool(cd[36])
                    mem[mem[64] + 96] = msg.sender
                    emit 0x8e310b66: cd[((32 * idx) + cd[4] + 36)] << 240, (uint256(sub_2c5124a9) * uint8(-uint8(_1677) + 8)) - (Mask(80, 0, stor[stor5[cd[((32 * idx) + cd[4] + 36)] << 240] + sha3(_1746)].field_16) * uint8(-uint8(_1677) + 8)), bool(cd[36]), msg.sender
                    if s > !((uint256(sub_2c5124a9) * uint8(-uint8(_1677) + 8)) - (Mask(80, 0, stor[stor5[cd[((32 * idx) + cd[4] + 36)] << 240] + sha3(_1746)].field_16) * uint8(-uint8(_1677) + 8))):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (uint256(sub_2c5124a9) * uint8(-uint8(_1677) + 8)) - (Mask(80, 0, stor[stor5[cd[((32 * idx) + cd[4] + 36)] << 240] + sha3(_1746)].field_16) * uint8(-uint8(_1677) + 8))
                    continue 
                if totalAlphaStaked < uint8(-uint8(_1677) + 8):
                    revert with 0, 17
                totalAlphaStaked -= uint8(-uint8(_1677) + 8)
                require ext_code.size(stor1)
                call stor1.0x23b872dd with:
                     gas gas_remaining wei
                    args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[32] = 4
                if uint256(pack[-uint8(_1677) + 8 << 248].field_0) < 1:
                    revert with 0, 17
                if uint256(pack[-uint8(_1677) + 8 << 248].field_0) - 1 >= uint256(pack[-uint8(_1677) + 8 << 248].field_0):
                    revert with 0, 50
                mem[0] = sha3(-uint8(_1677) + 8 << 248, 4)
                _2291 = mem[64]
                mem[64] = mem[64] + 96
                mem[_2291] = uint16(pack[-uint8(_1677) + 8 << 248][uint256(pack[-uint8(_1677) + 8 << 248].field_0)].field_0)
                mem[_2291 + 32] = Mask(80, 0, pack[-uint8(_1677) + 8 << 248][uint256(pack[-uint8(_1677) + 8 << 248].field_0)].field_0)
                mem[_2291 + 64] = address(pack[-uint8(_1677) + 8 << 248][uint256(pack[-uint8(_1677) + 8 << 248].field_0)].field_0)
                if packIndices[cd[((32 * idx) + cd[4] + 36)] << 240] >= uint256(pack[-uint8(_1677) + 8 << 248].field_0):
                    revert with 0, 50
                uint16(pack[-uint8(_1677) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_0) = uint16(pack[-uint8(_1677) + 8 << 248][uint256(pack[-uint8(_1677) + 8 << 248].field_0)].field_0)
                Mask(80, 0, pack[-uint8(_1677) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16) = Mask(80, 0, pack[-uint8(_1677) + 8 << 248][uint256(pack[-uint8(_1677) + 8 << 248].field_0)].field_0)
                address(pack[-uint8(_1677) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_96) = address(pack[-uint8(_1677) + 8 << 248][uint256(pack[-uint8(_1677) + 8 << 248].field_0)].field_0)
                packIndices[uint16(stor4[-uint8(_1677) + 8 << 248][uint256(stor4[-uint8(_1677) + 8 << 248].field_0)].field_0)] = packIndices[cd[((32 * idx) + cd[4] + 36)] << 240]
                if not uint256(pack[-uint8(_1677) + 8 << 248].field_0):
                    revert with 0, 49
                uint256(pack[-uint8(_1677) + 8 << 248][uint256(pack[-uint8(_1677) + 8 << 248].field_0)].field_0) = 0
                uint256(pack[-uint8(_1677) + 8 << 248].field_0)--
                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 5
                packIndices[cd[((32 * idx) + cd[4] + 36)] << 240] = 0
                if sub_d5958b35 < 1:
                    revert with 0, 17
                sub_d5958b35--
            mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 32] = (uint256(sub_2c5124a9) * uint8(-uint8(_1677) + 8)) - (Mask(80, 0, stor[stor5[cd[((32 * idx) + cd[4] + 36)] << 240] + sha3(_1746)].field_16) * uint8(-uint8(_1677) + 8))
            mem[mem[64] + 64] = bool(cd[36])
            mem[mem[64] + 96] = msg.sender
            emit 0x8e310b66: cd[((32 * idx) + cd[4] + 36)] << 240, (uint256(sub_2c5124a9) * uint8(-uint8(_1677) + 8)) - (Mask(80, 0, stor[stor5[cd[((32 * idx) + cd[4] + 36)] << 240] + sha3(_1746)].field_16) * uint8(-uint8(_1677) + 8)), bool(cd[36]), msg.sender
            if s > !((uint256(sub_2c5124a9) * uint8(-uint8(_1677) + 8)) - (Mask(80, 0, stor[stor5[cd[((32 * idx) + cd[4] + 36)] << 240] + sha3(_1746)].field_16) * uint8(-uint8(_1677) + 8))):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (uint256(sub_2c5124a9) * uint8(-uint8(_1677) + 8)) - (Mask(80, 0, stor[stor5[cd[((32 * idx) + cd[4] + 36)] << 240] + sha3(_1746)].field_16) * uint8(-uint8(_1677) + 8))
            continue 
        if s:
            require ext_code.size(stor2)
            call stor2.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, s
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    stor16 = 0
}



}
