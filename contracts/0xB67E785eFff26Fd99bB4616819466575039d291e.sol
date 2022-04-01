contract main {




// =====================  Runtime code  =====================


address owner;
uint256 version;
uint256 stor2; offset 32
uint256 sub_6d370ff2;
big480 stor2;
uint256 priceSpot;
uint256 priceCap;
uint256 priceFloor;
uint256 sub_ef2c6a76;
uint256 collateralPerUnit;
uint256 collateralFeePerUnit;
uint256 settlementPrice;
uint256 sub_86aa7cdc;
address collateralTokenAddress;
address sub_7b1c12e6Address;
address sub_6e68ff35Address;
address oracleAddress;
address sub_3ee7b739Address;
array of struct contractName;
uint8 isSettled;
uint256 stor18;

function priceCap() payable {
    return priceCap
}

function isSettled() payable {
    return bool(isSettled)
}

function sub_3ee7b739(?) payable {
    return sub_3ee7b739Address
}

function version() payable {
    return version
}

function priceSpot() payable {
    return priceSpot
}

function priceFloor() payable {
    return priceFloor
}

function sub_6d370ff2(?) payable {
    return sub_6d370ff2
}

function sub_6e68ff35(?) payable {
    return sub_6e68ff35Address
}

function contractName() payable {
    return contractName[0 len contractName.length].field_0
}

function sub_7b1c12e6(?) payable {
    return sub_7b1c12e6Address
}

function oracle() payable {
    return oracleAddress
}

function sub_86aa7cdc(?) payable {
    return sub_86aa7cdc
}

function collateralFeePerUnit() payable {
    return collateralFeePerUnit
}

function owner() payable {
    return owner
}

function collateralToken() payable {
    return collateralTokenAddress
}

function collateralPerUnit() payable {
    return collateralPerUnit
}

function sub_ef2c6a76(?) payable {
    return sub_ef2c6a76
}

function settlementPrice() payable {
    return settlementPrice
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_d07fdc11(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit 0x6d724690: sub_3ee7b739Address, arg1
    sub_3ee7b739Address = arg1
}

function updateOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OracleUpdated(oracleAddress, arg1);
    oracleAddress = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function claimFee(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_6d370ff2 = 0
    if ext_code.size(collateralTokenAddress) <= 0:
        revert with 0, 'SafeERC20: call to non-contract'
    mem[196 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 0, stor2.field_32)
    call collateralTokenAddress with:
         gas gas_remaining wei
        args Mask(480, 0, stor2.field_0), mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not unknown_0xa9059cbb(?????), address(arg1) << 64:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 307 len 22]
    emit FeeClaimed(sub_6d370ff2, arg1);
}

function sub_f79a41d7(?) payable {
    require calldata.size - 4 >= 32
    if oracleAddress != msg.sender:
        revert with 0, 'ORACLE_ONLY'
    if isSettled:
        revert with 0, 'Contract is already settled'
    if arg1 < priceFloor:
        sub_86aa7cdc = block.timestamp
        isSettled = 1
        settlementPrice = arg1
        mem[128] = uint256(contractName.field_0)
        idx = 128
        s = 0
        while contractName.length + 96 > idx:
            mem[idx + 32] = contractName[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[contractName.length + 128] = ' (settled)'
        contractName[].field_0 = Array(len=contractName.length + 10, data=mem[128 len contractName.length + 10])
        emit ContractSettled(arg1);
    else:
        if arg1 <= priceCap:
            priceSpot = arg1
            emit UpdatedLastPrice(arg1);
        else:
            sub_86aa7cdc = block.timestamp
            isSettled = 1
            settlementPrice = arg1
            mem[128] = uint256(contractName.field_0)
            idx = 128
            s = 0
            while contractName.length + 96 > idx:
                mem[idx + 32] = contractName[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[contractName.length + 128] = ' (settled)'
            contractName[].field_0 = Array(len=contractName.length + 10, data=mem[128 len contractName.length + 10])
            emit ContractSettled(arg1);
}

function sub_f3fc7361(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_7b1c12e6Address)
    call sub_7b1c12e6Address.0x9dc29fac with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_6e68ff35Address)
    call sub_6e68ff35Address.0x9dc29fac with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not collateralPerUnit:
        if ext_code.size(collateralTokenAddress) <= 0:
            revert with 0, 'SafeERC20: call to non-contract'
        mem[196 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, 0
        call collateralTokenAddress with:
             gas gas_remaining wei
            args 0, mem[260 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
        else:
            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[228]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 307 len 22]
        emit 0x1371d498: arg2, 0, arg1
    else:
        require collateralPerUnit
        if collateralPerUnit * arg2 / collateralPerUnit != arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_code.size(collateralTokenAddress) <= 0:
            revert with 0, 'SafeERC20: call to non-contract'
        mem[196 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, collateralPerUnit * arg2) >> 32
        call collateralTokenAddress with:
             gas gas_remaining wei
            args Mask(224, 32, collateralPerUnit * arg2) << 224, mem[260 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
        else:
            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[228]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 307 len 22]
        emit 0x1371d498: arg2, collateralPerUnit * arg2, arg1
}

function redeemPositions(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_7b1c12e6Address)
    call sub_7b1c12e6Address.0x9dc29fac with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_6e68ff35Address)
    call sub_6e68ff35Address.0x9dc29fac with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not collateralPerUnit:
        if ext_code.size(collateralTokenAddress) <= 0:
            revert with 0, 'SafeERC20: call to non-contract'
        mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
        call collateralTokenAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args 0, mem[260 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
        else:
            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[228]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 307 len 22]
        emit 0x1371d498: arg1, 0, msg.sender
    else:
        require collateralPerUnit
        if collateralPerUnit * arg1 / collateralPerUnit != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_code.size(collateralTokenAddress) <= 0:
            revert with 0, 'SafeERC20: call to non-contract'
        mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, collateralPerUnit * arg1) >> 32
        call collateralTokenAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, collateralPerUnit * arg1) << 224, mem[260 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
        else:
            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[228]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 307 len 22]
        emit 0x1371d498: arg1, collateralPerUnit * arg1, msg.sender
}

function mintFromCollateralAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if isSettled:
        revert with 0, 'Contract is already settled'
    if msg.sender == sub_3ee7b739Address:
        if collateralPerUnit <= 0:
            revert with 0, 'SafeMath: division by zero'
        require collateralPerUnit
        if ext_code.size(collateralTokenAddress) <= 0:
            revert with 0, 'SafeERC20: call to non-contract'
        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
        mem[416 len 4] = uint32(arg1)
        call collateralTokenAddress with:
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 480, mem[388 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 0, 'SafeERC20: low-level call failed'
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
        require ext_code.size(sub_7b1c12e6Address)
        call sub_7b1c12e6Address.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, arg1 / collateralPerUnit
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_6e68ff35Address)
        call sub_6e68ff35Address.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, arg1 / collateralPerUnit
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if 0 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        emit 0x105da5c9: arg1 / collateralPerUnit, arg1, 0, msg.sender
    else:
        if stor18 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stor18
        if not collateralFeePerUnit:
            if sub_6d370ff2 < sub_6d370ff2:
                revert with 0, 'SafeMath: addition overflow'
            if ext_code.size(collateralTokenAddress) <= 0:
                revert with 0, 'SafeERC20: call to non-contract'
            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
            mem[416 len 4] = uint32(arg1)
            call collateralTokenAddress with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 480, mem[388 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: low-level call failed'
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[324]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
            require ext_code.size(sub_7b1c12e6Address)
            call sub_7b1c12e6Address.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, arg1 / stor18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_6e68ff35Address)
            call sub_6e68ff35Address.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, arg1 / stor18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            emit 0x105da5c9: arg1 / stor18, arg1, 0, msg.sender
        else:
            require collateralFeePerUnit
            if collateralFeePerUnit * arg1 / stor18 / collateralFeePerUnit != arg1 / stor18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if sub_6d370ff2 + (collateralFeePerUnit * arg1 / stor18) < sub_6d370ff2:
                revert with 0, 'SafeMath: addition overflow'
            sub_6d370ff2 += collateralFeePerUnit * arg1 / stor18
            if ext_code.size(collateralTokenAddress) <= 0:
                revert with 0, 'SafeERC20: call to non-contract'
            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
            mem[416 len 4] = uint32(arg1)
            call collateralTokenAddress with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 480, mem[388 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: low-level call failed'
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[324]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
            require ext_code.size(sub_7b1c12e6Address)
            call sub_7b1c12e6Address.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, arg1 / stor18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_6e68ff35Address)
            call sub_6e68ff35Address.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, arg1 / stor18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if collateralFeePerUnit * arg1 / stor18 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            emit 0x105da5c9: arg1 / stor18, arg1 - (collateralFeePerUnit * arg1 / stor18), collateralFeePerUnit * arg1 / stor18, msg.sender
}

