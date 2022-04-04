contract main {




// =====================  Runtime code  =====================


const maxRewardArrayLen = 100


uint8 stor0;
uint8 stor0; offset 8
address stor0;
address adminAddress; offset 16
uint256 stor0; offset 16
uint256 stor0; offset 8
address candidateAddress;
array of struct userRewards;
mapping of uint256 balanceOf;
uint256 totalNeedToReward;
address stor53;
address linaTokenAddress;

function linaToken() payable {
    return linaTokenAddress
}

function totalNeedToReward() payable {
    return totalNeedToReward
}

function userRewards(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < userRewards[arg1].field_0
    return userRewards[arg1][arg2].field_0, userRewards[arg1][arg2].field_256
}

function candidate() payable {
    return candidateAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function ClaimMaxable() payable {
    if 1 >= userRewards[address(msg.sender)].field_0:
        revert with 0, 'not data to slimming'
    require userRewards[address(msg.sender)].field_0
    # nil
}

function Slimming(address arg1) payable {
    require calldata.size - 4 >= 32
    if 1 >= userRewards[address(arg1)].field_0:
        revert with 0, 'not data to slimming'
    require userRewards[address(arg1)].field_0
    # nil
}

function Claim(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if 1 >= userRewards[address(msg.sender)].field_0:
        revert with 0, 'not data to slimming'
    require userRewards[address(msg.sender)].field_0
    # nil
}

function Init(address arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x644c6e41646d696e5570677261646561626c653a206f6e6c792074686520636f6e74726163742061646d696e2063616e20706572666f726d207468697320616374696f,
                    mem[231 len 29]
    stor53 = arg1
}

function setLinaAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x644c6e41646d696e5570677261646561626c653a206f6e6c792074686520636f6e74726163742061646d696e2063616e20706572666f726d207468697320616374696f,
                    mem[231 len 29]
    linaTokenAddress = arg1
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
                    0xfe4c6e41646d696e5570677261646561626c653a206f6e6c792063616e6469646174652063616e206265636f6d652061646d69,
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

function appendReward(address arg1, uint256 arg2, uint64 arg3) payable {
    require calldata.size - 4 >= 96
    if stor53 != msg.sender:
        revert with 0, 'Only Fee System call'
    if 100 <= userRewards[address(arg1)].field_0:
        if 1 >= userRewards[address(arg1)].field_0:
            revert with 0, 'not data to slimming'
        require userRewards[address(arg1)].field_0
        # nil
    else:
        if 100 < userRewards[address(arg1)].field_0:
            revert with 0, 'user array out of'
        userRewards[address(arg1)].field_0++
        if not userRewards[address(arg1)].field_0:
            userRewards[address(arg1)][userRewards[address(arg1)].field_0].field_0 = 0
            userRewards[address(arg1)][userRewards[address(arg1)].field_0].field_256 = 0
            userRewards[address(arg1)][userRewards[address(arg1)].field_0].field_256 = 0
        userRewards[address(arg1)][userRewards[address(arg1)].field_0].field_0 = arg3
        userRewards[address(arg1)][userRewards[address(arg1)].field_0].field_256 = arg2
        if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] += arg2
        if arg2 + totalNeedToReward < totalNeedToReward:
            revert with 0, 'SafeMath: addition overflow'
        totalNeedToReward += arg2
        emit 0xf43bc8cd: address(arg1), arg2, arg3
}

function __LnRewardLocker_init(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
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
    if not arg1:
        revert with 0, 'LnAdminUpgradeable: zero address'
    adminAddress = arg1
    emit AdminChanged(0, arg1);
    if uint8(stor0.field_8):
        linaTokenAddress = arg2
    else:
        uint8(stor0.field_8) = 0
        linaTokenAddress = arg2
        uint8(stor0.field_8) = 0
}

function bulkAppendReward(address[] arg1, uint256[] arg2, uint64 arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x644c6e41646d696e5570677261646561626c653a206f6e6c792074686520636f6e74726163742061646d696e2063616e20706572666f726d207468697320616374696f,
                    mem[231 len 29]
    if arg2.length != arg1.length:
        revert with 0, 'Length mismatch'
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        if 100 <= userRewards[address(cd[((32 * idx) + arg1 + 36)])].field_0:
            if 1 >= userRewards[address(cd[((32 * idx) + arg1 + 36)])].field_0:
                revert with 0, 'not data to slimming'
            require userRewards[address(cd[((32 * idx) + arg1 + 36)])].field_0
            # nil
        else:
            if 100 < userRewards[address(cd[((32 * idx) + arg1 + 36)])].field_0:
                revert with 0, 'user array out of'
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            mem[32] = 50
            if userRewards[address(cd[((32 * idx) + arg1 + 36)])].field_0:
                _113 = mem[64]
                mem[64] = mem[64] + 64
                mem[_113] = 0
                mem[_113 + 32] = 0
                _116 = mem[64]
                mem[64] = mem[64] + 64
                mem[_116] = arg3
                mem[_116 + 32] = cd[((32 * idx) + arg2 + 36)]
            else:
                _114 = mem[64]
                mem[64] = mem[64] + 64
                mem[_114] = 0
                mem[_114 + 32] = 0
                _122 = mem[64]
                mem[64] = mem[64] + 64
                mem[_122] = 0
                mem[_122 + 32] = 0
                mem[32] = 50
                userRewards[address(cd[((32 * idx) + arg1 + 36)])].field_0++
                mem[0] = sha3(address(cd[((32 * idx) + arg1 + 36)]), 50)
                userRewards[address(cd[((32 * idx) + arg1 + 36)])][userRewards[address(cd[((32 * idx) + arg1 + 36)])].field_0].field_0 = 0
                userRewards[address(cd[((32 * idx) + arg1 + 36)])][userRewards[address(cd[((32 * idx) + arg1 + 36)])].field_0].field_256 = 0
                userRewards[address(cd[((32 * idx) + arg1 + 36)])][userRewards[address(cd[((32 * idx) + arg1 + 36)])].field_0].field_256 = 0
                _131 = mem[64]
                mem[64] = mem[64] + 64
                mem[_131] = 0
                mem[_131 + 32] = 0
                _135 = mem[64]
                mem[64] = mem[64] + 64
                mem[_135] = arg3
                mem[_135 + 32] = cd[((32 * idx) + arg2 + 36)]
            userRewards[address(cd[((32 * idx) + arg1 + 36)])].field_0++
            userRewards[address(cd[((32 * idx) + arg1 + 36)])][userRewards[address(cd[((32 * idx) + arg1 + 36)])].field_0].field_0 = arg3
            userRewards[address(cd[((32 * idx) + arg1 + 36)])][userRewards[address(cd[((32 * idx) + arg1 + 36)])].field_0].field_256 = cd[((32 * idx) + arg2 + 36)]
            if cd[((32 * idx) + arg2 + 36)] + balanceOf[address(cd[((32 * idx) + arg1 + 36)])] < balanceOf[address(cd[((32 * idx) + arg1 + 36)])]:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            mem[32] = 51
            balanceOf[address(cd[((32 * idx) + arg1 + 36)])] += cd[((32 * idx) + arg2 + 36)]
            if cd[((32 * idx) + arg2 + 36)] + totalNeedToReward < totalNeedToReward:
                revert with 0, 'SafeMath: addition overflow'
            totalNeedToReward += cd[((32 * idx) + arg2 + 36)]
            mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
            mem[mem[64] + 32] = cd[((32 * idx) + arg2 + 36)]
            mem[mem[64] + 64] = arg3
            emit 0xf43bc8cd: address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)], arg3
            idx = idx + 1
            continue 
}



}
