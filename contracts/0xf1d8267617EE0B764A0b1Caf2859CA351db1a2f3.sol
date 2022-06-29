contract main {




// =====================  Runtime code  =====================


const sub_2c03066e(?) = 0xfe8b7b73dbbe84551ee8cffc2cc73423df27e9df682fbc17c60fbe89039e054d

const sub_3b905866(?) = 0x63cf56a8078340cd9a6a92254f1f2c6e034f4a2e84786c217445697ec83055c3

const sub_eb77c154(?) = 0x4c73b7930a426c657ec3bc1eca3071280714b52d65d2dceb909647afd84bf5c5

const WITHDRAWER_ROLE = 0x10dac8c06a04bec0b551627dad28bc00d6516b0caacd1c7b345fcdb5211334e4

const DEFAULT_ADMIN_ROLE = 0


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
mapping of struct roleAdmin;
address paymentTokenAddress;
address treasuryAddress;
mapping of uint256 sub_a93225c8;
mapping of struct sub_b0da8837;
array of uint256 itemNames;
address stakingContractAddress;
mapping of struct sub_7f99c6d3;
array of uint256 stor84882613393583925725825227175822068977385904327970485092188354384632214438729;

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function paymentToken() payable {
    return paymentTokenAddress
}

function treasury() payable {
    return treasuryAddress
}

function sub_7f99c6d3(?) payable {
    require calldata.size - 4 >= 32
    return sub_7f99c6d3[arg1].field_0, 
           sub_7f99c6d3[arg1].field_256,
           bool(sub_7f99c6d3[arg1].field_512),
           bool(sub_7f99c6d3[arg1].field_520)
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function sub_a93225c8(?) payable {
    require calldata.size - 4 >= 32
    return sub_a93225c8[arg1]
}

function sub_b0da8837(?) payable {
    require calldata.size - 4 >= 32
    return sub_b0da8837[arg1].field_0, sub_b0da8837[arg1].field_256, bool(sub_b0da8837[arg1].field_512)
}

function itemNames(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < itemNames.length
    return itemNames[arg1]
}

function stakingContract() payable {
    return stakingContractAddress
}

function _fallback() payable {
    revert
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function sub_091641ef(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if arg2:
        if arg2 != 1:
            if arg2 != 2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'Lootbox type must be either basic, medium or premium'
    if not sub_a93225c8[arg2]:
        revert with 0, 'Lootbox price must be set'
    require ext_code.size(paymentTokenAddress)
    call paymentTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, treasuryAddress, sub_a93225c8[arg2]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0x7ca0e612: arg2, sub_a93225c8[arg2], msg.sender, address(arg1)
}

function sub_3d49de0a(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    if not treasuryAddress:
        revert with 0, 'Cannot proceed'
    if not address(arg1):
        revert with 0, 'The to address must be specified'
    if bool(sub_7f99c6d3[arg2].field_512) != 1:
        revert with 0, 'The itemcandy is not active'
    if arg3 < 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Itemcandy count must be at least 1'
    if sub_7f99c6d3[arg2].field_0 and arg3 > -1 / sub_7f99c6d3[arg2].field_0:
        revert with 0, 17
    if arg4 != sub_7f99c6d3[arg2].field_0 * arg3:
        revert with 0, 'Wrong candies'
    require ext_code.size(stakingContractAddress)
    call stakingContractAddress.0x48d7adad with:
         gas gas_remaining wei
        args msg.sender, sub_7f99c6d3[arg2].field_0 * arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x6e351d1e: arg3, sub_7f99c6d3[arg2].field_0, arg2, msg.sender, address(arg1)
}

function setPaymentToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0x4c73b7930a426c657ec3bc1eca3071280714b52d65d2dceb909647afd84bf5c5][address(msg.sender)].field_0:
        paymentTokenAddress = arg1
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 0x4c73b7930a426c657ec3bc1eca3071280714b52d65d2dceb909647afd84bf5c5
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function removeItem(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if roleAdmin[0][address(msg.sender)].field_0:
        if bool(sub_b0da8837[arg1].field_512) != 1:
            revert with 0, 'The item already removed'
        sub_b0da8837[arg1].field_512 = 0
        emit 0x4d14690c: arg1
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function setStakingContract(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0x63cf56a8078340cd9a6a92254f1f2c6e034f4a2e84786c217445697ec83055c3][address(msg.sender)].field_0:
        stakingContractAddress = arg1
        emit StakingAddressUpdated(arg1);
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 0x63cf56a8078340cd9a6a92254f1f2c6e034f4a2e84786c217445697ec83055c3
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function setTreasury(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0x63cf56a8078340cd9a6a92254f1f2c6e034f4a2e84786c217445697ec83055c3][address(msg.sender)].field_0:
        if not arg1:
            revert with 0, 'Invalid treasury'
        treasuryAddress = arg1
        emit TreasuryChanged(arg1);
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 0x63cf56a8078340cd9a6a92254f1f2c6e034f4a2e84786c217445697ec83055c3
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function sub_5b7e2fa9(?) payable {
    require calldata.size - 4 >= 32
    if roleAdmin[0][address(msg.sender)].field_0:
        if bool(sub_7f99c6d3[arg1].field_512) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The itemcandy already removed or doesn't exist'
        sub_7f99c6d3[arg1].field_512 = 0
        emit 0xfa18166e: arg1
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function sub_865a8ee1(?) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[0xfe8b7b73dbbe84551ee8cffc2cc73423df27e9df682fbc17c60fbe89039e054d][address(msg.sender)].field_0:
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if not msg.sender + 10240:
            idx = 65
            s = 0xfe8b7b73dbbe84551ee8cffc2cc73423df27e9df682fbc17c60fbe89039e054d
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 66:
                    revert with 0, 50
                mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
        revert with 0, 'Strings: hex length insufficient'
    if arg1:
        if arg1 != 1:
            if arg1 != 2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'Lootbox type must be either basic, medium or premium'
    sub_a93225c8[arg1] = arg2
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if not roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 1
            emit RoleGranted(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function addItem(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[0][address(msg.sender)].field_0:
        mem[128 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        idx = 65
        while idx > 1:
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            continue 
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The price must be greater than zero'
    sub_b0da8837[arg1].field_0 = arg2
    sub_b0da8837[arg1].field_256 = arg1
    sub_b0da8837[arg1].field_512 = 1
    itemNames.length++
    storBBA9[stor155.length] = arg1
    emit 0x2e26c4bb: arg2, arg1
}

function updateItemPrice(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[0xfe8b7b73dbbe84551ee8cffc2cc73423df27e9df682fbc17c60fbe89039e054d][address(msg.sender)].field_0:
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if not msg.sender + 10240:
            idx = 65
            s = 0xfe8b7b73dbbe84551ee8cffc2cc73423df27e9df682fbc17c60fbe89039e054d
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 66:
                    revert with 0, 50
                mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
        revert with 0, 'Strings: hex length insufficient'
    if bool(sub_b0da8837[arg1].field_512) != 1:
        revert with 0, 'The item doesnt exist'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The price must be greater than zero'
    sub_b0da8837[arg1].field_0 = arg2
    emit 0x1f271af9: arg2, arg1
}

function initialize(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint16(stor0.field_0) = 257
    if not roleAdmin[0][address(msg.sender)].field_0:
        roleAdmin[0][address(msg.sender)].field_0 = 1
        emit RoleGranted(0, msg.sender, msg.sender);
    roleAdmin[0x4c73b7930a426c657ec3bc1eca3071280714b52d65d2dceb909647afd84bf5c5].field_256 = 0
    emit RoleAdminChanged(0x4c73b7930a426c657ec3bc1eca3071280714b52d65d2dceb909647afd84bf5c5, roleAdmin[0x4c73b7930a426c657ec3bc1eca3071280714b52d65d2dceb909647afd84bf5c5].field_256, 0);
    roleAdmin[0xfe8b7b73dbbe84551ee8cffc2cc73423df27e9df682fbc17c60fbe89039e054d].field_256 = 0
    emit RoleAdminChanged(0xfe8b7b73dbbe84551ee8cffc2cc73423df27e9df682fbc17c60fbe89039e054d, roleAdmin[0xfe8b7b73dbbe84551ee8cffc2cc73423df27e9df682fbc17c60fbe89039e054d].field_256, 0);
    roleAdmin[0x10dac8c06a04bec0b551627dad28bc00d6516b0caacd1c7b345fcdb5211334e4].field_256 = 0
    emit RoleAdminChanged(0x10dac8c06a04bec0b551627dad28bc00d6516b0caacd1c7b345fcdb5211334e4, roleAdmin[0x10dac8c06a04bec0b551627dad28bc00d6516b0caacd1c7b345fcdb5211334e4].field_256, 0);
    paymentTokenAddress = arg1
    treasuryAddress = arg2
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function sub_ff6fead0(?) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[0xfe8b7b73dbbe84551ee8cffc2cc73423df27e9df682fbc17c60fbe89039e054d][address(msg.sender)].field_0:
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if not msg.sender + 10240:
            idx = 65
            s = 0xfe8b7b73dbbe84551ee8cffc2cc73423df27e9df682fbc17c60fbe89039e054d
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 66:
                    revert with 0, 50
                mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
        revert with 0, 'Strings: hex length insufficient'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The price must be greater than zero'
    if 1 == bool(sub_7f99c6d3[arg1].field_520):
        if bool(sub_7f99c6d3[arg1].field_512) != 1:
            revert with 0, 'The itemcandy is not active'
        sub_7f99c6d3[arg1].field_0 = arg2
    else:
        sub_7f99c6d3[arg1].field_0 = arg2
        sub_7f99c6d3[arg1].field_256 = arg1
        sub_7f99c6d3[arg1].field_512 = 1
        sub_7f99c6d3[arg1].field_520 = 1
        sub_7f99c6d3[arg1].field_528 = 0
    emit 0xf022f4dc: arg2, arg1
}

function withdraw() payable {
    if not roleAdmin[0x10dac8c06a04bec0b551627dad28bc00d6516b0caacd1c7b345fcdb5211334e4][address(msg.sender)].field_0:
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if not msg.sender + 10240:
            idx = 65
            s = 0x10dac8c06a04bec0b551627dad28bc00d6516b0caacd1c7b345fcdb5211334e4
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 66:
                    revert with 0, 50
                mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
        revert with 0, 'Strings: hex length insufficient'
    require ext_code.size(paymentTokenAddress)
    staticcall paymentTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(paymentTokenAddress)
    call paymentTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_9a5442d5(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if not treasuryAddress:
        revert with 0, 'Cannot proceed'
    if not address(arg1):
        revert with 0, 'The to address must be specified'
    if bool(sub_b0da8837[arg2].field_512) != 1:
        revert with 0, 'The item doesnt exist'
    if arg3 < 1:
        revert with 0, 'Item count must be at least 1'
    if sub_b0da8837[arg2].field_0 and arg3 > -1 / sub_b0da8837[arg2].field_0:
        revert with 0, 17
    require ext_code.size(paymentTokenAddress)
    staticcall paymentTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_b0da8837[arg2].field_0 * arg3:
        revert with 0, 'Insufficient funds'
    require ext_code.size(paymentTokenAddress)
    staticcall paymentTokenAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_b0da8837[arg2].field_0 * arg3:
        revert with 0, 'Item contract is not authorized to use token on sender behalf'
    require ext_code.size(paymentTokenAddress)
    call paymentTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, treasuryAddress, sub_b0da8837[arg2].field_0 * arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0xa7805c14: arg3, sub_b0da8837[arg2].field_0, arg2, msg.sender, address(arg1)
}

function sub_79b88159(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if roleAdmin[0xfe8b7b73dbbe84551ee8cffc2cc73423df27e9df682fbc17c60fbe89039e054d][address(msg.sender)].field_0:
        if not ('cd', 4).length:
            revert with 0, 'Box type can not be empty'
        if ('cd', 36).length != ('cd', 4).length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Box type and price must be the same size'
        idx = 0
        while idx < ('cd', 4).length:
            if cd[((32 * idx) + cd[4] + 36)]:
                if cd[((32 * idx) + cd[4] + 36)] != 1:
                    if cd[((32 * idx) + cd[4] + 36)] != 2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'Lootbox type must be either basic, medium or premium'
            if idx >= ('cd', 36).length:
                revert with 0, 50
            if idx >= ('cd', 4).length:
                revert with 0, 50
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 153
            sub_a93225c8[cd[((32 * idx) + cd[4] + 36)]] = cd[((32 * idx) + cd[36] + 36)]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 0xfe8b7b73dbbe84551ee8cffc2cc73423df27e9df682fbc17c60fbe89039e054d
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function getItems() payable {
    if itemNames.length > test266151307():
        revert with 0, 65
    mem[96] = itemNames.length
    mem[64] = (32 * itemNames.length) + 128
    if not itemNames.length:
        idx = 0
        while idx < itemNames.length:
            mem[0] = itemNames[idx]
            mem[32] = 154
            _29 = mem[64]
            mem[64] = mem[64] + 96
            mem[_29] = sub_b0da8837[stor155[idx]].field_0
            mem[_29 + 32] = sub_b0da8837[stor155[idx]].field_256
            mem[_29 + 64] = bool(sub_b0da8837[stor155[idx]].field_512)
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _29
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _31 = mem[96]
        mem[mem[64] + 32] = mem[96]
        s = 0
        s = 128
        t = mem[64] + 64
        while itemNames.length < _31:
            _48 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_48 + 32]
            mem[t + 64] = bool(mem[_48 + 64])
            s = itemNames.length + 1
            s = s + 32
            t = t + 96
            continue 
    else:
        mem[64] = (32 * itemNames.length) + 224
        mem[(32 * itemNames.length) + 128] = 0
        mem[(32 * itemNames.length) + 160] = 0
        mem[(32 * itemNames.length) + 192] = 0
        mem[128] = (32 * itemNames.length) + 128
        s = 128
        idx = itemNames.length
        while idx - 1:
            mem[64] = mem[64] + 96
            mem[(32 * itemNames.length) + 128] = 0
            mem[(32 * itemNames.length) + 160] = 0
            mem[(32 * itemNames.length) + 192] = 0
            mem[s + 32] = (32 * itemNames.length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < itemNames.length:
            mem[0] = itemNames[idx]
            mem[32] = 154
            _56 = mem[64]
            mem[64] = mem[64] + 96
            mem[_56] = sub_b0da8837[stor155[idx]].field_0
            mem[_56 + 32] = sub_b0da8837[stor155[idx]].field_256
            mem[_56 + 64] = bool(sub_b0da8837[stor155[idx]].field_512)
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _56
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _58 = mem[96]
        mem[mem[64] + 32] = mem[96]
        s = 0
        s = 128
        t = mem[64] + 64
        while itemNames.length < _58:
            _64 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_64 + 32]
            mem[t + 64] = bool(mem[_64 + 64])
            s = itemNames.length + 1
            s = s + 32
            t = t + 96
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_2ce04a64(?) payable {
    if itemNames.length > test266151307():
        revert with 0, 65
    mem[96] = itemNames.length
    mem[64] = (32 * itemNames.length) + 128
    if not itemNames.length:
        idx = 0
        while idx < itemNames.length:
            mem[0] = itemNames[idx]
            mem[32] = 157
            _31 = mem[64]
            mem[64] = mem[64] + 128
            mem[_31] = sub_7f99c6d3[stor155[idx]].field_0
            mem[_31 + 32] = sub_7f99c6d3[stor155[idx]].field_256
            mem[_31 + 64] = bool(sub_7f99c6d3[stor155[idx]].field_512)
            mem[_31 + 96] = bool(sub_7f99c6d3[stor155[idx]].field_520)
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _31
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _33 = mem[96]
        mem[mem[64] + 32] = mem[96]
        s = 0
        s = 128
        t = mem[64] + 64
        while itemNames.length < _33:
            _52 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_52 + 32]
            mem[t + 64] = bool(mem[_52 + 64])
            mem[t + 96] = bool(mem[_52 + 96])
            s = itemNames.length + 1
            s = s + 32
            t = t + 128
            continue 
    else:
        mem[64] = (32 * itemNames.length) + 256
        mem[(32 * itemNames.length) + 128] = 0
        mem[(32 * itemNames.length) + 160] = 0
        mem[(32 * itemNames.length) + 192] = 0
        mem[(32 * itemNames.length) + 224] = 0
        mem[128] = (32 * itemNames.length) + 128
        s = 128
        idx = itemNames.length
        while idx - 1:
            mem[64] = mem[64] + 128
            mem[(32 * itemNames.length) + 128] = 0
            mem[(32 * itemNames.length) + 160] = 0
            mem[(32 * itemNames.length) + 192] = 0
            mem[(32 * itemNames.length) + 224] = 0
            mem[s + 32] = (32 * itemNames.length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < itemNames.length:
            mem[0] = itemNames[idx]
            mem[32] = 157
            _61 = mem[64]
            mem[64] = mem[64] + 128
            mem[_61] = sub_7f99c6d3[stor155[idx]].field_0
            mem[_61 + 32] = sub_7f99c6d3[stor155[idx]].field_256
            mem[_61 + 64] = bool(sub_7f99c6d3[stor155[idx]].field_512)
            mem[_61 + 96] = bool(sub_7f99c6d3[stor155[idx]].field_520)
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _61
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _63 = mem[96]
        mem[mem[64] + 32] = mem[96]
        s = 0
        s = 128
        t = mem[64] + 64
        while itemNames.length < _63:
            _70 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_70 + 32]
            mem[t + 64] = bool(mem[_70 + 64])
            mem[t + 96] = bool(mem[_70 + 96])
            s = itemNames.length + 1
            s = s + 32
            t = t + 128
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_9cbdc30b(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if roleAdmin[0xfe8b7b73dbbe84551ee8cffc2cc73423df27e9df682fbc17c60fbe89039e054d][address(msg.sender)].field_0:
        if not ('cd', 4).length:
            revert with 0, 'Item IDs can not be empty'
        if ('cd', 36).length != ('cd', 4).length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Item IDs and prices must be the same size'
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= ('cd', 36).length:
                revert with 0, 50
            if not roleAdmin[0xfe8b7b73dbbe84551ee8cffc2cc73423df27e9df682fbc17c60fbe89039e054d][address(msg.sender)].field_0:
                idx = 41
                s = address(msg.sender)
                while idx > 1:
                    if s % 16 >= 16:
                        revert with 0, 50
                    if idx >= 42:
                        revert with 0, 50
                    mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    s = Mask(252, 0, s) * 0.0625
                    continue 
                if not msg.sender + 10240:
                    idx = 65
                    s = 0xfe8b7b73dbbe84551ee8cffc2cc73423df27e9df682fbc17c60fbe89039e054d
                    while idx > 1:
                        if s % 16 >= 16:
                            revert with 0, 50
                        if idx >= 66:
                            revert with 0, 50
                        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                        if not idx:
                            revert with 0, 17
                        idx = idx - 1
                        s = Mask(252, 0, s) * 0.0625
                        continue 
                revert with 0, 'Strings: hex length insufficient'
            if bool(sub_b0da8837[cd[((32 * idx) + cd[4] + 36)]].field_512) != 1:
                revert with 0, 'The item doesnt exist'
            if cd[((32 * idx) + cd[36] + 36)] <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The price must be greater than zero'
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 154
            sub_b0da8837[cd[((32 * idx) + cd[4] + 36)]].field_0 = cd[((32 * idx) + cd[36] + 36)]
            mem[96] = cd[((32 * idx) + cd[36] + 36)]
            emit 0x1f271af9: cd[((32 * idx) + cd[36] + 36)], cd[((32 * idx) + cd[4] + 36)]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 0xfe8b7b73dbbe84551ee8cffc2cc73423df27e9df682fbc17c60fbe89039e054d
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function sub_d23faee4(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = sha3(0xfe8b7b73dbbe84551ee8cffc2cc73423df27e9df682fbc17c60fbe89039e054d, 101)
    if roleAdmin[0xfe8b7b73dbbe84551ee8cffc2cc73423df27e9df682fbc17c60fbe89039e054d][address(msg.sender)].field_0:
        if not ('cd', 4).length:
            revert with 0, 'Item names can not be empty'
        if ('cd', 36).length != ('cd', 4).length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Item names and prices must be the same size'
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= ('cd', 36).length:
                revert with 0, 50
            mem[0] = msg.sender
            mem[32] = sha3(0xfe8b7b73dbbe84551ee8cffc2cc73423df27e9df682fbc17c60fbe89039e054d, 101)
            if not roleAdmin[0xfe8b7b73dbbe84551ee8cffc2cc73423df27e9df682fbc17c60fbe89039e054d][address(msg.sender)].field_0:
                _65 = mem[64]
                mem[mem[64]] = 42
                mem[64] = mem[64] + 96
                mem[_65 + 32 len 42] = call.data[calldata.size len 42]
                if 0 >= mem[_65]:
                    revert with 0, 50
                mem[_65 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                if 1 >= mem[_65]:
                    revert with 0, 50
                mem[_65 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                idx = 41
                s = address(msg.sender)
                while idx > 1:
                    if s % 16 >= 16:
                        revert with 0, 50
                    if idx >= mem[_65]:
                        revert with 0, 50
                    mem[idx + _65 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    s = Mask(252, 0, s) * 0.0625
                    continue 
                if not msg.sender + 10240:
                    _81 = mem[64]
                    mem[mem[64]] = 66
                    mem[64] = mem[64] + 128
                    if 0 >= mem[_81]:
                        revert with 0, 50
                    if 1 >= mem[_81]:
                        revert with 0, 50
                    idx = 65
                    s = 0xfe8b7b73dbbe84551ee8cffc2cc73423df27e9df682fbc17c60fbe89039e054d
                    while idx > 1:
                        if s % 16 >= 16:
                            revert with 0, 50
                        if idx >= mem[_81]:
                            revert with 0, 50
                        mem[idx + _81 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                        if not idx:
                            revert with 0, 17
                        idx = idx - 1
                        s = Mask(252, 0, s) * 0.0625
                        continue 
                revert with 0, 'Strings: hex length insufficient'
            if cd[((32 * idx) + cd[36] + 36)] <= 0:
                revert with 0, 'The price must be greater than zero'
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 157
            if 1 == bool(sub_7f99c6d3[cd[((32 * idx) + cd[4] + 36)]].field_520):
                if bool(sub_7f99c6d3[cd[((32 * idx) + cd[4] + 36)]].field_512) != 1:
                    revert with 0, 'The itemcandy is not active'
                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                mem[32] = 157
                sub_7f99c6d3[cd[((32 * idx) + cd[4] + 36)]].field_0 = cd[((32 * idx) + cd[36] + 36)]
            else:
                _47 = mem[64]
                mem[64] = mem[64] + 128
                mem[_47] = cd[((32 * idx) + cd[36] + 36)]
                mem[_47 + 32] = cd[((32 * idx) + cd[4] + 36)]
                mem[_47 + 64] = 1
                mem[_47 + 96] = 1
                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                mem[32] = 157
                sub_7f99c6d3[cd[((32 * idx) + cd[4] + 36)]].field_0 = cd[((32 * idx) + cd[36] + 36)]
                sub_7f99c6d3[cd[((32 * idx) + cd[4] + 36)]].field_256 = cd[((32 * idx) + cd[4] + 36)]
                sub_7f99c6d3[cd[((32 * idx) + cd[4] + 36)]].field_512 = 1
                sub_7f99c6d3[cd[((32 * idx) + cd[4] + 36)]].field_520 = 1
                sub_7f99c6d3[cd[((32 * idx) + cd[4] + 36)]].field_528 = 0
            mem[mem[64]] = cd[((32 * idx) + cd[36] + 36)]
            emit 0xf022f4dc: cd[((32 * idx) + cd[36] + 36)], cd[((32 * idx) + cd[4] + 36)]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 0xfe8b7b73dbbe84551ee8cffc2cc73423df27e9df682fbc17c60fbe89039e054d
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}



}
