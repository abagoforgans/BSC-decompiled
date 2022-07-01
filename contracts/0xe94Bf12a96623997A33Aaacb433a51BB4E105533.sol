contract main {




// =====================  Runtime code  =====================


array of struct sub_137b629e;
mapping of uint8 stor1;
mapping of uint256 sub_d104e79f;
uint256 totalStakeAmount;
uint256 sub_1bbfc156;
uint256 sub_8523b7db;
address sub_eae8fb12Address;
address owner;
uint256 sub_c7eba317;
uint256 sub_38b03a83;
uint256 sub_4bfcfa92;

function sub_137b629e(?) payable {
    return sub_137b629e[msg.sender].field_0
}

function sub_1bbfc156(?) payable {
    return sub_1bbfc156
}

function sub_38b03a83(?) payable {
    return sub_38b03a83
}

function sub_4bfcfa92(?) payable {
    return sub_4bfcfa92
}

function sub_8523b7db(?) payable {
    return sub_8523b7db
}

function owner() payable {
    return owner
}

function totalStakeAmount() payable {
    return totalStakeAmount
}

function sub_aeb07fde(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor1[arg1])
}

function sub_c7eba317(?) payable {
    return sub_c7eba317
}

function sub_d104e79f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_d104e79f[arg1]
}

function sub_eae8fb12(?) payable {
    return sub_eae8fb12Address
}

function _fallback() payable {
    revert
}

function sub_1b06a8a7(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only owner access'
    sub_c7eba317 = arg1
}

function sub_589dc950(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only owner access'
    sub_4bfcfa92 = arg1
}

function sub_f22bc5ce(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only owner access'
    sub_38b03a83 = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Only owner access'
    owner = arg1
}

function changeAgvAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Only owner access'
    sub_eae8fb12Address = arg1
}

function updateBlackList(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Only owner access'
    stor1[address(arg1)] = uint8(arg2)
}

