contract main {




// =====================  Runtime code  =====================


const sub_f288a2e2(?) = 0xf66846415d2bf9eabda9e84793ff9c0ea96d87f50fc41e66aa16469c6a442f05


uint8 stor0;
address coreAddress; offset 8
mapping of struct feeds;

function feeds(address arg1) payable {
    require calldata.size - 4 >= 32
    return feeds[arg1].field_0, feeds[arg1].field_160
}

function paused() payable {
    return bool(stor0)
}

function core() payable {
    return coreAddress
}

function _fallback() payable {
    revert
}

function setCore(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(coreAddress)
    staticcall coreAddress.0xe43581b8 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0xfe436f72655265663a3a6f6e6c79476f7665726e6f723a2043616c6c6572206973206e6f74206120676f7665726e6f,
                    mem[211 len 17]
    coreAddress = arg1
    emit CoreUpdate(arg1);
}

function pause() payable {
    require ext_code.size(coreAddress)
    staticcall coreAddress.0xe43581b8 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(coreAddress)
        staticcall coreAddress.isGuardian(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        69,
                        0x77436f72655265663a3a6f6e6c79477561726469616e4f72476f7665726e6f723a2043616c6c6572206973206e6f74206120677561726469616e206f7220676f7665726e6f,
                        mem[233 len 27]
    if stor0:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    require ext_code.size(coreAddress)
    staticcall coreAddress.0xe43581b8 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(coreAddress)
        staticcall coreAddress.isGuardian(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        69,
                        0x77436f72655265663a3a6f6e6c79477561726469616e4f72476f7665726e6f723a2043616c6c6572206973206e6f74206120677561726469616e206f7220676f7665726e6f,
                        mem[233 len 27]
    if not stor0:
        revert with 0, 'Pausable: not paused'
    stor0 = 0
    emit Unpaused(msg.sender);
}

function sub_26a69bde(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 196] = msg.sender
    require ext_code.size(coreAddress)
    staticcall coreAddress.0xe43581b8 with:
            gas gas_remaining wei
           args msg.sender
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 
                    32,
                    47,
                    0xfe436f72655265663a3a6f6e6c79476f7665726e6f723a2043616c6c6572206973206e6f74206120676f7665726e6f,
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 307 len 17]
    idx = 0
    while idx < arg1.length:
        _22 = mem[64]
        mem[64] = mem[64] + 64
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        mem[_22] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]
        require idx < mem[(32 * arg1.length) + 128]
        mem[_22 + 32] = mem[(32 * idx) + (32 * arg1.length) + 191 len 1]
        require idx < mem[96]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        feeds[mem[(32 * idx) + 140 len 20]].field_0 = mem[_22 + 12 len 20]
        feeds[mem[(32 * idx) + 140 len 20]].field_160 = mem[_22 + 63 len 1]
        idx = idx + 1
        continue 
}

function getLatestPrice(address arg1) payable {
    require calldata.size - 4 >= 32
    if not feeds[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x774f7261636c653a3a207072696365206665656420646f6573206e6f742065786973,
                    mem[198 len 30]
    require ext_code.size(feeds[address(arg1)].field_0)
    staticcall feeds[address(arg1)].field_0.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_code.size(feeds[address(arg1)].field_0)
    staticcall feeds[address(arg1)].field_0.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[31 len 1] >= feeds[address(arg1)].field_160:
        if ext_call.return_data[31 len 1] <= feeds[address(arg1)].field_160:
            return ext_call.return_data[32]
        if not 10^uint8(ext_call.return_data[0] - feeds[address(arg1)].field_160):
            revert with 0, 'SignedSafeMath: division by zero'
        if -1 == 10^uint8(ext_call.return_data[0] - feeds[address(arg1)].field_160):
            if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x725369676e6564536166654d6174683a206469766973696f6e206f766572666c6f,
                            ext_call.return_data[101 len 31]
        require 10^uint8(ext_call.return_data[0] - feeds[address(arg1)].field_160)
        return (ext_call.return_data[32] / 10^uint8(ext_call.return_data[0] - feeds[address(arg1)].field_160))
    if not ext_call.return_data[32]:
        return 0
    if -1 == ext_call.return_data[32]:
        if 10^uint8(feeds[address(arg1)].field_160 - ext_call.return_data[0]) == 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        39,
                        0x725369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        ext_call.return_data[107 len 25]
    require ext_call.return_data[32]
    if 10^uint8(feeds[address(arg1)].field_160 - ext_call.return_data[0]) * ext_call.return_data[32] / ext_call.return_data[32] != 10^uint8(feeds[address(arg1)].field_160 - ext_call.return_data[0]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x725369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    ext_call.return_data[107 len 25]
    return (10^uint8(feeds[address(arg1)].field_160 - ext_call.return_data[0]) * ext_call.return_data[32])
}



}
