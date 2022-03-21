contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;
mapping of uint8 stor2;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
address stor11;
address stor12;
address stor13;
uint256 stor14;
uint256 stor15;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function isAdmin(address arg1) {
    require arg1
    return bool(stor1[address(arg1)])
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function isMinter(address arg1) {
    require arg1
    return bool(stor2[address(arg1)])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function isOwner(address arg1) {
    return (stor0 == arg1)
}

function renounceOwnership() {
    require stor0 == msg.sender
    emit OwnershipTransferred(0, stor0);
    stor0 = 0
}

function updateFTToken(address arg1) {
    require stor0 == msg.sender
    stor11 = arg1
    stor13 = arg1
    return stor11
}

function renounceAdmin() {
    require msg.sender
    require stor1[address(msg.sender)]
    stor1[address(msg.sender)] = 0
    emit AdminRemoved(msg.sender);
}

function renounceMinter() {
    require msg.sender
    require stor2[address(msg.sender)]
    stor2[address(msg.sender)] = 0
    emit MinterRemoved(msg.sender);
}

function addAdmin(address arg1) {
    require stor0 == msg.sender
    require arg1
    require not stor1[address(arg1)]
    stor1[address(arg1)] = 1
    emit AdminAdded(arg1);
}

function approve(address arg1, uint256 arg2) {
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function removeAdmin(address arg1) {
    require stor0 == msg.sender
    require arg1
    require stor1[address(arg1)]
    stor1[address(arg1)] = 0
    emit AdminRemoved(arg1);
}

function addMinter(address arg1) {
    require stor0 == msg.sender
    require arg1
    require not stor2[address(arg1)]
    stor2[address(arg1)] = 1
    emit MinterAdded(arg1);
}

function removeMinter(address arg1) {
    require msg.sender
    require stor1[address(msg.sender)]
    require arg1
    require stor2[address(arg1)]
    stor2[address(arg1)] = 0
    emit MinterRemoved(arg1);
}

function justBurn(uint256 arg1) {
    require msg.sender
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function transferOwnership(address arg1) {
    require stor0 == msg.sender
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(stor0, arg1);
    stor0 = arg1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require arg1
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transferOtherTokens(address arg1, uint256 arg2) {
    require stor0 == msg.sender
    require arg1 != this.address
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function getVirtualPrice() {
    if not eth.balance(this.address):
        require totalSupply > 0
        if totalSupply:
            return (0 / totalSupply)
    else:
        if eth.balance(this.address):
            require eth.balance(this.address) * stor10 / eth.balance(this.address) == stor10
            require totalSupply > 0
            if totalSupply:
                return (eth.balance(this.address) * stor10 / totalSupply)
    revert
}

function getVirtualPriceForMinting(uint256 arg1) {
    require arg1 <= eth.balance(this.address)
    if not eth.balance(this.address) - arg1:
        require totalSupply > 0
        if totalSupply:
            return (0 / totalSupply)
    else:
        if eth.balance(this.address) - arg1:
            require (eth.balance(this.address) * stor10) - (arg1 * stor10) / eth.balance(this.address) - arg1 == stor10
            require totalSupply > 0
            if totalSupply:
                return ((eth.balance(this.address) * stor10) - (arg1 * stor10) / totalSupply)
    revert
}

function transferMulti(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _20 = mem[(32 * idx) + 128]
        require idx < arg2.length
        require mem[(32 * idx) + 140 len 20]
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
        require balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[address(mem[(32 * idx) + 128])]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 16
        balanceOf[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_20));
        idx = idx + 1
        continue 
    return 1
}

function burn(uint256 arg1) {
    require msg.sender
    if not eth.balance(this.address):
        require totalSupply > 0
        require totalSupply
        if not 0 / totalSupply:
            require stor10 > 0
            require stor10
            require stor14 + arg1 >= stor14
            stor14 += arg1
            require stor15 + (0 / stor10) >= stor15
            stor15 += 0 / stor10
            call msg.sender with:
               value 0 / stor10 wei
                 gas 2300 * is_zero(value) wei
        else:
            require 0 / totalSupply
            require 0 / totalSupply * arg1 / 0 / totalSupply == arg1
            require stor10 > 0
            require stor10
            require stor14 + arg1 >= stor14
            stor14 += arg1
            require stor15 + (0 / totalSupply * arg1 / stor10) >= stor15
            stor15 += 0 / totalSupply * arg1 / stor10
            call msg.sender with:
               value 0 / totalSupply * arg1 / stor10 wei
                 gas 2300 * is_zero(value) wei
    else:
        require eth.balance(this.address)
        require eth.balance(this.address) * stor10 / eth.balance(this.address) == stor10
        require totalSupply > 0
        require totalSupply
        if not eth.balance(this.address) * stor10 / totalSupply:
            require stor10 > 0
            require stor10
            require stor14 + arg1 >= stor14
            stor14 += arg1
            require stor15 + (0 / stor10) >= stor15
            stor15 += 0 / stor10
            call msg.sender with:
               value 0 / stor10 wei
                 gas 2300 * is_zero(value) wei
        else:
            require eth.balance(this.address) * stor10 / totalSupply
            require eth.balance(this.address) * stor10 / totalSupply * arg1 / eth.balance(this.address) * stor10 / totalSupply == arg1
            require stor10 > 0
            require stor10
            require stor14 + arg1 >= stor14
            stor14 += arg1
            require stor15 + (eth.balance(this.address) * stor10 / totalSupply * arg1 / stor10) >= stor15
            stor15 += eth.balance(this.address) * stor10 / totalSupply * arg1 / stor10
            call msg.sender with:
               value eth.balance(this.address) * stor10 / totalSupply * arg1 / stor10 wei
                 gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function burnFrom(address arg1, uint256 arg2) {
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    require arg1
    if not eth.balance(this.address):
        require totalSupply > 0
        require totalSupply
        if not 0 / totalSupply:
            require stor10 > 0
            require stor10
            require stor14 + arg2 >= stor14
            stor14 += arg2
            require stor15 + (0 / stor10) >= stor15
            stor15 += 0 / stor10
            call arg1 with:
               value 0 / stor10 wei
                 gas 2300 * is_zero(value) wei
        else:
            require 0 / totalSupply
            require 0 / totalSupply * arg2 / 0 / totalSupply == arg2
            require stor10 > 0
            require stor10
            require stor14 + arg2 >= stor14
            stor14 += arg2
            require stor15 + (0 / totalSupply * arg2 / stor10) >= stor15
            stor15 += 0 / totalSupply * arg2 / stor10
            call arg1 with:
               value 0 / totalSupply * arg2 / stor10 wei
                 gas 2300 * is_zero(value) wei
    else:
        require eth.balance(this.address)
        require eth.balance(this.address) * stor10 / eth.balance(this.address) == stor10
        require totalSupply > 0
        require totalSupply
        if not eth.balance(this.address) * stor10 / totalSupply:
            require stor10 > 0
            require stor10
            require stor14 + arg2 >= stor14
            stor14 += arg2
            require stor15 + (0 / stor10) >= stor15
            stor15 += 0 / stor10
            call arg1 with:
               value 0 / stor10 wei
                 gas 2300 * is_zero(value) wei
        else:
            require eth.balance(this.address) * stor10 / totalSupply
            require eth.balance(this.address) * stor10 / totalSupply * arg2 / eth.balance(this.address) * stor10 / totalSupply == arg2
            require stor10 > 0
            require stor10
            require stor14 + arg2 >= stor14
            stor14 += arg2
            require stor15 + (eth.balance(this.address) * stor10 / totalSupply * arg2 / stor10) >= stor15
            stor15 += eth.balance(this.address) * stor10 / totalSupply * arg2 / stor10
            call arg1 with:
               value eth.balance(this.address) * stor10 / totalSupply * arg2 / stor10 wei
                 gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    emit Transfer(arg2, arg1, 0);
}

function updateValues(string arg1, uint256 arg2) {
    mem[128 len arg1.length] = arg1[all]
    if stor0 != msg.sender:
        revert with 0, 'UPToken: NOT_AUTHORIZED'
    mem[ceil32(arg1.length) + 128] = 8
    mem[ceil32(arg1.length) + 160] = 'MintRate'
    mem[ceil32(arg1.length) + 232 len 0] = None
    mem[ceil32(arg1.length) + 264 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 296 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 264 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + 296 len arg1.length % 32] = mem[ceil32(arg1.length) + -(arg1.length % 32) + floor32(arg1.length) + 296 len arg1.length % 32]
    if sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 264 len arg1.length % 32]) == sha3(mem[ceil32(arg1.length) + 232 len 8]):
        stor7 = arg2
    else:
        mem[arg1.length + ceil32(arg1.length) + 366 len 0] = None
        mem[arg1.length + ceil32(arg1.length) + 398 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + 430 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        mem[(2 * arg1.length) + ceil32(arg1.length) + 398 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[(2 * arg1.length) + ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 430 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        if sha3(mem[(2 * arg1.length) + ceil32(arg1.length) + 398 len arg1.length]) == sha3(mem[arg1.length + ceil32(arg1.length) + 366 len 6]):
            stor9 = arg2
        else:
            mem[(2 * arg1.length) + ceil32(arg1.length) + 398] = 8
            mem[(2 * arg1.length) + ceil32(arg1.length) + 430] = 'BurnRate'
            mem[(2 * arg1.length) + ceil32(arg1.length) + 494 len 0] = None
            mem[(2 * arg1.length) + ceil32(arg1.length) + 462] = 8
            mem[(2 * arg1.length) + ceil32(arg1.length) + 502 len 0] = None
            mem[(2 * arg1.length) + ceil32(arg1.length) + 526 len 8] = uint64('BurnRate')
            mem[(2 * arg1.length) + ceil32(arg1.length) + 502 len 24] = mem[(2 * arg1.length) + ceil32(arg1.length) + 502 len 16], uint64('BurnRate')
            mem[(2 * arg1.length) + ceil32(arg1.length) + 534 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[(2 * arg1.length) + ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 566 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
            mem[(3 * arg1.length) + ceil32(arg1.length) + 534 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[(3 * arg1.length) + ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 566 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
            if sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[(3 * arg1.length) + ceil32(arg1.length) + floor32(arg1.length) + 534 len arg1.length % 32]) != sha3(mem[(2 * arg1.length) + ceil32(arg1.length) + 502 len 8]):
                return 0
            stor8 = arg2
    return 1
}

function mint(address arg1, uint256 arg2) payable {
    require msg.sender
    require stor2[address(msg.sender)]
    require msg.value == arg2
    require arg2 <= eth.balance(this.address)
    if not eth.balance(this.address) - arg2:
        require totalSupply > 0
        require totalSupply
        if not 0 / totalSupply:
            require arg2
            require arg2
            require arg2 * stor7 / arg2 == stor7
            require arg2 * stor7
            require not arg2 * stor7
            revert
        require 0 / totalSupply
        require 0 / totalSupply * stor6 / 0 / totalSupply == stor6
        if not arg2:
            require 0 / totalSupply * stor6 > 0
            require 0 / totalSupply * stor6
            if not 0 / 0 / totalSupply * stor6:
                require stor6 > 0
                require stor6
                require stor9 <= stor6
                if not 0 / 0 / totalSupply * stor6:
                    require stor6 > 0
                    require stor6
                    require arg1
                    require totalSupply + (0 / stor6) >= totalSupply
                    totalSupply += 0 / stor6
                    require balanceOf[address(arg1)] + (0 / stor6) >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] += 0 / stor6
                    emit Transfer((0 / stor6), 0, arg1);
                    require stor11
                    require totalSupply + (0 / stor6) >= totalSupply
                    totalSupply += 0 / stor6
                    require balanceOf[stor11] + (0 / stor6) >= balanceOf[stor11]
                    balanceOf[stor11] += 0 / stor6
                    emit Transfer((0 / stor6), 0, stor11);
                    stor12 = arg1
                    require ext_code.size(stor12)
                    call stor12.0x822c00d4 with:
                         gas gas_remaining wei
                        args (0 / stor6)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor11)
                    call stor11.0x822c00d4 with:
                         gas gas_remaining wei
                        args (0 / stor6)
                else:
                    require 0 / 0 / totalSupply * stor6
                    require (stor6 * 0 / 0 / totalSupply * stor6) - (stor9 * 0 / 0 / totalSupply * stor6) / 0 / 0 / totalSupply * stor6 == stor6 - stor9
                    require stor6 > 0
                    require stor6
                    require arg1
                    require totalSupply + (0 / stor6) >= totalSupply
                    totalSupply += 0 / stor6
                    require balanceOf[address(arg1)] + (0 / stor6) >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] += 0 / stor6
                    emit Transfer((0 / stor6), 0, arg1);
                    require stor11
                    require totalSupply + ((stor6 * 0 / 0 / totalSupply * stor6) - (stor9 * 0 / 0 / totalSupply * stor6) / stor6) >= totalSupply
                    totalSupply += (stor6 * 0 / 0 / totalSupply * stor6) - (stor9 * 0 / 0 / totalSupply * stor6) / stor6
                    require balanceOf[stor11] + ((stor6 * 0 / 0 / totalSupply * stor6) - (stor9 * 0 / 0 / totalSupply * stor6) / stor6) >= balanceOf[stor11]
                    balanceOf[stor11] += (stor6 * 0 / 0 / totalSupply * stor6) - (stor9 * 0 / 0 / totalSupply * stor6) / stor6
                    emit Transfer(((stor6 * 0 / 0 / totalSupply * stor6) - (stor9 * 0 / 0 / totalSupply * stor6) / stor6), 0, stor11);
                    stor12 = arg1
                    require ext_code.size(stor12)
                    call stor12.0x822c00d4 with:
                         gas gas_remaining wei
                        args (0 / stor6)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor11)
                    call stor11.0x822c00d4 with:
                         gas gas_remaining wei
                        args ((stor6 * 0 / 0 / totalSupply * stor6) - (stor9 * 0 / 0 / totalSupply * stor6) / stor6)
            else:
                require 0 / 0 / totalSupply * stor6
                require 0 / 0 / totalSupply * stor6 * stor9 / 0 / 0 / totalSupply * stor6 == stor9
                require stor6 > 0
                require stor6
                require stor9 <= stor6
                if not 0 / 0 / totalSupply * stor6:
                    require stor6 > 0
                    require stor6
                    require arg1
                    require totalSupply + (0 / 0 / totalSupply * stor6 * stor9 / stor6) >= totalSupply
                    totalSupply += 0 / 0 / totalSupply * stor6 * stor9 / stor6
                    require balanceOf[address(arg1)] + (0 / 0 / totalSupply * stor6 * stor9 / stor6) >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] += 0 / 0 / totalSupply * stor6 * stor9 / stor6
                    emit Transfer((0 / 0 / totalSupply * stor6 * stor9 / stor6), 0, arg1);
                    require stor11
                    require totalSupply + (0 / stor6) >= totalSupply
                    totalSupply += 0 / stor6
                    require balanceOf[stor11] + (0 / stor6) >= balanceOf[stor11]
                    balanceOf[stor11] += 0 / stor6
                    emit Transfer((0 / stor6), 0, stor11);
                    stor12 = arg1
                    require ext_code.size(stor12)
                    call stor12.0x822c00d4 with:
                         gas gas_remaining wei
                        args (0 / 0 / totalSupply * stor6 * stor9 / stor6)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor11)
                    call stor11.0x822c00d4 with:
                         gas gas_remaining wei
                        args (0 / stor6)
                else:
                    require 0 / 0 / totalSupply * stor6
                    require (stor6 * 0 / 0 / totalSupply * stor6) - (stor9 * 0 / 0 / totalSupply * stor6) / 0 / 0 / totalSupply * stor6 == stor6 - stor9
                    require stor6 > 0
                    require stor6
                    require arg1
                    require totalSupply + (0 / 0 / totalSupply * stor6 * stor9 / stor6) >= totalSupply
                    totalSupply += 0 / 0 / totalSupply * stor6 * stor9 / stor6
                    require balanceOf[address(arg1)] + (0 / 0 / totalSupply * stor6 * stor9 / stor6) >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] += 0 / 0 / totalSupply * stor6 * stor9 / stor6
                    emit Transfer((0 / 0 / totalSupply * stor6 * stor9 / stor6), 0, arg1);
                    require stor11
                    require totalSupply + ((stor6 * 0 / 0 / totalSupply * stor6) - (stor9 * 0 / 0 / totalSupply * stor6) / stor6) >= totalSupply
                    totalSupply += (stor6 * 0 / 0 / totalSupply * stor6) - (stor9 * 0 / 0 / totalSupply * stor6) / stor6
                    require balanceOf[stor11] + ((stor6 * 0 / 0 / totalSupply * stor6) - (stor9 * 0 / 0 / totalSupply * stor6) / stor6) >= balanceOf[stor11]
                    balanceOf[stor11] += (stor6 * 0 / 0 / totalSupply * stor6) - (stor9 * 0 / 0 / totalSupply * stor6) / stor6
                    emit Transfer(((stor6 * 0 / 0 / totalSupply * stor6) - (stor9 * 0 / 0 / totalSupply * stor6) / stor6), 0, stor11);
                    stor12 = arg1
                    require ext_code.size(stor12)
                    call stor12.0x822c00d4 with:
                         gas gas_remaining wei
                        args (0 / 0 / totalSupply * stor6 * stor9 / stor6)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor11)
                    call stor11.0x822c00d4 with:
                         gas gas_remaining wei
                        args ((stor6 * 0 / 0 / totalSupply * stor6) - (stor9 * 0 / 0 / totalSupply * stor6) / stor6)
        else:
            require arg2
            require arg2 * stor7 / arg2 == stor7
            if not arg2 * stor7:
                require 0 / totalSupply * stor6 > 0
                require 0 / totalSupply * stor6
                if not 0 / 0 / totalSupply * stor6:
                    require stor6 > 0
                    require stor6
                    require stor9 <= stor6
                    if not 0 / 0 / totalSupply * stor6:
                        require stor6 > 0
                        require stor6
                        require arg1
                        require totalSupply + (0 / stor6) >= totalSupply
                        totalSupply += 0 / stor6
                        require balanceOf[address(arg1)] + (0 / stor6) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += 0 / stor6
                        emit Transfer((0 / stor6), 0, arg1);
                        require stor11
                        require totalSupply + (0 / stor6) >= totalSupply
                        totalSupply += 0 / stor6
                        require balanceOf[stor11] + (0 / stor6) >= balanceOf[stor11]
                        balanceOf[stor11] += 0 / stor6
                        emit Transfer((0 / stor6), 0, stor11);
                        stor12 = arg1
                        require ext_code.size(stor12)
                        call stor12.0x822c00d4 with:
                             gas gas_remaining wei
                            args (0 / stor6)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor11)
                        call stor11.0x822c00d4 with:
                             gas gas_remaining wei
                            args (0 / stor6)
                    else:
                        require 0 / 0 / totalSupply * stor6
                        require (stor6 * 0 / 0 / totalSupply * stor6) - (stor9 * 0 / 0 / totalSupply * stor6) / 0 / 0 / totalSupply * stor6 == stor6 - stor9
                        require stor6 > 0
                        require stor6
                        require arg1
                        require totalSupply + (0 / stor6) >= totalSupply
                        totalSupply += 0 / stor6
                        require balanceOf[address(arg1)] + (0 / stor6) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += 0 / stor6
                        emit Transfer((0 / stor6), 0, arg1);
                        require stor11
                        require totalSupply + ((stor6 * 0 / 0 / totalSupply * stor6) - (stor9 * 0 / 0 / totalSupply * stor6) / stor6) >= totalSupply
                        totalSupply += (stor6 * 0 / 0 / totalSupply * stor6) - (stor9 * 0 / 0 / totalSupply * stor6) / stor6
                        require balanceOf[stor11] + ((stor6 * 0 / 0 / totalSupply * stor6) - (stor9 * 0 / 0 / totalSupply * stor6) / stor6) >= balanceOf[stor11]
                        balanceOf[stor11] += (stor6 * 0 / 0 / totalSupply * stor6) - (stor9 * 0 / 0 / totalSupply * stor6) / stor6
                        emit Transfer(((stor6 * 0 / 0 / totalSupply * stor6) - (stor9 * 0 / 0 / totalSupply * stor6) / stor6), 0, stor11);
                        stor12 = arg1
                        require ext_code.size(stor12)
                        call stor12.0x822c00d4 with:
                             gas gas_remaining wei
                            args (0 / stor6)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor11)
                        call stor11.0x822c00d4 with:
                             gas gas_remaining wei
                            args ((stor6 * 0 / 0 / totalSupply * stor6) - (stor9 * 0 / 0 / totalSupply * stor6) / stor6)
                else:
                    require 0 / 0 / totalSupply * stor6
                    require 0 / 0 / totalSupply * stor6 * stor9 / 0 / 0 / totalSupply * stor6 == stor9
                    require stor6 > 0
                    require stor6
                    require stor9 <= stor6
                    if not 0 / 0 / totalSupply * stor6:
                        require stor6 > 0
                        require stor6
                        require arg1
                        require totalSupply + (0 / 0 / totalSupply * stor6 * stor9 / stor6) >= totalSupply
                        totalSupply += 0 / 0 / totalSupply * stor6 * stor9 / stor6
                        require balanceOf[address(arg1)] + (0 / 0 / totalSupply * stor6 * stor9 / stor6) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += 0 / 0 / totalSupply * stor6 * stor9 / stor6
                        emit Transfer((0 / 0 / totalSupply * stor6 * stor9 / stor6), 0, arg1);
                        require stor11
                        require totalSupply + (0 / stor6) >= totalSupply
                        totalSupply += 0 / stor6
                        require balanceOf[stor11] + (0 / stor6) >= balanceOf[stor11]
                        balanceOf[stor11] += 0 / stor6
                        emit Transfer((0 / stor6), 0, stor11);
                        stor12 = arg1
                        require ext_code.size(stor12)
                        call stor12.0x822c00d4 with:
                             gas gas_remaining wei
                            args (0 / 0 / totalSupply * stor6 * stor9 / stor6)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor11)
                        call stor11.0x822c00d4 with:
                             gas gas_remaining wei
                            args (0 / stor6)
                    else:
                        require 0 / 0 / totalSupply * stor6
                        require (stor6 * 0 / 0 / totalSupply * stor6) - (stor9 * 0 / 0 / totalSupply * stor6) / 0 / 0 / totalSupply * stor6 == stor6 - stor9
                        require stor6 > 0
                        require stor6
                        require arg1
                        require totalSupply + (0 / 0 / totalSupply * stor6 * stor9 / stor6) >= totalSupply
                        totalSupply += 0 / 0 / totalSupply * stor6 * stor9 / stor6
                        require balanceOf[address(arg1)] + (0 / 0 / totalSupply * stor6 * stor9 / stor6) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += 0 / 0 / totalSupply * stor6 * stor9 / stor6
                        emit Transfer((0 / 0 / totalSupply * stor6 * stor9 / stor6), 0, arg1);
                        require stor11
                        require totalSupply + ((stor6 * 0 / 0 / totalSupply * stor6) - (stor9 * 0 / 0 / totalSupply * stor6) / stor6) >= totalSupply
                        totalSupply += (stor6 * 0 / 0 / totalSupply * stor6) - (stor9 * 0 / 0 / totalSupply * stor6) / stor6
                        require balanceOf[stor11] + ((stor6 * 0 / 0 / totalSupply * stor6) - (stor9 * 0 / 0 / totalSupply * stor6) / stor6) >= balanceOf[stor11]
                        balanceOf[stor11] += (stor6 * 0 / 0 / totalSupply * stor6) - (stor9 * 0 / 0 / totalSupply * stor6) / stor6
                        emit Transfer(((stor6 * 0 / 0 / totalSupply * stor6) - (stor9 * 0 / 0 / totalSupply * stor6) / stor6), 0, stor11);
                        stor12 = arg1
                        require ext_code.size(stor12)
                        call stor12.0x822c00d4 with:
                             gas gas_remaining wei
                            args (0 / 0 / totalSupply * stor6 * stor9 / stor6)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor11)
                        call stor11.0x822c00d4 with:
                             gas gas_remaining wei
                            args ((stor6 * 0 / 0 / totalSupply * stor6) - (stor9 * 0 / 0 / totalSupply * stor6) / stor6)
            else:
                require arg2 * stor7
                require arg2 * stor7 * stor10 / arg2 * stor7 == stor10
                require 0 / totalSupply * stor6 > 0
                require 0 / totalSupply * stor6
                if not arg2 * stor7 * stor10 / 0 / totalSupply * stor6:
                    require stor6 > 0
                    require stor6
                    require stor9 <= stor6
                    if not arg2 * stor7 * stor10 / 0 / totalSupply * stor6:
                        require stor6 > 0
                        require stor6
                        require arg1
                        require totalSupply + (0 / stor6) >= totalSupply
                        totalSupply += 0 / stor6
                        require balanceOf[address(arg1)] + (0 / stor6) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += 0 / stor6
                        emit Transfer((0 / stor6), 0, arg1);
                        require stor11
                        require totalSupply + (0 / stor6) >= totalSupply
                        totalSupply += 0 / stor6
                        require balanceOf[stor11] + (0 / stor6) >= balanceOf[stor11]
                        balanceOf[stor11] += 0 / stor6
                        emit Transfer((0 / stor6), 0, stor11);
                        stor12 = arg1
                        require ext_code.size(stor12)
                        call stor12.0x822c00d4 with:
                             gas gas_remaining wei
                            args (0 / stor6)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor11)
                        call stor11.0x822c00d4 with:
                             gas gas_remaining wei
                            args (0 / stor6)
                    else:
                        require arg2 * stor7 * stor10 / 0 / totalSupply * stor6
                        require (stor6 * arg2 * stor7 * stor10 / 0 / totalSupply * stor6) - (stor9 * arg2 * stor7 * stor10 / 0 / totalSupply * stor6) / arg2 * stor7 * stor10 / 0 / totalSupply * stor6 == stor6 - stor9
                        require stor6 > 0
                        require stor6
                        require arg1
                        require totalSupply + (0 / stor6) >= totalSupply
                        totalSupply += 0 / stor6
                        require balanceOf[address(arg1)] + (0 / stor6) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += 0 / stor6
                        emit Transfer((0 / stor6), 0, arg1);
                        require stor11
                        require totalSupply + ((stor6 * arg2 * stor7 * stor10 / 0 / totalSupply * stor6) - (stor9 * arg2 * stor7 * stor10 / 0 / totalSupply * stor6) / stor6) >= totalSupply
                        totalSupply += (stor6 * arg2 * stor7 * stor10 / 0 / totalSupply * stor6) - (stor9 * arg2 * stor7 * stor10 / 0 / totalSupply * stor6) / stor6
                        require balanceOf[stor11] + ((stor6 * arg2 * stor7 * stor10 / 0 / totalSupply * stor6) - (stor9 * arg2 * stor7 * stor10 / 0 / totalSupply * stor6) / stor6) >= balanceOf[stor11]
                        balanceOf[stor11] += (stor6 * arg2 * stor7 * stor10 / 0 / totalSupply * stor6) - (stor9 * arg2 * stor7 * stor10 / 0 / totalSupply * stor6) / stor6
                        emit Transfer(((stor6 * arg2 * stor7 * stor10 / 0 / totalSupply * stor6) - (stor9 * arg2 * stor7 * stor10 / 0 / totalSupply * stor6) / stor6), 0, stor11);
                        stor12 = arg1
                        require ext_code.size(stor12)
                        call stor12.0x822c00d4 with:
                             gas gas_remaining wei
                            args (0 / stor6)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor11)
                        call stor11.0x822c00d4 with:
                             gas gas_remaining wei
                            args ((stor6 * arg2 * stor7 * stor10 / 0 / totalSupply * stor6) - (stor9 * arg2 * stor7 * stor10 / 0 / totalSupply * stor6) / stor6)
                else:
                    require arg2 * stor7 * stor10 / 0 / totalSupply * stor6
                    require arg2 * stor7 * stor10 / 0 / totalSupply * stor6 * stor9 / arg2 * stor7 * stor10 / 0 / totalSupply * stor6 == stor9
                    require stor6 > 0
                    require stor6
                    require stor9 <= stor6
                    if not arg2 * stor7 * stor10 / 0 / totalSupply * stor6:
                        require stor6 > 0
                        require stor6
                        require arg1
                        require totalSupply + (arg2 * stor7 * stor10 / 0 / totalSupply * stor6 * stor9 / stor6) >= totalSupply
                        totalSupply += arg2 * stor7 * stor10 / 0 / totalSupply * stor6 * stor9 / stor6
                        require balanceOf[address(arg1)] + (arg2 * stor7 * stor10 / 0 / totalSupply * stor6 * stor9 / stor6) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += arg2 * stor7 * stor10 / 0 / totalSupply * stor6 * stor9 / stor6
                        emit Transfer((arg2 * stor7 * stor10 / 0 / totalSupply * stor6 * stor9 / stor6), 0, arg1);
                        require stor11
                        require totalSupply + (0 / stor6) >= totalSupply
                        totalSupply += 0 / stor6
                        require balanceOf[stor11] + (0 / stor6) >= balanceOf[stor11]
                        balanceOf[stor11] += 0 / stor6
                        emit Transfer((0 / stor6), 0, stor11);
                        stor12 = arg1
                        require ext_code.size(stor12)
                        call stor12.0x822c00d4 with:
                             gas gas_remaining wei
                            args (arg2 * stor7 * stor10 / 0 / totalSupply * stor6 * stor9 / stor6)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor11)
                        call stor11.0x822c00d4 with:
                             gas gas_remaining wei
                            args (0 / stor6)
                    else:
                        require arg2 * stor7 * stor10 / 0 / totalSupply * stor6
                        require (stor6 * arg2 * stor7 * stor10 / 0 / totalSupply * stor6) - (stor9 * arg2 * stor7 * stor10 / 0 / totalSupply * stor6) / arg2 * stor7 * stor10 / 0 / totalSupply * stor6 == stor6 - stor9
                        require stor6 > 0
                        require stor6
                        require arg1
                        require totalSupply + (arg2 * stor7 * stor10 / 0 / totalSupply * stor6 * stor9 / stor6) >= totalSupply
                        totalSupply += arg2 * stor7 * stor10 / 0 / totalSupply * stor6 * stor9 / stor6
                        require balanceOf[address(arg1)] + (arg2 * stor7 * stor10 / 0 / totalSupply * stor6 * stor9 / stor6) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += arg2 * stor7 * stor10 / 0 / totalSupply * stor6 * stor9 / stor6
                        emit Transfer((arg2 * stor7 * stor10 / 0 / totalSupply * stor6 * stor9 / stor6), 0, arg1);
                        require stor11
                        require totalSupply + ((stor6 * arg2 * stor7 * stor10 / 0 / totalSupply * stor6) - (stor9 * arg2 * stor7 * stor10 / 0 / totalSupply * stor6) / stor6) >= totalSupply
                        totalSupply += (stor6 * arg2 * stor7 * stor10 / 0 / totalSupply * stor6) - (stor9 * arg2 * stor7 * stor10 / 0 / totalSupply * stor6) / stor6
                        require balanceOf[stor11] + ((stor6 * arg2 * stor7 * stor10 / 0 / totalSupply * stor6) - (stor9 * arg2 * stor7 * stor10 / 0 / totalSupply * stor6) / stor6) >= balanceOf[stor11]
                        balanceOf[stor11] += (stor6 * arg2 * stor7 * stor10 / 0 / totalSupply * stor6) - (stor9 * arg2 * stor7 * stor10 / 0 / totalSupply * stor6) / stor6
                        emit Transfer(((stor6 * arg2 * stor7 * stor10 / 0 / totalSupply * stor6) - (stor9 * arg2 * stor7 * stor10 / 0 / totalSupply * stor6) / stor6), 0, stor11);
                        stor12 = arg1
                        require ext_code.size(stor12)
                        call stor12.0x822c00d4 with:
                             gas gas_remaining wei
                            args (arg2 * stor7 * stor10 / 0 / totalSupply * stor6 * stor9 / stor6)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor11)
                        call stor11.0x822c00d4 with:
                             gas gas_remaining wei
                            args ((stor6 * arg2 * stor7 * stor10 / 0 / totalSupply * stor6) - (stor9 * arg2 * stor7 * stor10 / 0 / totalSupply * stor6) / stor6)
    else:
        require eth.balance(this.address) - arg2
        require (eth.balance(this.address) * stor10) - (arg2 * stor10) / eth.balance(this.address) - arg2 == stor10
        require totalSupply > 0
        require totalSupply
        if not (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply:
            require arg2
            require arg2
            require arg2 * stor7 / arg2 == stor7
            require arg2 * stor7
            require not arg2 * stor7
            revert
        require (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply
        require (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply == stor6
        if not arg2:
            require (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6 > 0
            require (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6
            if not 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6:
                require stor6 > 0
                require stor6
                require stor9 <= stor6
                if not 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6:
                    require stor6 > 0
                    require stor6
                    require arg1
                    require totalSupply + (0 / stor6) >= totalSupply
                    totalSupply += 0 / stor6
                    require balanceOf[address(arg1)] + (0 / stor6) >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] += 0 / stor6
                    emit Transfer((0 / stor6), 0, arg1);
                    require stor11
                    require totalSupply + (0 / stor6) >= totalSupply
                    totalSupply += 0 / stor6
                    require balanceOf[stor11] + (0 / stor6) >= balanceOf[stor11]
                    balanceOf[stor11] += 0 / stor6
                    emit Transfer((0 / stor6), 0, stor11);
                    stor12 = arg1
                    require ext_code.size(stor12)
                    call stor12.0x822c00d4 with:
                         gas gas_remaining wei
                        args (0 / stor6)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor11)
                    call stor11.0x822c00d4 with:
                         gas gas_remaining wei
                        args (0 / stor6)
                else:
                    require 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6
                    require (stor6 * 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) - (stor9 * 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) / 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6 == stor6 - stor9
                    require stor6 > 0
                    require stor6
                    require arg1
                    require totalSupply + (0 / stor6) >= totalSupply
                    totalSupply += 0 / stor6
                    require balanceOf[address(arg1)] + (0 / stor6) >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] += 0 / stor6
                    emit Transfer((0 / stor6), 0, arg1);
                    require stor11
                    require totalSupply + ((stor6 * 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) - (stor9 * 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) / stor6) >= totalSupply
                    totalSupply += (stor6 * 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) - (stor9 * 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) / stor6
                    require balanceOf[stor11] + ((stor6 * 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) - (stor9 * 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) / stor6) >= balanceOf[stor11]
                    balanceOf[stor11] += (stor6 * 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) - (stor9 * 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) / stor6
                    emit Transfer(((stor6 * 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) - (stor9 * 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) / stor6), 0, stor11);
                    stor12 = arg1
                    require ext_code.size(stor12)
                    call stor12.0x822c00d4 with:
                         gas gas_remaining wei
                        args (0 / stor6)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor11)
                    call stor11.0x822c00d4 with:
                         gas gas_remaining wei
                        args ((stor6 * 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) - (stor9 * 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) / stor6)
            else:
                require 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6
                require 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6 * stor9 / 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6 == stor9
                require stor6 > 0
                require stor6
                require stor9 <= stor6
                if not 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6:
                    require stor6 > 0
                    require stor6
                    require arg1
                    require totalSupply + (0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6 * stor9 / stor6) >= totalSupply
                    totalSupply += 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6 * stor9 / stor6
                    require balanceOf[address(arg1)] + (0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6 * stor9 / stor6) >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] += 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6 * stor9 / stor6
                    emit Transfer((0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6 * stor9 / stor6), 0, arg1);
                    require stor11
                    require totalSupply + (0 / stor6) >= totalSupply
                    totalSupply += 0 / stor6
                    require balanceOf[stor11] + (0 / stor6) >= balanceOf[stor11]
                    balanceOf[stor11] += 0 / stor6
                    emit Transfer((0 / stor6), 0, stor11);
                    stor12 = arg1
                    require ext_code.size(stor12)
                    call stor12.0x822c00d4 with:
                         gas gas_remaining wei
                        args (0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6 * stor9 / stor6)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor11)
                    call stor11.0x822c00d4 with:
                         gas gas_remaining wei
                        args (0 / stor6)
                else:
                    require 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6
                    require (stor6 * 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) - (stor9 * 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) / 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6 == stor6 - stor9
                    require stor6 > 0
                    require stor6
                    require arg1
                    require totalSupply + (0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6 * stor9 / stor6) >= totalSupply
                    totalSupply += 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6 * stor9 / stor6
                    require balanceOf[address(arg1)] + (0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6 * stor9 / stor6) >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] += 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6 * stor9 / stor6
                    emit Transfer((0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6 * stor9 / stor6), 0, arg1);
                    require stor11
                    require totalSupply + ((stor6 * 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) - (stor9 * 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) / stor6) >= totalSupply
                    totalSupply += (stor6 * 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) - (stor9 * 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) / stor6
                    require balanceOf[stor11] + ((stor6 * 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) - (stor9 * 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) / stor6) >= balanceOf[stor11]
                    balanceOf[stor11] += (stor6 * 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) - (stor9 * 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) / stor6
                    emit Transfer(((stor6 * 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) - (stor9 * 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) / stor6), 0, stor11);
                    stor12 = arg1
                    require ext_code.size(stor12)
                    call stor12.0x822c00d4 with:
                         gas gas_remaining wei
                        args (0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6 * stor9 / stor6)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor11)
                    call stor11.0x822c00d4 with:
                         gas gas_remaining wei
                        args ((stor6 * 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) - (stor9 * 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) / stor6)
        else:
            require arg2
            require arg2 * stor7 / arg2 == stor7
            if not arg2 * stor7:
                require (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6 > 0
                require (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6
                if not 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6:
                    require stor6 > 0
                    require stor6
                    require stor9 <= stor6
                    if not 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6:
                        require stor6 > 0
                        require stor6
                        require arg1
                        require totalSupply + (0 / stor6) >= totalSupply
                        totalSupply += 0 / stor6
                        require balanceOf[address(arg1)] + (0 / stor6) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += 0 / stor6
                        emit Transfer((0 / stor6), 0, arg1);
                        require stor11
                        require totalSupply + (0 / stor6) >= totalSupply
                        totalSupply += 0 / stor6
                        require balanceOf[stor11] + (0 / stor6) >= balanceOf[stor11]
                        balanceOf[stor11] += 0 / stor6
                        emit Transfer((0 / stor6), 0, stor11);
                        stor12 = arg1
                        require ext_code.size(stor12)
                        call stor12.0x822c00d4 with:
                             gas gas_remaining wei
                            args (0 / stor6)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor11)
                        call stor11.0x822c00d4 with:
                             gas gas_remaining wei
                            args (0 / stor6)
                    else:
                        require 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6
                        require (stor6 * 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) - (stor9 * 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) / 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6 == stor6 - stor9
                        require stor6 > 0
                        require stor6
                        require arg1
                        require totalSupply + (0 / stor6) >= totalSupply
                        totalSupply += 0 / stor6
                        require balanceOf[address(arg1)] + (0 / stor6) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += 0 / stor6
                        emit Transfer((0 / stor6), 0, arg1);
                        require stor11
                        require totalSupply + ((stor6 * 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) - (stor9 * 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) / stor6) >= totalSupply
                        totalSupply += (stor6 * 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) - (stor9 * 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) / stor6
                        require balanceOf[stor11] + ((stor6 * 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) - (stor9 * 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) / stor6) >= balanceOf[stor11]
                        balanceOf[stor11] += (stor6 * 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) - (stor9 * 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) / stor6
                        emit Transfer(((stor6 * 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) - (stor9 * 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) / stor6), 0, stor11);
                        stor12 = arg1
                        require ext_code.size(stor12)
                        call stor12.0x822c00d4 with:
                             gas gas_remaining wei
                            args (0 / stor6)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor11)
                        call stor11.0x822c00d4 with:
                             gas gas_remaining wei
                            args ((stor6 * 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) - (stor9 * 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) / stor6)
                else:
                    require 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6
                    require 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6 * stor9 / 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6 == stor9
                    require stor6 > 0
                    require stor6
                    require stor9 <= stor6
                    if not 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6:
                        require stor6 > 0
                        require stor6
                        require arg1
                        require totalSupply + (0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6 * stor9 / stor6) >= totalSupply
                        totalSupply += 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6 * stor9 / stor6
                        require balanceOf[address(arg1)] + (0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6 * stor9 / stor6) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6 * stor9 / stor6
                        emit Transfer((0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6 * stor9 / stor6), 0, arg1);
                        require stor11
                        require totalSupply + (0 / stor6) >= totalSupply
                        totalSupply += 0 / stor6
                        require balanceOf[stor11] + (0 / stor6) >= balanceOf[stor11]
                        balanceOf[stor11] += 0 / stor6
                        emit Transfer((0 / stor6), 0, stor11);
                        stor12 = arg1
                        require ext_code.size(stor12)
                        call stor12.0x822c00d4 with:
                             gas gas_remaining wei
                            args (0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6 * stor9 / stor6)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor11)
                        call stor11.0x822c00d4 with:
                             gas gas_remaining wei
                            args (0 / stor6)
                    else:
                        require 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6
                        require (stor6 * 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) - (stor9 * 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) / 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6 == stor6 - stor9
                        require stor6 > 0
                        require stor6
                        require arg1
                        require totalSupply + (0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6 * stor9 / stor6) >= totalSupply
                        totalSupply += 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6 * stor9 / stor6
                        require balanceOf[address(arg1)] + (0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6 * stor9 / stor6) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6 * stor9 / stor6
                        emit Transfer((0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6 * stor9 / stor6), 0, arg1);
                        require stor11
                        require totalSupply + ((stor6 * 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) - (stor9 * 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) / stor6) >= totalSupply
                        totalSupply += (stor6 * 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) - (stor9 * 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) / stor6
                        require balanceOf[stor11] + ((stor6 * 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) - (stor9 * 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) / stor6) >= balanceOf[stor11]
                        balanceOf[stor11] += (stor6 * 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) - (stor9 * 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) / stor6
                        emit Transfer(((stor6 * 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) - (stor9 * 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) / stor6), 0, stor11);
                        stor12 = arg1
                        require ext_code.size(stor12)
                        call stor12.0x822c00d4 with:
                             gas gas_remaining wei
                            args (0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6 * stor9 / stor6)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor11)
                        call stor11.0x822c00d4 with:
                             gas gas_remaining wei
                            args ((stor6 * 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) - (stor9 * 0 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) / stor6)
            else:
                require arg2 * stor7
                require arg2 * stor7 * stor10 / arg2 * stor7 == stor10
                require (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6 > 0
                require (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6
                if not arg2 * stor7 * stor10 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6:
                    require stor6 > 0
                    require stor6
                    require stor9 <= stor6
                    if not arg2 * stor7 * stor10 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6:
                        require stor6 > 0
                        require stor6
                        require arg1
                        require totalSupply + (0 / stor6) >= totalSupply
                        totalSupply += 0 / stor6
                        require balanceOf[address(arg1)] + (0 / stor6) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += 0 / stor6
                        emit Transfer((0 / stor6), 0, arg1);
                        require stor11
                        require totalSupply + (0 / stor6) >= totalSupply
                        totalSupply += 0 / stor6
                        require balanceOf[stor11] + (0 / stor6) >= balanceOf[stor11]
                        balanceOf[stor11] += 0 / stor6
                        emit Transfer((0 / stor6), 0, stor11);
                        stor12 = arg1
                        require ext_code.size(stor12)
                        call stor12.0x822c00d4 with:
                             gas gas_remaining wei
                            args (0 / stor6)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor11)
                        call stor11.0x822c00d4 with:
                             gas gas_remaining wei
                            args (0 / stor6)
                    else:
                        require arg2 * stor7 * stor10 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6
                        require (stor6 * arg2 * stor7 * stor10 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) - (stor9 * arg2 * stor7 * stor10 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) / arg2 * stor7 * stor10 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6 == stor6 - stor9
                        require stor6 > 0
                        require stor6
                        require arg1
                        require totalSupply + (0 / stor6) >= totalSupply
                        totalSupply += 0 / stor6
                        require balanceOf[address(arg1)] + (0 / stor6) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += 0 / stor6
                        emit Transfer((0 / stor6), 0, arg1);
                        require stor11
                        require totalSupply + ((stor6 * arg2 * stor7 * stor10 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) - (stor9 * arg2 * stor7 * stor10 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) / stor6) >= totalSupply
                        totalSupply += (stor6 * arg2 * stor7 * stor10 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) - (stor9 * arg2 * stor7 * stor10 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) / stor6
                        require balanceOf[stor11] + ((stor6 * arg2 * stor7 * stor10 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) - (stor9 * arg2 * stor7 * stor10 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) / stor6) >= balanceOf[stor11]
                        balanceOf[stor11] += (stor6 * arg2 * stor7 * stor10 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) - (stor9 * arg2 * stor7 * stor10 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) / stor6
                        emit Transfer(((stor6 * arg2 * stor7 * stor10 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) - (stor9 * arg2 * stor7 * stor10 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) / stor6), 0, stor11);
                        stor12 = arg1
                        require ext_code.size(stor12)
                        call stor12.0x822c00d4 with:
                             gas gas_remaining wei
                            args (0 / stor6)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor11)
                        call stor11.0x822c00d4 with:
                             gas gas_remaining wei
                            args ((stor6 * arg2 * stor7 * stor10 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) - (stor9 * arg2 * stor7 * stor10 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) / stor6)
                else:
                    require arg2 * stor7 * stor10 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6
                    require arg2 * stor7 * stor10 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6 * stor9 / arg2 * stor7 * stor10 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6 == stor9
                    require stor6 > 0
                    require stor6
                    require stor9 <= stor6
                    if not arg2 * stor7 * stor10 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6:
                        require stor6 > 0
                        require stor6
                        require arg1
                        require totalSupply + (arg2 * stor7 * stor10 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6 * stor9 / stor6) >= totalSupply
                        totalSupply += arg2 * stor7 * stor10 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6 * stor9 / stor6
                        require balanceOf[address(arg1)] + (arg2 * stor7 * stor10 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6 * stor9 / stor6) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += arg2 * stor7 * stor10 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6 * stor9 / stor6
                        emit Transfer((arg2 * stor7 * stor10 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6 * stor9 / stor6), 0, arg1);
                        require stor11
                        require totalSupply + (0 / stor6) >= totalSupply
                        totalSupply += 0 / stor6
                        require balanceOf[stor11] + (0 / stor6) >= balanceOf[stor11]
                        balanceOf[stor11] += 0 / stor6
                        emit Transfer((0 / stor6), 0, stor11);
                        stor12 = arg1
                        require ext_code.size(stor12)
                        call stor12.0x822c00d4 with:
                             gas gas_remaining wei
                            args (arg2 * stor7 * stor10 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6 * stor9 / stor6)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor11)
                        call stor11.0x822c00d4 with:
                             gas gas_remaining wei
                            args (0 / stor6)
                    else:
                        require arg2 * stor7 * stor10 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6
                        require (stor6 * arg2 * stor7 * stor10 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) - (stor9 * arg2 * stor7 * stor10 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) / arg2 * stor7 * stor10 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6 == stor6 - stor9
                        require stor6 > 0
                        require stor6
                        require arg1
                        require totalSupply + (arg2 * stor7 * stor10 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6 * stor9 / stor6) >= totalSupply
                        totalSupply += arg2 * stor7 * stor10 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6 * stor9 / stor6
                        require balanceOf[address(arg1)] + (arg2 * stor7 * stor10 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6 * stor9 / stor6) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += arg2 * stor7 * stor10 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6 * stor9 / stor6
                        emit Transfer((arg2 * stor7 * stor10 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6 * stor9 / stor6), 0, arg1);
                        require stor11
                        require totalSupply + ((stor6 * arg2 * stor7 * stor10 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) - (stor9 * arg2 * stor7 * stor10 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) / stor6) >= totalSupply
                        totalSupply += (stor6 * arg2 * stor7 * stor10 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) - (stor9 * arg2 * stor7 * stor10 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) / stor6
                        require balanceOf[stor11] + ((stor6 * arg2 * stor7 * stor10 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) - (stor9 * arg2 * stor7 * stor10 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) / stor6) >= balanceOf[stor11]
                        balanceOf[stor11] += (stor6 * arg2 * stor7 * stor10 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) - (stor9 * arg2 * stor7 * stor10 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) / stor6
                        emit Transfer(((stor6 * arg2 * stor7 * stor10 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) - (stor9 * arg2 * stor7 * stor10 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) / stor6), 0, stor11);
                        stor12 = arg1
                        require ext_code.size(stor12)
                        call stor12.0x822c00d4 with:
                             gas gas_remaining wei
                            args (arg2 * stor7 * stor10 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6 * stor9 / stor6)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor11)
                        call stor11.0x822c00d4 with:
                             gas gas_remaining wei
                            args ((stor6 * arg2 * stor7 * stor10 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) - (stor9 * arg2 * stor7 * stor10 / (eth.balance(this.address) * stor10) - (arg2 * stor10) / totalSupply * stor6) / stor6)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}



}
