contract main {




// =====================  Runtime code  =====================


const NAME = 'Whitelist Module'

const VERSION = '0.1.0'


address stor0;
address managerAddress;
mapping of uint8 stor2;

function isWhitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function manager() payable {
    return managerAddress
}

function _fallback() payable {
    revert
}

function removeFromWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    if managerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d206d616e616765,
                    mem[202 len 26]
    if not stor2[address(arg1)]:
        revert with 0, 'Account is not whitelisted'
    stor2[address(arg1)] = 0
}

function addToWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    if managerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d206d616e616765,
                    mem[202 len 26]
    if not arg1:
        revert with 0, 'Invalid account provided'
    if stor2[address(arg1)]:
        revert with 0, 'Account is already whitelisted'
    stor2[address(arg1)] = 1
}

function changeMasterCopy(address arg1) payable {
    require calldata.size - 4 >= 32
    if managerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d206d616e616765,
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

function setup(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if managerAddress:
        revert with 0, 'Manager has already been set'
    managerAddress = msg.sender
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'Invalid account provided'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        stor2[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function executeWhitelisted(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require ext_code.size(managerAddress)
    staticcall managerAddress.0x2f54bf6e with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 
                    32,
                    37,
                    0x644d6574686f642063616e206f6e6c792062652063616c6c656420627920616e206f776e65,
                    mem[ceil32(arg3.length) + 233 len 27]
    if not stor2[address(arg1)]:
        revert with 0, 32, 33, 0x72546172676574206163636f756e74206973206e6f742077686974656c69737465, mem[ceil32(arg3.length) + 229 len 31]
    mem[ceil32(arg3.length) + 128] = 0x468721a700000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 292 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        require ext_code.size(managerAddress)
        call managerAddress with:
             gas gas_remaining wei
            args address(arg1), arg2, 128, 0, arg3.length, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 292] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 324 len arg3.length % 32]
        require ext_code.size(managerAddress)
        call managerAddress with:
             gas gas_remaining wei
            args address(arg1), arg2, 128, 0, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 292 len floor32(arg3.length) + -ceil32(arg3.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Could not execute transaction'
    else:
        return 0
}



}
