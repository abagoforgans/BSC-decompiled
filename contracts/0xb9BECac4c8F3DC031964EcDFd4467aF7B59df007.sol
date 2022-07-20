contract main {




// =====================  Runtime code  =====================


#
#  - raise(uint256 arg1)
#  - sub_7542e99d(?)
#  - getToken(uint256 arg1)
#
address owner;
uint256 stor1;
address tokenAddress;
uint8 sub_4e365696; offset 160
uint8 sub_aa2a305f; offset 168
uint128 stor3; offset 168
uint128 stor3; offset 160
address sub_914ef630Address;
address recipientAddress;
address oldAddress;
uint256 sub_4e6f19e7;
mapping of struct sub_0fd989f8;
uint256 sub_d83eb9d8;
uint256 sub_799e68fe;
address stor10;

function sub_0fd989f8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_0fd989f8[address(arg1)].field_256
}

function sub_4e365696(?) payable {
    return bool(sub_4e365696)
}

function sub_4e6f19e7(?) payable {
    return sub_4e6f19e7
}

function recipientAddress() payable {
    return recipientAddress
}

function sub_799e68fe(?) payable {
    return sub_799e68fe
}

function owner() payable {
    return owner
}

function sub_914ef630(?) payable {
    return sub_914ef630Address
}

function tokenAddress() payable {
    return tokenAddress
}

function sub_aa2a305f(?) payable {
    return bool(sub_aa2a305f)
}

function oldAddress() payable {
    return oldAddress
}

function sub_d161736e(?) payable {
    return sub_d83eb9d8
}

function sub_d83eb9d8(?) payable {
    return sub_d83eb9d8
}

function getTokenAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_0fd989f8[address(arg1)].field_0
}

function orders(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_0fd989f8[arg1].field_0, sub_0fd989f8[arg1].field_256
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

function sub_4e3229ac(?) payable {
    staticcall stor10.0xd83eb9d8 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_4fd243b5(?) payable {
    staticcall stor10.0x4e6f19e7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_341c31fd(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor3.field_160) = Mask(96, 0, bool(arg1))
    emit 0x6abf2ea0: 0, 0, 0, bool(uint8(bool(arg1))), block.timestamp
}

function sub_a22705d4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(88, 0, stor3.field_168) = Mask(88, 0, bool(arg1))
    emit 0x6abf2ea0: 1, 0, 0, bool(uint8(bool(arg1))), block.timestamp
}

function setTokenAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'no 0'
    tokenAddress = arg1
    emit 0x6abf2ea0: 5, address(arg1), 0, 0, block.timestamp
}

function setRecipientAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'no 0'
    recipientAddress = arg1
    emit 0x6abf2ea0: 3, address(arg1), 0, 0, block.timestamp
}

function sub_15a54aa7(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'number less'
    if arg1 >= 10^13:
        revert with 0, 'number large'
    sub_799e68fe = arg1
    emit 0x6abf2ea0: 6, 0, arg1, 0, block.timestamp
}

function sub_9c9ad8d6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'no 0'
    sub_914ef630Address = address(arg1)
    emit 0x6abf2ea0: 4, address(arg1), 0, 0, block.timestamp
}

function getDecimal() payable {
    staticcall tokenAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    return ext_call.return_data[31 len 1]
}

function sub_7453096e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'no 0'
    oldAddress = address(arg1)
    stor10 = address(arg1)
    emit 0x6abf2ea0: 2, address(arg1), 0, 0, block.timestamp
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

function sub_d0a879f3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    staticcall stor10.0xf40e8471 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not bool(ceil32(return_data.size) + 160 <= test266151307()):
        revert with 0, 65
    return ext_call.return_data[0]
}

function sub_eadbb247(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    staticcall stor10.0xf40e8471 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not bool(ceil32(return_data.size) + 160 <= test266151307()):
        revert with 0, 65
    return ext_call.return_data[32]
}

