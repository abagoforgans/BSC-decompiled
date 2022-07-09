contract main {




// =====================  Runtime code  =====================


const decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
address owner;
address _devAddress;
address sub_d74a2e9dAddress;
address sub_82d99cb1Address;
uint256 sub_4a5bf273;
uint256 sub_3d30e5e0;
uint256 sub_38843d84;
uint256 sub_7598a9a5;
uint256 sub_55a7b677;
uint256 sub_b654ffa9;
uint256 sub_03b1b558;
uint256 sub_67b40e98;
address stor23;
uint8 feeStatus;
mapping of uint8 stor30;

function sub_03b1b558(?) {
    return sub_03b1b558
}

function totalSupply() {
    return totalSupply
}

function getCharityAddress() {
    return sub_82d99cb1Address
}

function sub_38843d84(?) {
    return sub_38843d84
}

function sub_3d30e5e0(?) {
    return sub_3d30e5e0
}

function sub_4a5bf273(?) {
    return sub_4a5bf273
}

function sub_55a7b677(?) {
    return sub_55a7b677
}

function sub_67b40e98(?) {
    return sub_67b40e98
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_7598a9a5(?) {
    return sub_7598a9a5
}

function sub_82d99cb1(?) {
    return sub_82d99cb1Address
}

function owner() {
    return owner
}

function feeStatus() {
    return bool(feeStatus)
}

function isBeneficiary(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor30[arg1])
}

function sub_b654ffa9(?) {
    return sub_b654ffa9
}

function getMarkAddress() {
    return sub_d74a2e9dAddress
}

function sub_d74a2e9d(?) {
    return sub_d74a2e9dAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function getDevAddress() {
    return _devAddress
}

function _dev() {
    return _devAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setDevAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _devAddress = arg1
}

function setMarkAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_d74a2e9dAddress = arg1
}

function setCharityAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_82d99cb1Address = arg1
}

function sub_7a42481a(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(feeStatus) == bool(arg1):
        revert with 0, 'Value already set to that option'
    feeStatus = uint8(bool(arg1))
}

function setTaxesBuy(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_4a5bf273 = arg1
    sub_3d30e5e0 = arg2
    sub_38843d84 = arg3
}

function setTaxesSell(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_55a7b677 = arg1
    sub_b654ffa9 = arg2
    sub_03b1b558 = arg3
}

