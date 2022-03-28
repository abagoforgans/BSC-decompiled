contract main {




// =====================  Runtime code  =====================


#
#  - proposeUpdateCoreParameters(uint32 arg1, uint32 arg2, uint32 arg3, uint16 arg4, uint16 arg5, uint16 arg6)
#
uint32 stor0;
uint32 stor0; offset 160
uint32 stor0; offset 192
uint32 stor0; offset 224
uint64 stor0; offset 192
uint128 stor0; offset 160
address taxTokenAddress;
uint16 stor1;
uint16 stor1; offset 16
uint16 stor1; offset 32
uint256 stor1; offset 32
uint256 stor1; offset 16
mapping of struct infoUpdateCoreParameters;
mapping of struct status;
mapping of struct infoUpdateWhitelist;
mapping of address infoDelistWhitelist;
array of struct stor7;
mapping of struct userStatus;

function getInfoDelistWhitelist(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return infoDelistWhitelist[arg1]
}

function getStatus(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return status[arg1].field_0, 
           status[arg1].field_256,
           status[arg1].field_0,
           status[arg1].field_256,
           status[arg1].field_416,
           status[arg1].field_256,
           bool(status[arg1].field_480),
           bool(status[arg1].field_488)
}

function getUserStatus(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userStatus[arg1][arg2].field_0, userStatus[arg1][arg2].field_128
}

function getInfoUpdateCoreParameters(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return infoUpdateCoreParameters[arg1].field_0, 
           infoUpdateCoreParameters[arg1].field_0,
           infoUpdateCoreParameters[arg1].field_0,
           infoUpdateCoreParameters[arg1].field_0,
           infoUpdateCoreParameters[arg1].field_112,
           infoUpdateCoreParameters[arg1].field_0
}

function getInfoUpdateWhitelist(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return infoUpdateWhitelist[arg1].field_0, infoUpdateWhitelist[arg1].field_256
}

function getTaxTokenAddress() payable {
    return taxTokenAddress
}

function _fallback() payable {
    revert
}

function getCoreParameters() payable {
    return uint32(stor0.field_0), 
           uint32(stor0.field_0),
           uint32(stor0.field_0),
           uint16(stor1.field_0),
           uint16(stor1.field_16),
           uint16(stor1.field_0)
}

function lockinProposal(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if uint128(status[arg1].field_256 + status[arg1].field_128) < status[arg1].field_0:
        revert with 0, 'insufficient amount for lockin'
    if status[arg1].field_384 < block.timestamp:
        revert with 0, 'lockin period has expired'
    status[arg1].field_480 = 1
}

function getInfoUpdateIncentive(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if stor7[arg1].field_0:
        mem[128] = stor7[arg1].field_0
        idx = 128
        s = 0
        while (32 * stor7[arg1].field_0) + 96 > idx:
            mem[idx + 32] = stor7[arg1][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if stor7[arg1].field_256:
        mem[(32 * stor7[arg1].field_0) + 160] = stor7[arg1][1].field_0
        idx = (32 * stor7[arg1].field_0) + 160
        s = 0
        while (32 * stor7[arg1].field_0) + (32 * stor7[arg1].field_256) + 128 > idx:
            mem[idx + 32] = stor7[arg1][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor7[arg1].field_0) + (32 * stor7[arg1].field_256) + 256 len floor32(stor7[arg1].field_0)] = mem[128 len floor32(stor7[arg1].field_0)]
    mem[(64 * stor7[arg1].field_0) + (32 * stor7[arg1].field_256) + 256] = stor7[arg1].field_256
    mem[(64 * stor7[arg1].field_0) + (32 * stor7[arg1].field_256) + 288 len floor32(stor7[arg1].field_256)] = mem[(32 * stor7[arg1].field_0) + 160 len floor32(stor7[arg1].field_256)]
    return Array(len=stor7[arg1].field_0, data=mem[128 len floor32(stor7[arg1].field_0)], mem[(32 * stor7[arg1].field_0) + (32 * stor7[arg1].field_256) + floor32(stor7[arg1].field_0) + 256 len (32 * stor7[arg1].field_0) + (32 * stor7[arg1].field_256) + -floor32(stor7[arg1].field_0) + 32]), 
           (32 * stor7[arg1].field_0) + 96
}

function applyGovernanceForDelistWhitelist(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    status[arg1].field_480 = 1
    if 0 or bool(status[arg1].field_488):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x647468652070726f706f73616c20686173206265656e20616c7265616479206170706c6965,
                    mem[201 len 27]
    if status[arg1].field_416 > block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x6c7468652070726f706f73616c206973207374696c6c20756e64657220766f74696e6720706572696f,
                    mem[205 len 23]
    if uint32(status[arg1].field_448 + status[arg1].field_416) <= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0x65746865206170706c696361626c6520706572696f64206f66207468652070726f706f73616c2068617320657870697265,
                    mem[213 len 15]
    if status[arg1].field_128 <= status[arg1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x647468652070726f706f73616c2069732064656e696564206279206d616a6f72697479206f6620766f74,
                    mem[206 len 22]
    status[arg1].field_488 = 1
    require ext_code.size(taxTokenAddress)
    call taxTokenAddress.unregisterWhitelist(address rg1) with:
         gas gas_remaining wei
        args infoDelistWhitelist[arg1]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x2a420d4d: arg1
}

function applyGovernanceForUpdateWhitelist(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    status[arg1].field_480 = 1
    if 0 or bool(status[arg1].field_488):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x647468652070726f706f73616c20686173206265656e20616c7265616479206170706c6965,
                    mem[201 len 27]
    if status[arg1].field_416 > block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x6c7468652070726f706f73616c206973207374696c6c20756e64657220766f74696e6720706572696f,
                    mem[205 len 23]
    if uint32(status[arg1].field_448 + status[arg1].field_416) <= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0x65746865206170706c696361626c6520706572696f64206f66207468652070726f706f73616c2068617320657870697265,
                    mem[213 len 15]
    if status[arg1].field_128 <= status[arg1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x647468652070726f706f73616c2069732064656e696564206279206d616a6f72697479206f6620766f74,
                    mem[206 len 22]
    status[arg1].field_488 = 1
    require ext_code.size(taxTokenAddress)
    call taxTokenAddress.0xf1d0458a with:
         gas gas_remaining wei
        args infoUpdateWhitelist[arg1].field_0, infoUpdateWhitelist[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x2a420d4d: arg1
}

function applyGovernanceForUpdateCore(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    status[arg1].field_480 = 1
    if 0 or bool(status[arg1].field_488):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x647468652070726f706f73616c20686173206265656e20616c7265616479206170706c6965,
                    mem[201 len 27]
    if status[arg1].field_416 > block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x6c7468652070726f706f73616c206973207374696c6c20756e64657220766f74696e6720706572696f,
                    mem[205 len 23]
    if uint32(status[arg1].field_448 + status[arg1].field_416) <= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0x65746865206170706c696361626c6520706572696f64206f66207468652070726f706f73616c2068617320657870697265,
                    mem[213 len 15]
    if status[arg1].field_128 <= status[arg1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x647468652070726f706f73616c2069732064656e696564206279206d616a6f72697479206f6620766f74,
                    mem[206 len 22]
    status[arg1].field_488 = 1
    if not infoUpdateCoreParameters[arg1].field_0:
        Mask(96, 0, stor0.field_160) = uint32(stor0.field_160)
    else:
        Mask(96, 0, stor0.field_160) = infoUpdateCoreParameters[arg1].field_0
    if not infoUpdateCoreParameters[arg1].field_32:
        uint64(stor0.field_192) = uint32(stor0.field_192)
    else:
        uint64(stor0.field_192) = infoUpdateCoreParameters[arg1].field_32
    if infoUpdateCoreParameters[arg1].field_64:
        uint32(stor0.field_224) = infoUpdateCoreParameters[arg1].field_64
    if infoUpdateCoreParameters[arg1].field_96:
        uint16(stor1.field_0) = infoUpdateCoreParameters[arg1].field_96
    if not infoUpdateCoreParameters[arg1].field_112:
        Mask(240, 0, stor1.field_16) = uint16(stor1.field_16)
    else:
        Mask(240, 0, stor1.field_16) = infoUpdateCoreParameters[arg1].field_112
    if not infoUpdateCoreParameters[arg1].field_128:
        Mask(224, 0, stor1.field_32) = uint16(stor1.field_32)
    else:
        Mask(224, 0, stor1.field_32) = infoUpdateCoreParameters[arg1].field_128
    emit 0x2a420d4d: arg1
    emit 0x99654c4f: uint32(stor0.field_0), uint32(stor0.field_0), uint32(stor0.field_0), uint16(stor1.field_0), uint16(stor1.field_16), uint16(stor1.field_0)
}

function vote(bytes32 arg1, bool arg2, uint128 arg3) payable {
    require calldata.size - 4 >= 96
    if not status[arg1].field_480:
        if status[arg1].field_384 < block.timestamp:
            revert with 0, 'voting period has expired'
    else:
        if status[arg1].field_416 < block.timestamp:
            if status[arg1].field_384 < block.timestamp:
                revert with 0, 'voting period has expired'
    if not arg2:
        if arg3 + status[arg1].field_256 < status[arg1].field_256:
            revert with 0, 'SafeMath: addition overflow'
        if arg3 + status[arg1].field_256 >= 0x100000000000000000000000000000000:
            revert with 0, 32, 39, 0x6453616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974, mem[299 len 25]
        status[arg1].field_256 = uint128(arg3 + status[arg1].field_256)
        if arg3 + userStatus[arg1][msg.sender].field_128 < userStatus[arg1][msg.sender].field_128:
            revert with 0, 'SafeMath: addition overflow'
        if arg3 + userStatus[arg1][msg.sender].field_128 >= 0x100000000000000000000000000000000:
            revert with 0, 32, 39, 0x6453616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974, mem[299 len 25]
        userStatus[arg1][msg.sender].field_128 = uint128(arg3 + userStatus[arg1][msg.sender].field_128)
    else:
        if arg3 + status[arg1].field_128 < status[arg1].field_128:
            revert with 0, 'SafeMath: addition overflow'
        if arg3 + status[arg1].field_128 >= 0x100000000000000000000000000000000:
            revert with 0, 32, 39, 0x6453616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974, mem[299 len 25]
        status[arg1].field_128 = uint128(arg3 + status[arg1].field_128)
        if arg3 + userStatus[arg1][msg.sender].field_0 < userStatus[arg1][msg.sender].field_0:
            revert with 0, 'SafeMath: addition overflow'
        if arg3 + userStatus[arg1][msg.sender].field_0 >= 0x100000000000000000000000000000000:
            revert with 0, 32, 39, 0x6453616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974, mem[299 len 25]
        userStatus[arg1][msg.sender].field_0 = uint128(arg3 + userStatus[arg1][msg.sender].field_0)
    require ext_code.size(taxTokenAddress)
    staticcall taxTokenAddress.0x179d342f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getStakingAddress() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x684da514 with:
         gas gas_remaining wei
        args msg.sender, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xbf2f5145: arg2, arg3, arg1, msg.sender
}

function applyGovernanceForUpdateIncentive(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    status[arg1].field_480 = 1
    if 0 or bool(status[arg1].field_488):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x647468652070726f706f73616c20686173206265656e20616c7265616479206170706c6965,
                    mem[201 len 27]
    if status[arg1].field_416 > block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x6c7468652070726f706f73616c206973207374696c6c20756e64657220766f74696e6720706572696f,
                    mem[205 len 23]
    if uint32(status[arg1].field_448 + status[arg1].field_416) <= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0x65746865206170706c696361626c6520706572696f64206f66207468652070726f706f73616c2068617320657870697265,
                    mem[213 len 15]
    if status[arg1].field_128 <= status[arg1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x647468652070726f706f73616c2069732064656e696564206279206d616a6f72697479206f6620766f74,
                    mem[206 len 22]
    status[arg1].field_488 = 1
    if stor7[arg1].field_0:
        mem[128] = stor7[arg1].field_0
        idx = 128
        s = 0
        while (32 * stor7[arg1].field_0) + 96 > idx:
            mem[idx + 32] = stor7[arg1][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if stor7[arg1].field_256:
        mem[(32 * stor7[arg1].field_0) + 160] = stor7[arg1][1].field_0
        idx = (32 * stor7[arg1].field_0) + 160
        s = 0
        while (32 * stor7[arg1].field_0) + (32 * stor7[arg1].field_256) + 128 > idx:
            mem[idx + 32] = stor7[arg1][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor7[arg1].field_0) + (32 * stor7[arg1].field_256) + 260 len floor32(stor7[arg1].field_0)] = mem[128 len floor32(stor7[arg1].field_0)]
    mem[(64 * stor7[arg1].field_0) + (32 * stor7[arg1].field_256) + 260] = stor7[arg1].field_256
    mem[(64 * stor7[arg1].field_0) + (32 * stor7[arg1].field_256) + 292 len floor32(stor7[arg1].field_256)] = mem[(32 * stor7[arg1].field_0) + 160 len floor32(stor7[arg1].field_256)]
    require ext_code.size(taxTokenAddress)
    call taxTokenAddress.0x4ffc0951 with:
         gas gas_remaining wei
        args Array(len=stor7[arg1].field_0, data=mem[128 len floor32(stor7[arg1].field_0)], mem[(32 * stor7[arg1].field_0) + (32 * stor7[arg1].field_256) + floor32(stor7[arg1].field_0) + 260 len (32 * stor7[arg1].field_0) + (32 * stor7[arg1].field_256) + -floor32(stor7[arg1].field_0) + 32]), (32 * stor7[arg1].field_0) + 96
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x2a420d4d: arg1
}

function withdraw(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if not userStatus[arg1][msg.sender].field_0:
        if not userStatus[arg1][msg.sender].field_128:
            revert with 0, 'no deposit on the proposeId'
    if status[arg1].field_480:
        if bool(status[arg1].field_488) != 1:
            if uint32(status[arg1].field_448 + status[arg1].field_416) > block.timestamp:
                revert with 0, 
                            32,
                            47,
                            0x7763616e6e6f74207769746864726177207768696c652074686520766f74696e6720697320696e2070726f67726573,
                            mem[435 len 17]
        else:
            if status[arg1].field_416 > block.timestamp:
                if uint32(status[arg1].field_448 + status[arg1].field_416) > block.timestamp:
                    revert with 0, 
                                32,
                                47,
                                0x7763616e6e6f74207769746864726177207768696c652074686520766f74696e6720697320696e2070726f67726573,
                                mem[435 len 17]
    else:
        if status[arg1].field_384 >= block.timestamp:
            if bool(status[arg1].field_488) != 1:
                if uint32(status[arg1].field_448 + status[arg1].field_416) > block.timestamp:
                    revert with 0, 
                                32,
                                47,
                                0x7763616e6e6f74207769746864726177207768696c652074686520766f74696e6720697320696e2070726f67726573,
                                mem[435 len 17]
            else:
                if status[arg1].field_416 > block.timestamp:
                    if uint32(status[arg1].field_448 + status[arg1].field_416) > block.timestamp:
                        revert with 0, 
                                    32,
                                    47,
                                    0x7763616e6e6f74207769746864726177207768696c652074686520766f74696e6720697320696e2070726f67726573,
                                    mem[435 len 17]
    userStatus[arg1][msg.sender].field_0 = 0
    require ext_code.size(taxTokenAddress)
    staticcall taxTokenAddress.0x179d342f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getStakingAddress() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x59af0e5d with:
         gas gas_remaining wei
        args msg.sender, uint128(userStatus[arg1][msg.sender].field_128 + userStatus[arg1][msg.sender].field_0)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xac3b6486: uint128(userStatus[arg1][msg.sender].field_128 + userStatus[arg1][msg.sender].field_0), arg1, msg.sender
}

function proposeDelistWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp >= 4294967296:
        revert with 0, 32, 38, 0x6553616665436173743a2076616c756520646f65736e27742066697420696e20333220626974, mem[266 len 26]
    require ext_code.size(taxTokenAddress)
    staticcall taxTokenAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(taxTokenAddress)
        staticcall taxTokenAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if status[arg1].field_416:
                if status[arg1].field_480:
                    if bool(status[arg1].field_480) != 1:
                        revert with 0, 
                                    32,
                                    58,
                                    0xfe7468652070726f706f73616c2073686f756c64206e6f7420636f6e666c696374207769746820746865206f6e676f696e672070726f706f7361,
                                    mem[286 len 6]
                    if uint32(status[arg1].field_448 + status[arg1].field_416) >= block.timestamp:
                        revert with 0, 
                                    32,
                                    58,
                                    0xfe7468652070726f706f73616c2073686f756c64206e6f7420636f6e666c696374207769746820746865206f6e676f696e672070726f706f7361,
                                    mem[286 len 6]
                else:
                    if uint32(status[arg1].field_448 + status[arg1].field_384) >= block.timestamp:
                        if bool(status[arg1].field_480) != 1:
                            revert with 0, 
                                        32,
                                        58,
                                        0xfe7468652070726f706f73616c2073686f756c64206e6f7420636f6e666c696374207769746820746865206f6e676f696e672070726f706f7361,
                                        mem[286 len 6]
                        if uint32(status[arg1].field_448 + status[arg1].field_416) >= block.timestamp:
                            revert with 0, 
                                        32,
                                        58,
                                        0xfe7468652070726f706f73616c2073686f756c64206e6f7420636f6e666c696374207769746820746865206f6e676f696e672070726f706f7361,
                                        mem[286 len 6]
            require ext_code.size(taxTokenAddress)
            staticcall taxTokenAddress.'TH!s' with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                revert with 0, 32, 35, 0x6474686520746f6b656e41646472657373206973206e6f742077686974656c69737465, mem[263 len 29]
            stor2.length++
            stor2[stor2.length] = sha3(arg1)
            status[arg1].field_0 = 0
            status[arg1].field_256 = 0
            status[arg1].field_128 = 0
            status[arg1].field_256 = 0
            status[arg1].field_256 = 0
            status[arg1].field_512 = 0
            status[arg1].field_384 = uint32(block.timestamp + uint32(stor0.field_160))
            status[arg1].field_416 = uint32(block.timestamp + uint32(stor0.field_192))
            status[arg1].field_448 = uint32(stor0.field_224)
            status[arg1].field_480 = 0
            status[arg1].field_488 = 0
            infoDelistWhitelist[arg1] = arg1
            if userStatus[sha3(arg1)][msg.sender].field_0 < userStatus[sha3(arg1)][msg.sender].field_0:
                revert with 0, 'SafeMath: addition overflow'
            if userStatus[sha3(arg1)][msg.sender].field_0 >= 0x100000000000000000000000000000000:
                revert with 0, 32, 39, 0x6453616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974, mem[651 len 25]
            userStatus[sha3(arg1)][msg.sender].field_0 = userStatus[sha3(arg1)][msg.sender].field_0
            require ext_code.size(taxTokenAddress)
            staticcall taxTokenAddress.0x179d342f with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getStakingAddress() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x684da514 with:
                 gas gas_remaining wei
                args msg.sender, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x572a3baf: address(arg1), block.timestamp + uint32(stor0.field_160) << 224, block.timestamp + uint32(stor0.field_192) << 224, uint32(stor0.field_224), sha3(arg1)
            emit 0xbf2f5145: 1, 0, sha3(arg1), msg.sender
        else:
            if uint16(stor1.field_32) * ext_call.return_data[0] / ext_call.return_data[0] != uint16(stor1.field_32):
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if uint16(stor1.field_32) * ext_call.return_data[0] / 10000 >= 0x100000000000000000000000000000000:
                revert with 0, 32, 39, 0x6453616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974, mem[267 len 25]
            if status[arg1].field_416:
                if status[arg1].field_480:
                    if bool(status[arg1].field_480) != 1:
                        revert with 0, 
                                    32,
                                    58,
                                    0xfe7468652070726f706f73616c2073686f756c64206e6f7420636f6e666c696374207769746820746865206f6e676f696e672070726f706f7361,
                                    mem[286 len 6]
                    if uint32(status[arg1].field_448 + status[arg1].field_416) >= block.timestamp:
                        revert with 0, 
                                    32,
                                    58,
                                    0xfe7468652070726f706f73616c2073686f756c64206e6f7420636f6e666c696374207769746820746865206f6e676f696e672070726f706f7361,
                                    mem[286 len 6]
                else:
                    if uint32(status[arg1].field_448 + status[arg1].field_384) >= block.timestamp:
                        if bool(status[arg1].field_480) != 1:
                            revert with 0, 
                                        32,
                                        58,
                                        0xfe7468652070726f706f73616c2073686f756c64206e6f7420636f6e666c696374207769746820746865206f6e676f696e672070726f706f7361,
                                        mem[286 len 6]
                        if uint32(status[arg1].field_448 + status[arg1].field_416) >= block.timestamp:
                            revert with 0, 
                                        32,
                                        58,
                                        0xfe7468652070726f706f73616c2073686f756c64206e6f7420636f6e666c696374207769746820746865206f6e676f696e672070726f706f7361,
                                        mem[286 len 6]
            require ext_code.size(taxTokenAddress)
            staticcall taxTokenAddress.'TH!s' with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                revert with 0, 32, 35, 0x6474686520746f6b656e41646472657373206973206e6f742077686974656c69737465, mem[263 len 29]
            stor2.length++
            stor2[stor2.length] = sha3(arg1)
            status[arg1].field_0 = 0
            status[arg1].field_256 = 0
            status[arg1].field_128 = uint128(uint16(stor1.field_32) * ext_call.return_data[0] / 10000)
            status[arg1].field_256 = 0
            status[arg1].field_512 = 0
            status[arg1].field_384 = uint32(block.timestamp + uint32(stor0.field_160))
            status[arg1].field_416 = uint32(block.timestamp + uint32(stor0.field_192))
            status[arg1].field_448 = uint32(stor0.field_224)
            status[arg1].field_480 = 0
            status[arg1].field_488 = 0
            infoDelistWhitelist[arg1] = arg1
            if uint128(uint16(stor1.field_32) * ext_call.return_data[0] / 10000) + userStatus[sha3(arg1)][msg.sender].field_0 < userStatus[sha3(arg1)][msg.sender].field_0:
                revert with 0, 'SafeMath: addition overflow'
            if uint128(uint16(stor1.field_32) * ext_call.return_data[0] / 10000) + userStatus[sha3(arg1)][msg.sender].field_0 >= 0x100000000000000000000000000000000:
                revert with 0, 32, 39, 0x6453616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974, mem[651 len 25]
            userStatus[sha3(arg1)][msg.sender].field_0 = uint128(uint128(uint16(stor1.field_32) * ext_call.return_data[0] / 10000) + userStatus[sha3(arg1)][msg.sender].field_0)
            require ext_code.size(taxTokenAddress)
            staticcall taxTokenAddress.0x179d342f with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getStakingAddress() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x684da514 with:
                 gas gas_remaining wei
                args msg.sender, uint128(uint16(stor1.field_32) * ext_call.return_data[0] / 10000)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x572a3baf: address(arg1), block.timestamp + uint32(stor0.field_160) << 224, block.timestamp + uint32(stor0.field_192) << 224, uint32(stor0.field_224), sha3(arg1)
            emit 0xbf2f5145: 1, uint128(uint16(stor1.field_32) * ext_call.return_data[0] / 10000), sha3(arg1), msg.sender
    else:
        if uint16(stor1.field_0) * ext_call.return_data[0] / ext_call.return_data[0] != uint16(stor1.field_0):
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if uint16(stor1.field_0) * ext_call.return_data[0] / 10000 >= 0x100000000000000000000000000000000:
            revert with 0, 32, 39, 0x6453616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974, mem[267 len 25]
        require ext_code.size(taxTokenAddress)
        staticcall taxTokenAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if status[arg1].field_416:
                if status[arg1].field_480:
                    if bool(status[arg1].field_480) != 1:
                        revert with 0, 
                                    32,
                                    58,
                                    0xfe7468652070726f706f73616c2073686f756c64206e6f7420636f6e666c696374207769746820746865206f6e676f696e672070726f706f7361,
                                    mem[286 len 6]
                    if uint32(status[arg1].field_448 + status[arg1].field_416) >= block.timestamp:
                        revert with 0, 
                                    32,
                                    58,
                                    0xfe7468652070726f706f73616c2073686f756c64206e6f7420636f6e666c696374207769746820746865206f6e676f696e672070726f706f7361,
                                    mem[286 len 6]
                else:
                    if uint32(status[arg1].field_448 + status[arg1].field_384) >= block.timestamp:
                        if bool(status[arg1].field_480) != 1:
                            revert with 0, 
                                        32,
                                        58,
                                        0xfe7468652070726f706f73616c2073686f756c64206e6f7420636f6e666c696374207769746820746865206f6e676f696e672070726f706f7361,
                                        mem[286 len 6]
                        if uint32(status[arg1].field_448 + status[arg1].field_416) >= block.timestamp:
                            revert with 0, 
                                        32,
                                        58,
                                        0xfe7468652070726f706f73616c2073686f756c64206e6f7420636f6e666c696374207769746820746865206f6e676f696e672070726f706f7361,
                                        mem[286 len 6]
            require ext_code.size(taxTokenAddress)
            staticcall taxTokenAddress.'TH!s' with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                revert with 0, 32, 35, 0x6474686520746f6b656e41646472657373206973206e6f742077686974656c69737465, mem[263 len 29]
            stor2.length++
            stor2[stor2.length] = sha3(arg1)
            status[arg1].field_0 = uint128(uint16(stor1.field_0) * ext_call.return_data[0] / 10000)
            status[arg1].field_128 = 0
            status[arg1].field_256 = 0
            status[arg1].field_256 = 0
            status[arg1].field_512 = 0
            status[arg1].field_384 = uint32(block.timestamp + uint32(stor0.field_160))
            status[arg1].field_416 = uint32(block.timestamp + uint32(stor0.field_192))
            status[arg1].field_448 = uint32(stor0.field_224)
            status[arg1].field_480 = 0
            status[arg1].field_488 = 0
            infoDelistWhitelist[arg1] = arg1
            if userStatus[sha3(arg1)][msg.sender].field_0 < userStatus[sha3(arg1)][msg.sender].field_0:
                revert with 0, 'SafeMath: addition overflow'
            if userStatus[sha3(arg1)][msg.sender].field_0 >= 0x100000000000000000000000000000000:
                revert with 0, 32, 39, 0x6453616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974, mem[651 len 25]
            userStatus[sha3(arg1)][msg.sender].field_0 = userStatus[sha3(arg1)][msg.sender].field_0
            require ext_code.size(taxTokenAddress)
            staticcall taxTokenAddress.0x179d342f with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getStakingAddress() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x684da514 with:
                 gas gas_remaining wei
                args msg.sender, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x572a3baf: address(arg1), block.timestamp + uint32(stor0.field_160) << 224, block.timestamp + uint32(stor0.field_192) << 224, uint32(stor0.field_224), sha3(arg1)
            emit 0xbf2f5145: 1, 0, sha3(arg1), msg.sender
        else:
            if uint16(stor1.field_32) * ext_call.return_data[0] / ext_call.return_data[0] != uint16(stor1.field_32):
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if uint16(stor1.field_32) * ext_call.return_data[0] / 10000 >= 0x100000000000000000000000000000000:
                revert with 0, 32, 39, 0x6453616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974, mem[267 len 25]
            if status[arg1].field_416:
                if status[arg1].field_480:
                    if bool(status[arg1].field_480) != 1:
                        revert with 0, 
                                    32,
                                    58,
                                    0xfe7468652070726f706f73616c2073686f756c64206e6f7420636f6e666c696374207769746820746865206f6e676f696e672070726f706f7361,
                                    mem[286 len 6]
                    if uint32(status[arg1].field_448 + status[arg1].field_416) >= block.timestamp:
                        revert with 0, 
                                    32,
                                    58,
                                    0xfe7468652070726f706f73616c2073686f756c64206e6f7420636f6e666c696374207769746820746865206f6e676f696e672070726f706f7361,
                                    mem[286 len 6]
                else:
                    if uint32(status[arg1].field_448 + status[arg1].field_384) >= block.timestamp:
                        if bool(status[arg1].field_480) != 1:
                            revert with 0, 
                                        32,
                                        58,
                                        0xfe7468652070726f706f73616c2073686f756c64206e6f7420636f6e666c696374207769746820746865206f6e676f696e672070726f706f7361,
                                        mem[286 len 6]
                        if uint32(status[arg1].field_448 + status[arg1].field_416) >= block.timestamp:
                            revert with 0, 
                                        32,
                                        58,
                                        0xfe7468652070726f706f73616c2073686f756c64206e6f7420636f6e666c696374207769746820746865206f6e676f696e672070726f706f7361,
                                        mem[286 len 6]
            require ext_code.size(taxTokenAddress)
            staticcall taxTokenAddress.'TH!s' with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                revert with 0, 32, 35, 0x6474686520746f6b656e41646472657373206973206e6f742077686974656c69737465, mem[263 len 29]
            stor2.length++
            stor2[stor2.length] = sha3(arg1)
            status[arg1].field_0 = uint128(uint16(stor1.field_0) * ext_call.return_data[0] / 10000)
            status[arg1].field_128 = uint128(uint16(stor1.field_32) * ext_call.return_data[0] / 10000)
            status[arg1].field_256 = 0
            status[arg1].field_512 = 0
            status[arg1].field_384 = uint32(block.timestamp + uint32(stor0.field_160))
            status[arg1].field_416 = uint32(block.timestamp + uint32(stor0.field_192))
            status[arg1].field_448 = uint32(stor0.field_224)
            status[arg1].field_480 = 0
            status[arg1].field_488 = 0
            infoDelistWhitelist[arg1] = arg1
            if uint128(uint16(stor1.field_32) * ext_call.return_data[0] / 10000) + userStatus[sha3(arg1)][msg.sender].field_0 < userStatus[sha3(arg1)][msg.sender].field_0:
                revert with 0, 'SafeMath: addition overflow'
            if uint128(uint16(stor1.field_32) * ext_call.return_data[0] / 10000) + userStatus[sha3(arg1)][msg.sender].field_0 >= 0x100000000000000000000000000000000:
                revert with 0, 32, 39, 0x6453616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974, mem[651 len 25]
            userStatus[sha3(arg1)][msg.sender].field_0 = uint128(uint128(uint16(stor1.field_32) * ext_call.return_data[0] / 10000) + userStatus[sha3(arg1)][msg.sender].field_0)
            require ext_code.size(taxTokenAddress)
            staticcall taxTokenAddress.0x179d342f with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getStakingAddress() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x684da514 with:
                 gas gas_remaining wei
                args msg.sender, uint128(uint16(stor1.field_32) * ext_call.return_data[0] / 10000)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x572a3baf: address(arg1), block.timestamp + uint32(stor0.field_160) << 224, block.timestamp + uint32(stor0.field_192) << 224, uint32(stor0.field_224), sha3(arg1)
            emit 0xbf2f5145: 1, uint128(uint16(stor1.field_32) * ext_call.return_data[0] / 10000), sha3(arg1), msg.sender
}

function proposeUpdateWhitelist(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg2)
    staticcall arg2.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    staticcall arg2.latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp >= 4294967296:
        revert with 0, 32, 38, 0x6553616665436173743a2076616c756520646f65736e27742066697420696e20333220626974, mem[298 len 26]
    require ext_code.size(taxTokenAddress)
    staticcall taxTokenAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(taxTokenAddress)
        staticcall taxTokenAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if status[address(arg1)][arg2].field_416:
                if status[address(arg1)][arg2].field_480:
                    if bool(status[address(arg1)][arg2].field_480) != 1:
                        revert with 0, 
                                    32,
                                    58,
                                    0xfe7468652070726f706f73616c2073686f756c64206e6f7420636f6e666c696374207769746820746865206f6e676f696e672070726f706f7361,
                                    mem[318 len 6]
                    if uint32(status[address(arg1)][arg2].field_448 + status[address(arg1)][arg2].field_416) >= block.timestamp:
                        revert with 0, 
                                    32,
                                    58,
                                    0xfe7468652070726f706f73616c2073686f756c64206e6f7420636f6e666c696374207769746820746865206f6e676f696e672070726f706f7361,
                                    mem[318 len 6]
                else:
                    if uint32(status[address(arg1)][arg2].field_448 + status[address(arg1)][arg2].field_384) >= block.timestamp:
                        if bool(status[address(arg1)][arg2].field_480) != 1:
                            revert with 0, 
                                        32,
                                        58,
                                        0xfe7468652070726f706f73616c2073686f756c64206e6f7420636f6e666c696374207769746820746865206f6e676f696e672070726f706f7361,
                                        mem[318 len 6]
                        if uint32(status[address(arg1)][arg2].field_448 + status[address(arg1)][arg2].field_416) >= block.timestamp:
                            revert with 0, 
                                        32,
                                        58,
                                        0xfe7468652070726f706f73616c2073686f756c64206e6f7420636f6e666c696374207769746820746865206f6e676f696e672070726f706f7361,
                                        mem[318 len 6]
            stor2.length++
            stor2[stor2.length] = sha3(address(arg1), arg2)
            status[address(arg1)][arg2].field_0 = 0
            status[address(arg1)][arg2].field_256 = 0
            status[address(arg1)][arg2].field_128 = 0
            status[address(arg1)][arg2].field_256 = 0
            status[address(arg1)][arg2].field_256 = 0
            status[address(arg1)][arg2].field_512 = 0
            status[address(arg1)][arg2].field_384 = uint32(block.timestamp + uint32(stor0.field_160))
            status[address(arg1)][arg2].field_416 = uint32(block.timestamp + uint32(stor0.field_192))
            status[address(arg1)][arg2].field_448 = uint32(stor0.field_224)
            status[address(arg1)][arg2].field_480 = 0
            status[address(arg1)][arg2].field_488 = 0
            infoUpdateWhitelist[address(arg1)][arg2].field_0 = arg1
            infoUpdateWhitelist[address(arg1)][arg2].field_256 = arg2
            if userStatus[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('param', 'arg2'))][msg.sender].field_0 < userStatus[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('param', 'arg2'))][msg.sender].field_0:
                revert with 0, 'SafeMath: addition overflow'
            if userStatus[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('param', 'arg2'))][msg.sender].field_0 >= 0x100000000000000000000000000000000:
                revert with 0, 32, 39, 0x6453616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974, mem[715 len 25]
            userStatus[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('param', 'arg2'))][msg.sender].field_0 = userStatus[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('param', 'arg2'))][msg.sender].field_0
            require ext_code.size(taxTokenAddress)
            staticcall taxTokenAddress.0x179d342f with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getStakingAddress() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x684da514 with:
                 gas gas_remaining wei
                args msg.sender, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0xc79d0bdd: address(arg1), address(arg2), block.timestamp + uint32(stor0.field_160) << 224, block.timestamp + uint32(stor0.field_192) << 224, uint32(stor0.field_224), sha3(address(arg1), arg2)
            emit 0xbf2f5145: 1, 0, sha3(address(arg1), arg2), msg.sender
        else:
            if uint16(stor1.field_32) * ext_call.return_data[0] / ext_call.return_data[0] != uint16(stor1.field_32):
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
            if uint16(stor1.field_32) * ext_call.return_data[0] / 10000 >= 0x100000000000000000000000000000000:
                revert with 0, 32, 39, 0x6453616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974, mem[299 len 25]
            if status[address(arg1)][arg2].field_416:
                if status[address(arg1)][arg2].field_480:
                    if bool(status[address(arg1)][arg2].field_480) != 1:
                        revert with 0, 
                                    32,
                                    58,
                                    0xfe7468652070726f706f73616c2073686f756c64206e6f7420636f6e666c696374207769746820746865206f6e676f696e672070726f706f7361,
                                    mem[318 len 6]
                    if uint32(status[address(arg1)][arg2].field_448 + status[address(arg1)][arg2].field_416) >= block.timestamp:
                        revert with 0, 
                                    32,
                                    58,
                                    0xfe7468652070726f706f73616c2073686f756c64206e6f7420636f6e666c696374207769746820746865206f6e676f696e672070726f706f7361,
                                    mem[318 len 6]
                else:
                    if uint32(status[address(arg1)][arg2].field_448 + status[address(arg1)][arg2].field_384) >= block.timestamp:
                        if bool(status[address(arg1)][arg2].field_480) != 1:
                            revert with 0, 
                                        32,
                                        58,
                                        0xfe7468652070726f706f73616c2073686f756c64206e6f7420636f6e666c696374207769746820746865206f6e676f696e672070726f706f7361,
                                        mem[318 len 6]
                        if uint32(status[address(arg1)][arg2].field_448 + status[address(arg1)][arg2].field_416) >= block.timestamp:
                            revert with 0, 
                                        32,
                                        58,
                                        0xfe7468652070726f706f73616c2073686f756c64206e6f7420636f6e666c696374207769746820746865206f6e676f696e672070726f706f7361,
                                        mem[318 len 6]
            stor2.length++
            stor2[stor2.length] = sha3(address(arg1), arg2)
            status[address(arg1)][arg2].field_0 = 0
            status[address(arg1)][arg2].field_256 = 0
            status[address(arg1)][arg2].field_128 = uint128(uint16(stor1.field_32) * ext_call.return_data[0] / 10000)
            status[address(arg1)][arg2].field_256 = 0
            status[address(arg1)][arg2].field_512 = 0
            status[address(arg1)][arg2].field_384 = uint32(block.timestamp + uint32(stor0.field_160))
            status[address(arg1)][arg2].field_416 = uint32(block.timestamp + uint32(stor0.field_192))
            status[address(arg1)][arg2].field_448 = uint32(stor0.field_224)
            status[address(arg1)][arg2].field_480 = 0
            status[address(arg1)][arg2].field_488 = 0
            infoUpdateWhitelist[address(arg1)][arg2].field_0 = arg1
            infoUpdateWhitelist[address(arg1)][arg2].field_256 = arg2
            if uint128(uint16(stor1.field_32) * ext_call.return_data[0] / 10000) + userStatus[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('param', 'arg2'))][msg.sender].field_0 < userStatus[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('param', 'arg2'))][msg.sender].field_0:
                revert with 0, 'SafeMath: addition overflow'
            if uint128(uint16(stor1.field_32) * ext_call.return_data[0] / 10000) + userStatus[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('param', 'arg2'))][msg.sender].field_0 >= 0x100000000000000000000000000000000:
                revert with 0, 32, 39, 0x6453616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974, mem[715 len 25]
            userStatus[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('param', 'arg2'))][msg.sender].field_0 = uint128(uint128(uint16(stor1.field_32) * ext_call.return_data[0] / 10000) + userStatus[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('param', 'arg2'))][msg.sender].field_0)
            require ext_code.size(taxTokenAddress)
            staticcall taxTokenAddress.0x179d342f with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getStakingAddress() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x684da514 with:
                 gas gas_remaining wei
                args msg.sender, uint128(uint16(stor1.field_32) * ext_call.return_data[0] / 10000)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0xc79d0bdd: address(arg1), address(arg2), block.timestamp + uint32(stor0.field_160) << 224, block.timestamp + uint32(stor0.field_192) << 224, uint32(stor0.field_224), sha3(address(arg1), arg2)
            emit 0xbf2f5145: 1, uint128(uint16(stor1.field_32) * ext_call.return_data[0] / 10000), sha3(address(arg1), arg2), msg.sender
    else:
        if uint16(stor1.field_0) * ext_call.return_data[0] / ext_call.return_data[0] != uint16(stor1.field_0):
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
        if uint16(stor1.field_0) * ext_call.return_data[0] / 10000 >= 0x100000000000000000000000000000000:
            revert with 0, 32, 39, 0x6453616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974, mem[299 len 25]
        require ext_code.size(taxTokenAddress)
        staticcall taxTokenAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if status[address(arg1)][arg2].field_416:
                if status[address(arg1)][arg2].field_480:
                    if bool(status[address(arg1)][arg2].field_480) != 1:
                        revert with 0, 
                                    32,
                                    58,
                                    0xfe7468652070726f706f73616c2073686f756c64206e6f7420636f6e666c696374207769746820746865206f6e676f696e672070726f706f7361,
                                    mem[318 len 6]
                    if uint32(status[address(arg1)][arg2].field_448 + status[address(arg1)][arg2].field_416) >= block.timestamp:
                        revert with 0, 
                                    32,
                                    58,
                                    0xfe7468652070726f706f73616c2073686f756c64206e6f7420636f6e666c696374207769746820746865206f6e676f696e672070726f706f7361,
                                    mem[318 len 6]
                else:
                    if uint32(status[address(arg1)][arg2].field_448 + status[address(arg1)][arg2].field_384) >= block.timestamp:
                        if bool(status[address(arg1)][arg2].field_480) != 1:
                            revert with 0, 
                                        32,
                                        58,
                                        0xfe7468652070726f706f73616c2073686f756c64206e6f7420636f6e666c696374207769746820746865206f6e676f696e672070726f706f7361,
                                        mem[318 len 6]
                        if uint32(status[address(arg1)][arg2].field_448 + status[address(arg1)][arg2].field_416) >= block.timestamp:
                            revert with 0, 
                                        32,
                                        58,
                                        0xfe7468652070726f706f73616c2073686f756c64206e6f7420636f6e666c696374207769746820746865206f6e676f696e672070726f706f7361,
                                        mem[318 len 6]
            stor2.length++
            stor2[stor2.length] = sha3(address(arg1), arg2)
            status[address(arg1)][arg2].field_0 = uint128(uint16(stor1.field_0) * ext_call.return_data[0] / 10000)
            status[address(arg1)][arg2].field_128 = 0
            status[address(arg1)][arg2].field_256 = 0
            status[address(arg1)][arg2].field_256 = 0
            status[address(arg1)][arg2].field_512 = 0
            status[address(arg1)][arg2].field_384 = uint32(block.timestamp + uint32(stor0.field_160))
            status[address(arg1)][arg2].field_416 = uint32(block.timestamp + uint32(stor0.field_192))
            status[address(arg1)][arg2].field_448 = uint32(stor0.field_224)
            status[address(arg1)][arg2].field_480 = 0
            status[address(arg1)][arg2].field_488 = 0
            infoUpdateWhitelist[address(arg1)][arg2].field_0 = arg1
            infoUpdateWhitelist[address(arg1)][arg2].field_256 = arg2
            if userStatus[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('param', 'arg2'))][msg.sender].field_0 < userStatus[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('param', 'arg2'))][msg.sender].field_0:
                revert with 0, 'SafeMath: addition overflow'
            if userStatus[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('param', 'arg2'))][msg.sender].field_0 >= 0x100000000000000000000000000000000:
                revert with 0, 32, 39, 0x6453616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974, mem[715 len 25]
            userStatus[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('param', 'arg2'))][msg.sender].field_0 = userStatus[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('param', 'arg2'))][msg.sender].field_0
            require ext_code.size(taxTokenAddress)
            staticcall taxTokenAddress.0x179d342f with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getStakingAddress() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x684da514 with:
                 gas gas_remaining wei
                args msg.sender, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0xc79d0bdd: address(arg1), address(arg2), block.timestamp + uint32(stor0.field_160) << 224, block.timestamp + uint32(stor0.field_192) << 224, uint32(stor0.field_224), sha3(address(arg1), arg2)
            emit 0xbf2f5145: 1, 0, sha3(address(arg1), arg2), msg.sender
        else:
            if uint16(stor1.field_32) * ext_call.return_data[0] / ext_call.return_data[0] != uint16(stor1.field_32):
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
            if uint16(stor1.field_32) * ext_call.return_data[0] / 10000 >= 0x100000000000000000000000000000000:
                revert with 0, 32, 39, 0x6453616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974, mem[299 len 25]
            if status[address(arg1)][arg2].field_416:
                if status[address(arg1)][arg2].field_480:
                    if bool(status[address(arg1)][arg2].field_480) != 1:
                        revert with 0, 
                                    32,
                                    58,
                                    0xfe7468652070726f706f73616c2073686f756c64206e6f7420636f6e666c696374207769746820746865206f6e676f696e672070726f706f7361,
                                    mem[318 len 6]
                    if uint32(status[address(arg1)][arg2].field_448 + status[address(arg1)][arg2].field_416) >= block.timestamp:
                        revert with 0, 
                                    32,
                                    58,
                                    0xfe7468652070726f706f73616c2073686f756c64206e6f7420636f6e666c696374207769746820746865206f6e676f696e672070726f706f7361,
                                    mem[318 len 6]
                else:
                    if uint32(status[address(arg1)][arg2].field_448 + status[address(arg1)][arg2].field_384) >= block.timestamp:
                        if bool(status[address(arg1)][arg2].field_480) != 1:
                            revert with 0, 
                                        32,
                                        58,
                                        0xfe7468652070726f706f73616c2073686f756c64206e6f7420636f6e666c696374207769746820746865206f6e676f696e672070726f706f7361,
                                        mem[318 len 6]
                        if uint32(status[address(arg1)][arg2].field_448 + status[address(arg1)][arg2].field_416) >= block.timestamp:
                            revert with 0, 
                                        32,
                                        58,
                                        0xfe7468652070726f706f73616c2073686f756c64206e6f7420636f6e666c696374207769746820746865206f6e676f696e672070726f706f7361,
                                        mem[318 len 6]
            stor2.length++
            stor2[stor2.length] = sha3(address(arg1), arg2)
            status[address(arg1)][arg2].field_0 = uint128(uint16(stor1.field_0) * ext_call.return_data[0] / 10000)
            status[address(arg1)][arg2].field_128 = uint128(uint16(stor1.field_32) * ext_call.return_data[0] / 10000)
            status[address(arg1)][arg2].field_256 = 0
            status[address(arg1)][arg2].field_512 = 0
            status[address(arg1)][arg2].field_384 = uint32(block.timestamp + uint32(stor0.field_160))
            status[address(arg1)][arg2].field_416 = uint32(block.timestamp + uint32(stor0.field_192))
            status[address(arg1)][arg2].field_448 = uint32(stor0.field_224)
            status[address(arg1)][arg2].field_480 = 0
            status[address(arg1)][arg2].field_488 = 0
            infoUpdateWhitelist[address(arg1)][arg2].field_0 = arg1
            infoUpdateWhitelist[address(arg1)][arg2].field_256 = arg2
            if uint128(uint16(stor1.field_32) * ext_call.return_data[0] / 10000) + userStatus[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('param', 'arg2'))][msg.sender].field_0 < userStatus[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('param', 'arg2'))][msg.sender].field_0:
                revert with 0, 'SafeMath: addition overflow'
            if uint128(uint16(stor1.field_32) * ext_call.return_data[0] / 10000) + userStatus[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('param', 'arg2'))][msg.sender].field_0 >= 0x100000000000000000000000000000000:
                revert with 0, 32, 39, 0x6453616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974, mem[715 len 25]
            userStatus[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('param', 'arg2'))][msg.sender].field_0 = uint128(uint128(uint16(stor1.field_32) * ext_call.return_data[0] / 10000) + userStatus[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('param', 'arg2'))][msg.sender].field_0)
            require ext_code.size(taxTokenAddress)
            staticcall taxTokenAddress.0x179d342f with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getStakingAddress() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x684da514 with:
                 gas gas_remaining wei
                args msg.sender, uint128(uint16(stor1.field_32) * ext_call.return_data[0] / 10000)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0xc79d0bdd: address(arg1), address(arg2), block.timestamp + uint32(stor0.field_160) << 224, block.timestamp + uint32(stor0.field_192) << 224, uint32(stor0.field_224), sha3(address(arg1), arg2)
            emit 0xbf2f5145: 1, uint128(uint16(stor1.field_32) * ext_call.return_data[0] / 10000), sha3(address(arg1), arg2), msg.sender
}

