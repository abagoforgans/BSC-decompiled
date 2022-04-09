contract main {




// =====================  Runtime code  =====================


address controllerAddress;
uint256 stor0;
uint256 migrationTimestamp;
uint32 stor2;
address migrationDestinationAddress;
uint256 stor2;
array of uint256 symbol;
address stor4;
uint256 stor5;
address stor6;
uint256 stor7;
uint256 stor8;
uint256 stateValues;
uint8 stor10;

function getStateValues() payable {
    return stateValues
}

function migrationTimestamp() payable {
    return migrationTimestamp
}

function migrationDestination() payable {
    return address(migrationDestinationAddress)
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function controller() payable {
    return address(controllerAddress)
}

function _fallback() payable {
    revert
}

function getAddresses() payable {
    return stor4, stor6
}

function getParameters() payable {
    return stor7, stor8
}

function setController(address arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x774d696772617461626c65506f6f6c3a20736574436f6e74726f6c6c657220746f203020616464726573,
                    mem[206 len 22]
    if address(controllerAddress):
        if address(controllerAddress) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        81,
                        0x744d696772617461626c65506f6f6c3a20736574436f6e74726f6c6c65722063616e206f6e6c792062652063616c6c65642062792063757272656e7420636f6e74726f6c6c6572206f72206e6f74207365,
                        mem[245 len 15]
    address(controllerAddress) = arg1
}

function sub_20a39957(?) payable {
    require calldata.size - 4 >= 160
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if symbol.length:
        revert with 0, 
                    32,
                    34,
                    0x7350657270657475616c506f6f6c3a20616c726561647920696e697469616c697a65,
                    mem[ceil32(arg1.length) + 230 len 30]
    if address(controllerAddress):
        revert with 0, 
                    32,
                    34,
                    0x7350657270657475616c506f6f6c3a20616c726561647920696e697469616c697a65,
                    mem[ceil32(arg1.length) + 230 len 30]
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    if arg1.length:
        symbol[] = Array(len=arg1.length, data=arg1[all])
    else:
        symbol.length = 0
        idx = 0
        while symbol.length + 31 / 32 > idx:
            symbol[idx] = 0
            idx = idx + 1
            continue 
    stor4 = arg2
    require ext_code.size(arg2)
    staticcall arg2.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor5 = ext_call.return_data[31 len 1]
    stor6 = arg3
    stor7 = arg4
    stor8 = arg5
}

function prepareMigration(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if address(controllerAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x7363616e206f6e6c792062652063616c6c65642062792063757272656e7420636f6e74726f6c6c65,
                    mem[204 len 24]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x794d696772617461626c65506f6f6c3a20707265706172654d6967726174696f6e20746f203020616464726573,
                    mem[209 len 19]
    if arg2 < 3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x774d696772617461626c65506f6f6c3a20677261636544617973206d75737420626520332d33363520646179,
                    mem[208 len 20]
    if arg2 > 365:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x774d696772617461626c65506f6f6c3a20677261636544617973206d75737420626520332d33363520646179,
                    mem[208 len 20]
    migrationTimestamp = block.timestamp + (24 * 3600 * arg2)
    address(migrationDestinationAddress) = arg1
    emit PrepareMigration(block.timestamp + (24 * 3600 * arg2), this.address, arg1);
}

function approveMigration() payable {
    if address(controllerAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x7363616e206f6e6c792062652063616c6c65642062792063757272656e7420636f6e74726f6c6c65,
                    mem[204 len 24]
    if not migrationTimestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x6450657270657475616c506f6f6c3a206d6967726174696f6e54696d657374616d70206e6f74206d6574207965,
                    mem[209 len 19]
    if block.timestamp < migrationTimestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x6450657270657475616c506f6f6c3a206d6967726174696f6e54696d657374616d70206e6f74206d6574207965,
                    mem[209 len 19]
    require ext_code.size(stor4)
    staticcall stor4.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, address(migrationDestinationAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x775361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                    mem[218 len 10]
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x6c416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(stor4):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor2), uint32(stor2), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    call stor4 with:
       funct uint32(stor2)
         gas gas_remaining wei
        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor2), uint32(stor2), -1
        if not approve(address rg1, uint256 rg2), Mask(224, 0, stor2):
            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    require ext_code.size(stor6)
    call stor6.0x4437152a with:
         gas gas_remaining wei
        args address(migrationDestinationAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function executeMigration(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(controllerAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x7363616e206f6e6c792062652063616c6c65642062792063757272656e7420636f6e74726f6c6c65,
                    mem[204 len 24]
    require ext_code.size(arg1)
    staticcall arg1.0x58c700a3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x79a87b19 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x6450657270657475616c506f6f6c3a206d6967726174696f6e54696d657374616d70206e6f74206d6574207965,
                    mem[209 len 19]
    if block.timestamp < ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x6450657270657475616c506f6f6c3a206d6967726174696f6e54696d657374616d70206e6f74206d6574207965,
                    mem[209 len 19]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    55,
                    0x7750657270657475616c506f6f6c3a20657865637574654d6967726174696f6e20746f206e6f742064657374696e6174696f6e20706f6f,
                    mem[219 len 9]
    require ext_code.size(stor4)
    staticcall stor4.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x6c416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(stor4):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), address(arg1) << 64, 0, address(this.address), ext_call.return_data[0 len 28]
    mem[416 len 4] = 0
    call stor4 with:
         gas gas_remaining wei
        args Mask(736, -512, ext_call.return_data[0 len 28]) << 512, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), address(arg1) << 64, 0, address(this.address), ext_call.return_data[0]
        if not unknown_0x23b872dd(?????), address(arg1) << 64:
            revert with 0, 
                        32,
                        42,
                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    require ext_code.size(arg1)
    staticcall arg1.0x547b4579 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stateValues = ext_call.return_data[0]
    emit ExecuteMigration(migrationTimestamp, address(arg1), this.address);
}

function addLiquidity(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor10:
        revert with 0, 'PerpetualPool: reentry'
    stor10 = 1
    if arg1 < stor7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    58,
                    0x6c50657270657475616c506f6f6c3a20616464206c6971756964697479206c657373207468616e206d696e696d756d20726571756972656d656e,
                    mem[222 len 6]
    require 10^stor5
    if 10^stor5 * arg1 / 10^stor5 != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x314d69786564536166654d61746857697468556e69743a2072657363616c652075696e74323536206f766572666c6f,
                    mem[211 len 17]
    if 10^18 * 10^stor5 * arg1 / 10^18 / 10^18 != 10^stor5 * arg1 / 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x314d69786564536166654d61746857697468556e69743a2072657363616c652075696e74323536206f766572666c6f,
                    mem[211 len 17]
    require 10^stor5
    if 10^18 * 10^stor5 * arg1 / 10^18 / 10^stor5 != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x7350657270657475616c506f6f6c3a205f6164644c69717569646974792062416d6f756e74206e6f742076616c69,
                    mem[210 len 18]
    require ext_code.size(stor4)
    staticcall stor4.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 10^stor5
    if 10^stor5 * arg1 / 10^stor5 != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x314d69786564536166654d61746857697468556e69743a2072657363616c652075696e74323536206f766572666c6f,
                    mem[211 len 17]
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x6c416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(stor4):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, 10^stor5 * arg1 / 10^18) >> 32
    mem[416 len 4] = 0
    call stor4 with:
         gas gas_remaining wei
        args Mask(224, 32, 10^stor5 * arg1 / 10^18) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), 10^stor5 * arg1 / 10^18
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        require ext_code.size(stor4)
        staticcall stor4.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 
                        32,
                        51,
                        0x644d69786564536166654d61746857697468556e69743a2075696e74323536207375627472616374696f6e206f766572666c6f,
                        mem[411 len 5],
                        0,
                        mem[420 len 4]
        require 10^stor5
        require ext_code.size(stor6)
        staticcall stor6.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(stor6)
            call stor6.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, 0 / 10^stor5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if (0 / 10^stor5) + stateValues < stateValues:
                revert with 0, 
                            32,
                            48,
                            0x724d69786564536166654d61746857697468556e69743a2075696e74323536206164646974696f6e206f766572666c6f,
                            mem[408 len 8],
                            0,
                            mem[420 len 4]
            stateValues += 0 / 10^stor5
            emit AddLiquidity(0 / 10^stor5, 0 / 10^stor5, msg.sender);
        else:
            if not 0 / 10^stor5:
                if not stateValues:
                    revert with 0, 
                                32,
                                47,
                                0x774d69786564536166654d61746857697468556e69743a2075696e74323536206469766973696f6e206279207a6572,
                                mem[407 len 9],
                                0,
                                mem[420 len 4]
                require stateValues
                require ext_code.size(stor6)
                call stor6.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, 0 / stateValues
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if (0 / 10^stor5) + stateValues < stateValues:
                    revert with 0, 
                                32,
                                48,
                                0x724d69786564536166654d61746857697468556e69743a2075696e74323536206164646974696f6e206f766572666c6f,
                                mem[408 len 8],
                                0,
                                mem[420 len 4]
                stateValues += 0 / 10^stor5
                emit AddLiquidity(0 / stateValues, 0 / 10^stor5, msg.sender);
            else:
                if ext_call.return_data[0] * 0 / 10^stor5 / 0 / 10^stor5 != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x734d69786564536166654d61746857697468556e69743a2075696e74323536206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[414 len 2],
                                0,
                                mem[420 len 4]
                if not stateValues:
                    revert with 0, 
                                32,
                                47,
                                0x774d69786564536166654d61746857697468556e69743a2075696e74323536206469766973696f6e206279207a6572,
                                mem[407 len 9],
                                0,
                                mem[420 len 4]
                if ext_call.return_data[0] * 0 / 10^stor5 / 10^18 != 10^18 * ext_call.return_data[0] * 0 / 10^stor5 / 10^18 / 10^18:
                    revert with 0, 
                                32,
                                72,
                                0x744d69786564536166654d61746857697468556e69743a2075696e74323536206469766973696f6e20696e7465726e616c206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[432 len 24]
                require stateValues
                require ext_code.size(stor6)
                call stor6.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, 10^18 * ext_call.return_data[0] * 0 / 10^stor5 / 10^18 / stateValues
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if (0 / 10^stor5) + stateValues < stateValues:
                    revert with 0, 
                                32,
                                48,
                                0x724d69786564536166654d61746857697468556e69743a2075696e74323536206164646974696f6e206f766572666c6f,
                                mem[408 len 8],
                                0,
                                mem[420 len 4]
                stateValues += 0 / 10^stor5
                emit AddLiquidity(10^18 * ext_call.return_data[0] * 0 / 10^stor5 / 10^18 / stateValues, 0 / 10^stor5, msg.sender);
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
        require ext_code.size(stor4)
        staticcall stor4.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 
                        32,
                        51,
                        0x644d69786564536166654d61746857697468556e69743a2075696e74323536207375627472616374696f6e206f766572666c6f,
                        mem[ceil32(return_data.size) + 412 len 13]
        require 10^stor5
        require ext_code.size(stor6)
        staticcall stor6.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(stor6)
            call stor6.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, 0 / 10^stor5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if (0 / 10^stor5) + stateValues < stateValues:
                revert with 0, 
                            32,
                            48,
                            0x724d69786564536166654d61746857697468556e69743a2075696e74323536206164646974696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 409 len 16]
            stateValues += 0 / 10^stor5
            emit AddLiquidity(0 / 10^stor5, 0 / 10^stor5, msg.sender);
        else:
            if not 0 / 10^stor5:
                if not stateValues:
                    revert with 0, 
                                32,
                                47,
                                0x774d69786564536166654d61746857697468556e69743a2075696e74323536206469766973696f6e206279207a6572,
                                mem[ceil32(return_data.size) + 408 len 17]
                require stateValues
                require ext_code.size(stor6)
                call stor6.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, 0 / stateValues
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if (0 / 10^stor5) + stateValues < stateValues:
                    revert with 0, 
                                32,
                                48,
                                0x724d69786564536166654d61746857697468556e69743a2075696e74323536206164646974696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 409 len 16]
                stateValues += 0 / 10^stor5
                emit AddLiquidity(0 / stateValues, 0 / 10^stor5, msg.sender);
            else:
                if ext_call.return_data[0] * 0 / 10^stor5 / 0 / 10^stor5 != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x734d69786564536166654d61746857697468556e69743a2075696e74323536206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 415 len 10]
                if not stateValues:
                    revert with 0, 
                                32,
                                47,
                                0x774d69786564536166654d61746857697468556e69743a2075696e74323536206469766973696f6e206279207a6572,
                                mem[ceil32(return_data.size) + 408 len 17]
                if ext_call.return_data[0] * 0 / 10^stor5 / 10^18 != 10^18 * ext_call.return_data[0] * 0 / 10^stor5 / 10^18 / 10^18:
                    revert with 0, 
                                32,
                                72,
                                0x744d69786564536166654d61746857697468556e69743a2075696e74323536206469766973696f6e20696e7465726e616c206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 433 len 24]
                require stateValues
                require ext_code.size(stor6)
                call stor6.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, 10^18 * ext_call.return_data[0] * 0 / 10^stor5 / 10^18 / stateValues
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if (0 / 10^stor5) + stateValues < stateValues:
                    revert with 0, 
                                32,
                                48,
                                0x724d69786564536166654d61746857697468556e69743a2075696e74323536206164646974696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 409 len 16]
                stateValues += 0 / 10^stor5
                emit AddLiquidity(10^18 * ext_call.return_data[0] * 0 / 10^stor5 / 10^18 / stateValues, 0 / 10^stor5, msg.sender);
    stor10 = 0
}

