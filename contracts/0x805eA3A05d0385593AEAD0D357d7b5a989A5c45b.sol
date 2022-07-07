contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const sub_3c0b4bdd(?) = 50

const sub_74a6c688(?) = 50

const sub_75e5289e(?) = 25

const sub_c2173082(?) = 100

const sub_e7d33469(?) = 75

const PRECISION_FACTOR = 10000

const BURN_ADDRESS = 57005


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner; offset 8
address operatorAddress;
address sub_34820e0fAddress;
address sub_7ecc9e36Address;
uint16 stor9;
uint16 feeRate; offset 160
uint16 sub_7bf3c5dd; offset 176
uint16 sub_a9b58872; offset 192
uint16 sub_5d8ba5a1; offset 208
uint16 sub_80c4e1b1; offset 224
address treasuryAddress;
uint256 sub_cf004217;
mapping of uint8 stor11;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function sub_34820e0f(?) payable {
    return sub_34820e0fAddress
}

function operator() payable {
    return operatorAddress
}

function sub_5d8ba5a1(?) payable {
    return sub_5d8ba5a1
}

function treasury() payable {
    return treasuryAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function sub_7bf3c5dd(?) payable {
    return sub_7bf3c5dd
}

function sub_7ecc9e36(?) payable {
    return sub_7ecc9e36Address
}

function sub_80c4e1b1(?) payable {
    return sub_80c4e1b1
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function feeRate() payable {
    return feeRate
}

function sub_a9b58872(?) payable {
    return sub_a9b58872
}

function sub_cf004217(?) payable {
    return sub_cf004217
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function isExcludedWhale(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor11[address(arg1)])
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

function maxTransfer() payable {
    if not totalSupply:
        return 0
    if sub_80c4e1b1 * totalSupply / totalSupply != sub_80c4e1b1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (sub_80c4e1b1 * totalSupply / 10000)
}

function sub_417815b0(?) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x73556e617574686f72697a656421204f6e6c79206f70657261746f72206d61792061636365737320746869732066756e6374696f,
                    mem[216 len 12]
    sub_34820e0fAddress = arg1
    emit 0x5b595c06: operatorAddress, arg1
}

function sub_f321ee9a(?) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x73556e617574686f72697a656421204f6e6c79206f70657261746f72206d61792061636365737320746869732066756e6374696f,
                    mem[216 len 12]
    sub_7ecc9e36Address = arg1
    emit 0x88ab16f6: operatorAddress, arg1
}

function setOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x73556e617574686f72697a656421204f6e6c79206f70657261746f72206d61792061636365737320746869732066756e6374696f,
                    mem[216 len 12]
    emit OperatorSet(operatorAddress, arg1);
    operatorAddress = arg1
}

function setTreasury(address arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x73556e617574686f72697a656421204f6e6c79206f70657261746f72206d61792061636365737320746869732066756e6374696f,
                    mem[216 len 12]
    treasuryAddress = arg1
    emit TreasuryUpdated(operatorAddress, arg1);
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

function setWhaleExclusion(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x73556e617574686f72697a656421204f6e6c79206f70657261746f72206d61792061636365737320746869732066756e6374696f,
                    mem[216 len 12]
    if not arg1:
        revert with 0, 'account cannot be address 0'
    stor11[address(arg1)] = uint8(arg2)
    emit WhaleWhitelistSet(arg2, operatorAddress, arg1);
}

function updateTransferLimit(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x73556e617574686f72697a656421204f6e6c79206f70657261746f72206d61792061636365737320746869732066756e6374696f,
                    mem[216 len 12]
    if arg1 > 10000:
        revert with 0, 'new transfer limit is too big'
    if arg1 < 50:
        revert with 0, 'new transfer limit is too small'
    emit TransferRateLimitUpdated(stor9, arg1);
    sub_80c4e1b1 = arg1
}

function sub_df7a5af9(?) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x73556e617574686f72697a656421204f6e6c79206f70657261746f72206d61792061636365737320746869732066756e6374696f,
                    mem[216 len 12]
    if arg1 > 2500:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x646f6e6c79206d6178696d756d206f662032352520666f7220747265617375727920616c6c6f7765,
                    mem[204 len 24]
    emit 0x8359f877: stor9, arg1
    sub_5d8ba5a1 = arg1
}

