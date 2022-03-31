contract main {




// =====================  Runtime code  =====================


address masterAddress;
address msAddress;
address soteMasterAddress;
address dAppTokenAddress;
uint256 stor3;
address stor4;
uint256 stor4;
address stor5;
uint256 stor5;
address stor6;
uint256 stor6;
address stor7;
uint256 stor7;
address stor8;
uint256 stor8;
address tkAddress;
uint256 stor9;
uint8 stor11;
uint256 maxABCount;
uint8 stor13;
uint256 launchedOn;
array of uint256 stor89717814153306320011181716697424560163256864414616650038987186496166826726058;
array of struct stor89717814153306320011181716697424560163256864414616650038987186496166826726059;

function authorized(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < authorized.length
    return authorized[arg1].field_768
}

function numberOfMembers(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < authorized.length
    return uint256(authorized[arg1].field_0)
}

function tk() {
    return address(tkAddress)
}

function maxABCount() {
    return maxABCount
}

function totalRoles() {
    return authorized.length
}

function launched() {
    return bool(stor13)
}

function membersLength(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < authorized.length
    return uint256(authorized[arg1].field_512)
}

function ms() {
    return msAddress
}

function memberAtIndex(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 < authorized.length
    require arg2 < uint256(authorized[arg1].field_512)
    require arg1 < authorized.length
    return stor[sha3((4 * arg1) + ('name', 'authorized', 10) + 2) + arg2].field_0, 
           bool(uint8(stor[('name', 'authorized', 10) + (4 * arg1) + 1][stor[sha3((4 * arg1) + ('name', 'authorized', 10) + 2) + arg2].field_0].field_0))
}

function soteMasterAddress() {
    return soteMasterAddress
}

function masterAddress() {
    return masterAddress
}

function launchedOn() {
    return launchedOn
}

function dAppToken() {
    return address(dAppTokenAddress)
}

function _fallback() payable {
    revert
}

function changeMasterAddress(address arg1) {
    require calldata.size - 4 >= 32
    if masterAddress:
        require msg.sender == masterAddress
    masterAddress = arg1
    msAddress = arg1
    soteMasterAddress = arg1
}

function checkRole(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2:
        require arg2 < authorized.length
        if not uint8(stor[(4 * arg2) + ('name', 'authorized', 10) + 1][address(arg1)].field_0):
            return 0
    return 1
}

function changeMaxABCount(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    maxABCount = arg1
}

function isAuthorizedToGovern(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(masterAddress)
    staticcall masterAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x4756000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[12 len 20] == arg1)
}

function getMemberLengthForAllRoles() {
    if authorized.length:
        mem[128 len 32 * authorized.length] = code.data[14668 len 32 * authorized.length]
    idx = 0
    while idx < authorized.length:
        mem[0] = 10
        require idx < authorized.length
        mem[(32 * idx) + 128] = uint256(authorized[idx].field_0)
        idx = idx + 1
        continue 
    mem[(32 * authorized.length) + 128] = 32
    mem[(32 * authorized.length) + 160] = authorized.length
    s = 0
    while authorized.length < 32 * authorized.length:
        mem[(34 * authorized.length) + 192] = mem[authorized.length + 128]
        s = authorized.length + 32
        continue 
    return memory
      from (32 * authorized.length) + 128
       len (96 * authorized.length) + 64
}

function changeAuthorized(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 < authorized.length
    if authorized[arg1].field_768:
        require arg1 < authorized.length
        require msg.sender == authorized[arg1].field_768
    else:
        require ext_code.size(masterAddress)
        staticcall masterAddress.getLatestAddress(bytes2 rg1) with:
                gas gas_remaining wei
               args 0x4756000000000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'Not Authorized'
    require arg1 < authorized.length
    authorized[arg1].field_768 = arg2
}

function roles(address arg1) {
    require calldata.size - 4 >= 32
    if authorized.length:
        mem[128 len 32 * authorized.length] = code.data[14668 len 32 * authorized.length]
    idx = 1
    s = 0
    while idx < authorized.length:
        mem[0] = arg1
        mem[32] = (4 * idx) + sha3(10) + 1
        if not uint8(stor[(4 * idx) + ('name', 'authorized', 10) + 1][address(arg1)].field_0):
            idx = idx + 1
            s = s
            continue 
        require s < authorized.length
        mem[(32 * s) + 128] = idx
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * authorized.length) + 192 len floor32(authorized.length)] = mem[128 len floor32(authorized.length)]
    return Array(len=authorized.length, data=mem[128 len floor32(authorized.length)], mem[(32 * authorized.length) + floor32(authorized.length) + 192 len (32 * authorized.length) - floor32(authorized.length)]), 
}