function settlePositions() payable {
    if not isSettled:
        revert with 0, 'Contract should be settled'
    require ext_code.size(sub_7b1c12e6Address)
    staticcall sub_7b1c12e6Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6e68ff35Address)
    staticcall sub_6e68ff35Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if settlementPrice < priceFloor:
        if not collateralPerUnit:
            require ext_code.size(sub_7b1c12e6Address)
            call sub_7b1c12e6Address.0x9dc29fac with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_6e68ff35Address)
            call sub_6e68ff35Address.0x9dc29fac with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ext_code.size(collateralTokenAddress) <= 0:
                revert with 0, 'SafeERC20: call to non-contract'
            mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
            call collateralTokenAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args 0, mem[260 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
            else:
                mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[228]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 307 len 22]
            emit PositionSettled(ext_call.return_data[0], ext_call.return_data[0], 0, msg.sender);
        else:
            require collateralPerUnit
            if collateralPerUnit * ext_call.return_data[0] / collateralPerUnit != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require ext_code.size(sub_7b1c12e6Address)
            call sub_7b1c12e6Address.0x9dc29fac with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_6e68ff35Address)
            call sub_6e68ff35Address.0x9dc29fac with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ext_code.size(collateralTokenAddress) <= 0:
                revert with 0, 'SafeERC20: call to non-contract'
            mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, collateralPerUnit * ext_call.return_data[0]) >> 32
            call collateralTokenAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, collateralPerUnit * ext_call.return_data[0]) << 224, mem[260 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
            else:
                mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[228]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 307 len 22]
            emit PositionSettled(ext_call.return_data[0], ext_call.return_data[0], collateralPerUnit * ext_call.return_data[0], msg.sender);
    else:
        if settlementPrice <= priceCap:
            require ext_code.size(sub_7b1c12e6Address)
            call sub_7b1c12e6Address.0x9dc29fac with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_6e68ff35Address)
            call sub_6e68ff35Address.0x9dc29fac with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ext_code.size(collateralTokenAddress) <= 0:
                revert with 0, 'SafeERC20: call to non-contract'
            mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
            call collateralTokenAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args 0, mem[260 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
            else:
                mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[228]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 307 len 22]
            emit PositionSettled(ext_call.return_data[0], ext_call.return_data[0], 0, msg.sender);
        else:
            if not collateralPerUnit:
                require ext_code.size(sub_7b1c12e6Address)
                call sub_7b1c12e6Address.0x9dc29fac with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_6e68ff35Address)
                call sub_6e68ff35Address.0x9dc29fac with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if ext_code.size(collateralTokenAddress) <= 0:
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                call collateralTokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args 0, mem[260 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
                else:
                    mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[228]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 307 len 22]
                emit PositionSettled(ext_call.return_data[0], ext_call.return_data[0], 0, msg.sender);
            else:
                require collateralPerUnit
                if collateralPerUnit * ext_call.return_data[0] / collateralPerUnit != ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                require ext_code.size(sub_7b1c12e6Address)
                call sub_7b1c12e6Address.0x9dc29fac with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_6e68ff35Address)
                call sub_6e68ff35Address.0x9dc29fac with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if ext_code.size(collateralTokenAddress) <= 0:
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, collateralPerUnit * ext_call.return_data[0]) >> 32
                call collateralTokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, collateralPerUnit * ext_call.return_data[0]) << 224, mem[260 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
                else:
                    mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[228]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 307 len 22]
                emit PositionSettled(ext_call.return_data[0], ext_call.return_data[0], collateralPerUnit * ext_call.return_data[0], msg.sender);
}

