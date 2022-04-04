contract main {




// =====================  Runtime code  =====================


const sub_51f901dc(?) = (8736 * 24 * 3600)

const sub_f3d0b291(?) = 2

const sub_fb01e4e1(?) = 0x352f759c5d8771d15770b481d0cd18abc69bdb8fe3c85216cb1ed5536ce0916d

const PERIOD_LENGTH = (168 * 24 * 3600)


uint8 stor0;
uint8 stor0; offset 8
address stor0;
address adminAddress; offset 16
uint256 stor0; offset 16
uint256 stor0; offset 8
address candidateAddress;
uint256 sub_ae5dbee8;
address sub_323f24abAddress;
mapping of uint256 sub_d31bc57d;
address lusdAddress;
address collateralSystemAddress;
address rewardLockerAddress;
uint256 DOMAIN_SEPARATOR;

function collateralSystem() payable {
    return collateralSystemAddress
}

function sub_323f24ab(?) payable {
    return sub_323f24abAddress
}

function DOMAIN_SEPARATOR() payable {
    return DOMAIN_SEPARATOR
}

function rewardLocker() payable {
    return rewardLockerAddress
}

function candidate() payable {
    return candidateAddress
}

function lusd() payable {
    return lusdAddress
}

function sub_ae5dbee8(?) payable {
    return sub_ae5dbee8
}

function sub_d31bc57d(?) payable {
    require calldata.size - 4 >= 32
    return sub_d31bc57d[arg1]
}

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function getCurrentPeriodId() payable {
    if block.timestamp < sub_ae5dbee8:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe4c6e52657761726453797374656d3a20666972737420706572696f64206e6f7420737461727465,
                    mem[204 len 24]
    return ((block.timestamp - sub_ae5dbee8 / 168 * 24 * 3600) + 1)
}

function setCandidate(address arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x644c6e41646d696e5570677261646561626c653a206f6e6c792074686520636f6e74726163742061646d696e2063616e20706572666f726d207468697320616374696f,
                    mem[231 len 29]
    candidateAddress = arg1
    emit CandidateChanged(candidateAddress, arg1);
}

function becomeAdmin() payable {
    if candidateAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x654c6e41646d696e5570677261646561626c653a206f6e6c792063616e6469646174652063616e206265636f6d652061646d69,
                    mem[215 len 13]
    Mask(240, 0, stor0.field_16) = candidateAddress
    emit AdminChanged(address rg1, address rg2):
                      address(stor0.field_0),
                      0,
                      candidateAddress,
}

function __LnAdminUpgradeable_init(address arg1) payable {
    require calldata.size - 4 >= 32
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x6e496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
    if not arg1:
        revert with 0, 'LnAdminUpgradeable: zero address'
    adminAddress = arg1
    emit AdminChanged(0, arg1);
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function sub_c69d65d1(?) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x644c6e41646d696e5570677261646561626c653a206f6e6c792074686520636f6e74726163742061646d696e2063616e20706572666f726d207468697320616374696f,
                    mem[231 len 29]
    if not arg1:
        revert with 0, 'LnRewardSystem: zero address'
    if sub_323f24abAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x774c6e52657761726453797374656d3a207369676e6572206e6f74206368616e6765,
                    mem[198 len 30]
    sub_323f24abAddress = arg1
    emit 0x7734c964: sub_323f24abAddress, arg1
}

function sub_097266dc(?) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6e4c6e52657761726453797374656d3a20706572696f64204944206d75737420626520706f7369746976,
                    mem[206 len 22]
    if 1 > arg1:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg1 - 1:
        if sub_ae5dbee8 < sub_ae5dbee8:
            revert with 0, 'SafeMath: addition overflow'
        return sub_ae5dbee8
    if (168 * 24 * 3600 * arg1) - (168 * 24 * 3600) / arg1 - 1 != 168 * 24 * 3600:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if (168 * 24 * 3600 * arg1) + sub_ae5dbee8 - (168 * 24 * 3600) < sub_ae5dbee8:
        revert with 0, 'SafeMath: addition overflow'
    return ((168 * 24 * 3600 * arg1) + sub_ae5dbee8 - (168 * 24 * 3600))
}

function sub_5c09e7ac(?) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6e4c6e52657761726453797374656d3a20706572696f64204944206d75737420626520706f7369746976,
                    mem[206 len 22]
    if not arg1:
        if sub_ae5dbee8 < sub_ae5dbee8:
            revert with 0, 'SafeMath: addition overflow'
        return sub_ae5dbee8
    if 168 * 24 * 3600 * arg1 / arg1 != 168 * 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if (168 * 24 * 3600 * arg1) + sub_ae5dbee8 < sub_ae5dbee8:
        revert with 0, 'SafeMath: addition overflow'
    return ((168 * 24 * 3600 * arg1) + sub_ae5dbee8)
}

