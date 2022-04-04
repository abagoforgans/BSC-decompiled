contract main {




// =====================  Runtime code  =====================


const BUILD_RATIO = 'BuildRatio'


uint8 stor0;
uint8 stor0; offset 8
address stor0;
address adminAddress; offset 16
uint256 stor0; offset 16
uint256 stor0; offset 8
address candidateAddress;
mapping of uint256 uint;

function candidate() payable {
    return candidateAddress
}

function getUint(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return uint[arg1]
}

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function deleteUint(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x644c6e41646d696e5570677261646561626c653a206f6e6c792074686520636f6e74726163742061646d696e2063616e20706572666f726d207468697320616374696f,
                    mem[231 len 29]
    uint[arg1] = 0
    emit 0x7a94ff4a: arg1, 0
}

function setUint(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x644c6e41646d696e5570677261646561626c653a206f6e6c792074686520636f6e74726163742061646d696e2063616e20706572666f726d207468697320616374696f,
                    mem[231 len 29]
    uint[arg1] = arg2
    emit 0x7a94ff4a: arg1, arg2
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

function batchSet(bytes32[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
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
        revert with 0, 'Input lengths must match'
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 50
        uint[cd[((32 * idx) + arg1 + 36)]] = cd[((32 * idx) + arg2 + 36)]
        require idx < arg2.length
        mem[96] = cd[((32 * idx) + arg1 + 36)]
        mem[128] = cd[((32 * idx) + arg2 + 36)]
        emit 0x7a94ff4a: cd[((32 * idx) + arg1 + 36)], cd[((32 * idx) + arg2 + 36)]
        idx = idx + 1
        continue 
}

function sub_2f3e3379(?) payable {
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
        uint8(stor0.field_8) = 0
}



}