function sub_01977456(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < sub_137b629e[arg1].field_0
    return sub_137b629e[arg1][arg2].field_0, sub_137b629e[arg1][arg2].field_256, sub_137b629e[arg1][arg2].field_512
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only owner access'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Only owner access'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_c33cc3cd(?) payable {
    require calldata.size - 4 >= 32
    if stor1[msg.sender]:
        revert with 0, 'Your Address is blocked'
    require ext_code.size(sub_eae8fb12Address)
    call sub_eae8fb12Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    sub_137b629e[msg.sender].field_0++
    sub_137b629e[msg.sender][sub_137b629e[msg.sender].field_0].field_0 = block.timestamp
    sub_137b629e[msg.sender][sub_137b629e[msg.sender].field_0].field_256 = arg1
    sub_137b629e[msg.sender][sub_137b629e[msg.sender].field_0].field_512 = 0
    if sub_d104e79f[msg.sender] > !arg1:
        revert with 0, 17
    sub_d104e79f[msg.sender] += arg1
    if totalStakeAmount > !arg1:
        revert with 0, 17
    totalStakeAmount += arg1
    emit Staking(msg.sender, arg1);
}

function sub_bb1efd21(?) payable {
    require calldata.size - 4 >= 32
    if stor1[msg.sender]:
        revert with 0, 'Your Address is blocked'
    if arg1 >= sub_137b629e[msg.sender].field_0:
        revert with 0, 50
    if arg1 >= sub_137b629e[address(msg.sender)].field_0:
        revert with 0, 50
    if 2160 * 24 * 3600 > !sub_137b629e[address(msg.sender)][arg1].field_0:
        revert with 0, 17
    if block.timestamp < sub_137b629e[address(msg.sender)][arg1].field_0 + (2160 * 24 * 3600):
        if block.timestamp < sub_137b629e[address(msg.sender)][arg1].field_0:
            revert with 0, 17
        if sub_137b629e[msg.sender][arg1].field_256 and sub_c7eba317 > -1 / sub_137b629e[msg.sender][arg1].field_256:
            revert with 0, 17
        if block.timestamp - sub_137b629e[address(msg.sender)][arg1].field_0 > 8760 * 24 * 3600:
            return (sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100)
        if block.timestamp - sub_137b629e[address(msg.sender)][arg1].field_0 and sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100 > -1 / block.timestamp - sub_137b629e[address(msg.sender)][arg1].field_0:
            revert with 0, 17
        return ((block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) / 8760 * 24 * 3600)
    if 4320 * 24 * 3600 > !sub_137b629e[address(msg.sender)][arg1].field_0:
        revert with 0, 17
    if block.timestamp < sub_137b629e[address(msg.sender)][arg1].field_0:
        revert with 0, 17
    if block.timestamp >= sub_137b629e[address(msg.sender)][arg1].field_0 + (4320 * 24 * 3600):
        if sub_137b629e[msg.sender][arg1].field_256 and sub_4bfcfa92 > -1 / sub_137b629e[msg.sender][arg1].field_256:
            revert with 0, 17
        if block.timestamp - sub_137b629e[address(msg.sender)][arg1].field_0 > 8760 * 24 * 3600:
            return (sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100)
        if block.timestamp - sub_137b629e[address(msg.sender)][arg1].field_0 and sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100 > -1 / block.timestamp - sub_137b629e[address(msg.sender)][arg1].field_0:
            revert with 0, 17
        return ((block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) / 8760 * 24 * 3600)
    if sub_137b629e[msg.sender][arg1].field_256 and sub_38b03a83 > -1 / sub_137b629e[msg.sender][arg1].field_256:
        revert with 0, 17
    if block.timestamp - sub_137b629e[address(msg.sender)][arg1].field_0 > 8760 * 24 * 3600:
        return (sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100)
    if block.timestamp - sub_137b629e[address(msg.sender)][arg1].field_0 and sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100 > -1 / block.timestamp - sub_137b629e[address(msg.sender)][arg1].field_0:
        revert with 0, 17
    return ((block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) / 8760 * 24 * 3600)
}

function unstake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1[msg.sender]:
        revert with 0, 'Your Address is blocked'
    if not sub_d104e79f[msg.sender]:
        revert with 0, 'Unstake: Low stake balance'
    if arg1 >= sub_137b629e[msg.sender].field_0:
        revert with 0, 50
    if sub_137b629e[msg.sender][arg1].field_256 <= 0:
        revert with 0, 'Unstake: Stake first.'
    require ext_code.size(sub_eae8fb12Address)
    staticcall sub_eae8fb12Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor1[msg.sender]:
        revert with 0, 'Your Address is blocked'
    if arg1 >= sub_137b629e[msg.sender].field_0:
        revert with 0, 50
    if arg1 >= sub_137b629e[address(msg.sender)].field_0:
        revert with 0, 50
    if 2160 * 24 * 3600 > !sub_137b629e[address(msg.sender)][arg1].field_0:
        revert with 0, 17
    if block.timestamp < sub_137b629e[address(msg.sender)][arg1].field_0 + (2160 * 24 * 3600):
        if block.timestamp < sub_137b629e[address(msg.sender)][arg1].field_0:
            revert with 0, 17
        if sub_137b629e[msg.sender][arg1].field_256 and sub_c7eba317 > -1 / sub_137b629e[msg.sender][arg1].field_256:
            revert with 0, 17
        if block.timestamp - sub_137b629e[address(msg.sender)][arg1].field_0 > 8760 * 24 * 3600:
            if arg1 >= sub_137b629e[msg.sender].field_0:
                revert with 0, 50
            if sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100 < sub_137b629e[msg.sender][arg1].field_512:
                revert with 0, 17
            if arg1 >= sub_137b629e[msg.sender].field_0:
                revert with 0, 50
            if sub_137b629e[msg.sender][arg1].field_256 > !((sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) - sub_137b629e[msg.sender][arg1].field_512):
                revert with 0, 17
            if ext_call.return_data[0] < sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100:
                revert with 0, 'Unstake: Low contract balance'
            require ext_code.size(sub_eae8fb12Address)
            call sub_eae8fb12Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, sub_137b629e[msg.sender][arg1].field_256 + (sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) - sub_137b629e[msg.sender][arg1].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if sub_8523b7db > !((sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) - sub_137b629e[msg.sender][arg1].field_512):
                revert with 0, 17
            sub_8523b7db = sub_8523b7db + (sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) - sub_137b629e[msg.sender][arg1].field_512
        else:
            if block.timestamp - sub_137b629e[address(msg.sender)][arg1].field_0 and sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100 > -1 / block.timestamp - sub_137b629e[address(msg.sender)][arg1].field_0:
                revert with 0, 17
            if arg1 >= sub_137b629e[msg.sender].field_0:
                revert with 0, 50
            if (block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) / 8760 * 24 * 3600 < sub_137b629e[msg.sender][arg1].field_512:
                revert with 0, 17
            if arg1 >= sub_137b629e[msg.sender].field_0:
                revert with 0, 50
            if sub_137b629e[msg.sender][arg1].field_256 > !(((block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) / 8760 * 24 * 3600) - sub_137b629e[msg.sender][arg1].field_512):
                revert with 0, 17
            if ext_call.return_data[0] < (block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) / 8760 * 24 * 3600:
                revert with 0, 'Unstake: Low contract balance'
            require ext_code.size(sub_eae8fb12Address)
            call sub_eae8fb12Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, sub_137b629e[msg.sender][arg1].field_256 + ((block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) / 8760 * 24 * 3600) - sub_137b629e[msg.sender][arg1].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if sub_8523b7db > !(((block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) / 8760 * 24 * 3600) - sub_137b629e[msg.sender][arg1].field_512):
                revert with 0, 17
            sub_8523b7db = sub_8523b7db + ((block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) / 8760 * 24 * 3600) - sub_137b629e[msg.sender][arg1].field_512
    else:
        if 4320 * 24 * 3600 > !sub_137b629e[address(msg.sender)][arg1].field_0:
            revert with 0, 17
        if block.timestamp < sub_137b629e[address(msg.sender)][arg1].field_0:
            revert with 0, 17
        if block.timestamp >= sub_137b629e[address(msg.sender)][arg1].field_0 + (4320 * 24 * 3600):
            if sub_137b629e[msg.sender][arg1].field_256 and sub_4bfcfa92 > -1 / sub_137b629e[msg.sender][arg1].field_256:
                revert with 0, 17
            if block.timestamp - sub_137b629e[address(msg.sender)][arg1].field_0 > 8760 * 24 * 3600:
                if arg1 >= sub_137b629e[msg.sender].field_0:
                    revert with 0, 50
                if sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100 < sub_137b629e[msg.sender][arg1].field_512:
                    revert with 0, 17
                if arg1 >= sub_137b629e[msg.sender].field_0:
                    revert with 0, 50
                if sub_137b629e[msg.sender][arg1].field_256 > !((sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) - sub_137b629e[msg.sender][arg1].field_512):
                    revert with 0, 17
                if ext_call.return_data[0] < sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100:
                    revert with 0, 'Unstake: Low contract balance'
                require ext_code.size(sub_eae8fb12Address)
                call sub_eae8fb12Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, sub_137b629e[msg.sender][arg1].field_256 + (sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) - sub_137b629e[msg.sender][arg1].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if sub_8523b7db > !((sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) - sub_137b629e[msg.sender][arg1].field_512):
                    revert with 0, 17
                sub_8523b7db = sub_8523b7db + (sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) - sub_137b629e[msg.sender][arg1].field_512
            else:
                if block.timestamp - sub_137b629e[address(msg.sender)][arg1].field_0 and sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100 > -1 / block.timestamp - sub_137b629e[address(msg.sender)][arg1].field_0:
                    revert with 0, 17
                if arg1 >= sub_137b629e[msg.sender].field_0:
                    revert with 0, 50
                if (block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) / 8760 * 24 * 3600 < sub_137b629e[msg.sender][arg1].field_512:
                    revert with 0, 17
                if arg1 >= sub_137b629e[msg.sender].field_0:
                    revert with 0, 50
                if sub_137b629e[msg.sender][arg1].field_256 > !(((block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) / 8760 * 24 * 3600) - sub_137b629e[msg.sender][arg1].field_512):
                    revert with 0, 17
                if ext_call.return_data[0] < (block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) / 8760 * 24 * 3600:
                    revert with 0, 'Unstake: Low contract balance'
                require ext_code.size(sub_eae8fb12Address)
                call sub_eae8fb12Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, sub_137b629e[msg.sender][arg1].field_256 + ((block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) / 8760 * 24 * 3600) - sub_137b629e[msg.sender][arg1].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if sub_8523b7db > !(((block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) / 8760 * 24 * 3600) - sub_137b629e[msg.sender][arg1].field_512):
                    revert with 0, 17
                sub_8523b7db = sub_8523b7db + ((block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) / 8760 * 24 * 3600) - sub_137b629e[msg.sender][arg1].field_512
        else:
            if sub_137b629e[msg.sender][arg1].field_256 and sub_38b03a83 > -1 / sub_137b629e[msg.sender][arg1].field_256:
                revert with 0, 17
            if block.timestamp - sub_137b629e[address(msg.sender)][arg1].field_0 > 8760 * 24 * 3600:
                if arg1 >= sub_137b629e[msg.sender].field_0:
                    revert with 0, 50
                if sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100 < sub_137b629e[msg.sender][arg1].field_512:
                    revert with 0, 17
                if arg1 >= sub_137b629e[msg.sender].field_0:
                    revert with 0, 50
                if sub_137b629e[msg.sender][arg1].field_256 > !((sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) - sub_137b629e[msg.sender][arg1].field_512):
                    revert with 0, 17
                if ext_call.return_data[0] < sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100:
                    revert with 0, 'Unstake: Low contract balance'
                require ext_code.size(sub_eae8fb12Address)
                call sub_eae8fb12Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, sub_137b629e[msg.sender][arg1].field_256 + (sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) - sub_137b629e[msg.sender][arg1].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if sub_8523b7db > !((sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) - sub_137b629e[msg.sender][arg1].field_512):
                    revert with 0, 17
                sub_8523b7db = sub_8523b7db + (sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) - sub_137b629e[msg.sender][arg1].field_512
            else:
                if block.timestamp - sub_137b629e[address(msg.sender)][arg1].field_0 and sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100 > -1 / block.timestamp - sub_137b629e[address(msg.sender)][arg1].field_0:
                    revert with 0, 17
                if arg1 >= sub_137b629e[msg.sender].field_0:
                    revert with 0, 50
                if (block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) / 8760 * 24 * 3600 < sub_137b629e[msg.sender][arg1].field_512:
                    revert with 0, 17
                if arg1 >= sub_137b629e[msg.sender].field_0:
                    revert with 0, 50
                if sub_137b629e[msg.sender][arg1].field_256 > !(((block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) / 8760 * 24 * 3600) - sub_137b629e[msg.sender][arg1].field_512):
                    revert with 0, 17
                if ext_call.return_data[0] < (block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) / 8760 * 24 * 3600:
                    revert with 0, 'Unstake: Low contract balance'
                require ext_code.size(sub_eae8fb12Address)
                call sub_eae8fb12Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, sub_137b629e[msg.sender][arg1].field_256 + ((block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) / 8760 * 24 * 3600) - sub_137b629e[msg.sender][arg1].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if sub_8523b7db > !(((block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) / 8760 * 24 * 3600) - sub_137b629e[msg.sender][arg1].field_512):
                    revert with 0, 17
                sub_8523b7db = sub_8523b7db + ((block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) / 8760 * 24 * 3600) - sub_137b629e[msg.sender][arg1].field_512
    if arg1 >= sub_137b629e[msg.sender].field_0:
        revert with 0, 50
    if totalStakeAmount < sub_137b629e[msg.sender][arg1].field_256:
        revert with 0, 17
    totalStakeAmount -= sub_137b629e[msg.sender][arg1].field_256
    if arg1 >= sub_137b629e[msg.sender].field_0:
        revert with 0, 50
    if sub_d104e79f[address(msg.sender)] < sub_137b629e[msg.sender][arg1].field_256:
        revert with 0, 17
    sub_d104e79f[address(msg.sender)] -= sub_137b629e[msg.sender][arg1].field_256
    if arg1 >= sub_137b629e[msg.sender].field_0:
        revert with 0, 50
    sub_137b629e[msg.sender][arg1].field_0 = 0
    sub_137b629e[msg.sender][arg1].field_256 = 0
    sub_137b629e[msg.sender][arg1].field_512 = 0
}

