contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 stor2; offset 2
uint256 stor2; offset 1
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner; offset 8

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
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

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if arg2 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x7345524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if balanceOf[address(msg.sender)] >= totalSupply / 100:
        if balanceOf[address(msg.sender)] <= totalSupply / 100:
            if balanceOf[address(msg.sender)] <= Mask(254, 0, stor2.field_2):
                if balanceOf[address(msg.sender)] <= uint255(stor2.field_1):
                    if not msg.sender:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[457 len 27]
                    if not this.address:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[455 len 29]
                    if 0 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[422 len 26],
                                    mem[474 len 6]
                    if balanceOf[this.address] < balanceOf[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(this.address)] = balanceOf[this.address]
                    emit Transfer(0, msg.sender, this.address);
                    if not msg.sender:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[553 len 27]
                    if not arg1:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[551 len 29]
                    if 0 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[518 len 26],
                                    mem[570 len 6]
                    if balanceOf[arg1] < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[arg1]
                    emit Transfer(0, msg.sender, arg1);
                else:
                    if arg2 / 100 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not msg.sender:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[585 len 27]
                    if not this.address:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[583 len 29]
                    if arg2 / 100 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[550 len 26],
                                    mem[602 len 6]
                    balanceOf[address(msg.sender)] -= arg2 / 100
                    if (arg2 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(this.address)] = (arg2 / 100) + balanceOf[this.address]
                    emit Transfer((arg2 / 100), msg.sender, this.address);
                    if not msg.sender:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[681 len 27]
                    if not arg1:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[679 len 29]
                    if arg2 - (arg2 / 100) > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[646 len 26],
                                    mem[698 len 6]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 100)
                    if arg2 - (arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = arg2 - (arg2 / 100) + balanceOf[arg1]
                    emit Transfer((arg2 - (arg2 / 100)), msg.sender, arg1);
            else:
                if arg2 / 40 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                if balanceOf[address(msg.sender)] <= uint255(stor2.field_1):
                    if not msg.sender:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[585 len 27]
                    if not this.address:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[583 len 29]
                    if arg2 / 40 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[550 len 26],
                                    mem[602 len 6]
                    balanceOf[address(msg.sender)] -= arg2 / 40
                    if (arg2 / 40) + balanceOf[this.address] < balanceOf[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(this.address)] = (arg2 / 40) + balanceOf[this.address]
                    emit Transfer((arg2 / 40), msg.sender, this.address);
                    if not msg.sender:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[681 len 27]
                    if not arg1:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[679 len 29]
                    if arg2 - (arg2 / 40) > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[646 len 26],
                                    mem[698 len 6]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 40)
                    if arg2 - (arg2 / 40) + balanceOf[arg1] < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = arg2 - (arg2 / 40) + balanceOf[arg1]
                    emit Transfer((arg2 - (arg2 / 40)), msg.sender, arg1);
                else:
                    if arg2 / 100 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not msg.sender:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                    if not this.address:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                    if arg2 / 100 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[678 len 26],
                                    mem[730 len 6]
                    balanceOf[address(msg.sender)] -= arg2 / 100
                    if (arg2 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(this.address)] = (arg2 / 100) + balanceOf[this.address]
                    emit Transfer((arg2 / 100), msg.sender, this.address);
                    if not msg.sender:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[809 len 27]
                    if not arg1:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[807 len 29]
                    if arg2 - (arg2 / 100) > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[774 len 26],
                                    mem[826 len 6]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 100)
                    if arg2 - (arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = arg2 - (arg2 / 100) + balanceOf[arg1]
                    emit Transfer((arg2 - (arg2 / 100)), msg.sender, arg1);
        else:
            if arg2 / 20 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if balanceOf[address(msg.sender)] <= Mask(254, 0, stor2.field_2):
                if balanceOf[address(msg.sender)] <= uint255(stor2.field_1):
                    if not msg.sender:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[585 len 27]
                    if not this.address:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[583 len 29]
                    if arg2 / 20 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[550 len 26],
                                    mem[602 len 6]
                    balanceOf[address(msg.sender)] -= arg2 / 20
                    if (arg2 / 20) + balanceOf[this.address] < balanceOf[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(this.address)] = (arg2 / 20) + balanceOf[this.address]
                    emit Transfer((arg2 / 20), msg.sender, this.address);
                    if not msg.sender:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[681 len 27]
                    if not arg1:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[679 len 29]
                    if arg2 - (arg2 / 20) > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[646 len 26],
                                    mem[698 len 6]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 20)
                    if arg2 - (arg2 / 20) + balanceOf[arg1] < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = arg2 - (arg2 / 20) + balanceOf[arg1]
                    emit Transfer((arg2 - (arg2 / 20)), msg.sender, arg1);
                else:
                    if arg2 / 100 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not msg.sender:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                    if not this.address:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                    if arg2 / 100 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[678 len 26],
                                    mem[730 len 6]
                    balanceOf[address(msg.sender)] -= arg2 / 100
                    if (arg2 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(this.address)] = (arg2 / 100) + balanceOf[this.address]
                    emit Transfer((arg2 / 100), msg.sender, this.address);
                    if not msg.sender:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[809 len 27]
                    if not arg1:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[807 len 29]
                    if arg2 - (arg2 / 100) > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[774 len 26],
                                    mem[826 len 6]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 100)
                    if arg2 - (arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = arg2 - (arg2 / 100) + balanceOf[arg1]
                    emit Transfer((arg2 - (arg2 / 100)), msg.sender, arg1);
            else:
                if arg2 / 40 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                if balanceOf[address(msg.sender)] <= uint255(stor2.field_1):
                    if not msg.sender:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                    if not this.address:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                    if arg2 / 40 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[678 len 26],
                                    mem[730 len 6]
                    balanceOf[address(msg.sender)] -= arg2 / 40
                    if (arg2 / 40) + balanceOf[this.address] < balanceOf[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(this.address)] = (arg2 / 40) + balanceOf[this.address]
                    emit Transfer((arg2 / 40), msg.sender, this.address);
                    if not msg.sender:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[809 len 27]
                    if not arg1:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[807 len 29]
                    if arg2 - (arg2 / 40) > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[774 len 26],
                                    mem[826 len 6]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 40)
                    if arg2 - (arg2 / 40) + balanceOf[arg1] < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = arg2 - (arg2 / 40) + balanceOf[arg1]
                    emit Transfer((arg2 - (arg2 / 40)), msg.sender, arg1);
                else:
                    if arg2 / 100 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not msg.sender:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                    if not this.address:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                    if arg2 / 100 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[806 len 26],
                                    mem[858 len 6]
                    balanceOf[address(msg.sender)] -= arg2 / 100
                    if (arg2 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(this.address)] = (arg2 / 100) + balanceOf[this.address]
                    emit Transfer((arg2 / 100), msg.sender, this.address);
                    if not msg.sender:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                    if not arg1:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                    if arg2 - (arg2 / 100) > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[902 len 26],
                                    mem[954 len 6]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 100)
                    if arg2 - (arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = arg2 - (arg2 / 100) + balanceOf[arg1]
                    emit Transfer((arg2 - (arg2 / 100)), msg.sender, arg1);
    else:
        if arg2 / 12 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        if balanceOf[address(msg.sender)] <= totalSupply / 100:
            if balanceOf[address(msg.sender)] <= Mask(254, 0, stor2.field_2):
                if balanceOf[address(msg.sender)] <= uint255(stor2.field_1):
                    if not msg.sender:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[585 len 27]
                    if not this.address:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[583 len 29]
                    if arg2 / 12 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[550 len 26],
                                    mem[602 len 6]
                    balanceOf[address(msg.sender)] -= arg2 / 12
                    if (arg2 / 12) + balanceOf[this.address] < balanceOf[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(this.address)] = (arg2 / 12) + balanceOf[this.address]
                    emit Transfer((arg2 / 12), msg.sender, this.address);
                    if not msg.sender:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[681 len 27]
                    if not arg1:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[679 len 29]
                    if arg2 - (arg2 / 12) > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[646 len 26],
                                    mem[698 len 6]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 12)
                    if arg2 - (arg2 / 12) + balanceOf[arg1] < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = arg2 - (arg2 / 12) + balanceOf[arg1]
                    emit Transfer((arg2 - (arg2 / 12)), msg.sender, arg1);
                else:
                    if arg2 / 100 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not msg.sender:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                    if not this.address:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                    if arg2 / 100 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[678 len 26],
                                    mem[730 len 6]
                    balanceOf[address(msg.sender)] -= arg2 / 100
                    if (arg2 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(this.address)] = (arg2 / 100) + balanceOf[this.address]
                    emit Transfer((arg2 / 100), msg.sender, this.address);
                    if not msg.sender:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[809 len 27]
                    if not arg1:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[807 len 29]
                    if arg2 - (arg2 / 100) > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[774 len 26],
                                    mem[826 len 6]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 100)
                    if arg2 - (arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = arg2 - (arg2 / 100) + balanceOf[arg1]
                    emit Transfer((arg2 - (arg2 / 100)), msg.sender, arg1);
            else:
                if arg2 / 40 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                if balanceOf[address(msg.sender)] <= uint255(stor2.field_1):
                    if not msg.sender:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                    if not this.address:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                    if arg2 / 40 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[678 len 26],
                                    mem[730 len 6]
                    balanceOf[address(msg.sender)] -= arg2 / 40
                    if (arg2 / 40) + balanceOf[this.address] < balanceOf[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(this.address)] = (arg2 / 40) + balanceOf[this.address]
                    emit Transfer((arg2 / 40), msg.sender, this.address);
                    if not msg.sender:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[809 len 27]
                    if not arg1:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[807 len 29]
                    if arg2 - (arg2 / 40) > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[774 len 26],
                                    mem[826 len 6]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 40)
                    if arg2 - (arg2 / 40) + balanceOf[arg1] < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = arg2 - (arg2 / 40) + balanceOf[arg1]
                    emit Transfer((arg2 - (arg2 / 40)), msg.sender, arg1);
                else:
                    if arg2 / 100 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not msg.sender:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                    if not this.address:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                    if arg2 / 100 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[806 len 26],
                                    mem[858 len 6]
                    balanceOf[address(msg.sender)] -= arg2 / 100
                    if (arg2 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(this.address)] = (arg2 / 100) + balanceOf[this.address]
                    emit Transfer((arg2 / 100), msg.sender, this.address);
                    if not msg.sender:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                    if not arg1:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                    if arg2 - (arg2 / 100) > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[902 len 26],
                                    mem[954 len 6]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 100)
                    if arg2 - (arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = arg2 - (arg2 / 100) + balanceOf[arg1]
                    emit Transfer((arg2 - (arg2 / 100)), msg.sender, arg1);
        else:
            if arg2 / 20 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if balanceOf[address(msg.sender)] <= Mask(254, 0, stor2.field_2):
                if balanceOf[address(msg.sender)] <= uint255(stor2.field_1):
                    if not msg.sender:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                    if not this.address:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                    if arg2 / 20 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[678 len 26],
                                    mem[730 len 6]
                    balanceOf[address(msg.sender)] -= arg2 / 20
                    if (arg2 / 20) + balanceOf[this.address] < balanceOf[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(this.address)] = (arg2 / 20) + balanceOf[this.address]
                    emit Transfer((arg2 / 20), msg.sender, this.address);
                    if not msg.sender:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[809 len 27]
                    if not arg1:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[807 len 29]
                    if arg2 - (arg2 / 20) > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[774 len 26],
                                    mem[826 len 6]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 20)
                    if arg2 - (arg2 / 20) + balanceOf[arg1] < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = arg2 - (arg2 / 20) + balanceOf[arg1]
                    emit Transfer((arg2 - (arg2 / 20)), msg.sender, arg1);
                else:
                    if arg2 / 100 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not msg.sender:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                    if not this.address:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                    if arg2 / 100 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[806 len 26],
                                    mem[858 len 6]
                    balanceOf[address(msg.sender)] -= arg2 / 100
                    if (arg2 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(this.address)] = (arg2 / 100) + balanceOf[this.address]
                    emit Transfer((arg2 / 100), msg.sender, this.address);
                    if not msg.sender:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                    if not arg1:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                    if arg2 - (arg2 / 100) > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[902 len 26],
                                    mem[954 len 6]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 100)
                    if arg2 - (arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = arg2 - (arg2 / 100) + balanceOf[arg1]
                    emit Transfer((arg2 - (arg2 / 100)), msg.sender, arg1);
            else:
                if arg2 / 40 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                if balanceOf[address(msg.sender)] <= uint255(stor2.field_1):
                    if not msg.sender:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                    if not this.address:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                    if arg2 / 40 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[806 len 26],
                                    mem[858 len 6]
                    balanceOf[address(msg.sender)] -= arg2 / 40
                    if (arg2 / 40) + balanceOf[this.address] < balanceOf[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(this.address)] = (arg2 / 40) + balanceOf[this.address]
                    emit Transfer((arg2 / 40), msg.sender, this.address);
                    if not msg.sender:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                    if not arg1:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                    if arg2 - (arg2 / 40) > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[902 len 26],
                                    mem[954 len 6]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 40)
                    if arg2 - (arg2 / 40) + balanceOf[arg1] < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = arg2 - (arg2 / 40) + balanceOf[arg1]
                    emit Transfer((arg2 - (arg2 / 40)), msg.sender, arg1);
                else:
                    if arg2 / 100 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not msg.sender:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[969 len 27]
                    if not this.address:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[967 len 29]
                    if arg2 / 100 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[934 len 26],
                                    mem[986 len 6]
                    balanceOf[address(msg.sender)] -= arg2 / 100
                    if (arg2 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(this.address)] = (arg2 / 100) + balanceOf[this.address]
                    emit Transfer((arg2 / 100), msg.sender, this.address);
                    if not msg.sender:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1065 len 27]
                    if not arg1:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1063 len 29]
                    if arg2 - (arg2 / 100) > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[1030 len 26],
                                    mem[1082 len 6]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 100)
                    if arg2 - (arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = arg2 - (arg2 / 100) + balanceOf[arg1]
                    emit Transfer((arg2 - (arg2 / 100)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if balanceOf[address(arg1)] >= totalSupply / 100:
        if balanceOf[address(arg1)] <= totalSupply / 100:
            if balanceOf[address(arg1)] <= Mask(254, 0, stor2.field_2):
                if balanceOf[address(arg1)] <= uint255(stor2.field_1):
                    if not arg1:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[457 len 27]
                    if not this.address:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[455 len 29]
                    if 0 > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[422 len 26],
                                    mem[474 len 6]
                    if balanceOf[this.address] < balanceOf[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(this.address)] = balanceOf[this.address]
                    emit Transfer(0, arg1, this.address);
                    if not arg1:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[553 len 27]
                    if not arg2:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[551 len 29]
                    if 0 > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[518 len 26],
                                    mem[570 len 6]
                    if balanceOf[arg2] < balanceOf[arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = balanceOf[arg2]
                    emit Transfer(0, arg1, arg2);
                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                    mem[616 len 24],
                                    mem[664 len 8]
                    if not arg1:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[744 len 28]
                    if not msg.sender:
                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[742 len 30]
                else:
                    if arg3 / 100 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg1:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[585 len 27]
                    if not this.address:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[583 len 29]
                    if arg3 / 100 > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[550 len 26],
                                    mem[602 len 6]
                    balanceOf[address(arg1)] -= arg3 / 100
                    if (arg3 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(this.address)] = (arg3 / 100) + balanceOf[this.address]
                    emit Transfer((arg3 / 100), arg1, this.address);
                    if not arg1:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[681 len 27]
                    if not arg2:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[679 len 29]
                    if arg3 - (arg3 / 100) > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[646 len 26],
                                    mem[698 len 6]
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 100)
                    if arg3 - (arg3 / 100) + balanceOf[arg2] < balanceOf[arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = arg3 - (arg3 / 100) + balanceOf[arg2]
                    emit Transfer((arg3 - (arg3 / 100)), arg1, arg2);
                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                    mem[744 len 24],
                                    mem[792 len 8]
                    if not arg1:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[872 len 28]
                    if not msg.sender:
                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[870 len 30]
            else:
                if arg3 / 40 > arg3:
                    revert with 0, 'SafeMath: subtraction overflow'
                if balanceOf[address(arg1)] <= uint255(stor2.field_1):
                    if not arg1:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[585 len 27]
                    if not this.address:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[583 len 29]
                    if arg3 / 40 > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[550 len 26],
                                    mem[602 len 6]
                    balanceOf[address(arg1)] -= arg3 / 40
                    if (arg3 / 40) + balanceOf[this.address] < balanceOf[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(this.address)] = (arg3 / 40) + balanceOf[this.address]
                    emit Transfer((arg3 / 40), arg1, this.address);
                    if not arg1:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[681 len 27]
                    if not arg2:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[679 len 29]
                    if arg3 - (arg3 / 40) > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[646 len 26],
                                    mem[698 len 6]
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 40)
                    if arg3 - (arg3 / 40) + balanceOf[arg2] < balanceOf[arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = arg3 - (arg3 / 40) + balanceOf[arg2]
                    emit Transfer((arg3 - (arg3 / 40)), arg1, arg2);
                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                    mem[744 len 24],
                                    mem[792 len 8]
                    if not arg1:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[872 len 28]
                    if not msg.sender:
                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[870 len 30]
                else:
                    if arg3 / 100 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg1:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                    if not this.address:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                    if arg3 / 100 > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[678 len 26],
                                    mem[730 len 6]
                    balanceOf[address(arg1)] -= arg3 / 100
                    if (arg3 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(this.address)] = (arg3 / 100) + balanceOf[this.address]
                    emit Transfer((arg3 / 100), arg1, this.address);
                    if not arg1:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[809 len 27]
                    if not arg2:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[807 len 29]
                    if arg3 - (arg3 / 100) > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[774 len 26],
                                    mem[826 len 6]
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 100)
                    if arg3 - (arg3 / 100) + balanceOf[arg2] < balanceOf[arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = arg3 - (arg3 / 100) + balanceOf[arg2]
                    emit Transfer((arg3 - (arg3 / 100)), arg1, arg2);
                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                    mem[872 len 24],
                                    mem[920 len 8]
                    if not arg1:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[1000 len 28]
                    if not msg.sender:
                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[998 len 30]
        else:
            if arg3 / 20 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            if balanceOf[address(arg1)] <= Mask(254, 0, stor2.field_2):
                if balanceOf[address(arg1)] <= uint255(stor2.field_1):
                    if not arg1:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[585 len 27]
                    if not this.address:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[583 len 29]
                    if arg3 / 20 > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[550 len 26],
                                    mem[602 len 6]
                    balanceOf[address(arg1)] -= arg3 / 20
                    if (arg3 / 20) + balanceOf[this.address] < balanceOf[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(this.address)] = (arg3 / 20) + balanceOf[this.address]
                    emit Transfer((arg3 / 20), arg1, this.address);
                    if not arg1:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[681 len 27]
                    if not arg2:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[679 len 29]
                    if arg3 - (arg3 / 20) > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[646 len 26],
                                    mem[698 len 6]
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 20)
                    if arg3 - (arg3 / 20) + balanceOf[arg2] < balanceOf[arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = arg3 - (arg3 / 20) + balanceOf[arg2]
                    emit Transfer((arg3 - (arg3 / 20)), arg1, arg2);
                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                    mem[744 len 24],
                                    mem[792 len 8]
                    if not arg1:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[872 len 28]
                    if not msg.sender:
                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[870 len 30]
                else:
                    if arg3 / 100 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg1:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                    if not this.address:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                    if arg3 / 100 > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[678 len 26],
                                    mem[730 len 6]
                    balanceOf[address(arg1)] -= arg3 / 100
                    if (arg3 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(this.address)] = (arg3 / 100) + balanceOf[this.address]
                    emit Transfer((arg3 / 100), arg1, this.address);
                    if not arg1:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[809 len 27]
                    if not arg2:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[807 len 29]
                    if arg3 - (arg3 / 100) > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[774 len 26],
                                    mem[826 len 6]
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 100)
                    if arg3 - (arg3 / 100) + balanceOf[arg2] < balanceOf[arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = arg3 - (arg3 / 100) + balanceOf[arg2]
                    emit Transfer((arg3 - (arg3 / 100)), arg1, arg2);
                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                    mem[872 len 24],
                                    mem[920 len 8]
                    if not arg1:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[1000 len 28]
                    if not msg.sender:
                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[998 len 30]
            else:
                if arg3 / 40 > arg3:
                    revert with 0, 'SafeMath: subtraction overflow'
                if balanceOf[address(arg1)] <= uint255(stor2.field_1):
                    if not arg1:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                    if not this.address:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                    if arg3 / 40 > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[678 len 26],
                                    mem[730 len 6]
                    balanceOf[address(arg1)] -= arg3 / 40
                    if (arg3 / 40) + balanceOf[this.address] < balanceOf[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(this.address)] = (arg3 / 40) + balanceOf[this.address]
                    emit Transfer((arg3 / 40), arg1, this.address);
                    if not arg1:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[809 len 27]
                    if not arg2:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[807 len 29]
                    if arg3 - (arg3 / 40) > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[774 len 26],
                                    mem[826 len 6]
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 40)
                    if arg3 - (arg3 / 40) + balanceOf[arg2] < balanceOf[arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = arg3 - (arg3 / 40) + balanceOf[arg2]
                    emit Transfer((arg3 - (arg3 / 40)), arg1, arg2);
                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                    mem[872 len 24],
                                    mem[920 len 8]
                    if not arg1:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[1000 len 28]
                    if not msg.sender:
                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[998 len 30]
                else:
                    if arg3 / 100 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg1:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                    if not this.address:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                    if arg3 / 100 > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[806 len 26],
                                    mem[858 len 6]
                    balanceOf[address(arg1)] -= arg3 / 100
                    if (arg3 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(this.address)] = (arg3 / 100) + balanceOf[this.address]
                    emit Transfer((arg3 / 100), arg1, this.address);
                    if not arg1:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                    if not arg2:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                    if arg3 - (arg3 / 100) > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[902 len 26],
                                    mem[954 len 6]
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 100)
                    if arg3 - (arg3 / 100) + balanceOf[arg2] < balanceOf[arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = arg3 - (arg3 / 100) + balanceOf[arg2]
                    emit Transfer((arg3 - (arg3 / 100)), arg1, arg2);
                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                    mem[1000 len 24],
                                    mem[1048 len 8]
                    if not arg1:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[1128 len 28]
                    if not msg.sender:
                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[1126 len 30]
    else:
        if arg3 / 12 > arg3:
            revert with 0, 'SafeMath: subtraction overflow'
        if balanceOf[address(arg1)] <= totalSupply / 100:
            if balanceOf[address(arg1)] <= Mask(254, 0, stor2.field_2):
                if balanceOf[address(arg1)] <= uint255(stor2.field_1):
                    if not arg1:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[585 len 27]
                    if not this.address:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[583 len 29]
                    if arg3 / 12 > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[550 len 26],
                                    mem[602 len 6]
                    balanceOf[address(arg1)] -= arg3 / 12
                    if (arg3 / 12) + balanceOf[this.address] < balanceOf[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(this.address)] = (arg3 / 12) + balanceOf[this.address]
                    emit Transfer((arg3 / 12), arg1, this.address);
                    if not arg1:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[681 len 27]
                    if not arg2:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[679 len 29]
                    if arg3 - (arg3 / 12) > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[646 len 26],
                                    mem[698 len 6]
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 12)
                    if arg3 - (arg3 / 12) + balanceOf[arg2] < balanceOf[arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = arg3 - (arg3 / 12) + balanceOf[arg2]
                    emit Transfer((arg3 - (arg3 / 12)), arg1, arg2);
                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                    mem[744 len 24],
                                    mem[792 len 8]
                    if not arg1:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[872 len 28]
                    if not msg.sender:
                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[870 len 30]
                else:
                    if arg3 / 100 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg1:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                    if not this.address:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                    if arg3 / 100 > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[678 len 26],
                                    mem[730 len 6]
                    balanceOf[address(arg1)] -= arg3 / 100
                    if (arg3 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(this.address)] = (arg3 / 100) + balanceOf[this.address]
                    emit Transfer((arg3 / 100), arg1, this.address);
                    if not arg1:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[809 len 27]
                    if not arg2:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[807 len 29]
                    if arg3 - (arg3 / 100) > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[774 len 26],
                                    mem[826 len 6]
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 100)
                    if arg3 - (arg3 / 100) + balanceOf[arg2] < balanceOf[arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = arg3 - (arg3 / 100) + balanceOf[arg2]
                    emit Transfer((arg3 - (arg3 / 100)), arg1, arg2);
                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                    mem[872 len 24],
                                    mem[920 len 8]
                    if not arg1:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[1000 len 28]
                    if not msg.sender:
                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[998 len 30]
            else:
                if arg3 / 40 > arg3:
                    revert with 0, 'SafeMath: subtraction overflow'
                if balanceOf[address(arg1)] <= uint255(stor2.field_1):
                    if not arg1:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                    if not this.address:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                    if arg3 / 40 > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[678 len 26],
                                    mem[730 len 6]
                    balanceOf[address(arg1)] -= arg3 / 40
                    if (arg3 / 40) + balanceOf[this.address] < balanceOf[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(this.address)] = (arg3 / 40) + balanceOf[this.address]
                    emit Transfer((arg3 / 40), arg1, this.address);
                    if not arg1:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[809 len 27]
                    if not arg2:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[807 len 29]
                    if arg3 - (arg3 / 40) > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[774 len 26],
                                    mem[826 len 6]
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 40)
                    if arg3 - (arg3 / 40) + balanceOf[arg2] < balanceOf[arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = arg3 - (arg3 / 40) + balanceOf[arg2]
                    emit Transfer((arg3 - (arg3 / 40)), arg1, arg2);
                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                    mem[872 len 24],
                                    mem[920 len 8]
                    if not arg1:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[1000 len 28]
                    if not msg.sender:
                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[998 len 30]
                else:
                    if arg3 / 100 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg1:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                    if not this.address:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                    if arg3 / 100 > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[806 len 26],
                                    mem[858 len 6]
                    balanceOf[address(arg1)] -= arg3 / 100
                    if (arg3 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(this.address)] = (arg3 / 100) + balanceOf[this.address]
                    emit Transfer((arg3 / 100), arg1, this.address);
                    if not arg1:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                    if not arg2:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                    if arg3 - (arg3 / 100) > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[902 len 26],
                                    mem[954 len 6]
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 100)
                    if arg3 - (arg3 / 100) + balanceOf[arg2] < balanceOf[arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = arg3 - (arg3 / 100) + balanceOf[arg2]
                    emit Transfer((arg3 - (arg3 / 100)), arg1, arg2);
                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                    mem[1000 len 24],
                                    mem[1048 len 8]
                    if not arg1:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[1128 len 28]
                    if not msg.sender:
                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[1126 len 30]
        else:
            if arg3 / 20 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            if balanceOf[address(arg1)] <= Mask(254, 0, stor2.field_2):
                if balanceOf[address(arg1)] <= uint255(stor2.field_1):
                    if not arg1:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                    if not this.address:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                    if arg3 / 20 > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[678 len 26],
                                    mem[730 len 6]
                    balanceOf[address(arg1)] -= arg3 / 20
                    if (arg3 / 20) + balanceOf[this.address] < balanceOf[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(this.address)] = (arg3 / 20) + balanceOf[this.address]
                    emit Transfer((arg3 / 20), arg1, this.address);
                    if not arg1:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[809 len 27]
                    if not arg2:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[807 len 29]
                    if arg3 - (arg3 / 20) > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[774 len 26],
                                    mem[826 len 6]
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 20)
                    if arg3 - (arg3 / 20) + balanceOf[arg2] < balanceOf[arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = arg3 - (arg3 / 20) + balanceOf[arg2]
                    emit Transfer((arg3 - (arg3 / 20)), arg1, arg2);
                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                    mem[872 len 24],
                                    mem[920 len 8]
                    if not arg1:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[1000 len 28]
                    if not msg.sender:
                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[998 len 30]
                else:
                    if arg3 / 100 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg1:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                    if not this.address:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                    if arg3 / 100 > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[806 len 26],
                                    mem[858 len 6]
                    balanceOf[address(arg1)] -= arg3 / 100
                    if (arg3 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(this.address)] = (arg3 / 100) + balanceOf[this.address]
                    emit Transfer((arg3 / 100), arg1, this.address);
                    if not arg1:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                    if not arg2:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                    if arg3 - (arg3 / 100) > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[902 len 26],
                                    mem[954 len 6]
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 100)
                    if arg3 - (arg3 / 100) + balanceOf[arg2] < balanceOf[arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = arg3 - (arg3 / 100) + balanceOf[arg2]
                    emit Transfer((arg3 - (arg3 / 100)), arg1, arg2);
                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                    mem[1000 len 24],
                                    mem[1048 len 8]
                    if not arg1:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[1128 len 28]
                    if not msg.sender:
                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[1126 len 30]
            else:
                if arg3 / 40 > arg3:
                    revert with 0, 'SafeMath: subtraction overflow'
                if balanceOf[address(arg1)] <= uint255(stor2.field_1):
                    if not arg1:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                    if not this.address:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                    if arg3 / 40 > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[806 len 26],
                                    mem[858 len 6]
                    balanceOf[address(arg1)] -= arg3 / 40
                    if (arg3 / 40) + balanceOf[this.address] < balanceOf[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(this.address)] = (arg3 / 40) + balanceOf[this.address]
                    emit Transfer((arg3 / 40), arg1, this.address);
                    if not arg1:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                    if not arg2:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                    if arg3 - (arg3 / 40) > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[902 len 26],
                                    mem[954 len 6]
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 40)
                    if arg3 - (arg3 / 40) + balanceOf[arg2] < balanceOf[arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = arg3 - (arg3 / 40) + balanceOf[arg2]
                    emit Transfer((arg3 - (arg3 / 40)), arg1, arg2);
                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                    mem[1000 len 24],
                                    mem[1048 len 8]
                    if not arg1:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[1128 len 28]
                    if not msg.sender:
                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[1126 len 30]
                else:
                    if arg3 / 100 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg1:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[969 len 27]
                    if not this.address:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[967 len 29]
                    if arg3 / 100 > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[934 len 26],
                                    mem[986 len 6]
                    balanceOf[address(arg1)] -= arg3 / 100
                    if (arg3 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(this.address)] = (arg3 / 100) + balanceOf[this.address]
                    emit Transfer((arg3 / 100), arg1, this.address);
                    if not arg1:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1065 len 27]
                    if not arg2:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1063 len 29]
                    if arg3 - (arg3 / 100) > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[1030 len 26],
                                    mem[1082 len 6]
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 100)
                    if arg3 - (arg3 / 100) + balanceOf[arg2] < balanceOf[arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = arg3 - (arg3 / 100) + balanceOf[arg2]
                    emit Transfer((arg3 - (arg3 / 100)), arg1, arg2);
                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                    mem[1128 len 24],
                                    mem[1176 len 8]
                    if not arg1:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[1256 len 28]
                    if not msg.sender:
                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[1254 len 30]
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
