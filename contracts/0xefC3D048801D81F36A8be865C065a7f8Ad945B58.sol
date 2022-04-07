contract main {




// =====================  Runtime code  =====================


address sub_d56022d7Address;
uint256 stor1; offset 32
uint256 tokenId;
mapping of uint256 allowance;

function tokenId() payable {
    return tokenId
}

function sub_d56022d7(?) payable {
    return sub_d56022d7Address
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function initialize(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if sub_d56022d7Address:
        revert with 0, 'already initialized'
    sub_d56022d7Address = arg1
    tokenId = arg2
}

function totalSupply() payable {
    require ext_code.size(sub_d56022d7Address)
    staticcall sub_d56022d7Address.0xbd85b039 with:
            gas gas_remaining wei
           args tokenId
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function decimals() payable {
    require ext_code.size(sub_d56022d7Address)
    staticcall sub_d56022d7Address.0x3f47e662 with:
            gas gas_remaining wei
           args tokenId
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[31 len 1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_d56022d7Address)
    staticcall sub_d56022d7Address.balanceOf(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args address(arg1), tokenId
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe45524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(sub_d56022d7Address)
    call sub_d56022d7Address.0xa22cb465 with:
         gas gas_remaining wei
        args address(arg1), bool(arg2)
    if ext_call.success:
        return 1
    revert with ext_call.return_data[0 len return_data.size]
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[msg.sender][address(arg1)]:
        revert with 0, 
                    32,
                    40,
                    0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[168 len 24],
                    mem[216 len 8]
    if not msg.sender:
        revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0xfe45524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    require ext_code.size(sub_d56022d7Address)
    call sub_d56022d7Address.0xa22cb465 with:
         gas gas_remaining wei
        args address(arg1), bool(allowance[msg.sender][address(arg1)] - arg2)
    if ext_call.success:
        return 1
    revert with ext_call.return_data[0 len return_data.size]
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 + allowance[msg.sender][address(arg1)] < allowance[msg.sender][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe45524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2 + allowance[msg.sender][address(arg1)]
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    require ext_code.size(sub_d56022d7Address)
    call sub_d56022d7Address.0xa22cb465 with:
         gas gas_remaining wei
        args address(arg1), bool(arg2 + allowance[msg.sender][address(arg1)])
    if ext_call.success:
        return 1
    revert with ext_call.return_data[0 len return_data.size]
}

function transfer(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    mem[96] = 0xf242432a00000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    mem[132] = arg1
    mem[164] = tokenId
    mem[196] = arg2
    mem[228] = 160
    mem[260] = 0
    require ext_code.size(sub_d56022d7Address)
    call sub_d56022d7Address.0xf242432a with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), address(arg1), tokenId, arg2, 160, 0
    if ext_call.success:
        return 1
    if return_data.size < 68:
        revert with ext_call.return_data[0 len return_data.size]
    mem[0 len 4] = ext_call.return_data[0 len 4]
    if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if 0, Mask(224, 32, msg.sender) >> 32 > test266151307() or 0, Mask(224, 32, msg.sender) >> 32 + 36 > return_data.size:
        revert with ext_call.return_data[0 len return_data.size]
    if mem[0, Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with ext_call.return_data[0 len return_data.size]
    if 0, Mask(224, 32, msg.sender) >> 32 + mem[0, Mask(224, 32, msg.sender) >> 32 + 96] + 32 > return_data.size:
        revert with ext_call.return_data[0 len return_data.size]
    if not 0, Mask(224, 32, msg.sender) >> 32 + 96:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        return 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    if arg1 != msg.sender:
        if arg3 > allowance[msg.sender][address(msg.sender)]:
            revert with 0, 
                        32,
                        40,
                        0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                        mem[168 len 24],
                        mem[216 len 8]
        if not msg.sender:
            revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
        allowance[address(msg.sender)][address(msg.sender)] = allowance[msg.sender][address(msg.sender)] - arg3
        emit Approval((allowance[msg.sender][address(msg.sender)] - arg3), msg.sender, msg.sender);
        require ext_code.size(sub_d56022d7Address)
        call sub_d56022d7Address.0xa22cb465 with:
             gas gas_remaining wei
            args msg.sender, bool(allowance[msg.sender][address(msg.sender)] - arg3)
        if ext_call.success:
            require ext_code.size(sub_d56022d7Address)
            call sub_d56022d7Address.0xf242432a with:
                 gas gas_remaining wei
                args address(arg1), address(arg2), tokenId, arg3, 160, 0
            if ext_call.success:
                return 1
        revert with ext_call.return_data[0 len return_data.size]
    mem[96] = 0xf242432a00000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    mem[132] = arg2
    mem[164] = tokenId
    mem[196] = arg3
    mem[228] = 160
    mem[260] = 0
    require ext_code.size(sub_d56022d7Address)
    call sub_d56022d7Address.0xf242432a with:
         gas gas_remaining wei
        args 0, 0, address(arg2), tokenId, arg3, 160, 0
    if ext_call.success:
        return 1
    if return_data.size < 68:
        revert with ext_call.return_data[0 len return_data.size]
    mem[0 len 4] = ext_call.return_data[0 len 4]
    if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if 0, address(arg1) << 64 > test266151307() or 0, address(arg1) << 64 + 36 > return_data.size:
        revert with ext_call.return_data[0 len return_data.size]
    if mem[0, address(arg1) << 64 + 96] > test266151307():
        revert with ext_call.return_data[0 len return_data.size]
    if 0, address(arg1) << 64 + mem[0, address(arg1) << 64 + 96] + 32 > return_data.size:
        revert with ext_call.return_data[0 len return_data.size]
    if not 0, address(arg1) << 64 + 96:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        return 0
}

function symbol() payable {
    mem[96] = 0x4e41a1fb00000000000000000000000000000000000000000000000000000000
    mem[100] = tokenId
    require ext_code.size(sub_d56022d7Address)
    staticcall sub_d56022d7Address.0x4e41a1fb with:
            gas gas_remaining wei
           args tokenId
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], stor1
    require mem[96 len 4], stor1 <= 4294967296
    require mem[96 len 4], stor1 + 32 <= return_data.size
    require return_data.size >= mem[mem[96 len 4], stor1 + 96] + mem[96 len 4], stor1 + 32 and mem[mem[96 len 4], stor1 + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], stor1 + 96]
    _7 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 128 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
    if not _7 % 32:
        mem[64] = _7 + ceil32(return_data.size) + 128
        mem[_7 + ceil32(return_data.size) + 128] = 32
        mem[_7 + ceil32(return_data.size) + 160] = mem[ceil32(return_data.size) + 96]
        mem[_7 + ceil32(return_data.size) + 192 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if not mem[ceil32(return_data.size) + 96] % 32:
            return 32, mem[_7 + ceil32(return_data.size) + 160 len mem[ceil32(return_data.size) + 96] + 32]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + _7 + ceil32(return_data.size) + 192] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _7 + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 96] % 32) + 224 len mem[ceil32(return_data.size) + 96] % 32]
        return Array(len=mem[ceil32(return_data.size) + 96], data=mem[_7 + ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 96]) + 32]), 
    mem[floor32(_7) + ceil32(return_data.size) + 128] = mem[floor32(_7) + ceil32(return_data.size) + -(_7 % 32) + 160 len _7 % 32]
    mem[64] = floor32(_7) + ceil32(return_data.size) + 160
    mem[floor32(_7) + ceil32(return_data.size) + 160] = 32
    mem[floor32(_7) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
    mem[floor32(_7) + ceil32(return_data.size) + 224 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
    if not mem[ceil32(return_data.size) + 96] % 32:
        return 32, mem[floor32(_7) + ceil32(return_data.size) + 192 len mem[ceil32(return_data.size) + 96] + 32]
    mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_7) + ceil32(return_data.size) + 224] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_7) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 96] % 32) + 256 len mem[ceil32(return_data.size) + 96] % 32]
    return Array(len=mem[ceil32(return_data.size) + 96], data=mem[floor32(_7) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96]) + 32]), 
}

