contract main {




// =====================  Runtime code  =====================


const relayHubVersion = ''


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address hubAddr;
address stor52;

function getHubAddr() payable {
    return hubAddr
}

function _fallback() payable {
    revert
}

function acceptRelayedCall(address arg1, address arg2, bytes arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, bytes arg8, uint256 arg9) payable {
    require calldata.size - 4 >= 288
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require arg8 <= 4294967296
    require arg8 + 36 <= calldata.size
    require arg8.length <= 4294967296 and arg8 + arg8.length + 36 <= calldata.size
    return 0, 64, 0
}

function setDefaultRelayHub() payable {
    if 0xd216153c06e857cd7f72665e0af1d7d82172f494 == hubAddr:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x6447534e526563697069656e743a206e65772052656c6179487562206973207468652063757272656e74206f6e,
                    mem[209 len 19]
    emit RelayHubChanged(hubAddr, 0xd216153c06e857cd7f72665e0af1d7d82172f494);
    hubAddr = 0xd216153c06e857cd7f72665e0af1d7d82172f494
}

function postRelayedCall(bytes arg1, bool arg2, uint256 arg3, bytes32 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if hubAddr != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6547534e526563697069656e743a2063616c6c6572206973206e6f742052656c61794875,
                    mem[200 len 28]
}

function preRelayedCall(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if hubAddr != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6547534e526563697069656e743a2063616c6c6572206973206e6f742052656c61794875,
                    mem[200 len 28]
    mem[ceil32(arg1.length) + 128] = 0
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function initialize() payable {
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x73436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
    if not hubAddr:
        if 0xd216153c06e857cd7f72665e0af1d7d82172f494 == hubAddr:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        45,
                        0x6447534e526563697069656e743a206e65772052656c6179487562206973207468652063757272656e74206f6e,
                        mem[209 len 19]
        emit RelayHubChanged(hubAddr, 0xd216153c06e857cd7f72665e0af1d7d82172f494);
        hubAddr = 0xd216153c06e857cd7f72665e0af1d7d82172f494
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function mint(string arg1, address arg2, uint256 arg3, bytes32 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    require ext_code.size(stor52)
    staticcall stor52.0x64936b1e with:
            gas gas_remaining wei
           args Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).mint(bytes32 rg1, uint256 rg2, bytes32 rg3, bytes rg4) with:
         gas gas_remaining wei
        args sha3(Array(len=arg1.length, data=arg1[all]), address(arg2)), arg3, arg4, Array(len=arg5.length, data=arg5[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor52)
    staticcall stor52.0xefa74f1f with:
            gas gas_remaining wei
           args Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function burn(string arg1, bytes arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[132] = arg1.length
    mem[164 len arg1.length] = arg1[all]
    mem[arg1.length + 164] = 0
    require ext_code.size(stor52)
    staticcall stor52.0xefa74f1f with:
            gas gas_remaining wei
           args Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if hubAddr != msg.sender:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg3
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x23b872dd with:
             gas gas_remaining wei
            args mem[calldata.size + 108 len 20], this.address, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'token transfer failed'
    require ext_code.size(stor52)
    staticcall stor52.0x64936b1e with:
            gas gas_remaining wei
           args Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).burn(bytes rg1, uint256 rg2) with:
         gas gas_remaining wei
        args Array(len=arg2.length, data=arg2[all]), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