function getProposals(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        if not arg2:
            require (3 * stor2.length) - 3 <= test266151307()
            mem[96] = (3 * stor2.length) - 3
            mem[64] = (32 * (3 * stor2.length) - 3) + 128
            if not (3 * stor2.length) - 3:
                idx = 0
                while idx < stor2.length - 1:
                    require stor2.length + -idx - 1 < stor2.length
                    mem[0] = 2
                    _586 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_586] = 0
                    mem[_586 + 32] = 0
                    mem[_586 + 64] = 0
                    mem[_586 + 96] = 0
                    mem[_586 + 128] = 0
                    mem[_586 + 160] = 0
                    mem[_586 + 192] = 0
                    mem[_586 + 224] = 0
                    mem[0] = stor[('name', 'stor2', 2) + stor2.length - idx]
                    mem[32] = 4
                    _607 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_607] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_0
                    mem[_607 + 32] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_128
                    mem[_607 + 64] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_256
                    mem[_607 + 96] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_384
                    mem[_607 + 128] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_416
                    mem[_607 + 160] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_448
                    mem[_607 + 192] = bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_480)
                    mem[_607 + 224] = bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_488)
                    require 3 * idx < mem[96]
                    mem[(32 * 3 * idx) + 128] = stor[('name', 'stor2', 2) + stor2.length - idx]
                    _696 = mem[64]
                    mem[mem[64] + 32] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_128 << 128
                    mem[mem[64] + 48] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_256
                    _697 = mem[64]
                    mem[mem[64]] = 32
                    mem[64] = mem[64] + 64
                    require mem[_697] >= 32
                    require (3 * idx) + 1 < mem[96]
                    mem[(32 * (3 * idx) + 1) + 128] = mem[_697 + 32]
                    mem[_696 + 96] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_0
                    mem[_696 + 112] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_384 << 224
                    mem[_696 + 116] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_416 << 224
                    mem[_696 + 120] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_448 << 224
                    mem[_696 + 124] = bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_480) << 248
                    mem[_696 + 125] = bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_488) << 248
                    mem[_696 + 126] = 0
                    mem[_696 + 64] = 32
                    mem[64] = _696 + 128
                    require (3 * idx) + 2 < mem[96]
                    mem[(32 * (3 * idx) + 2) + 128] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_0, status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_384, status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_416, status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_448, Mask(8, 248, bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_480)) >> 248, Mask(8, 248, bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_488)) >> 248, 0
                    idx = idx + 1
                    continue 
            else:
                mem[128 len 32 * (3 * stor2.length) - 3] = call.data[calldata.size len 32 * (3 * stor2.length) - 3]
                idx = 0
                while idx < stor2.length - 1:
                    require stor2.length + -idx - 1 < stor2.length
                    mem[0] = 2
                    _587 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_587] = 0
                    mem[_587 + 32] = 0
                    mem[_587 + 64] = 0
                    mem[_587 + 96] = 0
                    mem[_587 + 128] = 0
                    mem[_587 + 160] = 0
                    mem[_587 + 192] = 0
                    mem[_587 + 224] = 0
                    mem[0] = stor[('name', 'stor2', 2) + stor2.length - idx]
                    mem[32] = 4
                    _612 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_612] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_0
                    mem[_612 + 32] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_128
                    mem[_612 + 64] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_256
                    mem[_612 + 96] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_384
                    mem[_612 + 128] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_416
                    mem[_612 + 160] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_448
                    mem[_612 + 192] = bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_480)
                    mem[_612 + 224] = bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_488)
                    require 3 * idx < mem[96]
                    mem[(32 * 3 * idx) + 128] = stor[('name', 'stor2', 2) + stor2.length - idx]
                    _701 = mem[64]
                    mem[mem[64] + 32] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_128 << 128
                    mem[mem[64] + 48] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_256
                    _702 = mem[64]
                    mem[mem[64]] = 32
                    mem[64] = mem[64] + 64
                    require mem[_702] >= 32
                    require (3 * idx) + 1 < mem[96]
                    mem[(32 * (3 * idx) + 1) + 128] = mem[_702 + 32]
                    mem[_701 + 96] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_0
                    mem[_701 + 112] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_384 << 224
                    mem[_701 + 116] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_416 << 224
                    mem[_701 + 120] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_448 << 224
                    mem[_701 + 124] = bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_480) << 248
                    mem[_701 + 125] = bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_488) << 248
                    mem[_701 + 126] = 0
                    mem[_701 + 64] = 32
                    mem[64] = _701 + 128
                    require (3 * idx) + 2 < mem[96]
                    mem[(32 * (3 * idx) + 2) + 128] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_0, status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_384, status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_416, status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_448, Mask(8, 248, bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_480)) >> 248, Mask(8, 248, bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_488)) >> 248, 0
                    idx = idx + 1
                    continue 
        else:
            if arg2 <= stor2.length - 1:
                require 3 * arg2 <= test266151307()
                mem[96] = 3 * arg2
                mem[64] = (32 * 3 * arg2) + 128
                if not 3 * arg2:
                    idx = 0
                    while idx < arg2:
                        require stor2.length + -idx - 1 < stor2.length
                        mem[0] = 2
                        _588 = mem[64]
                        mem[64] = mem[64] + 256
                        mem[_588] = 0
                        mem[_588 + 32] = 0
                        mem[_588 + 64] = 0
                        mem[_588 + 96] = 0
                        mem[_588 + 128] = 0
                        mem[_588 + 160] = 0
                        mem[_588 + 192] = 0
                        mem[_588 + 224] = 0
                        mem[0] = stor[('name', 'stor2', 2) + stor2.length - idx]
                        mem[32] = 4
                        _617 = mem[64]
                        mem[64] = mem[64] + 256
                        mem[_617] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_0
                        mem[_617 + 32] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_128
                        mem[_617 + 64] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_256
                        mem[_617 + 96] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_384
                        mem[_617 + 128] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_416
                        mem[_617 + 160] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_448
                        mem[_617 + 192] = bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_480)
                        mem[_617 + 224] = bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_488)
                        require 3 * idx < mem[96]
                        mem[(32 * 3 * idx) + 128] = stor[('name', 'stor2', 2) + stor2.length - idx]
                        _706 = mem[64]
                        mem[mem[64] + 32] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_128 << 128
                        mem[mem[64] + 48] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_256
                        _707 = mem[64]
                        mem[mem[64]] = 32
                        mem[64] = mem[64] + 64
                        require mem[_707] >= 32
                        require (3 * idx) + 1 < mem[96]
                        mem[(32 * (3 * idx) + 1) + 128] = mem[_707 + 32]
                        mem[_706 + 96] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_0
                        mem[_706 + 112] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_384 << 224
                        mem[_706 + 116] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_416 << 224
                        mem[_706 + 120] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_448 << 224
                        mem[_706 + 124] = bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_480) << 248
                        mem[_706 + 125] = bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_488) << 248
                        mem[_706 + 126] = 0
                        mem[_706 + 64] = 32
                        mem[64] = _706 + 128
                        require (3 * idx) + 2 < mem[96]
                        mem[(32 * (3 * idx) + 2) + 128] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_0, status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_384, status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_416, status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_448, Mask(8, 248, bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_480)) >> 248, Mask(8, 248, bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_488)) >> 248, 0
                        idx = idx + 1
                        continue 
                else:
                    mem[128 len 32 * 3 * arg2] = call.data[calldata.size len 32 * 3 * arg2]
                    idx = 0
                    while idx < arg2:
                        require stor2.length + -idx - 1 < stor2.length
                        mem[0] = 2
                        _589 = mem[64]
                        mem[64] = mem[64] + 256
                        mem[_589] = 0
                        mem[_589 + 32] = 0
                        mem[_589 + 64] = 0
                        mem[_589 + 96] = 0
                        mem[_589 + 128] = 0
                        mem[_589 + 160] = 0
                        mem[_589 + 192] = 0
                        mem[_589 + 224] = 0
                        mem[0] = stor[('name', 'stor2', 2) + stor2.length - idx]
                        mem[32] = 4
                        _622 = mem[64]
                        mem[64] = mem[64] + 256
                        mem[_622] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_0
                        mem[_622 + 32] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_128
                        mem[_622 + 64] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_256
                        mem[_622 + 96] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_384
                        mem[_622 + 128] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_416
                        mem[_622 + 160] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_448
                        mem[_622 + 192] = bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_480)
                        mem[_622 + 224] = bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_488)
                        require 3 * idx < mem[96]
                        mem[(32 * 3 * idx) + 128] = stor[('name', 'stor2', 2) + stor2.length - idx]
                        _711 = mem[64]
                        mem[mem[64] + 32] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_128 << 128
                        mem[mem[64] + 48] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_256
                        _712 = mem[64]
                        mem[mem[64]] = 32
                        mem[64] = mem[64] + 64
                        require mem[_712] >= 32
                        require (3 * idx) + 1 < mem[96]
                        mem[(32 * (3 * idx) + 1) + 128] = mem[_712 + 32]
                        mem[_711 + 96] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_0
                        mem[_711 + 112] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_384 << 224
                        mem[_711 + 116] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_416 << 224
                        mem[_711 + 120] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_448 << 224
                        mem[_711 + 124] = bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_480) << 248
                        mem[_711 + 125] = bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_488) << 248
                        mem[_711 + 126] = 0
                        mem[_711 + 64] = 32
                        mem[64] = _711 + 128
                        require (3 * idx) + 2 < mem[96]
                        mem[(32 * (3 * idx) + 2) + 128] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_0, status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_384, status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_416, status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_448, Mask(8, 248, bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_480)) >> 248, Mask(8, 248, bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_488)) >> 248, 0
                        idx = idx + 1
                        continue 
            else:
                require (3 * stor2.length) - 3 <= test266151307()
                mem[96] = (3 * stor2.length) - 3
                mem[64] = (32 * (3 * stor2.length) - 3) + 128
                if not (3 * stor2.length) - 3:
                    idx = 0
                    while idx < stor2.length - 1:
                        require stor2.length + -idx - 1 < stor2.length
                        mem[0] = 2
                        _590 = mem[64]
                        mem[64] = mem[64] + 256
                        mem[_590] = 0
                        mem[_590 + 32] = 0
                        mem[_590 + 64] = 0
                        mem[_590 + 96] = 0
                        mem[_590 + 128] = 0
                        mem[_590 + 160] = 0
                        mem[_590 + 192] = 0
                        mem[_590 + 224] = 0
                        mem[0] = stor[('name', 'stor2', 2) + stor2.length - idx]
                        mem[32] = 4
                        _627 = mem[64]
                        mem[64] = mem[64] + 256
                        mem[_627] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_0
                        mem[_627 + 32] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_128
                        mem[_627 + 64] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_256
                        mem[_627 + 96] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_384
                        mem[_627 + 128] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_416
                        mem[_627 + 160] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_448
                        mem[_627 + 192] = bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_480)
                        mem[_627 + 224] = bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_488)
                        require 3 * idx < mem[96]
                        mem[(32 * 3 * idx) + 128] = stor[('name', 'stor2', 2) + stor2.length - idx]
                        _716 = mem[64]
                        mem[mem[64] + 32] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_128 << 128
                        mem[mem[64] + 48] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_256
                        _717 = mem[64]
                        mem[mem[64]] = 32
                        mem[64] = mem[64] + 64
                        require mem[_717] >= 32
                        require (3 * idx) + 1 < mem[96]
                        mem[(32 * (3 * idx) + 1) + 128] = mem[_717 + 32]
                        mem[_716 + 96] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_0
                        mem[_716 + 112] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_384 << 224
                        mem[_716 + 116] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_416 << 224
                        mem[_716 + 120] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_448 << 224
                        mem[_716 + 124] = bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_480) << 248
                        mem[_716 + 125] = bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_488) << 248
                        mem[_716 + 126] = 0
                        mem[_716 + 64] = 32
                        mem[64] = _716 + 128
                        require (3 * idx) + 2 < mem[96]
                        mem[(32 * (3 * idx) + 2) + 128] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_0, status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_384, status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_416, status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_448, Mask(8, 248, bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_480)) >> 248, Mask(8, 248, bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_488)) >> 248, 0
                        idx = idx + 1
                        continue 
                else:
                    mem[128 len 32 * (3 * stor2.length) - 3] = call.data[calldata.size len 32 * (3 * stor2.length) - 3]
                    idx = 0
                    while idx < stor2.length - 1:
                        require stor2.length + -idx - 1 < stor2.length
                        mem[0] = 2
                        _591 = mem[64]
                        mem[64] = mem[64] + 256
                        mem[_591] = 0
                        mem[_591 + 32] = 0
                        mem[_591 + 64] = 0
                        mem[_591 + 96] = 0
                        mem[_591 + 128] = 0
                        mem[_591 + 160] = 0
                        mem[_591 + 192] = 0
                        mem[_591 + 224] = 0
                        mem[0] = stor[('name', 'stor2', 2) + stor2.length - idx]
                        mem[32] = 4
                        _632 = mem[64]
                        mem[64] = mem[64] + 256
                        mem[_632] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_0
                        mem[_632 + 32] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_128
                        mem[_632 + 64] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_256
                        mem[_632 + 96] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_384
                        mem[_632 + 128] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_416
                        mem[_632 + 160] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_448
                        mem[_632 + 192] = bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_480)
                        mem[_632 + 224] = bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_488)
                        require 3 * idx < mem[96]
                        mem[(32 * 3 * idx) + 128] = stor[('name', 'stor2', 2) + stor2.length - idx]
                        _721 = mem[64]
                        mem[mem[64] + 32] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_128 << 128
                        mem[mem[64] + 48] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_256
                        _722 = mem[64]
                        mem[mem[64]] = 32
                        mem[64] = mem[64] + 64
                        require mem[_722] >= 32
                        require (3 * idx) + 1 < mem[96]
                        mem[(32 * (3 * idx) + 1) + 128] = mem[_722 + 32]
                        mem[_721 + 96] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_0
                        mem[_721 + 112] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_384 << 224
                        mem[_721 + 116] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_416 << 224
                        mem[_721 + 120] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_448 << 224
                        mem[_721 + 124] = bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_480) << 248
                        mem[_721 + 125] = bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_488) << 248
                        mem[_721 + 126] = 0
                        mem[_721 + 64] = 32
                        mem[64] = _721 + 128
                        require (3 * idx) + 2 < mem[96]
                        mem[(32 * (3 * idx) + 2) + 128] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_0, status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_384, status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_416, status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_448, Mask(8, 248, bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_480)) >> 248, Mask(8, 248, bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_488)) >> 248, 0
                        idx = idx + 1
                        continue 
    else:
        if arg1 < stor2.length:
            if not arg2:
                require 3 * arg1 <= test266151307()
                mem[96] = 3 * arg1
                mem[64] = (32 * 3 * arg1) + 128
                if not 3 * arg1:
                    idx = 0
                    while idx < arg1:
                        require arg1 - idx < stor2.length
                        mem[0] = 2
                        _592 = mem[64]
                        mem[64] = mem[64] + 256
                        mem[_592] = 0
                        mem[_592 + 32] = 0
                        mem[_592 + 64] = 0
                        mem[_592 + 96] = 0
                        mem[_592 + 128] = 0
                        mem[_592 + 160] = 0
                        mem[_592 + 192] = 0
                        mem[_592 + 224] = 0
                        mem[0] = stor[('name', 'stor2', 2) + arg1 - idx]
                        mem[32] = 4
                        _637 = mem[64]
                        mem[64] = mem[64] + 256
                        mem[_637] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_0
                        mem[_637 + 32] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_128
                        mem[_637 + 64] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_256
                        mem[_637 + 96] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_384
                        mem[_637 + 128] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_416
                        mem[_637 + 160] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_448
                        mem[_637 + 192] = bool(status[stor[('name', 'stor2', 2) + arg1 - idx]].field_480)
                        mem[_637 + 224] = bool(status[stor[('name', 'stor2', 2) + arg1 - idx]].field_488)
                        require 3 * idx < mem[96]
                        mem[(32 * 3 * idx) + 128] = stor[('name', 'stor2', 2) + arg1 - idx]
                        _726 = mem[64]
                        mem[mem[64] + 32] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_128 << 128
                        mem[mem[64] + 48] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_256
                        _727 = mem[64]
                        mem[mem[64]] = 32
                        mem[64] = mem[64] + 64
                        require mem[_727] >= 32
                        require (3 * idx) + 1 < mem[96]
                        mem[(32 * (3 * idx) + 1) + 128] = mem[_727 + 32]
                        mem[_726 + 96] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_0
                        mem[_726 + 112] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_384 << 224
                        mem[_726 + 116] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_416 << 224
                        mem[_726 + 120] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_448 << 224
                        mem[_726 + 124] = bool(status[stor[('name', 'stor2', 2) + arg1 - idx]].field_480) << 248
                        mem[_726 + 125] = bool(status[stor[('name', 'stor2', 2) + arg1 - idx]].field_488) << 248
                        mem[_726 + 126] = 0
                        mem[_726 + 64] = 32
                        mem[64] = _726 + 128
                        require (3 * idx) + 2 < mem[96]
                        mem[(32 * (3 * idx) + 2) + 128] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_0, status[stor[('name', 'stor2', 2) + arg1 - idx]].field_384, status[stor[('name', 'stor2', 2) + arg1 - idx]].field_416, status[stor[('name', 'stor2', 2) + arg1 - idx]].field_448, Mask(8, 248, bool(status[stor[('name', 'stor2', 2) + arg1 - idx]].field_480)) >> 248, Mask(8, 248, bool(status[stor[('name', 'stor2', 2) + arg1 - idx]].field_488)) >> 248, 0
                        idx = idx + 1
                        continue 
                else:
                    mem[128 len 32 * 3 * arg1] = call.data[calldata.size len 32 * 3 * arg1]
                    idx = 0
                    while idx < arg1:
                        require arg1 - idx < stor2.length
                        mem[0] = 2
                        _593 = mem[64]
                        mem[64] = mem[64] + 256
                        mem[_593] = 0
                        mem[_593 + 32] = 0
                        mem[_593 + 64] = 0
                        mem[_593 + 96] = 0
                        mem[_593 + 128] = 0
                        mem[_593 + 160] = 0
                        mem[_593 + 192] = 0
                        mem[_593 + 224] = 0
                        mem[0] = stor[('name', 'stor2', 2) + arg1 - idx]
                        mem[32] = 4
                        _642 = mem[64]
                        mem[64] = mem[64] + 256
                        mem[_642] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_0
                        mem[_642 + 32] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_128
                        mem[_642 + 64] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_256
                        mem[_642 + 96] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_384
                        mem[_642 + 128] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_416
                        mem[_642 + 160] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_448
                        mem[_642 + 192] = bool(status[stor[('name', 'stor2', 2) + arg1 - idx]].field_480)
                        mem[_642 + 224] = bool(status[stor[('name', 'stor2', 2) + arg1 - idx]].field_488)
                        require 3 * idx < mem[96]
                        mem[(32 * 3 * idx) + 128] = stor[('name', 'stor2', 2) + arg1 - idx]
                        _731 = mem[64]
                        mem[mem[64] + 32] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_128 << 128
                        mem[mem[64] + 48] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_256
                        _732 = mem[64]
                        mem[mem[64]] = 32
                        mem[64] = mem[64] + 64
                        require mem[_732] >= 32
                        require (3 * idx) + 1 < mem[96]
                        mem[(32 * (3 * idx) + 1) + 128] = mem[_732 + 32]
                        mem[_731 + 96] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_0
                        mem[_731 + 112] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_384 << 224
                        mem[_731 + 116] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_416 << 224
                        mem[_731 + 120] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_448 << 224
                        mem[_731 + 124] = bool(status[stor[('name', 'stor2', 2) + arg1 - idx]].field_480) << 248
                        mem[_731 + 125] = bool(status[stor[('name', 'stor2', 2) + arg1 - idx]].field_488) << 248
                        mem[_731 + 126] = 0
                        mem[_731 + 64] = 32
                        mem[64] = _731 + 128
                        require (3 * idx) + 2 < mem[96]
                        mem[(32 * (3 * idx) + 2) + 128] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_0, status[stor[('name', 'stor2', 2) + arg1 - idx]].field_384, status[stor[('name', 'stor2', 2) + arg1 - idx]].field_416, status[stor[('name', 'stor2', 2) + arg1 - idx]].field_448, Mask(8, 248, bool(status[stor[('name', 'stor2', 2) + arg1 - idx]].field_480)) >> 248, Mask(8, 248, bool(status[stor[('name', 'stor2', 2) + arg1 - idx]].field_488)) >> 248, 0
                        idx = idx + 1
                        continue 
            else:
                if arg2 <= arg1:
                    require 3 * arg2 <= test266151307()
                    mem[96] = 3 * arg2
                    mem[64] = (32 * 3 * arg2) + 128
                    if not 3 * arg2:
                        idx = 0
                        while idx < arg2:
                            require arg1 - idx < stor2.length
                            mem[0] = 2
                            _594 = mem[64]
                            mem[64] = mem[64] + 256
                            mem[_594] = 0
                            mem[_594 + 32] = 0
                            mem[_594 + 64] = 0
                            mem[_594 + 96] = 0
                            mem[_594 + 128] = 0
                            mem[_594 + 160] = 0
                            mem[_594 + 192] = 0
                            mem[_594 + 224] = 0
                            mem[0] = stor[('name', 'stor2', 2) + arg1 - idx]
                            mem[32] = 4
                            _647 = mem[64]
                            mem[64] = mem[64] + 256
                            mem[_647] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_0
                            mem[_647 + 32] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_128
                            mem[_647 + 64] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_256
                            mem[_647 + 96] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_384
                            mem[_647 + 128] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_416
                            mem[_647 + 160] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_448
                            mem[_647 + 192] = bool(status[stor[('name', 'stor2', 2) + arg1 - idx]].field_480)
                            mem[_647 + 224] = bool(status[stor[('name', 'stor2', 2) + arg1 - idx]].field_488)
                            require 3 * idx < mem[96]
                            mem[(32 * 3 * idx) + 128] = stor[('name', 'stor2', 2) + arg1 - idx]
                            _736 = mem[64]
                            mem[mem[64] + 32] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_128 << 128
                            mem[mem[64] + 48] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_256
                            _737 = mem[64]
                            mem[mem[64]] = 32
                            mem[64] = mem[64] + 64
                            require mem[_737] >= 32
                            require (3 * idx) + 1 < mem[96]
                            mem[(32 * (3 * idx) + 1) + 128] = mem[_737 + 32]
                            mem[_736 + 96] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_0
                            mem[_736 + 112] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_384 << 224
                            mem[_736 + 116] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_416 << 224
                            mem[_736 + 120] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_448 << 224
                            mem[_736 + 124] = bool(status[stor[('name', 'stor2', 2) + arg1 - idx]].field_480) << 248
                            mem[_736 + 125] = bool(status[stor[('name', 'stor2', 2) + arg1 - idx]].field_488) << 248
                            mem[_736 + 126] = 0
                            mem[_736 + 64] = 32
                            mem[64] = _736 + 128
                            require (3 * idx) + 2 < mem[96]
                            mem[(32 * (3 * idx) + 2) + 128] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_0, status[stor[('name', 'stor2', 2) + arg1 - idx]].field_384, status[stor[('name', 'stor2', 2) + arg1 - idx]].field_416, status[stor[('name', 'stor2', 2) + arg1 - idx]].field_448, Mask(8, 248, bool(status[stor[('name', 'stor2', 2) + arg1 - idx]].field_480)) >> 248, Mask(8, 248, bool(status[stor[('name', 'stor2', 2) + arg1 - idx]].field_488)) >> 248, 0
                            idx = idx + 1
                            continue 
                    else:
                        mem[128 len 32 * 3 * arg2] = call.data[calldata.size len 32 * 3 * arg2]
                        idx = 0
                        while idx < arg2:
                            require arg1 - idx < stor2.length
                            mem[0] = 2
                            _595 = mem[64]
                            mem[64] = mem[64] + 256
                            mem[_595] = 0
                            mem[_595 + 32] = 0
                            mem[_595 + 64] = 0
                            mem[_595 + 96] = 0
                            mem[_595 + 128] = 0
                            mem[_595 + 160] = 0
                            mem[_595 + 192] = 0
                            mem[_595 + 224] = 0
                            mem[0] = stor[('name', 'stor2', 2) + arg1 - idx]
                            mem[32] = 4
                            _652 = mem[64]
                            mem[64] = mem[64] + 256
                            mem[_652] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_0
                            mem[_652 + 32] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_128
                            mem[_652 + 64] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_256
                            mem[_652 + 96] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_384
                            mem[_652 + 128] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_416
                            mem[_652 + 160] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_448
                            mem[_652 + 192] = bool(status[stor[('name', 'stor2', 2) + arg1 - idx]].field_480)
                            mem[_652 + 224] = bool(status[stor[('name', 'stor2', 2) + arg1 - idx]].field_488)
                            require 3 * idx < mem[96]
                            mem[(32 * 3 * idx) + 128] = stor[('name', 'stor2', 2) + arg1 - idx]
                            _741 = mem[64]
                            mem[mem[64] + 32] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_128 << 128
                            mem[mem[64] + 48] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_256
                            _742 = mem[64]
                            mem[mem[64]] = 32
                            mem[64] = mem[64] + 64
                            require mem[_742] >= 32
                            require (3 * idx) + 1 < mem[96]
                            mem[(32 * (3 * idx) + 1) + 128] = mem[_742 + 32]
                            mem[_741 + 96] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_0
                            mem[_741 + 112] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_384 << 224
                            mem[_741 + 116] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_416 << 224
                            mem[_741 + 120] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_448 << 224
                            mem[_741 + 124] = bool(status[stor[('name', 'stor2', 2) + arg1 - idx]].field_480) << 248
                            mem[_741 + 125] = bool(status[stor[('name', 'stor2', 2) + arg1 - idx]].field_488) << 248
                            mem[_741 + 126] = 0
                            mem[_741 + 64] = 32
                            mem[64] = _741 + 128
                            require (3 * idx) + 2 < mem[96]
                            mem[(32 * (3 * idx) + 2) + 128] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_0, status[stor[('name', 'stor2', 2) + arg1 - idx]].field_384, status[stor[('name', 'stor2', 2) + arg1 - idx]].field_416, status[stor[('name', 'stor2', 2) + arg1 - idx]].field_448, Mask(8, 248, bool(status[stor[('name', 'stor2', 2) + arg1 - idx]].field_480)) >> 248, Mask(8, 248, bool(status[stor[('name', 'stor2', 2) + arg1 - idx]].field_488)) >> 248, 0
                            idx = idx + 1
                            continue 
                else:
                    require 3 * arg1 <= test266151307()
                    mem[96] = 3 * arg1
                    mem[64] = (32 * 3 * arg1) + 128
                    if not 3 * arg1:
                        idx = 0
                        while idx < arg1:
                            require arg1 - idx < stor2.length
                            mem[0] = 2
                            _596 = mem[64]
                            mem[64] = mem[64] + 256
                            mem[_596] = 0
                            mem[_596 + 32] = 0
                            mem[_596 + 64] = 0
                            mem[_596 + 96] = 0
                            mem[_596 + 128] = 0
                            mem[_596 + 160] = 0
                            mem[_596 + 192] = 0
                            mem[_596 + 224] = 0
                            mem[0] = stor[('name', 'stor2', 2) + arg1 - idx]
                            mem[32] = 4
                            _657 = mem[64]
                            mem[64] = mem[64] + 256
                            mem[_657] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_0
                            mem[_657 + 32] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_128
                            mem[_657 + 64] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_256
                            mem[_657 + 96] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_384
                            mem[_657 + 128] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_416
                            mem[_657 + 160] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_448
                            mem[_657 + 192] = bool(status[stor[('name', 'stor2', 2) + arg1 - idx]].field_480)
                            mem[_657 + 224] = bool(status[stor[('name', 'stor2', 2) + arg1 - idx]].field_488)
                            require 3 * idx < mem[96]
                            mem[(32 * 3 * idx) + 128] = stor[('name', 'stor2', 2) + arg1 - idx]
                            _746 = mem[64]
                            mem[mem[64] + 32] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_128 << 128
                            mem[mem[64] + 48] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_256
                            _747 = mem[64]
                            mem[mem[64]] = 32
                            mem[64] = mem[64] + 64
                            require mem[_747] >= 32
                            require (3 * idx) + 1 < mem[96]
                            mem[(32 * (3 * idx) + 1) + 128] = mem[_747 + 32]
                            mem[_746 + 96] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_0
                            mem[_746 + 112] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_384 << 224
                            mem[_746 + 116] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_416 << 224
                            mem[_746 + 120] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_448 << 224
                            mem[_746 + 124] = bool(status[stor[('name', 'stor2', 2) + arg1 - idx]].field_480) << 248
                            mem[_746 + 125] = bool(status[stor[('name', 'stor2', 2) + arg1 - idx]].field_488) << 248
                            mem[_746 + 126] = 0
                            mem[_746 + 64] = 32
                            mem[64] = _746 + 128
                            require (3 * idx) + 2 < mem[96]
                            mem[(32 * (3 * idx) + 2) + 128] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_0, status[stor[('name', 'stor2', 2) + arg1 - idx]].field_384, status[stor[('name', 'stor2', 2) + arg1 - idx]].field_416, status[stor[('name', 'stor2', 2) + arg1 - idx]].field_448, Mask(8, 248, bool(status[stor[('name', 'stor2', 2) + arg1 - idx]].field_480)) >> 248, Mask(8, 248, bool(status[stor[('name', 'stor2', 2) + arg1 - idx]].field_488)) >> 248, 0
                            idx = idx + 1
                            continue 
                    else:
                        mem[128 len 32 * 3 * arg1] = call.data[calldata.size len 32 * 3 * arg1]
                        idx = 0
                        while idx < arg1:
                            require arg1 - idx < stor2.length
                            mem[0] = 2
                            _597 = mem[64]
                            mem[64] = mem[64] + 256
                            mem[_597] = 0
                            mem[_597 + 32] = 0
                            mem[_597 + 64] = 0
                            mem[_597 + 96] = 0
                            mem[_597 + 128] = 0
                            mem[_597 + 160] = 0
                            mem[_597 + 192] = 0
                            mem[_597 + 224] = 0
                            mem[0] = stor[('name', 'stor2', 2) + arg1 - idx]
                            mem[32] = 4
                            _662 = mem[64]
                            mem[64] = mem[64] + 256
                            mem[_662] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_0
                            mem[_662 + 32] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_128
                            mem[_662 + 64] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_256
                            mem[_662 + 96] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_384
                            mem[_662 + 128] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_416
                            mem[_662 + 160] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_448
                            mem[_662 + 192] = bool(status[stor[('name', 'stor2', 2) + arg1 - idx]].field_480)
                            mem[_662 + 224] = bool(status[stor[('name', 'stor2', 2) + arg1 - idx]].field_488)
                            require 3 * idx < mem[96]
                            mem[(32 * 3 * idx) + 128] = stor[('name', 'stor2', 2) + arg1 - idx]
                            _751 = mem[64]
                            mem[mem[64] + 32] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_128 << 128
                            mem[mem[64] + 48] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_256
                            _752 = mem[64]
                            mem[mem[64]] = 32
                            mem[64] = mem[64] + 64
                            require mem[_752] >= 32
                            require (3 * idx) + 1 < mem[96]
                            mem[(32 * (3 * idx) + 1) + 128] = mem[_752 + 32]
                            mem[_751 + 96] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_0
                            mem[_751 + 112] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_384 << 224
                            mem[_751 + 116] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_416 << 224
                            mem[_751 + 120] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_448 << 224
                            mem[_751 + 124] = bool(status[stor[('name', 'stor2', 2) + arg1 - idx]].field_480) << 248
                            mem[_751 + 125] = bool(status[stor[('name', 'stor2', 2) + arg1 - idx]].field_488) << 248
                            mem[_751 + 126] = 0
                            mem[_751 + 64] = 32
                            mem[64] = _751 + 128
                            require (3 * idx) + 2 < mem[96]
                            mem[(32 * (3 * idx) + 2) + 128] = status[stor[('name', 'stor2', 2) + arg1 - idx]].field_0, status[stor[('name', 'stor2', 2) + arg1 - idx]].field_384, status[stor[('name', 'stor2', 2) + arg1 - idx]].field_416, status[stor[('name', 'stor2', 2) + arg1 - idx]].field_448, Mask(8, 248, bool(status[stor[('name', 'stor2', 2) + arg1 - idx]].field_480)) >> 248, Mask(8, 248, bool(status[stor[('name', 'stor2', 2) + arg1 - idx]].field_488)) >> 248, 0
                            idx = idx + 1
                            continue 
        else:
            if not arg2:
                require (3 * stor2.length) - 3 <= test266151307()
                mem[96] = (3 * stor2.length) - 3
                mem[64] = (32 * (3 * stor2.length) - 3) + 128
                if not (3 * stor2.length) - 3:
                    idx = 0
                    while idx < stor2.length - 1:
                        require stor2.length + -idx - 1 < stor2.length
                        mem[0] = 2
                        _598 = mem[64]
                        mem[64] = mem[64] + 256
                        mem[_598] = 0
                        mem[_598 + 32] = 0
                        mem[_598 + 64] = 0
                        mem[_598 + 96] = 0
                        mem[_598 + 128] = 0
                        mem[_598 + 160] = 0
                        mem[_598 + 192] = 0
                        mem[_598 + 224] = 0
                        mem[0] = stor[('name', 'stor2', 2) + stor2.length - idx]
                        mem[32] = 4
                        _667 = mem[64]
                        mem[64] = mem[64] + 256
                        mem[_667] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_0
                        mem[_667 + 32] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_128
                        mem[_667 + 64] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_256
                        mem[_667 + 96] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_384
                        mem[_667 + 128] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_416
                        mem[_667 + 160] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_448
                        mem[_667 + 192] = bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_480)
                        mem[_667 + 224] = bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_488)
                        require 3 * idx < mem[96]
                        mem[(32 * 3 * idx) + 128] = stor[('name', 'stor2', 2) + stor2.length - idx]
                        _756 = mem[64]
                        mem[mem[64] + 32] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_128 << 128
                        mem[mem[64] + 48] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_256
                        _757 = mem[64]
                        mem[mem[64]] = 32
                        mem[64] = mem[64] + 64
                        require mem[_757] >= 32
                        require (3 * idx) + 1 < mem[96]
                        mem[(32 * (3 * idx) + 1) + 128] = mem[_757 + 32]
                        mem[_756 + 96] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_0
                        mem[_756 + 112] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_384 << 224
                        mem[_756 + 116] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_416 << 224
                        mem[_756 + 120] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_448 << 224
                        mem[_756 + 124] = bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_480) << 248
                        mem[_756 + 125] = bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_488) << 248
                        mem[_756 + 126] = 0
                        mem[_756 + 64] = 32
                        mem[64] = _756 + 128
                        require (3 * idx) + 2 < mem[96]
                        mem[(32 * (3 * idx) + 2) + 128] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_0, status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_384, status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_416, status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_448, Mask(8, 248, bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_480)) >> 248, Mask(8, 248, bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_488)) >> 248, 0
                        idx = idx + 1
                        continue 
                else:
                    mem[128 len 32 * (3 * stor2.length) - 3] = call.data[calldata.size len 32 * (3 * stor2.length) - 3]
                    idx = 0
                    while idx < stor2.length - 1:
                        require stor2.length + -idx - 1 < stor2.length
                        mem[0] = 2
                        _599 = mem[64]
                        mem[64] = mem[64] + 256
                        mem[_599] = 0
                        mem[_599 + 32] = 0
                        mem[_599 + 64] = 0
                        mem[_599 + 96] = 0
                        mem[_599 + 128] = 0
                        mem[_599 + 160] = 0
                        mem[_599 + 192] = 0
                        mem[_599 + 224] = 0
                        mem[0] = stor[('name', 'stor2', 2) + stor2.length - idx]
                        mem[32] = 4
                        _672 = mem[64]
                        mem[64] = mem[64] + 256
                        mem[_672] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_0
                        mem[_672 + 32] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_128
                        mem[_672 + 64] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_256
                        mem[_672 + 96] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_384
                        mem[_672 + 128] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_416
                        mem[_672 + 160] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_448
                        mem[_672 + 192] = bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_480)
                        mem[_672 + 224] = bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_488)
                        require 3 * idx < mem[96]
                        mem[(32 * 3 * idx) + 128] = stor[('name', 'stor2', 2) + stor2.length - idx]
                        _761 = mem[64]
                        mem[mem[64] + 32] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_128 << 128
                        mem[mem[64] + 48] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_256
                        _762 = mem[64]
                        mem[mem[64]] = 32
                        mem[64] = mem[64] + 64
                        require mem[_762] >= 32
                        require (3 * idx) + 1 < mem[96]
                        mem[(32 * (3 * idx) + 1) + 128] = mem[_762 + 32]
                        mem[_761 + 96] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_0
                        mem[_761 + 112] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_384 << 224
                        mem[_761 + 116] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_416 << 224
                        mem[_761 + 120] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_448 << 224
                        mem[_761 + 124] = bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_480) << 248
                        mem[_761 + 125] = bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_488) << 248
                        mem[_761 + 126] = 0
                        mem[_761 + 64] = 32
                        mem[64] = _761 + 128
                        require (3 * idx) + 2 < mem[96]
                        mem[(32 * (3 * idx) + 2) + 128] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_0, status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_384, status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_416, status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_448, Mask(8, 248, bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_480)) >> 248, Mask(8, 248, bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_488)) >> 248, 0
                        idx = idx + 1
                        continue 
            else:
                if arg2 <= stor2.length - 1:
                    require 3 * arg2 <= test266151307()
                    mem[96] = 3 * arg2
                    mem[64] = (32 * 3 * arg2) + 128
                    if not 3 * arg2:
                        idx = 0
                        while idx < arg2:
                            require stor2.length + -idx - 1 < stor2.length
                            mem[0] = 2
                            _600 = mem[64]
                            mem[64] = mem[64] + 256
                            mem[_600] = 0
                            mem[_600 + 32] = 0
                            mem[_600 + 64] = 0
                            mem[_600 + 96] = 0
                            mem[_600 + 128] = 0
                            mem[_600 + 160] = 0
                            mem[_600 + 192] = 0
                            mem[_600 + 224] = 0
                            mem[0] = stor[('name', 'stor2', 2) + stor2.length - idx]
                            mem[32] = 4
                            _677 = mem[64]
                            mem[64] = mem[64] + 256
                            mem[_677] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_0
                            mem[_677 + 32] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_128
                            mem[_677 + 64] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_256
                            mem[_677 + 96] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_384
                            mem[_677 + 128] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_416
                            mem[_677 + 160] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_448
                            mem[_677 + 192] = bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_480)
                            mem[_677 + 224] = bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_488)
                            require 3 * idx < mem[96]
                            mem[(32 * 3 * idx) + 128] = stor[('name', 'stor2', 2) + stor2.length - idx]
                            _766 = mem[64]
                            mem[mem[64] + 32] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_128 << 128
                            mem[mem[64] + 48] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_256
                            _767 = mem[64]
                            mem[mem[64]] = 32
                            mem[64] = mem[64] + 64
                            require mem[_767] >= 32
                            require (3 * idx) + 1 < mem[96]
                            mem[(32 * (3 * idx) + 1) + 128] = mem[_767 + 32]
                            mem[_766 + 96] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_0
                            mem[_766 + 112] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_384 << 224
                            mem[_766 + 116] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_416 << 224
                            mem[_766 + 120] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_448 << 224
                            mem[_766 + 124] = bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_480) << 248
                            mem[_766 + 125] = bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_488) << 248
                            mem[_766 + 126] = 0
                            mem[_766 + 64] = 32
                            mem[64] = _766 + 128
                            require (3 * idx) + 2 < mem[96]
                            mem[(32 * (3 * idx) + 2) + 128] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_0, status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_384, status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_416, status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_448, Mask(8, 248, bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_480)) >> 248, Mask(8, 248, bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_488)) >> 248, 0
                            idx = idx + 1
                            continue 
                    else:
                        mem[128 len 32 * 3 * arg2] = call.data[calldata.size len 32 * 3 * arg2]
                        idx = 0
                        while idx < arg2:
                            require stor2.length + -idx - 1 < stor2.length
                            mem[0] = 2
                            _601 = mem[64]
                            mem[64] = mem[64] + 256
                            mem[_601] = 0
                            mem[_601 + 32] = 0
                            mem[_601 + 64] = 0
                            mem[_601 + 96] = 0
                            mem[_601 + 128] = 0
                            mem[_601 + 160] = 0
                            mem[_601 + 192] = 0
                            mem[_601 + 224] = 0
                            mem[0] = stor[('name', 'stor2', 2) + stor2.length - idx]
                            mem[32] = 4
                            _682 = mem[64]
                            mem[64] = mem[64] + 256
                            mem[_682] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_0
                            mem[_682 + 32] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_128
                            mem[_682 + 64] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_256
                            mem[_682 + 96] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_384
                            mem[_682 + 128] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_416
                            mem[_682 + 160] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_448
                            mem[_682 + 192] = bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_480)
                            mem[_682 + 224] = bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_488)
                            require 3 * idx < mem[96]
                            mem[(32 * 3 * idx) + 128] = stor[('name', 'stor2', 2) + stor2.length - idx]
                            _771 = mem[64]
                            mem[mem[64] + 32] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_128 << 128
                            mem[mem[64] + 48] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_256
                            _772 = mem[64]
                            mem[mem[64]] = 32
                            mem[64] = mem[64] + 64
                            require mem[_772] >= 32
                            require (3 * idx) + 1 < mem[96]
                            mem[(32 * (3 * idx) + 1) + 128] = mem[_772 + 32]
                            mem[_771 + 96] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_0
                            mem[_771 + 112] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_384 << 224
                            mem[_771 + 116] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_416 << 224
                            mem[_771 + 120] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_448 << 224
                            mem[_771 + 124] = bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_480) << 248
                            mem[_771 + 125] = bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_488) << 248
                            mem[_771 + 126] = 0
                            mem[_771 + 64] = 32
                            mem[64] = _771 + 128
                            require (3 * idx) + 2 < mem[96]
                            mem[(32 * (3 * idx) + 2) + 128] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_0, status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_384, status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_416, status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_448, Mask(8, 248, bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_480)) >> 248, Mask(8, 248, bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_488)) >> 248, 0
                            idx = idx + 1
                            continue 
                else:
                    require (3 * stor2.length) - 3 <= test266151307()
                    mem[96] = (3 * stor2.length) - 3
                    mem[64] = (32 * (3 * stor2.length) - 3) + 128
                    if not (3 * stor2.length) - 3:
                        idx = 0
                        while idx < stor2.length - 1:
                            require stor2.length + -idx - 1 < stor2.length
                            mem[0] = 2
                            _602 = mem[64]
                            mem[64] = mem[64] + 256
                            mem[_602] = 0
                            mem[_602 + 32] = 0
                            mem[_602 + 64] = 0
                            mem[_602 + 96] = 0
                            mem[_602 + 128] = 0
                            mem[_602 + 160] = 0
                            mem[_602 + 192] = 0
                            mem[_602 + 224] = 0
                            mem[0] = stor[('name', 'stor2', 2) + stor2.length - idx]
                            mem[32] = 4
                            _687 = mem[64]
                            mem[64] = mem[64] + 256
                            mem[_687] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_0
                            mem[_687 + 32] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_128
                            mem[_687 + 64] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_256
                            mem[_687 + 96] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_384
                            mem[_687 + 128] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_416
                            mem[_687 + 160] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_448
                            mem[_687 + 192] = bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_480)
                            mem[_687 + 224] = bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_488)
                            require 3 * idx < mem[96]
                            mem[(32 * 3 * idx) + 128] = stor[('name', 'stor2', 2) + stor2.length - idx]
                            _776 = mem[64]
                            mem[mem[64] + 32] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_128 << 128
                            mem[mem[64] + 48] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_256
                            _777 = mem[64]
                            mem[mem[64]] = 32
                            mem[64] = mem[64] + 64
                            require mem[_777] >= 32
                            require (3 * idx) + 1 < mem[96]
                            mem[(32 * (3 * idx) + 1) + 128] = mem[_777 + 32]
                            mem[_776 + 96] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_0
                            mem[_776 + 112] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_384 << 224
                            mem[_776 + 116] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_416 << 224
                            mem[_776 + 120] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_448 << 224
                            mem[_776 + 124] = bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_480) << 248
                            mem[_776 + 125] = bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_488) << 248
                            mem[_776 + 126] = 0
                            mem[_776 + 64] = 32
                            mem[64] = _776 + 128
                            require (3 * idx) + 2 < mem[96]
                            mem[(32 * (3 * idx) + 2) + 128] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_0, status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_384, status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_416, status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_448, Mask(8, 248, bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_480)) >> 248, Mask(8, 248, bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_488)) >> 248, 0
                            idx = idx + 1
                            continue 
                    else:
                        mem[128 len 32 * (3 * stor2.length) - 3] = call.data[calldata.size len 32 * (3 * stor2.length) - 3]
                        idx = 0
                        while idx < stor2.length - 1:
                            require stor2.length + -idx - 1 < stor2.length
                            mem[0] = 2
                            _603 = mem[64]
                            mem[64] = mem[64] + 256
                            mem[_603] = 0
                            mem[_603 + 32] = 0
                            mem[_603 + 64] = 0
                            mem[_603 + 96] = 0
                            mem[_603 + 128] = 0
                            mem[_603 + 160] = 0
                            mem[_603 + 192] = 0
                            mem[_603 + 224] = 0
                            mem[0] = stor[('name', 'stor2', 2) + stor2.length - idx]
                            mem[32] = 4
                            _692 = mem[64]
                            mem[64] = mem[64] + 256
                            mem[_692] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_0
                            mem[_692 + 32] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_128
                            mem[_692 + 64] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_256
                            mem[_692 + 96] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_384
                            mem[_692 + 128] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_416
                            mem[_692 + 160] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_448
                            mem[_692 + 192] = bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_480)
                            mem[_692 + 224] = bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_488)
                            require 3 * idx < mem[96]
                            mem[(32 * 3 * idx) + 128] = stor[('name', 'stor2', 2) + stor2.length - idx]
                            _781 = mem[64]
                            mem[mem[64] + 32] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_128 << 128
                            mem[mem[64] + 48] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_256
                            _782 = mem[64]
                            mem[mem[64]] = 32
                            mem[64] = mem[64] + 64
                            require mem[_782] >= 32
                            require (3 * idx) + 1 < mem[96]
                            mem[(32 * (3 * idx) + 1) + 128] = mem[_782 + 32]
                            mem[_781 + 96] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_0
                            mem[_781 + 112] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_384 << 224
                            mem[_781 + 116] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_416 << 224
                            mem[_781 + 120] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_448 << 224
                            mem[_781 + 124] = bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_480) << 248
                            mem[_781 + 125] = bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_488) << 248
                            mem[_781 + 126] = 0
                            mem[_781 + 64] = 32
                            mem[64] = _781 + 128
                            require (3 * idx) + 2 < mem[96]
                            mem[(32 * (3 * idx) + 2) + 128] = status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_0, status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_384, status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_416, status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_448, Mask(8, 248, bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_480)) >> 248, Mask(8, 248, bool(status[stor[('name', 'stor2', 2) + stor2.length - idx]].field_488)) >> 248, 0
                            idx = idx + 1
                            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}