function uri() payable {
    mem[96] = 0xe89341c00000000000000000000000000000000000000000000000000000000
    mem[100] = tokenId
    require ext_code.size(sub_d56022d7Address)
    staticcall sub_d56022d7Address.uri(uint256 rg1) with:
            gas gas_remaining wei
           args tokenId
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], stor1
    require mem[96 len 4], stor1 <= 4294967296
    require mem[96 len 4], stor1 + 32 <= return_data.size
    require return_data.size >= mem[mem[96 len 4], stor1 + 96] + mem[96 len 4], stor1 + 32 and mem[mem[96 len 4], stor1 + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], stor1 + 96]
    _7 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 128 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
    if not _7 % 32:
        mem[64] = _7 + ceil32(return_data.size) + 128
        mem[_7 + ceil32(return_data.size) + 128] = 32
        mem[_7 + ceil32(return_data.size) + 160] = mem[ceil32(return_data.size) + 96]
        mem[_7 + ceil32(return_data.size) + 192 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if not mem[ceil32(return_data.size) + 96] % 32:
            return 32, mem[_7 + ceil32(return_data.size) + 160 len mem[ceil32(return_data.size) + 96] + 32]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + _7 + ceil32(return_data.size) + 192] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _7 + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 96] % 32) + 224 len mem[ceil32(return_data.size) + 96] % 32]
        return Array(len=mem[ceil32(return_data.size) + 96], data=mem[_7 + ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 96]) + 32]), 
    mem[floor32(_7) + ceil32(return_data.size) + 128] = mem[floor32(_7) + ceil32(return_data.size) + -(_7 % 32) + 160 len _7 % 32]
    mem[64] = floor32(_7) + ceil32(return_data.size) + 160
    mem[floor32(_7) + ceil32(return_data.size) + 160] = 32
    mem[floor32(_7) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
    mem[floor32(_7) + ceil32(return_data.size) + 224 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
    if not mem[ceil32(return_data.size) + 96] % 32:
        return 32, mem[floor32(_7) + ceil32(return_data.size) + 192 len mem[ceil32(return_data.size) + 96] + 32]
    mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_7) + ceil32(return_data.size) + 224] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_7) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 96] % 32) + 256 len mem[ceil32(return_data.size) + 96] % 32]
    return Array(len=mem[ceil32(return_data.size) + 96], data=mem[floor32(_7) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96]) + 32]), 
}

