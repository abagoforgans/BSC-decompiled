contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
array of address stor1;
address owner;
mapping of address stor99;
address pendingOwner;
mapping of uint8 stor103;
uint256 stor104;
mapping of struct stor105;
mapping of struct stor106;
mapping of address gatewayByToken;
mapping of address tokenBySymbol;

function getGatewayByToken(address arg1) payable {
    require calldata.size - 4 >= 32
    return gatewayByToken[address(arg1)]
}

function getGatewayBySymbol(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    return gatewayByToken[stor108[arg1[all]]]
}

function owner() payable {
    return owner
}

function pendingOwner() payable {
    return pendingOwner
}

function getTokenBySymbol(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    return tokenBySymbol[arg1[all]]
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function blacklistRecoverableToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    stor103[address(arg1)] = 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if arg1 == owner:
        revert with 0, 'Claimable: invalid new owner'
    if pendingOwner == arg1:
        revert with 0, 'Claimable: invalid new owner'
    pendingOwner = arg1
}

function claimOwnership() payable {
    if pendingOwner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x64436c61696d61626c653a2063616c6c6572206973206e6f74207468652070656e64696e67206f776e65,
                    mem[206 len 22]
    if not pendingOwner:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, pendingOwner);
    owner = pendingOwner
    pendingOwner = 0
}

