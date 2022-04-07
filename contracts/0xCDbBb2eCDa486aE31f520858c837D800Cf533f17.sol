contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;
mapping of uint8 stor1;
mapping of uint256 balanceOf;
mapping of uint8 stor3;
array of uint256 uri;

function balanceOf(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x73455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[207 len 21]
    return balanceOf[arg2][address(arg1)]
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    return bool(stor1[Mask(32, 224, arg1)])
}

function uri(uint256 arg1) payable {
    return uri[0 len uri.length]
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor3[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function decimals(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return 0
}

function totalSupply(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return 1
}

function tokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return stor0[arg1].field_0, stor0[arg1].field_256
}

function sub_3a04d4ea(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not stor0[address(arg1)][arg2].field_0:
        require arg1 == address(arg1)
        stor0[address(arg1)][arg2].field_0 = address(arg1)
        stor0[address(arg1)][arg2].field_256 = arg2
        emit 0xe4c75bb6: address(arg1), arg2
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x72455243313135353a2073657474696e6720617070726f76616c2073746174757320666f722073656c,
                    mem[205 len 23]
    stor3[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function sub_5f5544a3(?) payable {
    require calldata.size - 4 >= 96
    require calldata.size - 4 >= 64
    require arg3 == address(arg3)
    require arg1 == address(arg1)
    if not msg.sender:
        revert with 0, 32, 35, 0x73455243313135353a206275726e2066726f6d20746865207a65726f20616464726573, mem[283 len 29]
    if 1 > balanceOf[address(arg1)][arg2][address(msg.sender)]:
        revert with 0, 32, 36, 0x73455243313135353a206275726e20616d6f756e7420657863656564732062616c616e63, mem[408 len 28], mem[464 len 4]
    balanceOf[address(arg1)][arg2][address(msg.sender)]--
    emit TransferSingle(sha3(address(arg1), arg2), 1, msg.sender, msg.sender, 0);
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    call address(arg1).0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg1 == address(arg1)
    emit 0x7ea8f7e1: address(arg1), arg2, msg.sender, address(arg3)
}

function name(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[96] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(arg1))
    staticcall address(arg1).name() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= test266151307()
    require return_data.size + 96 > mem[96] + 127
    _5 = mem[mem[96] + 96]
    require mem[mem[96] + 96] <= test266151307()
    require ceil32(mem[mem[96] + 96]) + 32 >= 0 and ceil32(return_data.size) + ceil32(mem[mem[96] + 96]) + 128 <= test266151307()
    mem[64] = ceil32(return_data.size) + ceil32(mem[mem[96] + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        _19 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _5
        mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) <= _5:
            return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
        mem[mem[64] + _5 + 64] = 0
        return memory
          from mem[64]
           len ceil32(_5) + _19 + -mem[64] + 64
    mem[ceil32(return_data.size) + _5 + 128] = 0
    _21 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
    mem[mem[64] + _5 + 64] = 0
    return memory
      from mem[64]
       len ceil32(_5) + _21 + -mem[64] + 64
}

function symbol(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= test266151307()
    require return_data.size + 96 > mem[96] + 127
    _5 = mem[mem[96] + 96]
    require mem[mem[96] + 96] <= test266151307()
    require ceil32(mem[mem[96] + 96]) + 32 >= 0 and ceil32(return_data.size) + ceil32(mem[mem[96] + 96]) + 128 <= test266151307()
    mem[64] = ceil32(return_data.size) + ceil32(mem[mem[96] + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        _19 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _5
        mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) <= _5:
            return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
        mem[mem[64] + _5 + 64] = 0
        return memory
          from mem[64]
           len ceil32(_5) + _19 + -mem[64] + 64
    mem[ceil32(return_data.size) + _5 + 128] = 0
    _21 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
    mem[mem[64] + _5 + 64] = 0
    return memory
      from mem[64]
       len ceil32(_5) + _21 + -mem[64] + 64
}

function sub_f44e95de(?) payable {
    require calldata.size - 4 >= 160
    require calldata.size - 4 >= 64
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    require arg1 == address(arg1)
    mem[212 len arg5.length] = arg5[all]
    mem[arg5.length + 212] = 0
    if not address(arg4):
        revert with 0, 32, 33, 0x68455243313135353a206d696e7420746f20746865207a65726f20616464726573, mem[ceil32(arg5.length) + 313 len 31]
    mem[ceil32(arg5.length) + 212] = 1
    require 0 < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 244 len -arg5.length + ceil32(arg5.length)]
    if balanceOf[address(arg1)][arg2][address(arg4)] + 1 < balanceOf[address(arg1)][arg2][address(arg4)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)][arg2][address(arg4)]++
    emit TransferSingle(sha3(address(arg1), arg2), 1, msg.sender, 0, address(arg4));
    if ext_code.size(address(arg4)):
        require ext_code.size(address(arg4))
        call address(arg4).0xf23a6e61 with:
             gas gas_remaining wei
            args msg.sender, 0, sha3(address(arg1), arg2), 1, 160, arg5.length, Mask(8 * arg5.length, -(8 * arg5.length) + 256, arg5[all], mem[arg5.length + 212 len ceil32(arg5.length) - arg5.length]) << (8 * arg5.length) - 256
        if not ext_call.success:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        0
        require return_data.size >= 32
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'rERC1155: ERC1155Receiver rejected token'
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    call address(arg1).0x23b872dd with:
         gas gas_remaining wei
        args address(arg3), address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg1 == address(arg1)
    emit 0x5fcf42a9: address(arg1), arg2, msg.sender, address(arg3), address(arg4), Array(len=arg5.length, data=arg5[all])
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require ceil32(arg5.length) + 128 >= 96 and ceil32(arg5.length) + 128 <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    if not arg2:
        revert with 0, 
                    32,
                    37,
                    0x64455243313135353a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[ceil32(arg5.length) + 233 len 27]
    if arg1 != msg.sender:
        if not stor3[address(arg1)][address(msg.sender)]:
            revert with 0, 
                        32,
                        41,
                        0x65455243313135353a2063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                        mem[ceil32(arg5.length) + 237 len 23]
    mem[ceil32(arg5.length) + 128] = 1
    require 0 < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
    if arg4 > balanceOf[arg3][address(arg1)]:
        revert with 0, 
                    32,
                    42,
                    0x73455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665,
                    mem[ceil32(arg5.length) + 330 len 22],
                    mem[ceil32(arg5.length) + 374 len 10]
    balanceOf[arg3][address(arg1)] -= arg4
    if arg4 + balanceOf[arg3][arg2] < balanceOf[arg3][arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[arg3][address(arg2)] = arg4 + balanceOf[arg3][arg2]
    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.0xf23a6e61 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
        if not ext_call.success:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        Mask(96, 0, arg4)
        require return_data.size >= 32
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 32, 40, 0x72455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e, Mask(192, 0, arg4)
}

function balanceOfBatch(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require (32 * arg2.length) + 160 >= 128 and (32 * arg1.length) + (32 * arg2.length) + 160 <= test266151307()
    mem[(32 * arg1.length) + 128] = arg2.length
    require calldata.size >= arg2 + (32 * arg2.length) + 36
    idx = 0
    s = arg2 + 36
    t = (32 * arg1.length) + 160
    while idx < arg2.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if arg1.length != arg2.length:
        revert with 0, 
                    32,
                    41,
                    0x66455243313135353a206163636f756e747320616e6420696473206c656e677468206d69736d617463,
                    mem[(32 * arg1.length) + (32 * arg2.length) + 269 len 23]
    require arg1.length <= test266151307()
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg1.length
    mem[64] = (64 * arg1.length) + (32 * arg2.length) + 192
    if arg1.length:
        mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 
                        32,
                        49,
                        0x73455243313135353a2062617463682062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                        mem[(64 * arg1.length) + (32 * arg2.length) + 309 len 15]
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(mem[(32 * idx) + (32 * arg1.length) + 160], 2)
        require idx < arg1.length
        mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = balanceOf[mem[(32 * idx) + (32 * arg1.length) + 160]][mem[(32 * idx) + 140 len 20]]
        idx = idx + 1
        continue 
    mem[(64 * arg1.length) + (32 * arg2.length) + 192] = 32
    mem[(64 * arg1.length) + (32 * arg2.length) + 224] = arg1.length
    s = 0
    s = mem[64] + 64
    t = (32 * arg1.length) + (32 * arg2.length) + 192
    while arg1.length < arg1.length:
        mem[s] = mem[t]
        s = arg1.length + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len s - mem[64]
}

function safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require (32 * arg3.length) + 128 >= 96 and (32 * arg3.length) + 128 <= test266151307()
    mem[96] = arg3.length
    require calldata.size >= arg3 + (32 * arg3.length) + 36
    idx = 0
    s = arg3 + 36
    t = 128
    while idx < arg3.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require (32 * arg4.length) + 160 >= 128 and (32 * arg3.length) + (32 * arg4.length) + 160 <= test266151307()
    mem[(32 * arg3.length) + 128] = arg4.length
    require calldata.size >= arg4 + (32 * arg4.length) + 36
    idx = 0
    s = arg4 + 36
    t = (32 * arg3.length) + 160
    while idx < arg4.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require ceil32(arg5.length) + 192 >= 160 and (32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 192 <= test266151307()
    mem[64] = (32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 192
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = arg5.length
    require arg5 + arg5.length + 36 <= calldata.size
    mem[(32 * arg3.length) + (32 * arg4.length) + 192 len arg5.length] = arg5[all]
    mem[(32 * arg3.length) + (32 * arg4.length) + arg5.length + 192] = 0
    if arg3.length != arg4.length:
        revert with 0, 
                    32,
                    40,
                    0x68455243313135353a2069647320616e6420616d6f756e7473206c656e677468206d69736d617463,
                    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 300 len 24]
    if not arg2:
        revert with 0, 
                    32,
                    37,
                    0x64455243313135353a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 297 len 27]
    if arg1 == msg.sender:
        idx = 0
        while idx < arg3.length:
            require idx < mem[96]
            _677 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg3.length) + 128]
            _684 = mem[(32 * idx) + (32 * arg3.length) + 160]
            _685 = mem[64]
            mem[64] = mem[64] + 96
            mem[_685] = 42
            mem[_685 + 32 len 42] = 0x73455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665
            mem[32] = sha3(_677, 2)
            if _684 <= balanceOf[_677][address(arg1)]:
                balanceOf[_677][address(arg1)] -= _684
                if _684 + balanceOf[_677][arg2] < balanceOf[_677][arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = arg2
                mem[32] = sha3(_677, 2)
                balanceOf[_677][address(arg2)] = _684 + balanceOf[_677][arg2]
                idx = idx + 1
                continue 
            _697 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 42
            idx = 0
            while idx < 42:
                mem[idx + _697 + 68] = mem[idx + _685 + 32]
                idx = idx + 32
                continue 
            mem[_697 + 100] = mem[_697 + 122 len 10]
            revert with memory
              from mem[64]
               len _697 + -mem[64] + 132
        _669 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[96]
        _671 = mem[96]
        mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        mem[(32 * mem[96]) + _669 + 96] = mem[(32 * arg3.length) + 128]
        _878 = mem[(32 * arg3.length) + 128]
        mem[(32 * _671) + _669 + 128 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
        emit TransferBatch(address rg1, address rg2, address rg3, uint256[] rg4, uint256[] rg5):
                           mem[mem[64] len (32 * _878) + (32 * _671) + _669 + -mem[64] + 128],
                           msg.sender,
                           arg1,
                           arg2,
        if not ext_code.size(arg2):
        mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = arg1
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = mem[96]
        _1051 = mem[96]
        mem[mem[64] + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        var78001 = floor32(mem[96])
        mem[mem[64] + 100] = (32 * mem[96]) + 192
        mem[(32 * mem[96]) + mem[64] + 196] = mem[(32 * arg3.length) + 128]
        _1200 = mem[(32 * arg3.length) + 128]
        mem[(32 * mem[96]) + mem[64] + 228 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
        mem[mem[64] + 132] = (32 * _1200) + (32 * mem[96]) + 224
        mem[(32 * _1200) + (32 * mem[96]) + mem[64] + 228] = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
        _1344 = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
        mem[(32 * _1200) + (32 * _1051) + mem[64] + 260 len ceil32(mem[(32 * arg3.length) + (32 * arg4.length) + 160])] = mem[(32 * arg3.length) + (32 * arg4.length) + 192 len ceil32(mem[(32 * arg3.length) + (32 * arg4.length) + 160])]
        if not _1344 % 32:
            require ext_code.size(arg2)
            call arg2.0xbc197c81 with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), 160, mem[mem[64] + 100 len _1344 + (32 * _1200) + (32 * _1051) + 160]
            mem[mem[64]] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                40,
                                0x72455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e,
                                mem[mem[64] + 108 len 24]
            if return_data.size < 68:
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            _1509 = mem[64]
            mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size:
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            mem[64] = mem[64] + ext_call.return_data[0] + ceil32(mem[mem[64] + ext_call.return_data[0]]) + 32
            if not _1509 + ext_call.return_data[0]:
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            _1533 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[_1509 + ext_call.return_data[0]]
            _1535 = mem[_1509 + ext_call.return_data[0]]
            if not mem[_1509 + ext_call.return_data[0]]:
                if not mem[_1509 + ext_call.return_data[0]] % 32:
                    revert with 0, 32, mem[mem[64] + 36 len mem[_1509 + ext_call.return_data[0]] + 32]
                mem[floor32(mem[_1509 + ext_call.return_data[0]]) + mem[64] + 68] = mem[floor32(mem[_1509 + ext_call.return_data[0]]) + mem[64] + -(mem[_1509 + ext_call.return_data[0]] % 32) + 100 len mem[_1509 + ext_call.return_data[0]] % 32]
                revert with memory
                  from mem[64]
                   len floor32(_1535) + _1533 + -mem[64] + 100
            mem[mem[64] + 68] = mem[_1509 + ext_call.return_data[0] + 32]
            mem[mem[64] + 100 len floor32(_1535 - 1)] = mem[_1509 + ext_call.return_data[0] + 64 len floor32(_1535 - 1)]
            if not _1535 % 32:
                revert with 0, 32, mem[mem[64] + 36 len _1535 + 32]
            mem[floor32(_1535) + mem[64] + 68] = mem[floor32(_1535) + mem[64] + -(_1535 % 32) + 100 len _1535 % 32]
            revert with 0, 32, mem[mem[64] + 36 len floor32(_1535) + 64]
        mem[floor32(_1344) + (32 * _1200) + (32 * _1051) + mem[64] + 260] = mem[floor32(_1344) + (32 * _1200) + (32 * _1051) + mem[64] + -(_1344 % 32) + 292 len _1344 % 32]
        require ext_code.size(arg2)
        call arg2.0xbc197c81 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), 160, mem[mem[64] + 100 len floor32(_1344) + (32 * _1200) + (32 * _1051) + 192]
        mem[mem[64]] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 
                            32,
                            40,
                            0x72455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e,
                            mem[mem[64] + 108 len 24]
        if return_data.size < 68:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        _1516 = mem[64]
        mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        if mem[mem[64] + ext_call.return_data[0]] > test266151307():
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        mem[64] = mem[64] + ext_call.return_data[0] + ceil32(mem[mem[64] + ext_call.return_data[0]]) + 32
        if not _1516 + ext_call.return_data[0]:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        _1552 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[_1516 + ext_call.return_data[0]]
        _1554 = mem[_1516 + ext_call.return_data[0]]
        if not mem[_1516 + ext_call.return_data[0]]:
            if not mem[_1516 + ext_call.return_data[0]] % 32:
                revert with 0, 32, mem[mem[64] + 36 len mem[_1516 + ext_call.return_data[0]] + 32]
            mem[floor32(mem[_1516 + ext_call.return_data[0]]) + mem[64] + 68] = mem[floor32(mem[_1516 + ext_call.return_data[0]]) + mem[64] + -(mem[_1516 + ext_call.return_data[0]] % 32) + 100 len mem[_1516 + ext_call.return_data[0]] % 32]
        else:
            mem[mem[64] + 68] = mem[_1516 + ext_call.return_data[0] + 32]
            mem[mem[64] + 100 len floor32(_1554 - 1)] = mem[_1516 + ext_call.return_data[0] + 64 len floor32(_1554 - 1)]
            if not _1554 % 32:
                revert with 0, 32, mem[mem[64] + 36 len _1554 + 32]
            mem[floor32(_1554) + mem[64] + 68] = mem[floor32(_1554) + mem[64] + -(_1554 % 32) + 100 len _1554 % 32]
        revert with memory
          from mem[64]
           len floor32(_1554) + _1552 + -mem[64] + 100
    mem[0] = msg.sender
    mem[32] = sha3(address(arg1), 3)
    if not stor3[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    41,
                    0x65455243313135353a2063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 301 len 23]
    idx = 0
    while idx < arg3.length:
        require idx < mem[96]
        _679 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg3.length) + 128]
        _691 = mem[(32 * idx) + (32 * arg3.length) + 160]
        _692 = mem[64]
        mem[64] = mem[64] + 96
        mem[_692] = 42
        mem[_692 + 32 len 42] = 0x73455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665
        mem[32] = sha3(_679, 2)
        if _691 <= balanceOf[_679][address(arg1)]:
            balanceOf[_679][address(arg1)] -= _691
            if _691 + balanceOf[_679][arg2] < balanceOf[_679][arg2]:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = arg2
            mem[32] = sha3(_679, 2)
            balanceOf[_679][address(arg2)] = _691 + balanceOf[_679][arg2]
            idx = idx + 1
            continue 
        _702 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 42
        idx = 0
        while idx < 42:
            mem[idx + _702 + 68] = mem[idx + _692 + 32]
            idx = idx + 32
            continue 
        mem[_702 + 100] = mem[_702 + 122 len 10]
        revert with memory
          from mem[64]
           len _702 + -mem[64] + 132
    _673 = mem[64]
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[96]
    _675 = mem[96]
    mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    var73001 = floor32(mem[96])
    mem[mem[64] + 32] = (32 * mem[96]) + 96
    mem[(32 * mem[96]) + _673 + 96] = mem[(32 * arg3.length) + 128]
    _882 = mem[(32 * arg3.length) + 128]
    mem[(32 * _675) + _673 + 128 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
    emit TransferBatch(address rg1, address rg2, address rg3, uint256[] rg4, uint256[] rg5):
                       mem[mem[64] len (32 * _882) + (32 * _675) + _673 + -mem[64] + 128],
                       msg.sender,
                       arg1,
                       arg2,
    if not ext_code.size(arg2):
    mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = arg1
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = mem[96]
    _1054 = mem[96]
    mem[mem[64] + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + 100] = (32 * mem[96]) + 192
    mem[(32 * mem[96]) + mem[64] + 196] = mem[(32 * arg3.length) + 128]
    _1203 = mem[(32 * arg3.length) + 128]
    mem[(32 * _1054) + mem[64] + 228 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
    mem[mem[64] + 132] = (32 * _1203) + (32 * _1054) + 224
    mem[(32 * _1203) + (32 * _1054) + mem[64] + 228] = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
    _1347 = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
    mem[(32 * _1203) + (32 * _1054) + mem[64] + 260 len ceil32(mem[(32 * arg3.length) + (32 * arg4.length) + 160])] = mem[(32 * arg3.length) + (32 * arg4.length) + 192 len ceil32(mem[(32 * arg3.length) + (32 * arg4.length) + 160])]
    if not _1347 % 32:
        require ext_code.size(arg2)
        call arg2.0xbc197c81 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _1203) + (32 * _1054) + 224, mem[mem[64] + 164 len _1347 + (32 * _1203) + (32 * _1054) + 96]
        mem[mem[64]] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 
                            32,
                            40,
                            0x72455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e,
                            mem[mem[64] + 108 len 24]
        if return_data.size < 68:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        _1511 = mem[64]
        mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        if mem[mem[64] + ext_call.return_data[0]] > test266151307():
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        mem[64] = mem[64] + ext_call.return_data[0] + ceil32(mem[mem[64] + ext_call.return_data[0]]) + 32
        if not _1511 + ext_call.return_data[0]:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        _1540 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[_1511 + ext_call.return_data[0]]
        _1542 = mem[_1511 + ext_call.return_data[0]]
        if not mem[_1511 + ext_call.return_data[0]]:
            if not mem[_1511 + ext_call.return_data[0]] % 32:
                revert with 0, 32, mem[mem[64] + 36 len mem[_1511 + ext_call.return_data[0]] + 32]
            mem[floor32(mem[_1511 + ext_call.return_data[0]]) + mem[64] + 68] = mem[floor32(mem[_1511 + ext_call.return_data[0]]) + mem[64] + -(mem[_1511 + ext_call.return_data[0]] % 32) + 100 len mem[_1511 + ext_call.return_data[0]] % 32]
        else:
            mem[mem[64] + 68] = mem[_1511 + ext_call.return_data[0] + 32]
            mem[mem[64] + 100 len floor32(_1542 - 1)] = mem[_1511 + ext_call.return_data[0] + 64 len floor32(_1542 - 1)]
            if not _1542 % 32:
                revert with 0, 32, mem[mem[64] + 36 len _1542 + 32]
            mem[floor32(_1542) + mem[64] + 68] = mem[floor32(_1542) + mem[64] + -(_1542 % 32) + 100 len _1542 % 32]
        revert with memory
          from mem[64]
           len floor32(_1542) + _1540 + -mem[64] + 100
    mem[floor32(_1347) + (32 * _1203) + (32 * _1054) + mem[64] + 260] = mem[floor32(_1347) + (32 * _1203) + (32 * _1054) + mem[64] + -(_1347 % 32) + 292 len _1347 % 32]
    require ext_code.size(arg2)
    call arg2.0xbc197c81 with:
         gas gas_remaining wei
        args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _1203) + (32 * _1054) + 224, mem[mem[64] + 164 len floor32(_1347) + (32 * _1203) + (32 * _1054) + 128]
    mem[mem[64]] = ext_call.return_data[0]
    if ext_call.success:
        require return_data.size >= 32
        if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
            revert with 0, 
                        32,
                        40,
                        0x72455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e,
                        mem[mem[64] + 108 len 24]
    if return_data.size < 68:
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    mem[mem[64] + 120 len 12]
    mem[0 len 4] = ext_call.return_data[0 len 4]
    if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    mem[mem[64] + 120 len 12]
    _1521 = mem[64]
    mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    mem[mem[64] + 120 len 12]
    if mem[mem[64] + ext_call.return_data[0]] > test266151307():
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    mem[mem[64] + 120 len 12]
    if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size:
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    mem[mem[64] + 120 len 12]
    mem[64] = mem[64] + ext_call.return_data[0] + ceil32(mem[mem[64] + ext_call.return_data[0]]) + 32
    if not _1521 + ext_call.return_data[0]:
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    mem[mem[64] + 120 len 12]
    _1562 = mem[64]
    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    mem[mem[64] + 36] = mem[_1521 + ext_call.return_data[0]]
    _1564 = mem[_1521 + ext_call.return_data[0]]
    if not mem[_1521 + ext_call.return_data[0]]:
        if not mem[_1521 + ext_call.return_data[0]] % 32:
            revert with 0, 32, mem[mem[64] + 36 len mem[_1521 + ext_call.return_data[0]] + 32]
        mem[floor32(mem[_1521 + ext_call.return_data[0]]) + mem[64] + 68] = mem[floor32(mem[_1521 + ext_call.return_data[0]]) + mem[64] + -(mem[_1521 + ext_call.return_data[0]] % 32) + 100 len mem[_1521 + ext_call.return_data[0]] % 32]
    else:
        mem[mem[64] + 68] = mem[_1521 + ext_call.return_data[0] + 32]
        mem[mem[64] + 100 len floor32(_1564 - 1)] = mem[_1521 + ext_call.return_data[0] + 64 len floor32(_1564 - 1)]
        if not _1564 % 32:
            revert with 0, 32, mem[mem[64] + 36 len _1564 + 32]
        mem[floor32(_1564) + mem[64] + 68] = mem[floor32(_1564) + mem[64] + -(_1564 % 32) + 100 len _1564 % 32]
    revert with memory
      from mem[64]
       len floor32(_1564) + _1562 + -mem[64] + 100
}



}