function removeLiquidity(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor10:
        revert with 0, 'PerpetualPool: reentry'
    stor10 = 1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe50657270657475616c506f6f6c3a2072656d6f76652030206c69717569646974,
                    mem[197 len 31]
    require ext_code.size(stor6)
    staticcall stor6.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] == arg1:
        require ext_code.size(stor6)
        staticcall stor6.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not arg1:
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            47,
                            0x774d69786564536166654d61746857697468556e69743a2075696e74323536206469766973696f6e206279207a6572,
                            mem[211 len 17]
            require ext_call.return_data[0]
            if arg1 >= ext_call.return_data[0]:
                require 10^stor5
                if 10^stor5 * 0 / ext_call.return_data[0] / 10^stor5 != 0 / ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                47,
                                0x314d69786564536166654d61746857697468556e69743a2072657363616c652075696e74323536206f766572666c6f,
                                mem[211 len 17]
                if 10^18 * 10^stor5 * 0 / ext_call.return_data[0] / 10^18 / 10^18 != 10^stor5 * 0 / ext_call.return_data[0] / 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                47,
                                0x314d69786564536166654d61746857697468556e69743a2072657363616c652075696e74323536206f766572666c6f,
                                mem[211 len 17]
                require 10^stor5
                if stateValues < 10^18 * 10^stor5 * 0 / ext_call.return_data[0] / 10^18 / 10^stor5:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                51,
                                0x644d69786564536166654d61746857697468556e69743a2075696e74323536207375627472616374696f6e206f766572666c6f,
                                mem[215 len 13]
                stateValues -= 10^18 * 10^stor5 * 0 / ext_call.return_data[0] / 10^18 / 10^stor5
                require ext_code.size(stor6)
                call stor6.0x9dc29fac with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require 10^stor5
                if 10^stor5 * 10^18 * 10^stor5 * 0 / ext_call.return_data[0] / 10^18 / 10^stor5 / 10^stor5 != 10^18 * 10^stor5 * 0 / ext_call.return_data[0] / 10^18 / 10^stor5:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                47,
                                0x314d69786564536166654d61746857697468556e69743a2072657363616c652075696e74323536206f766572666c6f,
                                mem[211 len 17]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x6c416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(stor4):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 10^stor5 * 10^18 * 10^stor5 * 0 / ext_call.return_data[0] / 10^18 / 10^stor5 / 10^18) >> 32
                call stor4 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, 10^stor5 * 10^18 * 10^stor5 * 0 / ext_call.return_data[0] / 10^18 / 10^stor5 / 10^18) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), 
                                    msg.sender,
                                    10^stor5 * 10^18 * 10^stor5 * 0 / ext_call.return_data[0] / 10^18 / 10^stor5 / 10^18
                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
                emit RemoveLiquidity(arg1, 10^18 * 10^stor5 * 0 / ext_call.return_data[0] / 10^18 / 10^stor5, msg.sender);
            else:
                if not 0 / ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0] < 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    51,
                                    0x644d69786564536166654d61746857697468556e69743a2075696e74323536207375627472616374696f6e206f766572666c6f,
                                    mem[215 len 13]
                    require 10^stor5
                    if 10^stor5 * 0 / ext_call.return_data[0] / 10^stor5 != 0 / ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    47,
                                    0x314d69786564536166654d61746857697468556e69743a2072657363616c652075696e74323536206f766572666c6f,
                                    mem[211 len 17]
                    if 10^18 * 10^stor5 * 0 / ext_call.return_data[0] / 10^18 / 10^18 != 10^stor5 * 0 / ext_call.return_data[0] / 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    47,
                                    0x314d69786564536166654d61746857697468556e69743a2072657363616c652075696e74323536206f766572666c6f,
                                    mem[211 len 17]
                    require 10^stor5
                    if stateValues < 10^18 * 10^stor5 * 0 / ext_call.return_data[0] / 10^18 / 10^stor5:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    51,
                                    0x644d69786564536166654d61746857697468556e69743a2075696e74323536207375627472616374696f6e206f766572666c6f,
                                    mem[215 len 13]
                    stateValues -= 10^18 * 10^stor5 * 0 / ext_call.return_data[0] / 10^18 / 10^stor5
                    require ext_code.size(stor6)
                    call stor6.0x9dc29fac with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require 10^stor5
                    if 10^stor5 * 10^18 * 10^stor5 * 0 / ext_call.return_data[0] / 10^18 / 10^stor5 / 10^stor5 != 10^18 * 10^stor5 * 0 / ext_call.return_data[0] / 10^18 / 10^stor5:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    47,
                                    0x314d69786564536166654d61746857697468556e69743a2072657363616c652075696e74323536206f766572666c6f,
                                    mem[211 len 17]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x6c416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(stor4):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 10^stor5 * 10^18 * 10^stor5 * 0 / ext_call.return_data[0] / 10^18 / 10^stor5 / 10^18) >> 32
                    call stor4 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, 10^stor5 * 10^18 * 10^stor5 * 0 / ext_call.return_data[0] / 10^18 / 10^stor5 / 10^18) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), 
                                        msg.sender,
                                        10^stor5 * 10^18 * 10^stor5 * 0 / ext_call.return_data[0] / 10^18 / 10^stor5 / 10^18
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                    emit RemoveLiquidity(arg1, 10^18 * 10^stor5 * 0 / ext_call.return_data[0] / 10^18 / 10^stor5, msg.sender);
                else:
                    if stor8 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != stor8:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    54,
                                    0x734d69786564536166654d61746857697468556e69743a2075696e74323536206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[218 len 10]
                    if 0 / ext_call.return_data[0] < stor8 * 0 / ext_call.return_data[0] / 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    51,
                                    0x644d69786564536166654d61746857697468556e69743a2075696e74323536207375627472616374696f6e206f766572666c6f,
                                    mem[215 len 13]
                    require 10^stor5
                    if (0 / ext_call.return_data[0] * 10^stor5) - (stor8 * 0 / ext_call.return_data[0] / 10^18 * 10^stor5) / 10^stor5 != (0 / ext_call.return_data[0]) - (stor8 * 0 / ext_call.return_data[0] / 10^18):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    47,
                                    0x314d69786564536166654d61746857697468556e69743a2072657363616c652075696e74323536206f766572666c6f,
                                    mem[211 len 17]
                    if 10^18 * (0 / ext_call.return_data[0] * 10^stor5) - (stor8 * 0 / ext_call.return_data[0] / 10^18 * 10^stor5) / 10^18 / 10^18 != (0 / ext_call.return_data[0] * 10^stor5) - (stor8 * 0 / ext_call.return_data[0] / 10^18 * 10^stor5) / 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    47,
                                    0x314d69786564536166654d61746857697468556e69743a2072657363616c652075696e74323536206f766572666c6f,
                                    mem[211 len 17]
                    require 10^stor5
                    if stateValues < 10^18 * (0 / ext_call.return_data[0] * 10^stor5) - (stor8 * 0 / ext_call.return_data[0] / 10^18 * 10^stor5) / 10^18 / 10^stor5:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    51,
                                    0x644d69786564536166654d61746857697468556e69743a2075696e74323536207375627472616374696f6e206f766572666c6f,
                                    mem[215 len 13]
                    stateValues -= 10^18 * (0 / ext_call.return_data[0] * 10^stor5) - (stor8 * 0 / ext_call.return_data[0] / 10^18 * 10^stor5) / 10^18 / 10^stor5
                    require ext_code.size(stor6)
                    call stor6.0x9dc29fac with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require 10^stor5
                    if 10^stor5 * 10^18 * (0 / ext_call.return_data[0] * 10^stor5) - (stor8 * 0 / ext_call.return_data[0] / 10^18 * 10^stor5) / 10^18 / 10^stor5 / 10^stor5 != 10^18 * (0 / ext_call.return_data[0] * 10^stor5) - (stor8 * 0 / ext_call.return_data[0] / 10^18 * 10^stor5) / 10^18 / 10^stor5:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    47,
                                    0x314d69786564536166654d61746857697468556e69743a2072657363616c652075696e74323536206f766572666c6f,
                                    mem[211 len 17]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x6c416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(stor4):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 10^stor5 * 10^18 * (0 / ext_call.return_data[0] * 10^stor5) - (stor8 * 0 / ext_call.return_data[0] / 10^18 * 10^stor5) / 10^18 / 10^stor5 / 10^18) >> 32
                    call stor4 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, 10^stor5 * 10^18 * (0 / ext_call.return_data[0] * 10^stor5) - (stor8 * 0 / ext_call.return_data[0] / 10^18 * 10^stor5) / 10^18 / 10^stor5 / 10^18) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), 
                                        msg.sender,
                                        10^stor5 * 10^18 * (0 / ext_call.return_data[0] * 10^stor5) - (stor8 * 0 / ext_call.return_data[0] / 10^18 * 10^stor5) / 10^18 / 10^stor5 / 10^18
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                    emit RemoveLiquidity(arg1, 10^18 * (0 / ext_call.return_data[0] * 10^stor5) - (stor8 * 0 / ext_call.return_data[0] / 10^18 * 10^stor5) / 10^18 / 10^stor5, msg.sender);
        else:
            if stateValues * arg1 / arg1 != stateValues:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            54,
                            0x734d69786564536166654d61746857697468556e69743a2075696e74323536206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[218 len 10]
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            47,
                            0x774d69786564536166654d61746857697468556e69743a2075696e74323536206469766973696f6e206279207a6572,
                            mem[211 len 17]
            if stateValues * arg1 / 10^18 != 10^18 * stateValues * arg1 / 10^18 / 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            72,
                            0x744d69786564536166654d61746857697468556e69743a2075696e74323536206469766973696f6e20696e7465726e616c206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[236 len 24]
            require ext_call.return_data[0]
            if arg1 >= ext_call.return_data[0]:
                require 10^stor5
                if 10^stor5 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^stor5 != 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                47,
                                0x314d69786564536166654d61746857697468556e69743a2072657363616c652075696e74323536206f766572666c6f,
                                mem[211 len 17]
                if 10^18 * 10^stor5 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 / 10^18 != 10^stor5 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                47,
                                0x314d69786564536166654d61746857697468556e69743a2072657363616c652075696e74323536206f766572666c6f,
                                mem[211 len 17]
                require 10^stor5
                if stateValues < 10^18 * 10^stor5 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 / 10^stor5:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                51,
                                0x644d69786564536166654d61746857697468556e69743a2075696e74323536207375627472616374696f6e206f766572666c6f,
                                mem[215 len 13]
                stateValues -= 10^18 * 10^stor5 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 / 10^stor5
                require ext_code.size(stor6)
                call stor6.0x9dc29fac with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require 10^stor5
                if 10^stor5 * 10^18 * 10^stor5 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 / 10^stor5 / 10^stor5 != 10^18 * 10^stor5 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 / 10^stor5:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                47,
                                0x314d69786564536166654d61746857697468556e69743a2072657363616c652075696e74323536206f766572666c6f,
                                mem[211 len 17]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x6c416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(stor4):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 10^stor5 * 10^18 * 10^stor5 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 / 10^stor5 / 10^18) >> 32
                mem[324 len 0] = 0
                call stor4 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, 10^stor5 * 10^18 * 10^stor5 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 / 10^stor5 / 10^18) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), 
                                    msg.sender,
                                    10^stor5 * 10^18 * 10^stor5 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 / 10^stor5 / 10^18
                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
                emit RemoveLiquidity(arg1, 10^18 * 10^stor5 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 / 10^stor5, msg.sender);
            else:
                if not 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0]:
                    if 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] < 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    51,
                                    0x644d69786564536166654d61746857697468556e69743a2075696e74323536207375627472616374696f6e206f766572666c6f,
                                    mem[215 len 13]
                    require 10^stor5
                    if 10^stor5 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^stor5 != 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    47,
                                    0x314d69786564536166654d61746857697468556e69743a2072657363616c652075696e74323536206f766572666c6f,
                                    mem[211 len 17]
                    if 10^18 * 10^stor5 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 / 10^18 != 10^stor5 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    47,
                                    0x314d69786564536166654d61746857697468556e69743a2072657363616c652075696e74323536206f766572666c6f,
                                    mem[211 len 17]
                    require 10^stor5
                    if stateValues < 10^18 * 10^stor5 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 / 10^stor5:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    51,
                                    0x644d69786564536166654d61746857697468556e69743a2075696e74323536207375627472616374696f6e206f766572666c6f,
                                    mem[215 len 13]
                    stateValues -= 10^18 * 10^stor5 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 / 10^stor5
                    require ext_code.size(stor6)
                    call stor6.0x9dc29fac with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require 10^stor5
                    if 10^stor5 * 10^18 * 10^stor5 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 / 10^stor5 / 10^stor5 != 10^18 * 10^stor5 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 / 10^stor5:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    47,
                                    0x314d69786564536166654d61746857697468556e69743a2072657363616c652075696e74323536206f766572666c6f,
                                    mem[211 len 17]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x6c416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(stor4):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 10^stor5 * 10^18 * 10^stor5 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 / 10^stor5 / 10^18) >> 32
                    call stor4 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, 10^stor5 * 10^18 * 10^stor5 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 / 10^stor5 / 10^18) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), 
                                        msg.sender,
                                        10^stor5 * 10^18 * 10^stor5 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 / 10^stor5 / 10^18
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                    emit RemoveLiquidity(arg1, 10^18 * 10^stor5 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 / 10^stor5, msg.sender);
                else:
                    if stor8 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] != stor8:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    54,
                                    0x734d69786564536166654d61746857697468556e69743a2075696e74323536206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[218 len 10]
                    if 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] < stor8 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    51,
                                    0x644d69786564536166654d61746857697468556e69743a2075696e74323536207375627472616374696f6e206f766572666c6f,
                                    mem[215 len 13]
                    require 10^stor5
                    if (10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] * 10^stor5) - (stor8 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 * 10^stor5) / 10^stor5 != (10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0]) - (stor8 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    47,
                                    0x314d69786564536166654d61746857697468556e69743a2072657363616c652075696e74323536206f766572666c6f,
                                    mem[211 len 17]
                    if 10^18 * (10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] * 10^stor5) - (stor8 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 * 10^stor5) / 10^18 / 10^18 != (10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] * 10^stor5) - (stor8 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 * 10^stor5) / 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    47,
                                    0x314d69786564536166654d61746857697468556e69743a2072657363616c652075696e74323536206f766572666c6f,
                                    mem[211 len 17]
                    require 10^stor5
                    if stateValues < 10^18 * (10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] * 10^stor5) - (stor8 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 * 10^stor5) / 10^18 / 10^stor5:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    51,
                                    0x644d69786564536166654d61746857697468556e69743a2075696e74323536207375627472616374696f6e206f766572666c6f,
                                    mem[215 len 13]
                    stateValues -= 10^18 * (10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] * 10^stor5) - (stor8 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 * 10^stor5) / 10^18 / 10^stor5
                    require ext_code.size(stor6)
                    call stor6.0x9dc29fac with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require 10^stor5
                    if 10^stor5 * 10^18 * (10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] * 10^stor5) - (stor8 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 * 10^stor5) / 10^18 / 10^stor5 / 10^stor5 != 10^18 * (10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] * 10^stor5) - (stor8 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 * 10^stor5) / 10^18 / 10^stor5:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    47,
                                    0x314d69786564536166654d61746857697468556e69743a2072657363616c652075696e74323536206f766572666c6f,
                                    mem[211 len 17]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x6c416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(stor4):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 10^stor5 * 10^18 * (10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] * 10^stor5) - (stor8 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 * 10^stor5) / 10^18 / 10^stor5 / 10^18) >> 32
                    call stor4 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, 10^stor5 * 10^18 * (10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] * 10^stor5) - (stor8 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 * 10^stor5) / 10^18 / 10^stor5 / 10^18) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), 
                                        msg.sender,
                                        10^stor5 * 10^18 * (10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] * 10^stor5) - (stor8 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 * 10^stor5) / 10^18 / 10^stor5 / 10^18
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                    emit RemoveLiquidity(arg1, 10^18 * (10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] * 10^stor5) - (stor8 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 * 10^stor5) / 10^18 / 10^stor5, msg.sender);
    else:
        if ext_call.return_data[0] < arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        51,
                        0x644d69786564536166654d61746857697468556e69743a2075696e74323536207375627472616374696f6e206f766572666c6f,
                        mem[215 len 13]
        if ext_call.return_data[0] - arg1 < 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        65,
                        0x7450657270657475616c506f6f6c3a2072656d61696e696e67206c697175696469747920736861726573206d7573742062652030206f72206174206c6561737420,
                        mem[229 len 31]
        require ext_code.size(stor6)
        staticcall stor6.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not arg1:
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            47,
                            0x774d69786564536166654d61746857697468556e69743a2075696e74323536206469766973696f6e206279207a6572,
                            mem[211 len 17]
            require ext_call.return_data[0]
            if arg1 >= ext_call.return_data[0]:
                require 10^stor5
                if 10^stor5 * 0 / ext_call.return_data[0] / 10^stor5 != 0 / ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                47,
                                0x314d69786564536166654d61746857697468556e69743a2072657363616c652075696e74323536206f766572666c6f,
                                mem[211 len 17]
                if 10^18 * 10^stor5 * 0 / ext_call.return_data[0] / 10^18 / 10^18 != 10^stor5 * 0 / ext_call.return_data[0] / 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                47,
                                0x314d69786564536166654d61746857697468556e69743a2072657363616c652075696e74323536206f766572666c6f,
                                mem[211 len 17]
                require 10^stor5
                if stateValues < 10^18 * 10^stor5 * 0 / ext_call.return_data[0] / 10^18 / 10^stor5:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                51,
                                0x644d69786564536166654d61746857697468556e69743a2075696e74323536207375627472616374696f6e206f766572666c6f,
                                mem[215 len 13]
                stateValues -= 10^18 * 10^stor5 * 0 / ext_call.return_data[0] / 10^18 / 10^stor5
                require ext_code.size(stor6)
                call stor6.0x9dc29fac with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require 10^stor5
                if 10^stor5 * 10^18 * 10^stor5 * 0 / ext_call.return_data[0] / 10^18 / 10^stor5 / 10^stor5 != 10^18 * 10^stor5 * 0 / ext_call.return_data[0] / 10^18 / 10^stor5:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                47,
                                0x314d69786564536166654d61746857697468556e69743a2072657363616c652075696e74323536206f766572666c6f,
                                mem[211 len 17]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x6c416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(stor4):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 10^stor5 * 10^18 * 10^stor5 * 0 / ext_call.return_data[0] / 10^18 / 10^stor5 / 10^18) >> 32
                call stor4 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, 10^stor5 * 10^18 * 10^stor5 * 0 / ext_call.return_data[0] / 10^18 / 10^stor5 / 10^18) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), 
                                    msg.sender,
                                    10^stor5 * 10^18 * 10^stor5 * 0 / ext_call.return_data[0] / 10^18 / 10^stor5 / 10^18
                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
                emit RemoveLiquidity(arg1, 10^18 * 10^stor5 * 0 / ext_call.return_data[0] / 10^18 / 10^stor5, msg.sender);
            else:
                if not 0 / ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0] < 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    51,
                                    0x644d69786564536166654d61746857697468556e69743a2075696e74323536207375627472616374696f6e206f766572666c6f,
                                    mem[215 len 13]
                    require 10^stor5
                    if 10^stor5 * 0 / ext_call.return_data[0] / 10^stor5 != 0 / ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    47,
                                    0x314d69786564536166654d61746857697468556e69743a2072657363616c652075696e74323536206f766572666c6f,
                                    mem[211 len 17]
                    if 10^18 * 10^stor5 * 0 / ext_call.return_data[0] / 10^18 / 10^18 != 10^stor5 * 0 / ext_call.return_data[0] / 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    47,
                                    0x314d69786564536166654d61746857697468556e69743a2072657363616c652075696e74323536206f766572666c6f,
                                    mem[211 len 17]
                    require 10^stor5
                    if stateValues < 10^18 * 10^stor5 * 0 / ext_call.return_data[0] / 10^18 / 10^stor5:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    51,
                                    0x644d69786564536166654d61746857697468556e69743a2075696e74323536207375627472616374696f6e206f766572666c6f,
                                    mem[215 len 13]
                    stateValues -= 10^18 * 10^stor5 * 0 / ext_call.return_data[0] / 10^18 / 10^stor5
                    require ext_code.size(stor6)
                    call stor6.0x9dc29fac with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require 10^stor5
                    if 10^stor5 * 10^18 * 10^stor5 * 0 / ext_call.return_data[0] / 10^18 / 10^stor5 / 10^stor5 != 10^18 * 10^stor5 * 0 / ext_call.return_data[0] / 10^18 / 10^stor5:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    47,
                                    0x314d69786564536166654d61746857697468556e69743a2072657363616c652075696e74323536206f766572666c6f,
                                    mem[211 len 17]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x6c416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(stor4):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 10^stor5 * 10^18 * 10^stor5 * 0 / ext_call.return_data[0] / 10^18 / 10^stor5 / 10^18) >> 32
                    call stor4 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, 10^stor5 * 10^18 * 10^stor5 * 0 / ext_call.return_data[0] / 10^18 / 10^stor5 / 10^18) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), 
                                        msg.sender,
                                        10^stor5 * 10^18 * 10^stor5 * 0 / ext_call.return_data[0] / 10^18 / 10^stor5 / 10^18
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                    emit RemoveLiquidity(arg1, 10^18 * 10^stor5 * 0 / ext_call.return_data[0] / 10^18 / 10^stor5, msg.sender);
                else:
                    if stor8 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != stor8:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    54,
                                    0x734d69786564536166654d61746857697468556e69743a2075696e74323536206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[218 len 10]
                    if 0 / ext_call.return_data[0] < stor8 * 0 / ext_call.return_data[0] / 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    51,
                                    0x644d69786564536166654d61746857697468556e69743a2075696e74323536207375627472616374696f6e206f766572666c6f,
                                    mem[215 len 13]
                    require 10^stor5
                    if (0 / ext_call.return_data[0] * 10^stor5) - (stor8 * 0 / ext_call.return_data[0] / 10^18 * 10^stor5) / 10^stor5 != (0 / ext_call.return_data[0]) - (stor8 * 0 / ext_call.return_data[0] / 10^18):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    47,
                                    0x314d69786564536166654d61746857697468556e69743a2072657363616c652075696e74323536206f766572666c6f,
                                    mem[211 len 17]
                    if 10^18 * (0 / ext_call.return_data[0] * 10^stor5) - (stor8 * 0 / ext_call.return_data[0] / 10^18 * 10^stor5) / 10^18 / 10^18 != (0 / ext_call.return_data[0] * 10^stor5) - (stor8 * 0 / ext_call.return_data[0] / 10^18 * 10^stor5) / 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    47,
                                    0x314d69786564536166654d61746857697468556e69743a2072657363616c652075696e74323536206f766572666c6f,
                                    mem[211 len 17]
                    require 10^stor5
                    if stateValues < 10^18 * (0 / ext_call.return_data[0] * 10^stor5) - (stor8 * 0 / ext_call.return_data[0] / 10^18 * 10^stor5) / 10^18 / 10^stor5:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    51,
                                    0x644d69786564536166654d61746857697468556e69743a2075696e74323536207375627472616374696f6e206f766572666c6f,
                                    mem[215 len 13]
                    stateValues -= 10^18 * (0 / ext_call.return_data[0] * 10^stor5) - (stor8 * 0 / ext_call.return_data[0] / 10^18 * 10^stor5) / 10^18 / 10^stor5
                    require ext_code.size(stor6)
                    call stor6.0x9dc29fac with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require 10^stor5
                    if 10^stor5 * 10^18 * (0 / ext_call.return_data[0] * 10^stor5) - (stor8 * 0 / ext_call.return_data[0] / 10^18 * 10^stor5) / 10^18 / 10^stor5 / 10^stor5 != 10^18 * (0 / ext_call.return_data[0] * 10^stor5) - (stor8 * 0 / ext_call.return_data[0] / 10^18 * 10^stor5) / 10^18 / 10^stor5:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    47,
                                    0x314d69786564536166654d61746857697468556e69743a2072657363616c652075696e74323536206f766572666c6f,
                                    mem[211 len 17]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x6c416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(stor4):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 10^stor5 * 10^18 * (0 / ext_call.return_data[0] * 10^stor5) - (stor8 * 0 / ext_call.return_data[0] / 10^18 * 10^stor5) / 10^18 / 10^stor5 / 10^18) >> 32
                    mem[324 len 0] = 0
                    call stor4 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, 10^stor5 * 10^18 * (0 / ext_call.return_data[0] * 10^stor5) - (stor8 * 0 / ext_call.return_data[0] / 10^18 * 10^stor5) / 10^18 / 10^stor5 / 10^18) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), 
                                        msg.sender,
                                        10^stor5 * 10^18 * (0 / ext_call.return_data[0] * 10^stor5) - (stor8 * 0 / ext_call.return_data[0] / 10^18 * 10^stor5) / 10^18 / 10^stor5 / 10^18
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                    emit RemoveLiquidity(arg1, 10^18 * (0 / ext_call.return_data[0] * 10^stor5) - (stor8 * 0 / ext_call.return_data[0] / 10^18 * 10^stor5) / 10^18 / 10^stor5, msg.sender);
        else:
            if stateValues * arg1 / arg1 != stateValues:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            54,
                            0x734d69786564536166654d61746857697468556e69743a2075696e74323536206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[218 len 10]
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            47,
                            0x774d69786564536166654d61746857697468556e69743a2075696e74323536206469766973696f6e206279207a6572,
                            mem[211 len 17]
            if stateValues * arg1 / 10^18 != 10^18 * stateValues * arg1 / 10^18 / 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            72,
                            0x744d69786564536166654d61746857697468556e69743a2075696e74323536206469766973696f6e20696e7465726e616c206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[236 len 24]
            require ext_call.return_data[0]
            if arg1 >= ext_call.return_data[0]:
                require 10^stor5
                if 10^stor5 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^stor5 != 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                47,
                                0x314d69786564536166654d61746857697468556e69743a2072657363616c652075696e74323536206f766572666c6f,
                                mem[211 len 17]
                if 10^18 * 10^stor5 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 / 10^18 != 10^stor5 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                47,
                                0x314d69786564536166654d61746857697468556e69743a2072657363616c652075696e74323536206f766572666c6f,
                                mem[211 len 17]
                require 10^stor5
                if stateValues < 10^18 * 10^stor5 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 / 10^stor5:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                51,
                                0x644d69786564536166654d61746857697468556e69743a2075696e74323536207375627472616374696f6e206f766572666c6f,
                                mem[215 len 13]
                stateValues -= 10^18 * 10^stor5 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 / 10^stor5
                require ext_code.size(stor6)
                call stor6.0x9dc29fac with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require 10^stor5
                if 10^stor5 * 10^18 * 10^stor5 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 / 10^stor5 / 10^stor5 != 10^18 * 10^stor5 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 / 10^stor5:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                47,
                                0x314d69786564536166654d61746857697468556e69743a2072657363616c652075696e74323536206f766572666c6f,
                                mem[211 len 17]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x6c416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(stor4):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 10^stor5 * 10^18 * 10^stor5 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 / 10^stor5 / 10^18) >> 32
                call stor4 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, 10^stor5 * 10^18 * 10^stor5 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 / 10^stor5 / 10^18) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), 
                                    msg.sender,
                                    10^stor5 * 10^18 * 10^stor5 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 / 10^stor5 / 10^18
                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
                emit RemoveLiquidity(arg1, 10^18 * 10^stor5 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 / 10^stor5, msg.sender);
            else:
                if 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0]:
                    if stor8 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] != stor8:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    54,
                                    0x734d69786564536166654d61746857697468556e69743a2075696e74323536206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[218 len 10]
                    if 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] < stor8 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    51,
                                    0x644d69786564536166654d61746857697468556e69743a2075696e74323536207375627472616374696f6e206f766572666c6f,
                                    mem[215 len 13]
                    require 10^stor5
                    if (10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] * 10^stor5) - (stor8 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 * 10^stor5) / 10^stor5 != (10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0]) - (stor8 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    47,
                                    0x314d69786564536166654d61746857697468556e69743a2072657363616c652075696e74323536206f766572666c6f,
                                    mem[211 len 17]
                    if 10^18 * (10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] * 10^stor5) - (stor8 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 * 10^stor5) / 10^18 / 10^18 != (10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] * 10^stor5) - (stor8 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 * 10^stor5) / 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    47,
                                    0x314d69786564536166654d61746857697468556e69743a2072657363616c652075696e74323536206f766572666c6f,
                                    mem[211 len 17]
                    require 10^stor5
                    if stateValues < 10^18 * (10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] * 10^stor5) - (stor8 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 * 10^stor5) / 10^18 / 10^stor5:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    51,
                                    0x644d69786564536166654d61746857697468556e69743a2075696e74323536207375627472616374696f6e206f766572666c6f,
                                    mem[215 len 13]
                    stateValues -= 10^18 * (10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] * 10^stor5) - (stor8 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 * 10^stor5) / 10^18 / 10^stor5
                    require ext_code.size(stor6)
                    call stor6.0x9dc29fac with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require 10^stor5
                    if 10^stor5 * 10^18 * (10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] * 10^stor5) - (stor8 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 * 10^stor5) / 10^18 / 10^stor5 / 10^stor5 != 10^18 * (10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] * 10^stor5) - (stor8 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 * 10^stor5) / 10^18 / 10^stor5:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    47,
                                    0x314d69786564536166654d61746857697468556e69743a2072657363616c652075696e74323536206f766572666c6f,
                                    mem[211 len 17]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x6c416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(stor4):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 10^stor5 * 10^18 * (10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] * 10^stor5) - (stor8 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 * 10^stor5) / 10^18 / 10^stor5 / 10^18) >> 32
                    call stor4 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, 10^stor5 * 10^18 * (10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] * 10^stor5) - (stor8 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 * 10^stor5) / 10^18 / 10^stor5 / 10^18) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), 
                                        msg.sender,
                                        10^stor5 * 10^18 * (10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] * 10^stor5) - (stor8 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 * 10^stor5) / 10^18 / 10^stor5 / 10^18
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                    emit RemoveLiquidity(arg1, 10^18 * (10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] * 10^stor5) - (stor8 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 * 10^stor5) / 10^18 / 10^stor5, msg.sender);
                else:
                    if 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] < 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    51,
                                    0x644d69786564536166654d61746857697468556e69743a2075696e74323536207375627472616374696f6e206f766572666c6f,
                                    mem[215 len 13]
                    require 10^stor5
                    if 10^stor5 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^stor5 != 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    47,
                                    0x314d69786564536166654d61746857697468556e69743a2072657363616c652075696e74323536206f766572666c6f,
                                    mem[211 len 17]
                    if 10^18 * 10^stor5 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 / 10^18 != 10^stor5 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    47,
                                    0x314d69786564536166654d61746857697468556e69743a2072657363616c652075696e74323536206f766572666c6f,
                                    mem[211 len 17]
                    require 10^stor5
                    if stateValues < 10^18 * 10^stor5 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 / 10^stor5:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    51,
                                    0x644d69786564536166654d61746857697468556e69743a2075696e74323536207375627472616374696f6e206f766572666c6f,
                                    mem[215 len 13]
                    stateValues -= 10^18 * 10^stor5 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 / 10^stor5
                    require ext_code.size(stor6)
                    call stor6.0x9dc29fac with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require 10^stor5
                    if 10^stor5 * 10^18 * 10^stor5 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 / 10^stor5 / 10^stor5 != 10^18 * 10^stor5 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 / 10^stor5:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    47,
                                    0x314d69786564536166654d61746857697468556e69743a2072657363616c652075696e74323536206f766572666c6f,
                                    mem[211 len 17]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x6c416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(stor4):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 10^stor5 * 10^18 * 10^stor5 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 / 10^stor5 / 10^18) >> 32
                    mem[324 len 0] = 0
                    call stor4 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, 10^stor5 * 10^18 * 10^stor5 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 / 10^stor5 / 10^18) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), 
                                        msg.sender,
                                        10^stor5 * 10^18 * 10^stor5 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 / 10^stor5 / 10^18
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                    emit RemoveLiquidity(arg1, 10^18 * 10^stor5 * 10^18 * stateValues * arg1 / 10^18 / ext_call.return_data[0] / 10^18 / 10^stor5, msg.sender);
    stor10 = 0
}



}