function symbolIsValid(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if uint8(mem[idx + 128]) >> 248 >= 65:
            idx = idx + 1
            continue 
        mem[ceil32(arg1.length) + 128] = 0
        return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[ceil32(arg1.length) + 128] = 1
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function updateGateway(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if not gatewayByToken[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x654761746577617952656769737472793a20746f6b656e206e6f7420726567697374657265,
                    mem[201 len 27]
    if not uint8(stor105[stor107[address(arg1)]].field_0):
        revert with 0, 'LinkedList: not in list'
    stor105[stor105[stor107[address(arg1)]].field_8].field_256 = stor105[stor107[address(arg1)]].field_256
    Mask(248, 0, stor105[stor105[stor107[address(arg1)]].field_256].field_8) = stor105[stor107[address(arg1)]].field_8
    Mask(168, 0, stor105[stor107[address(arg1)]].field_0) = 0
    stor105[stor107[address(arg1)]].field_256 = 0
    if not arg2:
        revert with 0, 'LinkedList: invalid address'
    if uint8(stor105[address(arg2)].field_0):
        revert with 0, 'LinkedList: already in list'
    if not uint8(stor105[stor105[0].field_0].field_0):
        if stor105[0].field_8:
            revert with 0, 'LinkedList: not in list'
    Mask(248, 0, stor105[arg2].field_8) = stor105[0].field_8
    stor105[arg2].field_256 = stor105[stor105[0].field_0].field_256
    stor105[stor105[0].field_0].field_256 = arg2
    stor105[stor105[stor105[0].field_0].field_256].field_8 = arg2
    uint8(stor105[arg2].field_0) = 1
    gatewayByToken[address(arg1)] = arg2
    emit LogGatewayUpdated(arg1, gatewayByToken[address(arg1)], arg2);
}

function removeGateway(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    mem[96 len arg1.length] = arg1[all]
    mem[arg1.length + 96] = 108
    if not tokenBySymbol[arg1[all]]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x724761746577617952656769737472793a2073796d626f6c206e6f7420726567697374657265,
                    mem[202 len 26]
    gatewayByToken[stor108[arg1[all]]] = 0
    tokenBySymbol[arg1[all]] = 0
    if not uint8(stor105[stor107[stor108[arg1[all]]]].field_0):
        revert with 0, 'LinkedList: not in list'
    stor105[stor105[stor107[stor108[arg1[all]]]].field_8].field_256 = stor105[stor107[stor108[arg1[all]]]].field_256
    Mask(248, 0, stor105[stor105[stor107[stor108[arg1[all]]]].field_256].field_8) = stor105[stor107[stor108[arg1[all]]]].field_8
    Mask(168, 0, stor105[stor107[stor108[arg1[all]]]].field_0) = 0
    stor105[stor107[stor108[arg1[all]]]].field_256 = 0
    if not uint8(stor106[stor108[arg1[all]]].field_0):
        revert with 0, 'LinkedList: not in list'
    stor106[stor106[stor108[arg1[all]]].field_8].field_256 = stor106[stor108[arg1[all]]].field_256
    Mask(248, 0, stor106[stor106[stor108[arg1[all]]].field_256].field_8) = stor106[stor108[arg1[all]]].field_8
    Mask(168, 0, stor106[stor108[arg1[all]]].field_0) = 0
    stor106[stor108[arg1[all]]].field_256 = 0
    stor104--
    emit LogGatewayDeregistered(Array(len=arg1.length, data=arg1[all]), sha3(arg1[all]), tokenBySymbol[arg1[all]], gatewayByToken[stor108[arg1[all]]]);
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor0.field_8):
        owner = arg1
        emit OwnershipTransferred(0, arg1);
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x64436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            owner = arg1
            emit OwnershipTransferred(0, arg1);
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x64436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                owner = arg1
                emit OwnershipTransferred(0, arg1);
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x64436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    owner = arg1
                    emit OwnershipTransferred(0, arg1);
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    owner = arg1
                    emit OwnershipTransferred(0, arg1);
                    uint8(stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
}

function recoverTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if stor103[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x7343616e5265636c61696d546f6b656e733a20746f6b656e206973206e6f74207265636f76657261626c,
                    mem[206 len 22]
    if not arg1:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(arg1):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
        call arg1 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
        else:
            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[228]:
                    revert with 0, 
                                32,
                                42,
                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 307 len 22]
}

function setGateway(string arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if uint8(mem[idx + 128]) >> 248 < 65:
            revert with 0, 
                        32,
                        44,
                        0x644761746577617952656769737472793a2073796d626f6c206d75737420626520616c7068616e756d657269,
                        mem[ceil32(arg1.length) + 240 len 20]
        idx = idx + 1
        continue 
    if uint8(stor105[address(arg3)].field_0):
        revert with 0, 
                    32,
                    43,
                    0x724761746577617952656769737472793a206761746577617920616c726561647920726567697374657265,
                    mem[ceil32(arg1.length) + 239 len 21]
    if gatewayByToken[address(arg2)]:
        revert with 0, 
                    32,
                    41,
                    0x634761746577617952656769737472793a20746f6b656e20616c726561647920726567697374657265,
                    mem[ceil32(arg1.length) + 237 len 23]
    mem[ceil32(arg1.length) + 128 len arg1.length] = arg1[all]
    mem[arg1.length + ceil32(arg1.length) + 128] = 108
    if stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)]:
        revert with 0, 
                    32,
                    42,
                    0x644761746577617952656769737472793a2073796d626f6c20616c726561647920726567697374657265,
                    mem[ceil32(arg1.length) + 238 len 22]
    if not arg3:
        revert with 0, 'LinkedList: invalid address'
    if uint8(stor105[address(arg3)].field_0):
        revert with 0, 'LinkedList: already in list'
    if not uint8(stor105[stor105[0].field_0].field_0):
        if stor105[0].field_8:
            revert with 0, 'LinkedList: not in list'
    Mask(248, 0, stor105[arg3].field_8) = stor105[0].field_8
    stor105[arg3].field_256 = stor105[stor105[0].field_0].field_256
    stor105[stor105[0].field_0].field_256 = arg3
    stor105[stor105[stor105[0].field_0].field_256].field_8 = arg3
    uint8(stor105[arg3].field_0) = 1
    if not arg2:
        revert with 0, 'LinkedList: invalid address'
    if uint8(stor106[address(arg2)].field_0):
        revert with 0, 'LinkedList: already in list'
    if not uint8(stor106[stor106[0].field_0].field_0):
        if stor106[0].field_8:
            revert with 0, 'LinkedList: not in list'
    Mask(248, 0, stor106[arg2].field_8) = stor106[0].field_8
    stor106[arg2].field_256 = stor106[stor106[0].field_0].field_256
    stor106[stor106[0].field_0].field_256 = arg2
    stor106[stor106[stor106[0].field_0].field_256].field_8 = arg2
    uint8(stor106[arg2].field_0) = 1
    mem[ceil32(arg1.length) + 128 len arg1.length] = arg1[all]
    mem[arg1.length + ceil32(arg1.length) + 128] = 108
    stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)] = arg2
    gatewayByToken[address(arg2)] = arg3
    stor104++
    mem[ceil32(arg1.length) + 128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 32
    mem[ceil32(arg1.length) + 160] = arg1.length
    emit LogGatewayRegistered(string rg1, string rg2, address rg3, address rg4):
                              Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0),
                              mem[arg1.length + 160 len (2 * ceil32(arg1.length)) + -arg1.length + 32],
                              sha3(arg1[all]),
                              arg2,
                              arg3,
}

