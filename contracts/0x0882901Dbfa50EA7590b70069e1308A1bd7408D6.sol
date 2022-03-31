contract main {




// =====================  Runtime code  =====================


address masterAddress;
uint256 stor0;
array of struct sub_71a2b7f7;
array of uint256 stor2;
mapping of uint8 stor3;
mapping of address latest;
mapping of uint8 stor5;
mapping of uint8 stor6;
uint8 stor7; offset 160
uint8 stor7; offset 168
address dAppTokenAddress;
address owner;
uint256 stor8;
uint256 pauseTime;
uint8 stor10;
address stor1D54;
address stor48B5;
address stor50DB;
address stor65E5;
address stor81A1;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944778999;
array of struct stor80084422859880547211683076133703299733277748156566366325829078699459944779000;
address storE7F2;
uint8 storFF0B;

function getLatestAddress(bytes2 arg1) payable {
    require calldata.size - 4 >= 32
    return latest[Mask(16, 240, arg1)]
}

function pauseTime() payable {
    return pauseTime
}

function contractsActive(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function dAppLocker() payable {
    return latest[0x5443000000000000000000000000000000000000000000000000000000000000]
}

function sub_44d479e7(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor5[Mask(16, 240, arg1)])
}

function sub_71a2b7f7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_71a2b7f7.length
    return bool(sub_71a2b7f7[arg1].field_0), sub_71a2b7f7[arg1].field_256, Mask(32, 224, sub_71a2b7f7[arg1].field_512)
}

function owner() payable {
    return address(owner)
}

function isInternal(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[address(arg1)])
}

function tokenAddress() payable {
    return dAppTokenAddress
}

function masterInitialized() payable {
    return bool(uint8(stor7.field_168))
}

function masterAddress() payable {
    return address(masterAddress)
}

function dAppToken() payable {
    return dAppTokenAddress
}

function isUpgradable(bytes2 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor6[Mask(16, 240, arg1)])
}

function getEmergencyPausedLength() payable {
    return sub_71a2b7f7.length
}

function _fallback() payable {
    revert
}

function isOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    return (address(owner) == arg1)
}

function updatePauseTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor3[address(msg.sender)]:
        revert with 0, 'Not internal call.'
    pauseTime = arg1
}

function isPause() payable {
    if not sub_71a2b7f7.length:
        return bool(sub_71a2b7f7.length)
    require sub_71a2b7f7.length - 1 < sub_71a2b7f7.length
    return bool(sub_71a2b7f7[sub_71a2b7f7.length].field_0)
}

function getLastEmergencyPause() payable {
    if not sub_71a2b7f7.length:
        return 0
    require 1 <= sub_71a2b7f7.length
    require sub_71a2b7f7.length - 1 < sub_71a2b7f7.length
    return bool(sub_71a2b7f7[sub_71a2b7f7.length].field_0), 
           sub_71a2b7f7[sub_71a2b7f7.length].field_0,
           Mask(32, 224, sub_71a2b7f7[sub_71a2b7f7.length].field_0)
}

function isAuthorizedToGovern(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(masterAddress))
    staticcall address(masterAddress).getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x4756000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[12 len 20] == arg1)
}

function checkIsAuthToGoverned(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(masterAddress))
    staticcall address(masterAddress).getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x4756000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[12 len 20] == arg1)
}