function proposeUpdateIncentiveFund(address[] arg1, uint256[] arg2) payable {
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
    mem[(32 * arg1.length) + (32 * arg2.length) + 192] = 64
    mem[(32 * arg1.length) + (32 * arg2.length) + 256] = arg1.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 288 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(32 * arg1.length) + (32 * arg2.length) + 224] = (32 * arg1.length) + 96
    mem[(64 * arg1.length) + (32 * arg2.length) + 288] = arg2.length
    mem[(64 * arg1.length) + (32 * arg2.length) + 320 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = (32 * arg2.length) + (32 * arg1.length) + 128
    if block.timestamp >= 4294967296:
        mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
        mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 38
        mem[(64 * arg2.length) + (64 * arg1.length) + 388 len 38] = 0x6553616665436173743a2076616c756520646f65736e27742066697420696e20333220626974
        revert with memory
          from (64 * arg2.length) + (64 * arg1.length) + 320
           len (127 * arg2.length) + (95 * arg1.length) + 132
    mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x18160ddd00000000000000000000000000000000000000000000000000000000
    require ext_code.size(taxTokenAddress)
    staticcall taxTokenAddress.0x18160ddd with:
            gas gas_remaining wei
           args mem[(64 * arg2.length) + (64 * arg1.length) + 324 len 127 * arg1.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x18160ddd00000000000000000000000000000000000000000000000000000000
        require ext_code.size(taxTokenAddress)
        staticcall taxTokenAddress.0x18160ddd with:
                gas gas_remaining wei
               args mem[(64 * arg2.length) + (64 * arg1.length) + 324 len 127 * arg1.length]
        mem[(64 * arg2.length) + (64 * arg1.length) + 320] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_416:
                if arg1.length != arg2.length:
                    mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                    mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 65
                    mem[(64 * arg2.length) + (64 * arg1.length) + 388 len 65] = 0x64746865206c656e677468206f66207468652061646472657373657320616e642074686520616c6c6f636174696f6e2073686f756c64206265207468652073616d
                    revert with memory
                      from (64 * arg2.length) + (64 * arg1.length) + 320
                       len (127 * arg2.length) + (95 * arg1.length) + 164
                idx = 0
                s = 0
                while idx < arg2.length:
                    require idx < arg2.length
                    _1075 = mem[(32 * idx) + (32 * arg1.length) + 160]
                    if mem[(32 * idx) + (32 * arg1.length) + 160] + s >= s:
                        idx = idx + 1
                        s = mem[(32 * idx) + (32 * arg1.length) + 160] + s
                        continue 
                    mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                    mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 27
                    mem[(64 * arg2.length) + (64 * arg1.length) + 388] = 'SafeMath: addition overflow'
                    revert with memory
                      from (64 * arg2.length) + (64 * arg1.length) + 320
                       len (127 * arg2.length) + (95 * arg1.length) + 100
                if _1075 * arg2.length != 100 * 10^6:
                    mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                    mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 41
                    mem[(64 * arg2.length) + (64 * arg1.length) + 388 len 41] = 0x737468652073756d206f662074686520616c6c6f636174696f6e2073686f756c642062652031302a2a
                    revert with memory
                      from (64 * arg2.length) + (64 * arg1.length) + 320
                       len (127 * arg2.length) + (95 * arg1.length) + 132
            else:
                if status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_480:
                    if bool(status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_480) != 1:
                        mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                        mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 58
                        mem[(64 * arg2.length) + (64 * arg1.length) + 388 len 58] = 0xfe7468652070726f706f73616c2073686f756c64206e6f7420636f6e666c696374207769746820746865206f6e676f696e672070726f706f7361
                        revert with memory
                          from (64 * arg2.length) + (64 * arg1.length) + 320
                           len (127 * arg2.length) + (95 * arg1.length) + 132
                    if uint32(status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_448 + status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_416) >= block.timestamp:
                        mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                        mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 58
                        mem[(64 * arg2.length) + (64 * arg1.length) + 388 len 58] = 0xfe7468652070726f706f73616c2073686f756c64206e6f7420636f6e666c696374207769746820746865206f6e676f696e672070726f706f7361
                        revert with memory
                          from (64 * arg2.length) + (64 * arg1.length) + 320
                           len (127 * arg2.length) + (95 * arg1.length) + 132
                    if arg1.length != arg2.length:
                        mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                        mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 65
                        mem[(64 * arg2.length) + (64 * arg1.length) + 388 len 65] = 0x64746865206c656e677468206f66207468652061646472657373657320616e642074686520616c6c6f636174696f6e2073686f756c64206265207468652073616d
                        revert with memory
                          from (64 * arg2.length) + (64 * arg1.length) + 320
                           len (127 * arg2.length) + (95 * arg1.length) + 164
                    idx = 0
                    s = 0
                    while idx < arg2.length:
                        require idx < arg2.length
                        _1093 = mem[(32 * idx) + (32 * arg1.length) + 160]
                        if mem[(32 * idx) + (32 * arg1.length) + 160] + s >= s:
                            idx = idx + 1
                            s = mem[(32 * idx) + (32 * arg1.length) + 160] + s
                            continue 
                        mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                        mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 27
                        mem[(64 * arg2.length) + (64 * arg1.length) + 388] = 'SafeMath: addition overflow'
                        revert with memory
                          from (64 * arg2.length) + (64 * arg1.length) + 320
                           len (127 * arg2.length) + (95 * arg1.length) + 100
                    if _1093 * arg2.length != 100 * 10^6:
                        mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                        mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 41
                        mem[(64 * arg2.length) + (64 * arg1.length) + 388 len 41] = 0x737468652073756d206f662074686520616c6c6f636174696f6e2073686f756c642062652031302a2a
                        revert with memory
                          from (64 * arg2.length) + (64 * arg1.length) + 320
                           len (127 * arg2.length) + (95 * arg1.length) + 132
                else:
                    if uint32(status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_448 + status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_384) < block.timestamp:
                        if arg1.length != arg2.length:
                            mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                            mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 65
                            mem[(64 * arg2.length) + (64 * arg1.length) + 388 len 65] = 0x64746865206c656e677468206f66207468652061646472657373657320616e642074686520616c6c6f636174696f6e2073686f756c64206265207468652073616d
                            revert with memory
                              from (64 * arg2.length) + (64 * arg1.length) + 320
                               len (127 * arg2.length) + (95 * arg1.length) + 164
                        idx = 0
                        s = 0
                        while idx < arg2.length:
                            require idx < arg2.length
                            _1111 = mem[(32 * idx) + (32 * arg1.length) + 160]
                            if mem[(32 * idx) + (32 * arg1.length) + 160] + s >= s:
                                idx = idx + 1
                                s = mem[(32 * idx) + (32 * arg1.length) + 160] + s
                                continue 
                            mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                            mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 27
                            mem[(64 * arg2.length) + (64 * arg1.length) + 388] = 'SafeMath: addition overflow'
                            revert with memory
                              from (64 * arg2.length) + (64 * arg1.length) + 320
                               len (127 * arg2.length) + (95 * arg1.length) + 100
                        if _1111 * arg2.length != 100 * 10^6:
                            mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                            mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 41
                            mem[(64 * arg2.length) + (64 * arg1.length) + 388 len 41] = 0x737468652073756d206f662074686520616c6c6f636174696f6e2073686f756c642062652031302a2a
                            revert with memory
                              from (64 * arg2.length) + (64 * arg1.length) + 320
                               len (127 * arg2.length) + (95 * arg1.length) + 132
                    else:
                        if bool(status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_480) != 1:
                            mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                            mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 58
                            mem[(64 * arg2.length) + (64 * arg1.length) + 388 len 58] = 0xfe7468652070726f706f73616c2073686f756c64206e6f7420636f6e666c696374207769746820746865206f6e676f696e672070726f706f7361
                            revert with memory
                              from (64 * arg2.length) + (64 * arg1.length) + 320
                               len (127 * arg2.length) + (95 * arg1.length) + 132
                        if uint32(status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_448 + status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_416) >= block.timestamp:
                            mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                            mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 58
                            mem[(64 * arg2.length) + (64 * arg1.length) + 388 len 58] = 0xfe7468652070726f706f73616c2073686f756c64206e6f7420636f6e666c696374207769746820746865206f6e676f696e672070726f706f7361
                            revert with memory
                              from (64 * arg2.length) + (64 * arg1.length) + 320
                               len (127 * arg2.length) + (95 * arg1.length) + 132
                        if arg1.length != arg2.length:
                            mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                            mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 65
                            mem[(64 * arg2.length) + (64 * arg1.length) + 388 len 65] = 0x64746865206c656e677468206f66207468652061646472657373657320616e642074686520616c6c6f636174696f6e2073686f756c64206265207468652073616d
                            revert with memory
                              from (64 * arg2.length) + (64 * arg1.length) + 320
                               len (127 * arg2.length) + (95 * arg1.length) + 164
                        idx = 0
                        s = 0
                        while idx < arg2.length:
                            require idx < arg2.length
                            _1129 = mem[(32 * idx) + (32 * arg1.length) + 160]
                            if mem[(32 * idx) + (32 * arg1.length) + 160] + s >= s:
                                idx = idx + 1
                                s = mem[(32 * idx) + (32 * arg1.length) + 160] + s
                                continue 
                            mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                            mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 27
                            mem[(64 * arg2.length) + (64 * arg1.length) + 388] = 'SafeMath: addition overflow'
                            revert with memory
                              from (64 * arg2.length) + (64 * arg1.length) + 320
                               len (127 * arg2.length) + (95 * arg1.length) + 100
                        if _1129 * arg2.length != 100 * 10^6:
                            mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                            mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 41
                            mem[(64 * arg2.length) + (64 * arg1.length) + 388 len 41] = 0x737468652073756d206f662074686520616c6c6f636174696f6e2073686f756c642062652031302a2a
                            revert with memory
                              from (64 * arg2.length) + (64 * arg1.length) + 320
                               len (127 * arg2.length) + (95 * arg1.length) + 132
            stor2.length++
            stor2[stor2.length] = sha3(Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32]), (32 * arg1.length) + 96)
            mem[(64 * arg2.length) + (64 * arg1.length) + 384] = 0
            mem[(64 * arg2.length) + (64 * arg1.length) + 416] = uint32(block.timestamp + uint32(stor0.field_160))
            mem[(64 * arg2.length) + (64 * arg1.length) + 448] = uint32(block.timestamp + uint32(stor0.field_192))
            mem[(64 * arg2.length) + (64 * arg1.length) + 480] = uint32(stor0.field_224)
            mem[(64 * arg2.length) + (64 * arg1.length) + 512] = 0
            mem[(64 * arg2.length) + (64 * arg1.length) + 544] = 0
            status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_0 = 0
            status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_256 = 0
            status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_128 = 0
            status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_256 = 0
            status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_256 = 0
            status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_512 = 0
            status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_384 = uint32(block.timestamp + uint32(stor0.field_160))
            status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_416 = uint32(block.timestamp + uint32(stor0.field_192))
            status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_448 = uint32(stor0.field_224)
            status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_480 = 0
            status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_488 = 0
            stor7[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_0 = arg1.length
            if not arg1.length:
                idx = 0
                while stor7[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_0 > idx:
                    stor7[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96][idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 128
                while (32 * arg1.length) + 128 > idx:
                    stor7[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96][s].field_0 = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
                while stor7[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_0 > idx:
                    stor7[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96][idx].field_0 = 0
                    idx = idx + 1
                    continue 
            stor7[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_256 = arg2.length
            if not arg2.length:
                idx = 0
                while stor7[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_256 > idx:
                    stor7[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96][idx + 1].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = (32 * arg1.length) + 160
                while (32 * arg1.length) + (32 * arg2.length) + 160 > idx:
                    stor7[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96][s + 1].field_0 = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
                while stor7[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_256 > idx:
                    stor7[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96][idx + 1].field_0 = 0
                    idx = idx + 1
                    continue 
            mem[(64 * arg2.length) + (64 * arg1.length) + 672] = sha3(Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32]), (32 * arg1.length) + 96)
            mem[(64 * arg2.length) + (64 * arg1.length) + 704] = msg.sender
            if userStatus[mem[(64 * arg2.length) + (64 * arg1.length) + 672 len (127 * arg1.length) + 64]].field_0 < userStatus[mem[(64 * arg2.length) + (64 * arg1.length) + 672 len (127 * arg1.length) + 64]].field_0:
                revert with 0, 'SafeMath: addition overflow'
            if userStatus[mem[(64 * arg2.length) + (64 * arg1.length) + 672 len (127 * arg1.length) + 64]].field_0 >= 0x100000000000000000000000000000000:
                revert with 0, 
                            32,
                            39,
                            0x6453616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974,
                            mem[(64 * arg2.length) + (64 * arg1.length) + 843 len 25]
            userStatus[mem[(64 * arg2.length) + (64 * arg1.length) + 672 len (127 * arg1.length) + 64]].field_0 = userStatus[mem[(64 * arg2.length) + (64 * arg1.length) + 672 len (127 * arg1.length) + 64]].field_0
            require ext_code.size(taxTokenAddress)
            staticcall taxTokenAddress.0x179d342f with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getStakingAddress() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x684da514 with:
                 gas gas_remaining wei
                args msg.sender, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(64 * arg2.length) + (64 * arg1.length) + 800] = uint32(block.timestamp + uint32(stor0.field_160))
            mem[(64 * arg2.length) + (64 * arg1.length) + 832] = uint32(block.timestamp + uint32(stor0.field_192))
            mem[(64 * arg2.length) + (64 * arg1.length) + 864] = uint32(stor0.field_224)
            mem[(64 * arg2.length) + (64 * arg1.length) + 736] = 160
            mem[(64 * arg2.length) + (64 * arg1.length) + 896] = arg1.length
            mem[(64 * arg2.length) + (64 * arg1.length) + 928 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[(64 * arg2.length) + (64 * arg1.length) + 768] = (32 * arg1.length) + 192
            mem[(98 * arg1.length) + (64 * arg2.length) + 928] = arg2.length
            mem[(98 * arg1.length) + (64 * arg2.length) + 960 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            emit 0xd48db7a4: mem[(64 * arg2.length) + (64 * arg1.length) + 736 len (32 * arg2.length) + (32 * arg1.length) + 224], sha3(Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32]), (32 * arg1.length) + 96)
            emit 0xbf2f5145: 1, 0, sha3(Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32]), (32 * arg1.length) + 96), msg.sender
        else:
            if uint16(stor1.field_32) * ext_call.return_data[0] / ext_call.return_data[0] != uint16(stor1.field_32):
                mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 33
                mem[(64 * arg2.length) + (64 * arg1.length) + 388 len 33] = 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                revert with memory
                  from (64 * arg2.length) + (64 * arg1.length) + 320
                   len (127 * arg2.length) + (95 * arg1.length) + 132
            if uint16(stor1.field_32) * ext_call.return_data[0] / 10000 >= 0x100000000000000000000000000000000:
                mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 39
                mem[(64 * arg2.length) + (64 * arg1.length) + 388 len 39] = 0x6453616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974
                revert with memory
                  from (64 * arg2.length) + (64 * arg1.length) + 320
                   len (127 * arg2.length) + (95 * arg1.length) + 132
            if not status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_416:
                if arg1.length != arg2.length:
                    mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                    mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 65
                    mem[(64 * arg2.length) + (64 * arg1.length) + 388 len 65] = 0x64746865206c656e677468206f66207468652061646472657373657320616e642074686520616c6c6f636174696f6e2073686f756c64206265207468652073616d
                    revert with memory
                      from (64 * arg2.length) + (64 * arg1.length) + 320
                       len (127 * arg2.length) + (95 * arg1.length) + 164
                idx = 0
                s = 0
                while idx < arg2.length:
                    require idx < arg2.length
                    _1003 = mem[(32 * idx) + (32 * arg1.length) + 160]
                    if mem[(32 * idx) + (32 * arg1.length) + 160] + s >= s:
                        idx = idx + 1
                        s = mem[(32 * idx) + (32 * arg1.length) + 160] + s
                        continue 
                    mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                    mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 27
                    mem[(64 * arg2.length) + (64 * arg1.length) + 388] = 'SafeMath: addition overflow'
                    revert with memory
                      from (64 * arg2.length) + (64 * arg1.length) + 320
                       len (127 * arg2.length) + (95 * arg1.length) + 100
                if _1003 * arg2.length != 100 * 10^6:
                    mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                    mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 41
                    mem[(64 * arg2.length) + (64 * arg1.length) + 388 len 41] = 0x737468652073756d206f662074686520616c6c6f636174696f6e2073686f756c642062652031302a2a
                    revert with memory
                      from (64 * arg2.length) + (64 * arg1.length) + 320
                       len (127 * arg2.length) + (95 * arg1.length) + 132
            else:
                if status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_480:
                    if bool(status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_480) != 1:
                        mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                        mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 58
                        mem[(64 * arg2.length) + (64 * arg1.length) + 388 len 58] = 0xfe7468652070726f706f73616c2073686f756c64206e6f7420636f6e666c696374207769746820746865206f6e676f696e672070726f706f7361
                        revert with memory
                          from (64 * arg2.length) + (64 * arg1.length) + 320
                           len (127 * arg2.length) + (95 * arg1.length) + 132
                    if uint32(status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_448 + status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_416) >= block.timestamp:
                        mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                        mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 58
                        mem[(64 * arg2.length) + (64 * arg1.length) + 388 len 58] = 0xfe7468652070726f706f73616c2073686f756c64206e6f7420636f6e666c696374207769746820746865206f6e676f696e672070726f706f7361
                        revert with memory
                          from (64 * arg2.length) + (64 * arg1.length) + 320
                           len (127 * arg2.length) + (95 * arg1.length) + 132
                    if arg1.length != arg2.length:
                        mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                        mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 65
                        mem[(64 * arg2.length) + (64 * arg1.length) + 388 len 65] = 0x64746865206c656e677468206f66207468652061646472657373657320616e642074686520616c6c6f636174696f6e2073686f756c64206265207468652073616d
                        revert with memory
                          from (64 * arg2.length) + (64 * arg1.length) + 320
                           len (127 * arg2.length) + (95 * arg1.length) + 164
                    idx = 0
                    s = 0
                    while idx < arg2.length:
                        require idx < arg2.length
                        _1021 = mem[(32 * idx) + (32 * arg1.length) + 160]
                        if mem[(32 * idx) + (32 * arg1.length) + 160] + s >= s:
                            idx = idx + 1
                            s = mem[(32 * idx) + (32 * arg1.length) + 160] + s
                            continue 
                        mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                        mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 27
                        mem[(64 * arg2.length) + (64 * arg1.length) + 388] = 'SafeMath: addition overflow'
                        revert with memory
                          from (64 * arg2.length) + (64 * arg1.length) + 320
                           len (127 * arg2.length) + (95 * arg1.length) + 100
                    if _1021 * arg2.length != 100 * 10^6:
                        mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                        mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 41
                        mem[(64 * arg2.length) + (64 * arg1.length) + 388 len 41] = 0x737468652073756d206f662074686520616c6c6f636174696f6e2073686f756c642062652031302a2a
                        revert with memory
                          from (64 * arg2.length) + (64 * arg1.length) + 320
                           len (127 * arg2.length) + (95 * arg1.length) + 132
                else:
                    if uint32(status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_448 + status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_384) < block.timestamp:
                        if arg1.length != arg2.length:
                            mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                            mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 65
                            mem[(64 * arg2.length) + (64 * arg1.length) + 388 len 65] = 0x64746865206c656e677468206f66207468652061646472657373657320616e642074686520616c6c6f636174696f6e2073686f756c64206265207468652073616d
                            revert with memory
                              from (64 * arg2.length) + (64 * arg1.length) + 320
                               len (127 * arg2.length) + (95 * arg1.length) + 164
                        idx = 0
                        s = 0
                        while idx < arg2.length:
                            require idx < arg2.length
                            _1039 = mem[(32 * idx) + (32 * arg1.length) + 160]
                            if mem[(32 * idx) + (32 * arg1.length) + 160] + s >= s:
                                idx = idx + 1
                                s = mem[(32 * idx) + (32 * arg1.length) + 160] + s
                                continue 
                            mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                            mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 27
                            mem[(64 * arg2.length) + (64 * arg1.length) + 388] = 'SafeMath: addition overflow'
                            revert with memory
                              from (64 * arg2.length) + (64 * arg1.length) + 320
                               len (127 * arg2.length) + (95 * arg1.length) + 100
                        if _1039 * arg2.length != 100 * 10^6:
                            mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                            mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 41
                            mem[(64 * arg2.length) + (64 * arg1.length) + 388 len 41] = 0x737468652073756d206f662074686520616c6c6f636174696f6e2073686f756c642062652031302a2a
                            revert with memory
                              from (64 * arg2.length) + (64 * arg1.length) + 320
                               len (127 * arg2.length) + (95 * arg1.length) + 132
                    else:
                        if bool(status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_480) != 1:
                            mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                            mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 58
                            mem[(64 * arg2.length) + (64 * arg1.length) + 388 len 58] = 0xfe7468652070726f706f73616c2073686f756c64206e6f7420636f6e666c696374207769746820746865206f6e676f696e672070726f706f7361
                            revert with memory
                              from (64 * arg2.length) + (64 * arg1.length) + 320
                               len (127 * arg2.length) + (95 * arg1.length) + 132
                        if uint32(status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_448 + status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_416) >= block.timestamp:
                            mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                            mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 58
                            mem[(64 * arg2.length) + (64 * arg1.length) + 388 len 58] = 0xfe7468652070726f706f73616c2073686f756c64206e6f7420636f6e666c696374207769746820746865206f6e676f696e672070726f706f7361
                            revert with memory
                              from (64 * arg2.length) + (64 * arg1.length) + 320
                               len (127 * arg2.length) + (95 * arg1.length) + 132
                        if arg1.length != arg2.length:
                            mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                            mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 65
                            mem[(64 * arg2.length) + (64 * arg1.length) + 388 len 65] = 0x64746865206c656e677468206f66207468652061646472657373657320616e642074686520616c6c6f636174696f6e2073686f756c64206265207468652073616d
                            revert with memory
                              from (64 * arg2.length) + (64 * arg1.length) + 320
                               len (127 * arg2.length) + (95 * arg1.length) + 164
                        idx = 0
                        s = 0
                        while idx < arg2.length:
                            require idx < arg2.length
                            _1057 = mem[(32 * idx) + (32 * arg1.length) + 160]
                            if mem[(32 * idx) + (32 * arg1.length) + 160] + s >= s:
                                idx = idx + 1
                                s = mem[(32 * idx) + (32 * arg1.length) + 160] + s
                                continue 
                            mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                            mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 27
                            mem[(64 * arg2.length) + (64 * arg1.length) + 388] = 'SafeMath: addition overflow'
                            revert with memory
                              from (64 * arg2.length) + (64 * arg1.length) + 320
                               len (127 * arg2.length) + (95 * arg1.length) + 100
                        if _1057 * arg2.length != 100 * 10^6:
                            mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                            mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 41
                            mem[(64 * arg2.length) + (64 * arg1.length) + 388 len 41] = 0x737468652073756d206f662074686520616c6c6f636174696f6e2073686f756c642062652031302a2a
                            revert with memory
                              from (64 * arg2.length) + (64 * arg1.length) + 320
                               len (127 * arg2.length) + (95 * arg1.length) + 132
            stor2.length++
            stor2[stor2.length] = sha3(Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32]), (32 * arg1.length) + 96)
            mem[(64 * arg2.length) + (64 * arg1.length) + 384] = 0
            mem[(64 * arg2.length) + (64 * arg1.length) + 416] = uint32(block.timestamp + uint32(stor0.field_160))
            mem[(64 * arg2.length) + (64 * arg1.length) + 448] = uint32(block.timestamp + uint32(stor0.field_192))
            mem[(64 * arg2.length) + (64 * arg1.length) + 480] = uint32(stor0.field_224)
            mem[(64 * arg2.length) + (64 * arg1.length) + 512] = 0
            mem[(64 * arg2.length) + (64 * arg1.length) + 544] = 0
            status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_0 = 0
            status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_256 = 0
            status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_128 = uint128(uint16(stor1.field_32) * ext_call.return_data[0] / 10000)
            status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_256 = 0
            status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_512 = 0
            status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_384 = uint32(block.timestamp + uint32(stor0.field_160))
            status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_416 = uint32(block.timestamp + uint32(stor0.field_192))
            status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_448 = uint32(stor0.field_224)
            status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_480 = 0
            status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_488 = 0
            stor7[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_0 = arg1.length
            if not arg1.length:
                idx = 0
                while stor7[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_0 > idx:
                    stor7[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96][idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 128
                while (32 * arg1.length) + 128 > idx:
                    stor7[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96][s].field_0 = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
                while stor7[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_0 > idx:
                    stor7[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96][idx].field_0 = 0
                    idx = idx + 1
                    continue 
            stor7[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_256 = arg2.length
            if not arg2.length:
                idx = 0
                while stor7[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_256 > idx:
                    stor7[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96][idx + 1].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = (32 * arg1.length) + 160
                while (32 * arg1.length) + (32 * arg2.length) + 160 > idx:
                    stor7[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96][s + 1].field_0 = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
                while stor7[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_256 > idx:
                    stor7[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96][idx + 1].field_0 = 0
                    idx = idx + 1
                    continue 
            mem[(64 * arg2.length) + (64 * arg1.length) + 672] = sha3(Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32]), (32 * arg1.length) + 96)
            mem[(64 * arg2.length) + (64 * arg1.length) + 704] = msg.sender
            if uint128(uint16(stor1.field_32) * ext_call.return_data[0] / 10000) + userStatus[mem[(64 * arg2.length) + (64 * arg1.length) + 672 len (127 * arg1.length) + 64]].field_0 < userStatus[mem[(64 * arg2.length) + (64 * arg1.length) + 672 len (127 * arg1.length) + 64]].field_0:
                revert with 0, 'SafeMath: addition overflow'
            if uint128(uint16(stor1.field_32) * ext_call.return_data[0] / 10000) + userStatus[mem[(64 * arg2.length) + (64 * arg1.length) + 672 len (127 * arg1.length) + 64]].field_0 >= 0x100000000000000000000000000000000:
                revert with 0, 
                            32,
                            39,
                            0x6453616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974,
                            mem[(64 * arg2.length) + (64 * arg1.length) + 843 len 25]
            userStatus[mem[(64 * arg2.length) + (64 * arg1.length) + 672 len (127 * arg1.length) + 64]].field_0 = uint128(uint128(uint16(stor1.field_32) * ext_call.return_data[0] / 10000) + userStatus[mem[(64 * arg2.length) + (64 * arg1.length) + 672 len (127 * arg1.length) + 64]].field_0)
            require ext_code.size(taxTokenAddress)
            staticcall taxTokenAddress.0x179d342f with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getStakingAddress() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x684da514 with:
                 gas gas_remaining wei
                args msg.sender, uint128(uint16(stor1.field_32) * ext_call.return_data[0] / 10000)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(64 * arg2.length) + (64 * arg1.length) + 800] = uint32(block.timestamp + uint32(stor0.field_160))
            mem[(64 * arg2.length) + (64 * arg1.length) + 832] = uint32(block.timestamp + uint32(stor0.field_192))
            mem[(64 * arg2.length) + (64 * arg1.length) + 864] = uint32(stor0.field_224)
            mem[(64 * arg2.length) + (64 * arg1.length) + 736] = 160
            mem[(64 * arg2.length) + (64 * arg1.length) + 896] = arg1.length
            mem[(64 * arg2.length) + (64 * arg1.length) + 928 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[(64 * arg2.length) + (64 * arg1.length) + 768] = (32 * arg1.length) + 192
            mem[(98 * arg1.length) + (64 * arg2.length) + 928] = arg2.length
            mem[(98 * arg1.length) + (64 * arg2.length) + 960 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            emit 0xd48db7a4: mem[(64 * arg2.length) + (64 * arg1.length) + 736 len (32 * arg2.length) + (32 * arg1.length) + 224], sha3(Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32]), (32 * arg1.length) + 96)
            emit 0xbf2f5145: 1, uint128(uint16(stor1.field_32) * ext_call.return_data[0] / 10000), sha3(Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32]), (32 * arg1.length) + 96), msg.sender
    else:
        if uint16(stor1.field_0) * ext_call.return_data[0] / ext_call.return_data[0] != uint16(stor1.field_0):
            mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
            mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 33
            mem[(64 * arg2.length) + (64 * arg1.length) + 388 len 33] = 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
            revert with memory
              from (64 * arg2.length) + (64 * arg1.length) + 320
               len (127 * arg2.length) + (95 * arg1.length) + 132
        if uint16(stor1.field_0) * ext_call.return_data[0] / 10000 >= 0x100000000000000000000000000000000:
            mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
            mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 39
            mem[(64 * arg2.length) + (64 * arg1.length) + 388 len 39] = 0x6453616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974
            revert with memory
              from (64 * arg2.length) + (64 * arg1.length) + 320
               len (127 * arg2.length) + (95 * arg1.length) + 132
        mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x18160ddd00000000000000000000000000000000000000000000000000000000
        require ext_code.size(taxTokenAddress)
        staticcall taxTokenAddress.0x18160ddd with:
                gas gas_remaining wei
               args mem[(64 * arg2.length) + (64 * arg1.length) + 324 len 127 * arg1.length]
        mem[(64 * arg2.length) + (64 * arg1.length) + 320] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_416:
                if arg1.length != arg2.length:
                    mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                    mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 65
                    mem[(64 * arg2.length) + (64 * arg1.length) + 388 len 65] = 0x64746865206c656e677468206f66207468652061646472657373657320616e642074686520616c6c6f636174696f6e2073686f756c64206265207468652073616d
                    revert with memory
                      from (64 * arg2.length) + (64 * arg1.length) + 320
                       len (127 * arg2.length) + (95 * arg1.length) + 164
                idx = 0
                s = 0
                while idx < arg2.length:
                    require idx < arg2.length
                    _931 = mem[(32 * idx) + (32 * arg1.length) + 160]
                    if mem[(32 * idx) + (32 * arg1.length) + 160] + s >= s:
                        idx = idx + 1
                        s = mem[(32 * idx) + (32 * arg1.length) + 160] + s
                        continue 
                    mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                    mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 27
                    mem[(64 * arg2.length) + (64 * arg1.length) + 388] = 'SafeMath: addition overflow'
                    revert with memory
                      from (64 * arg2.length) + (64 * arg1.length) + 320
                       len (127 * arg2.length) + (95 * arg1.length) + 100
                if _931 * arg2.length != 100 * 10^6:
                    mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                    mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 41
                    mem[(64 * arg2.length) + (64 * arg1.length) + 388 len 41] = 0x737468652073756d206f662074686520616c6c6f636174696f6e2073686f756c642062652031302a2a
                    revert with memory
                      from (64 * arg2.length) + (64 * arg1.length) + 320
                       len (127 * arg2.length) + (95 * arg1.length) + 132
            else:
                if status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_480:
                    if bool(status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_480) != 1:
                        mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                        mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 58
                        mem[(64 * arg2.length) + (64 * arg1.length) + 388 len 58] = 0xfe7468652070726f706f73616c2073686f756c64206e6f7420636f6e666c696374207769746820746865206f6e676f696e672070726f706f7361
                        revert with memory
                          from (64 * arg2.length) + (64 * arg1.length) + 320
                           len (127 * arg2.length) + (95 * arg1.length) + 132
                    if uint32(status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_448 + status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_416) >= block.timestamp:
                        mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                        mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 58
                        mem[(64 * arg2.length) + (64 * arg1.length) + 388 len 58] = 0xfe7468652070726f706f73616c2073686f756c64206e6f7420636f6e666c696374207769746820746865206f6e676f696e672070726f706f7361
                        revert with memory
                          from (64 * arg2.length) + (64 * arg1.length) + 320
                           len (127 * arg2.length) + (95 * arg1.length) + 132
                    if arg1.length != arg2.length:
                        mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                        mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 65
                        mem[(64 * arg2.length) + (64 * arg1.length) + 388 len 65] = 0x64746865206c656e677468206f66207468652061646472657373657320616e642074686520616c6c6f636174696f6e2073686f756c64206265207468652073616d
                        revert with memory
                          from (64 * arg2.length) + (64 * arg1.length) + 320
                           len (127 * arg2.length) + (95 * arg1.length) + 164
                    idx = 0
                    s = 0
                    while idx < arg2.length:
                        require idx < arg2.length
                        _949 = mem[(32 * idx) + (32 * arg1.length) + 160]
                        if mem[(32 * idx) + (32 * arg1.length) + 160] + s >= s:
                            idx = idx + 1
                            s = mem[(32 * idx) + (32 * arg1.length) + 160] + s
                            continue 
                        mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                        mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 27
                        mem[(64 * arg2.length) + (64 * arg1.length) + 388] = 'SafeMath: addition overflow'
                        revert with memory
                          from (64 * arg2.length) + (64 * arg1.length) + 320
                           len (127 * arg2.length) + (95 * arg1.length) + 100
                    if _949 * arg2.length != 100 * 10^6:
                        mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                        mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 41
                        mem[(64 * arg2.length) + (64 * arg1.length) + 388 len 41] = 0x737468652073756d206f662074686520616c6c6f636174696f6e2073686f756c642062652031302a2a
                        revert with memory
                          from (64 * arg2.length) + (64 * arg1.length) + 320
                           len (127 * arg2.length) + (95 * arg1.length) + 132
                else:
                    if uint32(status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_448 + status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_384) < block.timestamp:
                        if arg1.length != arg2.length:
                            mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                            mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 65
                            mem[(64 * arg2.length) + (64 * arg1.length) + 388 len 65] = 0x64746865206c656e677468206f66207468652061646472657373657320616e642074686520616c6c6f636174696f6e2073686f756c64206265207468652073616d
                            revert with memory
                              from (64 * arg2.length) + (64 * arg1.length) + 320
                               len (127 * arg2.length) + (95 * arg1.length) + 164
                        idx = 0
                        s = 0
                        while idx < arg2.length:
                            require idx < arg2.length
                            _967 = mem[(32 * idx) + (32 * arg1.length) + 160]
                            if mem[(32 * idx) + (32 * arg1.length) + 160] + s >= s:
                                idx = idx + 1
                                s = mem[(32 * idx) + (32 * arg1.length) + 160] + s
                                continue 
                            mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                            mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 27
                            mem[(64 * arg2.length) + (64 * arg1.length) + 388] = 'SafeMath: addition overflow'
                            revert with memory
                              from (64 * arg2.length) + (64 * arg1.length) + 320
                               len (127 * arg2.length) + (95 * arg1.length) + 100
                        if _967 * arg2.length != 100 * 10^6:
                            mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                            mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 41
                            mem[(64 * arg2.length) + (64 * arg1.length) + 388 len 41] = 0x737468652073756d206f662074686520616c6c6f636174696f6e2073686f756c642062652031302a2a
                            revert with memory
                              from (64 * arg2.length) + (64 * arg1.length) + 320
                               len (127 * arg2.length) + (95 * arg1.length) + 132
                    else:
                        if bool(status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_480) != 1:
                            mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                            mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 58
                            mem[(64 * arg2.length) + (64 * arg1.length) + 388 len 58] = 0xfe7468652070726f706f73616c2073686f756c64206e6f7420636f6e666c696374207769746820746865206f6e676f696e672070726f706f7361
                            revert with memory
                              from (64 * arg2.length) + (64 * arg1.length) + 320
                               len (127 * arg2.length) + (95 * arg1.length) + 132
                        if uint32(status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_448 + status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_416) >= block.timestamp:
                            mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                            mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 58
                            mem[(64 * arg2.length) + (64 * arg1.length) + 388 len 58] = 0xfe7468652070726f706f73616c2073686f756c64206e6f7420636f6e666c696374207769746820746865206f6e676f696e672070726f706f7361
                            revert with memory
                              from (64 * arg2.length) + (64 * arg1.length) + 320
                               len (127 * arg2.length) + (95 * arg1.length) + 132
                        if arg1.length != arg2.length:
                            mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                            mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 65
                            mem[(64 * arg2.length) + (64 * arg1.length) + 388 len 65] = 0x64746865206c656e677468206f66207468652061646472657373657320616e642074686520616c6c6f636174696f6e2073686f756c64206265207468652073616d
                            revert with memory
                              from (64 * arg2.length) + (64 * arg1.length) + 320
                               len (127 * arg2.length) + (95 * arg1.length) + 164
                        idx = 0
                        s = 0
                        while idx < arg2.length:
                            require idx < arg2.length
                            _985 = mem[(32 * idx) + (32 * arg1.length) + 160]
                            if mem[(32 * idx) + (32 * arg1.length) + 160] + s >= s:
                                idx = idx + 1
                                s = mem[(32 * idx) + (32 * arg1.length) + 160] + s
                                continue 
                            mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                            mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 27
                            mem[(64 * arg2.length) + (64 * arg1.length) + 388] = 'SafeMath: addition overflow'
                            revert with memory
                              from (64 * arg2.length) + (64 * arg1.length) + 320
                               len (127 * arg2.length) + (95 * arg1.length) + 100
                        if _985 * arg2.length != 100 * 10^6:
                            mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                            mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 41
                            mem[(64 * arg2.length) + (64 * arg1.length) + 388 len 41] = 0x737468652073756d206f662074686520616c6c6f636174696f6e2073686f756c642062652031302a2a
                            revert with memory
                              from (64 * arg2.length) + (64 * arg1.length) + 320
                               len (127 * arg2.length) + (95 * arg1.length) + 132
            stor2.length++
            stor2[stor2.length] = sha3(Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32]), (32 * arg1.length) + 96)
            mem[(64 * arg2.length) + (64 * arg1.length) + 384] = 0
            mem[(64 * arg2.length) + (64 * arg1.length) + 416] = uint32(block.timestamp + uint32(stor0.field_160))
            mem[(64 * arg2.length) + (64 * arg1.length) + 448] = uint32(block.timestamp + uint32(stor0.field_192))
            mem[(64 * arg2.length) + (64 * arg1.length) + 480] = uint32(stor0.field_224)
            mem[(64 * arg2.length) + (64 * arg1.length) + 512] = 0
            mem[(64 * arg2.length) + (64 * arg1.length) + 544] = 0
            status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_0 = uint128(uint16(stor1.field_0) * ext_call.return_data[0] / 10000)
            status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_128 = 0
            status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_256 = 0
            status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_256 = 0
            status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_512 = 0
            status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_384 = uint32(block.timestamp + uint32(stor0.field_160))
            status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_416 = uint32(block.timestamp + uint32(stor0.field_192))
            status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_448 = uint32(stor0.field_224)
            status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_480 = 0
            status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_488 = 0
            stor7[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_0 = arg1.length
            if not arg1.length:
                idx = 0
                while stor7[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_0 > idx:
                    stor7[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96][idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 128
                while (32 * arg1.length) + 128 > idx:
                    stor7[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96][s].field_0 = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
                while stor7[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_0 > idx:
                    stor7[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96][idx].field_0 = 0
                    idx = idx + 1
                    continue 
            stor7[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_256 = arg2.length
            if not arg2.length:
                idx = 0
                while stor7[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_256 > idx:
                    stor7[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96][idx + 1].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = (32 * arg1.length) + 160
                while (32 * arg1.length) + (32 * arg2.length) + 160 > idx:
                    stor7[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96][s + 1].field_0 = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
                while stor7[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_256 > idx:
                    stor7[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96][idx + 1].field_0 = 0
                    idx = idx + 1
                    continue 
            mem[(64 * arg2.length) + (64 * arg1.length) + 672] = sha3(Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32]), (32 * arg1.length) + 96)
            mem[(64 * arg2.length) + (64 * arg1.length) + 704] = msg.sender
            if userStatus[mem[(64 * arg2.length) + (64 * arg1.length) + 672 len (127 * arg1.length) + 64]].field_0 < userStatus[mem[(64 * arg2.length) + (64 * arg1.length) + 672 len (127 * arg1.length) + 64]].field_0:
                revert with 0, 'SafeMath: addition overflow'
            if userStatus[mem[(64 * arg2.length) + (64 * arg1.length) + 672 len (127 * arg1.length) + 64]].field_0 >= 0x100000000000000000000000000000000:
                revert with 0, 
                            32,
                            39,
                            0x6453616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974,
                            mem[(64 * arg2.length) + (64 * arg1.length) + 843 len 25]
            userStatus[mem[(64 * arg2.length) + (64 * arg1.length) + 672 len (127 * arg1.length) + 64]].field_0 = userStatus[mem[(64 * arg2.length) + (64 * arg1.length) + 672 len (127 * arg1.length) + 64]].field_0
            require ext_code.size(taxTokenAddress)
            staticcall taxTokenAddress.0x179d342f with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getStakingAddress() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x684da514 with:
                 gas gas_remaining wei
                args msg.sender, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(64 * arg2.length) + (64 * arg1.length) + 800] = uint32(block.timestamp + uint32(stor0.field_160))
            mem[(64 * arg2.length) + (64 * arg1.length) + 832] = uint32(block.timestamp + uint32(stor0.field_192))
            mem[(64 * arg2.length) + (64 * arg1.length) + 864] = uint32(stor0.field_224)
            mem[(64 * arg2.length) + (64 * arg1.length) + 736] = 160
            mem[(64 * arg2.length) + (64 * arg1.length) + 896] = arg1.length
            mem[(64 * arg2.length) + (64 * arg1.length) + 928 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[(64 * arg2.length) + (64 * arg1.length) + 768] = (32 * arg1.length) + 192
            mem[(98 * arg1.length) + (64 * arg2.length) + 928] = arg2.length
            mem[(98 * arg1.length) + (64 * arg2.length) + 960 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            emit 0xd48db7a4: mem[(64 * arg2.length) + (64 * arg1.length) + 736 len (32 * arg2.length) + (32 * arg1.length) + 224], sha3(Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32]), (32 * arg1.length) + 96)
            emit 0xbf2f5145: 1, 0, sha3(Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32]), (32 * arg1.length) + 96), msg.sender
        else:
            if uint16(stor1.field_32) * ext_call.return_data[0] / ext_call.return_data[0] != uint16(stor1.field_32):
                mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 33
                mem[(64 * arg2.length) + (64 * arg1.length) + 388 len 33] = 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                revert with memory
                  from (64 * arg2.length) + (64 * arg1.length) + 320
                   len (127 * arg2.length) + (95 * arg1.length) + 132
            if uint16(stor1.field_32) * ext_call.return_data[0] / 10000 >= 0x100000000000000000000000000000000:
                mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 39
                mem[(64 * arg2.length) + (64 * arg1.length) + 388 len 39] = 0x6453616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974
                revert with memory
                  from (64 * arg2.length) + (64 * arg1.length) + 320
                   len (127 * arg2.length) + (95 * arg1.length) + 132
            if not status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_416:
                if arg1.length != arg2.length:
                    mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                    mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 65
                    mem[(64 * arg2.length) + (64 * arg1.length) + 388 len 65] = 0x64746865206c656e677468206f66207468652061646472657373657320616e642074686520616c6c6f636174696f6e2073686f756c64206265207468652073616d
                    revert with memory
                      from (64 * arg2.length) + (64 * arg1.length) + 320
                       len (127 * arg2.length) + (95 * arg1.length) + 164
                idx = 0
                s = 0
                while idx < arg2.length:
                    require idx < arg2.length
                    _859 = mem[(32 * idx) + (32 * arg1.length) + 160]
                    if mem[(32 * idx) + (32 * arg1.length) + 160] + s >= s:
                        idx = idx + 1
                        s = mem[(32 * idx) + (32 * arg1.length) + 160] + s
                        continue 
                    mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                    mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 27
                    mem[(64 * arg2.length) + (64 * arg1.length) + 388] = 'SafeMath: addition overflow'
                    revert with memory
                      from (64 * arg2.length) + (64 * arg1.length) + 320
                       len (127 * arg2.length) + (95 * arg1.length) + 100
                if _859 * arg2.length != 100 * 10^6:
                    mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                    mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 41
                    mem[(64 * arg2.length) + (64 * arg1.length) + 388 len 41] = 0x737468652073756d206f662074686520616c6c6f636174696f6e2073686f756c642062652031302a2a
                    revert with memory
                      from (64 * arg2.length) + (64 * arg1.length) + 320
                       len (127 * arg2.length) + (95 * arg1.length) + 132
            else:
                if status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_480:
                    if bool(status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_480) != 1:
                        mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                        mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 58
                        mem[(64 * arg2.length) + (64 * arg1.length) + 388 len 58] = 0xfe7468652070726f706f73616c2073686f756c64206e6f7420636f6e666c696374207769746820746865206f6e676f696e672070726f706f7361
                        revert with memory
                          from (64 * arg2.length) + (64 * arg1.length) + 320
                           len (127 * arg2.length) + (95 * arg1.length) + 132
                    if uint32(status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_448 + status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_416) >= block.timestamp:
                        mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                        mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 58
                        mem[(64 * arg2.length) + (64 * arg1.length) + 388 len 58] = 0xfe7468652070726f706f73616c2073686f756c64206e6f7420636f6e666c696374207769746820746865206f6e676f696e672070726f706f7361
                        revert with memory
                          from (64 * arg2.length) + (64 * arg1.length) + 320
                           len (127 * arg2.length) + (95 * arg1.length) + 132
                    if arg1.length != arg2.length:
                        mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                        mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 65
                        mem[(64 * arg2.length) + (64 * arg1.length) + 388 len 65] = 0x64746865206c656e677468206f66207468652061646472657373657320616e642074686520616c6c6f636174696f6e2073686f756c64206265207468652073616d
                        revert with memory
                          from (64 * arg2.length) + (64 * arg1.length) + 320
                           len (127 * arg2.length) + (95 * arg1.length) + 164
                    idx = 0
                    s = 0
                    while idx < arg2.length:
                        require idx < arg2.length
                        _877 = mem[(32 * idx) + (32 * arg1.length) + 160]
                        if mem[(32 * idx) + (32 * arg1.length) + 160] + s >= s:
                            idx = idx + 1
                            s = mem[(32 * idx) + (32 * arg1.length) + 160] + s
                            continue 
                        mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                        mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 27
                        mem[(64 * arg2.length) + (64 * arg1.length) + 388] = 'SafeMath: addition overflow'
                        revert with memory
                          from (64 * arg2.length) + (64 * arg1.length) + 320
                           len (127 * arg2.length) + (95 * arg1.length) + 100
                    if _877 * arg2.length != 100 * 10^6:
                        mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                        mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 41
                        mem[(64 * arg2.length) + (64 * arg1.length) + 388 len 41] = 0x737468652073756d206f662074686520616c6c6f636174696f6e2073686f756c642062652031302a2a
                        revert with memory
                          from (64 * arg2.length) + (64 * arg1.length) + 320
                           len (127 * arg2.length) + (95 * arg1.length) + 132
                else:
                    if uint32(status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_448 + status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_384) < block.timestamp:
                        if arg1.length != arg2.length:
                            mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                            mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 65
                            mem[(64 * arg2.length) + (64 * arg1.length) + 388 len 65] = 0x64746865206c656e677468206f66207468652061646472657373657320616e642074686520616c6c6f636174696f6e2073686f756c64206265207468652073616d
                            revert with memory
                              from (64 * arg2.length) + (64 * arg1.length) + 320
                               len (127 * arg2.length) + (95 * arg1.length) + 164
                        idx = 0
                        s = 0
                        while idx < arg2.length:
                            require idx < arg2.length
                            _895 = mem[(32 * idx) + (32 * arg1.length) + 160]
                            if mem[(32 * idx) + (32 * arg1.length) + 160] + s >= s:
                                idx = idx + 1
                                s = mem[(32 * idx) + (32 * arg1.length) + 160] + s
                                continue 
                            mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                            mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 27
                            mem[(64 * arg2.length) + (64 * arg1.length) + 388] = 'SafeMath: addition overflow'
                            revert with memory
                              from (64 * arg2.length) + (64 * arg1.length) + 320
                               len (127 * arg2.length) + (95 * arg1.length) + 100
                        if _895 * arg2.length != 100 * 10^6:
                            mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                            mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 41
                            mem[(64 * arg2.length) + (64 * arg1.length) + 388 len 41] = 0x737468652073756d206f662074686520616c6c6f636174696f6e2073686f756c642062652031302a2a
                            revert with memory
                              from (64 * arg2.length) + (64 * arg1.length) + 320
                               len (127 * arg2.length) + (95 * arg1.length) + 132
                    else:
                        if bool(status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_480) != 1:
                            mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                            mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 58
                            mem[(64 * arg2.length) + (64 * arg1.length) + 388 len 58] = 0xfe7468652070726f706f73616c2073686f756c64206e6f7420636f6e666c696374207769746820746865206f6e676f696e672070726f706f7361
                            revert with memory
                              from (64 * arg2.length) + (64 * arg1.length) + 320
                               len (127 * arg2.length) + (95 * arg1.length) + 132
                        if uint32(status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_448 + status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_416) >= block.timestamp:
                            mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                            mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 58
                            mem[(64 * arg2.length) + (64 * arg1.length) + 388 len 58] = 0xfe7468652070726f706f73616c2073686f756c64206e6f7420636f6e666c696374207769746820746865206f6e676f696e672070726f706f7361
                            revert with memory
                              from (64 * arg2.length) + (64 * arg1.length) + 320
                               len (127 * arg2.length) + (95 * arg1.length) + 132
                        if arg1.length != arg2.length:
                            mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                            mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 65
                            mem[(64 * arg2.length) + (64 * arg1.length) + 388 len 65] = 0x64746865206c656e677468206f66207468652061646472657373657320616e642074686520616c6c6f636174696f6e2073686f756c64206265207468652073616d
                            revert with memory
                              from (64 * arg2.length) + (64 * arg1.length) + 320
                               len (127 * arg2.length) + (95 * arg1.length) + 164
                        idx = 0
                        s = 0
                        while idx < arg2.length:
                            require idx < arg2.length
                            _913 = mem[(32 * idx) + (32 * arg1.length) + 160]
                            if mem[(32 * idx) + (32 * arg1.length) + 160] + s >= s:
                                idx = idx + 1
                                s = mem[(32 * idx) + (32 * arg1.length) + 160] + s
                                continue 
                            mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                            mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 27
                            mem[(64 * arg2.length) + (64 * arg1.length) + 388] = 'SafeMath: addition overflow'
                            revert with memory
                              from (64 * arg2.length) + (64 * arg1.length) + 320
                               len (127 * arg2.length) + (95 * arg1.length) + 100
                        if _913 * arg2.length != 100 * 10^6:
                            mem[(64 * arg2.length) + (64 * arg1.length) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg2.length) + (64 * arg1.length) + 324] = 32
                            mem[(64 * arg2.length) + (64 * arg1.length) + 356] = 41
                            mem[(64 * arg2.length) + (64 * arg1.length) + 388 len 41] = 0x737468652073756d206f662074686520616c6c6f636174696f6e2073686f756c642062652031302a2a
                            revert with memory
                              from (64 * arg2.length) + (64 * arg1.length) + 320
                               len (127 * arg2.length) + (95 * arg1.length) + 132
            stor2.length++
            stor2[stor2.length] = sha3(Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32]), (32 * arg1.length) + 96)
            mem[(64 * arg2.length) + (64 * arg1.length) + 384] = 0
            mem[(64 * arg2.length) + (64 * arg1.length) + 416] = uint32(block.timestamp + uint32(stor0.field_160))
            mem[(64 * arg2.length) + (64 * arg1.length) + 448] = uint32(block.timestamp + uint32(stor0.field_192))
            mem[(64 * arg2.length) + (64 * arg1.length) + 480] = uint32(stor0.field_224)
            mem[(64 * arg2.length) + (64 * arg1.length) + 512] = 0
            mem[(64 * arg2.length) + (64 * arg1.length) + 544] = 0
            status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_0 = uint128(uint16(stor1.field_0) * ext_call.return_data[0] / 10000)
            status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_128 = uint128(uint16(stor1.field_32) * ext_call.return_data[0] / 10000)
            status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_256 = 0
            status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_512 = 0
            status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_384 = uint32(block.timestamp + uint32(stor0.field_160))
            status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_416 = uint32(block.timestamp + uint32(stor0.field_192))
            status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_448 = uint32(stor0.field_224)
            status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_480 = 0
            status[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_488 = 0
            stor7[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_0 = arg1.length
            if not arg1.length:
                idx = 0
                while stor7[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_0 > idx:
                    stor7[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96][idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 128
                while (32 * arg1.length) + 128 > idx:
                    stor7[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96][s].field_0 = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
                while stor7[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_0 > idx:
                    stor7[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96][idx].field_0 = 0
                    idx = idx + 1
                    continue 
            stor7[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_256 = arg2.length
            if not arg2.length:
                idx = 0
                while stor7[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_256 > idx:
                    stor7[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96][idx + 1].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = (32 * arg1.length) + 160
                while (32 * arg1.length) + (32 * arg2.length) + 160 > idx:
                    stor7[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96][s + 1].field_0 = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
                while stor7[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96].field_256 > idx:
                    stor7[Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32])][(32 * arg1.length) + 96][idx + 1].field_0 = 0
                    idx = idx + 1
                    continue 
            mem[(64 * arg2.length) + (64 * arg1.length) + 672] = sha3(Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32]), (32 * arg1.length) + 96)
            mem[(64 * arg2.length) + (64 * arg1.length) + 704] = msg.sender
            if uint128(uint16(stor1.field_32) * ext_call.return_data[0] / 10000) + userStatus[mem[(64 * arg2.length) + (64 * arg1.length) + 672 len (127 * arg1.length) + 64]].field_0 < userStatus[mem[(64 * arg2.length) + (64 * arg1.length) + 672 len (127 * arg1.length) + 64]].field_0:
                revert with 0, 'SafeMath: addition overflow'
            if uint128(uint16(stor1.field_32) * ext_call.return_data[0] / 10000) + userStatus[mem[(64 * arg2.length) + (64 * arg1.length) + 672 len (127 * arg1.length) + 64]].field_0 >= 0x100000000000000000000000000000000:
                revert with 0, 
                            32,
                            39,
                            0x6453616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974,
                            mem[(64 * arg2.length) + (64 * arg1.length) + 843 len 25]
            userStatus[mem[(64 * arg2.length) + (64 * arg1.length) + 672 len (127 * arg1.length) + 64]].field_0 = uint128(uint128(uint16(stor1.field_32) * ext_call.return_data[0] / 10000) + userStatus[mem[(64 * arg2.length) + (64 * arg1.length) + 672 len (127 * arg1.length) + 64]].field_0)
            require ext_code.size(taxTokenAddress)
            staticcall taxTokenAddress.0x179d342f with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getStakingAddress() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x684da514 with:
                 gas gas_remaining wei
                args msg.sender, uint128(uint16(stor1.field_32) * ext_call.return_data[0] / 10000)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(64 * arg2.length) + (64 * arg1.length) + 800] = uint32(block.timestamp + uint32(stor0.field_160))
            mem[(64 * arg2.length) + (64 * arg1.length) + 832] = uint32(block.timestamp + uint32(stor0.field_192))
            mem[(64 * arg2.length) + (64 * arg1.length) + 864] = uint32(stor0.field_224)
            mem[(64 * arg2.length) + (64 * arg1.length) + 736] = 160
            mem[(64 * arg2.length) + (64 * arg1.length) + 896] = arg1.length
            mem[(64 * arg2.length) + (64 * arg1.length) + 928 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[(64 * arg2.length) + (64 * arg1.length) + 768] = (32 * arg1.length) + 192
            mem[(98 * arg1.length) + (64 * arg2.length) + 928] = arg2.length
            mem[(98 * arg1.length) + (64 * arg2.length) + 960 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            emit 0xd48db7a4: mem[(64 * arg2.length) + (64 * arg1.length) + 736 len (32 * arg2.length) + (32 * arg1.length) + 224], sha3(Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32]), (32 * arg1.length) + 96)
            emit 0xbf2f5145: 1, uint128(uint16(stor1.field_32) * ext_call.return_data[0] / 10000), sha3(Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32]), (32 * arg1.length) + 96), msg.sender
}



}