function swapOwner(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == msAddress
    require ext_code.size(msAddress)
    staticcall msAddress.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 3 < authorized.length
    require uint8(authorized[13][address(ext_call.return_data[0])].field_0)
    require 3 < authorized.length
    require 1 <= uint256(authorized.field_3072)
    require 3 < authorized.length
    uint256(authorized.field_3072)--
    uint8(authorized[13][address(ext_call.return_data[0])].field_0) = 0
    require 3 < authorized.length
    require not uint8(authorized[13][address(arg1)].field_0)
    require 3 < authorized.length
    require uint256(authorized.field_3072) + 1 >= uint256(authorized.field_3072)
    require 3 < authorized.length
    uint256(authorized.field_3072)++
    uint8(authorized[13][address(arg1)].field_0) = 1
    uint256(authorized.field_3584)++
    stor[('array', 14, ('name', 'authorized', 10)) + uint256(authorized.field_3584)].field_0 = arg1
}

function swapABMember(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require 1 < authorized.length
    if address(authorized.field_1792):
        require 1 < authorized.length
        require msg.sender == address(authorized.field_1792)
    else:
        require ext_code.size(masterAddress)
        staticcall masterAddress.getLatestAddress(bytes2 rg1) with:
                gas gas_remaining wei
               args 0x4756000000000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'Not Authorized'
    require 1 < authorized.length
    require not uint8(authorized[5][address(arg1)].field_0)
    require 1 < authorized.length
    require uint256(authorized.field_1024) + 1 >= uint256(authorized.field_1024)
    require 1 < authorized.length
    uint256(authorized.field_1024)++
    uint8(authorized[5][address(arg1)].field_0) = 1
    uint256(authorized.field_1536)++
    stor[('array', 6, ('name', 'authorized', 10)) + uint256(authorized.field_1536)].field_0 = arg1
    require 1 < authorized.length
    require uint8(authorized[5][address(arg2)].field_0)
    require 1 < authorized.length
    require 1 <= uint256(authorized.field_1024)
    require 1 < authorized.length
    uint256(authorized.field_1024)--
    uint8(authorized[5][address(arg2)].field_0) = 0
}

function updateRole(address arg1, uint256 arg2, bool arg3) {
    require calldata.size - 4 >= 96
    require arg2 < authorized.length
    if authorized[arg2].field_768:
        require arg2 < authorized.length
        require msg.sender == authorized[arg2].field_768
    else:
        require ext_code.size(masterAddress)
        staticcall masterAddress.getLatestAddress(bytes2 rg1) with:
                gas gas_remaining wei
               args 0x4756000000000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'Not Authorized'
    require arg2 < authorized.length
    if not arg3:
        require uint8(stor[(4 * arg2) + ('name', 'authorized', 10) + 1][address(arg1)].field_0)
        require arg2 < authorized.length
        require 1 <= uint256(authorized[arg2].field_0)
        require arg2 < authorized.length
        uint256(authorized[arg2].field_0)--
        uint8(stor[(4 * arg2) + ('name', 'authorized', 10) + 1][address(arg1)].field_0) = 0
    else:
        require not uint8(stor[(4 * arg2) + ('name', 'authorized', 10) + 1][address(arg1)].field_0)
        require arg2 < authorized.length
        require uint256(authorized[arg2].field_0) + 1 >= uint256(authorized[arg2].field_0)
        require arg2 < authorized.length
        uint256(authorized[arg2].field_0)++
        uint8(stor[('name', 'authorized', 10) + (4 * arg2) + 1][address(arg1)].field_0) = 1
        uint256(authorized[arg2].field_512)++
        stor[sha3(('name', 'authorized', 10) + (4 * arg2) + 2) + uint256(authorized[arg2].field_512)].field_0 = arg1
}

