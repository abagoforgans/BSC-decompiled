contract main {




// =====================  Runtime code  =====================


#
#  - uri(uint256 arg1)
#
const contractURI = Array(len=38, data=0x65687474703a2f2f35342e3139362e3232372e3231372f6170692f636f6e74726163742f6a67, mem[166 len 26], mem[218 len 6])


mapping of uint256 balanceOf;
mapping of uint8 stor1;
array of uint256 stor2;
address owner;
mapping of uint8 stor4;
mapping of uint8 stor5;
uint256 stor6;
mapping of address creators;
mapping of uint256 totalSupply;
mapping of uint256 maxSupply;
array of uint256 name;
array of uint256 symbol;

function tokenMaxSupply(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return maxSupply[arg1]
}

function balanceOf(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return balanceOf[address(arg1)][arg2]
}

function name() payable {
    return name[0 len name.length]
}

function tokenSupply(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return totalSupply[arg1]
}

function maxSupply(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return maxSupply[arg1]
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function isMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x79526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    return bool(stor4[address(arg1)])
}

function isWhitelistAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x79526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    return bool(stor5[address(arg1)])
}

function totalSupply(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return totalSupply[arg1]
}

function creators(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return address(creators[arg1])
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(stor1[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'NOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    stor1[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    if Mask(32, 224, arg1) != 0x1ffc9a700000000000000000000000000000000000000000000000000000000:
        if Mask(32, 224, arg1) != 0xd9b67a2600000000000000000000000000000000000000000000000000000000:
            return 0
    return 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'NOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x544f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function renounceMinter() payable {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x79526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor4[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65526f6c65733a206163636f756e7420646f6573206e6f74206861766520726f6c,
                    mem[197 len 31]
    stor4[address(msg.sender)] = 0
    emit MinterRemoved(msg.sender);
}

function renounceWhitelistAdmin() payable {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x79526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor5[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65526f6c65733a206163636f756e7420646f6573206e6f74206861766520726f6c,
                    mem[197 len 31]
    stor5[address(msg.sender)] = 0
    emit WhitelistAdminRemoved(msg.sender);
}

function setBaseMetadataURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if not msg.sender:
        revert with 0, 
                    32,
                    34,
                    0x79526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[ceil32(arg1.length) + 230 len 30]
    if not stor5[address(msg.sender)]:
        revert with 0, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    stor2[] = Array(len=arg1.length, data=arg1[all])
}

function removeMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'NOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x79526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor4[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65526f6c65733a206163636f756e7420646f6573206e6f74206861766520726f6c,
                    mem[197 len 31]
    stor4[address(arg1)] = 0
    emit MinterRemoved(arg1);
}

function removeWhitelistAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'NOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x79526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor5[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65526f6c65733a206163636f756e7420646f6573206e6f74206861766520726f6c,
                    mem[197 len 31]
    stor5[address(arg1)] = 0
    emit WhitelistAdminRemoved(arg1);
}

function addMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x79526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor4[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x484d696e746572526f6c653a2063616c6c657220646f6573206e6f74206861766520746865204d696e74657220726f6c,
                    mem[212 len 16]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x79526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if stor4[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor4[address(arg1)] = 1
    emit MinterAdded(arg1);
}

function addWhitelistAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x79526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor5[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x79526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if stor5[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor5[address(arg1)] = 1
    emit WhitelistAdminAdded(arg1);
}

function balanceOfBatch(address[] arg1, uint256[] arg2) payable {
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
    if arg1.length != arg2.length:
        revert with 0, 
                    32,
                    44,
                    0x6e455243313135352362616c616e63654f6642617463683a20494e56414c49445f41525241595f4c454e4754,
                    mem[(32 * arg1.length) + (32 * arg2.length) + 272 len 20]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg1.length
    if arg1.length:
        mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg1.length] = code.data[10731 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        mem[0] = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[32] = sha3(mem[(32 * idx) + 140 len 20], 0)
        require idx < arg1.length
        mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = balanceOf[mem[(32 * idx) + 140 len 20]][mem[(32 * idx) + (32 * arg1.length) + 160]]
        idx = idx + 1
        continue 
    mem[(64 * arg1.length) + (32 * arg2.length) + 192] = 32
    mem[(64 * arg1.length) + (32 * arg2.length) + 224] = arg1.length
    mem[(64 * arg1.length) + (32 * arg2.length) + 256 len floor32(arg1.length)] = mem[(32 * arg1.length) + (32 * arg2.length) + 192 len floor32(arg1.length)]
    return memory
      from (64 * arg1.length) + (32 * arg2.length) + 192
       len (161 * arg1.length) + 64
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    if arg1 != msg.sender:
        if not stor1[address(arg1)][address(msg.sender)]:
            revert with 0, 
                        32,
                        42,
                        0x734552433131353523736166655472616e7366657246726f6d3a20494e56414c49445f4f50455241544f,
                        mem[ceil32(arg5.length) + 238 len 22]
    if not arg2:
        revert with 0, 
                    32,
                    43,
                    0xfe4552433131353523736166655472616e7366657246726f6d3a20494e56414c49445f524543495049454e,
                    mem[ceil32(arg5.length) + 239 len 21]
    if arg4 > balanceOf[address(arg1)][arg3]:
        revert with 0, 'SafeMath#sub: UNDERFLOW'
    balanceOf[address(arg1)][arg3] -= arg4
    if arg4 + balanceOf[address(arg2)][arg3] < balanceOf[address(arg2)][arg3]:
        revert with 0, 'SafeMath#add: OVERFLOW'
    balanceOf[address(arg2)][arg3] += arg4
    mem[ceil32(arg5.length) + 128] = arg3
    mem[ceil32(arg5.length) + 160] = arg4
    emit TransferSingle(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length) + 32], msg.sender, arg1, arg2);
    if ext_code.hash(arg2):
        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            require ext_code.size(arg2)
            call arg2 with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                revert with 0, 
                            32,
                            58,
                            0x4545524331313535235f63616c6c6f6e4552433131353552656365697665643a20494e56414c49445f4f4e5f524543454956455f4d4553534147,
                            arg4 % 281474976710656
}

function mint(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if not msg.sender:
        revert with 0, 
                    32,
                    34,
                    0x79526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[ceil32(arg4.length) + 230 len 30]
    if not stor4[address(msg.sender)]:
        revert with 0, 
                    32,
                    48,
                    0x484d696e746572526f6c653a2063616c6c657220646f6573206e6f74206861766520746865204d696e74657220726f6c,
                    mem[ceil32(arg4.length) + 244 len 16]
    if maxSupply[arg2] <= totalSupply[arg2]:
        revert with 0, 'Max supply reached'
    if arg3 + balanceOf[address(arg1)][arg2] < balanceOf[address(arg1)][arg2]:
        revert with 0, 'SafeMath#add: OVERFLOW'
    balanceOf[address(arg1)][arg2] += arg3
    mem[ceil32(arg4.length) + 128] = arg2
    mem[ceil32(arg4.length) + 160] = arg3
    emit TransferSingle(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length) + 32], msg.sender, 0, arg1);
    if ext_code.hash(arg1):
        if ext_code.hash(arg1) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            mem[ceil32(arg4.length) + 128] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg4.length) + 324 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
            if not arg4.length % 32:
                require ext_code.size(arg1)
                call arg1 with:
                     gas gas_remaining wei
                    args msg.sender, 0, arg2, arg3, 160, arg4.length, Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256
            else:
                mem[floor32(arg4.length) + ceil32(arg4.length) + 324] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 356 len arg4.length % 32]
                require ext_code.size(arg1)
                call arg1 with:
                     gas gas_remaining wei
                    args msg.sender, 0, arg2, arg3, 160, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + 324 len floor32(arg4.length) + -ceil32(arg4.length) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                revert with 0, 
                            32,
                            58,
                            0x4545524331313535235f63616c6c6f6e4552433131353552656365697665643a20494e56414c49445f4f4e5f524543454956455f4d4553534147,
                            arg3 % 281474976710656
    if arg3 + totalSupply[arg2] < totalSupply[arg2]:
        revert with 0, 'SafeMath#add: OVERFLOW'
    totalSupply[arg2] += arg3
}

