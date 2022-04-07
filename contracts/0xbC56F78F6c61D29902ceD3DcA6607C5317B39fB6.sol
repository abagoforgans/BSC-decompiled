contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint256 balanceOf;
mapping of uint8 stor2;
array of uint256 uri;

function balanceOf(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x73455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[207 len 21]
    return balanceOf[arg2][address(arg1)]
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor0[Mask(32, 224, arg1)])
}

function uri(uint256 arg1) {
    return uri[0 len uri.length]
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor2[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function name(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1:
        revert with 0, 'undefined token ID'
    return ''
}

function decimals(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1:
        revert with 0, 'undefined token ID'
    return 18
}

function symbol(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1:
        revert with 0, 'undefined token ID'
    return 'ETH1155'
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if msg.sender == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x72455243313135353a2073657474696e6720617070726f76616c2073746174757320666f722073656c,
                    mem[205 len 23]
    stor2[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function sub_4ccbae23(?) {
    require calldata.size - 4 >= 64
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x73455243313135353a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg1 > balanceOf[0][address(msg.sender)]:
        revert with 0, 32, 36, 0x73455243313135353a206275726e20616d6f756e7420657863656564732062616c616e63, mem[324 len 28], mem[380 len 4]
    balanceOf[0][address(msg.sender)] -= arg1
    emit TransferSingle(0, arg1, msg.sender, msg.sender, 0);
    emit 0x6d4e9e53: arg1, msg.sender, arg2
}

function sub_fd0ae763(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if not arg1:
        revert with 0, 32, 33, 0x68455243313135353a206d696e7420746f20746865207a65726f20616464726573, mem[ceil32(arg2.length) + 229 len 31]
    mem[ceil32(arg2.length) + 128] = 1
    require 0 < Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
    if msg.value + balanceOf[0][address(arg1)] < balanceOf[0][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[0][address(arg1)] += msg.value
    emit TransferSingle(0, msg.value, msg.sender, 0, arg1);
    if ext_code.size(arg1):
        require ext_code.size(arg1)
        call arg1.onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
             gas gas_remaining wei
            args msg.sender, 0, 0, msg.value, 160, arg2.length, Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256
        if not ext_call.success:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        Mask(96, 0, msg.value)
        require return_data.size >= 32
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'rERC1155: ERC1155Receiver rejected tokenallvalu'
    emit 0xe0ac0066: msg.sender, msg.value, address(arg1), Array(len=arg2.length, data=arg2[all])
}

function balanceOfBatch(address[] arg1, uint256[] arg2) {
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
                    41,
                    0x66455243313135353a206163636f756e747320616e6420696473206c656e677468206d69736d617463,
                    mem[(32 * arg1.length) + (32 * arg2.length) + 269 len 23]
    require arg1.length <= test266151307()
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg1.length
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
        mem[32] = sha3(mem[(32 * idx) + (32 * arg1.length) + 160], 1)
        require idx < arg1.length
        mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = balanceOf[mem[(32 * idx) + (32 * arg1.length) + 160]][mem[(32 * idx) + 140 len 20]]
        idx = idx + 1
        continue 
    mem[(64 * arg1.length) + (32 * arg2.length) + 192] = 32
    mem[(64 * arg1.length) + (32 * arg2.length) + 224] = arg1.length
    mem[(64 * arg1.length) + (32 * arg2.length) + 256 len floor32(arg1.length)] = mem[(32 * arg1.length) + (32 * arg2.length) + 192 len floor32(arg1.length)]
    return memory
      from (64 * arg1.length) + (32 * arg2.length) + 192
       len (161 * arg1.length) + 64
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    if not arg2:
        revert with 0, 
                    32,
                    37,
                    0x64455243313135353a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[ceil32(arg5.length) + 233 len 27]
    if arg1 != msg.sender:
        if not stor2[address(arg1)][address(msg.sender)]:
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
        call arg2.onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
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

function safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[64] = (32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 192
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = arg5.length
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
            _234 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg3.length) + 128]
            _241 = mem[(32 * idx) + (32 * arg3.length) + 160]
            _242 = mem[64]
            mem[64] = mem[64] + 96
            mem[_242] = 42
            mem[_242 + 32 len 42] = 0x73455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665
            mem[32] = sha3(_234, 1)
            if _241 <= balanceOf[_234][address(arg1)]:
                balanceOf[_234][address(arg1)] -= _241
                if _241 + balanceOf[_234][arg2] < balanceOf[_234][arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = arg2
                mem[32] = sha3(_234, 1)
                balanceOf[_234][address(arg2)] = _241 + balanceOf[_234][arg2]
                idx = idx + 1
                continue 
            _254 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 42
            idx = 0
            while idx < 42:
                mem[idx + _254 + 68] = mem[idx + _242 + 32]
                idx = idx + 32
                continue 
            mem[_254 + 100] = mem[_254 + 122 len 10]
            revert with memory
              from mem[64]
               len _254 + -mem[64] + 132
        _226 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[96]
        _228 = mem[96]
        mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        mem[(32 * mem[96]) + _226 + 96] = mem[(32 * arg3.length) + 128]
        _435 = mem[(32 * arg3.length) + 128]
        mem[(32 * _228) + _226 + 128 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
        emit TransferBatch(address rg1, address rg2, address rg3, uint256[] rg4, uint256[] rg5):
                           mem[mem[64] len (32 * _435) + (32 * _228) + _226 + -mem[64] + 128],
                           msg.sender,
                           arg1,
                           arg2,
        if not ext_code.size(arg2):
        mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = arg1
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = mem[96]
        _608 = mem[96]
        mem[mem[64] + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 100] = (32 * mem[96]) + 192
        mem[(32 * mem[96]) + mem[64] + 196] = mem[(32 * arg3.length) + 128]
        _757 = mem[(32 * arg3.length) + 128]
        mem[(32 * _608) + mem[64] + 228 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
        mem[mem[64] + 132] = (32 * _757) + (32 * _608) + 224
        mem[(32 * _757) + (32 * _608) + mem[64] + 228] = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
        _901 = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
        mem[(32 * _757) + (32 * _608) + mem[64] + 260 len ceil32(mem[(32 * arg3.length) + (32 * arg4.length) + 160])] = mem[(32 * arg3.length) + (32 * arg4.length) + 192 len ceil32(mem[(32 * arg3.length) + (32 * arg4.length) + 160])]
        if not _901 % 32:
            require ext_code.size(arg2)
            call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _757) + (32 * _608) + 224, mem[mem[64] + 164 len _901 + (32 * _757) + (32 * _608) + 96]
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
            _1066 = mem[64]
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
            if not _1066 + ext_call.return_data[0]:
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            _1090 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[_1066 + ext_call.return_data[0]]
            _1092 = mem[_1066 + ext_call.return_data[0]]
            if not mem[_1066 + ext_call.return_data[0]]:
                if not mem[_1066 + ext_call.return_data[0]] % 32:
                    revert with 0, 32, mem[mem[64] + 36 len mem[_1066 + ext_call.return_data[0]] + 32]
                mem[floor32(mem[_1066 + ext_call.return_data[0]]) + mem[64] + 68] = mem[floor32(mem[_1066 + ext_call.return_data[0]]) + mem[64] + -(mem[_1066 + ext_call.return_data[0]] % 32) + 100 len mem[_1066 + ext_call.return_data[0]] % 32]
                revert with 0, 32, mem[mem[64] + 36], 160, mem[mem[64] + 100 len floor32(_1092)]
            mem[mem[64] + 68] = mem[_1066 + ext_call.return_data[0] + 32]
            mem[mem[64] + 100 len floor32(_1092 - 1)] = mem[_1066 + ext_call.return_data[0] + 64 len floor32(_1092 - 1)]
            if not _1092 % 32:
                revert with 0, 32, mem[mem[64] + 36 len _1092 + 32]
            mem[floor32(_1092) + mem[64] + 68] = mem[floor32(_1092) + mem[64] + -(_1092 % 32) + 100 len _1092 % 32]
            revert with memory
              from mem[64]
               len floor32(_1092) + _1090 + -mem[64] + 100
        mem[floor32(_901) + (32 * _757) + (32 * _608) + mem[64] + 260] = mem[floor32(_901) + (32 * _757) + (32 * _608) + mem[64] + -(_901 % 32) + 292 len _901 % 32]
        require ext_code.size(arg2)
        call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _757) + (32 * _608) + 224, mem[mem[64] + 164 len floor32(_901) + (32 * _757) + (32 * _608) + 128]
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
        _1073 = mem[64]
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
        if not _1073 + ext_call.return_data[0]:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[_1073 + ext_call.return_data[0]]
        _1111 = mem[_1073 + ext_call.return_data[0]]
        if not mem[_1073 + ext_call.return_data[0]]:
            if not mem[_1073 + ext_call.return_data[0]] % 32:
                revert with 0, 32, mem[mem[64] + 36 len mem[_1073 + ext_call.return_data[0]] + 32]
            mem[floor32(mem[_1073 + ext_call.return_data[0]]) + mem[64] + 68] = mem[floor32(mem[_1073 + ext_call.return_data[0]]) + mem[64] + -(mem[_1073 + ext_call.return_data[0]] % 32) + 100 len mem[_1073 + ext_call.return_data[0]] % 32]
            revert with 0, 32, mem[mem[64] + 36], 160, mem[mem[64] + 100 len floor32(_1111)]
        mem[mem[64] + 68] = mem[_1073 + ext_call.return_data[0] + 32]
        mem[mem[64] + 100 len floor32(_1111 - 1)] = mem[_1073 + ext_call.return_data[0] + 64 len floor32(_1111 - 1)]
        if not _1111 % 32:
            revert with 0, 32, mem[mem[64] + 36 len _1111 + 32]
        mem[floor32(_1111) + mem[64] + 68] = mem[floor32(_1111) + mem[64] + -(_1111 % 32) + 100 len _1111 % 32]
        revert with 0, 32, mem[mem[64] + 36 len floor32(_1111) + 64]
    mem[0] = msg.sender
    mem[32] = sha3(address(arg1), 2)
    if not stor2[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    41,
                    0x65455243313135353a2063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 301 len 23]
    idx = 0
    while idx < arg3.length:
        require idx < mem[96]
        _236 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg3.length) + 128]
        _248 = mem[(32 * idx) + (32 * arg3.length) + 160]
        _249 = mem[64]
        mem[64] = mem[64] + 96
        mem[_249] = 42
        mem[_249 + 32 len 42] = 0x73455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665
        mem[32] = sha3(_236, 1)
        if _248 <= balanceOf[_236][address(arg1)]:
            balanceOf[_236][address(arg1)] -= _248
            if _248 + balanceOf[_236][arg2] < balanceOf[_236][arg2]:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = arg2
            mem[32] = sha3(_236, 1)
            balanceOf[_236][address(arg2)] = _248 + balanceOf[_236][arg2]
            idx = idx + 1
            continue 
        _259 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 42
        idx = 0
        while idx < 42:
            mem[idx + _259 + 68] = mem[idx + _249 + 32]
            idx = idx + 32
            continue 
        mem[_259 + 100] = mem[_259 + 122 len 10]
        revert with memory
          from mem[64]
           len _259 + -mem[64] + 132
    _230 = mem[64]
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[96]
    _232 = mem[96]
    mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + 32] = (32 * mem[96]) + 96
    mem[(32 * mem[96]) + _230 + 96] = mem[(32 * arg3.length) + 128]
    _439 = mem[(32 * arg3.length) + 128]
    mem[(32 * _232) + _230 + 128 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
    emit TransferBatch(address rg1, address rg2, address rg3, uint256[] rg4, uint256[] rg5):
                       mem[mem[64] len (32 * _439) + (32 * _232) + _230 + -mem[64] + 128],
                       msg.sender,
                       arg1,
                       arg2,
    if not ext_code.size(arg2):
    mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = arg1
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = mem[96]
    _611 = mem[96]
    mem[mem[64] + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + 100] = (32 * mem[96]) + 192
    mem[(32 * mem[96]) + mem[64] + 196] = mem[(32 * arg3.length) + 128]
    _760 = mem[(32 * arg3.length) + 128]
    mem[(32 * _611) + mem[64] + 228 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
    mem[mem[64] + 132] = (32 * _760) + (32 * _611) + 224
    mem[(32 * _760) + (32 * _611) + mem[64] + 228] = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
    _904 = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
    mem[(32 * _760) + (32 * _611) + mem[64] + 260 len ceil32(mem[(32 * arg3.length) + (32 * arg4.length) + 160])] = mem[(32 * arg3.length) + (32 * arg4.length) + 192 len ceil32(mem[(32 * arg3.length) + (32 * arg4.length) + 160])]
    if not _904 % 32:
        require ext_code.size(arg2)
        call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _760) + (32 * _611) + 224, mem[mem[64] + 164 len _904 + (32 * _760) + (32 * _611) + 96]
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
        _1068 = mem[64]
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
        if not _1068 + ext_call.return_data[0]:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[_1068 + ext_call.return_data[0]]
        _1099 = mem[_1068 + ext_call.return_data[0]]
        if not mem[_1068 + ext_call.return_data[0]]:
            if not mem[_1068 + ext_call.return_data[0]] % 32:
                revert with 0, 32, mem[mem[64] + 36 len mem[_1068 + ext_call.return_data[0]] + 32]
            mem[floor32(mem[_1068 + ext_call.return_data[0]]) + mem[64] + 68] = mem[floor32(mem[_1068 + ext_call.return_data[0]]) + mem[64] + -(mem[_1068 + ext_call.return_data[0]] % 32) + 100 len mem[_1068 + ext_call.return_data[0]] % 32]
            revert with 0, 32, mem[mem[64] + 36], 160, mem[mem[64] + 100 len floor32(_1099)]
        mem[mem[64] + 68] = mem[_1068 + ext_call.return_data[0] + 32]
        mem[mem[64] + 100 len floor32(_1099 - 1)] = mem[_1068 + ext_call.return_data[0] + 64 len floor32(_1099 - 1)]
        if not _1099 % 32:
            revert with 0, 32, mem[mem[64] + 36 len _1099 + 32]
        mem[floor32(_1099) + mem[64] + 68] = mem[floor32(_1099) + mem[64] + -(_1099 % 32) + 100 len _1099 % 32]
        revert with 0, 32, mem[mem[64] + 36 len floor32(_1099) + 64]
    mem[floor32(_904) + (32 * _760) + (32 * _611) + mem[64] + 260] = mem[floor32(_904) + (32 * _760) + (32 * _611) + mem[64] + -(_904 % 32) + 292 len _904 % 32]
    require ext_code.size(arg2)
    call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
         gas gas_remaining wei
        args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _760) + (32 * _611) + 224, mem[mem[64] + 164 len floor32(_904) + (32 * _760) + (32 * _611) + 128]
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
    _1078 = mem[64]
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
    if not _1078 + ext_call.return_data[0]:
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    mem[mem[64] + 120 len 12]
    _1119 = mem[64]
    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    mem[mem[64] + 36] = mem[_1078 + ext_call.return_data[0]]
    _1121 = mem[_1078 + ext_call.return_data[0]]
    if not mem[_1078 + ext_call.return_data[0]]:
        if not mem[_1078 + ext_call.return_data[0]] % 32:
            revert with 0, 32, mem[mem[64] + 36 len mem[_1078 + ext_call.return_data[0]] + 32]
        mem[floor32(mem[_1078 + ext_call.return_data[0]]) + mem[64] + 68] = mem[floor32(mem[_1078 + ext_call.return_data[0]]) + mem[64] + -(mem[_1078 + ext_call.return_data[0]] % 32) + 100 len mem[_1078 + ext_call.return_data[0]] % 32]
    else:
        mem[mem[64] + 68] = mem[_1078 + ext_call.return_data[0] + 32]
        mem[mem[64] + 100 len floor32(_1121 - 1)] = mem[_1078 + ext_call.return_data[0] + 64 len floor32(_1121 - 1)]
        if not _1121 % 32:
            revert with 0, 32, mem[mem[64] + 36 len _1121 + 32]
        mem[floor32(_1121) + mem[64] + 68] = mem[floor32(_1121) + mem[64] + -(_1121 % 32) + 100 len _1121 % 32]
    revert with memory
      from mem[64]
       len floor32(_1121) + _1119 + -mem[64] + 100
}



}