function members(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < authorized.length
    if uint256(authorized[arg1].field_0):
        mem[128 len 32 * uint256(authorized[arg1].field_0)] = code.data[14668 len 32 * uint256(authorized[arg1].field_0)]
    idx = 0
    while idx < uint256(authorized[arg1].field_512):
        require arg1 < authorized.length
        require idx < uint256(authorized[arg1].field_512)
        require arg1 < authorized.length
        mem[0] = stor[sha3((4 * arg1) + ('name', 'authorized', 10) + 2) + idx].field_0
        mem[32] = (4 * arg1) + sha3(10) + 1
        if uint8(stor[(4 * arg1) + ('name', 'authorized', 10) + 1][stor[sha3((4 * arg1) + ('name', 'authorized', 10) + 2) + idx].field_0].field_0):
            s = 0
            while s < uint256(authorized[arg1].field_0):
                require s < uint256(authorized[arg1].field_0)
                if mem[(32 * s) + 140 len 20] != stor[sha3((4 * arg1) + ('name', 'authorized', 10) + 2) + idx].field_0:
                    s = s + 1
                    continue 
                idx = idx + 1
                continue 
            require 0 < uint256(authorized[arg1].field_0)
            mem[128] = stor[sha3((4 * arg1) + ('name', 'authorized', 10) + 2) + idx].field_0
        idx = idx + 1
        continue 
    mem[(32 * uint256(authorized[arg1].field_0)) + 224 len floor32(uint256(authorized[arg1].field_0))] = mem[128 len floor32(uint256(authorized[arg1].field_0))]
    return arg1, 
           Array(len=uint256(authorized[arg1].field_0), data=mem[128 len floor32(uint256(authorized[arg1].field_0))], mem[(32 * uint256(authorized[arg1].field_0)) + floor32(uint256(authorized[arg1].field_0)) + 224 len (32 * uint256(authorized[arg1].field_0)) - floor32(uint256(authorized[arg1].field_0))])
}

function addInitialABMembers(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require ext_code.size(msAddress)
    staticcall msAddress.isOwner(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(msAddress)
    staticcall msAddress.masterInitialized() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require 1 < authorized.length
    require arg1.length + uint256(authorized.field_1024) >= uint256(authorized.field_1024)
    require maxABCount >= arg1.length + uint256(authorized.field_1024)
    idx = 0
    while idx < arg1.length:
        require 2 < authorized.length
        require uint8(authorized[9][address(cd[((32 * idx) + arg1 + 36)])].field_0)
        require idx < arg1.length
        require 1 < authorized.length
        require not uint8(authorized[5][address(cd[((32 * idx) + arg1 + 36)])].field_0)
        require 1 < authorized.length
        require uint256(authorized.field_1024) + 1 >= uint256(authorized.field_1024)
        require 1 < authorized.length
        uint256(authorized.field_1024)++
        mem[32] = sha3(10) + 5
        uint8(authorized[5][address(cd[((32 * idx) + arg1 + 36)])].field_0) = 1
        uint256(authorized.field_1536)++
        mem[0] = sha3(10) + 6
        stor[('array', 6, ('name', 'authorized', 10)) + uint256(authorized.field_1536)].field_0 = address(cd[((32 * idx) + arg1 + 36)])
        idx = idx + 1
        continue 
}

function addRole(bytes32 arg1, string arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require ext_code.size(masterAddress)
    staticcall masterAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x4756000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Not authorized'
    mem[ceil32(arg2.length) + 128] = arg1
    mem[ceil32(arg2.length) + 224 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit MemberRole(uint256 rg1, bytes32 rg2, string rg3):
                        0,
                        Mask(224, 0, arg1),
                        64,
                        arg2.length,
                        Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256,
                        authorized.length,
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 224] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 256 len arg2.length % 32]
        emit MemberRole(uint256 rg1, bytes32 rg2, string rg3):
                        0,
                        Mask(224, 0, arg1),
                        64,
                        arg2.length,
                        Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                        mem[(2 * ceil32(arg2.length)) + 224 len floor32(arg2.length) + -ceil32(arg2.length) + 32],
                        authorized.length,
    authorized.length++
    uint256(authorized[authorized.length].field_0) = 0
    storC65A[stor10.length] = 0
    idx = 0
    while storC65A[stor10.length] > idx:
        stor[idx + sha3((4 * stor10.length) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d56)] = 0
        idx = idx + 1
        continue 
    storC65A[stor10.length].field_0 = arg3
}

