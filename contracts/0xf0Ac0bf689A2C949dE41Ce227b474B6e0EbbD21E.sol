contract main {




// =====================  Runtime code  =====================


const sub_b5096856(?) = 10


address owner;
address playTokenAddress;
array of struct lP;
mapping of uint256 stor3;
address sub_880549d2Address;
address sub_298ca358Address;
address sub_14426d67Address;
uint256 sub_75d267c3;
uint256 sub_41e4e47d;
uint256 sub_42060b0a;
uint256 sub_8dfca9fd;
uint256 sub_2e4eb855;

function sub_14426d67(?) payable {
    return sub_14426d67Address
}

function sub_298ca358(?) payable {
    return sub_298ca358Address
}

function sub_2e4eb855(?) payable {
    return sub_2e4eb855
}

function sub_41e4e47d(?) payable {
    return sub_41e4e47d
}

function sub_42060b0a(?) payable {
    return sub_42060b0a
}

function sub_75d267c3(?) payable {
    return sub_75d267c3
}

function sub_880549d2(?) payable {
    return sub_880549d2Address
}

function owner() payable {
    return owner
}

function sub_8dfca9fd(?) payable {
    return sub_8dfca9fd
}

function lpCount() payable {
    return lP.length
}

function getLP(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= lP.length:
        revert with 0, 50
    return lP[arg1].field_0
}

function playToken() payable {
    return playTokenAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_ad1dc007(?) payable {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_75d267c3 = arg1
    sub_41e4e47d = arg2
    sub_42060b0a = arg3
    sub_8dfca9fd = arg4
    sub_2e4eb855 = arg5
}

function sub_0880b464(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'Invalid address'
    playTokenAddress = address(arg1)
}

function sub_0f3a81e1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'Invalid address'
    sub_14426d67Address = address(arg1)
}

function sub_6ad1477b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'Invalid address'
    sub_298ca358Address = address(arg1)
}

function sub_7b82490b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'Invalid address'
    sub_880549d2Address = address(arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function addLPToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor3[address(arg1)]:
        revert with 0, 'Already added'
    if not arg1:
        revert with 0, 'Invalid address'
    if not stor3[address(arg1)]:
        lP.length++
        lP[lP.length].field_0 = arg1
        lP[lP.length].field_160 = 0
        stor3[address(arg1)] = lP.length
}

function removeLPToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor3[address(arg1)]:
        revert with 0, 'Not exist'
    if not arg1:
        revert with 0, 'Invalid address'
    if stor3[address(arg1)]:
        if stor3[address(arg1)] < 1:
            revert with 0, 17
        if lP.length < 1:
            revert with 0, 17
        if lP.length - 1 != stor3[address(arg1)] - 1:
            if lP.length - 1 >= lP.length:
                revert with 0, 50
            if stor3[address(arg1)] - 1 >= lP.length:
                revert with 0, 50
            lP[stor3[address(arg1)]].field_0 = lP[lP.length].field_0
            stor3[stor2[stor2.length].field_0] = stor3[address(arg1)]
        if not lP.length:
            revert with 0, 49
        lP[lP.length].field_0 = 0
        lP.length--
        stor3[address(arg1)] = 0
}