function name() payable {
    mem[96] = 0xad800c00000000000000000000000000000000000000000000000000000000
    mem[100] = tokenId
    require ext_code.size(sub_d56022d7Address)
    staticcall sub_d56022d7Address.name(uint256 rg1) with:
            gas gas_remaining wei
           args tokenId
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], stor1
    require mem[96 len 4], stor1 <= 4294967296
    require mem[96 len 4], stor1 + 32 <= return_data.size
    require return_data.size >= mem[mem[96 len 4], stor1 + 96] + mem[96 len 4], stor1 + 32 and mem[mem[96 len 4], stor1 + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], stor1 + 96]
    _7 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 128 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
    if not _7 % 32:
        mem[64] = _7 + ceil32(return_data.size) + 128
        mem[_7 + ceil32(return_data.size) + 128] = 32
        mem[_7 + ceil32(return_data.size) + 160] = mem[ceil32(return_data.size) + 96]
        mem[_7 + ceil32(return_data.size) + 192 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if not mem[ceil32(return_data.size) + 96] % 32:
            return 32, mem[_7 + ceil32(return_data.size) + 160 len mem[ceil32(return_data.size) + 96] + 32]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + _7 + ceil32(return_data.size) + 192] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _7 + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 96] % 32) + 224 len mem[ceil32(return_data.size) + 96] % 32]
        return Array(len=mem[ceil32(return_data.size) + 96], data=mem[_7 + ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 96]) + 32]), 
    mem[floor32(_7) + ceil32(return_data.size) + 128] = mem[floor32(_7) + ceil32(return_data.size) + -(_7 % 32) + 160 len _7 % 32]
    mem[64] = floor32(_7) + ceil32(return_data.size) + 160
    mem[floor32(_7) + ceil32(return_data.size) + 160] = 32
    mem[floor32(_7) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
    mem[floor32(_7) + ceil32(return_data.size) + 224 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
    if not mem[ceil32(return_data.size) + 96] % 32:
        return 32, mem[floor32(_7) + ceil32(return_data.size) + 192 len mem[ceil32(return_data.size) + 96] + 32]
    mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_7) + ceil32(return_data.size) + 224] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_7) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 96] % 32) + 256 len mem[ceil32(return_data.size) + 96] % 32]
    return Array(len=mem[ceil32(return_data.size) + 96], data=mem[floor32(_7) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96]) + 32]), 
}



}
