contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
address stor2;
address stor3;
uint16 sub_a4b34557; offset 160
uint16 sub_e63f1ac8; offset 176
address stor4;
mapping of struct sub_e916de85;
mapping of uint8 stor6;

function sub_76aa24b4(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[arg1])
}

function owner() {
    return owner
}

function sub_a4b34557(?) {
    return sub_a4b34557
}

function sub_e63f1ac8(?) {
    return sub_e63f1ac8
}

function sub_e916de85(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    return sub_e916de85[arg1][arg2].field_0, 
           bool(sub_e916de85[arg1][arg2].field_256),
           sub_e916de85[arg1][arg2].field_256,
           sub_e916de85[arg1][arg2].field_280
}

function _fallback() payable {
  stop
}

function sub_45867a70(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'No: Only Owner'
    stor1[address(arg1)] = 0
}

function sub_6cc9ca71(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'No: Only Owner'
    stor1[address(arg1)] = 1
}

function sub_fac91278(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0, 'NO: Only devs'
    sub_e916de85[address(arg1)][arg2].field_256 = 0
}

function sub_4bc2387c(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint16(arg1)
    require arg2 == uint16(arg2)
    if owner != msg.sender:
        revert with 0, 'No: Only Owner'
    sub_a4b34557 = uint16(arg1)
    sub_e63f1ac8 = uint16(arg2)
}

