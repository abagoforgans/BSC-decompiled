contract main {




// =====================  Runtime code  =====================


const today = (block.timestamp - (block.timestamp % 24 * 3600))

const NAME = 'Daily Limit Module'

const VERSION = '0.1.0'


address stor0;
address managerAddress;
mapping of struct dailyLimits;

function manager() payable {
    return managerAddress
}

function dailyLimits(address arg1) payable {
    require calldata.size - 4 >= 32
    return dailyLimits[arg1].field_0, dailyLimits[arg1].field_256, dailyLimits[arg1].field_512
}

function _fallback() payable {
    revert
}

function changeDailyLimit(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if managerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x724d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d206d616e616765,
                    mem[202 len 26]
    dailyLimits[address(arg1)].field_0 = arg2
}

function changeMasterCopy(address arg1) payable {
    require calldata.size - 4 >= 32
    if managerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x724d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d206d616e616765,
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

function setup(address[] arg1, uint256[] arg2) payable {
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
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if managerAddress:
        revert with 0, 'Manager has already been set'
    managerAddress = msg.sender
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        dailyLimits[mem[(32 * idx) + 140 len 20]].field_0 = mem[(32 * idx) + (32 * arg1.length) + 160]
        idx = idx + 1
        continue 
}

function executeDailyLimit(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(managerAddress)
    staticcall managerAddress.0x2f54bf6e with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x644d6574686f642063616e206f6e6c792062652063616c6c656420627920616e206f776e65,
                    mem[201 len 27]
    if not arg2:
        revert with 0, 'Invalid to address provided'
    if arg3 <= 0:
        revert with 0, 'Invalid amount provided'
    if block.timestamp - (block.timestamp % 24 * 3600) > dailyLimits[address(arg1)].field_512:
        dailyLimits[address(arg1)].field_512 = block.timestamp - (block.timestamp % 24 * 3600)
        dailyLimits[address(arg1)].field_256 = 0
    if dailyLimits[address(arg1)].field_256 + arg3 > dailyLimits[address(arg1)].field_0:
        revert with 0, 'Daily limit has been reached'
    if dailyLimits[address(arg1)].field_256 + arg3 <= dailyLimits[address(arg1)].field_256:
        revert with 0, 'Daily limit has been reached'
    dailyLimits[address(arg1)].field_256 += arg3
    require ext_code.size(managerAddress)
    if arg1:
        call managerAddress.0x468721a7 with:
             gas gas_remaining wei
            args address(arg1), 0, 128, 0, 68, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3, 0, address(arg1) << 32 >> 256, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Could not execute token transfer'
    else:
        call managerAddress.0x468721a7 with:
             gas gas_remaining wei
            args 0, 0, arg3, 128, 0, 0, mem[260]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Could not execute ether transfer'
    ('bool', ('ext_call.return_data', 0, 32))
}



}