function sub_8e891f9f(?) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x73556e617574686f72697a656421204f6e6c79206f70657261746f72206d61792061636365737320746869732066756e6374696f,
                    mem[216 len 12]
    if arg1 > 2500:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x656f6e6c79206d6178696d756d206f662032352520666f72204c50207374616b696e6720616c6c6f7765,
                    mem[206 len 22]
    emit 0x1521f31b: stor9, arg1
    sub_a9b58872 = arg1
}

function sub_d513d9cf(?) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x73556e617574686f72697a656421204f6e6c79206f70657261746f72206d61792061636365737320746869732066756e6374696f,
                    mem[216 len 12]
    if arg1 > 2500:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x646f6e6c79206d6178696d756d206f662032352520666f722062656c69207374616b696e6720616c6c6f7765,
                    mem[208 len 20]
    emit 0xc1810615: stor9, arg1
    sub_7bf3c5dd = arg1
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
                    0x6e45524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
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

function appliedFeeRate() payable {
    if sub_cf004217 + (2920 * 3600) < sub_cf004217:
        revert with 0, 'SafeMath: addition overflow'
    if block.number <= sub_cf004217 + (2920 * 3600):
        if feeRate < 100:
            return feeRate
    else:
        if sub_cf004217 + (5840 * 3600) < sub_cf004217:
            revert with 0, 'SafeMath: addition overflow'
        if block.number <= sub_cf004217 + (5840 * 3600):
            if feeRate < 75:
                return feeRate
        else:
            if sub_cf004217 + (8760 * 24 * 3600) < sub_cf004217:
                revert with 0, 'SafeMath: addition overflow'
            if block.number > sub_cf004217 + (8760 * 24 * 3600):
                if feeRate < 25:
                    return feeRate
            else:
                if feeRate < 50:
                    return feeRate
    if sub_cf004217 + (2920 * 3600) < sub_cf004217:
        revert with 0, 'SafeMath: addition overflow'
    if block.number <= sub_cf004217 + (2920 * 3600):
        return 100
    if sub_cf004217 + (5840 * 3600) < sub_cf004217:
        revert with 0, 'SafeMath: addition overflow'
    if block.number <= sub_cf004217 + (5840 * 3600):
        return 75
    if sub_cf004217 + (8760 * 24 * 3600) < sub_cf004217:
        revert with 0, 'SafeMath: addition overflow'
    if block.number > sub_cf004217 + (8760 * 24 * 3600):
        return 25
    return 50
}

function updateFeeRate(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x73556e617574686f72697a656421204f6e6c79206f70657261746f72206d61792061636365737320746869732066756e6374696f,
                    mem[216 len 12]
    if sub_cf004217 + (2920 * 3600) < sub_cf004217:
        revert with 0, 'SafeMath: addition overflow'
    if block.number <= sub_cf004217 + (2920 * 3600):
        if arg1 > 100:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0x656665652072617465206973206c6172676572207468616e206d617820616c6c6f7765642076616c75,
                        mem[205 len 23]
    else:
        if sub_cf004217 + (5840 * 3600) < sub_cf004217:
            revert with 0, 'SafeMath: addition overflow'
        if block.number <= sub_cf004217 + (5840 * 3600):
            if arg1 > 75:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            41,
                            0x656665652072617465206973206c6172676572207468616e206d617820616c6c6f7765642076616c75,
                            mem[205 len 23]
        else:
            if sub_cf004217 + (8760 * 24 * 3600) < sub_cf004217:
                revert with 0, 'SafeMath: addition overflow'
            if block.number > sub_cf004217 + (8760 * 24 * 3600):
                if arg1 > 25:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                41,
                                0x656665652072617465206973206c6172676572207468616e206d617820616c6c6f7765642076616c75,
                                mem[205 len 23]
            else:
                if arg1 > 50:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                41,
                                0x656665652072617465206973206c6172676572207468616e206d617820616c6c6f7765642076616c75,
                                mem[205 len 23]
    emit FeeRateUpdated(stor9, arg1);
    feeRate = arg1
}



}