function getGateways(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg2:
        if stor104 <= 0:
            revert with 0, 'LinkedList: invalid count'
        mem[0] = arg1
        mem[32] = 105
        if not uint8(stor105[address(arg1)].field_0):
            if arg1:
                revert with 0, 'LinkedList: not in list'
        mem[96] = stor104
        mem[64] = (32 * stor104) + 128
        if stor104:
            mem[128 len 32 * stor104] = code.data[7466 len 32 * stor104]
        if arg1:
            s = arg1
            idx = 0
            while idx < stor104:
                if not address(s):
                    mem[(32 * stor104) + 128] = 32
                    mem[(32 * stor104) + 160] = stor104
                    idx = 0
                    while idx < 32 * stor104:
                        mem[idx + (32 * stor104) + 192] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    return memory
                      from (32 * stor104) + 128
                       len (96 * stor104) + 64
                require idx < stor104
                mem[(32 * idx) + 128] = address(s)
                if not uint8(stor105[address(s)].field_0):
                    revert with 0, 'LinkedList: not in list'
                mem[0] = address(s)
                mem[32] = 105
                s = stor105[address(s)].field_256
                idx = idx + 1
                continue 
        else:
            mem[0] = 0
            mem[32] = 105
            s = stor1[sha3(mem[0 len 64])]
            idx = 0
            while idx < stor104:
                if not address(s):
                    mem[(32 * stor104) + 128] = 32
                    mem[(32 * stor104) + 160] = stor104
                    idx = 0
                    while idx < 32 * stor104:
                        mem[idx + (32 * stor104) + 192] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    return memory
                      from (32 * stor104) + 128
                       len (96 * stor104) + 64
                require idx < stor104
                mem[(32 * idx) + 128] = address(s)
                if not uint8(stor105[address(s)].field_0):
                    revert with 0, 'LinkedList: not in list'
                mem[0] = address(s)
                mem[32] = 105
                s = stor105[address(s)].field_256
                idx = idx + 1
                continue 
        mem[(32 * stor104) + 192 len floor32(stor104)] = mem[128 len floor32(stor104)]
        return Array(len=stor104, data=mem[128 len floor32(stor104)], mem[(32 * stor104) + floor32(stor104) + 192 len (32 * stor104) - floor32(stor104)]), 
    if arg2 <= 0:
        revert with 0, 'LinkedList: invalid count'
    mem[0] = arg1
    mem[32] = 105
    if not uint8(stor105[address(arg1)].field_0):
        if arg1:
            revert with 0, 'LinkedList: not in list'
    mem[96] = arg2
    mem[64] = (32 * arg2) + 128
    if arg2:
        mem[128 len 32 * arg2] = code.data[7466 len 32 * arg2]
    if arg1:
        s = arg1
        idx = 0
        while idx < arg2:
            if not address(s):
                mem[(32 * arg2) + 128] = 32
                mem[(32 * arg2) + 160] = arg2
                idx = 0
                while idx < 32 * arg2:
                    mem[idx + (32 * arg2) + 192] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                return memory
                  from (32 * arg2) + 128
                   len (96 * arg2) + 64
            require idx < arg2
            mem[(32 * idx) + 128] = address(s)
            if not uint8(stor105[address(s)].field_0):
                revert with 0, 'LinkedList: not in list'
            mem[0] = address(s)
            mem[32] = 105
            s = stor105[address(s)].field_256
            idx = idx + 1
            continue 
    else:
        mem[0] = 0
        mem[32] = 105
        s = stor1[sha3(mem[0 len 64])]
        idx = 0
        while idx < arg2:
            if not address(s):
                mem[(32 * arg2) + 128] = 32
                mem[(32 * arg2) + 160] = arg2
                idx = 0
                while idx < 32 * arg2:
                    mem[idx + (32 * arg2) + 192] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                return memory
                  from (32 * arg2) + 128
                   len (96 * arg2) + 64
            require idx < arg2
            mem[(32 * idx) + 128] = address(s)
            if not uint8(stor105[address(s)].field_0):
                revert with 0, 'LinkedList: not in list'
            mem[0] = address(s)
            mem[32] = 105
            s = stor105[address(s)].field_256
            idx = idx + 1
            continue 
    mem[(32 * arg2) + 192 len floor32(arg2)] = mem[128 len floor32(arg2)]
    return Array(len=arg2, data=mem[128 len floor32(arg2)], mem[(32 * arg2) + floor32(arg2) + 192 len (32 * arg2) - floor32(arg2)]), 
}