function isMember(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(latest[0x4d52000000000000000000000000000000000000000000000000000000000000])
    staticcall latest[0x4d52000000000000000000000000000000000000000000000000000000000000].0x505ef22f with:
            gas gas_remaining wei
           args address(arg1), 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_27f688ff(?) payable {
    require calldata.size - 4 >= 64
    idx = arg1
    while idx < arg2:
        require idx < stor2.length
        stor3[stor4[stor2[0.0625 / idx].field_0 / 256^(2 * idx % 16) << 240]] = 1
        mem[0] = stor2[0.0625 / idx].field_0 / 256^(2 * idx % 16) << 240
        mem[32] = 4
        mem[96] = 0xea9c98400000000000000000000000000000000000000000000000000000000
        require ext_code.size(latest[stor2[0.0625 / idx].field_0 / 256^(2 * idx % 16) << 240])
        call latest[stor2[0.0625 / idx].field_0 / 256^(2 * idx % 16) << 240].changeDependentContractAddress() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sub_92b0a156(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(address(masterAddress))
    staticcall address(masterAddress).getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x4756000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Not authorized'
    stor3[stor4[Mask(16, 240, arg1)]] = 0
    latest[Mask(16, 240, arg1)] = arg2
    stor3[arg2] = 1
    require ext_code.size(latest[Mask(16, 240, arg1)])
    call latest[Mask(16, 240, arg1)].0xd46655f4 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_9ab16974(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(this.address)
    staticcall this.address.proxyOwner() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Sender is not proxy owner.'
    if stor10:
        revert with 0, 'Constructor already ran.'
    stor10 = 1
    dAppTokenAddress = arg1
    uint256(stor8) = msg.sender or Mask(96, 160, uint256(stor8))
    uint256(stor0) = this.address or Mask(96, 160, uint256(stor0))
    stor3[this.address] = 1
    pauseTime = 672 * 24 * 3600
    stor2.length++
    stor2[stor2.length.field_4].field_0 = stor2[stor2.length.field_4].field_0 and !(65535 * 256^(2 * stor2.length % 16)) or 18262 * 256^(2 * stor2.length % 16)
    stor48B5 = arg2
    stor3[address(arg2)] = 1
    storFF0B = 1
    uint8(stor7.field_168) = 1
}

function sub_a6354613(?) payable {
    require ext_code.size(address(masterAddress))
    staticcall address(masterAddress).getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x4756000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Not authorized'
    idx = 0
    while idx < stor2.length:
        stor3[stor4[stor2[0.0625 / idx].field_0 / 256^(2 * idx % 16) << 240]] = 1
        mem[0] = stor2[0.0625 / idx].field_0 / 256^(2 * idx % 16) << 240
        mem[32] = 4
        mem[96] = 0xea9c98400000000000000000000000000000000000000000000000000000000
        require ext_code.size(latest[stor2[0.0625 / idx].field_0 / 256^(2 * idx % 16) << 240])
        call latest[stor2[0.0625 / idx].field_0 / 256^(2 * idx % 16) << 240].changeDependentContractAddress() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function addEmergencyPause(bool arg1, bytes4 arg2) payable {
    require calldata.size - 4 >= 64
    if Mask(32, 224, arg2) != 0x4142000000000000000000000000000000000000000000000000000000000000:
        if Mask(32, 224, arg2) != 0x4155540000000000000000000000000000000000000000000000000000000000:
            revert with 0, 'Invalid call.'
    if latest[0x5031000000000000000000000000000000000000000000000000000000000000] != msg.sender:
        if latest[0x4756000000000000000000000000000000000000000000000000000000000000] != msg.sender:
            revert with 0, 'Callable by P1 and GV only.'
    sub_71a2b7f7.length++
    sub_71a2b7f7[sub_71a2b7f7.length].field_0 = uint8(arg1)
    storB10E[stor1.length] = block.timestamp
    storB10E[stor1.length].field_0 = 0
    storB10E[stor1.length].field_256 = 0
    if not arg1:
        require ext_code.size(stor50DB)
        call stor50DB.0x75a0f521 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor50DB)
        call stor50DB.0x9755fafe with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function startEmergencyPause() payable {
    require ext_code.size(address(masterAddress))
    staticcall address(masterAddress).getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x4756000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Not authorized'
    if latest[0x5031000000000000000000000000000000000000000000000000000000000000] != msg.sender:
        if latest[0x4756000000000000000000000000000000000000000000000000000000000000] != msg.sender:
            revert with 0, 'Callable by P1 and GV only.'
    sub_71a2b7f7.length++
    sub_71a2b7f7[sub_71a2b7f7.length].field_0 = 1
    storB10E[stor1.length] = block.timestamp
    storB10E[stor1.length].field_0 = 0
    storB10E[stor1.length].field_256 = 0
    require ext_code.size(stor65E5)
    call stor65E5.0xd8ea6b08 with:
         gas gas_remaining wei
        args pauseTime
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor50DB)
    call stor50DB.0x38021671 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getVersionData() payable {
    if stor2.length:
        mem[128] = uint256(stor2.field_0) / 256^0 << 240
        idx = 128
        s = 0
        while (32 * stor2.length) + 96 > idx:
            mem[idx + 32] = uint256(stor2.field_0) / 256^((2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)) << 240
            idx = idx + 32
            s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
            continue 
        if stor2.length:
            mem[(32 * stor2.length) + 160 len 32 * stor2.length] = code.data[16722 len 32 * stor2.length]
    idx = 0
    while idx < stor2.length:
        mem[0] = stor2[0.0625 / idx].field_0 / 256^(2 * idx % 16) << 240
        mem[32] = 4
        require idx < stor2.length
        mem[(32 * idx) + (32 * stor2.length) + 160] = latest[stor2[0.0625 / idx].field_0 / 256^(2 * idx % 16) << 240]
        idx = idx + 1
        continue 
    mem[(64 * stor2.length) + 160] = 64
    mem[(64 * stor2.length) + 224] = stor2.length
    mem[(64 * stor2.length) + 256 len floor32(stor2.length)] = mem[128 len floor32(stor2.length)]
    mem[(64 * stor2.length) + 192] = (32 * stor2.length) + 96
    mem[(98 * stor2.length) + 256] = stor2.length
    mem[(98 * stor2.length) + 288 len floor32(stor2.length)] = mem[(32 * stor2.length) + 160 len floor32(stor2.length)]
    return memory
      from (64 * stor2.length) + 160
       len (162 * stor2.length) + 128
}

function closeClaim(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(latest[0x4344000000000000000000000000000000000000000000000000000000000000])
    staticcall latest[0x4344000000000000000000000000000000000000000000000000000000000000].0x5aef2447 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    if ext_call.return_data[96] == 12:
        require ext_code.size(latest[0x4344000000000000000000000000000000000000000000000000000000000000])
        staticcall latest[0x4344000000000000000000000000000000000000000000000000000000000000].0xee8dea63 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] + ext_call.return_data[128] >= ext_call.return_data[128]
        if ext_call.return_data[0] + ext_call.return_data[128] > block.timestamp:
            revert with 0, 'Payout retry time not reached.'
    require ext_code.size(latest[0x4352000000000000000000000000000000000000000000000000000000000000])
    call latest[0x4352000000000000000000000000000000000000000000000000000000000000].0x7f6715c9 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_47f4f885(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require ext_code.size(address(masterAddress))
    staticcall address(masterAddress).getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x4756000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Not authorized'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0, 'Array length should be equal.'
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        if not address(cd[((32 * idx) + cd[36] + 36)]):
            revert with 0, 'null address is not allowed.'
        require idx < ('cd', 4).length
        if not stor5[Mask(16, 240, cd[((32 * idx) + cd[4] + 36)])]:
            revert with 0, 'Contract should be proxy.'
        require idx < ('cd', 4).length
        mem[0] = Mask(16, 240, cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 4
        require idx < ('cd', 36).length
        mem[96] = 0x3659cfe600000000000000000000000000000000000000000000000000000000
        mem[100] = address(cd[((32 * idx) + cd[36] + 36)])
        require ext_code.size(latest[Mask(16, 240, cd[((32 * idx) + cd[4] + 36)])])
        call latest[Mask(16, 240, cd[((32 * idx) + cd[4] + 36)])].0x3659cfe6 with:
             gas gas_remaining wei
            args address(cd[((32 * idx) + cd[36] + 36)])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sub_2c721353(?) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(address(masterAddress))
    staticcall address(masterAddress).getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x4756000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Not authorized'
    if latest[Mask(16, 240, arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 35, code.data[18078 len 35], mem[199 len 29]
    if not arg2:
        revert with 0, 'NULL address is not allowed.'
    stor2.length++
    stor2[stor2.length.field_4].field_0 = stor2[stor2.length.field_4].field_0 and !(65535 * 256^(2 * stor2.length % 16))
    if arg3 == 1:
        stor6[Mask(16, 240, arg1)] = 1
        latest[Mask(16, 240, arg1)] = arg2
        stor3[address(arg2)] = 1
    else:
        if arg3 != 2:
            latest[Mask(16, 240, arg1)] = arg2
            stor3[address(arg2)] = 1
        else:
            create contract with 0 wei
                            code: code.data[16722 len 1252], address(arg2)
            if not create.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            stor5[Mask(16, 240, arg1)] = 1
            latest[Mask(16, 240, arg1)] = address(create.new_address)
            stor3[address(create.new_address)] = 1
    require ext_code.size(latest[Mask(16, 240, arg1)])
    call latest[Mask(16, 240, arg1)].0xd46655f4 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(latest[Mask(16, 240, arg1)])
    call latest[Mask(16, 240, arg1)].changeDependentContractAddress() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a97ea794(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if address(owner) != msg.sender:
        revert with 0, 32, 54, code.data[17974 len 54], mem[(32 * arg1.length) + 250 len 10]
    if uint8(stor7.field_168):
        revert with 0, 32, 54, code.data[17974 len 54], mem[(32 * arg1.length) + 250 len 10]
    if arg1.length != stor2.length:
        revert with 0, 'array length not same'
    uint8(stor7.field_168) = 1
    require 14 < arg1.length
    _10 = mem[576]
    idx = 0
    while idx < stor2.length:
        require idx < arg1.length
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'NULL address is not allowed.'
        require idx < arg1.length
        require idx < stor2.length
        latest[stor2[0.0625 / idx].field_0 / 256^(2 * idx % 16) << 240] = mem[(32 * idx) + 140 len 20]
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        stor3[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
    mem[(32 * arg1.length) + 128] = 0x5daf08ca00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + 132] = 3
    require ext_code.size(address(_10))
    staticcall address(_10).0x5daf08ca with:
            gas gas_remaining wei
           args 3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg1.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg1.length) + ceil32(return_data.size) + 128
    require return_data.size >= 64
    _42 = 3, mem[(32 * arg1.length) + 164 len 28]
    require 3, mem[(32 * arg1.length) + 164 len 28] <= 4294967296
    require 3, mem[(32 * arg1.length) + 164 len 28] + 32 <= return_data.size
    require mem[(32 * arg1.length) + 3, mem[(32 * arg1.length) + 164 len 28] + 128] <= 4294967296 and 3, mem[(32 * arg1.length) + 164 len 28] + (32 * mem[(32 * arg1.length) + 3, mem[(32 * arg1.length) + 164 len 28] + 128]) + 32 <= return_data.size
    mem[(32 * arg1.length) + ceil32(return_data.size) + 128] = mem[(32 * arg1.length) + 3, mem[(32 * arg1.length) + 164 len 28] + 128]
    mem[(32 * arg1.length) + ceil32(return_data.size) + 160 len floor32(mem[(32 * arg1.length) + _42 + 128])] = mem[(32 * arg1.length) + _42 + 160 len floor32(mem[(32 * arg1.length) + _42 + 128])]
    require 0 < mem[(32 * arg1.length) + ceil32(return_data.size) + 128]
    address(owner) = mem[(32 * arg1.length) + ceil32(return_data.size) + 172 len 20]
}

function getOwnerParameters(bytes8 arg1) payable {
    require calldata.size - 4 >= 32
    if Mask(64, 192, arg1) == 0x4d5357414c4c4554000000000000000000000000000000000000000000000000:
        require ext_code.size(latest[0x5444000000000000000000000000000000000000000000000000000000000000])
        staticcall latest[0x5444000000000000000000000000000000000000000000000000000000000000].0x6ad5b3ea with:
                gas gas_remaining wei
    else:
        if Mask(64, 192, arg1) == 'MCRNOTA' << 200:
            require ext_code.size(latest[0x5044000000000000000000000000000000000000000000000000000000000000])
            staticcall latest[0x5044000000000000000000000000000000000000000000000000000000000000].0x428dfd38 with:
                    gas gas_remaining wei
        else:
            if Mask(64, 192, arg1) == 0x4441494645454400000000000000000000000000000000000000000000000000:
                require ext_code.size(latest[0x5044000000000000000000000000000000000000000000000000000000000000])
                staticcall latest[0x5044000000000000000000000000000000000000000000000000000000000000].0xf0f9f254 with:
                        gas gas_remaining wei
            else:
                if Mask(64, 192, arg1) == 0x554e495357414444000000000000000000000000000000000000000000000000:
                    require ext_code.size(latest[0x5032000000000000000000000000000000000000000000000000000000000000])
                    staticcall latest[0x5032000000000000000000000000000000000000000000000000000000000000].0x3655ac3c with:
                            gas gas_remaining wei
                else:
                    if Mask(64, 192, arg1) == 0x4f574e4552000000000000000000000000000000000000000000000000000000:
                        return Mask(64, 192, arg1), address(owner)
                    if Mask(64, 192, arg1) == 0x51554f4155544800000000000000000000000000000000000000000000000000:
                        require ext_code.size(latest[0x5144000000000000000000000000000000000000000000000000000000000000])
                        staticcall latest[0x5144000000000000000000000000000000000000000000000000000000000000].0xe2c2a5bb with:
                                gas gas_remaining wei
                    else:
                        if Mask(64, 192, arg1) != 0x4b59434155544800000000000000000000000000000000000000000000000000:
                            return Mask(64, 192, arg1), 0
                        require ext_code.size(latest[0x5144000000000000000000000000000000000000000000000000000000000000])
                        staticcall latest[0x5144000000000000000000000000000000000000000000000000000000000000].0x84434b9f with:
                                gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return Mask(64, 192, arg1), address(ext_call.return_data[0])
}

function updateOwnerParameters(bytes8 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(address(masterAddress))
    staticcall address(masterAddress).getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x4756000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Not authorized'
    if Mask(64, 192, arg1) == 0x4d5357414c4c4554000000000000000000000000000000000000000000000000:
        require ext_code.size(latest[0x5444000000000000000000000000000000000000000000000000000000000000])
        call latest[0x5444000000000000000000000000000000000000000000000000000000000000].0xec8edf7a with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if Mask(64, 192, arg1) == 'MCRNOTA' << 200:
            require ext_code.size(latest[0x5044000000000000000000000000000000000000000000000000000000000000])
            call latest[0x5044000000000000000000000000000000000000000000000000000000000000].0x6576ffed with:
                 gas gas_remaining wei
                args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if Mask(64, 192, arg1) == 0x4441494645454400000000000000000000000000000000000000000000000000:
                require ext_code.size(latest[0x5044000000000000000000000000000000000000000000000000000000000000])
                call latest[0x5044000000000000000000000000000000000000000000000000000000000000].0xca0d4c86 with:
                     gas gas_remaining wei
                    args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if Mask(64, 192, arg1) == 0x554e495357414444000000000000000000000000000000000000000000000000:
                    require ext_code.size(latest[0x5032000000000000000000000000000000000000000000000000000000000000])
                    call latest[0x5032000000000000000000000000000000000000000000000000000000000000].0xb19ab66d with:
                         gas gas_remaining wei
                        args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if Mask(64, 192, arg1) == 0x4f574e4552000000000000000000000000000000000000000000000000000000:
                        require ext_code.size(latest[0x4d52000000000000000000000000000000000000000000000000000000000000])
                        call latest[0x4d52000000000000000000000000000000000000000000000000000000000000].0x90a79368 with:
                             gas gas_remaining wei
                            args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        address(owner) = arg2
                    else:
                        if Mask(64, 192, arg1) == 0x51554f4155544800000000000000000000000000000000000000000000000000:
                            require ext_code.size(latest[0x5144000000000000000000000000000000000000000000000000000000000000])
                            call latest[0x5144000000000000000000000000000000000000000000000000000000000000].0x1407264b with:
                                 gas gas_remaining wei
                                args arg2
                        else:
                            if Mask(64, 192, arg1) != 0x4b59434155544800000000000000000000000000000000000000000000000000:
                                revert with 0, 'Invalid param code'
                            require ext_code.size(latest[0x5144000000000000000000000000000000000000000000000000000000000000])
                            call latest[0x5144000000000000000000000000000000000000000000000000000000000000].0x549a65f4 with:
                                 gas gas_remaining wei
                                args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
}

function upgradeMultipleContracts(bytes2[] arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 164] = 0x4756000000000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(masterAddress))
    staticcall address(masterAddress).getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x4756000000000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Not authorized'
    if arg1.length != arg2.length:
        revert with 0, 'Array length should be equal.'
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        _118 = mem[(32 * idx) + (32 * arg1.length) + 160]
        if not mem[(32 * idx) + (32 * arg1.length) + 172 len 20]:
            revert with 0, 'NULL address is not allowed.'
        require idx < arg1.length
        if not stor6[Mask(16, 240, mem[(32 * idx) + 128])]:
            revert with 0, 'Contract should be upgradable.'
        require idx < arg1.length
        if 0x5154000000000000000000000000000000000000000000000000000000000000 == Mask(16, 240, mem[(32 * idx) + 128]):
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0xe262997400000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length) + (32 * arg2.length) + 164] = address(_118)
            require ext_code.size(stor1D54)
            call stor1D54.0xe2629974 with:
                 gas gas_remaining wei
                args address(_118)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require idx < arg1.length
            stor3[stor4[Mask(16, 240, mem[(32 * idx) + 128])]] = 0
            require idx < arg1.length
            latest[Mask(16, 240, mem[(32 * idx) + 128])] = address(_118)
            stor3[address(_118)] = 1
        else:
            require idx < arg1.length
            if Mask(16, 240, mem[(32 * idx) + 128]) != 0x4352000000000000000000000000000000000000000000000000000000000000:
                require idx < arg1.length
                if 0x5031000000000000000000000000000000000000000000000000000000000000 == Mask(16, 240, mem[(32 * idx) + 128]):
                    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0x66fd551d00000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg1.length) + (32 * arg2.length) + 164] = address(_118)
                    require ext_code.size(stor65E5)
                    call stor65E5.0x66fd551d with:
                         gas gas_remaining wei
                        args address(_118)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require idx < arg1.length
                    stor3[stor4[Mask(16, 240, mem[(32 * idx) + 128])]] = 0
                    require idx < arg1.length
                    latest[Mask(16, 240, mem[(32 * idx) + 128])] = address(_118)
                    stor3[address(_118)] = 1
                else:
                    require idx < arg1.length
                    if Mask(16, 240, mem[(32 * idx) + 128]) != 0x5032000000000000000000000000000000000000000000000000000000000000:
                        require idx < arg1.length
                        stor3[stor4[Mask(16, 240, mem[(32 * idx) + 128])]] = 0
                        require idx < arg1.length
                        latest[Mask(16, 240, mem[(32 * idx) + 128])] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                        stor3[address(mem[(32 * idx) + (32 * arg1.length) + 160])] = 1
                    else:
                        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0x6dce9b3d00000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = address(_118)
                        require ext_code.size(storE7F2)
                        call storE7F2.0x6dce9b3d with:
                             gas gas_remaining wei
                            args address(_118)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < arg1.length
                        stor3[stor4[Mask(16, 240, mem[(32 * idx) + 128])]] = 0
                        require idx < arg1.length
                        latest[Mask(16, 240, mem[(32 * idx) + 128])] = address(_118)
                        stor3[address(_118)] = 1
            else:
                require ext_code.size(latest[0x5443000000000000000000000000000000000000000000000000000000000000])
                call latest[0x5443000000000000000000000000000000000000000000000000000000000000].0xe43252d7 with:
                     gas gas_remaining wei
                    args mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(latest[0x5443000000000000000000000000000000000000000000000000000000000000])
                call latest[0x5443000000000000000000000000000000000000000000000000000000000000].0x8ab1d681 with:
                     gas gas_remaining wei
                    args stor81A1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0x900f01000000000000000000000000000000000000000000000000000000000
                mem[(32 * arg1.length) + (32 * arg2.length) + 164] = address(_118)
                require ext_code.size(stor81A1)
                call stor81A1.upgrade(address rg1) with:
                     gas gas_remaining wei
                    args address(_118)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx < arg1.length
                stor3[stor4[Mask(16, 240, mem[(32 * idx) + 128])]] = 0
                require idx < arg1.length
                latest[Mask(16, 240, mem[(32 * idx) + 128])] = address(_118)
                stor3[address(_118)] = 1
        require idx < arg1.length
        mem[0] = Mask(16, 240, mem[(32 * idx) + 128])
        mem[32] = 4
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0xd46655f400000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = this.address
        require ext_code.size(latest[mem[0]])
        call latest[mem[0]].0xd46655f4 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    idx = 0
    while idx < stor2.length:
        stor3[stor4[stor2[0.0625 / idx].field_0 / 256^(2 * idx % 16) << 240]] = 1
        mem[0] = stor2[0.0625 / idx].field_0 / 256^(2 * idx % 16) << 240
        mem[32] = 4
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0xea9c98400000000000000000000000000000000000000000000000000000000
        require ext_code.size(latest[stor2[0.0625 / idx].field_0 / 256^(2 * idx % 16) << 240])
        call latest[stor2[0.0625 / idx].field_0 / 256^(2 * idx % 16) << 240].changeDependentContractAddress() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function delegateCallBack(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor7.field_160):
        revert with 0, 'Reentrant call.'
    uint8(stor7.field_160) = 1
    require ext_code.size(latest[0x5044000000000000000000000000000000000000000000000000000000000000])
    staticcall latest[0x5044000000000000000000000000000000000000000000000000000000000000].0x46583d09 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(latest[0x5044000000000000000000000000000000000000000000000000000000000000])
    staticcall latest[0x5044000000000000000000000000000000000000000000000000000000000000].0x3277be96 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[24 len 8] != uint64(ext_call.return_data[0]):
        revert with 0, 'Callback already received'
    require ext_code.size(latest[0x5044000000000000000000000000000000000000000000000000000000000000])
    staticcall latest[0x5044000000000000000000000000000000000000000000000000000000000000].0xfd3e44d5 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(latest[0x5044000000000000000000000000000000000000000000000000000000000000])
    call latest[0x5044000000000000000000000000000000000000000000000000000000000000].0x61b6c00f with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not sub_71a2b7f7.length:
        require ext_code.size(latest[0x5044000000000000000000000000000000000000000000000000000000000000])
        staticcall latest[0x5044000000000000000000000000000000000000000000000000000000000000].0x371e6e12 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if Mask(32, 224, ext_call.return_data[0]) == 0x434f560000000000000000000000000000000000000000000000000000000000:
            require ext_code.size(latest[0x5154000000000000000000000000000000000000000000000000000000000000])
            call latest[0x5154000000000000000000000000000000000000000000000000000000000000].0xf4136f7f with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if Mask(32, 224, ext_call.return_data[0]) != 0x434c410000000000000000000000000000000000000000000000000000000000:
                if Mask(32, 224, ext_call.return_data[0]) == 0x4d43524600000000000000000000000000000000000000000000000000000000:
                    require ext_code.size(latest[0x5044000000000000000000000000000000000000000000000000000000000000])
                    staticcall latest[0x5044000000000000000000000000000000000000000000000000000000000000].0x702ddaab with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] + uint64(ext_call.return_data[0]) >= uint64(ext_call.return_data[0])
                    if ext_call.return_data[0] + uint64(ext_call.return_data[0]) >= block.timestamp:
                        revert with 0, 'MCR posting time not reached'
                    require ext_code.size(latest[0x4d43000000000000000000000000000000000000000000000000000000000000])
                    call latest[0x4d43000000000000000000000000000000000000000000000000000000000000].0x80f34275 with:
                         gas gas_remaining wei
                        args uint64(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if Mask(32, 224, ext_call.return_data[0]) != 0x554c540000000000000000000000000000000000000000000000000000000000:
                        if Mask(32, 224, ext_call.return_data[0]) != 0x4d43520000000000000000000000000000000000000000000000000000000000:
                            if Mask(32, 224, ext_call.return_data[0]) != 0x4941524200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'Invalid callback'
                    else:
                        require ext_code.size(latest[0x5044000000000000000000000000000000000000000000000000000000000000])
                        staticcall latest[0x5044000000000000000000000000000000000000000000000000000000000000].0x6549ff58 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] + uint64(ext_call.return_data[0]) >= uint64(ext_call.return_data[0])
                        if ext_call.return_data[0] + uint64(ext_call.return_data[0]) >= block.timestamp:
                            revert with 0, 'Liquidity trade time not reached'
                        require ext_code.size(latest[0x5032000000000000000000000000000000000000000000000000000000000000])
                        call latest[0x5032000000000000000000000000000000000000000000000000000000000000].0xf720036c with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_code.size(latest[0x4344000000000000000000000000000000000000000000000000000000000000])
                staticcall latest[0x4344000000000000000000000000000000000000000000000000000000000000].0x5aef2447 with:
                        gas gas_remaining wei
                       args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 192
                if ext_call.return_data[96] == 12:
                    require ext_code.size(latest[0x4344000000000000000000000000000000000000000000000000000000000000])
                    staticcall latest[0x4344000000000000000000000000000000000000000000000000000000000000].0xee8dea63 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] + ext_call.return_data[128] >= ext_call.return_data[128]
                    if ext_call.return_data[0] + ext_call.return_data[128] > block.timestamp:
                        revert with 0, 'Payout retry time not reached'
                require ext_code.size(latest[0x4352000000000000000000000000000000000000000000000000000000000000])
                call latest[0x4352000000000000000000000000000000000000000000000000000000000000].0x7f6715c9 with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    else:
        require sub_71a2b7f7.length - 1 < sub_71a2b7f7.length
        if not sub_71a2b7f7[sub_71a2b7f7.length].field_0:
            require ext_code.size(latest[0x5044000000000000000000000000000000000000000000000000000000000000])
            staticcall latest[0x5044000000000000000000000000000000000000000000000000000000000000].0x371e6e12 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[0]) == 0x434f560000000000000000000000000000000000000000000000000000000000:
                require ext_code.size(latest[0x5154000000000000000000000000000000000000000000000000000000000000])
                call latest[0x5154000000000000000000000000000000000000000000000000000000000000].0xf4136f7f with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if Mask(32, 224, ext_call.return_data[0]) != 0x434c410000000000000000000000000000000000000000000000000000000000:
                    if Mask(32, 224, ext_call.return_data[0]) == 0x4d43524600000000000000000000000000000000000000000000000000000000:
                        require ext_code.size(latest[0x5044000000000000000000000000000000000000000000000000000000000000])
                        staticcall latest[0x5044000000000000000000000000000000000000000000000000000000000000].0x702ddaab with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] + uint64(ext_call.return_data[0]) >= uint64(ext_call.return_data[0])
                        if ext_call.return_data[0] + uint64(ext_call.return_data[0]) >= block.timestamp:
                            revert with 0, 'MCR posting time not reached'
                        require ext_code.size(latest[0x4d43000000000000000000000000000000000000000000000000000000000000])
                        call latest[0x4d43000000000000000000000000000000000000000000000000000000000000].0x80f34275 with:
                             gas gas_remaining wei
                            args uint64(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if Mask(32, 224, ext_call.return_data[0]) != 0x554c540000000000000000000000000000000000000000000000000000000000:
                            if Mask(32, 224, ext_call.return_data[0]) != 0x4d43520000000000000000000000000000000000000000000000000000000000:
                                if Mask(32, 224, ext_call.return_data[0]) != 0x4941524200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'Invalid callback'
                        else:
                            require ext_code.size(latest[0x5044000000000000000000000000000000000000000000000000000000000000])
                            staticcall latest[0x5044000000000000000000000000000000000000000000000000000000000000].0x6549ff58 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] + uint64(ext_call.return_data[0]) >= uint64(ext_call.return_data[0])
                            if ext_call.return_data[0] + uint64(ext_call.return_data[0]) >= block.timestamp:
                                revert with 0, 'Liquidity trade time not reached'
                            require ext_code.size(latest[0x5032000000000000000000000000000000000000000000000000000000000000])
                            call latest[0x5032000000000000000000000000000000000000000000000000000000000000].0xf720036c with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    require ext_code.size(latest[0x4344000000000000000000000000000000000000000000000000000000000000])
                    staticcall latest[0x4344000000000000000000000000000000000000000000000000000000000000].0x5aef2447 with:
                            gas gas_remaining wei
                           args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 192
                    if ext_call.return_data[96] == 12:
                        require ext_code.size(latest[0x4344000000000000000000000000000000000000000000000000000000000000])
                        staticcall latest[0x4344000000000000000000000000000000000000000000000000000000000000].0xee8dea63 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] + ext_call.return_data[128] >= ext_call.return_data[128]
                        if ext_call.return_data[0] + ext_call.return_data[128] > block.timestamp:
                            revert with 0, 'Payout retry time not reached'
                    require ext_code.size(latest[0x4352000000000000000000000000000000000000000000000000000000000000])
                    call latest[0x4352000000000000000000000000000000000000000000000000000000000000].0x7f6715c9 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        else:
            if not sub_71a2b7f7.length:
                if Mask(32, 224, ext_call.return_data[0]) != 0x4550000000000000000000000000000000000000000000000000000000000000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 58, code.data[18113 len 58], mem[222 len 6]
                require pauseTime + uint64(ext_call.return_data[0]) >= uint64(ext_call.return_data[0])
                if pauseTime + uint64(ext_call.return_data[0]) >= block.timestamp:
                    revert with 0, 'Callback was called too soon'
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 50, code.data[18028 len 50], mem[214 len 14]
            require 1 <= sub_71a2b7f7.length
            require sub_71a2b7f7.length - 1 < sub_71a2b7f7.length
            if Mask(32, 224, ext_call.return_data[0]) != 0x4550000000000000000000000000000000000000000000000000000000000000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 58, code.data[18113 len 58], mem[222 len 6]
            require pauseTime + uint64(ext_call.return_data[0]) >= uint64(ext_call.return_data[0])
            if pauseTime + uint64(ext_call.return_data[0]) >= block.timestamp:
                revert with 0, 'Callback was called too soon'
            if Mask(32, 224, sub_71a2b7f7[sub_71a2b7f7.length].field_0) != 0x4142000000000000000000000000000000000000000000000000000000000000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 50, code.data[18028 len 50], mem[214 len 14]
            if latest[0x5031000000000000000000000000000000000000000000000000000000000000] != msg.sender:
                if latest[0x4756000000000000000000000000000000000000000000000000000000000000] != msg.sender:
                    revert with 0, 'Callable by P1 and GV only.'
            sub_71a2b7f7.length++
            sub_71a2b7f7[sub_71a2b7f7.length].field_0 = 0
            storB10E[stor1.length] = block.timestamp
            storB10E[stor1.length].field_0 = 0
            storB10E[stor1.length].field_256 = 0
            require ext_code.size(stor50DB)
            call stor50DB.0x75a0f521 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor50DB)
            call stor50DB.0x9755fafe with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    uint8(stor7.field_160) = 0
}



}