function claim(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1[msg.sender]:
        revert with 0, 'Your Address is blocked'
    if not sub_d104e79f[msg.sender]:
        revert with 0, 'Claim: Low stake balance'
    if arg1 >= sub_137b629e[msg.sender].field_0:
        revert with 0, 50
    if sub_137b629e[msg.sender][arg1].field_256 <= 0:
        revert with 0, 'Claim: Stake first.'
    if stor1[msg.sender]:
        revert with 0, 'Your Address is blocked'
    if arg1 >= sub_137b629e[msg.sender].field_0:
        revert with 0, 50
    if arg1 >= sub_137b629e[address(msg.sender)].field_0:
        revert with 0, 50
    if 2160 * 24 * 3600 > !sub_137b629e[address(msg.sender)][arg1].field_0:
        revert with 0, 17
    if block.timestamp < sub_137b629e[address(msg.sender)][arg1].field_0 + (2160 * 24 * 3600):
        if block.timestamp < sub_137b629e[address(msg.sender)][arg1].field_0:
            revert with 0, 17
        if sub_137b629e[msg.sender][arg1].field_256 and sub_c7eba317 > -1 / sub_137b629e[msg.sender][arg1].field_256:
            revert with 0, 17
        if block.timestamp - sub_137b629e[address(msg.sender)][arg1].field_0 > 8760 * 24 * 3600:
            if arg1 >= sub_137b629e[msg.sender].field_0:
                revert with 0, 50
            if sub_137b629e[msg.sender][arg1].field_512 >= sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100:
                revert with 0, 'Claim : Reward already collected'
            require ext_code.size(sub_eae8fb12Address)
            staticcall sub_eae8fb12Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100:
                revert with 0, 'Claim : Low contract balance'
            if arg1 >= sub_137b629e[msg.sender].field_0:
                revert with 0, 50
            if sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100 < sub_137b629e[msg.sender][arg1].field_512:
                revert with 0, 17
            if arg1 >= sub_137b629e[msg.sender].field_0:
                revert with 0, 50
            sub_137b629e[msg.sender][arg1].field_512 = sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100
            require ext_code.size(sub_eae8fb12Address)
            call sub_eae8fb12Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) - sub_137b629e[msg.sender][arg1].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if sub_8523b7db > !((sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) - sub_137b629e[msg.sender][arg1].field_512):
                revert with 0, 17
            sub_8523b7db = sub_8523b7db + (sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) - sub_137b629e[msg.sender][arg1].field_512
        else:
            if block.timestamp - sub_137b629e[address(msg.sender)][arg1].field_0 and sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100 > -1 / block.timestamp - sub_137b629e[address(msg.sender)][arg1].field_0:
                revert with 0, 17
            if arg1 >= sub_137b629e[msg.sender].field_0:
                revert with 0, 50
            if sub_137b629e[msg.sender][arg1].field_512 >= (block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) / 8760 * 24 * 3600:
                revert with 0, 'Claim : Reward already collected'
            require ext_code.size(sub_eae8fb12Address)
            staticcall sub_eae8fb12Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < (block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) / 8760 * 24 * 3600:
                revert with 0, 'Claim : Low contract balance'
            if arg1 >= sub_137b629e[msg.sender].field_0:
                revert with 0, 50
            if (block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) / 8760 * 24 * 3600 < sub_137b629e[msg.sender][arg1].field_512:
                revert with 0, 17
            if arg1 >= sub_137b629e[msg.sender].field_0:
                revert with 0, 50
            sub_137b629e[msg.sender][arg1].field_512 = (block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) / 8760 * 24 * 3600
            require ext_code.size(sub_eae8fb12Address)
            call sub_eae8fb12Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ((block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) / 8760 * 24 * 3600) - sub_137b629e[msg.sender][arg1].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if sub_8523b7db > !(((block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) / 8760 * 24 * 3600) - sub_137b629e[msg.sender][arg1].field_512):
                revert with 0, 17
            sub_8523b7db = sub_8523b7db + ((block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) / 8760 * 24 * 3600) - sub_137b629e[msg.sender][arg1].field_512
    else:
        if 4320 * 24 * 3600 > !sub_137b629e[address(msg.sender)][arg1].field_0:
            revert with 0, 17
        if block.timestamp < sub_137b629e[address(msg.sender)][arg1].field_0:
            revert with 0, 17
        if block.timestamp >= sub_137b629e[address(msg.sender)][arg1].field_0 + (4320 * 24 * 3600):
            if sub_137b629e[msg.sender][arg1].field_256 and sub_4bfcfa92 > -1 / sub_137b629e[msg.sender][arg1].field_256:
                revert with 0, 17
            if block.timestamp - sub_137b629e[address(msg.sender)][arg1].field_0 > 8760 * 24 * 3600:
                if arg1 >= sub_137b629e[msg.sender].field_0:
                    revert with 0, 50
                if sub_137b629e[msg.sender][arg1].field_512 >= sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100:
                    revert with 0, 'Claim : Reward already collected'
                require ext_code.size(sub_eae8fb12Address)
                staticcall sub_eae8fb12Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100:
                    revert with 0, 'Claim : Low contract balance'
                if arg1 >= sub_137b629e[msg.sender].field_0:
                    revert with 0, 50
                if sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100 < sub_137b629e[msg.sender][arg1].field_512:
                    revert with 0, 17
                if arg1 >= sub_137b629e[msg.sender].field_0:
                    revert with 0, 50
                sub_137b629e[msg.sender][arg1].field_512 = sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100
                require ext_code.size(sub_eae8fb12Address)
                call sub_eae8fb12Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) - sub_137b629e[msg.sender][arg1].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if sub_8523b7db > !((sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) - sub_137b629e[msg.sender][arg1].field_512):
                    revert with 0, 17
                sub_8523b7db = sub_8523b7db + (sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) - sub_137b629e[msg.sender][arg1].field_512
            else:
                if block.timestamp - sub_137b629e[address(msg.sender)][arg1].field_0 and sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100 > -1 / block.timestamp - sub_137b629e[address(msg.sender)][arg1].field_0:
                    revert with 0, 17
                if arg1 >= sub_137b629e[msg.sender].field_0:
                    revert with 0, 50
                if sub_137b629e[msg.sender][arg1].field_512 >= (block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) / 8760 * 24 * 3600:
                    revert with 0, 'Claim : Reward already collected'
                require ext_code.size(sub_eae8fb12Address)
                staticcall sub_eae8fb12Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < (block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) / 8760 * 24 * 3600:
                    revert with 0, 'Claim : Low contract balance'
                if arg1 >= sub_137b629e[msg.sender].field_0:
                    revert with 0, 50
                if (block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) / 8760 * 24 * 3600 < sub_137b629e[msg.sender][arg1].field_512:
                    revert with 0, 17
                if arg1 >= sub_137b629e[msg.sender].field_0:
                    revert with 0, 50
                sub_137b629e[msg.sender][arg1].field_512 = (block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) / 8760 * 24 * 3600
                require ext_code.size(sub_eae8fb12Address)
                call sub_eae8fb12Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ((block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) / 8760 * 24 * 3600) - sub_137b629e[msg.sender][arg1].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if sub_8523b7db > !(((block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) / 8760 * 24 * 3600) - sub_137b629e[msg.sender][arg1].field_512):
                    revert with 0, 17
                sub_8523b7db = sub_8523b7db + ((block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) / 8760 * 24 * 3600) - sub_137b629e[msg.sender][arg1].field_512
        else:
            if sub_137b629e[msg.sender][arg1].field_256 and sub_38b03a83 > -1 / sub_137b629e[msg.sender][arg1].field_256:
                revert with 0, 17
            if block.timestamp - sub_137b629e[address(msg.sender)][arg1].field_0 > 8760 * 24 * 3600:
                if arg1 >= sub_137b629e[msg.sender].field_0:
                    revert with 0, 50
                if sub_137b629e[msg.sender][arg1].field_512 >= sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100:
                    revert with 0, 'Claim : Reward already collected'
                require ext_code.size(sub_eae8fb12Address)
                staticcall sub_eae8fb12Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100:
                    revert with 0, 'Claim : Low contract balance'
                if arg1 >= sub_137b629e[msg.sender].field_0:
                    revert with 0, 50
                if sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100 < sub_137b629e[msg.sender][arg1].field_512:
                    revert with 0, 17
                if arg1 >= sub_137b629e[msg.sender].field_0:
                    revert with 0, 50
                sub_137b629e[msg.sender][arg1].field_512 = sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100
                require ext_code.size(sub_eae8fb12Address)
                call sub_eae8fb12Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) - sub_137b629e[msg.sender][arg1].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if sub_8523b7db > !((sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) - sub_137b629e[msg.sender][arg1].field_512):
                    revert with 0, 17
                sub_8523b7db = sub_8523b7db + (sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) - sub_137b629e[msg.sender][arg1].field_512
            else:
                if block.timestamp - sub_137b629e[address(msg.sender)][arg1].field_0 and sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100 > -1 / block.timestamp - sub_137b629e[address(msg.sender)][arg1].field_0:
                    revert with 0, 17
                if arg1 >= sub_137b629e[msg.sender].field_0:
                    revert with 0, 50
                if sub_137b629e[msg.sender][arg1].field_512 >= (block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) / 8760 * 24 * 3600:
                    revert with 0, 'Claim : Reward already collected'
                require ext_code.size(sub_eae8fb12Address)
                staticcall sub_eae8fb12Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < (block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) / 8760 * 24 * 3600:
                    revert with 0, 'Claim : Low contract balance'
                if arg1 >= sub_137b629e[msg.sender].field_0:
                    revert with 0, 50
                if (block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) / 8760 * 24 * 3600 < sub_137b629e[msg.sender][arg1].field_512:
                    revert with 0, 17
                if arg1 >= sub_137b629e[msg.sender].field_0:
                    revert with 0, 50
                sub_137b629e[msg.sender][arg1].field_512 = (block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) / 8760 * 24 * 3600
                require ext_code.size(sub_eae8fb12Address)
                call sub_eae8fb12Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ((block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) / 8760 * 24 * 3600) - sub_137b629e[msg.sender][arg1].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if sub_8523b7db > !(((block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) / 8760 * 24 * 3600) - sub_137b629e[msg.sender][arg1].field_512):
                    revert with 0, 17
                sub_8523b7db = sub_8523b7db + ((block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) / 8760 * 24 * 3600) - sub_137b629e[msg.sender][arg1].field_512
}