function getRenTokens(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg2:
        if stor104 <= 0:
            revert with 0, 'LinkedList: invalid count'
        mem[0] = arg1
        mem[32] = 106
        if not uint8(stor106[address(arg1)].field_0):
            if arg1:
                revert with 0, 'LinkedList: not in list'
        mem[96] = stor104
        mem[64] = (32 * stor104) + 128
        if stor104:
            mem[128 len 32 * stor104] = code.data[7466 len 32 * stor104]
        if arg1:
            s = arg1
            idx = 0
            while idx < stor104:
                if not address(s):
                    mem[(32 * stor104) + 128] = 32
                    mem[(32 * stor104) + 160] = stor104
                    idx = 0
                    while idx < 32 * stor104:
                        mem[idx + (32 * stor104) + 192] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    return memory
                      from (32 * stor104) + 128
                       len (96 * stor104) + 64
                require idx < stor104
                mem[(32 * idx) + 128] = address(s)
                if not uint8(stor106[address(s)].field_0):
                    revert with 0, 'LinkedList: not in list'
                mem[0] = address(s)
                mem[32] = 106
                s = stor106[address(s)].field_256
                idx = idx + 1
                continue 
        else:
            mem[0] = 0
            mem[32] = 106
            s = stor1[sha3(mem[0 len 64])]
            idx = 0
            while idx < stor104:
                if not address(s):
                    mem[(32 * stor104) + 128] = 32
                    mem[(32 * stor104) + 160] = stor104
                    idx = 0
                    while idx < 32 * stor104:
                        mem[idx + (32 * stor104) + 192] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    return memory
                      from (32 * stor104) + 128
                       len (96 * stor104) + 64
                require idx < stor104
                mem[(32 * idx) + 128] = address(s)
                if not uint8(stor106[address(s)].field_0):
                    revert with 0, 'LinkedList: not in list'
                mem[0] = address(s)
                mem[32] = 106
                s = stor106[address(s)].field_256
                idx = idx + 1
                continue 
        mem[(32 * stor104) + 192 len floor32(stor104)] = mem[128 len floor32(stor104)]
        return Array(len=stor104, data=mem[128 len floor32(stor104)], mem[(32 * stor104) + floor32(stor104) + 192 len (32 * stor104) - floor32(stor104)]), 
    if arg2 <= 0:
        revert with 0, 'LinkedList: invalid count'
    mem[0] = arg1
    mem[32] = 106
    if not uint8(stor106[address(arg1)].field_0):
        if arg1:
            revert with 0, 'LinkedList: not in list'
    mem[96] = arg2
    mem[64] = (32 * arg2) + 128
    if arg2:
        mem[128 len 32 * arg2] = code.data[7466 len 32 * arg2]
    if arg1:
        s = arg1
        idx = 0
        while idx < arg2:
            if not address(s):
                mem[(32 * arg2) + 128] = 32
                mem[(32 * arg2) + 160] = arg2
                idx = 0
                while idx < 32 * arg2:
                    mem[idx + (32 * arg2) + 192] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                return memory
                  from (32 * arg2) + 128
                   len (96 * arg2) + 64
            require idx < arg2
            mem[(32 * idx) + 128] = address(s)
            if not uint8(stor106[address(s)].field_0):
                revert with 0, 'LinkedList: not in list'
            mem[0] = address(s)
            mem[32] = 106
            s = stor106[address(s)].field_256
            idx = idx + 1
            continue 
    else:
        mem[0] = 0
        mem[32] = 106
        s = stor1[sha3(mem[0 len 64])]
        idx = 0
        while idx < arg2:
            if not address(s):
                mem[(32 * arg2) + 128] = 32
                mem[(32 * arg2) + 160] = arg2
                idx = 0
                while idx < 32 * arg2:
                    mem[idx + (32 * arg2) + 192] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                return memory
                  from (32 * arg2) + 128
                   len (96 * arg2) + 64
            require idx < arg2
            mem[(32 * idx) + 128] = address(s)
            if not uint8(stor106[address(s)].field_0):
                revert with 0, 'LinkedList: not in list'
            mem[0] = address(s)
            mem[32] = 106
            s = stor106[address(s)].field_256
            idx = idx + 1
            continue 
    mem[(32 * arg2) + 192 len floor32(arg2)] = mem[128 len floor32(arg2)]
    return Array(len=arg2, data=mem[128 len floor32(arg2)], mem[(32 * arg2) + floor32(arg2) + 192 len (32 * arg2) - floor32(arg2)]), 
}



}