function mintPositions(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if isSettled:
        revert with 0, 'Contract is already settled'
    if not collateralPerUnit:
        if msg.sender == sub_3ee7b739Address:
            if ext_code.size(collateralTokenAddress) <= 0:
                revert with 0, 'SafeERC20: call to non-contract'
            mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), 0
            mem[352 len 4] = 0
            call collateralTokenAddress with:
                 gas gas_remaining wei
                args 0, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[338 len 14],
                                0,
                                mem[356 len 4]
            else:
                mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[260]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 339 len 22]
            require ext_code.size(sub_7b1c12e6Address)
            call sub_7b1c12e6Address.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_6e68ff35Address)
            call sub_6e68ff35Address.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x105da5c9: arg1, 0, 0, msg.sender
        else:
            if not collateralFeePerUnit:
                if sub_6d370ff2 < sub_6d370ff2:
                    revert with 0, 'SafeMath: addition overflow'
                if ext_code.size(collateralTokenAddress) <= 0:
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), 0
                mem[352 len 4] = 0
                call collateralTokenAddress with:
                     gas gas_remaining wei
                    args 0, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[338 len 14],
                                    0,
                                    mem[356 len 4]
                else:
                    mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[260]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 339 len 22]
                require ext_code.size(sub_7b1c12e6Address)
                call sub_7b1c12e6Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_6e68ff35Address)
                call sub_6e68ff35Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x105da5c9: arg1, 0, 0, msg.sender
            else:
                require collateralFeePerUnit
                if collateralFeePerUnit * arg1 / collateralFeePerUnit != arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if sub_6d370ff2 + (collateralFeePerUnit * arg1) < sub_6d370ff2:
                    revert with 0, 'SafeMath: addition overflow'
                sub_6d370ff2 += collateralFeePerUnit * arg1
                if collateralFeePerUnit * arg1 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if ext_code.size(collateralTokenAddress) <= 0:
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, collateralFeePerUnit * arg1) >> 32
                mem[352 len 4] = Mask(32, 64, collateralFeePerUnit * arg1) >> 64
                call collateralTokenAddress with:
                     gas gas_remaining wei
                    args Mask(224, 32, collateralFeePerUnit * arg1) << 480, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[338 len 14],
                                    Mask(32, 64, collateralFeePerUnit * arg1) >> 64,
                                    mem[356 len 4]
                else:
                    mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[260]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 339 len 22]
                require ext_code.size(sub_7b1c12e6Address)
                call sub_7b1c12e6Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_6e68ff35Address)
                call sub_6e68ff35Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x105da5c9: arg1, 0, collateralFeePerUnit * arg1, msg.sender
    else:
        require collateralPerUnit
        if collateralPerUnit * arg1 / collateralPerUnit != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if msg.sender == sub_3ee7b739Address:
            if collateralPerUnit * arg1 < collateralPerUnit * arg1:
                revert with 0, 'SafeMath: addition overflow'
            if ext_code.size(collateralTokenAddress) <= 0:
                revert with 0, 'SafeERC20: call to non-contract'
            mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, collateralPerUnit * arg1) >> 32
            mem[352 len 4] = Mask(32, 64, collateralPerUnit * arg1) >> 64
            call collateralTokenAddress with:
                 gas gas_remaining wei
                args Mask(224, 32, collateralPerUnit * arg1) << 480, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[338 len 14],
                                Mask(32, 64, collateralPerUnit * arg1) >> 64,
                                mem[356 len 4]
            else:
                mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[260]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 339 len 22]
            require ext_code.size(sub_7b1c12e6Address)
            call sub_7b1c12e6Address.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_6e68ff35Address)
            call sub_6e68ff35Address.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x105da5c9: arg1, collateralPerUnit * arg1, 0, msg.sender
        else:
            if not collateralFeePerUnit:
                if sub_6d370ff2 < sub_6d370ff2:
                    revert with 0, 'SafeMath: addition overflow'
                if collateralPerUnit * arg1 < collateralPerUnit * arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if ext_code.size(collateralTokenAddress) <= 0:
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, collateralPerUnit * arg1) >> 32
                mem[352 len 4] = Mask(32, 64, collateralPerUnit * arg1) >> 64
                call collateralTokenAddress with:
                     gas gas_remaining wei
                    args Mask(224, 32, collateralPerUnit * arg1) << 480, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[338 len 14],
                                    Mask(32, 64, collateralPerUnit * arg1) >> 64,
                                    mem[356 len 4]
                else:
                    mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[260]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 339 len 22]
                require ext_code.size(sub_7b1c12e6Address)
                call sub_7b1c12e6Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_6e68ff35Address)
                call sub_6e68ff35Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x105da5c9: arg1, collateralPerUnit * arg1, 0, msg.sender
            else:
                require collateralFeePerUnit
                if collateralFeePerUnit * arg1 / collateralFeePerUnit != arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if sub_6d370ff2 + (collateralFeePerUnit * arg1) < sub_6d370ff2:
                    revert with 0, 'SafeMath: addition overflow'
                sub_6d370ff2 += collateralFeePerUnit * arg1
                if (collateralPerUnit * arg1) + (collateralFeePerUnit * arg1) < collateralPerUnit * arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if ext_code.size(collateralTokenAddress) <= 0:
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, (collateralPerUnit * arg1) + (collateralFeePerUnit * arg1)) >> 32
                mem[352 len 4] = Mask(32, 64, (collateralPerUnit * arg1) + (collateralFeePerUnit * arg1)) >> 64
                call collateralTokenAddress with:
                     gas gas_remaining wei
                    args Mask(224, 32, (collateralPerUnit * arg1) + (collateralFeePerUnit * arg1)) << 480, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[338 len 14],
                                    Mask(32, 64, (collateralPerUnit * arg1) + (collateralFeePerUnit * arg1)) >> 64,
                                    mem[356 len 4]
                else:
                    mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[260]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 339 len 22]
                require ext_code.size(sub_7b1c12e6Address)
                call sub_7b1c12e6Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_6e68ff35Address)
                call sub_6e68ff35Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x105da5c9: arg1, collateralPerUnit * arg1, collateralFeePerUnit * arg1, msg.sender
}

