contract main {




// =====================  Runtime code  =====================


const sub_48825e94(?) = 0x7dea0ff38c20ec194d3cb84e9720e47fce7770d8b28af58ea15562bc9cf52860

const sub_6025e492(?) = 1

const sub_a8d6e15d(?) = 2


uint8 stor0;
uint8 stor0; offset 8
address stor0;
address adminAddress; offset 16
uint256 stor0; offset 16
uint256 stor0; offset 8
address candidateAddress;
uint256 currentChainId;
address relayerAddress;
uint256 depositCount;
mapping of struct sub_7ba898f7;
mapping of uint8 stor54;
mapping of uint8 stor55;
uint256 DOMAIN_SEPARATOR;

function sub_0589b8b2(?) payable {
    require calldata.size - 4 >= 64
    return bool(stor54[arg1][arg2])
}

function sub_2bca8a75(?) payable {
    require calldata.size - 4 >= 64
    return bool(stor55[arg1][arg2])
}

function depositCount() payable {
    return depositCount
}

function DOMAIN_SEPARATOR() payable {
    return DOMAIN_SEPARATOR
}

function candidate() payable {
    return candidateAddress
}

function currentChainId() payable {
    return currentChainId
}

function sub_7ba898f7(?) payable {
    require calldata.size - 4 >= 32
    return sub_7ba898f7[arg1].field_160
}

function relayer() payable {
    return relayerAddress
}

function tokenInfos(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return sub_7ba898f7[arg1].field_0, sub_7ba898f7[arg1].field_160
}

function getTokenAddress(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return sub_7ba898f7[arg1].field_0
}

function sub_d22ed8b6(?) payable {
    require calldata.size - 4 >= 64
    return bool(stor54[arg1][arg2])
}

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function setCandidate(address arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x6e4c6e41646d696e5570677261646561626c653a206f6e6c792074686520636f6e74726163742061646d696e2063616e20706572666f726d207468697320616374696f,
                    mem[231 len 29]
    candidateAddress = arg1
    emit CandidateChanged(candidateAddress, arg1);
}

function sub_4c5dd3f3(?) payable {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x6e4c6e41646d696e5570677261646561626c653a206f6e6c792074686520636f6e74726163742061646d696e2063616e20706572666f726d207468697320616374696f,
                    mem[231 len 29]
    if stor54[arg1][arg2]:
        revert with 0, 'LnErc20Bridge: already supported'
    stor54[arg1][arg2] = 1
    emit 0x71d564e2: arg1, arg2
}

function sub_4ff5174c(?) payable {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x6e4c6e41646d696e5570677261646561626c653a206f6e6c792074686520636f6e74726163742061646d696e2063616e20706572666f726d207468697320616374696f,
                    mem[231 len 29]
    if not stor54[arg1][arg2]:
        revert with 0, 'LnErc20Bridge: not supported'
    stor54[arg1][arg2] = 0
    emit 0xb8a30181: arg1, arg2
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

function removeToken(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x6e4c6e41646d696e5570677261646561626c653a206f6e6c792074686520636f6e74726163742061646d696e2063616e20706572666f726d207468697320616374696f,
                    mem[231 len 29]
    if not sub_7ba898f7[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x644c6e45726332304272696467653a20746f6b656e20646f6573206e6f74206578697374,
                    mem[200 len 28]
    sub_7ba898f7[arg1].field_0 = 0
    emit TokenRemoved(arg1);
}

function setRelayer(address arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x6e4c6e41646d696e5570677261646561626c653a206f6e6c792074686520636f6e74726163742061646d696e2063616e20706572666f726d207468697320616374696f,
                    mem[231 len 29]
    if not arg1:
        revert with 0, 'LnErc20Bridge: zero address'
    if relayerAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe4c6e45726332304272696467653a2072656c61796572206e6f74206368616e6765,
                    mem[198 len 30]
    relayerAddress = arg1
    emit 0x18f08848: relayerAddress, arg1
}

function __LnAdminUpgradeable_init(address arg1) payable {
    require calldata.size - 4 >= 32
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
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

function sub_b5949091(?) payable {
    require calldata.size - 4 >= 96
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x6e4c6e41646d696e5570677261646561626c653a206f6e6c792074686520636f6e74726163742061646d696e2063616e20706572666f726d207468697320616374696f,
                    mem[231 len 29]
    if sub_7ba898f7[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6e4c6e45726332304272696467653a20746f6b656e20616c7265616479206578697374,
                    mem[199 len 29]
    if not arg2:
        revert with 0, 'LnErc20Bridge: zero address'
    if arg3 != 1:
        if arg3 != 2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0x644c6e45726332304272696467653a20756e6b6e6f776e20746f6b656e206c6f636b20747970,
                        mem[202 len 26]
    sub_7ba898f7[arg1].field_0 = arg2
    sub_7ba898f7[arg1].field_160 = arg3
    emit 0xd9c6008d: arg1, address(arg2), arg3
}

function sub_6dea0619(?) payable {
    require calldata.size - 4 >= 256
    require arg7 <= 4294967296
    require arg7 + 36 <= calldata.size
    require arg7.length <= 4294967296 and arg7 + arg7.length + 36 <= calldata.size
    if arg2 != currentChainId:
        revert with 0, 'LnErc20Bridge: wrong chain'
    if stor55[arg1][arg3]:
        revert with 0, 'LnErc20Bridge: already withdrawn'
    if not arg4:
        revert with 0, 'LnErc20Bridge: zero address'
    if arg6 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x654c6e45726332304272696467653a20616d6f756e74206d75737420626520706f7369746976,
                    mem[202 len 26]
    if not sub_7ba898f7[arg5].field_0:
        revert with 0, 'LnErc20Bridge: token not found'
    mem[578 len arg7.length] = arg7[all]
    mem[arg7.length + 578] = 0
    if arg7.length != 65:
        revert with 0, 'ECDSA: invalid signature length'
    if mem[610] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 
                    32,
                    34,
                    0x6345434453413a20696e76616c6964207369676e6174757265202773272076616c75,
                    mem[ceil32(arg7.length) + 680 len 30]
    revert with 0, 
                32,
                34,
                0x7345434453413a20696e76616c6964207369676e6174757265202776272076616c75,
                mem[ceil32(arg7.length) + 680 len 30]
}

function sub_df225e8c(?) payable {
    require calldata.size - 4 >= 64
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
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
                                0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if not uint8(stor0.field_8):
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
    if not arg2:
        revert with 0, 'LnAdminUpgradeable: zero address'
    adminAddress = arg2
    emit AdminChanged(0, arg2);
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
    if not arg1:
        revert with 0, 'LnErc20Bridge: zero address'
    if relayerAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe4c6e45726332304272696467653a2072656c61796572206e6f74206368616e6765,
                    mem[198 len 30]
    relayerAddress = arg1
    emit 0x18f08848: relayerAddress, arg1
    currentChainId = chainid
    DOMAIN_SEPARATOR = sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, 0x16061f58256c86e6eb7d166e78be192f96e51b4ccf2d8de3d9fbf3c6cbdb9bb5, 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address)
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function sub_39eeee44(?) payable {
    require calldata.size - 4 >= 128
    if not sub_7ba898f7[arg1].field_0:
        revert with 0, 'LnErc20Bridge: token not found'
    if arg2 <= 0:
        revert with 0, 32, 38, 0x654c6e45726332304272696467653a20616d6f756e74206d75737420626520706f7369746976, mem[266 len 26]
    if arg3 == currentChainId:
        revert with 0, 
                    32,
                    46,
                    0x294c6e45726332304272696467653a2064657374206d75737420626520646966666572656e742066726f6d207372,
                    mem[274 len 18]
    if not stor54[arg1][arg3]:
        revert with 0, 32, 43, 0x654c6e45726332304272696467653a20746f6b656e206e6f7420737570706f72746564206f6e2063686169, mem[271 len 21]
    if not arg4:
        revert with 0, 'LnErc20Bridge: zero address'
    depositCount++
    if sub_7ba898f7[arg1].field_160 != 1:
        if sub_7ba898f7[arg1].field_160 != 2:
            revert with 0, 32, 38, 0x644c6e45726332304272696467653a20756e6b6e6f776e20746f6b656e206c6f636b20747970, mem[266 len 26]
        require ext_code.size(sub_7ba898f7[arg1].field_0)
        call sub_7ba898f7[arg1].field_0.0x9dc29fac with:
             gas gas_remaining wei
            args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        mem[388 len 96] = Mask(32, 224, sha3(0x647472616e7366657246726f6d28616464726573732c616464726573732c75696e74323536)) >> 224, msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
        mem[512 len 4] = uint32(arg2)
        call sub_7ba898f7[arg1].field_0 with:
             gas gas_remaining wei
            args Mask(224, 32, arg2) << 480, mem[484 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            37,
                            0x6e486274635374616b696e67506f6f6c3a207472616e736665722066726f6d206661696c65,
                            mem[493 len 19],
                            uint32(arg2),
                            mem[516 len 4]
            if sub_7ba898f7[arg1].field_0:
                require sub_7ba898f7[arg1].field_0 >= 32
                if not sub_7ba898f7[arg1].field_160:
                    revert with 0, 
                                32,
                                37,
                                0x6e486274635374616b696e67506f6f6c3a207472616e736665722066726f6d206661696c65,
                                mem[493 len 19],
                                uint32(arg2),
                                mem[516 len 4]
        else:
            mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            37,
                            0x6e486274635374616b696e67506f6f6c3a207472616e736665722066726f6d206661696c65,
                            mem[ceil32(return_data.size) + 494 len 27]
            if return_data.size:
                require return_data.size >= 32
                if not mem[420]:
                    revert with 0, 
                                32,
                                37,
                                0x6e486274635374616b696e67506f6f6c3a207472616e736665722066726f6d206661696c65,
                                mem[ceil32(return_data.size) + 494 len 27]
    emit 0xe0480432: currentChainId, arg3, depositCount, msg.sender, arg4, arg1, arg2
}



}