function getPoint(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not playTokenAddress:
        idx = 0
        s = 0
        while idx < lP.length:
            mem[0] = 2
            mem[mem[64] + 4] = arg1
            require ext_code.size(lP[idx].field_0)
            staticcall lP[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _109 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if s > !mem[_109]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + mem[_109]
            continue 
        if s * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length and sub_8dfca9fd > -1 / s * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length:
            revert with 0, 17
        if 0 > !(s * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * sub_8dfca9fd / 10):
            revert with 0, 17
        if not sub_880549d2Address:
            if not sub_298ca358Address:
                if not sub_14426d67Address:
                    return (s * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * sub_8dfca9fd / 10)
                mem[mem[64] + 4] = arg1
                require ext_code.size(sub_14426d67Address)
                staticcall sub_14426d67Address.getDepositedAmount(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _133 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_133] and sub_2e4eb855 > -1 / mem[_133]:
                    revert with 0, 17
                if s * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * sub_8dfca9fd / 10 > !(mem[_133] * sub_2e4eb855 / 10):
                    revert with 0, 17
                mem[mem[64]] = (s * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * sub_8dfca9fd / 10) + (mem[_133] * sub_2e4eb855 / 10)
            else:
                mem[mem[64] + 4] = arg1
                require ext_code.size(sub_298ca358Address)
                staticcall sub_298ca358Address.getDepositedAmount(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _130 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _137 = mem[_130]
                if mem[_130] and sub_42060b0a > -1 / mem[_130]:
                    revert with 0, 17
                if s * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * sub_8dfca9fd / 10 > !(mem[_130] * sub_42060b0a / 10):
                    revert with 0, 17
                if not sub_14426d67Address:
                    mem[mem[64]] = (s * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * sub_8dfca9fd / 10) + (mem[_130] * sub_42060b0a / 10)
                else:
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(sub_14426d67Address)
                    staticcall sub_14426d67Address.getDepositedAmount(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _167 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_167] and sub_2e4eb855 > -1 / mem[_167]:
                        revert with 0, 17
                    if (s * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * sub_8dfca9fd / 10) + (_137 * sub_42060b0a / 10) > !(mem[_167] * sub_2e4eb855 / 10):
                        revert with 0, 17
                    mem[mem[64]] = (s * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * sub_8dfca9fd / 10) + (_137 * sub_42060b0a / 10) + (mem[_167] * sub_2e4eb855 / 10)
        else:
            mem[mem[64] + 4] = arg1
            require ext_code.size(sub_880549d2Address)
            staticcall sub_880549d2Address.getDepositedAmount(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _126 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _134 = mem[_126]
            if mem[_126] and sub_41e4e47d > -1 / mem[_126]:
                revert with 0, 17
            if s * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * sub_8dfca9fd / 10 > !(mem[_126] * sub_41e4e47d / 10):
                revert with 0, 17
            if not sub_298ca358Address:
                if not sub_14426d67Address:
                    mem[mem[64]] = (s * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * sub_8dfca9fd / 10) + (mem[_126] * sub_41e4e47d / 10)
                else:
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(sub_14426d67Address)
                    staticcall sub_14426d67Address.getDepositedAmount(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _168 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_168] and sub_2e4eb855 > -1 / mem[_168]:
                        revert with 0, 17
                    if (s * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * sub_8dfca9fd / 10) + (_134 * sub_41e4e47d / 10) > !(mem[_168] * sub_2e4eb855 / 10):
                        revert with 0, 17
                    mem[mem[64]] = (s * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * sub_8dfca9fd / 10) + (_134 * sub_41e4e47d / 10) + (mem[_168] * sub_2e4eb855 / 10)
            else:
                mem[mem[64] + 4] = arg1
                require ext_code.size(sub_298ca358Address)
                staticcall sub_298ca358Address.getDepositedAmount(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _162 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _171 = mem[_162]
                if mem[_162] and sub_42060b0a > -1 / mem[_162]:
                    revert with 0, 17
                if (s * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * sub_8dfca9fd / 10) + (_134 * sub_41e4e47d / 10) > !(mem[_162] * sub_42060b0a / 10):
                    revert with 0, 17
                if not sub_14426d67Address:
                    mem[mem[64]] = (s * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * sub_8dfca9fd / 10) + (_134 * sub_41e4e47d / 10) + (mem[_162] * sub_42060b0a / 10)
                else:
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(sub_14426d67Address)
                    staticcall sub_14426d67Address.getDepositedAmount(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _193 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_193] and sub_2e4eb855 > -1 / mem[_193]:
                        revert with 0, 17
                    if (s * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * sub_8dfca9fd / 10) + (_134 * sub_41e4e47d / 10) + (_171 * sub_42060b0a / 10) > !(mem[_193] * sub_2e4eb855 / 10):
                        revert with 0, 17
                    mem[mem[64]] = (s * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * sub_8dfca9fd / 10) + (_134 * sub_41e4e47d / 10) + (_171 * sub_42060b0a / 10) + (mem[_193] * sub_2e4eb855 / 10)
    else:
        mem[100] = arg1
        require ext_code.size(playTokenAddress)
        staticcall playTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args arg1
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        if sub_75d267c3 and ext_call.return_data[0] > -1 / sub_75d267c3:
            revert with 0, 17
        if 0 > !(sub_75d267c3 * ext_call.return_data[0] / 10):
            revert with 0, 17
        idx = 0
        s = 0
        while idx < lP.length:
            mem[0] = 2
            mem[mem[64] + 4] = arg1
            require ext_code.size(lP[idx].field_0)
            staticcall lP[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _110 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if s > !mem[_110]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + mem[_110]
            continue 
        if s * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length and sub_8dfca9fd > -1 / s * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length:
            revert with 0, 17
        if sub_75d267c3 * ext_call.return_data[0] / 10 > !(s * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * sub_8dfca9fd / 10):
            revert with 0, 17
        if not sub_880549d2Address:
            if not sub_298ca358Address:
                if not sub_14426d67Address:
                    return ((sub_75d267c3 * ext_call.return_data[0] / 10) + (s * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * sub_8dfca9fd / 10))
                mem[mem[64] + 4] = arg1
                require ext_code.size(sub_14426d67Address)
                staticcall sub_14426d67Address.getDepositedAmount(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _135 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_135] and sub_2e4eb855 > -1 / mem[_135]:
                    revert with 0, 17
                if (sub_75d267c3 * ext_call.return_data[0] / 10) + (s * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * sub_8dfca9fd / 10) > !(mem[_135] * sub_2e4eb855 / 10):
                    revert with 0, 17
                mem[mem[64]] = (sub_75d267c3 * ext_call.return_data[0] / 10) + (s * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * sub_8dfca9fd / 10) + (mem[_135] * sub_2e4eb855 / 10)
            else:
                mem[mem[64] + 4] = arg1
                require ext_code.size(sub_298ca358Address)
                staticcall sub_298ca358Address.getDepositedAmount(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _132 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _138 = mem[_132]
                if mem[_132] and sub_42060b0a > -1 / mem[_132]:
                    revert with 0, 17
                if (sub_75d267c3 * ext_call.return_data[0] / 10) + (s * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * sub_8dfca9fd / 10) > !(mem[_132] * sub_42060b0a / 10):
                    revert with 0, 17
                if not sub_14426d67Address:
                    mem[mem[64]] = (sub_75d267c3 * ext_call.return_data[0] / 10) + (s * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * sub_8dfca9fd / 10) + (mem[_132] * sub_42060b0a / 10)
                else:
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(sub_14426d67Address)
                    staticcall sub_14426d67Address.getDepositedAmount(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _169 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_169] and sub_2e4eb855 > -1 / mem[_169]:
                        revert with 0, 17
                    if (sub_75d267c3 * ext_call.return_data[0] / 10) + (s * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * sub_8dfca9fd / 10) + (_138 * sub_42060b0a / 10) > !(mem[_169] * sub_2e4eb855 / 10):
                        revert with 0, 17
                    mem[mem[64]] = (sub_75d267c3 * ext_call.return_data[0] / 10) + (s * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * sub_8dfca9fd / 10) + (_138 * sub_42060b0a / 10) + (mem[_169] * sub_2e4eb855 / 10)
        else:
            mem[mem[64] + 4] = arg1
            require ext_code.size(sub_880549d2Address)
            staticcall sub_880549d2Address.getDepositedAmount(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _128 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _136 = mem[_128]
            if mem[_128] and sub_41e4e47d > -1 / mem[_128]:
                revert with 0, 17
            if (sub_75d267c3 * ext_call.return_data[0] / 10) + (s * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * sub_8dfca9fd / 10) > !(mem[_128] * sub_41e4e47d / 10):
                revert with 0, 17
            if not sub_298ca358Address:
                if not sub_14426d67Address:
                    mem[mem[64]] = (sub_75d267c3 * ext_call.return_data[0] / 10) + (s * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * sub_8dfca9fd / 10) + (mem[_128] * sub_41e4e47d / 10)
                else:
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(sub_14426d67Address)
                    staticcall sub_14426d67Address.getDepositedAmount(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _170 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_170] and sub_2e4eb855 > -1 / mem[_170]:
                        revert with 0, 17
                    if (sub_75d267c3 * ext_call.return_data[0] / 10) + (s * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * sub_8dfca9fd / 10) + (_136 * sub_41e4e47d / 10) > !(mem[_170] * sub_2e4eb855 / 10):
                        revert with 0, 17
                    mem[mem[64]] = (sub_75d267c3 * ext_call.return_data[0] / 10) + (s * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * sub_8dfca9fd / 10) + (_136 * sub_41e4e47d / 10) + (mem[_170] * sub_2e4eb855 / 10)
            else:
                mem[mem[64] + 4] = arg1
                require ext_code.size(sub_298ca358Address)
                staticcall sub_298ca358Address.getDepositedAmount(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _166 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _172 = mem[_166]
                if mem[_166] and sub_42060b0a > -1 / mem[_166]:
                    revert with 0, 17
                if (sub_75d267c3 * ext_call.return_data[0] / 10) + (s * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * sub_8dfca9fd / 10) + (_136 * sub_41e4e47d / 10) > !(mem[_166] * sub_42060b0a / 10):
                    revert with 0, 17
                if not sub_14426d67Address:
                    mem[mem[64]] = (sub_75d267c3 * ext_call.return_data[0] / 10) + (s * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * sub_8dfca9fd / 10) + (_136 * sub_41e4e47d / 10) + (mem[_166] * sub_42060b0a / 10)
                else:
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(sub_14426d67Address)
                    staticcall sub_14426d67Address.getDepositedAmount(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _194 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_194] and sub_2e4eb855 > -1 / mem[_194]:
                        revert with 0, 17
                    if (sub_75d267c3 * ext_call.return_data[0] / 10) + (s * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * sub_8dfca9fd / 10) + (_136 * sub_41e4e47d / 10) + (_172 * sub_42060b0a / 10) > !(mem[_194] * sub_2e4eb855 / 10):
                        revert with 0, 17
                    mem[mem[64]] = (sub_75d267c3 * ext_call.return_data[0] / 10) + (s * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * lP.length * sub_8dfca9fd / 10) + (_136 * sub_41e4e47d / 10) + (_172 * sub_42060b0a / 10) + (mem[_194] * sub_2e4eb855 / 10)
    return memory
      from mem[64]
       len 32
}



}