function sub_5a15f494(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'no 0'
    if arg2 <= 0:
        revert with 0, 'number less'
    sub_0fd989f8[address(arg1)].field_0 = arg2
    if sub_d83eb9d8 < sub_0fd989f8[address(arg1)].field_0:
        revert with 0, 17
    if sub_d83eb9d8 - sub_0fd989f8[address(arg1)].field_0 > !arg2:
        revert with 0, 17
    sub_d83eb9d8 = sub_d83eb9d8 - sub_0fd989f8[address(arg1)].field_0 + arg2
}

function sub_edcb565a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    staticcall tokenAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    staticcall stor10.0xf40e8471 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not bool((2 * ceil32(return_data.size)) + 160 <= test266151307()):
        revert with 0, 65
    if sub_0fd989f8[address(arg1)].field_0 > !ext_call.return_data[0]:
        revert with 0, 17
    staticcall stor10.0x4e6f19e7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_4e6f19e7 > !ext_call.return_data[0]:
        revert with 0, 17
    if not uint8(ext_call.return_data[0]):
        if sub_4e6f19e7 + ext_call.return_data[0] and sub_0fd989f8[address(arg1)].field_0 + ext_call.return_data[0] > -1 / sub_4e6f19e7 + ext_call.return_data[0]:
            revert with 0, 17
        if (sub_0fd989f8[address(arg1)].field_0 * sub_4e6f19e7) + (ext_call.return_data[0] * sub_4e6f19e7) + (sub_0fd989f8[address(arg1)].field_0 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
            revert with 0, 17
        if not sub_799e68fe:
            revert with 0, 18
        staticcall stor10.0xf40e8471 with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not bool((6 * ceil32(return_data.size)) + 224 <= test266151307()):
            revert with 0, 65
        if sub_0fd989f8[address(arg1)].field_256 > !ext_call.return_data[32]:
            revert with 0, 17
        if (10000 * sub_0fd989f8[address(arg1)].field_0 * sub_4e6f19e7) + (10000 * ext_call.return_data[0] * sub_4e6f19e7) + (10000 * sub_0fd989f8[address(arg1)].field_0 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0]) / sub_799e68fe >= sub_0fd989f8[address(arg1)].field_256 + ext_call.return_data[32]:
            return (((10000 * sub_0fd989f8[address(arg1)].field_0 * sub_4e6f19e7) + (10000 * ext_call.return_data[0] * sub_4e6f19e7) + (10000 * sub_0fd989f8[address(arg1)].field_0 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0]) / sub_799e68fe) - sub_0fd989f8[address(arg1)].field_256 - ext_call.return_data[32])
    else:
        if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
            if sub_4e6f19e7 + ext_call.return_data[0] and sub_0fd989f8[address(arg1)].field_0 + ext_call.return_data[0] > -1 / sub_4e6f19e7 + ext_call.return_data[0]:
                revert with 0, 17
            if (sub_0fd989f8[address(arg1)].field_0 * sub_4e6f19e7) + (ext_call.return_data[0] * sub_4e6f19e7) + (sub_0fd989f8[address(arg1)].field_0 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if not sub_799e68fe:
                revert with 0, 18
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 18
            staticcall stor10.0xf40e8471 with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if not bool((6 * ceil32(return_data.size)) + 224 <= test266151307()):
                revert with 0, 65
            if sub_0fd989f8[address(arg1)].field_256 > !ext_call.return_data[32]:
                revert with 0, 17
            if (10000 * sub_0fd989f8[address(arg1)].field_0 * sub_4e6f19e7) + (10000 * ext_call.return_data[0] * sub_4e6f19e7) + (10000 * sub_0fd989f8[address(arg1)].field_0 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0]) / sub_799e68fe / 10^uint8(ext_call.return_data[0]) >= sub_0fd989f8[address(arg1)].field_256 + ext_call.return_data[32]:
                return (((10000 * sub_0fd989f8[address(arg1)].field_0 * sub_4e6f19e7) + (10000 * ext_call.return_data[0] * sub_4e6f19e7) + (10000 * sub_0fd989f8[address(arg1)].field_0 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0]) / sub_799e68fe / 10^uint8(ext_call.return_data[0])) - sub_0fd989f8[address(arg1)].field_256 - ext_call.return_data[32])
        else:
            s = 10
            t = 1
            idx = uint8(ext_call.return_data[0])
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if sub_4e6f19e7 + ext_call.return_data[0] and sub_0fd989f8[address(arg1)].field_0 + ext_call.return_data[0] > -1 / sub_4e6f19e7 + ext_call.return_data[0]:
                revert with 0, 17
            if (sub_0fd989f8[address(arg1)].field_0 * sub_4e6f19e7) + (ext_call.return_data[0] * sub_4e6f19e7) + (sub_0fd989f8[address(arg1)].field_0 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if not sub_799e68fe:
                revert with 0, 18
            if not s * t:
                revert with 0, 18
            staticcall stor10.0xf40e8471 with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if not bool((6 * ceil32(return_data.size)) + 224 <= test266151307()):
                revert with 0, 65
            if sub_0fd989f8[address(arg1)].field_256 > !ext_call.return_data[32]:
                revert with 0, 17
            if (10000 * sub_0fd989f8[address(arg1)].field_0 * sub_4e6f19e7) + (10000 * ext_call.return_data[0] * sub_4e6f19e7) + (10000 * sub_0fd989f8[address(arg1)].field_0 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0]) / sub_799e68fe / s * t >= sub_0fd989f8[address(arg1)].field_256 + ext_call.return_data[32]:
                return (((10000 * sub_0fd989f8[address(arg1)].field_0 * sub_4e6f19e7) + (10000 * ext_call.return_data[0] * sub_4e6f19e7) + (10000 * sub_0fd989f8[address(arg1)].field_0 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0]) / sub_799e68fe / s * t) - sub_0fd989f8[address(arg1)].field_256 - ext_call.return_data[32])
    return 0
}