function restake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1[msg.sender]:
        revert with 0, 'Your Address is blocked'
    if not sub_d104e79f[msg.sender]:
        revert with 0, 'Restake: Low stake balance'
    if arg1 >= sub_137b629e[msg.sender].field_0:
        revert with 0, 50
    if sub_137b629e[msg.sender][arg1].field_256 <= 0:
        revert with 0, 'Restake: Stake first.'
    if stor1[msg.sender]:
        revert with 0, 'Your Address is blocked'
    if arg1 >= sub_137b629e[msg.sender].field_0:
        revert with 0, 50
    if arg1 >= sub_137b629e[address(msg.sender)].field_0:
        revert with 0, 50
    if 2160 * 24 * 3600 > !sub_137b629e[address(msg.sender)][arg1].field_0:
        revert with 0, 17
    if block.timestamp < sub_137b629e[address(msg.sender)][arg1].field_0 + (2160 * 24 * 3600):
        if block.timestamp < sub_137b629e[address(msg.sender)][arg1].field_0:
            revert with 0, 17
        if sub_137b629e[msg.sender][arg1].field_256 and sub_c7eba317 > -1 / sub_137b629e[msg.sender][arg1].field_256:
            revert with 0, 17
        if block.timestamp - sub_137b629e[address(msg.sender)][arg1].field_0 > 8760 * 24 * 3600:
            if arg1 >= sub_137b629e[msg.sender].field_0:
                revert with 0, 50
            if sub_137b629e[msg.sender][arg1].field_512 >= sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Restake: Reward already collected'
            if arg1 >= sub_137b629e[msg.sender].field_0:
                revert with 0, 50
            if sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100 < sub_137b629e[msg.sender][arg1].field_512:
                revert with 0, 17
            sub_137b629e[msg.sender].field_0++
            sub_137b629e[msg.sender][sub_137b629e[msg.sender].field_0].field_0 = block.timestamp
            sub_137b629e[msg.sender][sub_137b629e[msg.sender].field_0].field_256 = (sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) - sub_137b629e[msg.sender][arg1].field_512
            sub_137b629e[msg.sender][sub_137b629e[msg.sender].field_0].field_512 = 0
            if arg1 >= sub_137b629e[msg.sender].field_0:
                revert with 0, 50
            sub_137b629e[msg.sender][arg1].field_512 = sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100
            if sub_d104e79f[msg.sender] > !((sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) - sub_137b629e[msg.sender][arg1].field_512):
                revert with 0, 17
            sub_d104e79f[msg.sender] = sub_d104e79f[msg.sender] + (sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) - sub_137b629e[msg.sender][arg1].field_512
            if sub_1bbfc156 > !((sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) - sub_137b629e[msg.sender][arg1].field_512):
                revert with 0, 17
            sub_1bbfc156 = sub_1bbfc156 + (sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) - sub_137b629e[msg.sender][arg1].field_512
            if totalStakeAmount > !((sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) - sub_137b629e[msg.sender][arg1].field_512):
                revert with 0, 17
            totalStakeAmount = totalStakeAmount + (sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) - sub_137b629e[msg.sender][arg1].field_512
        else:
            if block.timestamp - sub_137b629e[address(msg.sender)][arg1].field_0 and sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100 > -1 / block.timestamp - sub_137b629e[address(msg.sender)][arg1].field_0:
                revert with 0, 17
            if arg1 >= sub_137b629e[msg.sender].field_0:
                revert with 0, 50
            if sub_137b629e[msg.sender][arg1].field_512 >= (block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) / 8760 * 24 * 3600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Restake: Reward already collected'
            if arg1 >= sub_137b629e[msg.sender].field_0:
                revert with 0, 50
            if (block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) / 8760 * 24 * 3600 < sub_137b629e[msg.sender][arg1].field_512:
                revert with 0, 17
            sub_137b629e[msg.sender].field_0++
            sub_137b629e[msg.sender][sub_137b629e[msg.sender].field_0].field_0 = block.timestamp
            sub_137b629e[msg.sender][sub_137b629e[msg.sender].field_0].field_256 = ((block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) / 8760 * 24 * 3600) - sub_137b629e[msg.sender][arg1].field_512
            sub_137b629e[msg.sender][sub_137b629e[msg.sender].field_0].field_512 = 0
            if arg1 >= sub_137b629e[msg.sender].field_0:
                revert with 0, 50
            sub_137b629e[msg.sender][arg1].field_512 = (block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) / 8760 * 24 * 3600
            if sub_d104e79f[msg.sender] > !(((block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) / 8760 * 24 * 3600) - sub_137b629e[msg.sender][arg1].field_512):
                revert with 0, 17
            sub_d104e79f[msg.sender] = sub_d104e79f[msg.sender] + ((block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) / 8760 * 24 * 3600) - sub_137b629e[msg.sender][arg1].field_512
            if sub_1bbfc156 > !(((block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) / 8760 * 24 * 3600) - sub_137b629e[msg.sender][arg1].field_512):
                revert with 0, 17
            sub_1bbfc156 = sub_1bbfc156 + ((block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) / 8760 * 24 * 3600) - sub_137b629e[msg.sender][arg1].field_512
            if totalStakeAmount > !(((block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) / 8760 * 24 * 3600) - sub_137b629e[msg.sender][arg1].field_512):
                revert with 0, 17
            totalStakeAmount = totalStakeAmount + ((block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_c7eba317 / 100) / 8760 * 24 * 3600) - sub_137b629e[msg.sender][arg1].field_512
    else:
        if 4320 * 24 * 3600 > !sub_137b629e[address(msg.sender)][arg1].field_0:
            revert with 0, 17
        if block.timestamp < sub_137b629e[address(msg.sender)][arg1].field_0:
            revert with 0, 17
        if block.timestamp >= sub_137b629e[address(msg.sender)][arg1].field_0 + (4320 * 24 * 3600):
            if sub_137b629e[msg.sender][arg1].field_256 and sub_4bfcfa92 > -1 / sub_137b629e[msg.sender][arg1].field_256:
                revert with 0, 17
            if block.timestamp - sub_137b629e[address(msg.sender)][arg1].field_0 > 8760 * 24 * 3600:
                if arg1 >= sub_137b629e[msg.sender].field_0:
                    revert with 0, 50
                if sub_137b629e[msg.sender][arg1].field_512 >= sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Restake: Reward already collected'
                if arg1 >= sub_137b629e[msg.sender].field_0:
                    revert with 0, 50
                if sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100 < sub_137b629e[msg.sender][arg1].field_512:
                    revert with 0, 17
                sub_137b629e[msg.sender].field_0++
                sub_137b629e[msg.sender][sub_137b629e[msg.sender].field_0].field_0 = block.timestamp
                sub_137b629e[msg.sender][sub_137b629e[msg.sender].field_0].field_256 = (sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) - sub_137b629e[msg.sender][arg1].field_512
                sub_137b629e[msg.sender][sub_137b629e[msg.sender].field_0].field_512 = 0
                if arg1 >= sub_137b629e[msg.sender].field_0:
                    revert with 0, 50
                sub_137b629e[msg.sender][arg1].field_512 = sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100
                if sub_d104e79f[msg.sender] > !((sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) - sub_137b629e[msg.sender][arg1].field_512):
                    revert with 0, 17
                sub_d104e79f[msg.sender] = sub_d104e79f[msg.sender] + (sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) - sub_137b629e[msg.sender][arg1].field_512
                if sub_1bbfc156 > !((sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) - sub_137b629e[msg.sender][arg1].field_512):
                    revert with 0, 17
                sub_1bbfc156 = sub_1bbfc156 + (sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) - sub_137b629e[msg.sender][arg1].field_512
                if totalStakeAmount > !((sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) - sub_137b629e[msg.sender][arg1].field_512):
                    revert with 0, 17
                totalStakeAmount = totalStakeAmount + (sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) - sub_137b629e[msg.sender][arg1].field_512
            else:
                if block.timestamp - sub_137b629e[address(msg.sender)][arg1].field_0 and sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100 > -1 / block.timestamp - sub_137b629e[address(msg.sender)][arg1].field_0:
                    revert with 0, 17
                if arg1 >= sub_137b629e[msg.sender].field_0:
                    revert with 0, 50
                if sub_137b629e[msg.sender][arg1].field_512 >= (block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) / 8760 * 24 * 3600:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Restake: Reward already collected'
                if arg1 >= sub_137b629e[msg.sender].field_0:
                    revert with 0, 50
                if (block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) / 8760 * 24 * 3600 < sub_137b629e[msg.sender][arg1].field_512:
                    revert with 0, 17
                sub_137b629e[msg.sender].field_0++
                sub_137b629e[msg.sender][sub_137b629e[msg.sender].field_0].field_0 = block.timestamp
                sub_137b629e[msg.sender][sub_137b629e[msg.sender].field_0].field_256 = ((block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) / 8760 * 24 * 3600) - sub_137b629e[msg.sender][arg1].field_512
                sub_137b629e[msg.sender][sub_137b629e[msg.sender].field_0].field_512 = 0
                if arg1 >= sub_137b629e[msg.sender].field_0:
                    revert with 0, 50
                sub_137b629e[msg.sender][arg1].field_512 = (block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) / 8760 * 24 * 3600
                if sub_d104e79f[msg.sender] > !(((block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) / 8760 * 24 * 3600) - sub_137b629e[msg.sender][arg1].field_512):
                    revert with 0, 17
                sub_d104e79f[msg.sender] = sub_d104e79f[msg.sender] + ((block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) / 8760 * 24 * 3600) - sub_137b629e[msg.sender][arg1].field_512
                if sub_1bbfc156 > !(((block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) / 8760 * 24 * 3600) - sub_137b629e[msg.sender][arg1].field_512):
                    revert with 0, 17
                sub_1bbfc156 = sub_1bbfc156 + ((block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) / 8760 * 24 * 3600) - sub_137b629e[msg.sender][arg1].field_512
                if totalStakeAmount > !(((block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) / 8760 * 24 * 3600) - sub_137b629e[msg.sender][arg1].field_512):
                    revert with 0, 17
                totalStakeAmount = totalStakeAmount + ((block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_4bfcfa92 / 100) / 8760 * 24 * 3600) - sub_137b629e[msg.sender][arg1].field_512
        else:
            if sub_137b629e[msg.sender][arg1].field_256 and sub_38b03a83 > -1 / sub_137b629e[msg.sender][arg1].field_256:
                revert with 0, 17
            if block.timestamp - sub_137b629e[address(msg.sender)][arg1].field_0 > 8760 * 24 * 3600:
                if arg1 >= sub_137b629e[msg.sender].field_0:
                    revert with 0, 50
                if sub_137b629e[msg.sender][arg1].field_512 >= sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Restake: Reward already collected'
                if arg1 >= sub_137b629e[msg.sender].field_0:
                    revert with 0, 50
                if sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100 < sub_137b629e[msg.sender][arg1].field_512:
                    revert with 0, 17
                sub_137b629e[msg.sender].field_0++
                sub_137b629e[msg.sender][sub_137b629e[msg.sender].field_0].field_0 = block.timestamp
                sub_137b629e[msg.sender][sub_137b629e[msg.sender].field_0].field_256 = (sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) - sub_137b629e[msg.sender][arg1].field_512
                sub_137b629e[msg.sender][sub_137b629e[msg.sender].field_0].field_512 = 0
                if arg1 >= sub_137b629e[msg.sender].field_0:
                    revert with 0, 50
                sub_137b629e[msg.sender][arg1].field_512 = sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100
                if sub_d104e79f[msg.sender] > !((sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) - sub_137b629e[msg.sender][arg1].field_512):
                    revert with 0, 17
                sub_d104e79f[msg.sender] = sub_d104e79f[msg.sender] + (sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) - sub_137b629e[msg.sender][arg1].field_512
                if sub_1bbfc156 > !((sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) - sub_137b629e[msg.sender][arg1].field_512):
                    revert with 0, 17
                sub_1bbfc156 = sub_1bbfc156 + (sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) - sub_137b629e[msg.sender][arg1].field_512
                if totalStakeAmount > !((sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) - sub_137b629e[msg.sender][arg1].field_512):
                    revert with 0, 17
                totalStakeAmount = totalStakeAmount + (sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) - sub_137b629e[msg.sender][arg1].field_512
            else:
                if block.timestamp - sub_137b629e[address(msg.sender)][arg1].field_0 and sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100 > -1 / block.timestamp - sub_137b629e[address(msg.sender)][arg1].field_0:
                    revert with 0, 17
                if arg1 >= sub_137b629e[msg.sender].field_0:
                    revert with 0, 50
                if sub_137b629e[msg.sender][arg1].field_512 >= (block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) / 8760 * 24 * 3600:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Restake: Reward already collected'
                if arg1 >= sub_137b629e[msg.sender].field_0:
                    revert with 0, 50
                if (block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) / 8760 * 24 * 3600 < sub_137b629e[msg.sender][arg1].field_512:
                    revert with 0, 17
                sub_137b629e[msg.sender].field_0++
                sub_137b629e[msg.sender][sub_137b629e[msg.sender].field_0].field_0 = block.timestamp
                sub_137b629e[msg.sender][sub_137b629e[msg.sender].field_0].field_256 = ((block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) / 8760 * 24 * 3600) - sub_137b629e[msg.sender][arg1].field_512
                sub_137b629e[msg.sender][sub_137b629e[msg.sender].field_0].field_512 = 0
                if arg1 >= sub_137b629e[msg.sender].field_0:
                    revert with 0, 50
                sub_137b629e[msg.sender][arg1].field_512 = (block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) / 8760 * 24 * 3600
                if sub_d104e79f[msg.sender] > !(((block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) / 8760 * 24 * 3600) - sub_137b629e[msg.sender][arg1].field_512):
                    revert with 0, 17
                sub_d104e79f[msg.sender] = sub_d104e79f[msg.sender] + ((block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) / 8760 * 24 * 3600) - sub_137b629e[msg.sender][arg1].field_512
                if sub_1bbfc156 > !(((block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) / 8760 * 24 * 3600) - sub_137b629e[msg.sender][arg1].field_512):
                    revert with 0, 17
                sub_1bbfc156 = sub_1bbfc156 + ((block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) / 8760 * 24 * 3600) - sub_137b629e[msg.sender][arg1].field_512
                if totalStakeAmount > !(((block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) / 8760 * 24 * 3600) - sub_137b629e[msg.sender][arg1].field_512):
                    revert with 0, 17
                totalStakeAmount = totalStakeAmount + ((block.timestamp * sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) - (sub_137b629e[address(msg.sender)][arg1].field_0 * sub_137b629e[msg.sender][arg1].field_256 * sub_38b03a83 / 100) / 8760 * 24 * 3600) - sub_137b629e[msg.sender][arg1].field_512
}



}
