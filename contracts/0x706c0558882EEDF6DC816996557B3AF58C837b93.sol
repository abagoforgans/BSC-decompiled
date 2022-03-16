contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
uint256 sub_ce145c12;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 totalToken;
uint256 stor8;
address tokenAddress;
address stor10;
mapping of address stor11;
mapping of uint256 stor12;
mapping of uint256 stor13;
mapping of uint256 stor14;
mapping of uint256 stor15;

function getTokenAddress() payable {
    return tokenAddress
}

function getTotalToken() payable {
    return totalToken
}

function owner() payable {
    return owner
}

function sub_ce145c12(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return sub_ce145c12
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_814d8e65(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6 = arg1
    return 1
}

function sub_89fcd144(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3 = arg1
    return 1
}

function sub_ad9537ba(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4 = arg1
    return 1
}

function sub_be015e0f(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5 = arg1
    return 1
}

function sub_cba1c665(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8 = arg1
    return 1
}

function sub_fefb65e6(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2 = arg1
    return 1
}

function setFreezeTransfer(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor0.field_160) = Mask(96, 0, arg1)
    emit FreezeTransfer(arg1);
    return 1
}

function sub_037c4eca(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_ce145c12 < arg1:
        revert with 0, 'index exceed'
    return stor11[arg1], stor13[stor11[arg1]]
}

function setTokenAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'ERC20: zero address'
    stor10 = arg1
    tokenAddress = arg1
    return 1
}

function getInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    return address(arg1), stor13[address(arg1)], stor14[address(arg1)], stor15[address(arg1)]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getAddressIndex(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if stor12[address(arg1)] <= 0:
        revert with 0, 'map index below zero'
    if 1 > stor12[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (stor12[address(arg1)] - 1)
}

function sub_41d17f80(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'transfer to the zero address'
    if msg.sender == this.address:
        revert with 0, 'approve to the this address'
    if stor14[address(arg1)] <= 0:
        revert with 0, 'need minFreeze'
    stor14[address(arg1)] = 0
    stor15[address(arg1)] = 0
    require ext_code.size(stor10)
    call stor10.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), stor14[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x5f64e104: stor14[address(arg1)], arg1
    return 1
}

function sub_133cb145(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'approve to the zero address'
    if arg1 == this.address:
        revert with 0, 'approve to the this address'
    if stor13[address(arg1)] <= 0:
        revert with 0, 'freeze amount zero'
    if totalToken < stor13[address(arg1)]:
        revert with 0, 'freeze amount zero'
    if stor14[address(arg1)] + stor13[address(arg1)] < stor14[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    stor14[address(arg1)] += stor13[address(arg1)]
    if stor13[address(arg1)] > totalToken:
        revert with 0, 'SafeMath: subtraction overflow'
    totalToken -= stor13[address(arg1)]
    stor15[address(arg1)] = block.timestamp + stor6
    stor13[address(arg1)] = 0
    emit 0x55859dc0: stor14[address(arg1)], stor14[address(arg1)], stor13[address(arg1)], stor15[address(arg1)], arg1
    return 1
}

function sub_0e1ca00e(?) payable {
    if uint8(stor0.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x73616c6c207472616e7366657273206172652063757272656e746c792066726f7a65,
                    mem[198 len 30]
    if stor15[address(msg.sender)] <= 0:
        revert with 0, 'freezing time'
    if stor15[address(msg.sender)] > block.timestamp:
        revert with 0, 'freezing time'
    if stor14[address(msg.sender)] <= 0:
        revert with 0, 'ERC20: need minFreeze'
    if stor14[address(msg.sender)] > stor5:
        revert with 0, 'ERC20: maxunFreeze'
    stor14[address(msg.sender)] = 0
    stor15[address(msg.sender)] = 0
    require ext_code.size(stor10)
    call stor10.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, stor14[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x5f64e104: stor14[address(msg.sender)], msg.sender
    return 1
}

function sub_947f1146(?) payable {
    if uint8(stor0.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x73616c6c207472616e7366657273206172652063757272656e746c792066726f7a65,
                    mem[198 len 30]
    if stor14[address(msg.sender)] <= 0:
        revert with 0, 'freezing amount'
    if stor15[address(msg.sender)] <= 0:
        revert with 0, 'freezing time'
    if stor15[address(msg.sender)] <= block.timestamp:
        revert with 0, 'freezing time'
    stor14[address(msg.sender)] = 0
    stor15[address(msg.sender)] = 0
    if stor13[address(msg.sender)] + stor14[address(msg.sender)] < stor13[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    stor13[address(msg.sender)] += stor14[address(msg.sender)]
    if totalToken + stor14[address(msg.sender)] < totalToken:
        revert with 0, 'SafeMath: addition overflow'
    totalToken += stor14[address(msg.sender)]
    emit 0x3e9dd508: stor14[address(msg.sender)], stor13[address(msg.sender)], msg.sender
    return 1
}

function unfreeze(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor0.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x73616c6c207472616e7366657273206172652063757272656e746c792066726f7a65,
                    mem[198 len 30]
    if stor14[address(msg.sender)] + arg1 < stor14[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    if stor14[address(msg.sender)] + arg1 < stor3:
        revert with 0, 'ERC20: minunFreeze'
    if stor14[address(msg.sender)] + arg1 > stor5:
        revert with 0, 'ERC20: maxunFreeze'
    if stor13[address(msg.sender)] < arg1:
        revert with 0, 'ERC20: from value'
    if totalToken < arg1:
        revert with 0, 'ERC20: from value'
    if arg1 > stor13[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    stor13[address(msg.sender)] -= arg1
    if arg1 > totalToken:
        revert with 0, 'SafeMath: subtraction overflow'
    totalToken -= arg1
    if stor14[address(msg.sender)] + arg1 < stor14[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    stor14[address(msg.sender)] += arg1
    stor15[address(msg.sender)] = block.timestamp + stor6
    emit 0x55859dc0: stor14[address(msg.sender)], stor14[address(msg.sender)], stor13[address(msg.sender)], stor15[address(msg.sender)], msg.sender
    return 1
}

function receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if uint8(stor0.field_160):
        revert with 0, 
                    32,
                    34,
                    0x73616c6c207472616e7366657273206172652063757272656e746c792066726f7a65,
                    mem[ceil32(arg4.length) + 230 len 30]
    if not arg1:
        revert with 0, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[ceil32(arg4.length) + 230 len 30]
    if tokenAddress != msg.sender:
        revert with 0, 
                    32,
                    35,
                    0x6e45524332303a2072656365697665417070726f76616c206572726f722073656e6465,
                    mem[ceil32(arg4.length) + 231 len 29]
    if stor13[address(arg1)] + arg2 < stor13[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if stor13[address(arg1)] + arg2 < stor2:
        revert with 0, 'ERC20: minFreeze'
    if stor13[address(arg1)] + arg2 > stor4:
        revert with 0, 'ERC20: maxFreeze'
    if stor13[address(arg1)] + arg2 < stor13[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    stor13[address(arg1)] += arg2
    if totalToken + arg2 < totalToken:
        revert with 0, 'SafeMath: addition overflow'
    totalToken += arg2
    if not arg1:
        revert with 0, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[ceil32(arg4.length) + 231 len 29]
    if stor12[address(arg1)] > 0:
        require ext_code.size(stor10)
        call stor10.transferFrom(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining wei
            args address(arg1), address(this.address), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit 0x66d12e5f: 0, Mask(224, 0, arg2), stor13[address(arg1)], stor12[address(arg1)], arg1
    else:
        stor11[stor1] = arg1
        if sub_ce145c12 + 1 < sub_ce145c12:
            revert with 0, 'SafeMath: addition overflow'
        sub_ce145c12++
        stor12[address(arg1)] = sub_ce145c12
        require ext_code.size(stor10)
        call stor10.transferFrom(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining wei
            args address(arg1), address(this.address), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit 0x66d12e5f: 0, Mask(224, 0, arg2), stor13[address(arg1)], sub_ce145c12, arg1
}

function sub_9917860c(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= arg2:
        revert with 0, 'getTokenMap index'
    if arg2 > sub_ce145c12:
        revert with 0, 'getTokenMap index'
    mem[96] = 30
    mem[128] = 'SafeMath: subtraction overflow'
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 - arg1 > stor8:
        revert with 0, 'getTokenMap max length'
    mem[160] = arg2 - arg1
    mem[64] = (32 * arg2 - arg1) + 192
    if not arg2 - arg1:
        idx = arg1
        while idx < arg2:
            mem[0] = idx
            mem[32] = 11
            _56 = mem[64]
            mem[64] = mem[64] + 64
            mem[_56] = 30
            mem[_56 + 32] = 'SafeMath: subtraction overflow'
            if arg1 <= idx:
                mem[0] = stor11[idx]
                mem[32] = 13
                require idx - arg1 < mem[160]
                mem[(32 * idx - arg1) + 192] = stor13[stor11[idx]]
                idx = idx + 1
                continue 
            _66 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            s = 0
            while s < 30:
                mem[_66 + s + 68] = mem[_56 + s + 32]
                s = s + 32
                continue 
            mem[_66 + 68] = mem[_66 + 70 len 30]
            revert with memory
              from mem[64]
               len _66 + -mem[64] + 100
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[160]
        _55 = mem[160]
        mem[mem[64] + 64 len floor32(mem[160])] = mem[192 len floor32(mem[160])]
        return 32, mem[mem[64] + 32 len (32 * _55) + 32]
    mem[192 len 32 * arg2 - arg1] = code.data[17144 len 32 * arg2 - arg1]
    idx = arg1
    while idx < arg2:
        mem[0] = idx
        mem[32] = 11
        _60 = mem[64]
        mem[64] = mem[64] + 64
        mem[_60] = 30
        mem[_60 + 32] = 'SafeMath: subtraction overflow'
        if arg1 <= idx:
            mem[0] = stor11[idx]
            mem[32] = 13
            require idx - arg1 < mem[160]
            mem[(32 * idx - arg1) + 192] = stor13[stor11[idx]]
            idx = idx + 1
            continue 
        _71 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        s = 0
        while s < 30:
            mem[_71 + s + 68] = mem[_60 + s + 32]
            s = s + 32
            continue 
        mem[_71 + 68] = mem[_71 + 70 len 30]
        revert with memory
          from mem[64]
           len _71 + -mem[64] + 100
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[160]
    _59 = mem[160]
    mem[mem[64] + 64 len floor32(mem[160])] = mem[192 len floor32(mem[160])]
    return 32, mem[mem[64] + 32 len (32 * _59) + 32]
}



}