function changeDependentContractAddress() {
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x5444000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor4) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor4))
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x4352000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor6) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor6))
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x5144000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor5) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor5))
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x4756000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor7) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor7))
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x5446000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor8) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor8))
    require ext_code.size(msAddress)
    staticcall msAddress.tokenAddress() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor9) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor9))
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x5443000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor3) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor3))
}

function withdrawMembership() {
    require ext_code.size(msAddress)
    staticcall msAddress.isPause() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require ext_code.size(msAddress)
    staticcall msAddress.isMember(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(address(dAppTokenAddress))
    staticcall address(dAppTokenAddress).0x39081b92 with:
            gas gas_remaining wei
           args msg.sender, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require ext_code.size(address(stor8))
    staticcall address(stor8).0xac5adaf6 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require ext_code.size(address(dAppTokenAddress))
    staticcall address(dAppTokenAddress).0x5294d0e8 with:
            gas gas_remaining wei
           args msg.sender, 0x434c410000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x2e4d656d6265722073686f756c642068617665206e6f20434c4120756e6c6f636b61626c6520746f6b656e,
                    mem[207 len 21]
    require ext_code.size(address(tkAddress))
    staticcall address(tkAddress).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(dAppTokenAddress))
    call address(dAppTokenAddress).0x79cc6790 with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 2 < authorized.length
    require uint8(authorized[9][address(msg.sender)].field_0)
    require 2 < authorized.length
    require 1 <= uint256(authorized.field_2048)
    require 2 < authorized.length
    uint256(authorized.field_2048)--
    uint8(authorized[9][address(msg.sender)].field_0) = 0
    require ext_code.size(address(dAppTokenAddress))
    call address(dAppTokenAddress).0x8ab1d681 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function kycVerdict(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(address(stor5))
    staticcall address(stor5).0x84434b9f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require ext_code.size(msAddress)
    staticcall msAddress.isPause() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require arg1
    require ext_code.size(msAddress)
    staticcall msAddress.isMember(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require ext_code.size(address(stor5))
    staticcall address(stor5).0xde75b5ea with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(address(stor5))
    call address(stor5).0xf63a87d4 with:
         gas gas_remaining wei
        args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor4))
    staticcall address(stor4).0x6eeeaaa5 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        call arg1 with:
           value ext_call.return_data[0] wei
             gas 2300 * is_zero(value) wei
    else:
        require ext_code.size(address(dAppTokenAddress))
        call address(dAppTokenAddress).0xe43252d7 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require 2 < authorized.length
        require not uint8(authorized[9][address(arg1)].field_0)
        require 2 < authorized.length
        require uint256(authorized.field_2048) + 1 >= uint256(authorized.field_2048)
        require 2 < authorized.length
        uint256(authorized.field_2048)++
        uint8(authorized[9][address(arg1)].field_0) = 1
        uint256(authorized.field_2560)++
        stor[('array', 10, ('name', 'authorized', 10)) + uint256(authorized.field_2560)].field_0 = arg1
        require ext_code.size(address(stor4))
        staticcall address(stor4).0x6ad5b3ea with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call ext_call.return_data[12 len 20] with:
           value ext_call.return_data[0] wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function payJoiningFee(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    require ext_code.size(msAddress)
    staticcall msAddress.isPause() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Emergency Pause Applied'
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x5154000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if msg.sender == ext_call.return_data[12 len 20]:
        require ext_code.size(address(stor4))
        staticcall address(stor4).0x6ad5b3ea with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'No walletAddress present'
    else:
        require ext_code.size(address(stor5))
        staticcall address(stor5).0xde75b5ea with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require not ext_call.return_data[0]
        require ext_code.size(msAddress)
        staticcall msAddress.isMember(address rg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require not ext_call.return_data[0]
        require ext_code.size(address(stor4))
        staticcall address(stor4).0x6eeeaaa5 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require msg.value == ext_call.return_data[0]
        require ext_code.size(address(stor5))
        call address(stor5).0xf63a87d4 with:
             gas gas_remaining wei
            args address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(dAppTokenAddress))
    call address(dAppTokenAddress).0xe43252d7 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require 2 < authorized.length
    require not uint8(authorized[9][address(arg1)].field_0)
    require 2 < authorized.length
    require uint256(authorized.field_2048) + 1 >= uint256(authorized.field_2048)
    require 2 < authorized.length
    uint256(authorized.field_2048)++
    uint8(authorized[9][address(arg1)].field_0) = 1
    uint256(authorized.field_2560)++
    stor[('array', 10, ('name', 'authorized', 10)) + uint256(authorized.field_2560)].field_0 = arg1
    require ext_code.size(address(stor4))
    staticcall address(stor4).0x6ad5b3ea with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call ext_call.return_data[12 len 20] with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function addMembersBeforeLaunch(address[] arg1, uint256[] arg2) {
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
    mem[(32 * arg1.length) + (32 * arg2.length) + 164] = msg.sender
    require ext_code.size(msAddress)
    staticcall msAddress.isOwner(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require not stor13
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _36 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
        require ext_code.size(msAddress)
        staticcall msAddress.isMember(address rg1) with:
                gas gas_remaining wei
               args address(_36)
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require not ext_call.return_data[0]
        require idx < arg1.length
        _42 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0xe43252d700000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = address(_42)
        require ext_code.size(address(dAppTokenAddress))
        call address(dAppTokenAddress).0xe43252d7 with:
             gas gas_remaining wei
            args address(_42)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require idx < arg1.length
        require 2 < authorized.length
        require not uint8(authorized[9][mem[(32 * idx) + 140 len 20]].field_0)
        require 2 < authorized.length
        require uint256(authorized.field_2048) + 1 >= uint256(authorized.field_2048)
        require 2 < authorized.length
        uint256(authorized.field_2048)++
        mem[32] = sha3(10) + 9
        uint8(authorized[9][address(mem[(32 * idx) + 128])].field_0) = 1
        uint256(authorized.field_2560)++
        mem[0] = sha3(10) + 10
        stor[('array', 10, ('name', 'authorized', 10)) + uint256(authorized.field_2560)].field_0 = mem[(32 * idx) + 140 len 20]
        require idx < arg1.length
        _56 = mem[(32 * idx) + 128]
        require idx < arg2.length
        _58 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = address(_56)
        mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _58
        require ext_code.size(address(dAppTokenAddress))
        call address(dAppTokenAddress).0x40c10f19 with:
             gas gas_remaining wei
            args address(_56), _58
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    stor13 = 1
    launchedOn = block.timestamp
}

function memberRolesInitiate(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require not stor11
    maxABCount = 5
    emit MemberRole(uint256 rg1, bytes32 rg2, string rg3):
                    0x556e61737369676e656400000000000000000000000000000000000000000000,
                    64,
                    10,
                    0,
                    authorized.length,
    authorized.length++
    uint256(authorized[authorized.length].field_0) = 0
    storC65A[stor10.length] = 0
    idx = 0
    while storC65A[stor10.length] > idx:
        stor[idx + sha3((4 * stor10.length) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d56)] = 0
        idx = idx + 1
        continue 
    storC65A[stor10.length].field_0 = 0
    storC65A[stor10.length].field_256 % 1 = 0
    emit MemberRole(uint256 rg1, bytes32 rg2, string rg3):
                    0x41647669736f727920426f617264000000000000000000000000000000000000,
                    64,
                    209,
                    0xfe53656c656374656420666577206d656d6265727320746861742061726520646565706c7920656e747275737465642062792074686520644170702e20416e20696465616c2061647669736f727920626f6172642073686f756c642062652061206d6978206f6620736b696c6c73206f6620646f6d61696e2c20676f7665726e616e63652c2072657365617263682c20746563686e6f6c6f67792c20636f6e73756c74696e672065746320746f20696d70726f76652074686520706572666f726d616e6365206f66207468652064417070, mem[529 len 15] >> 1280,
                    Mask(136, -1536, mem[529 len 15]) << 1536,
                    authorized.length,
    authorized.length++
    uint256(authorized[authorized.length].field_0) = 0
    storC65A[stor10.length] = 0
    idx = 0
    while storC65A[stor10.length] > idx:
        stor[idx + sha3((4 * stor10.length) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d56)] = 0
        idx = idx + 1
        continue 
    storC65A[stor10.length].field_0 = 0
    storC65A[stor10.length].field_256 % 1 = 0
    emit MemberRole(uint256 rg1, bytes32 rg2, string rg3):
                    0x4d656d6265720000000000000000000000000000000000000000000000000000,
                    64,
                    31,
                    Mask(248, 0, 'Represents all users of Mutual.'),
                    authorized.length,
    authorized.length++
    uint256(authorized[authorized.length].field_0) = 0
    storC65A[stor10.length] = 0
    idx = 0
    while storC65A[stor10.length] > idx:
        stor[idx + sha3((4 * stor10.length) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d56)] = 0
        idx = idx + 1
        continue 
    storC65A[stor10.length].field_0 = arg2
    emit MemberRole(uint256 rg1, bytes32 rg2, string rg3):
                    0x4f776e6572000000000000000000000000000000000000000000000000000000,
                    64,
                    27,
                    Mask(216, 0, 'Represents Owner of Mutual.'),
                    authorized.length,
    authorized.length++
    uint256(authorized[authorized.length].field_0) = 0
    storC65A[stor10.length] = 0
    idx = 0
    while storC65A[stor10.length] > idx:
        stor[idx + sha3((4 * stor10.length) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d56)] = 0
        idx = idx + 1
        continue 
    storC65A[stor10.length].field_0 = 0
    storC65A[stor10.length].field_256 % 1 = 0
    require 3 < authorized.length
    require not uint8(authorized[13][address(arg1)].field_0)
    require 3 < authorized.length
    require uint256(authorized.field_3072) + 1 >= uint256(authorized.field_3072)
    require 3 < authorized.length
    uint256(authorized.field_3072)++
    uint8(authorized[13][address(arg1)].field_0) = 1
    uint256(authorized.field_3584)++
    stor[('array', 14, ('name', 'authorized', 10)) + uint256(authorized.field_3584)].field_0 = arg1
    launchedOn = 0
    stor11 = 1
}

function switchMembership(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(msAddress)
    staticcall msAddress.isPause() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require ext_code.size(msAddress)
    staticcall msAddress.isMember(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(msAddress)
    staticcall msAddress.isMember(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require ext_code.size(address(dAppTokenAddress))
    staticcall address(dAppTokenAddress).0x39081b92 with:
            gas gas_remaining wei
           args msg.sender, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require ext_code.size(address(stor8))
    staticcall address(stor8).0xac5adaf6 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require ext_code.size(address(stor6))
    staticcall address(stor6).0x35afb14e with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require ext_code.size(address(dAppTokenAddress))
    staticcall address(dAppTokenAddress).0x5294d0e8 with:
            gas gas_remaining wei
           args msg.sender, 0x434c410000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x2e4d656d6265722073686f756c642068617665206e6f20434c4120756e6c6f636b61626c6520746f6b656e,
                    mem[207 len 21]
    require ext_code.size(address(stor7))
    call address(stor7).removeDelegation(address rg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(dAppTokenAddress))
    call address(dAppTokenAddress).0xe43252d7 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require 2 < authorized.length
    require not uint8(authorized[9][address(arg1)].field_0)
    require 2 < authorized.length
    require uint256(authorized.field_2048) + 1 >= uint256(authorized.field_2048)
    require 2 < authorized.length
    uint256(authorized.field_2048)++
    uint8(authorized[9][address(arg1)].field_0) = 1
    uint256(authorized.field_2560)++
    stor[('array', 10, ('name', 'authorized', 10)) + uint256(authorized.field_2560)].field_0 = arg1
    require ext_code.size(address(tkAddress))
    staticcall address(tkAddress).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(tkAddress))
    call address(tkAddress).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 2 < authorized.length
    require uint8(authorized[9][address(msg.sender)].field_0)
    require 2 < authorized.length
    require 1 <= uint256(authorized.field_2048)
    require 2 < authorized.length
    uint256(authorized.field_2048)--
    uint8(authorized[9][address(msg.sender)].field_0) = 0
    require ext_code.size(address(dAppTokenAddress))
    call address(dAppTokenAddress).0x8ab1d681 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit switchedMembership(block.timestamp, msg.sender, arg1);
}



}