function sub_2d496eca(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not isSettled:
        revert with 0, 'Contract should be settled'
    if uint8(('cd', 4).length) > 120:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0xfe43616e6e6f7420757064617465206d6f7265207468616e20313530206163636f756e74,
                    mem[200 len 28]
    idx = 0
    s = 0
    t = 0
    while uint8(idx) < ('cd', 4).length:
        require ext_code.size(sub_7b1c12e6Address)
        staticcall sub_7b1c12e6Address.0x70a08231 with:
                gas gas_remaining wei
               args address(cd[((32 * uint8(idx)) + cd[4] + 36)])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_6e68ff35Address)
        staticcall sub_6e68ff35Address.0x70a08231 with:
                gas gas_remaining wei
               args address(cd[((32 * uint8(idx)) + cd[4] + 36)])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if settlementPrice < priceFloor:
            if not collateralPerUnit:
                require ext_code.size(sub_7b1c12e6Address)
                call sub_7b1c12e6Address.0x9dc29fac with:
                     gas gas_remaining wei
                    args address(cd[((32 * uint8(idx)) + cd[4] + 36)]), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = address(cd[((32 * uint8(idx)) + cd[4] + 36)])
                require ext_code.size(sub_6e68ff35Address)
                call sub_6e68ff35Address.0x9dc29fac with:
                     gas gas_remaining wei
                    args address(cd[((32 * uint8(idx)) + cd[4] + 36)]), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _206 = mem[64]
                mem[mem[64] + 36] = address(cd[((32 * uint8(idx)) + cd[4] + 36)])
                mem[mem[64] + 68] = 0
                _207 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_207 + 32] = mem[_207 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                if ext_code.size(collateralTokenAddress) <= 0:
                    revert with 0, 'SafeERC20: call to non-contract'
                _230 = mem[_207]
                v = _207 + 32
                w = _206 + 100
                u = mem[_207]
                while u >= 32:
                    mem[w] = mem[v]
                    v = v + 32
                    w = w + 32
                    u = u - 32
                    continue 
                mem[_206 + floor32(mem[_207]) + 100] = mem[_207 + -(mem[_207] % 32) + floor32(mem[_207]) + 64 len mem[_207] % 32] or Mask(8 * -(mem[_207] % 32) + 32, -(8 * -(mem[_207] % 32) + 32) + 256, mem[_206 + floor32(mem[_207]) + 100])
                call collateralTokenAddress.mem[_206 + 100 len 4] with:
                     gas gas_remaining wei
                    args mem[_206 + 104 len _230 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96] > 0:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_206 + 210 len 22]
                else:
                    mem[64] = _206 + ceil32(return_data.size) + 101
                    mem[_206 + 100] = return_data.size
                    mem[_206 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[_206 + 132]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_206 + ceil32(return_data.size) + 211 len 22]
            else:
                require collateralPerUnit
                if collateralPerUnit * ext_call.return_data[0] / collateralPerUnit != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require ext_code.size(sub_7b1c12e6Address)
                call sub_7b1c12e6Address.0x9dc29fac with:
                     gas gas_remaining wei
                    args address(cd[((32 * uint8(idx)) + cd[4] + 36)]), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = address(cd[((32 * uint8(idx)) + cd[4] + 36)])
                require ext_code.size(sub_6e68ff35Address)
                call sub_6e68ff35Address.0x9dc29fac with:
                     gas gas_remaining wei
                    args address(cd[((32 * uint8(idx)) + cd[4] + 36)]), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _218 = mem[64]
                mem[mem[64] + 36] = address(cd[((32 * uint8(idx)) + cd[4] + 36)])
                mem[mem[64] + 68] = collateralPerUnit * ext_call.return_data[0]
                _219 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_219 + 32] = mem[_219 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                if ext_code.size(collateralTokenAddress) <= 0:
                    revert with 0, 'SafeERC20: call to non-contract'
                _244 = mem[_219]
                v = _219 + 32
                w = _218 + 100
                u = mem[_219]
                while u >= 32:
                    mem[w] = mem[v]
                    v = v + 32
                    w = w + 32
                    u = u - 32
                    continue 
                mem[_218 + floor32(mem[_219]) + 100] = mem[_219 + -(mem[_219] % 32) + floor32(mem[_219]) + 64 len mem[_219] % 32] or Mask(8 * -(mem[_219] % 32) + 32, -(8 * -(mem[_219] % 32) + 32) + 256, mem[_218 + floor32(mem[_219]) + 100])
                call collateralTokenAddress.mem[_218 + 100 len 4] with:
                     gas gas_remaining wei
                    args mem[_218 + 104 len _244 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96] > 0:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_218 + 210 len 22]
                else:
                    mem[64] = _218 + ceil32(return_data.size) + 101
                    mem[_218 + 100] = return_data.size
                    mem[_218 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[_218 + 132]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_218 + ceil32(return_data.size) + 211 len 22]
        else:
            if settlementPrice <= priceCap:
                require ext_code.size(sub_7b1c12e6Address)
                call sub_7b1c12e6Address.0x9dc29fac with:
                     gas gas_remaining wei
                    args address(cd[((32 * uint8(idx)) + cd[4] + 36)]), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = address(cd[((32 * uint8(idx)) + cd[4] + 36)])
                require ext_code.size(sub_6e68ff35Address)
                call sub_6e68ff35Address.0x9dc29fac with:
                     gas gas_remaining wei
                    args address(cd[((32 * uint8(idx)) + cd[4] + 36)]), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _191 = mem[64]
                mem[mem[64] + 36] = address(cd[((32 * uint8(idx)) + cd[4] + 36)])
                mem[mem[64] + 68] = 0
                _192 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_192 + 32] = mem[_192 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                if ext_code.size(collateralTokenAddress) <= 0:
                    revert with 0, 'SafeERC20: call to non-contract'
                _210 = mem[_192]
                v = _192 + 32
                w = _191 + 100
                u = mem[_192]
                while u >= 32:
                    mem[w] = mem[v]
                    v = v + 32
                    w = w + 32
                    u = u - 32
                    continue 
                mem[_191 + floor32(mem[_192]) + 100] = mem[_192 + -(mem[_192] % 32) + floor32(mem[_192]) + 64 len mem[_192] % 32] or Mask(8 * -(mem[_192] % 32) + 32, -(8 * -(mem[_192] % 32) + 32) + 256, mem[_191 + floor32(mem[_192]) + 100])
                call collateralTokenAddress.mem[_191 + 100 len 4] with:
                     gas gas_remaining wei
                    args mem[_191 + 104 len _210 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96] > 0:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_191 + 210 len 22]
                else:
                    mem[64] = _191 + ceil32(return_data.size) + 101
                    mem[_191 + 100] = return_data.size
                    mem[_191 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[_191 + 132]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_191 + ceil32(return_data.size) + 211 len 22]
            else:
                if not collateralPerUnit:
                    require ext_code.size(sub_7b1c12e6Address)
                    call sub_7b1c12e6Address.0x9dc29fac with:
                         gas gas_remaining wei
                        args address(cd[((32 * uint8(idx)) + cd[4] + 36)]), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = address(cd[((32 * uint8(idx)) + cd[4] + 36)])
                    require ext_code.size(sub_6e68ff35Address)
                    call sub_6e68ff35Address.0x9dc29fac with:
                         gas gas_remaining wei
                        args address(cd[((32 * uint8(idx)) + cd[4] + 36)]), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _215 = mem[64]
                    mem[mem[64] + 36] = address(cd[((32 * uint8(idx)) + cd[4] + 36)])
                    mem[mem[64] + 68] = 0
                    _216 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_216 + 32] = mem[_216 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    if ext_code.size(collateralTokenAddress) <= 0:
                        revert with 0, 'SafeERC20: call to non-contract'
                    _240 = mem[_216]
                    v = _216 + 32
                    w = mem[64]
                    u = mem[_216]
                    while u >= 32:
                        mem[w] = mem[v]
                        v = v + 32
                        w = w + 32
                        u = u - 32
                        continue 
                    mem[mem[64] + floor32(mem[_216])] = mem[_216 + floor32(mem[_216]) + -(mem[_216] % 32) + 64 len mem[_216] % 32] or Mask(8 * -(mem[_216] % 32) + 32, -(8 * -(mem[_216] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_216])])
                    call collateralTokenAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _240 + _215 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96] > 0:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                    else:
                        _357 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_357] = return_data.size
                        mem[_357 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[_357 + 32]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                else:
                    require collateralPerUnit
                    if collateralPerUnit * ext_call.return_data[0] / collateralPerUnit != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require ext_code.size(sub_7b1c12e6Address)
                    call sub_7b1c12e6Address.0x9dc29fac with:
                         gas gas_remaining wei
                        args address(cd[((32 * uint8(idx)) + cd[4] + 36)]), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = address(cd[((32 * uint8(idx)) + cd[4] + 36)])
                    require ext_code.size(sub_6e68ff35Address)
                    call sub_6e68ff35Address.0x9dc29fac with:
                         gas gas_remaining wei
                        args address(cd[((32 * uint8(idx)) + cd[4] + 36)]), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _226 = mem[64]
                    mem[mem[64] + 36] = address(cd[((32 * uint8(idx)) + cd[4] + 36)])
                    mem[mem[64] + 68] = collateralPerUnit * ext_call.return_data[0]
                    _227 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_227 + 32] = mem[_227 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    if ext_code.size(collateralTokenAddress) <= 0:
                        revert with 0, 'SafeERC20: call to non-contract'
                    _257 = mem[_227]
                    v = _227 + 32
                    w = _226 + 100
                    u = mem[_227]
                    while u >= 32:
                        mem[w] = mem[v]
                        v = v + 32
                        w = w + 32
                        u = u - 32
                        continue 
                    mem[_226 + floor32(mem[_227]) + 100] = mem[_227 + -(mem[_227] % 32) + floor32(mem[_227]) + 64 len mem[_227] % 32] or Mask(8 * -(mem[_227] % 32) + 32, -(8 * -(mem[_227] % 32) + 32) + 256, mem[_226 + floor32(mem[_227]) + 100])
                    call collateralTokenAddress.mem[_226 + 100 len 4] with:
                         gas gas_remaining wei
                        args mem[_226 + 104 len _257 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96] > 0:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_226 + 210 len 22]
                    else:
                        mem[64] = _226 + ceil32(return_data.size) + 101
                        mem[_226 + 100] = return_data.size
                        mem[_226 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[_226 + 132]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_226 + ceil32(return_data.size) + 211 len 22]
        idx = idx + 1
        s = s + ext_call.return_data[0]
        t = t + ext_call.return_data[0]
        continue 
    _171 = mem[64]
    mem[mem[64] + 32] = uint8(('cd', 4).length)
    mem[mem[64] + 64] = t
    mem[mem[64] + 96] = s
    mem[mem[64] + 128] = 0
    mem[mem[64]] = 160
    mem[_171 + 160] = ('cd', 4).length
    mem[_171 + 192 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
    mem[_171 + (32 * ('cd', 4).length) + 192] = 0
    emit 0xede0a378: mem[mem[64] len _171 + floor32(('cd', 4).length) + -mem[64] + 192]
}



}