function getProfit() payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if msg.sender != tx.origin:
        revert with 0, 'no contract'
    if not sub_aa2a305f:
        revert with 0, 'is disable'
    staticcall stor10.0xf40e8471 with:
            gas gas_remaining wei
           args msg.sender
    mem[96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not bool(ceil32(return_data.size) + 160 <= test266151307()):
        revert with 0, 65
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 128] = ext_call.return_data[32]
    if sub_0fd989f8[msg.sender].field_0 > !ext_call.return_data[0]:
        revert with 0, 17
    if sub_0fd989f8[msg.sender].field_0 + ext_call.return_data[0] <= 0:
        revert with 0, 'not token'
    staticcall tokenAddress.0x313ce567 with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    staticcall stor10.0xf40e8471 with:
            gas gas_remaining wei
           args msg.sender
    mem[(2 * ceil32(return_data.size)) + 160 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not bool((4 * ceil32(return_data.size)) + 224 <= test266151307()):
        revert with 0, 65
    mem[(4 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[32]
    if sub_0fd989f8[address(msg.sender)].field_0 > !ext_call.return_data[0]:
        revert with 0, 17
    staticcall stor10.0x4e6f19e7 with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_4e6f19e7 > !ext_call.return_data[0]:
        revert with 0, 17
    if not uint8(ext_call.return_data[0]):
        if sub_4e6f19e7 + ext_call.return_data[0] and sub_0fd989f8[address(msg.sender)].field_0 + ext_call.return_data[0] > -1 / sub_4e6f19e7 + ext_call.return_data[0]:
            revert with 0, 17
        if (sub_0fd989f8[address(msg.sender)].field_0 * sub_4e6f19e7) + (ext_call.return_data[0] * sub_4e6f19e7) + (sub_0fd989f8[address(msg.sender)].field_0 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
            revert with 0, 17
        if not sub_799e68fe:
            revert with 0, 18
        staticcall stor10.0xf40e8471 with:
                gas gas_remaining wei
               args msg.sender
        mem[(6 * ceil32(return_data.size)) + 224 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not bool((7 * ceil32(return_data.size)) + 288 <= test266151307()):
            revert with 0, 65
        mem[(7 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
        mem[(7 * ceil32(return_data.size)) + 256] = ext_call.return_data[32]
        if sub_0fd989f8[address(msg.sender)].field_256 > !ext_call.return_data[32]:
            revert with 0, 17
        if (10000 * sub_0fd989f8[address(msg.sender)].field_0 * sub_4e6f19e7) + (10000 * ext_call.return_data[0] * sub_4e6f19e7) + (10000 * sub_0fd989f8[address(msg.sender)].field_0 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0]) / sub_799e68fe < sub_0fd989f8[address(msg.sender)].field_256 + ext_call.return_data[32]:
            staticcall sub_914ef630Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        else:
            mem[(7 * ceil32(return_data.size)) + 292] = this.address
            staticcall sub_914ef630Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ((10000 * sub_0fd989f8[address(msg.sender)].field_0 * sub_4e6f19e7) + (10000 * ext_call.return_data[0] * sub_4e6f19e7) + (10000 * sub_0fd989f8[address(msg.sender)].field_0 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0]) / sub_799e68fe) - sub_0fd989f8[address(msg.sender)].field_256 - ext_call.return_data[32]:
                if ((10000 * sub_0fd989f8[address(msg.sender)].field_0 * sub_4e6f19e7) + (10000 * ext_call.return_data[0] * sub_4e6f19e7) + (10000 * sub_0fd989f8[address(msg.sender)].field_0 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0]) / sub_799e68fe) - sub_0fd989f8[address(msg.sender)].field_256 - ext_call.return_data[32] > ext_call.return_data[0]:
                    revert with 0, 'Airdrop: balance not enough'
                if ext_call.return_data[0] < ((10000 * sub_0fd989f8[address(msg.sender)].field_0 * sub_4e6f19e7) + (10000 * ext_call.return_data[0] * sub_4e6f19e7) + (10000 * sub_0fd989f8[address(msg.sender)].field_0 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0]) / sub_799e68fe) - sub_0fd989f8[address(msg.sender)].field_256 - ext_call.return_data[32]:
                    revert with 0, 17
                mem[(8 * ceil32(return_data.size)) + 324] = msg.sender
                mem[(8 * ceil32(return_data.size)) + 356] = ((10000 * sub_0fd989f8[address(msg.sender)].field_0 * sub_4e6f19e7) + (10000 * ext_call.return_data[0] * sub_4e6f19e7) + (10000 * sub_0fd989f8[address(msg.sender)].field_0 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0]) / sub_799e68fe) - sub_0fd989f8[address(msg.sender)].field_256 - ext_call.return_data[32]
                mem[(8 * ceil32(return_data.size)) + 288] = 68
                mem[(8 * ceil32(return_data.size)) + 324 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(8 * ceil32(return_data.size)) + 320 len 4] = unknown_0xa9059cbb(?????)
                mem[(8 * ceil32(return_data.size)) + 388] = 32
                mem[(8 * ceil32(return_data.size)) + 420] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(sub_914ef630Address):
                    revert with 0, 'Address: call to non-contract'
                mem[(8 * ceil32(return_data.size)) + 452 len 96] = unknown_0xa9059cbb(?????), msg.sender, ((10000 * sub_0fd989f8[address(msg.sender)].field_0 * sub_4e6f19e7) + (10000 * ext_call.return_data[0] * sub_4e6f19e7) + (10000 * sub_0fd989f8[address(msg.sender)].field_0 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0]) / sub_799e68fe) - sub_0fd989f8[address(msg.sender)].field_256 - ext_call.return_data[32], 0
                mem[(8 * ceil32(return_data.size)) + 520] = 0
                call sub_914ef630Address with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ((10000 * sub_0fd989f8[address(msg.sender)].field_0 * sub_4e6f19e7) + (10000 * ext_call.return_data[0] * sub_4e6f19e7) + (10000 * sub_0fd989f8[address(msg.sender)].field_0 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0]) / sub_799e68fe) - sub_0fd989f8[address(msg.sender)].field_256 - ext_call.return_data[32], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ((10000 * sub_0fd989f8[address(msg.sender)].field_0 * sub_4e6f19e7) + (10000 * ext_call.return_data[0] * sub_4e6f19e7) + (10000 * sub_0fd989f8[address(msg.sender)].field_0 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0]) / sub_799e68fe) - sub_0fd989f8[address(msg.sender)].field_256 - ext_call.return_data[32], 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(8 * ceil32(return_data.size)) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(8 * ceil32(return_data.size)) + 484] == bool(mem[(8 * ceil32(return_data.size)) + 484])
                        if not mem[(8 * ceil32(return_data.size)) + 484]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if sub_0fd989f8[msg.sender].field_256 > !(((10000 * sub_0fd989f8[address(msg.sender)].field_0 * sub_4e6f19e7) + (10000 * ext_call.return_data[0] * sub_4e6f19e7) + (10000 * sub_0fd989f8[address(msg.sender)].field_0 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0]) / sub_799e68fe) - sub_0fd989f8[address(msg.sender)].field_256 - ext_call.return_data[32]):
                    revert with 0, 17
                sub_0fd989f8[msg.sender].field_256 = sub_0fd989f8[msg.sender].field_256 + ((10000 * sub_0fd989f8[address(msg.sender)].field_0 * sub_4e6f19e7) + (10000 * ext_call.return_data[0] * sub_4e6f19e7) + (10000 * sub_0fd989f8[address(msg.sender)].field_0 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0]) / sub_799e68fe) - sub_0fd989f8[address(msg.sender)].field_256 - ext_call.return_data[32]
                emit 0x1f7a8001: msg.sender, ((10000 * sub_0fd989f8[address(msg.sender)].field_0 * sub_4e6f19e7) + (10000 * ext_call.return_data[0] * sub_4e6f19e7) + (10000 * sub_0fd989f8[address(msg.sender)].field_0 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0]) / sub_799e68fe) - sub_0fd989f8[address(msg.sender)].field_256 - ext_call.return_data[32], block.timestamp
    else:
        if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
            if sub_4e6f19e7 + ext_call.return_data[0] and sub_0fd989f8[address(msg.sender)].field_0 + ext_call.return_data[0] > -1 / sub_4e6f19e7 + ext_call.return_data[0]:
                revert with 0, 17
            if (sub_0fd989f8[address(msg.sender)].field_0 * sub_4e6f19e7) + (ext_call.return_data[0] * sub_4e6f19e7) + (sub_0fd989f8[address(msg.sender)].field_0 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if not sub_799e68fe:
                revert with 0, 18
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 18
            staticcall stor10.0xf40e8471 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[(6 * ceil32(return_data.size)) + 224 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if not bool((7 * ceil32(return_data.size)) + 288 <= test266151307()):
                revert with 0, 65
            mem[(7 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
            mem[(7 * ceil32(return_data.size)) + 256] = ext_call.return_data[32]
            if sub_0fd989f8[address(msg.sender)].field_256 > !ext_call.return_data[32]:
                revert with 0, 17
            if (10000 * sub_0fd989f8[address(msg.sender)].field_0 * sub_4e6f19e7) + (10000 * ext_call.return_data[0] * sub_4e6f19e7) + (10000 * sub_0fd989f8[address(msg.sender)].field_0 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0]) / sub_799e68fe / 10^uint8(ext_call.return_data[0]) < sub_0fd989f8[address(msg.sender)].field_256 + ext_call.return_data[32]:
                staticcall sub_914ef630Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            else:
                mem[(7 * ceil32(return_data.size)) + 292] = this.address
                staticcall sub_914ef630Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ((10000 * sub_0fd989f8[address(msg.sender)].field_0 * sub_4e6f19e7) + (10000 * ext_call.return_data[0] * sub_4e6f19e7) + (10000 * sub_0fd989f8[address(msg.sender)].field_0 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0]) / sub_799e68fe / 10^uint8(ext_call.return_data[0])) - sub_0fd989f8[address(msg.sender)].field_256 - ext_call.return_data[32]:
                    if ((10000 * sub_0fd989f8[address(msg.sender)].field_0 * sub_4e6f19e7) + (10000 * ext_call.return_data[0] * sub_4e6f19e7) + (10000 * sub_0fd989f8[address(msg.sender)].field_0 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0]) / sub_799e68fe / 10^uint8(ext_call.return_data[0])) - sub_0fd989f8[address(msg.sender)].field_256 - ext_call.return_data[32] > ext_call.return_data[0]:
                        revert with 0, 'Airdrop: balance not enough'
                    if ext_call.return_data[0] < ((10000 * sub_0fd989f8[address(msg.sender)].field_0 * sub_4e6f19e7) + (10000 * ext_call.return_data[0] * sub_4e6f19e7) + (10000 * sub_0fd989f8[address(msg.sender)].field_0 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0]) / sub_799e68fe / 10^uint8(ext_call.return_data[0])) - sub_0fd989f8[address(msg.sender)].field_256 - ext_call.return_data[32]:
                        revert with 0, 17
                    mem[(8 * ceil32(return_data.size)) + 324] = msg.sender
                    mem[(8 * ceil32(return_data.size)) + 356] = ((10000 * sub_0fd989f8[address(msg.sender)].field_0 * sub_4e6f19e7) + (10000 * ext_call.return_data[0] * sub_4e6f19e7) + (10000 * sub_0fd989f8[address(msg.sender)].field_0 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0]) / sub_799e68fe / 10^uint8(ext_call.return_data[0])) - sub_0fd989f8[address(msg.sender)].field_256 - ext_call.return_data[32]
                    mem[(8 * ceil32(return_data.size)) + 288] = 68
                    mem[(8 * ceil32(return_data.size)) + 324 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[(8 * ceil32(return_data.size)) + 320 len 4] = unknown_0xa9059cbb(?????)
                    mem[(8 * ceil32(return_data.size)) + 388] = 32
                    mem[(8 * ceil32(return_data.size)) + 420] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(sub_914ef630Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[(8 * ceil32(return_data.size)) + 452 len 96] = unknown_0xa9059cbb(?????), msg.sender, ((10000 * sub_0fd989f8[address(msg.sender)].field_0 * sub_4e6f19e7) + (10000 * ext_call.return_data[0] * sub_4e6f19e7) + (10000 * sub_0fd989f8[address(msg.sender)].field_0 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0]) / sub_799e68fe / 10^uint8(ext_call.return_data[0])) - sub_0fd989f8[address(msg.sender)].field_256 - ext_call.return_data[32], 0
                    mem[(8 * ceil32(return_data.size)) + 520] = 0
                    call sub_914ef630Address with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ((10000 * sub_0fd989f8[address(msg.sender)].field_0 * sub_4e6f19e7) + (10000 * ext_call.return_data[0] * sub_4e6f19e7) + (10000 * sub_0fd989f8[address(msg.sender)].field_0 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0]) / sub_799e68fe / 10^uint8(ext_call.return_data[0])) - sub_0fd989f8[address(msg.sender)].field_256 - ext_call.return_data[32], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ((10000 * sub_0fd989f8[address(msg.sender)].field_0 * sub_4e6f19e7) + (10000 * ext_call.return_data[0] * sub_4e6f19e7) + (10000 * sub_0fd989f8[address(msg.sender)].field_0 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0]) / sub_799e68fe / 10^uint8(ext_call.return_data[0])) - sub_0fd989f8[address(msg.sender)].field_256 - ext_call.return_data[32], 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require ext_call.return_data[32] == bool(ext_call.return_data[32])
                            if not ext_call.return_data[32]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(8 * ceil32(return_data.size)) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(8 * ceil32(return_data.size)) + 484] == bool(mem[(8 * ceil32(return_data.size)) + 484])
                            if not mem[(8 * ceil32(return_data.size)) + 484]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if sub_0fd989f8[msg.sender].field_256 > !(((10000 * sub_0fd989f8[address(msg.sender)].field_0 * sub_4e6f19e7) + (10000 * ext_call.return_data[0] * sub_4e6f19e7) + (10000 * sub_0fd989f8[address(msg.sender)].field_0 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0]) / sub_799e68fe / 10^uint8(ext_call.return_data[0])) - sub_0fd989f8[address(msg.sender)].field_256 - ext_call.return_data[32]):
                        revert with 0, 17
                    sub_0fd989f8[msg.sender].field_256 = sub_0fd989f8[msg.sender].field_256 + ((10000 * sub_0fd989f8[address(msg.sender)].field_0 * sub_4e6f19e7) + (10000 * ext_call.return_data[0] * sub_4e6f19e7) + (10000 * sub_0fd989f8[address(msg.sender)].field_0 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0]) / sub_799e68fe / 10^uint8(ext_call.return_data[0])) - sub_0fd989f8[address(msg.sender)].field_256 - ext_call.return_data[32]
                    emit 0x1f7a8001: msg.sender, ((10000 * sub_0fd989f8[address(msg.sender)].field_0 * sub_4e6f19e7) + (10000 * ext_call.return_data[0] * sub_4e6f19e7) + (10000 * sub_0fd989f8[address(msg.sender)].field_0 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0]) / sub_799e68fe / 10^uint8(ext_call.return_data[0])) - sub_0fd989f8[address(msg.sender)].field_256 - ext_call.return_data[32], block.timestamp
        else:
            s = 10
            t = 1
            idx = uint8(ext_call.return_data[0])
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if sub_4e6f19e7 + ext_call.return_data[0] and sub_0fd989f8[address(msg.sender)].field_0 + ext_call.return_data[0] > -1 / sub_4e6f19e7 + ext_call.return_data[0]:
                revert with 0, 17
            if (sub_0fd989f8[address(msg.sender)].field_0 * sub_4e6f19e7) + (ext_call.return_data[0] * sub_4e6f19e7) + (sub_0fd989f8[address(msg.sender)].field_0 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if not sub_799e68fe:
                revert with 0, 18
            if not s * t:
                revert with 0, 18
            staticcall stor10.0xf40e8471 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[(6 * ceil32(return_data.size)) + 224 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if not bool((7 * ceil32(return_data.size)) + 288 <= test266151307()):
                revert with 0, 65
            mem[(7 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
            mem[(7 * ceil32(return_data.size)) + 256] = ext_call.return_data[32]
            if sub_0fd989f8[address(msg.sender)].field_256 > !ext_call.return_data[32]:
                revert with 0, 17
            if (10000 * sub_0fd989f8[address(msg.sender)].field_0 * sub_4e6f19e7) + (10000 * ext_call.return_data[0] * sub_4e6f19e7) + (10000 * sub_0fd989f8[address(msg.sender)].field_0 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0]) / sub_799e68fe / s * t < sub_0fd989f8[address(msg.sender)].field_256 + ext_call.return_data[32]:
                staticcall sub_914ef630Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            else:
                mem[(7 * ceil32(return_data.size)) + 292] = this.address
                staticcall sub_914ef630Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ((10000 * sub_0fd989f8[address(msg.sender)].field_0 * sub_4e6f19e7) + (10000 * ext_call.return_data[0] * sub_4e6f19e7) + (10000 * sub_0fd989f8[address(msg.sender)].field_0 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0]) / sub_799e68fe / s * t) - sub_0fd989f8[address(msg.sender)].field_256 - ext_call.return_data[32]:
                    if ((10000 * sub_0fd989f8[address(msg.sender)].field_0 * sub_4e6f19e7) + (10000 * ext_call.return_data[0] * sub_4e6f19e7) + (10000 * sub_0fd989f8[address(msg.sender)].field_0 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0]) / sub_799e68fe / s * t) - sub_0fd989f8[address(msg.sender)].field_256 - ext_call.return_data[32] > ext_call.return_data[0]:
                        revert with 0, 'Airdrop: balance not enough'
                    if ext_call.return_data[0] < ((10000 * sub_0fd989f8[address(msg.sender)].field_0 * sub_4e6f19e7) + (10000 * ext_call.return_data[0] * sub_4e6f19e7) + (10000 * sub_0fd989f8[address(msg.sender)].field_0 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0]) / sub_799e68fe / s * t) - sub_0fd989f8[address(msg.sender)].field_256 - ext_call.return_data[32]:
                        revert with 0, 17
                    mem[(8 * ceil32(return_data.size)) + 324] = msg.sender
                    mem[(8 * ceil32(return_data.size)) + 356] = ((10000 * sub_0fd989f8[address(msg.sender)].field_0 * sub_4e6f19e7) + (10000 * ext_call.return_data[0] * sub_4e6f19e7) + (10000 * sub_0fd989f8[address(msg.sender)].field_0 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0]) / sub_799e68fe / s * t) - sub_0fd989f8[address(msg.sender)].field_256 - ext_call.return_data[32]
                    mem[(8 * ceil32(return_data.size)) + 288] = 68
                    mem[(8 * ceil32(return_data.size)) + 324 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[(8 * ceil32(return_data.size)) + 320 len 4] = unknown_0xa9059cbb(?????)
                    mem[(8 * ceil32(return_data.size)) + 388] = 32
                    mem[(8 * ceil32(return_data.size)) + 420] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(sub_914ef630Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[(8 * ceil32(return_data.size)) + 452 len 96] = unknown_0xa9059cbb(?????), msg.sender, ((10000 * sub_0fd989f8[address(msg.sender)].field_0 * sub_4e6f19e7) + (10000 * ext_call.return_data[0] * sub_4e6f19e7) + (10000 * sub_0fd989f8[address(msg.sender)].field_0 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0]) / sub_799e68fe / s * t) - sub_0fd989f8[address(msg.sender)].field_256 - ext_call.return_data[32], 0
                    mem[(8 * ceil32(return_data.size)) + 520] = 0
                    call sub_914ef630Address with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ((10000 * sub_0fd989f8[address(msg.sender)].field_0 * sub_4e6f19e7) + (10000 * ext_call.return_data[0] * sub_4e6f19e7) + (10000 * sub_0fd989f8[address(msg.sender)].field_0 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0]) / sub_799e68fe / s * t) - sub_0fd989f8[address(msg.sender)].field_256 - ext_call.return_data[32], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ((10000 * sub_0fd989f8[address(msg.sender)].field_0 * sub_4e6f19e7) + (10000 * ext_call.return_data[0] * sub_4e6f19e7) + (10000 * sub_0fd989f8[address(msg.sender)].field_0 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0]) / sub_799e68fe / s * t) - sub_0fd989f8[address(msg.sender)].field_256 - ext_call.return_data[32], 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require ext_call.return_data[32] == bool(ext_call.return_data[32])
                            if not ext_call.return_data[32]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(8 * ceil32(return_data.size)) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(8 * ceil32(return_data.size)) + 484] == bool(mem[(8 * ceil32(return_data.size)) + 484])
                            if not mem[(8 * ceil32(return_data.size)) + 484]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if sub_0fd989f8[msg.sender].field_256 > !(((10000 * sub_0fd989f8[address(msg.sender)].field_0 * sub_4e6f19e7) + (10000 * ext_call.return_data[0] * sub_4e6f19e7) + (10000 * sub_0fd989f8[address(msg.sender)].field_0 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0]) / sub_799e68fe / s * t) - sub_0fd989f8[address(msg.sender)].field_256 - ext_call.return_data[32]):
                        revert with 0, 17
                    sub_0fd989f8[msg.sender].field_256 = sub_0fd989f8[msg.sender].field_256 + ((10000 * sub_0fd989f8[address(msg.sender)].field_0 * sub_4e6f19e7) + (10000 * ext_call.return_data[0] * sub_4e6f19e7) + (10000 * sub_0fd989f8[address(msg.sender)].field_0 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0]) / sub_799e68fe / s * t) - sub_0fd989f8[address(msg.sender)].field_256 - ext_call.return_data[32]
                    emit 0x1f7a8001: msg.sender, ((10000 * sub_0fd989f8[address(msg.sender)].field_0 * sub_4e6f19e7) + (10000 * ext_call.return_data[0] * sub_4e6f19e7) + (10000 * sub_0fd989f8[address(msg.sender)].field_0 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0]) / sub_799e68fe / s * t) - sub_0fd989f8[address(msg.sender)].field_256 - ext_call.return_data[32], block.timestamp
    stor1 = 1
}



}