function sub_b62f206d(?) payable {
    require calldata.size - 4 >= 192
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x6e496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x6e496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if not uint8(stor0.field_8):
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
    if not arg6:
        revert with 0, 'LnAdminUpgradeable: zero address'
    adminAddress = arg6
    emit AdminChanged(0, arg6);
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
    sub_ae5dbee8 = arg1
    if not arg2:
        revert with 0, 'LnRewardSystem: zero address'
    if sub_323f24abAddress == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x774c6e52657761726453797374656d3a207369676e6572206e6f74206368616e6765,
                    mem[198 len 30]
    sub_323f24abAddress = arg2
    emit 0x7734c964: sub_323f24abAddress, arg2
    if not arg3:
        revert with 0, 'LnRewardSystem: zero address'
    if not arg4:
        revert with 0, 'LnRewardSystem: zero address'
    if not arg5:
        revert with 0, 'LnRewardSystem: zero address'
    lusdAddress = arg3
    collateralSystemAddress = arg4
    rewardLockerAddress = arg5
    DOMAIN_SEPARATOR = sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, 0x16061f58256c86e6eb7d166e78be192f96e51b4ccf2d8de3d9fbf3c6cbdb9bb5, 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address)
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function sub_0de20736(?) payable {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6e4c6e52657761726453797374656d3a20706572696f64204944206d75737420626520706f7369746976,
                    mem[206 len 22]
    if arg3 <= 0:
        if arg4 <= 0:
            revert with 0, 'LnRewardSystem: nothing to claim'
    if block.timestamp < sub_ae5dbee8:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe4c6e52657761726453797374656d3a20666972737420706572696f64206e6f7420737461727465,
                    mem[204 len 24]
    if arg1 >= (block.timestamp - sub_ae5dbee8 / 168 * 24 * 3600) + 1:
        revert with 0, 'LnRewardSystem: period not ended'
    if (block.timestamp - sub_ae5dbee8 / 168 * 24 * 3600) + 1 > 2:
        if arg1 < (block.timestamp - sub_ae5dbee8 / 168 * 24 * 3600) - 1:
            revert with 0, 'LnRewardSystem: reward expired'
    if arg1 <= sub_d31bc57d[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x654c6e52657761726453797374656d3a2072657761726420616c726561647920636c61696d65,
                    mem[202 len 26]
    sub_d31bc57d[address(arg2)] = arg1
    require ext_code.size(collateralSystemAddress)
    staticcall collateralSystemAddress.0xbc65d434 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x644c6e52657761726453797374656d3a2062656c6f77207461726765742072617469,
                    mem[198 len 30]
    mem[418 len arg5.length] = arg5[all]
    mem[arg5.length + 418] = 0
    if arg5.length != 65:
        revert with 0, 'ECDSA: invalid signature length'
    if mem[450] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 
                    32,
                    34,
                    0x6f45434453413a20696e76616c6964207369676e6174757265202773272076616c75,
                    mem[ceil32(arg5.length) + 520 len 30]
    revert with 0, 
                32,
                34,
                0x6445434453413a20696e76616c6964207369676e6174757265202776272076616c75,
                mem[ceil32(arg5.length) + 520 len 30]
}

function sub_6209deb4(?) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6e4c6e52657761726453797374656d3a20706572696f64204944206d75737420626520706f7369746976,
                    mem[206 len 22]
    if arg2 <= 0:
        if arg3 <= 0:
            revert with 0, 'LnRewardSystem: nothing to claim'
    if block.timestamp < sub_ae5dbee8:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe4c6e52657761726453797374656d3a20666972737420706572696f64206e6f7420737461727465,
                    mem[204 len 24]
    if arg1 >= (block.timestamp - sub_ae5dbee8 / 168 * 24 * 3600) + 1:
        revert with 0, 'LnRewardSystem: period not ended'
    if (block.timestamp - sub_ae5dbee8 / 168 * 24 * 3600) + 1 > 2:
        if arg1 < (block.timestamp - sub_ae5dbee8 / 168 * 24 * 3600) - 1:
            revert with 0, 'LnRewardSystem: reward expired'
    if arg1 <= sub_d31bc57d[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x654c6e52657761726453797374656d3a2072657761726420616c726561647920636c61696d65,
                    mem[202 len 26]
    sub_d31bc57d[address(msg.sender)] = arg1
    require ext_code.size(collateralSystemAddress)
    staticcall collateralSystemAddress.0xbc65d434 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x644c6e52657761726453797374656d3a2062656c6f77207461726765742072617469,
                    mem[198 len 30]
    mem[418 len arg4.length] = arg4[all]
    mem[arg4.length + 418] = 0
    if arg4.length != 65:
        revert with 0, 'ECDSA: invalid signature length'
    if mem[450] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 
                    32,
                    34,
                    0x6f45434453413a20696e76616c6964207369676e6174757265202773272076616c75,
                    mem[ceil32(arg4.length) + 520 len 30]
    revert with 0, 
                32,
                34,
                0x6445434453413a20696e76616c6964207369676e6174757265202776272076616c75,
                mem[ceil32(arg4.length) + 520 len 30]
}



}