function create(uint256 arg1, uint256 arg2, string arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x79526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor5[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    if arg2 > arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x72496e697469616c20737570706c792063616e6e6f74206265206d6f7265207468616e206d617820737570706c,
                    mem[209 len 19]
    if stor6 + 1 < stor6:
        revert with 0, 'SafeMath#add: OVERFLOW'
    stor6++
    uint256(creators[stor6 + 1]) = msg.sender or Mask(96, 160, uint256(creators[stor6 + 1]))
    if arg3.length:
        mem[128] = arg3.length
        mem[160 len arg3.length] = arg3[all]
        mem[arg3.length + 160] = 0
        emit URI(Array(len=arg3.length, data=arg3[all]), stor6 + 1);
    if not arg2:
        totalSupply[stor6 + 1] = arg2
        maxSupply[stor6 + 1] = arg1
        return (stor6 + 1)
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if arg2 + balanceOf[address(msg.sender)][stor6 + 1] < balanceOf[address(msg.sender)][stor6 + 1]:
        revert with 0, 'SafeMath#add: OVERFLOW'
    balanceOf[address(msg.sender)][stor6 + 1] += arg2
    mem[ceil32(arg4.length) + 128] = stor6 + 1
    mem[ceil32(arg4.length) + 160] = arg2
    emit TransferSingle(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length) + 32], msg.sender, 0, msg.sender);
    if not ext_code.hash(msg.sender):
        totalSupply[stor6 + 1] = arg2
        maxSupply[stor6 + 1] = arg1
        mem[ceil32(arg4.length) + 128] = stor6 + 1
        return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
    if ext_code.hash(msg.sender) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        totalSupply[stor6 + 1] = arg2
        maxSupply[stor6 + 1] = arg1
        mem[ceil32(arg4.length) + 128] = stor6 + 1
        return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
    mem[ceil32(arg4.length) + 128] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg4.length) + 324 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
    if not arg4.length % 32:
        require ext_code.size(msg.sender)
        call msg.sender with:
             gas gas_remaining wei
            args msg.sender, 0, stor6 + 1, arg2, 160, arg4.length, Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256
    else:
        mem[floor32(arg4.length) + ceil32(arg4.length) + 324] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 356 len arg4.length % 32]
        require ext_code.size(msg.sender)
        call msg.sender with:
             gas gas_remaining wei
            args msg.sender, 0, stor6 + 1, arg2, 160, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + 324 len floor32(arg4.length) + -ceil32(arg4.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
        revert with 0, 
                    32,
                    58,
                    0x4545524331313535235f63616c6c6f6e4552433131353552656365697665643a20494e56414c49445f4f4e5f524543454956455f4d4553534147,
                    arg2 % 281474976710656
    totalSupply[stor6 + 1] = arg2
    maxSupply[stor6 + 1] = arg1
    return 0, Mask(224, 0, stor6 + 1)
}

function safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = arg5.length
    mem[(32 * arg3.length) + (32 * arg4.length) + 192 len arg5.length] = arg5[all]
    mem[(32 * arg3.length) + (32 * arg4.length) + arg5.length + 192] = 0
    if arg1 != msg.sender:
        if not stor1[address(arg1)][address(msg.sender)]:
            revert with 0, 
                        32,
                        47,
                        0x4845524331313535237361666542617463685472616e7366657246726f6d3a20494e56414c49445f4f50455241544f,
                        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 307 len 17]
    if not arg2:
        revert with 0, 
                    32,
                    48,
                    0x6545524331313535237361666542617463685472616e7366657246726f6d3a20494e56414c49445f524543495049454e,
                    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 308 len 16]
    if arg3.length != arg4.length:
        revert with 0, 
                    32,
                    53,
                    0x5245524331313535235f7361666542617463685472616e7366657246726f6d3a20494e56414c49445f4152524159535f4c454e4754,
                    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 313 len 11]
    idx = 0
    while idx < arg3.length:
        require idx < arg4.length
        require idx < arg3.length
        if mem[(32 * idx) + (32 * arg3.length) + 160] > balanceOf[address(arg1)][mem[(32 * idx) + 128]]:
            revert with 0, 'SafeMath#sub: UNDERFLOW'
        require idx < arg3.length
        balanceOf[address(arg1)][mem[(32 * idx) + 128]] -= mem[(32 * idx) + (32 * arg3.length) + 160]
        require idx < arg4.length
        require idx < arg3.length
        if mem[(32 * idx) + (32 * arg3.length) + 160] + balanceOf[address(arg2)][mem[(32 * idx) + 128]] < balanceOf[address(arg2)][mem[(32 * idx) + 128]]:
            revert with 0, 'SafeMath#add: OVERFLOW'
        require idx < arg3.length
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = sha3(address(arg2), 0)
        balanceOf[address(arg2)][mem[(32 * idx) + 128]] += mem[(32 * idx) + (32 * arg3.length) + 160]
        idx = idx + 1
        continue 
    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 192] = 64
    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 288 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 224] = (32 * arg3.length) + 96
    mem[(64 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 288] = arg4.length
    mem[(64 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 320 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    emit TransferBatch(address rg1, address rg2, address rg3, uint256[] rg4, uint256[] rg5):
                       Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0),
                       mem[(32 * arg3.length) + (32 * arg4.length) + arg5.length + 224 len ceil32(arg5.length) + -arg5.length + 32],
                       arg3.length,
                       call.data[arg3 + 36 len floor32(arg3.length)],
                       mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + floor32(arg3.length) + 288 len (32 * arg3.length) + (32 * arg4.length) + -floor32(arg3.length) + 32],
                       msg.sender,
                       arg1,
                       arg2,
    if ext_code.hash(arg2):
        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 192] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
            mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 388 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
            mem[(64 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 388] = arg4.length
            mem[(64 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 420 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
            mem[(64 * arg4.length) + (64 * arg3.length) + ceil32(arg5.length) + 420] = arg5.length
            mem[(64 * arg4.length) + (64 * arg3.length) + ceil32(arg5.length) + 452 len ceil32(arg5.length)] = arg5[all], mem[(32 * arg3.length) + (32 * arg4.length) + arg5.length + 192 len ceil32(arg5.length) - arg5.length]
            if not arg5.length % 32:
                require ext_code.size(arg2)
                call arg2 with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + floor32(arg3.length) + 388 len (32 * arg3.length) + (32 * arg4.length) + arg5.length + -floor32(arg3.length) + 64]), (32 * arg3.length) + 192, (32 * arg4.length) + (32 * arg3.length) + 224
            else:
                mem[floor32(arg5.length) + (64 * arg4.length) + (64 * arg3.length) + ceil32(arg5.length) + 452] = mem[floor32(arg5.length) + (64 * arg4.length) + (64 * arg3.length) + ceil32(arg5.length) + -(arg5.length % 32) + 484 len arg5.length % 32]
                require ext_code.size(arg2)
                call arg2 with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + floor32(arg3.length) + 388 len (32 * arg3.length) + (32 * arg4.length) + floor32(arg5.length) + -floor32(arg3.length) + 96]), (32 * arg3.length) + 192, (32 * arg4.length) + (32 * arg3.length) + 224
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 
                            32,
                            63,
                            0x5245524331313535235f63616c6c6f6e45524331313535426174636852656365697665643a20494e56414c49445f4f4e5f524543454956455f4d4553534147,
                            uint8((32 * arg3.length) + 192)
}



}