function withdrawBnb() {
    if owner != msg.sender:
        revert with 0, 'No: Only Owner'
    if eth.balance(this.address) <= 0:
        revert with 0, 'Balance is 0'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'No: Only Owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    stor1[address(arg1)] = 1
    stor1[stor0] = 0
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_bc8d7574(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == uint16(arg2)
    require ext_code.size(stor2)
    staticcall stor2.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Not  the owner'
    require ext_code.size(stor3)
    staticcall stor3.0x9463380b with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    if not bool((2 * ceil32(return_data.size)) + 352 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[126 len 2]
    require ext_call.return_data[128] == ext_call.return_data[158 len 2]
    require ext_call.return_data[160] == ext_call.return_data[191 len 1]
    require ext_call.return_data[192] == ext_call.return_data[223 len 1]
    require ext_call.return_data[224] == ext_call.return_data[255 len 1]
    if ext_call.return_data[126 len 2] < uint16(arg2):
        revert with 0, 'No enough level'
    if ext_call.return_data[255 len 1] > -2:
        revert with 'NH{q', 17
    if ext_call.return_data[191 len 1] > 7:
        if ext_call.return_data[158 len 2] > 500:
            if ext_call.return_data[255 len 1] + 1 > 0x44fc3a34d11c907019de95d3ce6ab62a09b3782f6d68044fc3a34d11c90701:
                revert with 'NH{q', 17
            if (950 * ext_call.return_data[255 len 1]) + 950 > -sub_a4b34557 - 1:
                revert with 'NH{q', 17
            if sub_e63f1ac8 > 0x2aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa:
                revert with 'NH{q', 17
            if uint16((950 * ext_call.return_data[255 len 1]) + sub_a4b34557 + 950) / 2 > (-6 * sub_e63f1ac8) - 1:
                revert with 'NH{q', 17
            sub_e916de85[address(msg.sender)][arg1].field_0 = block.timestamp
            sub_e916de85[address(msg.sender)][arg1].field_256 = 1
            sub_e916de85[address(msg.sender)][arg1].field_264 = uint16((uint16((950 * uint8(ext_call.return_data[224])) + sub_a4b34557 + 950) / 2) + (6 * sub_e63f1ac8))
        else:
            if uint16(ext_call.return_data[128]) / 2 > -701:
                revert with 'NH{q', 17
            if (uint16(ext_call.return_data[128]) / 2) + 700 and ext_call.return_data[255 len 1] + 1 > -1 / (uint16(ext_call.return_data[128]) / 2) + 700:
                revert with 'NH{q', 17
            if (700 * ext_call.return_data[255 len 1]) + (uint16(ext_call.return_data[128]) / 2) + (ext_call.return_data[255 len 1] * uint16(ext_call.return_data[128]) / 2) + 700 > -sub_a4b34557 - 1:
                revert with 'NH{q', 17
            if sub_e63f1ac8 > 0x2aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa:
                revert with 'NH{q', 17
            if uint16((700 * ext_call.return_data[255 len 1]) + (uint16(ext_call.return_data[128]) / 2) + (ext_call.return_data[255 len 1] * uint16(ext_call.return_data[128]) / 2) + sub_a4b34557 + 700) / 2 > (-6 * sub_e63f1ac8) - 1:
                revert with 'NH{q', 17
            sub_e916de85[address(msg.sender)][arg1].field_0 = block.timestamp
            sub_e916de85[address(msg.sender)][arg1].field_256 = 1
            sub_e916de85[address(msg.sender)][arg1].field_264 = uint16((uint16((700 * ext_call.return_data[255 len 1]) + (uint16(ext_call.return_data[128]) / 2) + (ext_call.return_data[255 len 1] * uint16(ext_call.return_data[128]) / 2) + sub_a4b34557 + 700) / 2) + (6 * sub_e63f1ac8))
    else:
        if ext_call.return_data[191 len 1] and 100 > -1 / ext_call.return_data[191 len 1]:
            revert with 'NH{q', 17
        if ext_call.return_data[158 len 2] <= 500:
            if uint16(ext_call.return_data[128]) / 2 > (-100 * ext_call.return_data[191 len 1]) - 1:
                revert with 'NH{q', 17
            if (uint16(ext_call.return_data[128]) / 2) + (100 * ext_call.return_data[191 len 1]) and ext_call.return_data[255 len 1] + 1 > -1 / (uint16(ext_call.return_data[128]) / 2) + (100 * ext_call.return_data[191 len 1]):
                revert with 'NH{q', 17
            if (uint16(ext_call.return_data[128]) / 2) + (ext_call.return_data[255 len 1] * uint16(ext_call.return_data[128]) / 2) + (100 * ext_call.return_data[191 len 1]) + (100 * ext_call.return_data[255 len 1] * ext_call.return_data[191 len 1]) > -sub_a4b34557 - 1:
                revert with 'NH{q', 17
            if ext_call.return_data[191 len 1] < 1:
                revert with 'NH{q', 17
            if ext_call.return_data[191 len 1] - 1 and sub_e63f1ac8 > -1 / ext_call.return_data[191 len 1] - 1:
                revert with 'NH{q', 17
            if uint16((uint16(ext_call.return_data[128]) / 2) + (ext_call.return_data[255 len 1] * uint16(ext_call.return_data[128]) / 2) + (100 * ext_call.return_data[191 len 1]) + (100 * ext_call.return_data[255 len 1] * ext_call.return_data[191 len 1]) + sub_a4b34557) / 2 > sub_e63f1ac8 + (-1 * ext_call.return_data[191 len 1] * sub_e63f1ac8) - 1:
                revert with 'NH{q', 17
            sub_e916de85[address(msg.sender)][arg1].field_0 = block.timestamp
            sub_e916de85[address(msg.sender)][arg1].field_256 = 1
            sub_e916de85[address(msg.sender)][arg1].field_264 = uint16((uint16((uint16(ext_call.return_data[128]) / 2) + (ext_call.return_data[255 len 1] * uint16(ext_call.return_data[128]) / 2) + (100 * ext_call.return_data[191 len 1]) + (100 * ext_call.return_data[255 len 1] * ext_call.return_data[191 len 1]) + sub_a4b34557) / 2) - sub_e63f1ac8 + (ext_call.return_data[191 len 1] * sub_e63f1ac8))
        else:
            if 250 > (-100 * ext_call.return_data[191 len 1]) - 1:
                revert with 'NH{q', 17
            if (100 * ext_call.return_data[191 len 1]) + 250 and ext_call.return_data[255 len 1] + 1 > -1 / (100 * ext_call.return_data[191 len 1]) + 250:
                revert with 'NH{q', 17
            if (250 * ext_call.return_data[255 len 1]) + (100 * ext_call.return_data[191 len 1]) + (100 * ext_call.return_data[255 len 1] * ext_call.return_data[191 len 1]) + 250 > -sub_a4b34557 - 1:
                revert with 'NH{q', 17
            if ext_call.return_data[191 len 1] < 1:
                revert with 'NH{q', 17
            if ext_call.return_data[191 len 1] - 1 and sub_e63f1ac8 > -1 / ext_call.return_data[191 len 1] - 1:
                revert with 'NH{q', 17
            if uint16((250 * ext_call.return_data[255 len 1]) + (100 * ext_call.return_data[191 len 1]) + (100 * ext_call.return_data[255 len 1] * ext_call.return_data[191 len 1]) + sub_a4b34557 + 250) / 2 > sub_e63f1ac8 + (-1 * ext_call.return_data[191 len 1] * sub_e63f1ac8) - 1:
                revert with 'NH{q', 17
            sub_e916de85[address(msg.sender)][arg1].field_0 = block.timestamp
            sub_e916de85[address(msg.sender)][arg1].field_256 = 1
            sub_e916de85[address(msg.sender)][arg1].field_264 = uint16((uint16((250 * ext_call.return_data[255 len 1]) + (100 * uint8(ext_call.return_data[160])) + (100 * ext_call.return_data[255 len 1] * uint8(ext_call.return_data[160])) + sub_a4b34557 + 250) / 2) - sub_e63f1ac8 + (uint8(ext_call.return_data[160]) * sub_e63f1ac8))
    sub_e916de85[address(msg.sender)][arg1].field_280 = uint16(arg2)
    if uint16(arg2) >= 10:
        if bool(stor6[arg1]) == 1:
            stor6[arg1] = 0
    else:
        if sha3(block.difficulty, block.timestamp, arg1, msg.sender, eth.balance(msg.sender)) % 1000 > -1:
            revert with 'NH{q', 17
        if sha3(block.difficulty, block.timestamp, arg1, msg.sender, eth.balance(msg.sender)) % 1000 > 500:
            stor6[arg1] = 1
        else:
            if bool(stor6[arg1]) == 1:
                stor6[arg1] = 0
    emit 0x8a019636: arg1, arg2 << 240, bool(stor6[arg1]), msg.sender
}

function sub_7cf3a941(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if bool(sub_e916de85[address(arg1)][arg2].field_256) != 1:
        revert with 0, 'Is not in Stake'
    if block.timestamp < sub_e916de85[address(arg1)][arg2].field_0:
        revert with 'NH{q', 17
    if sub_e916de85[address(arg1)][arg2].field_264 and 10^18 > -1 / sub_e916de85[address(arg1)][arg2].field_264:
        revert with 'NH{q', 17
    if sub_e916de85[address(arg1)][arg2].field_280 == 3:
        if sub_e916de85[address(arg1)][arg2].field_280 >= 10:
            if block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 and 24000 > -1 / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0:
                revert with 'NH{q', 17
            if 0 > (-24000 * block.timestamp) + (24000 * sub_e916de85[address(arg1)][arg2].field_0) - 1:
                revert with 'NH{q', 17
            if 0 > (-24000 * block.timestamp) + (24000 * sub_e916de85[address(arg1)][arg2].field_0) - 1:
                revert with 'NH{q', 17
            if not block.timestamp - sub_e916de85[address(arg1)][arg2].field_0:
                revert with 'NH{q', 18
            if 10^18 * sub_e916de85[address(arg1)][arg2].field_264 and (24000 * block.timestamp) - (24000 * sub_e916de85[address(arg1)][arg2].field_0) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 > -1 / 10^18 * sub_e916de85[address(arg1)][arg2].field_264:
                revert with 'NH{q', 17
            if 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (24000 * block.timestamp) - (24000 * sub_e916de85[address(arg1)][arg2].field_0) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000 and block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 > -1 / 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (24000 * block.timestamp) - (24000 * sub_e916de85[address(arg1)][arg2].field_0) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000:
                revert with 'NH{q', 17
            return block.timestamp - sub_e916de85[address(arg1)][arg2].field_0, 
                   (block.timestamp * 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (24000 * block.timestamp) - (24000 * sub_e916de85[address(arg1)][arg2].field_0) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000) - (sub_e916de85[address(arg1)][arg2].field_0 * 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (24000 * block.timestamp) - (24000 * sub_e916de85[address(arg1)][arg2].field_0) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000) / 365 / 24 * 3600
        if block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 > 360 * 24 * 3600:
            if block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 < 360 * 24 * 3600:
                revert with 'NH{q', 17
            if block.timestamp + -sub_e916de85[address(arg1)][arg2].field_0 - (360 * 24 * 3600) and 6000 > -1 / block.timestamp + -sub_e916de85[address(arg1)][arg2].field_0 - (360 * 24 * 3600):
                revert with 'NH{q', 17
            if bool(stor6[arg2]) != 1:
                if (6000 * block.timestamp) + (-6000 * sub_e916de85[address(arg1)][arg2].field_0) - (600 * 24 * 3600 * 24 * 3600) > -31104000001:
                    revert with 'NH{q', 17
                if not block.timestamp - sub_e916de85[address(arg1)][arg2].field_0:
                    revert with 'NH{q', 18
                if 10^18 * sub_e916de85[address(arg1)][arg2].field_264 and (6000 * block.timestamp) + (-6000 * sub_e916de85[address(arg1)][arg2].field_0) + (1800 * 24 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 > -1 / 10^18 * sub_e916de85[address(arg1)][arg2].field_264:
                    revert with 'NH{q', 17
                if 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (6000 * block.timestamp) + (-6000 * sub_e916de85[address(arg1)][arg2].field_0) + (1800 * 24 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000 and block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 > -1 / 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (6000 * block.timestamp) + (-6000 * sub_e916de85[address(arg1)][arg2].field_0) + (1800 * 24 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000:
                    revert with 'NH{q', 17
                return block.timestamp - sub_e916de85[address(arg1)][arg2].field_0, 
                       (block.timestamp * 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (6000 * block.timestamp) + (-6000 * sub_e916de85[address(arg1)][arg2].field_0) + (1800 * 24 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000) - (sub_e916de85[address(arg1)][arg2].field_0 * 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (6000 * block.timestamp) + (-6000 * sub_e916de85[address(arg1)][arg2].field_0) + (1800 * 24 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000) / 365 / 24 * 3600
            if (6000 * block.timestamp) + (-6000 * sub_e916de85[address(arg1)][arg2].field_0) - (600 * 24 * 3600 * 24 * 3600) > -23846400001:
                revert with 'NH{q', 17
            if not block.timestamp - sub_e916de85[address(arg1)][arg2].field_0:
                revert with 'NH{q', 18
            if 10^18 * sub_e916de85[address(arg1)][arg2].field_264 and (6000 * block.timestamp) + (-6000 * sub_e916de85[address(arg1)][arg2].field_0) + (1240 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 > -1 / 10^18 * sub_e916de85[address(arg1)][arg2].field_264:
                revert with 'NH{q', 17
            if 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (6000 * block.timestamp) + (-6000 * sub_e916de85[address(arg1)][arg2].field_0) + (1240 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000 and block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 > -1 / 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (6000 * block.timestamp) + (-6000 * sub_e916de85[address(arg1)][arg2].field_0) + (1240 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000:
                revert with 'NH{q', 17
            return block.timestamp - sub_e916de85[address(arg1)][arg2].field_0, 
                   (block.timestamp * 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (6000 * block.timestamp) + (-6000 * sub_e916de85[address(arg1)][arg2].field_0) + (1240 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000) - (sub_e916de85[address(arg1)][arg2].field_0 * 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (6000 * block.timestamp) + (-6000 * sub_e916de85[address(arg1)][arg2].field_0) + (1240 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000) / 365 / 24 * 3600
        if block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 <= 168 * 24 * 3600:
            if block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 and 24000 > -1 / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0:
                revert with 'NH{q', 17
            if 0 > (-24000 * block.timestamp) + (24000 * sub_e916de85[address(arg1)][arg2].field_0) - 1:
                revert with 'NH{q', 17
            if 0 > (-24000 * block.timestamp) + (24000 * sub_e916de85[address(arg1)][arg2].field_0) - 1:
                revert with 'NH{q', 17
            if not block.timestamp - sub_e916de85[address(arg1)][arg2].field_0:
                revert with 'NH{q', 18
            if 10^18 * sub_e916de85[address(arg1)][arg2].field_264 and (24000 * block.timestamp) - (24000 * sub_e916de85[address(arg1)][arg2].field_0) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 > -1 / 10^18 * sub_e916de85[address(arg1)][arg2].field_264:
                revert with 'NH{q', 17
            if 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (24000 * block.timestamp) - (24000 * sub_e916de85[address(arg1)][arg2].field_0) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000 and block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 > -1 / 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (24000 * block.timestamp) - (24000 * sub_e916de85[address(arg1)][arg2].field_0) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000:
                revert with 'NH{q', 17
            return block.timestamp - sub_e916de85[address(arg1)][arg2].field_0, 
                   (block.timestamp * 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (24000 * block.timestamp) - (24000 * sub_e916de85[address(arg1)][arg2].field_0) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000) - (sub_e916de85[address(arg1)][arg2].field_0 * 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (24000 * block.timestamp) - (24000 * sub_e916de85[address(arg1)][arg2].field_0) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000) / 365 / 24 * 3600
        if bool(stor6[arg2]) != 1:
            if block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 and 24000 > -1 / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0:
                revert with 'NH{q', 17
            if 0 > (-24000 * block.timestamp) + (24000 * sub_e916de85[address(arg1)][arg2].field_0) - 1:
                revert with 'NH{q', 17
            if 0 > (-24000 * block.timestamp) + (24000 * sub_e916de85[address(arg1)][arg2].field_0) - 1:
                revert with 'NH{q', 17
            if not block.timestamp - sub_e916de85[address(arg1)][arg2].field_0:
                revert with 'NH{q', 18
            if 10^18 * sub_e916de85[address(arg1)][arg2].field_264 and (24000 * block.timestamp) - (24000 * sub_e916de85[address(arg1)][arg2].field_0) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 > -1 / 10^18 * sub_e916de85[address(arg1)][arg2].field_264:
                revert with 'NH{q', 17
            if 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (24000 * block.timestamp) - (24000 * sub_e916de85[address(arg1)][arg2].field_0) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000 and block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 > -1 / 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (24000 * block.timestamp) - (24000 * sub_e916de85[address(arg1)][arg2].field_0) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000:
                revert with 'NH{q', 17
            return block.timestamp - sub_e916de85[address(arg1)][arg2].field_0, 
                   (block.timestamp * 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (24000 * block.timestamp) - (24000 * sub_e916de85[address(arg1)][arg2].field_0) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000) - (sub_e916de85[address(arg1)][arg2].field_0 * 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (24000 * block.timestamp) - (24000 * sub_e916de85[address(arg1)][arg2].field_0) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000) / 365 / 24 * 3600
        if block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 < 168 * 24 * 3600:
            revert with 'NH{q', 17
        if block.timestamp + -sub_e916de85[address(arg1)][arg2].field_0 - (168 * 24 * 3600) and 12000 > -1 / block.timestamp + -sub_e916de85[address(arg1)][arg2].field_0 - (168 * 24 * 3600):
            revert with 'NH{q', 17
        if (12000 * block.timestamp) + (-12000 * sub_e916de85[address(arg1)][arg2].field_0) - (560 * 3600 * 24 * 3600) > -14515200001:
            revert with 'NH{q', 17
        if 0 > (-12000 * block.timestamp) + (12000 * sub_e916de85[address(arg1)][arg2].field_0) - 7257600001:
            revert with 'NH{q', 17
        if not block.timestamp - sub_e916de85[address(arg1)][arg2].field_0:
            revert with 'NH{q', 18
        if 10^18 * sub_e916de85[address(arg1)][arg2].field_264 and (12000 * block.timestamp) + (-12000 * sub_e916de85[address(arg1)][arg2].field_0) + (560 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 > -1 / 10^18 * sub_e916de85[address(arg1)][arg2].field_264:
            revert with 'NH{q', 17
        if 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (12000 * block.timestamp) + (-12000 * sub_e916de85[address(arg1)][arg2].field_0) + (560 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000 and block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 > -1 / 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (12000 * block.timestamp) + (-12000 * sub_e916de85[address(arg1)][arg2].field_0) + (560 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000:
            revert with 'NH{q', 17
        return block.timestamp - sub_e916de85[address(arg1)][arg2].field_0, 
               (block.timestamp * 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (12000 * block.timestamp) + (-12000 * sub_e916de85[address(arg1)][arg2].field_0) + (560 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000) - (sub_e916de85[address(arg1)][arg2].field_0 * 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (12000 * block.timestamp) + (-12000 * sub_e916de85[address(arg1)][arg2].field_0) + (560 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000) / 365 / 24 * 3600
    if sub_e916de85[address(arg1)][arg2].field_280 != 6:
        if sub_e916de85[address(arg1)][arg2].field_280 != 10:
            if sub_e916de85[address(arg1)][arg2].field_280 >= 10:
                if block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 and 12000 > -1 / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0:
                    revert with 'NH{q', 17
                if 0 > (-12000 * block.timestamp) + (12000 * sub_e916de85[address(arg1)][arg2].field_0) - 1:
                    revert with 'NH{q', 17
                if 0 > (-12000 * block.timestamp) + (12000 * sub_e916de85[address(arg1)][arg2].field_0) - 1:
                    revert with 'NH{q', 17
                if not block.timestamp - sub_e916de85[address(arg1)][arg2].field_0:
                    revert with 'NH{q', 18
                if 10^18 * sub_e916de85[address(arg1)][arg2].field_264 and (12000 * block.timestamp) - (12000 * sub_e916de85[address(arg1)][arg2].field_0) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 > -1 / 10^18 * sub_e916de85[address(arg1)][arg2].field_264:
                    revert with 'NH{q', 17
                if 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (12000 * block.timestamp) - (12000 * sub_e916de85[address(arg1)][arg2].field_0) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000 and block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 > -1 / 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (12000 * block.timestamp) - (12000 * sub_e916de85[address(arg1)][arg2].field_0) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000:
                    revert with 'NH{q', 17
                return block.timestamp - sub_e916de85[address(arg1)][arg2].field_0, 
                       (block.timestamp * 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (12000 * block.timestamp) - (12000 * sub_e916de85[address(arg1)][arg2].field_0) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000) - (sub_e916de85[address(arg1)][arg2].field_0 * 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (12000 * block.timestamp) - (12000 * sub_e916de85[address(arg1)][arg2].field_0) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000) / 365 / 24 * 3600
            if block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 > 360 * 24 * 3600:
                if block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 < 360 * 24 * 3600:
                    revert with 'NH{q', 17
                if block.timestamp + -sub_e916de85[address(arg1)][arg2].field_0 - (360 * 24 * 3600) and 3000 > -1 / block.timestamp + -sub_e916de85[address(arg1)][arg2].field_0 - (360 * 24 * 3600):
                    revert with 'NH{q', 17
                if bool(stor6[arg2]) != 1:
                    if (3000 * block.timestamp) + (-3000 * sub_e916de85[address(arg1)][arg2].field_0) - (300 * 3600 * 24 * 3600) > -15552000001:
                        revert with 'NH{q', 17
                    if not block.timestamp - sub_e916de85[address(arg1)][arg2].field_0:
                        revert with 'NH{q', 18
                    if 10^18 * sub_e916de85[address(arg1)][arg2].field_264 and (3000 * block.timestamp) + (-3000 * sub_e916de85[address(arg1)][arg2].field_0) + (900 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 > -1 / 10^18 * sub_e916de85[address(arg1)][arg2].field_264:
                        revert with 'NH{q', 17
                    if 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (3000 * block.timestamp) + (-3000 * sub_e916de85[address(arg1)][arg2].field_0) + (900 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000 and block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 > -1 / 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (3000 * block.timestamp) + (-3000 * sub_e916de85[address(arg1)][arg2].field_0) + (900 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000:
                        revert with 'NH{q', 17
                    return block.timestamp - sub_e916de85[address(arg1)][arg2].field_0, 
                           (block.timestamp * 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (3000 * block.timestamp) + (-3000 * sub_e916de85[address(arg1)][arg2].field_0) + (900 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000) - (sub_e916de85[address(arg1)][arg2].field_0 * 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (3000 * block.timestamp) + (-3000 * sub_e916de85[address(arg1)][arg2].field_0) + (900 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000) / 365 / 24 * 3600
                if (3000 * block.timestamp) + (-3000 * sub_e916de85[address(arg1)][arg2].field_0) - (300 * 3600 * 24 * 3600) > -11923200001:
                    revert with 'NH{q', 17
                if not block.timestamp - sub_e916de85[address(arg1)][arg2].field_0:
                    revert with 'NH{q', 18
                if 10^18 * sub_e916de85[address(arg1)][arg2].field_264 and (3000 * block.timestamp) + (-3000 * sub_e916de85[address(arg1)][arg2].field_0) + (620 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 > -1 / 10^18 * sub_e916de85[address(arg1)][arg2].field_264:
                    revert with 'NH{q', 17
                if 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (3000 * block.timestamp) + (-3000 * sub_e916de85[address(arg1)][arg2].field_0) + (620 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000 and block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 > -1 / 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (3000 * block.timestamp) + (-3000 * sub_e916de85[address(arg1)][arg2].field_0) + (620 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000:
                    revert with 'NH{q', 17
                return block.timestamp - sub_e916de85[address(arg1)][arg2].field_0, 
                       (block.timestamp * 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (3000 * block.timestamp) + (-3000 * sub_e916de85[address(arg1)][arg2].field_0) + (620 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000) - (sub_e916de85[address(arg1)][arg2].field_0 * 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (3000 * block.timestamp) + (-3000 * sub_e916de85[address(arg1)][arg2].field_0) + (620 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000) / 365 / 24 * 3600
            if block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 <= 168 * 24 * 3600:
                if block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 and 12000 > -1 / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0:
                    revert with 'NH{q', 17
                if 0 > (-12000 * block.timestamp) + (12000 * sub_e916de85[address(arg1)][arg2].field_0) - 1:
                    revert with 'NH{q', 17
                if 0 > (-12000 * block.timestamp) + (12000 * sub_e916de85[address(arg1)][arg2].field_0) - 1:
                    revert with 'NH{q', 17
                if not block.timestamp - sub_e916de85[address(arg1)][arg2].field_0:
                    revert with 'NH{q', 18
                if 10^18 * sub_e916de85[address(arg1)][arg2].field_264 and (12000 * block.timestamp) - (12000 * sub_e916de85[address(arg1)][arg2].field_0) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 > -1 / 10^18 * sub_e916de85[address(arg1)][arg2].field_264:
                    revert with 'NH{q', 17
                if 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (12000 * block.timestamp) - (12000 * sub_e916de85[address(arg1)][arg2].field_0) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000 and block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 > -1 / 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (12000 * block.timestamp) - (12000 * sub_e916de85[address(arg1)][arg2].field_0) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000:
                    revert with 'NH{q', 17
                return block.timestamp - sub_e916de85[address(arg1)][arg2].field_0, 
                       (block.timestamp * 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (12000 * block.timestamp) - (12000 * sub_e916de85[address(arg1)][arg2].field_0) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000) - (sub_e916de85[address(arg1)][arg2].field_0 * 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (12000 * block.timestamp) - (12000 * sub_e916de85[address(arg1)][arg2].field_0) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000) / 365 / 24 * 3600
            if bool(stor6[arg2]) != 1:
                if block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 and 12000 > -1 / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0:
                    revert with 'NH{q', 17
                if 0 > (-12000 * block.timestamp) + (12000 * sub_e916de85[address(arg1)][arg2].field_0) - 1:
                    revert with 'NH{q', 17
                if 0 > (-12000 * block.timestamp) + (12000 * sub_e916de85[address(arg1)][arg2].field_0) - 1:
                    revert with 'NH{q', 17
                if not block.timestamp - sub_e916de85[address(arg1)][arg2].field_0:
                    revert with 'NH{q', 18
                if 10^18 * sub_e916de85[address(arg1)][arg2].field_264 and (12000 * block.timestamp) - (12000 * sub_e916de85[address(arg1)][arg2].field_0) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 > -1 / 10^18 * sub_e916de85[address(arg1)][arg2].field_264:
                    revert with 'NH{q', 17
                if 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (12000 * block.timestamp) - (12000 * sub_e916de85[address(arg1)][arg2].field_0) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000 and block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 > -1 / 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (12000 * block.timestamp) - (12000 * sub_e916de85[address(arg1)][arg2].field_0) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000:
                    revert with 'NH{q', 17
                return block.timestamp - sub_e916de85[address(arg1)][arg2].field_0, 
                       (block.timestamp * 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (12000 * block.timestamp) - (12000 * sub_e916de85[address(arg1)][arg2].field_0) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000) - (sub_e916de85[address(arg1)][arg2].field_0 * 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (12000 * block.timestamp) - (12000 * sub_e916de85[address(arg1)][arg2].field_0) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000) / 365 / 24 * 3600
            if block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 < 168 * 24 * 3600:
                revert with 'NH{q', 17
            if block.timestamp + -sub_e916de85[address(arg1)][arg2].field_0 - (168 * 24 * 3600) and 6000 > -1 / block.timestamp + -sub_e916de85[address(arg1)][arg2].field_0 - (168 * 24 * 3600):
                revert with 'NH{q', 17
            if (6000 * block.timestamp) + (-6000 * sub_e916de85[address(arg1)][arg2].field_0) - (280 * 3600 * 24 * 3600) > -7257600001:
                revert with 'NH{q', 17
            if 0 > (-6000 * block.timestamp) + (6000 * sub_e916de85[address(arg1)][arg2].field_0) - 3628800001:
                revert with 'NH{q', 17
            if not block.timestamp - sub_e916de85[address(arg1)][arg2].field_0:
                revert with 'NH{q', 18
            if 10^18 * sub_e916de85[address(arg1)][arg2].field_264 and (6000 * block.timestamp) + (-6000 * sub_e916de85[address(arg1)][arg2].field_0) + (280 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 > -1 / 10^18 * sub_e916de85[address(arg1)][arg2].field_264:
                revert with 'NH{q', 17
            if 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (6000 * block.timestamp) + (-6000 * sub_e916de85[address(arg1)][arg2].field_0) + (280 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000 and block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 > -1 / 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (6000 * block.timestamp) + (-6000 * sub_e916de85[address(arg1)][arg2].field_0) + (280 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000:
                revert with 'NH{q', 17
            return block.timestamp - sub_e916de85[address(arg1)][arg2].field_0, 
                   (block.timestamp * 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (6000 * block.timestamp) + (-6000 * sub_e916de85[address(arg1)][arg2].field_0) + (280 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000) - (sub_e916de85[address(arg1)][arg2].field_0 * 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (6000 * block.timestamp) + (-6000 * sub_e916de85[address(arg1)][arg2].field_0) + (280 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000) / 365 / 24 * 3600
    if sub_e916de85[address(arg1)][arg2].field_280 >= 10:
        if block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 and 48000 > -1 / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0:
            revert with 'NH{q', 17
        if 0 > (-48000 * block.timestamp) + (48000 * sub_e916de85[address(arg1)][arg2].field_0) - 1:
            revert with 'NH{q', 17
        if 0 > (-48000 * block.timestamp) + (48000 * sub_e916de85[address(arg1)][arg2].field_0) - 1:
            revert with 'NH{q', 17
        if not block.timestamp - sub_e916de85[address(arg1)][arg2].field_0:
            revert with 'NH{q', 18
        if 10^18 * sub_e916de85[address(arg1)][arg2].field_264 and (48000 * block.timestamp) - (48000 * sub_e916de85[address(arg1)][arg2].field_0) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 > -1 / 10^18 * sub_e916de85[address(arg1)][arg2].field_264:
            revert with 'NH{q', 17
        if 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (48000 * block.timestamp) - (48000 * sub_e916de85[address(arg1)][arg2].field_0) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000 and block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 > -1 / 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (48000 * block.timestamp) - (48000 * sub_e916de85[address(arg1)][arg2].field_0) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000:
            revert with 'NH{q', 17
        return block.timestamp - sub_e916de85[address(arg1)][arg2].field_0, 
               (block.timestamp * 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (48000 * block.timestamp) - (48000 * sub_e916de85[address(arg1)][arg2].field_0) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000) - (sub_e916de85[address(arg1)][arg2].field_0 * 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (48000 * block.timestamp) - (48000 * sub_e916de85[address(arg1)][arg2].field_0) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000) / 365 / 24 * 3600
    if block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 > 360 * 24 * 3600:
        if block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 < 360 * 24 * 3600:
            revert with 'NH{q', 17
        if block.timestamp + -sub_e916de85[address(arg1)][arg2].field_0 - (360 * 24 * 3600) and 12000 > -1 / block.timestamp + -sub_e916de85[address(arg1)][arg2].field_0 - (360 * 24 * 3600):
            revert with 'NH{q', 17
        if bool(stor6[arg2]) != 1:
            if (12000 * block.timestamp) + (-12000 * sub_e916de85[address(arg1)][arg2].field_0) - (1200 * 24 * 3600 * 24 * 3600) > -62208000001:
                revert with 'NH{q', 17
            if not block.timestamp - sub_e916de85[address(arg1)][arg2].field_0:
                revert with 'NH{q', 18
            if 10^18 * sub_e916de85[address(arg1)][arg2].field_264 and (12000 * block.timestamp) + (-12000 * sub_e916de85[address(arg1)][arg2].field_0) + (3600 * 24 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 > -1 / 10^18 * sub_e916de85[address(arg1)][arg2].field_264:
                revert with 'NH{q', 17
            if 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (12000 * block.timestamp) + (-12000 * sub_e916de85[address(arg1)][arg2].field_0) + (3600 * 24 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000 and block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 > -1 / 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (12000 * block.timestamp) + (-12000 * sub_e916de85[address(arg1)][arg2].field_0) + (3600 * 24 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000:
                revert with 'NH{q', 17
            return block.timestamp - sub_e916de85[address(arg1)][arg2].field_0, 
                   (block.timestamp * 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (12000 * block.timestamp) + (-12000 * sub_e916de85[address(arg1)][arg2].field_0) + (3600 * 24 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000) - (sub_e916de85[address(arg1)][arg2].field_0 * 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (12000 * block.timestamp) + (-12000 * sub_e916de85[address(arg1)][arg2].field_0) + (3600 * 24 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000) / 365 / 24 * 3600
        if (12000 * block.timestamp) + (-12000 * sub_e916de85[address(arg1)][arg2].field_0) - (1200 * 24 * 3600 * 24 * 3600) > -47692800001:
            revert with 'NH{q', 17
        if not block.timestamp - sub_e916de85[address(arg1)][arg2].field_0:
            revert with 'NH{q', 18
        if 10^18 * sub_e916de85[address(arg1)][arg2].field_264 and (12000 * block.timestamp) + (-12000 * sub_e916de85[address(arg1)][arg2].field_0) + (2480 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 > -1 / 10^18 * sub_e916de85[address(arg1)][arg2].field_264:
            revert with 'NH{q', 17
        if 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (12000 * block.timestamp) + (-12000 * sub_e916de85[address(arg1)][arg2].field_0) + (2480 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000 and block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 > -1 / 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (12000 * block.timestamp) + (-12000 * sub_e916de85[address(arg1)][arg2].field_0) + (2480 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000:
            revert with 'NH{q', 17
        return block.timestamp - sub_e916de85[address(arg1)][arg2].field_0, 
               (block.timestamp * 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (12000 * block.timestamp) + (-12000 * sub_e916de85[address(arg1)][arg2].field_0) + (2480 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000) - (sub_e916de85[address(arg1)][arg2].field_0 * 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (12000 * block.timestamp) + (-12000 * sub_e916de85[address(arg1)][arg2].field_0) + (2480 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000) / 365 / 24 * 3600
    if block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 <= 168 * 24 * 3600:
        if block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 and 48000 > -1 / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0:
            revert with 'NH{q', 17
        if 0 > (-48000 * block.timestamp) + (48000 * sub_e916de85[address(arg1)][arg2].field_0) - 1:
            revert with 'NH{q', 17
        if 0 > (-48000 * block.timestamp) + (48000 * sub_e916de85[address(arg1)][arg2].field_0) - 1:
            revert with 'NH{q', 17
        if not block.timestamp - sub_e916de85[address(arg1)][arg2].field_0:
            revert with 'NH{q', 18
        if 10^18 * sub_e916de85[address(arg1)][arg2].field_264 and (48000 * block.timestamp) - (48000 * sub_e916de85[address(arg1)][arg2].field_0) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 > -1 / 10^18 * sub_e916de85[address(arg1)][arg2].field_264:
            revert with 'NH{q', 17
        if 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (48000 * block.timestamp) - (48000 * sub_e916de85[address(arg1)][arg2].field_0) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000 and block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 > -1 / 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (48000 * block.timestamp) - (48000 * sub_e916de85[address(arg1)][arg2].field_0) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000:
            revert with 'NH{q', 17
        return block.timestamp - sub_e916de85[address(arg1)][arg2].field_0, 
               (block.timestamp * 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (48000 * block.timestamp) - (48000 * sub_e916de85[address(arg1)][arg2].field_0) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000) - (sub_e916de85[address(arg1)][arg2].field_0 * 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (48000 * block.timestamp) - (48000 * sub_e916de85[address(arg1)][arg2].field_0) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000) / 365 / 24 * 3600
    if bool(stor6[arg2]) != 1:
        if block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 and 48000 > -1 / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0:
            revert with 'NH{q', 17
        if 0 > (-48000 * block.timestamp) + (48000 * sub_e916de85[address(arg1)][arg2].field_0) - 1:
            revert with 'NH{q', 17
        if 0 > (-48000 * block.timestamp) + (48000 * sub_e916de85[address(arg1)][arg2].field_0) - 1:
            revert with 'NH{q', 17
        if not block.timestamp - sub_e916de85[address(arg1)][arg2].field_0:
            revert with 'NH{q', 18
        if 10^18 * sub_e916de85[address(arg1)][arg2].field_264 and (48000 * block.timestamp) - (48000 * sub_e916de85[address(arg1)][arg2].field_0) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 > -1 / 10^18 * sub_e916de85[address(arg1)][arg2].field_264:
            revert with 'NH{q', 17
        if 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (48000 * block.timestamp) - (48000 * sub_e916de85[address(arg1)][arg2].field_0) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000 and block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 > -1 / 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (48000 * block.timestamp) - (48000 * sub_e916de85[address(arg1)][arg2].field_0) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000:
            revert with 'NH{q', 17
        return block.timestamp - sub_e916de85[address(arg1)][arg2].field_0, 
               (block.timestamp * 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (48000 * block.timestamp) - (48000 * sub_e916de85[address(arg1)][arg2].field_0) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000) - (sub_e916de85[address(arg1)][arg2].field_0 * 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (48000 * block.timestamp) - (48000 * sub_e916de85[address(arg1)][arg2].field_0) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000) / 365 / 24 * 3600
    if block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 < 168 * 24 * 3600:
        revert with 'NH{q', 17
    if block.timestamp + -sub_e916de85[address(arg1)][arg2].field_0 - (168 * 24 * 3600) and 24000 > -1 / block.timestamp + -sub_e916de85[address(arg1)][arg2].field_0 - (168 * 24 * 3600):
        revert with 'NH{q', 17
    if (24000 * block.timestamp) + (-24000 * sub_e916de85[address(arg1)][arg2].field_0) - (1120 * 3600 * 24 * 3600) > -29030400001:
        revert with 'NH{q', 17
    if 0 > (-24000 * block.timestamp) + (24000 * sub_e916de85[address(arg1)][arg2].field_0) - 14515200001:
        revert with 'NH{q', 17
    if not block.timestamp - sub_e916de85[address(arg1)][arg2].field_0:
        revert with 'NH{q', 18
    if 10^18 * sub_e916de85[address(arg1)][arg2].field_264 and (24000 * block.timestamp) + (-24000 * sub_e916de85[address(arg1)][arg2].field_0) + (1120 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 > -1 / 10^18 * sub_e916de85[address(arg1)][arg2].field_264:
        revert with 'NH{q', 17
    if 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (24000 * block.timestamp) + (-24000 * sub_e916de85[address(arg1)][arg2].field_0) + (1120 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000 and block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 > -1 / 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (24000 * block.timestamp) + (-24000 * sub_e916de85[address(arg1)][arg2].field_0) + (1120 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000:
        revert with 'NH{q', 17
    return block.timestamp - sub_e916de85[address(arg1)][arg2].field_0, 
           (block.timestamp * 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (24000 * block.timestamp) + (-24000 * sub_e916de85[address(arg1)][arg2].field_0) + (1120 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000) - (sub_e916de85[address(arg1)][arg2].field_0 * 10^18 * sub_e916de85[address(arg1)][arg2].field_264 * (24000 * block.timestamp) + (-24000 * sub_e916de85[address(arg1)][arg2].field_0) + (1120 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(arg1)][arg2].field_0 / 1000) / 365 / 24 * 3600
}

function sub_f468ed29(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.value < 25 * 10^13:
        revert with 0, 'No GAS fee enough'
    require ext_code.size(stor2)
    staticcall stor2.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Not the owner'
    if bool(sub_e916de85[address(msg.sender)][arg1].field_256) != 1:
        revert with 0, 'IS not stacking'
    if bool(sub_e916de85[address(msg.sender)][arg1].field_256) != 1:
        revert with 0, 'Is not in Stake'
    if block.timestamp < sub_e916de85[address(msg.sender)][arg1].field_0:
        revert with 'NH{q', 17
    if sub_e916de85[address(msg.sender)][arg1].field_264 and 10^18 > -1 / sub_e916de85[address(msg.sender)][arg1].field_264:
        revert with 'NH{q', 17
    if sub_e916de85[address(msg.sender)][arg1].field_280 == 3:
        if sub_e916de85[address(msg.sender)][arg1].field_280 >= 10:
            if block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 and 24000 > -1 / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0:
                revert with 'NH{q', 17
            if 0 > (-24000 * block.timestamp) + (24000 * sub_e916de85[address(msg.sender)][arg1].field_0) - 1:
                revert with 'NH{q', 17
            if 0 > (-24000 * block.timestamp) + (24000 * sub_e916de85[address(msg.sender)][arg1].field_0) - 1:
                revert with 'NH{q', 17
            if not block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0:
                revert with 'NH{q', 18
            if 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 and (24000 * block.timestamp) - (24000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 > -1 / 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264:
                revert with 'NH{q', 17
            if 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (24000 * block.timestamp) - (24000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000 and block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 > -1 / 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (24000 * block.timestamp) - (24000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000:
                revert with 'NH{q', 17
            sub_e916de85[address(msg.sender)][arg1].field_256 = 0
            require ext_code.size(stor4)
            call stor4.Withdraw(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, (block.timestamp * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (24000 * block.timestamp) - (24000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) - (sub_e916de85[address(msg.sender)][arg1].field_0 * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (24000 * block.timestamp) - (24000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) / 365 / 24 * 3600
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Block Empty Pool'
            emit 0xe1f3739c: (block.timestamp * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (24000 * block.timestamp) - (24000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) - (sub_e916de85[address(msg.sender)][arg1].field_0 * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (24000 * block.timestamp) - (24000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) / 365 / 24 * 3600, block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0, msg.sender
        else:
            if block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 > 360 * 24 * 3600:
                if block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 < 360 * 24 * 3600:
                    revert with 'NH{q', 17
                if block.timestamp + -sub_e916de85[address(msg.sender)][arg1].field_0 - (360 * 24 * 3600) and 6000 > -1 / block.timestamp + -sub_e916de85[address(msg.sender)][arg1].field_0 - (360 * 24 * 3600):
                    revert with 'NH{q', 17
                if bool(stor6[arg1]) != 1:
                    if (6000 * block.timestamp) + (-6000 * sub_e916de85[address(msg.sender)][arg1].field_0) - (600 * 24 * 3600 * 24 * 3600) > -31104000001:
                        revert with 'NH{q', 17
                    if not block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0:
                        revert with 'NH{q', 18
                    if 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 and (6000 * block.timestamp) + (-6000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (1800 * 24 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 > -1 / 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264:
                        revert with 'NH{q', 17
                    if 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (6000 * block.timestamp) + (-6000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (1800 * 24 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000 and block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 > -1 / 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (6000 * block.timestamp) + (-6000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (1800 * 24 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000:
                        revert with 'NH{q', 17
                    sub_e916de85[address(msg.sender)][arg1].field_256 = 0
                    require ext_code.size(stor4)
                    call stor4.Withdraw(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, (block.timestamp * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (6000 * block.timestamp) + (-6000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (1800 * 24 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) - (sub_e916de85[address(msg.sender)][arg1].field_0 * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (6000 * block.timestamp) + (-6000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (1800 * 24 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) / 365 / 24 * 3600
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'Block Empty Pool'
                    emit 0xe1f3739c: (block.timestamp * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (6000 * block.timestamp) + (-6000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (1800 * 24 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) - (sub_e916de85[address(msg.sender)][arg1].field_0 * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (6000 * block.timestamp) + (-6000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (1800 * 24 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) / 365 / 24 * 3600, block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0, msg.sender
                else:
                    if (6000 * block.timestamp) + (-6000 * sub_e916de85[address(msg.sender)][arg1].field_0) - (600 * 24 * 3600 * 24 * 3600) > -23846400001:
                        revert with 'NH{q', 17
                    if not block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0:
                        revert with 'NH{q', 18
                    if 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 and (6000 * block.timestamp) + (-6000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (1240 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 > -1 / 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264:
                        revert with 'NH{q', 17
                    if 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (6000 * block.timestamp) + (-6000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (1240 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000 and block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 > -1 / 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (6000 * block.timestamp) + (-6000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (1240 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000:
                        revert with 'NH{q', 17
                    sub_e916de85[address(msg.sender)][arg1].field_256 = 0
                    require ext_code.size(stor4)
                    call stor4.Withdraw(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, (block.timestamp * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (6000 * block.timestamp) + (-6000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (1240 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) - (sub_e916de85[address(msg.sender)][arg1].field_0 * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (6000 * block.timestamp) + (-6000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (1240 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) / 365 / 24 * 3600
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'Block Empty Pool'
                    emit 0xe1f3739c: (block.timestamp * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (6000 * block.timestamp) + (-6000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (1240 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) - (sub_e916de85[address(msg.sender)][arg1].field_0 * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (6000 * block.timestamp) + (-6000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (1240 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) / 365 / 24 * 3600, block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0, msg.sender
            else:
                if block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 <= 168 * 24 * 3600:
                    if block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 and 24000 > -1 / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0:
                        revert with 'NH{q', 17
                    if 0 > (-24000 * block.timestamp) + (24000 * sub_e916de85[address(msg.sender)][arg1].field_0) - 1:
                        revert with 'NH{q', 17
                    if 0 > (-24000 * block.timestamp) + (24000 * sub_e916de85[address(msg.sender)][arg1].field_0) - 1:
                        revert with 'NH{q', 17
                    if not block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0:
                        revert with 'NH{q', 18
                    if 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 and (24000 * block.timestamp) - (24000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 > -1 / 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264:
                        revert with 'NH{q', 17
                    if 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (24000 * block.timestamp) - (24000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000 and block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 > -1 / 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (24000 * block.timestamp) - (24000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000:
                        revert with 'NH{q', 17
                    sub_e916de85[address(msg.sender)][arg1].field_256 = 0
                    require ext_code.size(stor4)
                    call stor4.Withdraw(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, (block.timestamp * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (24000 * block.timestamp) - (24000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) - (sub_e916de85[address(msg.sender)][arg1].field_0 * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (24000 * block.timestamp) - (24000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) / 365 / 24 * 3600
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'Block Empty Pool'
                    emit 0xe1f3739c: (block.timestamp * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (24000 * block.timestamp) - (24000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) - (sub_e916de85[address(msg.sender)][arg1].field_0 * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (24000 * block.timestamp) - (24000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) / 365 / 24 * 3600, block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0, msg.sender
                else:
                    if bool(stor6[arg1]) != 1:
                        if block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 and 24000 > -1 / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0:
                            revert with 'NH{q', 17
                        if 0 > (-24000 * block.timestamp) + (24000 * sub_e916de85[address(msg.sender)][arg1].field_0) - 1:
                            revert with 'NH{q', 17
                        if 0 > (-24000 * block.timestamp) + (24000 * sub_e916de85[address(msg.sender)][arg1].field_0) - 1:
                            revert with 'NH{q', 17
                        if not block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0:
                            revert with 'NH{q', 18
                        if 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 and (24000 * block.timestamp) - (24000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 > -1 / 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264:
                            revert with 'NH{q', 17
                        if 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (24000 * block.timestamp) - (24000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000 and block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 > -1 / 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (24000 * block.timestamp) - (24000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000:
                            revert with 'NH{q', 17
                        sub_e916de85[address(msg.sender)][arg1].field_256 = 0
                        require ext_code.size(stor4)
                        call stor4.Withdraw(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, (block.timestamp * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (24000 * block.timestamp) - (24000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) - (sub_e916de85[address(msg.sender)][arg1].field_0 * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (24000 * block.timestamp) - (24000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) / 365 / 24 * 3600
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'Block Empty Pool'
                        emit 0xe1f3739c: (block.timestamp * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (24000 * block.timestamp) - (24000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) - (sub_e916de85[address(msg.sender)][arg1].field_0 * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (24000 * block.timestamp) - (24000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) / 365 / 24 * 3600, block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0, msg.sender
                    else:
                        if block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 < 168 * 24 * 3600:
                            revert with 'NH{q', 17
                        if block.timestamp + -sub_e916de85[address(msg.sender)][arg1].field_0 - (168 * 24 * 3600) and 12000 > -1 / block.timestamp + -sub_e916de85[address(msg.sender)][arg1].field_0 - (168 * 24 * 3600):
                            revert with 'NH{q', 17
                        if (12000 * block.timestamp) + (-12000 * sub_e916de85[address(msg.sender)][arg1].field_0) - (560 * 3600 * 24 * 3600) > -14515200001:
                            revert with 'NH{q', 17
                        if 0 > (-12000 * block.timestamp) + (12000 * sub_e916de85[address(msg.sender)][arg1].field_0) - 7257600001:
                            revert with 'NH{q', 17
                        if not block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0:
                            revert with 'NH{q', 18
                        if 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 and (12000 * block.timestamp) + (-12000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (560 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 > -1 / 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264:
                            revert with 'NH{q', 17
                        if 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (12000 * block.timestamp) + (-12000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (560 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000 and block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 > -1 / 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (12000 * block.timestamp) + (-12000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (560 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000:
                            revert with 'NH{q', 17
                        sub_e916de85[address(msg.sender)][arg1].field_256 = 0
                        require ext_code.size(stor4)
                        call stor4.Withdraw(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, (block.timestamp * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (12000 * block.timestamp) + (-12000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (560 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) - (sub_e916de85[address(msg.sender)][arg1].field_0 * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (12000 * block.timestamp) + (-12000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (560 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) / 365 / 24 * 3600
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'Block Empty Pool'
                        emit 0xe1f3739c: (block.timestamp * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (12000 * block.timestamp) + (-12000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (560 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) - (sub_e916de85[address(msg.sender)][arg1].field_0 * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (12000 * block.timestamp) + (-12000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (560 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) / 365 / 24 * 3600, block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0, msg.sender
    else:
        if sub_e916de85[address(msg.sender)][arg1].field_280 == 6:
            if sub_e916de85[address(msg.sender)][arg1].field_280 >= 10:
                if block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 and 48000 > -1 / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0:
                    revert with 'NH{q', 17
                if 0 > (-48000 * block.timestamp) + (48000 * sub_e916de85[address(msg.sender)][arg1].field_0) - 1:
                    revert with 'NH{q', 17
                if 0 > (-48000 * block.timestamp) + (48000 * sub_e916de85[address(msg.sender)][arg1].field_0) - 1:
                    revert with 'NH{q', 17
                if not block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0:
                    revert with 'NH{q', 18
                if 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 and (48000 * block.timestamp) - (48000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 > -1 / 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264:
                    revert with 'NH{q', 17
                if 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (48000 * block.timestamp) - (48000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000 and block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 > -1 / 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (48000 * block.timestamp) - (48000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000:
                    revert with 'NH{q', 17
                sub_e916de85[address(msg.sender)][arg1].field_256 = 0
                require ext_code.size(stor4)
                call stor4.Withdraw(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, (block.timestamp * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (48000 * block.timestamp) - (48000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) - (sub_e916de85[address(msg.sender)][arg1].field_0 * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (48000 * block.timestamp) - (48000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) / 365 / 24 * 3600
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'Block Empty Pool'
                emit 0xe1f3739c: (block.timestamp * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (48000 * block.timestamp) - (48000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) - (sub_e916de85[address(msg.sender)][arg1].field_0 * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (48000 * block.timestamp) - (48000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) / 365 / 24 * 3600, block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0, msg.sender
            else:
                if block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 > 360 * 24 * 3600:
                    if block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 < 360 * 24 * 3600:
                        revert with 'NH{q', 17
                    if block.timestamp + -sub_e916de85[address(msg.sender)][arg1].field_0 - (360 * 24 * 3600) and 12000 > -1 / block.timestamp + -sub_e916de85[address(msg.sender)][arg1].field_0 - (360 * 24 * 3600):
                        revert with 'NH{q', 17
                    if bool(stor6[arg1]) != 1:
                        if (12000 * block.timestamp) + (-12000 * sub_e916de85[address(msg.sender)][arg1].field_0) - (1200 * 24 * 3600 * 24 * 3600) > -62208000001:
                            revert with 'NH{q', 17
                        if not block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0:
                            revert with 'NH{q', 18
                        if 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 and (12000 * block.timestamp) + (-12000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (3600 * 24 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 > -1 / 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264:
                            revert with 'NH{q', 17
                        if 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (12000 * block.timestamp) + (-12000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (3600 * 24 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000 and block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 > -1 / 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (12000 * block.timestamp) + (-12000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (3600 * 24 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000:
                            revert with 'NH{q', 17
                        sub_e916de85[address(msg.sender)][arg1].field_256 = 0
                        require ext_code.size(stor4)
                        call stor4.Withdraw(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, (block.timestamp * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (12000 * block.timestamp) + (-12000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (3600 * 24 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) - (sub_e916de85[address(msg.sender)][arg1].field_0 * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (12000 * block.timestamp) + (-12000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (3600 * 24 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) / 365 / 24 * 3600
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'Block Empty Pool'
                        emit 0xe1f3739c: (block.timestamp * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (12000 * block.timestamp) + (-12000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (3600 * 24 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) - (sub_e916de85[address(msg.sender)][arg1].field_0 * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (12000 * block.timestamp) + (-12000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (3600 * 24 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) / 365 / 24 * 3600, block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0, msg.sender
                    else:
                        if (12000 * block.timestamp) + (-12000 * sub_e916de85[address(msg.sender)][arg1].field_0) - (1200 * 24 * 3600 * 24 * 3600) > -47692800001:
                            revert with 'NH{q', 17
                        if not block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0:
                            revert with 'NH{q', 18
                        if 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 and (12000 * block.timestamp) + (-12000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (2480 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 > -1 / 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264:
                            revert with 'NH{q', 17
                        if 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (12000 * block.timestamp) + (-12000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (2480 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000 and block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 > -1 / 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (12000 * block.timestamp) + (-12000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (2480 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000:
                            revert with 'NH{q', 17
                        sub_e916de85[address(msg.sender)][arg1].field_256 = 0
                        require ext_code.size(stor4)
                        call stor4.Withdraw(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, (block.timestamp * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (12000 * block.timestamp) + (-12000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (2480 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) - (sub_e916de85[address(msg.sender)][arg1].field_0 * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (12000 * block.timestamp) + (-12000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (2480 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) / 365 / 24 * 3600
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'Block Empty Pool'
                        emit 0xe1f3739c: (block.timestamp * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (12000 * block.timestamp) + (-12000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (2480 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) - (sub_e916de85[address(msg.sender)][arg1].field_0 * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (12000 * block.timestamp) + (-12000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (2480 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) / 365 / 24 * 3600, block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0, msg.sender
                else:
                    if block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 <= 168 * 24 * 3600:
                        if block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 and 48000 > -1 / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0:
                            revert with 'NH{q', 17
                        if 0 > (-48000 * block.timestamp) + (48000 * sub_e916de85[address(msg.sender)][arg1].field_0) - 1:
                            revert with 'NH{q', 17
                        if 0 > (-48000 * block.timestamp) + (48000 * sub_e916de85[address(msg.sender)][arg1].field_0) - 1:
                            revert with 'NH{q', 17
                        if not block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0:
                            revert with 'NH{q', 18
                        if 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 and (48000 * block.timestamp) - (48000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 > -1 / 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264:
                            revert with 'NH{q', 17
                        if 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (48000 * block.timestamp) - (48000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000 and block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 > -1 / 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (48000 * block.timestamp) - (48000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000:
                            revert with 'NH{q', 17
                        sub_e916de85[address(msg.sender)][arg1].field_256 = 0
                        require ext_code.size(stor4)
                        call stor4.Withdraw(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, (block.timestamp * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (48000 * block.timestamp) - (48000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) - (sub_e916de85[address(msg.sender)][arg1].field_0 * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (48000 * block.timestamp) - (48000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) / 365 / 24 * 3600
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'Block Empty Pool'
                        emit 0xe1f3739c: (block.timestamp * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (48000 * block.timestamp) - (48000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) - (sub_e916de85[address(msg.sender)][arg1].field_0 * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (48000 * block.timestamp) - (48000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) / 365 / 24 * 3600, block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0, msg.sender
                    else:
                        if bool(stor6[arg1]) != 1:
                            if block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 and 48000 > -1 / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0:
                                revert with 'NH{q', 17
                            if 0 > (-48000 * block.timestamp) + (48000 * sub_e916de85[address(msg.sender)][arg1].field_0) - 1:
                                revert with 'NH{q', 17
                            if 0 > (-48000 * block.timestamp) + (48000 * sub_e916de85[address(msg.sender)][arg1].field_0) - 1:
                                revert with 'NH{q', 17
                            if not block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0:
                                revert with 'NH{q', 18
                            if 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 and (48000 * block.timestamp) - (48000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 > -1 / 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264:
                                revert with 'NH{q', 17
                            if 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (48000 * block.timestamp) - (48000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000 and block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 > -1 / 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (48000 * block.timestamp) - (48000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000:
                                revert with 'NH{q', 17
                            sub_e916de85[address(msg.sender)][arg1].field_256 = 0
                            require ext_code.size(stor4)
                            call stor4.Withdraw(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, (block.timestamp * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (48000 * block.timestamp) - (48000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) - (sub_e916de85[address(msg.sender)][arg1].field_0 * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (48000 * block.timestamp) - (48000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) / 365 / 24 * 3600
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'Block Empty Pool'
                            emit 0xe1f3739c: (block.timestamp * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (48000 * block.timestamp) - (48000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) - (sub_e916de85[address(msg.sender)][arg1].field_0 * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (48000 * block.timestamp) - (48000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) / 365 / 24 * 3600, block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0, msg.sender
                        else:
                            if block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 < 168 * 24 * 3600:
                                revert with 'NH{q', 17
                            if block.timestamp + -sub_e916de85[address(msg.sender)][arg1].field_0 - (168 * 24 * 3600) and 24000 > -1 / block.timestamp + -sub_e916de85[address(msg.sender)][arg1].field_0 - (168 * 24 * 3600):
                                revert with 'NH{q', 17
                            if (24000 * block.timestamp) + (-24000 * sub_e916de85[address(msg.sender)][arg1].field_0) - (1120 * 3600 * 24 * 3600) > -29030400001:
                                revert with 'NH{q', 17
                            if 0 > (-24000 * block.timestamp) + (24000 * sub_e916de85[address(msg.sender)][arg1].field_0) - 14515200001:
                                revert with 'NH{q', 17
                            if not block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0:
                                revert with 'NH{q', 18
                            if 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 and (24000 * block.timestamp) + (-24000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (1120 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 > -1 / 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264:
                                revert with 'NH{q', 17
                            if 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (24000 * block.timestamp) + (-24000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (1120 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000 and block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 > -1 / 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (24000 * block.timestamp) + (-24000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (1120 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000:
                                revert with 'NH{q', 17
                            sub_e916de85[address(msg.sender)][arg1].field_256 = 0
                            require ext_code.size(stor4)
                            call stor4.Withdraw(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, (block.timestamp * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (24000 * block.timestamp) + (-24000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (1120 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) - (sub_e916de85[address(msg.sender)][arg1].field_0 * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (24000 * block.timestamp) + (-24000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (1120 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) / 365 / 24 * 3600
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'Block Empty Pool'
                            emit 0xe1f3739c: (block.timestamp * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (24000 * block.timestamp) + (-24000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (1120 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) - (sub_e916de85[address(msg.sender)][arg1].field_0 * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (24000 * block.timestamp) + (-24000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (1120 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) / 365 / 24 * 3600, block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0, msg.sender
        else:
            if sub_e916de85[address(msg.sender)][arg1].field_280 != 10:
                if sub_e916de85[address(msg.sender)][arg1].field_280 >= 10:
                    if block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 and 12000 > -1 / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0:
                        revert with 'NH{q', 17
                    if 0 > (-12000 * block.timestamp) + (12000 * sub_e916de85[address(msg.sender)][arg1].field_0) - 1:
                        revert with 'NH{q', 17
                    if 0 > (-12000 * block.timestamp) + (12000 * sub_e916de85[address(msg.sender)][arg1].field_0) - 1:
                        revert with 'NH{q', 17
                    if not block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0:
                        revert with 'NH{q', 18
                    if 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 and (12000 * block.timestamp) - (12000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 > -1 / 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264:
                        revert with 'NH{q', 17
                    if 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (12000 * block.timestamp) - (12000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000 and block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 > -1 / 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (12000 * block.timestamp) - (12000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000:
                        revert with 'NH{q', 17
                    sub_e916de85[address(msg.sender)][arg1].field_256 = 0
                    require ext_code.size(stor4)
                    call stor4.Withdraw(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, (block.timestamp * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (12000 * block.timestamp) - (12000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) - (sub_e916de85[address(msg.sender)][arg1].field_0 * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (12000 * block.timestamp) - (12000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) / 365 / 24 * 3600
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'Block Empty Pool'
                    emit 0xe1f3739c: (block.timestamp * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (12000 * block.timestamp) - (12000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) - (sub_e916de85[address(msg.sender)][arg1].field_0 * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (12000 * block.timestamp) - (12000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) / 365 / 24 * 3600, block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0, msg.sender
                else:
                    if block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 > 360 * 24 * 3600:
                        if block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 < 360 * 24 * 3600:
                            revert with 'NH{q', 17
                        if block.timestamp + -sub_e916de85[address(msg.sender)][arg1].field_0 - (360 * 24 * 3600) and 3000 > -1 / block.timestamp + -sub_e916de85[address(msg.sender)][arg1].field_0 - (360 * 24 * 3600):
                            revert with 'NH{q', 17
                        if bool(stor6[arg1]) != 1:
                            if (3000 * block.timestamp) + (-3000 * sub_e916de85[address(msg.sender)][arg1].field_0) - (300 * 3600 * 24 * 3600) > -15552000001:
                                revert with 'NH{q', 17
                            if not block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0:
                                revert with 'NH{q', 18
                            if 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 and (3000 * block.timestamp) + (-3000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (900 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 > -1 / 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264:
                                revert with 'NH{q', 17
                            if 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (3000 * block.timestamp) + (-3000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (900 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000 and block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 > -1 / 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (3000 * block.timestamp) + (-3000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (900 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000:
                                revert with 'NH{q', 17
                            sub_e916de85[address(msg.sender)][arg1].field_256 = 0
                            require ext_code.size(stor4)
                            call stor4.Withdraw(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, (block.timestamp * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (3000 * block.timestamp) + (-3000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (900 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) - (sub_e916de85[address(msg.sender)][arg1].field_0 * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (3000 * block.timestamp) + (-3000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (900 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) / 365 / 24 * 3600
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'Block Empty Pool'
                            emit 0xe1f3739c: (block.timestamp * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (3000 * block.timestamp) + (-3000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (900 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) - (sub_e916de85[address(msg.sender)][arg1].field_0 * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (3000 * block.timestamp) + (-3000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (900 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) / 365 / 24 * 3600, block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0, msg.sender
                        else:
                            if (3000 * block.timestamp) + (-3000 * sub_e916de85[address(msg.sender)][arg1].field_0) - (300 * 3600 * 24 * 3600) > -11923200001:
                                revert with 'NH{q', 17
                            if not block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0:
                                revert with 'NH{q', 18
                            if 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 and (3000 * block.timestamp) + (-3000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (620 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 > -1 / 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264:
                                revert with 'NH{q', 17
                            if 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (3000 * block.timestamp) + (-3000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (620 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000 and block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 > -1 / 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (3000 * block.timestamp) + (-3000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (620 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000:
                                revert with 'NH{q', 17
                            sub_e916de85[address(msg.sender)][arg1].field_256 = 0
                            require ext_code.size(stor4)
                            call stor4.Withdraw(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, (block.timestamp * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (3000 * block.timestamp) + (-3000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (620 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) - (sub_e916de85[address(msg.sender)][arg1].field_0 * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (3000 * block.timestamp) + (-3000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (620 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) / 365 / 24 * 3600
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'Block Empty Pool'
                            emit 0xe1f3739c: (block.timestamp * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (3000 * block.timestamp) + (-3000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (620 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) - (sub_e916de85[address(msg.sender)][arg1].field_0 * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (3000 * block.timestamp) + (-3000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (620 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) / 365 / 24 * 3600, block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0, msg.sender
                    else:
                        if block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 <= 168 * 24 * 3600:
                            if block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 and 12000 > -1 / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0:
                                revert with 'NH{q', 17
                            if 0 > (-12000 * block.timestamp) + (12000 * sub_e916de85[address(msg.sender)][arg1].field_0) - 1:
                                revert with 'NH{q', 17
                            if 0 > (-12000 * block.timestamp) + (12000 * sub_e916de85[address(msg.sender)][arg1].field_0) - 1:
                                revert with 'NH{q', 17
                            if not block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0:
                                revert with 'NH{q', 18
                            if 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 and (12000 * block.timestamp) - (12000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 > -1 / 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264:
                                revert with 'NH{q', 17
                            if 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (12000 * block.timestamp) - (12000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000 and block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 > -1 / 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (12000 * block.timestamp) - (12000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000:
                                revert with 'NH{q', 17
                            sub_e916de85[address(msg.sender)][arg1].field_256 = 0
                            require ext_code.size(stor4)
                            call stor4.Withdraw(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, (block.timestamp * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (12000 * block.timestamp) - (12000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) - (sub_e916de85[address(msg.sender)][arg1].field_0 * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (12000 * block.timestamp) - (12000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) / 365 / 24 * 3600
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'Block Empty Pool'
                            emit 0xe1f3739c: (block.timestamp * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (12000 * block.timestamp) - (12000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) - (sub_e916de85[address(msg.sender)][arg1].field_0 * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (12000 * block.timestamp) - (12000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) / 365 / 24 * 3600, block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0, msg.sender
                        else:
                            if bool(stor6[arg1]) != 1:
                                if block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 and 12000 > -1 / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0:
                                    revert with 'NH{q', 17
                                if 0 > (-12000 * block.timestamp) + (12000 * sub_e916de85[address(msg.sender)][arg1].field_0) - 1:
                                    revert with 'NH{q', 17
                                if 0 > (-12000 * block.timestamp) + (12000 * sub_e916de85[address(msg.sender)][arg1].field_0) - 1:
                                    revert with 'NH{q', 17
                                if not block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0:
                                    revert with 'NH{q', 18
                                if 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 and (12000 * block.timestamp) - (12000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 > -1 / 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264:
                                    revert with 'NH{q', 17
                                if 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (12000 * block.timestamp) - (12000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000 and block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 > -1 / 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (12000 * block.timestamp) - (12000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000:
                                    revert with 'NH{q', 17
                                sub_e916de85[address(msg.sender)][arg1].field_256 = 0
                                require ext_code.size(stor4)
                                call stor4.Withdraw(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, (block.timestamp * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (12000 * block.timestamp) - (12000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) - (sub_e916de85[address(msg.sender)][arg1].field_0 * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (12000 * block.timestamp) - (12000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) / 365 / 24 * 3600
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Block Empty Pool'
                                emit 0xe1f3739c: (block.timestamp * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (12000 * block.timestamp) - (12000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) - (sub_e916de85[address(msg.sender)][arg1].field_0 * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (12000 * block.timestamp) - (12000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) / 365 / 24 * 3600, block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0, msg.sender
                            else:
                                if block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 < 168 * 24 * 3600:
                                    revert with 'NH{q', 17
                                if block.timestamp + -sub_e916de85[address(msg.sender)][arg1].field_0 - (168 * 24 * 3600) and 6000 > -1 / block.timestamp + -sub_e916de85[address(msg.sender)][arg1].field_0 - (168 * 24 * 3600):
                                    revert with 'NH{q', 17
                                if (6000 * block.timestamp) + (-6000 * sub_e916de85[address(msg.sender)][arg1].field_0) - (280 * 3600 * 24 * 3600) > -7257600001:
                                    revert with 'NH{q', 17
                                if 0 > (-6000 * block.timestamp) + (6000 * sub_e916de85[address(msg.sender)][arg1].field_0) - 3628800001:
                                    revert with 'NH{q', 17
                                if not block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0:
                                    revert with 'NH{q', 18
                                if 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 and (6000 * block.timestamp) + (-6000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (280 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 > -1 / 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264:
                                    revert with 'NH{q', 17
                                if 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (6000 * block.timestamp) + (-6000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (280 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000 and block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 > -1 / 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (6000 * block.timestamp) + (-6000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (280 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000:
                                    revert with 'NH{q', 17
                                sub_e916de85[address(msg.sender)][arg1].field_256 = 0
                                require ext_code.size(stor4)
                                call stor4.Withdraw(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, (block.timestamp * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (6000 * block.timestamp) + (-6000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (280 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) - (sub_e916de85[address(msg.sender)][arg1].field_0 * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (6000 * block.timestamp) + (-6000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (280 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) / 365 / 24 * 3600
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Block Empty Pool'
                                emit 0xe1f3739c: (block.timestamp * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (6000 * block.timestamp) + (-6000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (280 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) - (sub_e916de85[address(msg.sender)][arg1].field_0 * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (6000 * block.timestamp) + (-6000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (280 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) / 365 / 24 * 3600, block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0, msg.sender
            else:
                if sub_e916de85[address(msg.sender)][arg1].field_280 >= 10:
                    if block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 and 48000 > -1 / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0:
                        revert with 'NH{q', 17
                    if 0 > (-48000 * block.timestamp) + (48000 * sub_e916de85[address(msg.sender)][arg1].field_0) - 1:
                        revert with 'NH{q', 17
                    if 0 > (-48000 * block.timestamp) + (48000 * sub_e916de85[address(msg.sender)][arg1].field_0) - 1:
                        revert with 'NH{q', 17
                    if not block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0:
                        revert with 'NH{q', 18
                    if 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 and (48000 * block.timestamp) - (48000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 > -1 / 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264:
                        revert with 'NH{q', 17
                    if 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (48000 * block.timestamp) - (48000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000 and block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 > -1 / 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (48000 * block.timestamp) - (48000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000:
                        revert with 'NH{q', 17
                    sub_e916de85[address(msg.sender)][arg1].field_256 = 0
                    require ext_code.size(stor4)
                    call stor4.Withdraw(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, (block.timestamp * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (48000 * block.timestamp) - (48000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) - (sub_e916de85[address(msg.sender)][arg1].field_0 * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (48000 * block.timestamp) - (48000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) / 365 / 24 * 3600
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'Block Empty Pool'
                    emit 0xe1f3739c: (block.timestamp * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (48000 * block.timestamp) - (48000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) - (sub_e916de85[address(msg.sender)][arg1].field_0 * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (48000 * block.timestamp) - (48000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) / 365 / 24 * 3600, block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0, msg.sender
                else:
                    if block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 > 360 * 24 * 3600:
                        if block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 < 360 * 24 * 3600:
                            revert with 'NH{q', 17
                        if block.timestamp + -sub_e916de85[address(msg.sender)][arg1].field_0 - (360 * 24 * 3600) and 12000 > -1 / block.timestamp + -sub_e916de85[address(msg.sender)][arg1].field_0 - (360 * 24 * 3600):
                            revert with 'NH{q', 17
                        if bool(stor6[arg1]) != 1:
                            if (12000 * block.timestamp) + (-12000 * sub_e916de85[address(msg.sender)][arg1].field_0) - (1200 * 24 * 3600 * 24 * 3600) > -62208000001:
                                revert with 'NH{q', 17
                            if not block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0:
                                revert with 'NH{q', 18
                            if 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 and (12000 * block.timestamp) + (-12000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (3600 * 24 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 > -1 / 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264:
                                revert with 'NH{q', 17
                            if 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (12000 * block.timestamp) + (-12000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (3600 * 24 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000 and block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 > -1 / 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (12000 * block.timestamp) + (-12000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (3600 * 24 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000:
                                revert with 'NH{q', 17
                            sub_e916de85[address(msg.sender)][arg1].field_256 = 0
                            require ext_code.size(stor4)
                            call stor4.Withdraw(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, (block.timestamp * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (12000 * block.timestamp) + (-12000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (3600 * 24 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) - (sub_e916de85[address(msg.sender)][arg1].field_0 * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (12000 * block.timestamp) + (-12000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (3600 * 24 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) / 365 / 24 * 3600
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'Block Empty Pool'
                            emit 0xe1f3739c: (block.timestamp * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (12000 * block.timestamp) + (-12000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (3600 * 24 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) - (sub_e916de85[address(msg.sender)][arg1].field_0 * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (12000 * block.timestamp) + (-12000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (3600 * 24 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) / 365 / 24 * 3600, block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0, msg.sender
                        else:
                            if (12000 * block.timestamp) + (-12000 * sub_e916de85[address(msg.sender)][arg1].field_0) - (1200 * 24 * 3600 * 24 * 3600) > -47692800001:
                                revert with 'NH{q', 17
                            if not block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0:
                                revert with 'NH{q', 18
                            if 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 and (12000 * block.timestamp) + (-12000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (2480 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 > -1 / 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264:
                                revert with 'NH{q', 17
                            if 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (12000 * block.timestamp) + (-12000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (2480 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000 and block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 > -1 / 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (12000 * block.timestamp) + (-12000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (2480 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000:
                                revert with 'NH{q', 17
                            sub_e916de85[address(msg.sender)][arg1].field_256 = 0
                            require ext_code.size(stor4)
                            call stor4.Withdraw(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, (block.timestamp * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (12000 * block.timestamp) + (-12000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (2480 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) - (sub_e916de85[address(msg.sender)][arg1].field_0 * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (12000 * block.timestamp) + (-12000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (2480 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) / 365 / 24 * 3600
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'Block Empty Pool'
                            emit 0xe1f3739c: (block.timestamp * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (12000 * block.timestamp) + (-12000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (2480 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) - (sub_e916de85[address(msg.sender)][arg1].field_0 * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (12000 * block.timestamp) + (-12000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (2480 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) / 365 / 24 * 3600, block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0, msg.sender
                    else:
                        if block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 <= 168 * 24 * 3600:
                            if block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 and 48000 > -1 / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0:
                                revert with 'NH{q', 17
                            if 0 > (-48000 * block.timestamp) + (48000 * sub_e916de85[address(msg.sender)][arg1].field_0) - 1:
                                revert with 'NH{q', 17
                            if 0 > (-48000 * block.timestamp) + (48000 * sub_e916de85[address(msg.sender)][arg1].field_0) - 1:
                                revert with 'NH{q', 17
                            if not block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0:
                                revert with 'NH{q', 18
                            if 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 and (48000 * block.timestamp) - (48000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 > -1 / 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264:
                                revert with 'NH{q', 17
                            if 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (48000 * block.timestamp) - (48000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000 and block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 > -1 / 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (48000 * block.timestamp) - (48000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000:
                                revert with 'NH{q', 17
                            sub_e916de85[address(msg.sender)][arg1].field_256 = 0
                            require ext_code.size(stor4)
                            call stor4.Withdraw(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, (block.timestamp * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (48000 * block.timestamp) - (48000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) - (sub_e916de85[address(msg.sender)][arg1].field_0 * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (48000 * block.timestamp) - (48000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) / 365 / 24 * 3600
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'Block Empty Pool'
                            emit 0xe1f3739c: (block.timestamp * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (48000 * block.timestamp) - (48000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) - (sub_e916de85[address(msg.sender)][arg1].field_0 * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (48000 * block.timestamp) - (48000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) / 365 / 24 * 3600, block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0, msg.sender
                        else:
                            if bool(stor6[arg1]) != 1:
                                if block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 and 48000 > -1 / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0:
                                    revert with 'NH{q', 17
                                if 0 > (-48000 * block.timestamp) + (48000 * sub_e916de85[address(msg.sender)][arg1].field_0) - 1:
                                    revert with 'NH{q', 17
                                if 0 > (-48000 * block.timestamp) + (48000 * sub_e916de85[address(msg.sender)][arg1].field_0) - 1:
                                    revert with 'NH{q', 17
                                if not block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0:
                                    revert with 'NH{q', 18
                                if 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 and (48000 * block.timestamp) - (48000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 > -1 / 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264:
                                    revert with 'NH{q', 17
                                if 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (48000 * block.timestamp) - (48000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000 and block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 > -1 / 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (48000 * block.timestamp) - (48000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000:
                                    revert with 'NH{q', 17
                                sub_e916de85[address(msg.sender)][arg1].field_256 = 0
                                require ext_code.size(stor4)
                                call stor4.Withdraw(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, (block.timestamp * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (48000 * block.timestamp) - (48000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) - (sub_e916de85[address(msg.sender)][arg1].field_0 * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (48000 * block.timestamp) - (48000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) / 365 / 24 * 3600
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Block Empty Pool'
                                emit 0xe1f3739c: (block.timestamp * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (48000 * block.timestamp) - (48000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) - (sub_e916de85[address(msg.sender)][arg1].field_0 * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (48000 * block.timestamp) - (48000 * sub_e916de85[address(msg.sender)][arg1].field_0) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) / 365 / 24 * 3600, block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0, msg.sender
                            else:
                                if block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 < 168 * 24 * 3600:
                                    revert with 'NH{q', 17
                                if block.timestamp + -sub_e916de85[address(msg.sender)][arg1].field_0 - (168 * 24 * 3600) and 24000 > -1 / block.timestamp + -sub_e916de85[address(msg.sender)][arg1].field_0 - (168 * 24 * 3600):
                                    revert with 'NH{q', 17
                                if (24000 * block.timestamp) + (-24000 * sub_e916de85[address(msg.sender)][arg1].field_0) - (1120 * 3600 * 24 * 3600) > -29030400001:
                                    revert with 'NH{q', 17
                                if 0 > (-24000 * block.timestamp) + (24000 * sub_e916de85[address(msg.sender)][arg1].field_0) - 14515200001:
                                    revert with 'NH{q', 17
                                if not block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0:
                                    revert with 'NH{q', 18
                                if 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 and (24000 * block.timestamp) + (-24000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (1120 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 > -1 / 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264:
                                    revert with 'NH{q', 17
                                if 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (24000 * block.timestamp) + (-24000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (1120 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000 and block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 > -1 / 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (24000 * block.timestamp) + (-24000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (1120 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000:
                                    revert with 'NH{q', 17
                                sub_e916de85[address(msg.sender)][arg1].field_256 = 0
                                require ext_code.size(stor4)
                                call stor4.Withdraw(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, (block.timestamp * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (24000 * block.timestamp) + (-24000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (1120 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) - (sub_e916de85[address(msg.sender)][arg1].field_0 * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (24000 * block.timestamp) + (-24000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (1120 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) / 365 / 24 * 3600
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Block Empty Pool'
                                emit 0xe1f3739c: (block.timestamp * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (24000 * block.timestamp) + (-24000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (1120 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) - (sub_e916de85[address(msg.sender)][arg1].field_0 * 10^18 * sub_e916de85[address(msg.sender)][arg1].field_264 * (24000 * block.timestamp) + (-24000 * sub_e916de85[address(msg.sender)][arg1].field_0) + (1120 * 3600 * 24 * 3600) / block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0 / 1000) / 365 / 24 * 3600, block.timestamp - sub_e916de85[address(msg.sender)][arg1].field_0, msg.sender
}



}
