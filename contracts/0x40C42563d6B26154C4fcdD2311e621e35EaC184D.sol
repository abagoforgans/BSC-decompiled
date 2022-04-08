contract main {




// =====================  Runtime code  =====================


const NAME = 'State Channel Module'

const VERSION = '0.1.0'


address stor0;
address managerAddress;
mapping of uint256 isExecuted;

function manager() payable {
    return managerAddress
}

function isExecuted(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return isExecuted[arg1]
}

function _fallback() payable {
    revert
}

function setup() payable {
    if managerAddress:
        revert with 0, 'Manager has already been set'
    managerAddress = msg.sender
}

function changeMasterCopy(address arg1) payable {
    require calldata.size - 4 >= 32
    if managerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d206d616e616765,
                    mem[202 len 26]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0xfe496e76616c6964206d617374657220636f707920616464726573732070726f76696465,
                    mem[200 len 28]
    stor0 = arg1
    emit ChangedMasterCopy(arg1);
}

function getTransactionHash(address arg1, uint256 arg2, bytes arg3, uint8 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    mem[ceil32(arg3.length) + 160] = 0x1900000000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 161] = 0
    mem[ceil32(arg3.length) + 162] = address(this.address)
    mem[ceil32(arg3.length) + 182] = address(arg1)
    mem[ceil32(arg3.length) + 202] = arg2
    mem[ceil32(arg3.length) + 234 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 266 len arg3.length % 32] = mem[floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
    require arg4 <= 1
    mem[arg3.length + ceil32(arg3.length) + 234] = arg4 << 248
    mem[arg3.length + ceil32(arg3.length) + 235] = arg5
    mem[ceil32(arg3.length) + 128] = arg3.length + 107
    mem[arg3.length + ceil32(arg3.length) + 267] = sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]])
    return memory
      from arg3.length + ceil32(arg3.length) + 267
       len 32
}

function execTransaction(address arg1, uint256 arg2, bytes arg3, uint8 arg4, uint256 arg5, bytes arg6) payable {
    require calldata.size - 4 >= 192
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + arg6.length + 36 <= calldata.size
    mem[ceil32(arg3.length) + 128] = arg6.length
    mem[ceil32(arg3.length) + 160 len arg6.length] = arg6[all]
    mem[ceil32(arg3.length) + arg6.length + 160] = 0
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 192] = 0x1900000000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 193] = 0
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 194] = address(this.address)
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 214] = address(arg1)
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 234] = arg2
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 266 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + ceil32(arg6.length) + floor32(arg3.length) + -(arg3.length % 32) + 298 len arg3.length % 32] = mem[floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
    require arg4 <= 1
    mem[arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + 266] = arg4 << 248
    mem[arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + 267] = arg5
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 160] = arg3.length + 107
    mem[64] = arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + 299
    _55 = sha3(mem[ceil32(arg3.length) + ceil32(arg6.length) + 192 len Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg3.length) + arg6.length + 192 len -arg6.length + ceil32(arg6.length)]])
    mem[0] = sha3(mem[ceil32(arg3.length) + ceil32(arg6.length) + 192 len Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg3.length) + arg6.length + 192 len -arg6.length + ceil32(arg6.length)]])
    mem[32] = 2
    if isExecuted[mem[ceil32(arg3.length) + ceil32(arg6.length) + 192 len Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg3.length) + arg6.length + 192 len -arg6.length + ceil32(arg6.length)]]]:
        revert with 0, 'Transaction already executed'
    require ext_code.size(managerAddress)
    staticcall managerAddress.0xe75235b8 with:
            gas gas_remaining wei
    mem[arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + 299] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    s = 0
    s = 0
    while idx < ext_call.return_data[0]:
        _99 = mem[ceil32(arg3.length) + (65 * idx) + 160]
        _100 = mem[ceil32(arg3.length) + (65 * idx) + 192]
        _101 = mem[ceil32(arg3.length) + (65 * idx) + 193]
        _102 = mem[64]
        mem[64] = mem[64] + 32
        mem[_102 + 64] = mem[ceil32(arg3.length) + (65 * idx) + 224 len 1]
        mem[_102 + 96] = _99
        mem[_102 + 128] = _100
        signer = erecover(_55, _101 << 248, _99, _100) 
        mem[_102] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_102 + 36] = address(signer)
        require ext_code.size(managerAddress)
        staticcall managerAddress.0x2f54bf6e with:
                gas gas_remaining wei
               args address(signer)
        mem[_102 + 32] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Signature not provided by owner'
        if address(signer) <= address(s):
            revert with 0, 
                        32,
                        43,
                        0x645369676e61747572657320617265206e6f74206f726465726564206279206f776e657220616464726573,
                        Mask(136, 0, _100),
                        mem[_102 + 160 len 4]
        idx = idx + 1
        s = signer
        s = signer
        continue 
    isExecuted[_55] = 1
    mem[mem[64]] = 0x468721a700000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg1
    mem[mem[64] + 36] = arg2
    require arg4 <= 1
    mem[mem[64] + 100] = arg4
    mem[mem[64] + 68] = 128
    mem[mem[64] + 132] = mem[96]
    mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if not mem[96] % 32:
        require ext_code.size(managerAddress)
        call managerAddress.0x468721a7 with:
             gas gas_remaining wei
            args address(arg1), arg2, 128, arg4 << 248, mem[mem[64] + 132 len mem[96] + 32]
    else:
        mem[floor32(mem[96]) + mem[64] + 164] = mem[floor32(mem[96]) + mem[64] + -(mem[96] % 32) + 196 len mem[96] % 32]
        require ext_code.size(managerAddress)
        call managerAddress.0x468721a7 with:
             gas gas_remaining wei
            args address(arg1), arg2, Array(len=mem[96], data=mem[mem[64] + 164 len floor32(mem[96]) + 32]), arg4 << 248
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Could not execute transaction'
}



}
