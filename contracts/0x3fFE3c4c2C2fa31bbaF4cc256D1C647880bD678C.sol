contract main {




// =====================  Runtime code  =====================


const name = ''

const decimals = 9

const symbol = ''


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor3;
mapping of uint256 stor4;
address stor5;
uint256 totalSupply;
uint256 stor7; offset 32
uint256 stor7;

function totalSupply() payable {
    return totalSupply
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function getOwner() payable {
    return owner
}

function owner() payable {
    return owner
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_910dc7e6(?) payable {
  stop
}

function _fallback() payable {
    revert
}

function sub_d734f349(?) payable {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
}

function sub_ce9bc1d3(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor5 = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_577f74b7(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x7342455032303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_fa5fb912(?) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x725472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572,
                    mem[205 len 23]
    mem[96] = 5
    mem[128 len 160] = call.data[calldata.size len 160]
    mem[128] = arg2
    mem[160] = stor4[address(msg.sender)]
    mem[192] = stor4[address(arg1)]
    mem[224] = balanceOf[address(msg.sender)]
    if stor3[address(msg.sender)]:
        mem[256] = 1
        mem[288] = 6
        mem[320 len 192] = call.data[calldata.size len 192]
        mem[512] = 0xaf17170300000000000000000000000000000000000000000000000000000000
        mem[516] = uint256(stor7.field_0)
        mem[548] = msg.sender
        mem[580] = arg1
        mem[612] = 128
        mem[644] = 5
        mem[676 len 0] = None
        require ext_code.size(stor5)
        staticcall stor5.0xaf171703 with:
                gas gas_remaining wei
               args uint256(stor7.field_0), msg.sender, address(arg1), Array(len=5, data=mem[676 len 160])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[512 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 512
        require return_data.size >= 32
        _253 = mem[512 len 4], Mask(224, 0, stor7.field_32)
        require mem[512 len 4], Mask(224, 0, stor7.field_32) <= 4294967296
        require mem[512 len 4], Mask(224, 0, stor7.field_32) + 32 <= return_data.size
        require mem[mem[512 len 4], Mask(224, 0, stor7.field_32) + 512] <= 4294967296 and mem[512 len 4], Mask(224, 0, stor7.field_32) + (32 * mem[mem[512 len 4], Mask(224, 0, stor7.field_32) + 512]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 512] = mem[mem[512 len 4], Mask(224, 0, stor7.field_32) + 512]
        _262 = mem[_253 + 512]
        mem[ceil32(return_data.size) + 544 len floor32(mem[_253 + 512])] = mem[_253 + 544 len floor32(mem[_253 + 512])]
        require 0 < mem[ceil32(return_data.size) + 512]
        uint256(stor7.field_0) = mem[ceil32(return_data.size) + 544]
        require 2 < mem[ceil32(return_data.size) + 512]
        stor4[address(msg.sender)] = mem[ceil32(return_data.size) + 608]
        require 3 < mem[ceil32(return_data.size) + 512]
        stor4[address(arg1)] = mem[ceil32(return_data.size) + 640]
        require 4 < mem[ceil32(return_data.size) + 512]
        if mem[ceil32(return_data.size) + 672] > 0:
            require 5 < mem[ceil32(return_data.size) + 512]
            require 1 < mem[ceil32(return_data.size) + 512]
            if mem[ceil32(return_data.size) + 576] + mem[ceil32(return_data.size) + 704] < mem[ceil32(return_data.size) + 704]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(msg.sender)] = mem[ceil32(return_data.size) + 576] + mem[ceil32(return_data.size) + 704]
            require 4 < mem[ceil32(return_data.size) + 512]
            if mem[ceil32(return_data.size) + 672] + balanceOf[stor0] < balanceOf[stor0]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor0] += mem[ceil32(return_data.size) + 672]
        require 1 < mem[ceil32(return_data.size) + 512]
        if mem[ceil32(return_data.size) + 576] > balanceOf[address(msg.sender)]:
            revert with 0, 
                        32,
                        38,
                        0x6f42455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[(32 * _262) + ceil32(return_data.size) + 614 len 26],
                        mem[(32 * _262) + ceil32(return_data.size) + 666 len 6]
    else:
        if not stor3[address(arg1)]:
            mem[288] = 6
            mem[320 len 192] = call.data[calldata.size len 192]
            mem[512] = 0xaf17170300000000000000000000000000000000000000000000000000000000
            mem[516] = uint256(stor7.field_0)
            mem[548] = msg.sender
            mem[580] = arg1
            mem[612] = 128
            mem[644] = 5
            mem[676 len 0] = None
            require ext_code.size(stor5)
            staticcall stor5.0xaf171703 with:
                    gas gas_remaining wei
                   args uint256(stor7.field_0), msg.sender, address(arg1), Array(len=5, data=mem[676 len 160])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[512 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 512
            require return_data.size >= 32
            _255 = mem[512 len 4], Mask(224, 0, stor7.field_32)
            require mem[512 len 4], Mask(224, 0, stor7.field_32) <= 4294967296
            require mem[512 len 4], Mask(224, 0, stor7.field_32) + 32 <= return_data.size
            require mem[mem[512 len 4], Mask(224, 0, stor7.field_32) + 512] <= 4294967296 and mem[512 len 4], Mask(224, 0, stor7.field_32) + (32 * mem[mem[512 len 4], Mask(224, 0, stor7.field_32) + 512]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 512] = mem[mem[512 len 4], Mask(224, 0, stor7.field_32) + 512]
            _263 = mem[_255 + 512]
            mem[ceil32(return_data.size) + 544 len floor32(mem[_255 + 512])] = mem[_255 + 544 len floor32(mem[_255 + 512])]
            require 0 < mem[ceil32(return_data.size) + 512]
            uint256(stor7.field_0) = mem[ceil32(return_data.size) + 544]
            require 2 < mem[ceil32(return_data.size) + 512]
            stor4[address(msg.sender)] = mem[ceil32(return_data.size) + 608]
            require 3 < mem[ceil32(return_data.size) + 512]
            stor4[address(arg1)] = mem[ceil32(return_data.size) + 640]
            require 4 < mem[ceil32(return_data.size) + 512]
            if mem[ceil32(return_data.size) + 672] > 0:
                require 5 < mem[ceil32(return_data.size) + 512]
                require 1 < mem[ceil32(return_data.size) + 512]
                if mem[ceil32(return_data.size) + 576] + mem[ceil32(return_data.size) + 704] < mem[ceil32(return_data.size) + 704]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] = mem[ceil32(return_data.size) + 576] + mem[ceil32(return_data.size) + 704]
                require 4 < mem[ceil32(return_data.size) + 512]
                if mem[ceil32(return_data.size) + 672] + balanceOf[stor0] < balanceOf[stor0]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor0] += mem[ceil32(return_data.size) + 672]
            require 1 < mem[ceil32(return_data.size) + 512]
            if mem[ceil32(return_data.size) + 576] > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0x6f42455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[(32 * _263) + ceil32(return_data.size) + 614 len 26],
                            mem[(32 * _263) + ceil32(return_data.size) + 666 len 6]
        else:
            mem[256] = 1
            mem[288] = 6
            mem[320 len 192] = call.data[calldata.size len 192]
            mem[512] = 0xaf17170300000000000000000000000000000000000000000000000000000000
            mem[516] = uint256(stor7.field_0)
            mem[548] = msg.sender
            mem[580] = arg1
            mem[612] = 128
            mem[644] = 5
            mem[676 len 0] = None
            require ext_code.size(stor5)
            staticcall stor5.0xaf171703 with:
                    gas gas_remaining wei
                   args uint256(stor7.field_0), msg.sender, address(arg1), Array(len=5, data=mem[676 len 160])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[512 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 512
            require return_data.size >= 32
            _257 = mem[512 len 4], Mask(224, 0, stor7.field_32)
            require mem[512 len 4], Mask(224, 0, stor7.field_32) <= 4294967296
            require mem[512 len 4], Mask(224, 0, stor7.field_32) + 32 <= return_data.size
            require mem[mem[512 len 4], Mask(224, 0, stor7.field_32) + 512] <= 4294967296 and mem[512 len 4], Mask(224, 0, stor7.field_32) + (32 * mem[mem[512 len 4], Mask(224, 0, stor7.field_32) + 512]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 512] = mem[mem[512 len 4], Mask(224, 0, stor7.field_32) + 512]
            _264 = mem[_257 + 512]
            mem[ceil32(return_data.size) + 544 len floor32(mem[_257 + 512])] = mem[_257 + 544 len floor32(mem[_257 + 512])]
            require 0 < mem[ceil32(return_data.size) + 512]
            uint256(stor7.field_0) = mem[ceil32(return_data.size) + 544]
            require 2 < mem[ceil32(return_data.size) + 512]
            stor4[address(msg.sender)] = mem[ceil32(return_data.size) + 608]
            require 3 < mem[ceil32(return_data.size) + 512]
            stor4[address(arg1)] = mem[ceil32(return_data.size) + 640]
            require 4 < mem[ceil32(return_data.size) + 512]
            if mem[ceil32(return_data.size) + 672] > 0:
                require 5 < mem[ceil32(return_data.size) + 512]
                require 1 < mem[ceil32(return_data.size) + 512]
                if mem[ceil32(return_data.size) + 576] + mem[ceil32(return_data.size) + 704] < mem[ceil32(return_data.size) + 704]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] = mem[ceil32(return_data.size) + 576] + mem[ceil32(return_data.size) + 704]
                require 4 < mem[ceil32(return_data.size) + 512]
                if mem[ceil32(return_data.size) + 672] + balanceOf[stor0] < balanceOf[stor0]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor0] += mem[ceil32(return_data.size) + 672]
            require 1 < mem[ceil32(return_data.size) + 512]
            if mem[ceil32(return_data.size) + 576] > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0x6f42455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[(32 * _264) + ceil32(return_data.size) + 614 len 26],
                            mem[(32 * _264) + ceil32(return_data.size) + 666 len 6]
    ('le', ('mem', ('range', ('add', 576, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize'))), 32)), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))))
    balanceOf[address(msg.sender)] -= mem[ceil32(return_data.size) + 576]
    if mem[ceil32(return_data.size) + 576] + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = mem[ceil32(return_data.size) + 576] + balanceOf[arg1]
    emit Transfer(mem[ceil32(return_data.size) + 576], msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x725472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572,
                    mem[205 len 23]
    mem[96] = 5
    mem[128 len 160] = call.data[calldata.size len 160]
    mem[128] = arg3
    mem[160] = stor4[address(arg1)]
    mem[192] = stor4[address(arg2)]
    mem[224] = balanceOf[address(arg1)]
    if stor3[address(arg1)]:
        mem[256] = 1
        mem[288] = 6
        mem[320 len 192] = call.data[calldata.size len 192]
        mem[512] = 0xaf17170300000000000000000000000000000000000000000000000000000000
        mem[516] = uint256(stor7.field_0)
        mem[548] = arg1
        mem[580] = arg2
        mem[612] = 128
        mem[644] = 5
        mem[676 len 0] = None
        require ext_code.size(stor5)
        staticcall stor5.0xaf171703 with:
                gas gas_remaining wei
               args uint256(stor7.field_0), address(arg1), address(arg2), Array(len=5, data=mem[676 len 160])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[512 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 512
        require return_data.size >= 32
        _361 = mem[512 len 4], Mask(224, 0, stor7.field_32)
        require mem[512 len 4], Mask(224, 0, stor7.field_32) <= 4294967296
        require mem[512 len 4], Mask(224, 0, stor7.field_32) + 32 <= return_data.size
        require mem[mem[512 len 4], Mask(224, 0, stor7.field_32) + 512] <= 4294967296 and mem[512 len 4], Mask(224, 0, stor7.field_32) + (32 * mem[mem[512 len 4], Mask(224, 0, stor7.field_32) + 512]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 512] = mem[mem[512 len 4], Mask(224, 0, stor7.field_32) + 512]
        _370 = mem[_361 + 512]
        mem[ceil32(return_data.size) + 544 len floor32(mem[_361 + 512])] = mem[_361 + 544 len floor32(mem[_361 + 512])]
        require 0 < mem[ceil32(return_data.size) + 512]
        uint256(stor7.field_0) = mem[ceil32(return_data.size) + 544]
        require 2 < mem[ceil32(return_data.size) + 512]
        stor4[address(arg1)] = mem[ceil32(return_data.size) + 608]
        require 3 < mem[ceil32(return_data.size) + 512]
        stor4[address(arg2)] = mem[ceil32(return_data.size) + 640]
        require 4 < mem[ceil32(return_data.size) + 512]
        if mem[ceil32(return_data.size) + 672] > 0:
            require 5 < mem[ceil32(return_data.size) + 512]
            require 1 < mem[ceil32(return_data.size) + 512]
            if mem[ceil32(return_data.size) + 576] + mem[ceil32(return_data.size) + 704] < mem[ceil32(return_data.size) + 704]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] = mem[ceil32(return_data.size) + 576] + mem[ceil32(return_data.size) + 704]
            require 4 < mem[ceil32(return_data.size) + 512]
            if mem[ceil32(return_data.size) + 672] + balanceOf[stor0] < balanceOf[stor0]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor0] += mem[ceil32(return_data.size) + 672]
        require 1 < mem[ceil32(return_data.size) + 512]
        if mem[ceil32(return_data.size) + 576] > balanceOf[address(arg1)]:
            revert with 0, 
                        32,
                        38,
                        0x6f42455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[(32 * _370) + ceil32(return_data.size) + 614 len 26],
                        mem[(32 * _370) + ceil32(return_data.size) + 666 len 6]
        balanceOf[address(arg1)] -= mem[ceil32(return_data.size) + 576]
        if mem[ceil32(return_data.size) + 576] + balanceOf[arg2] < balanceOf[arg2]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg2)] = mem[ceil32(return_data.size) + 576] + balanceOf[arg2]
        emit Transfer(mem[ceil32(return_data.size) + 576], arg1, arg2);
        if arg3 > allowance[address(arg1)][address(msg.sender)]:
            revert with 0, 
                        32,
                        40,
                        0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                        mem[(32 * _370) + ceil32(return_data.size) + 712 len 24],
                        mem[(32 * _370) + ceil32(return_data.size) + 760 len 8]
        if not arg1:
            revert with 0, 
                        32,
                        36,
                        0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                        mem[(32 * _370) + ceil32(return_data.size) + 840 len 28]
        if not msg.sender:
            revert with 0, 
                        32,
                        34,
                        0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573,
                        mem[(32 * _370) + ceil32(return_data.size) + 838 len 30]
    else:
        if not stor3[address(arg2)]:
            mem[288] = 6
            mem[320 len 192] = call.data[calldata.size len 192]
            mem[512] = 0xaf17170300000000000000000000000000000000000000000000000000000000
            mem[516] = uint256(stor7.field_0)
            mem[548] = arg1
            mem[580] = arg2
            mem[612] = 128
            mem[644] = 5
            mem[676 len 0] = None
            require ext_code.size(stor5)
            staticcall stor5.0xaf171703 with:
                    gas gas_remaining wei
                   args uint256(stor7.field_0), address(arg1), address(arg2), Array(len=5, data=mem[676 len 160])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[512 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 512
            require return_data.size >= 32
            _363 = mem[512 len 4], Mask(224, 0, stor7.field_32)
            require mem[512 len 4], Mask(224, 0, stor7.field_32) <= 4294967296
            require mem[512 len 4], Mask(224, 0, stor7.field_32) + 32 <= return_data.size
            require mem[mem[512 len 4], Mask(224, 0, stor7.field_32) + 512] <= 4294967296 and mem[512 len 4], Mask(224, 0, stor7.field_32) + (32 * mem[mem[512 len 4], Mask(224, 0, stor7.field_32) + 512]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 512] = mem[mem[512 len 4], Mask(224, 0, stor7.field_32) + 512]
            _371 = mem[_363 + 512]
            mem[ceil32(return_data.size) + 544 len floor32(mem[_363 + 512])] = mem[_363 + 544 len floor32(mem[_363 + 512])]
            require 0 < mem[ceil32(return_data.size) + 512]
            uint256(stor7.field_0) = mem[ceil32(return_data.size) + 544]
            require 2 < mem[ceil32(return_data.size) + 512]
            stor4[address(arg1)] = mem[ceil32(return_data.size) + 608]
            require 3 < mem[ceil32(return_data.size) + 512]
            stor4[address(arg2)] = mem[ceil32(return_data.size) + 640]
            require 4 < mem[ceil32(return_data.size) + 512]
            if mem[ceil32(return_data.size) + 672] > 0:
                require 5 < mem[ceil32(return_data.size) + 512]
                require 1 < mem[ceil32(return_data.size) + 512]
                if mem[ceil32(return_data.size) + 576] + mem[ceil32(return_data.size) + 704] < mem[ceil32(return_data.size) + 704]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] = mem[ceil32(return_data.size) + 576] + mem[ceil32(return_data.size) + 704]
                require 4 < mem[ceil32(return_data.size) + 512]
                if mem[ceil32(return_data.size) + 672] + balanceOf[stor0] < balanceOf[stor0]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor0] += mem[ceil32(return_data.size) + 672]
            require 1 < mem[ceil32(return_data.size) + 512]
            if mem[ceil32(return_data.size) + 576] > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            38,
                            0x6f42455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[(32 * _371) + ceil32(return_data.size) + 614 len 26],
                            mem[(32 * _371) + ceil32(return_data.size) + 666 len 6]
            balanceOf[address(arg1)] -= mem[ceil32(return_data.size) + 576]
            if mem[ceil32(return_data.size) + 576] + balanceOf[arg2] < balanceOf[arg2]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] = mem[ceil32(return_data.size) + 576] + balanceOf[arg2]
            emit Transfer(mem[ceil32(return_data.size) + 576], arg1, arg2);
            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 
                            32,
                            40,
                            0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                            mem[(32 * _371) + ceil32(return_data.size) + 712 len 24],
                            mem[(32 * _371) + ceil32(return_data.size) + 760 len 8]
            if not arg1:
                revert with 0, 
                            32,
                            36,
                            0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                            mem[(32 * _371) + ceil32(return_data.size) + 840 len 28]
            if not msg.sender:
                revert with 0, 
                            32,
                            34,
                            0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573,
                            mem[(32 * _371) + ceil32(return_data.size) + 838 len 30]
        else:
            mem[256] = 1
            mem[288] = 6
            mem[320 len 192] = call.data[calldata.size len 192]
            mem[512] = 0xaf17170300000000000000000000000000000000000000000000000000000000
            mem[516] = uint256(stor7.field_0)
            mem[548] = arg1
            mem[580] = arg2
            mem[612] = 128
            mem[644] = 5
            mem[676 len 0] = None
            require ext_code.size(stor5)
            staticcall stor5.0xaf171703 with:
                    gas gas_remaining wei
                   args uint256(stor7.field_0), address(arg1), address(arg2), Array(len=5, data=mem[676 len 160])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[512 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 512
            require return_data.size >= 32
            _365 = mem[512 len 4], Mask(224, 0, stor7.field_32)
            require mem[512 len 4], Mask(224, 0, stor7.field_32) <= 4294967296
            require mem[512 len 4], Mask(224, 0, stor7.field_32) + 32 <= return_data.size
            require mem[mem[512 len 4], Mask(224, 0, stor7.field_32) + 512] <= 4294967296 and mem[512 len 4], Mask(224, 0, stor7.field_32) + (32 * mem[mem[512 len 4], Mask(224, 0, stor7.field_32) + 512]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 512] = mem[mem[512 len 4], Mask(224, 0, stor7.field_32) + 512]
            _372 = mem[_365 + 512]
            mem[ceil32(return_data.size) + 544 len floor32(mem[_365 + 512])] = mem[_365 + 544 len floor32(mem[_365 + 512])]
            require 0 < mem[ceil32(return_data.size) + 512]
            uint256(stor7.field_0) = mem[ceil32(return_data.size) + 544]
            require 2 < mem[ceil32(return_data.size) + 512]
            stor4[address(arg1)] = mem[ceil32(return_data.size) + 608]
            require 3 < mem[ceil32(return_data.size) + 512]
            stor4[address(arg2)] = mem[ceil32(return_data.size) + 640]
            require 4 < mem[ceil32(return_data.size) + 512]
            if mem[ceil32(return_data.size) + 672] > 0:
                require 5 < mem[ceil32(return_data.size) + 512]
                require 1 < mem[ceil32(return_data.size) + 512]
                if mem[ceil32(return_data.size) + 576] + mem[ceil32(return_data.size) + 704] < mem[ceil32(return_data.size) + 704]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] = mem[ceil32(return_data.size) + 576] + mem[ceil32(return_data.size) + 704]
                require 4 < mem[ceil32(return_data.size) + 512]
                if mem[ceil32(return_data.size) + 672] + balanceOf[stor0] < balanceOf[stor0]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor0] += mem[ceil32(return_data.size) + 672]
            require 1 < mem[ceil32(return_data.size) + 512]
            if mem[ceil32(return_data.size) + 576] > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            38,
                            0x6f42455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[(32 * _372) + ceil32(return_data.size) + 614 len 26],
                            mem[(32 * _372) + ceil32(return_data.size) + 666 len 6]
            balanceOf[address(arg1)] -= mem[ceil32(return_data.size) + 576]
            if mem[ceil32(return_data.size) + 576] + balanceOf[arg2] < balanceOf[arg2]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] = mem[ceil32(return_data.size) + 576] + balanceOf[arg2]
            emit Transfer(mem[ceil32(return_data.size) + 576], arg1, arg2);
            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 
                            32,
                            40,
                            0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                            mem[(32 * _372) + ceil32(return_data.size) + 712 len 24],
                            mem[(32 * _372) + ceil32(return_data.size) + 760 len 8]
            if not arg1:
                revert with 0, 
                            32,
                            36,
                            0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                            mem[(32 * _372) + ceil32(return_data.size) + 840 len 28]
            if not msg.sender:
                revert with 0, 
                            32,
                            34,
                            0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573,
                            mem[(32 * _372) + ceil32(return_data.size) + 838 len 30]
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