function setBeneficiary(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 == bool(stor30[address(arg1)]):
        revert with 0, 'Value already set to that option'
    stor30[address(arg1)] = uint8(arg2)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function withdrawBNB(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) < arg2:
        revert with 0, 'Insufficient BNB balance'
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Transfer failed'
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function withdrawTokens(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg3:
        revert with 0, 'Insufficient token balance'
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with 0, 'Transfer failed'
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function name() {
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor3.length):
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
        if ceil32(stor3.length.field_1) > stor3.length.field_1:
            mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
    if ceil32(stor3.length.field_1) > stor3.length.field_1:
        mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function symbol() {
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor4.length):
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
        if ceil32(stor4.length.field_1) > stor4.length.field_1:
            mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if stor30[address(arg1)]:
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if not arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
        if balanceOf[address(arg1)] < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(arg1)] -= arg3
        if balanceOf[address(arg2)] > -arg3 - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg2)] += arg3
        emit Transfer(arg3, arg1, arg2);
    else:
        if stor30[address(arg2)]:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if balanceOf[address(arg1)] < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(arg2)] > -arg3 - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
        else:
            if arg1 == stor23:
                if not feeStatus:
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if arg1 == stor23:
                        if arg3 / 100 and sub_4a5bf273 > -1 / arg3 / 100:
                            revert with 'NH{q', 17
                        if arg3 / 100 and sub_3d30e5e0 > -1 / arg3 / 100:
                            revert with 'NH{q', 17
                        if arg3 / 100 and sub_38843d84 > -1 / arg3 / 100:
                            revert with 'NH{q', 17
                        if arg3 / 100 and sub_7598a9a5 > -1 / arg3 / 100:
                            revert with 'NH{q', 17
                        if arg3 / 100 * sub_4a5bf273 > (-1 * arg3 / 100 * sub_3d30e5e0) - 1:
                            revert with 'NH{q', 17
                        if (arg3 / 100 * sub_4a5bf273) + (arg3 / 100 * sub_3d30e5e0) > (-1 * arg3 / 100 * sub_38843d84) - 1:
                            revert with 'NH{q', 17
                        if (arg3 / 100 * sub_4a5bf273) + (arg3 / 100 * sub_3d30e5e0) + (arg3 / 100 * sub_38843d84) > (-1 * arg3 / 100 * sub_7598a9a5) - 1:
                            revert with 'NH{q', 17
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not _devAddress:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < arg3 / 100 * sub_4a5bf273:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] += -1 * arg3 / 100 * sub_4a5bf273
                        if balanceOf[stor9] > (-1 * arg3 / 100 * sub_4a5bf273) - 1:
                            revert with 'NH{q', 17
                        balanceOf[stor9] += arg3 / 100 * sub_4a5bf273
                        emit Transfer((arg3 / 100 * sub_4a5bf273), arg1, _devAddress);
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not sub_d74a2e9dAddress:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < arg3 / 100 * sub_3d30e5e0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] += -1 * arg3 / 100 * sub_3d30e5e0
                        if balanceOf[stor10] > (-1 * arg3 / 100 * sub_3d30e5e0) - 1:
                            revert with 'NH{q', 17
                        balanceOf[stor10] += arg3 / 100 * sub_3d30e5e0
                        emit Transfer((arg3 / 100 * sub_3d30e5e0), arg1, sub_d74a2e9dAddress);
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not sub_82d99cb1Address:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < arg3 / 100 * sub_38843d84:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] += -1 * arg3 / 100 * sub_38843d84
                        if balanceOf[stor11] > (-1 * arg3 / 100 * sub_38843d84) - 1:
                            revert with 'NH{q', 17
                        balanceOf[stor11] += arg3 / 100 * sub_38843d84
                        emit Transfer((arg3 / 100 * sub_38843d84), arg1, sub_82d99cb1Address);
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
                        if balanceOf[address(arg1)] < arg3 / 100 * sub_7598a9a5:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
                        balanceOf[address(arg1)] += -1 * arg3 / 100 * sub_7598a9a5
                        if totalSupply < arg3 / 100 * sub_7598a9a5:
                            revert with 'NH{q', 17
                        totalSupply += -1 * arg3 / 100 * sub_7598a9a5
                        emit Transfer((arg3 / 100 * sub_7598a9a5), arg1, 0);
                        if arg3 < (arg3 / 100 * sub_4a5bf273) + (arg3 / 100 * sub_3d30e5e0) + (arg3 / 100 * sub_38843d84) + (arg3 / 100 * sub_7598a9a5):
                            revert with 'NH{q', 17
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < arg3 - (arg3 / 100 * sub_4a5bf273) - (arg3 / 100 * sub_3d30e5e0) - (arg3 / 100 * sub_38843d84) - (arg3 / 100 * sub_7598a9a5):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 100 * sub_4a5bf273) + (arg3 / 100 * sub_3d30e5e0) + (arg3 / 100 * sub_38843d84) + (arg3 / 100 * sub_7598a9a5)
                        if balanceOf[address(arg2)] > -arg3 + (arg3 / 100 * sub_4a5bf273) + (arg3 / 100 * sub_3d30e5e0) + (arg3 / 100 * sub_38843d84) + (arg3 / 100 * sub_7598a9a5) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / 100 * sub_4a5bf273) - (arg3 / 100 * sub_3d30e5e0) - (arg3 / 100 * sub_38843d84) - (arg3 / 100 * sub_7598a9a5)
                        emit Transfer((arg3 - (arg3 / 100 * sub_4a5bf273) - (arg3 / 100 * sub_3d30e5e0) - (arg3 / 100 * sub_38843d84) - (arg3 / 100 * sub_7598a9a5)), arg1, arg2);
                    else:
                        if arg2 != stor23:
                            if arg3 < 0:
                                revert with 'NH{q', 17
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(arg1)] < arg3:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if arg3 / 100 and sub_55a7b677 > -1 / arg3 / 100:
                                revert with 'NH{q', 17
                            if arg3 / 100 and sub_b654ffa9 > -1 / arg3 / 100:
                                revert with 'NH{q', 17
                            if arg3 / 100 and sub_03b1b558 > -1 / arg3 / 100:
                                revert with 'NH{q', 17
                            if arg3 / 100 and sub_67b40e98 > -1 / arg3 / 100:
                                revert with 'NH{q', 17
                            if arg3 / 100 * sub_55a7b677 > (-1 * arg3 / 100 * sub_b654ffa9) - 1:
                                revert with 'NH{q', 17
                            if (arg3 / 100 * sub_55a7b677) + (arg3 / 100 * sub_b654ffa9) > (-1 * arg3 / 100 * sub_03b1b558) - 1:
                                revert with 'NH{q', 17
                            if (arg3 / 100 * sub_55a7b677) + (arg3 / 100 * sub_b654ffa9) + (arg3 / 100 * sub_03b1b558) > (-1 * arg3 / 100 * sub_67b40e98) - 1:
                                revert with 'NH{q', 17
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not _devAddress:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(arg1)] < arg3 / 100 * sub_55a7b677:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(arg1)] += -1 * arg3 / 100 * sub_55a7b677
                            if balanceOf[stor9] > (-1 * arg3 / 100 * sub_55a7b677) - 1:
                                revert with 'NH{q', 17
                            balanceOf[stor9] += arg3 / 100 * sub_55a7b677
                            emit Transfer((arg3 / 100 * sub_55a7b677), arg1, _devAddress);
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not sub_d74a2e9dAddress:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(arg1)] < arg3 / 100 * sub_b654ffa9:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(arg1)] += -1 * arg3 / 100 * sub_b654ffa9
                            if balanceOf[stor10] > (-1 * arg3 / 100 * sub_b654ffa9) - 1:
                                revert with 'NH{q', 17
                            balanceOf[stor10] += arg3 / 100 * sub_b654ffa9
                            emit Transfer((arg3 / 100 * sub_b654ffa9), arg1, sub_d74a2e9dAddress);
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not sub_82d99cb1Address:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(arg1)] < arg3 / 100 * sub_03b1b558:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(arg1)] += -1 * arg3 / 100 * sub_03b1b558
                            if balanceOf[stor11] > (-1 * arg3 / 100 * sub_03b1b558) - 1:
                                revert with 'NH{q', 17
                            balanceOf[stor11] += arg3 / 100 * sub_03b1b558
                            emit Transfer((arg3 / 100 * sub_03b1b558), arg1, sub_82d99cb1Address);
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
                            if balanceOf[address(arg1)] < arg3 / 100 * sub_67b40e98:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
                            balanceOf[address(arg1)] += -1 * arg3 / 100 * sub_67b40e98
                            if totalSupply < arg3 / 100 * sub_67b40e98:
                                revert with 'NH{q', 17
                            totalSupply += -1 * arg3 / 100 * sub_67b40e98
                            emit Transfer((arg3 / 100 * sub_67b40e98), arg1, 0);
                            if arg3 < (arg3 / 100 * sub_55a7b677) + (arg3 / 100 * sub_b654ffa9) + (arg3 / 100 * sub_03b1b558) + (arg3 / 100 * sub_67b40e98):
                                revert with 'NH{q', 17
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(arg1)] < arg3 - (arg3 / 100 * sub_55a7b677) - (arg3 / 100 * sub_b654ffa9) - (arg3 / 100 * sub_03b1b558) - (arg3 / 100 * sub_67b40e98):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 100 * sub_55a7b677) + (arg3 / 100 * sub_b654ffa9) + (arg3 / 100 * sub_03b1b558) + (arg3 / 100 * sub_67b40e98)
                            if balanceOf[address(arg2)] > -arg3 + (arg3 / 100 * sub_55a7b677) + (arg3 / 100 * sub_b654ffa9) + (arg3 / 100 * sub_03b1b558) + (arg3 / 100 * sub_67b40e98) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / 100 * sub_55a7b677) - (arg3 / 100 * sub_b654ffa9) - (arg3 / 100 * sub_03b1b558) - (arg3 / 100 * sub_67b40e98)
                            emit Transfer((arg3 - (arg3 / 100 * sub_55a7b677) - (arg3 / 100 * sub_b654ffa9) - (arg3 / 100 * sub_03b1b558) - (arg3 / 100 * sub_67b40e98)), arg1, arg2);
            else:
                if arg2 != stor23:
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if not feeStatus:
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < arg3:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if arg1 == stor23:
                            if arg3 / 100 and sub_4a5bf273 > -1 / arg3 / 100:
                                revert with 'NH{q', 17
                            if arg3 / 100 and sub_3d30e5e0 > -1 / arg3 / 100:
                                revert with 'NH{q', 17
                            if arg3 / 100 and sub_38843d84 > -1 / arg3 / 100:
                                revert with 'NH{q', 17
                            if arg3 / 100 and sub_7598a9a5 > -1 / arg3 / 100:
                                revert with 'NH{q', 17
                            if arg3 / 100 * sub_4a5bf273 > (-1 * arg3 / 100 * sub_3d30e5e0) - 1:
                                revert with 'NH{q', 17
                            if (arg3 / 100 * sub_4a5bf273) + (arg3 / 100 * sub_3d30e5e0) > (-1 * arg3 / 100 * sub_38843d84) - 1:
                                revert with 'NH{q', 17
                            if (arg3 / 100 * sub_4a5bf273) + (arg3 / 100 * sub_3d30e5e0) + (arg3 / 100 * sub_38843d84) > (-1 * arg3 / 100 * sub_7598a9a5) - 1:
                                revert with 'NH{q', 17
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not _devAddress:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(arg1)] < arg3 / 100 * sub_4a5bf273:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(arg1)] += -1 * arg3 / 100 * sub_4a5bf273
                            if balanceOf[stor9] > (-1 * arg3 / 100 * sub_4a5bf273) - 1:
                                revert with 'NH{q', 17
                            balanceOf[stor9] += arg3 / 100 * sub_4a5bf273
                            emit Transfer((arg3 / 100 * sub_4a5bf273), arg1, _devAddress);
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not sub_d74a2e9dAddress:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(arg1)] < arg3 / 100 * sub_3d30e5e0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(arg1)] += -1 * arg3 / 100 * sub_3d30e5e0
                            if balanceOf[stor10] > (-1 * arg3 / 100 * sub_3d30e5e0) - 1:
                                revert with 'NH{q', 17
                            balanceOf[stor10] += arg3 / 100 * sub_3d30e5e0
                            emit Transfer((arg3 / 100 * sub_3d30e5e0), arg1, sub_d74a2e9dAddress);
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not sub_82d99cb1Address:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(arg1)] < arg3 / 100 * sub_38843d84:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(arg1)] += -1 * arg3 / 100 * sub_38843d84
                            if balanceOf[stor11] > (-1 * arg3 / 100 * sub_38843d84) - 1:
                                revert with 'NH{q', 17
                            balanceOf[stor11] += arg3 / 100 * sub_38843d84
                            emit Transfer((arg3 / 100 * sub_38843d84), arg1, sub_82d99cb1Address);
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
                            if balanceOf[address(arg1)] < arg3 / 100 * sub_7598a9a5:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
                            balanceOf[address(arg1)] += -1 * arg3 / 100 * sub_7598a9a5
                            if totalSupply < arg3 / 100 * sub_7598a9a5:
                                revert with 'NH{q', 17
                            totalSupply += -1 * arg3 / 100 * sub_7598a9a5
                            emit Transfer((arg3 / 100 * sub_7598a9a5), arg1, 0);
                            if arg3 < (arg3 / 100 * sub_4a5bf273) + (arg3 / 100 * sub_3d30e5e0) + (arg3 / 100 * sub_38843d84) + (arg3 / 100 * sub_7598a9a5):
                                revert with 'NH{q', 17
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(arg1)] < arg3 - (arg3 / 100 * sub_4a5bf273) - (arg3 / 100 * sub_3d30e5e0) - (arg3 / 100 * sub_38843d84) - (arg3 / 100 * sub_7598a9a5):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 100 * sub_4a5bf273) + (arg3 / 100 * sub_3d30e5e0) + (arg3 / 100 * sub_38843d84) + (arg3 / 100 * sub_7598a9a5)
                            if balanceOf[address(arg2)] > -arg3 + (arg3 / 100 * sub_4a5bf273) + (arg3 / 100 * sub_3d30e5e0) + (arg3 / 100 * sub_38843d84) + (arg3 / 100 * sub_7598a9a5) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / 100 * sub_4a5bf273) - (arg3 / 100 * sub_3d30e5e0) - (arg3 / 100 * sub_38843d84) - (arg3 / 100 * sub_7598a9a5)
                            emit Transfer((arg3 - (arg3 / 100 * sub_4a5bf273) - (arg3 / 100 * sub_3d30e5e0) - (arg3 / 100 * sub_38843d84) - (arg3 / 100 * sub_7598a9a5)), arg1, arg2);
                        else:
                            if arg2 != stor23:
                                if arg3 < 0:
                                    revert with 'NH{q', 17
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if arg3 / 100 and sub_55a7b677 > -1 / arg3 / 100:
                                    revert with 'NH{q', 17
                                if arg3 / 100 and sub_b654ffa9 > -1 / arg3 / 100:
                                    revert with 'NH{q', 17
                                if arg3 / 100 and sub_03b1b558 > -1 / arg3 / 100:
                                    revert with 'NH{q', 17
                                if arg3 / 100 and sub_67b40e98 > -1 / arg3 / 100:
                                    revert with 'NH{q', 17
                                if arg3 / 100 * sub_55a7b677 > (-1 * arg3 / 100 * sub_b654ffa9) - 1:
                                    revert with 'NH{q', 17
                                if (arg3 / 100 * sub_55a7b677) + (arg3 / 100 * sub_b654ffa9) > (-1 * arg3 / 100 * sub_03b1b558) - 1:
                                    revert with 'NH{q', 17
                                if (arg3 / 100 * sub_55a7b677) + (arg3 / 100 * sub_b654ffa9) + (arg3 / 100 * sub_03b1b558) > (-1 * arg3 / 100 * sub_67b40e98) - 1:
                                    revert with 'NH{q', 17
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not _devAddress:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(arg1)] < arg3 / 100 * sub_55a7b677:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)] += -1 * arg3 / 100 * sub_55a7b677
                                if balanceOf[stor9] > (-1 * arg3 / 100 * sub_55a7b677) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[stor9] += arg3 / 100 * sub_55a7b677
                                emit Transfer((arg3 / 100 * sub_55a7b677), arg1, _devAddress);
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not sub_d74a2e9dAddress:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(arg1)] < arg3 / 100 * sub_b654ffa9:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)] += -1 * arg3 / 100 * sub_b654ffa9
                                if balanceOf[stor10] > (-1 * arg3 / 100 * sub_b654ffa9) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[stor10] += arg3 / 100 * sub_b654ffa9
                                emit Transfer((arg3 / 100 * sub_b654ffa9), arg1, sub_d74a2e9dAddress);
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not sub_82d99cb1Address:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(arg1)] < arg3 / 100 * sub_03b1b558:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)] += -1 * arg3 / 100 * sub_03b1b558
                                if balanceOf[stor11] > (-1 * arg3 / 100 * sub_03b1b558) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[stor11] += arg3 / 100 * sub_03b1b558
                                emit Transfer((arg3 / 100 * sub_03b1b558), arg1, sub_82d99cb1Address);
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
                                if balanceOf[address(arg1)] < arg3 / 100 * sub_67b40e98:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
                                balanceOf[address(arg1)] += -1 * arg3 / 100 * sub_67b40e98
                                if totalSupply < arg3 / 100 * sub_67b40e98:
                                    revert with 'NH{q', 17
                                totalSupply += -1 * arg3 / 100 * sub_67b40e98
                                emit Transfer((arg3 / 100 * sub_67b40e98), arg1, 0);
                                if arg3 < (arg3 / 100 * sub_55a7b677) + (arg3 / 100 * sub_b654ffa9) + (arg3 / 100 * sub_03b1b558) + (arg3 / 100 * sub_67b40e98):
                                    revert with 'NH{q', 17
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(arg1)] < arg3 - (arg3 / 100 * sub_55a7b677) - (arg3 / 100 * sub_b654ffa9) - (arg3 / 100 * sub_03b1b558) - (arg3 / 100 * sub_67b40e98):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 100 * sub_55a7b677) + (arg3 / 100 * sub_b654ffa9) + (arg3 / 100 * sub_03b1b558) + (arg3 / 100 * sub_67b40e98)
                                if balanceOf[address(arg2)] > -arg3 + (arg3 / 100 * sub_55a7b677) + (arg3 / 100 * sub_b654ffa9) + (arg3 / 100 * sub_03b1b558) + (arg3 / 100 * sub_67b40e98) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / 100 * sub_55a7b677) - (arg3 / 100 * sub_b654ffa9) - (arg3 / 100 * sub_03b1b558) - (arg3 / 100 * sub_67b40e98)
                                emit Transfer((arg3 - (arg3 / 100 * sub_55a7b677) - (arg3 / 100 * sub_b654ffa9) - (arg3 / 100 * sub_03b1b558) - (arg3 / 100 * sub_67b40e98)), arg1, arg2);
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor30[address(msg.sender)]:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[address(arg1)] > -arg2 - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if stor30[address(arg1)]:
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[address(arg1)] > -arg2 - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if msg.sender == stor23:
                if not feeStatus:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if msg.sender == stor23:
                        if arg2 / 100 and sub_4a5bf273 > -1 / arg2 / 100:
                            revert with 'NH{q', 17
                        if arg2 / 100 and sub_3d30e5e0 > -1 / arg2 / 100:
                            revert with 'NH{q', 17
                        if arg2 / 100 and sub_38843d84 > -1 / arg2 / 100:
                            revert with 'NH{q', 17
                        if arg2 / 100 and sub_7598a9a5 > -1 / arg2 / 100:
                            revert with 'NH{q', 17
                        if arg2 / 100 * sub_4a5bf273 > (-1 * arg2 / 100 * sub_3d30e5e0) - 1:
                            revert with 'NH{q', 17
                        if (arg2 / 100 * sub_4a5bf273) + (arg2 / 100 * sub_3d30e5e0) > (-1 * arg2 / 100 * sub_38843d84) - 1:
                            revert with 'NH{q', 17
                        if (arg2 / 100 * sub_4a5bf273) + (arg2 / 100 * sub_3d30e5e0) + (arg2 / 100 * sub_38843d84) > (-1 * arg2 / 100 * sub_7598a9a5) - 1:
                            revert with 'NH{q', 17
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not _devAddress:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < arg2 / 100 * sub_4a5bf273:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] += -1 * arg2 / 100 * sub_4a5bf273
                        if balanceOf[stor9] > (-1 * arg2 / 100 * sub_4a5bf273) - 1:
                            revert with 'NH{q', 17
                        balanceOf[stor9] += arg2 / 100 * sub_4a5bf273
                        emit Transfer((arg2 / 100 * sub_4a5bf273), msg.sender, _devAddress);
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not sub_d74a2e9dAddress:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < arg2 / 100 * sub_3d30e5e0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] += -1 * arg2 / 100 * sub_3d30e5e0
                        if balanceOf[stor10] > (-1 * arg2 / 100 * sub_3d30e5e0) - 1:
                            revert with 'NH{q', 17
                        balanceOf[stor10] += arg2 / 100 * sub_3d30e5e0
                        emit Transfer((arg2 / 100 * sub_3d30e5e0), msg.sender, sub_d74a2e9dAddress);
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not sub_82d99cb1Address:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < arg2 / 100 * sub_38843d84:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] += -1 * arg2 / 100 * sub_38843d84
                        if balanceOf[stor11] > (-1 * arg2 / 100 * sub_38843d84) - 1:
                            revert with 'NH{q', 17
                        balanceOf[stor11] += arg2 / 100 * sub_38843d84
                        emit Transfer((arg2 / 100 * sub_38843d84), msg.sender, sub_82d99cb1Address);
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
                        if balanceOf[address(msg.sender)] < arg2 / 100 * sub_7598a9a5:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
                        balanceOf[address(msg.sender)] += -1 * arg2 / 100 * sub_7598a9a5
                        if totalSupply < arg2 / 100 * sub_7598a9a5:
                            revert with 'NH{q', 17
                        totalSupply += -1 * arg2 / 100 * sub_7598a9a5
                        emit Transfer((arg2 / 100 * sub_7598a9a5), msg.sender, 0);
                        if arg2 < (arg2 / 100 * sub_4a5bf273) + (arg2 / 100 * sub_3d30e5e0) + (arg2 / 100 * sub_38843d84) + (arg2 / 100 * sub_7598a9a5):
                            revert with 'NH{q', 17
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < arg2 - (arg2 / 100 * sub_4a5bf273) - (arg2 / 100 * sub_3d30e5e0) - (arg2 / 100 * sub_38843d84) - (arg2 / 100 * sub_7598a9a5):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 100 * sub_4a5bf273) + (arg2 / 100 * sub_3d30e5e0) + (arg2 / 100 * sub_38843d84) + (arg2 / 100 * sub_7598a9a5)
                        if balanceOf[address(arg1)] > -arg2 + (arg2 / 100 * sub_4a5bf273) + (arg2 / 100 * sub_3d30e5e0) + (arg2 / 100 * sub_38843d84) + (arg2 / 100 * sub_7598a9a5) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 100 * sub_4a5bf273) - (arg2 / 100 * sub_3d30e5e0) - (arg2 / 100 * sub_38843d84) - (arg2 / 100 * sub_7598a9a5)
                        emit Transfer((arg2 - (arg2 / 100 * sub_4a5bf273) - (arg2 / 100 * sub_3d30e5e0) - (arg2 / 100 * sub_38843d84) - (arg2 / 100 * sub_7598a9a5)), msg.sender, arg1);
                    else:
                        if arg1 != stor23:
                            if arg2 < 0:
                                revert with 'NH{q', 17
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if arg2 / 100 and sub_55a7b677 > -1 / arg2 / 100:
                                revert with 'NH{q', 17
                            if arg2 / 100 and sub_b654ffa9 > -1 / arg2 / 100:
                                revert with 'NH{q', 17
                            if arg2 / 100 and sub_03b1b558 > -1 / arg2 / 100:
                                revert with 'NH{q', 17
                            if arg2 / 100 and sub_67b40e98 > -1 / arg2 / 100:
                                revert with 'NH{q', 17
                            if arg2 / 100 * sub_55a7b677 > (-1 * arg2 / 100 * sub_b654ffa9) - 1:
                                revert with 'NH{q', 17
                            if (arg2 / 100 * sub_55a7b677) + (arg2 / 100 * sub_b654ffa9) > (-1 * arg2 / 100 * sub_03b1b558) - 1:
                                revert with 'NH{q', 17
                            if (arg2 / 100 * sub_55a7b677) + (arg2 / 100 * sub_b654ffa9) + (arg2 / 100 * sub_03b1b558) > (-1 * arg2 / 100 * sub_67b40e98) - 1:
                                revert with 'NH{q', 17
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not _devAddress:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2 / 100 * sub_55a7b677:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] += -1 * arg2 / 100 * sub_55a7b677
                            if balanceOf[stor9] > (-1 * arg2 / 100 * sub_55a7b677) - 1:
                                revert with 'NH{q', 17
                            balanceOf[stor9] += arg2 / 100 * sub_55a7b677
                            emit Transfer((arg2 / 100 * sub_55a7b677), msg.sender, _devAddress);
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not sub_d74a2e9dAddress:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2 / 100 * sub_b654ffa9:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] += -1 * arg2 / 100 * sub_b654ffa9
                            if balanceOf[stor10] > (-1 * arg2 / 100 * sub_b654ffa9) - 1:
                                revert with 'NH{q', 17
                            balanceOf[stor10] += arg2 / 100 * sub_b654ffa9
                            emit Transfer((arg2 / 100 * sub_b654ffa9), msg.sender, sub_d74a2e9dAddress);
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not sub_82d99cb1Address:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2 / 100 * sub_03b1b558:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] += -1 * arg2 / 100 * sub_03b1b558
                            if balanceOf[stor11] > (-1 * arg2 / 100 * sub_03b1b558) - 1:
                                revert with 'NH{q', 17
                            balanceOf[stor11] += arg2 / 100 * sub_03b1b558
                            emit Transfer((arg2 / 100 * sub_03b1b558), msg.sender, sub_82d99cb1Address);
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
                            if balanceOf[address(msg.sender)] < arg2 / 100 * sub_67b40e98:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
                            balanceOf[address(msg.sender)] += -1 * arg2 / 100 * sub_67b40e98
                            if totalSupply < arg2 / 100 * sub_67b40e98:
                                revert with 'NH{q', 17
                            totalSupply += -1 * arg2 / 100 * sub_67b40e98
                            emit Transfer((arg2 / 100 * sub_67b40e98), msg.sender, 0);
                            if arg2 < (arg2 / 100 * sub_55a7b677) + (arg2 / 100 * sub_b654ffa9) + (arg2 / 100 * sub_03b1b558) + (arg2 / 100 * sub_67b40e98):
                                revert with 'NH{q', 17
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2 - (arg2 / 100 * sub_55a7b677) - (arg2 / 100 * sub_b654ffa9) - (arg2 / 100 * sub_03b1b558) - (arg2 / 100 * sub_67b40e98):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 100 * sub_55a7b677) + (arg2 / 100 * sub_b654ffa9) + (arg2 / 100 * sub_03b1b558) + (arg2 / 100 * sub_67b40e98)
                            if balanceOf[address(arg1)] > -arg2 + (arg2 / 100 * sub_55a7b677) + (arg2 / 100 * sub_b654ffa9) + (arg2 / 100 * sub_03b1b558) + (arg2 / 100 * sub_67b40e98) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 100 * sub_55a7b677) - (arg2 / 100 * sub_b654ffa9) - (arg2 / 100 * sub_03b1b558) - (arg2 / 100 * sub_67b40e98)
                            emit Transfer((arg2 - (arg2 / 100 * sub_55a7b677) - (arg2 / 100 * sub_b654ffa9) - (arg2 / 100 * sub_03b1b558) - (arg2 / 100 * sub_67b40e98)), msg.sender, arg1);
            else:
                if arg1 != stor23:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if not feeStatus:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if msg.sender == stor23:
                            if arg2 / 100 and sub_4a5bf273 > -1 / arg2 / 100:
                                revert with 'NH{q', 17
                            if arg2 / 100 and sub_3d30e5e0 > -1 / arg2 / 100:
                                revert with 'NH{q', 17
                            if arg2 / 100 and sub_38843d84 > -1 / arg2 / 100:
                                revert with 'NH{q', 17
                            if arg2 / 100 and sub_7598a9a5 > -1 / arg2 / 100:
                                revert with 'NH{q', 17
                            if arg2 / 100 * sub_4a5bf273 > (-1 * arg2 / 100 * sub_3d30e5e0) - 1:
                                revert with 'NH{q', 17
                            if (arg2 / 100 * sub_4a5bf273) + (arg2 / 100 * sub_3d30e5e0) > (-1 * arg2 / 100 * sub_38843d84) - 1:
                                revert with 'NH{q', 17
                            if (arg2 / 100 * sub_4a5bf273) + (arg2 / 100 * sub_3d30e5e0) + (arg2 / 100 * sub_38843d84) > (-1 * arg2 / 100 * sub_7598a9a5) - 1:
                                revert with 'NH{q', 17
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not _devAddress:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2 / 100 * sub_4a5bf273:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] += -1 * arg2 / 100 * sub_4a5bf273
                            if balanceOf[stor9] > (-1 * arg2 / 100 * sub_4a5bf273) - 1:
                                revert with 'NH{q', 17
                            balanceOf[stor9] += arg2 / 100 * sub_4a5bf273
                            emit Transfer((arg2 / 100 * sub_4a5bf273), msg.sender, _devAddress);
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not sub_d74a2e9dAddress:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2 / 100 * sub_3d30e5e0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] += -1 * arg2 / 100 * sub_3d30e5e0
                            if balanceOf[stor10] > (-1 * arg2 / 100 * sub_3d30e5e0) - 1:
                                revert with 'NH{q', 17
                            balanceOf[stor10] += arg2 / 100 * sub_3d30e5e0
                            emit Transfer((arg2 / 100 * sub_3d30e5e0), msg.sender, sub_d74a2e9dAddress);
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not sub_82d99cb1Address:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2 / 100 * sub_38843d84:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] += -1 * arg2 / 100 * sub_38843d84
                            if balanceOf[stor11] > (-1 * arg2 / 100 * sub_38843d84) - 1:
                                revert with 'NH{q', 17
                            balanceOf[stor11] += arg2 / 100 * sub_38843d84
                            emit Transfer((arg2 / 100 * sub_38843d84), msg.sender, sub_82d99cb1Address);
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
                            if balanceOf[address(msg.sender)] < arg2 / 100 * sub_7598a9a5:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
                            balanceOf[address(msg.sender)] += -1 * arg2 / 100 * sub_7598a9a5
                            if totalSupply < arg2 / 100 * sub_7598a9a5:
                                revert with 'NH{q', 17
                            totalSupply += -1 * arg2 / 100 * sub_7598a9a5
                            emit Transfer((arg2 / 100 * sub_7598a9a5), msg.sender, 0);
                            if arg2 < (arg2 / 100 * sub_4a5bf273) + (arg2 / 100 * sub_3d30e5e0) + (arg2 / 100 * sub_38843d84) + (arg2 / 100 * sub_7598a9a5):
                                revert with 'NH{q', 17
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2 - (arg2 / 100 * sub_4a5bf273) - (arg2 / 100 * sub_3d30e5e0) - (arg2 / 100 * sub_38843d84) - (arg2 / 100 * sub_7598a9a5):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 100 * sub_4a5bf273) + (arg2 / 100 * sub_3d30e5e0) + (arg2 / 100 * sub_38843d84) + (arg2 / 100 * sub_7598a9a5)
                            if balanceOf[address(arg1)] > -arg2 + (arg2 / 100 * sub_4a5bf273) + (arg2 / 100 * sub_3d30e5e0) + (arg2 / 100 * sub_38843d84) + (arg2 / 100 * sub_7598a9a5) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 100 * sub_4a5bf273) - (arg2 / 100 * sub_3d30e5e0) - (arg2 / 100 * sub_38843d84) - (arg2 / 100 * sub_7598a9a5)
                            emit Transfer((arg2 - (arg2 / 100 * sub_4a5bf273) - (arg2 / 100 * sub_3d30e5e0) - (arg2 / 100 * sub_38843d84) - (arg2 / 100 * sub_7598a9a5)), msg.sender, arg1);
                        else:
                            if arg1 != stor23:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if arg2 / 100 and sub_55a7b677 > -1 / arg2 / 100:
                                    revert with 'NH{q', 17
                                if arg2 / 100 and sub_b654ffa9 > -1 / arg2 / 100:
                                    revert with 'NH{q', 17
                                if arg2 / 100 and sub_03b1b558 > -1 / arg2 / 100:
                                    revert with 'NH{q', 17
                                if arg2 / 100 and sub_67b40e98 > -1 / arg2 / 100:
                                    revert with 'NH{q', 17
                                if arg2 / 100 * sub_55a7b677 > (-1 * arg2 / 100 * sub_b654ffa9) - 1:
                                    revert with 'NH{q', 17
                                if (arg2 / 100 * sub_55a7b677) + (arg2 / 100 * sub_b654ffa9) > (-1 * arg2 / 100 * sub_03b1b558) - 1:
                                    revert with 'NH{q', 17
                                if (arg2 / 100 * sub_55a7b677) + (arg2 / 100 * sub_b654ffa9) + (arg2 / 100 * sub_03b1b558) > (-1 * arg2 / 100 * sub_67b40e98) - 1:
                                    revert with 'NH{q', 17
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not _devAddress:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2 / 100 * sub_55a7b677:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] += -1 * arg2 / 100 * sub_55a7b677
                                if balanceOf[stor9] > (-1 * arg2 / 100 * sub_55a7b677) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[stor9] += arg2 / 100 * sub_55a7b677
                                emit Transfer((arg2 / 100 * sub_55a7b677), msg.sender, _devAddress);
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not sub_d74a2e9dAddress:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2 / 100 * sub_b654ffa9:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] += -1 * arg2 / 100 * sub_b654ffa9
                                if balanceOf[stor10] > (-1 * arg2 / 100 * sub_b654ffa9) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[stor10] += arg2 / 100 * sub_b654ffa9
                                emit Transfer((arg2 / 100 * sub_b654ffa9), msg.sender, sub_d74a2e9dAddress);
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not sub_82d99cb1Address:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2 / 100 * sub_03b1b558:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] += -1 * arg2 / 100 * sub_03b1b558
                                if balanceOf[stor11] > (-1 * arg2 / 100 * sub_03b1b558) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[stor11] += arg2 / 100 * sub_03b1b558
                                emit Transfer((arg2 / 100 * sub_03b1b558), msg.sender, sub_82d99cb1Address);
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
                                if balanceOf[address(msg.sender)] < arg2 / 100 * sub_67b40e98:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
                                balanceOf[address(msg.sender)] += -1 * arg2 / 100 * sub_67b40e98
                                if totalSupply < arg2 / 100 * sub_67b40e98:
                                    revert with 'NH{q', 17
                                totalSupply += -1 * arg2 / 100 * sub_67b40e98
                                emit Transfer((arg2 / 100 * sub_67b40e98), msg.sender, 0);
                                if arg2 < (arg2 / 100 * sub_55a7b677) + (arg2 / 100 * sub_b654ffa9) + (arg2 / 100 * sub_03b1b558) + (arg2 / 100 * sub_67b40e98):
                                    revert with 'NH{q', 17
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2 - (arg2 / 100 * sub_55a7b677) - (arg2 / 100 * sub_b654ffa9) - (arg2 / 100 * sub_03b1b558) - (arg2 / 100 * sub_67b40e98):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 100 * sub_55a7b677) + (arg2 / 100 * sub_b654ffa9) + (arg2 / 100 * sub_03b1b558) + (arg2 / 100 * sub_67b40e98)
                                if balanceOf[address(arg1)] > -arg2 + (arg2 / 100 * sub_55a7b677) + (arg2 / 100 * sub_b654ffa9) + (arg2 / 100 * sub_03b1b558) + (arg2 / 100 * sub_67b40e98) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 100 * sub_55a7b677) - (arg2 / 100 * sub_b654ffa9) - (arg2 / 100 * sub_03b1b558) - (arg2 / 100 * sub_67b40e98)
                                emit Transfer((arg2 - (arg2 / 100 * sub_55a7b677) - (arg2 / 100 * sub_b654ffa9) - (arg2 / 100 * sub_03b1b558) - (arg2 / 100 * sub_67b40e98)), msg.sender, arg1);
    return 1
}



}
