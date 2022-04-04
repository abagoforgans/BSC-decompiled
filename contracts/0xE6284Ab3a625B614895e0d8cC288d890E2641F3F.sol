contract main {




// =====================  Runtime code  =====================


#
#  - sub_3c6a5782(?)
#  - harvest()
#  - deposit()
#
uint8 strategistFee; offset 160
uint128 stor0; offset 160
address owner;
address strategistAddress;
uint8 stor2; offset 160
uint8 stor2; offset 168
uint32 stor2;
uint128 stor2; offset 168
uint128 stor2; offset 160
address vaultAddress;
uint256 stor2;
address hardWorkerAddress;
uint256 performanceFee;
address farmingContractAddress;
address sub_a33c91c0Address;
address sub_1b533c1bAddress;
address sub_523db94dAddress;
address dittoAddress;
address sub_83f1e195Address;
address wbnbAddress;
uint32 stor12;
address pancakeRouterAddress;
uint256 stor12;
uint32 stor13;
address sub_f8bc2efeAddress;
uint256 stor13;
uint32 stor14;
address sub_822a611dAddress;
uint256 stor14;
array of address sub_4e14f475;
array of address sub_eb760160;
array of address sub_e93e4eff;
array of address outputToBELUGARoute;

function farmingContract() payable {
    return farmingContractAddress
}

function sub_1b533c1b(?) payable {
    return sub_1b533c1bAddress
}

function strategist() payable {
    return strategistAddress
}

function sub_2eb38ae0(?) payable {
    return bool(uint8(stor2.field_168))
}

function hardWorker() payable {
    return hardWorkerAddress
}

function outputToBELUGARoute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < outputToBELUGARoute.length
    return outputToBELUGARoute[arg1]
}

function sub_4e14f475(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_4e14f475.length
    return sub_4e14f475[arg1]
}

function sub_523db94d(?) payable {
    return sub_523db94dAddress
}

function strategistFee() payable {
    return bool(strategistFee)
}

function paused() payable {
    return bool(uint8(stor2.field_160))
}

function sub_822a611d(?) payable {
    return address(sub_822a611dAddress)
}

function sub_83f1e195(?) payable {
    return sub_83f1e195Address
}

function performanceFee() payable {
    return performanceFee
}

function wbnb() payable {
    return wbnbAddress
}

function owner() payable {
    return owner
}

function sub_a33c91c0(?) payable {
    return sub_a33c91c0Address
}

function pancakeRouter() payable {
    return address(pancakeRouterAddress)
}

function ditto() payable {
    return dittoAddress
}

function sub_e93e4eff(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_e93e4eff.length
    return sub_e93e4eff[arg1]
}

function sub_eb760160(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_eb760160.length
    return sub_eb760160[arg1]
}

function sub_f8bc2efe(?) payable {
    return address(sub_f8bc2efeAddress)
}

function vault() payable {
    return vaultAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_22d7e014(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor0 = Mask(96, 0, arg1)
}

function setVault(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    vaultAddress = arg1
}

function setFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    performanceFee = arg1
}

function setWorker(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    hardWorkerAddress = arg1
}

function sub_6f9289cb(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(sub_822a611dAddress) = arg1
}

function sub_91dd8bd7(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(sub_f8bc2efeAddress) = arg1
}

function sub_988fa704(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor2.field_160) = Mask(96, 0, arg1)
}

function setPancakeRouter(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(pancakeRouterAddress) = arg1
}

function sub_30e445ac(?) payable {
    require ext_code.size(sub_1b533c1bAddress)
    staticcall sub_1b533c1bAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOfPool() payable {
    require ext_code.size(farmingContractAddress)
    staticcall farmingContractAddress.userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args 0, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function balanceOf() payable {
    require ext_code.size(farmingContractAddress)
    staticcall farmingContractAddress.userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args 0, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(sub_1b533c1bAddress)
    staticcall sub_1b533c1bAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function emergencyExit() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor2.field_160) = 1
    require ext_code.size(sub_a33c91c0Address)
    call sub_a33c91c0Address.emergencyWithdraw() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_523db94dAddress)
    staticcall sub_523db94dAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(farmingContractAddress)
    call farmingContractAddress.leaveStaking(uint256 rg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function retire() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(88, 0, stor2.field_168) = 1
    Mask(96, 0, stor2.field_160) = 1
    require ext_code.size(sub_a33c91c0Address)
    call sub_a33c91c0Address.emergencyWithdraw() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_523db94dAddress)
    staticcall sub_523db94dAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(farmingContractAddress)
    call farmingContractAddress.leaveStaking(uint256 rg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_1b533c1bAddress)
    staticcall sub_1b533c1bAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_1b533c1bAddress)
    call sub_1b533c1bAddress.0xa9059cbb with:
         gas gas_remaining wei
        args vaultAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_b73a1b28(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(uint8(stor2.field_168)) != 1:
        revert with 0, 'The strategy must be retired!'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
    mem[324 len 0] = 0
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if vaultAddress != msg.sender:
        revert with 0, 'Only the vault can withdraw'
    require ext_code.size(sub_1b533c1bAddress)
    staticcall sub_1b533c1bAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 <= ext_call.return_data[0]:
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if ext_code.size(sub_1b533c1bAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        if ext_call.return_data[0] <= arg1:
            mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), ext_call.return_data[0 len 28]
            mem[324 len 0] = 0
            call sub_1b533c1bAddress with:
               funct uint32(stor2.field_0)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), ext_call.return_data[0]
                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2.field_0):
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
        else:
            mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, arg1) >> 32
            mem[324 len 0] = 0
            call sub_1b533c1bAddress with:
               funct uint32(stor2.field_0)
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), arg1
                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2.field_0):
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
    else:
        require ext_code.size(sub_523db94dAddress)
        staticcall sub_523db94dAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] > arg1 - ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(sub_a33c91c0Address)
        call sub_a33c91c0Address.0x2e1a7d4d with:
             gas gas_remaining wei
            args (arg1 - (2 * ext_call.return_data[0]))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_523db94dAddress)
        staticcall sub_523db94dAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(farmingContractAddress)
        if ext_call.return_data[0] <= arg1:
            call farmingContractAddress.leaveStaking(uint256 rg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
        else:
            call farmingContractAddress.leaveStaking(uint256 rg1) with:
                 gas gas_remaining wei
                args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_1b533c1bAddress)
        staticcall sub_1b533c1bAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
        if ext_code.size(sub_1b533c1bAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        if ext_call.return_data[0] <= arg1:
            mem[388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), ext_call.return_data[0 len 28]
            mem[452 len 0] = 0
            call sub_1b533c1bAddress with:
               funct uint32(stor2.field_0)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
        else:
            mem[388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, arg1) >> 32
            mem[452 len 0] = 0
            call sub_1b533c1bAddress with:
               funct uint32(stor2.field_0)
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[452 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: subtraction overflow'
        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[420]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 499 len 22]
}

function approveRouters() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(dittoAddress)
    staticcall dittoAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), address(pancakeRouterAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                    mem[218 len 10]
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(dittoAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor12), uint32(stor12), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[324 len 0] = 0
    call dittoAddress with:
       funct uint32(stor12)
         gas gas_remaining wei
        args Mask(480, -256, approve(address rg1, uint256 rg2), Mask(224, 0, stor12), uint32(stor12), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor12), uint32(stor12), -1
        if not approve(address rg1, uint256 rg2), Mask(224, 0, stor12):
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        require ext_code.size(sub_1b533c1bAddress)
        staticcall sub_1b533c1bAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(sub_822a611dAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[382 len 10]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
        if ext_code.size(sub_1b533c1bAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = 0, address(sub_822a611dAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call sub_1b533c1bAddress with:
           funct uint32(stor14)
             gas gas_remaining wei
            args -1, mem[360 len 28], mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor12), uint32(stor12), -1
            if not approve(address rg1, uint256 rg2), Mask(224, 0, stor12):
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
            require ext_code.size(wbnbAddress)
            staticcall wbnbAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(sub_822a611dAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[546 len 10]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[694 len 26]
            if ext_code.size(wbnbAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[588 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor14), uint32(stor14), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[652 len 0] = 0
            call wbnbAddress with:
               funct uint32(stor14)
                 gas gas_remaining wei
                args Mask(480, -256, approve(address rg1, uint256 rg2), Mask(224, 0, stor14), uint32(stor14), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[652 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor12), uint32(stor12), -1
                if not approve(address rg1, uint256 rg2), Mask(224, 0, stor12):
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[698 len 22]
                require ext_code.size(wbnbAddress)
                staticcall wbnbAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(sub_f8bc2efeAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[710 len 10]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[858 len 26]
                if ext_code.size(wbnbAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[752 len 64] = 0, address(sub_f8bc2efeAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                call wbnbAddress with:
                   funct uint32(stor13)
                     gas gas_remaining wei
                    args -1, mem[688 len 28], mem[816 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor12), uint32(stor12), -1
                    if not approve(address rg1, uint256 rg2), Mask(224, 0, stor12):
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[862 len 22]
                else:
                    mem[784 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[784]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 863 len 22]
            else:
                mem[620 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[620]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 699 len 22]
                require ext_code.size(wbnbAddress)
                staticcall wbnbAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(sub_f8bc2efeAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[ceil32(return_data.size) + 711 len 10]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 859 len 26]
                if ext_code.size(wbnbAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 753 len 64] = 0, address(sub_f8bc2efeAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                call wbnbAddress with:
                   funct uint32(stor13)
                     gas gas_remaining wei
                    args -1, mem[ceil32(return_data.size) + 689 len 28], mem[ceil32(return_data.size) + 817 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor12), uint32(stor12), -1
                    if not approve(address rg1, uint256 rg2), Mask(224, 0, stor12):
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 863 len 22]
                else:
                    mem[ceil32(return_data.size) + 785 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 854 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 785]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 864 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        else:
            mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[456]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
            require ext_code.size(wbnbAddress)
            staticcall wbnbAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(sub_822a611dAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[ceil32(return_data.size) + 547 len 10]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 695 len 26]
            if ext_code.size(wbnbAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 589 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor14), uint32(stor14), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[ceil32(return_data.size) + 653 len 0] = 0
            call wbnbAddress with:
               funct uint32(stor14)
                 gas gas_remaining wei
                args Mask(480, -256, approve(address rg1, uint256 rg2), Mask(224, 0, stor14), uint32(stor14), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[ceil32(return_data.size) + 653 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor12), uint32(stor12), -1
                if not approve(address rg1, uint256 rg2), Mask(224, 0, stor12):
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 699 len 22]
                require ext_code.size(wbnbAddress)
                staticcall wbnbAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(sub_f8bc2efeAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[ceil32(return_data.size) + 711 len 10]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 859 len 26]
                if ext_code.size(wbnbAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 753 len 64] = 0, address(sub_f8bc2efeAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                call wbnbAddress with:
                   funct uint32(stor13)
                     gas gas_remaining wei
                    args -1, mem[ceil32(return_data.size) + 689 len 28], mem[ceil32(return_data.size) + 817 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor12), uint32(stor12), -1
                    if not approve(address rg1, uint256 rg2), Mask(224, 0, stor12):
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 863 len 22]
                else:
                    mem[ceil32(return_data.size) + 785 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 854 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 785]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 864 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            else:
                mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 621]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 700 len 22]
                require ext_code.size(wbnbAddress)
                staticcall wbnbAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(sub_f8bc2efeAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[(2 * ceil32(return_data.size)) + 712 len 10]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(2 * ceil32(return_data.size)) + 860 len 26]
                if ext_code.size(wbnbAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 754 len 64] = 0, address(sub_f8bc2efeAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                call wbnbAddress with:
                   funct uint32(stor13)
                     gas gas_remaining wei
                    args -1, mem[(2 * ceil32(return_data.size)) + 690 len 28], mem[(2 * ceil32(return_data.size)) + 818 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor12), uint32(stor12), -1
                    if not approve(address rg1, uint256 rg2), Mask(224, 0, stor12):
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 864 len 22]
                else:
                    mem[(2 * ceil32(return_data.size)) + 786 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(2 * ceil32(return_data.size)) + 786]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size <= 0:
        require ext_code.size(sub_1b533c1bAddress)
        staticcall sub_1b533c1bAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(sub_822a611dAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[ceil32(return_data.size) + 383 len 10]
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[ceil32(return_data.size) + 531 len 26]
        if ext_code.size(sub_1b533c1bAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 425 len 64] = 0, address(sub_822a611dAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[ceil32(return_data.size) + 517 len 4] = 0
        call sub_1b533c1bAddress with:
           funct uint32(stor14)
             gas gas_remaining wei
            args -1, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor12), uint32(stor12), -1
            if not approve(address rg1, uint256 rg2), Mask(224, 0, stor12):
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 535 len 22]
            require ext_code.size(wbnbAddress)
            staticcall wbnbAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(sub_822a611dAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[ceil32(return_data.size) + 547 len 10]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 695 len 26]
            if ext_code.size(wbnbAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 589 len 64] = 0, address(sub_822a611dAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[ceil32(return_data.size) + 681 len 4] = 0
            call wbnbAddress with:
               funct uint32(stor14)
                 gas gas_remaining wei
                args -1, mem[ceil32(return_data.size) + 525 len 28], mem[ceil32(return_data.size) + 653 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor12), uint32(stor12), -1
                if not approve(address rg1, uint256 rg2), Mask(224, 0, stor12):
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 699 len 22]
                require ext_code.size(wbnbAddress)
                staticcall wbnbAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(sub_f8bc2efeAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[ceil32(return_data.size) + 711 len 10]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 859 len 26]
                if ext_code.size(wbnbAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 753 len 64] = 0, address(sub_f8bc2efeAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                call wbnbAddress with:
                   funct uint32(stor13)
                     gas gas_remaining wei
                    args -1, mem[ceil32(return_data.size) + 689 len 28], mem[ceil32(return_data.size) + 817 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor12), uint32(stor12), -1
                    if not approve(address rg1, uint256 rg2), Mask(224, 0, stor12):
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 863 len 22]
                else:
                    mem[ceil32(return_data.size) + 785 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 854 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 785]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 864 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            else:
                mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 690 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 621]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 700 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                require ext_code.size(wbnbAddress)
                staticcall wbnbAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(sub_f8bc2efeAddress), mem[(2 * ceil32(return_data.size)) + 658 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[(2 * ceil32(return_data.size)) + 712 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 10]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(2 * ceil32(return_data.size)) + 860 len 26]
                if ext_code.size(wbnbAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 754 len 64] = 0, address(sub_f8bc2efeAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                call wbnbAddress with:
                   funct uint32(stor13)
                     gas gas_remaining wei
                    args -1, mem[(2 * ceil32(return_data.size)) + 690 len 28], mem[(2 * ceil32(return_data.size)) + 818 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor12), uint32(stor12), -1
                    if not approve(address rg1, uint256 rg2), Mask(224, 0, stor12):
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 864 len 22]
                else:
                    mem[(2 * ceil32(return_data.size)) + 786 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(2 * ceil32(return_data.size)) + 786]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
        mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 
                        'SafeERC20: low-level call failed',
                        mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if return_data.size <= 0:
            require ext_code.size(wbnbAddress)
            staticcall wbnbAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(sub_822a611dAddress), mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[(2 * ceil32(return_data.size)) + 548 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 10]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[(2 * ceil32(return_data.size)) + 696 len 26]
            if ext_code.size(wbnbAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 590 len 64] = 0, address(sub_822a611dAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            call wbnbAddress with:
               funct uint32(stor14)
                 gas gas_remaining wei
                args -1, mem[(2 * ceil32(return_data.size)) + 526 len 28], mem[(2 * ceil32(return_data.size)) + 654 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor12), uint32(stor12), -1
                if not approve(address rg1, uint256 rg2), Mask(224, 0, stor12):
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 700 len 22]
                require ext_code.size(wbnbAddress)
                staticcall wbnbAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(sub_f8bc2efeAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[(2 * ceil32(return_data.size)) + 712 len 10]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(2 * ceil32(return_data.size)) + 860 len 26]
                if ext_code.size(wbnbAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 754 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                call wbnbAddress with:
                   funct uint32(stor13)
                     gas gas_remaining wei
                    args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[(2 * ceil32(return_data.size)) + 818 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor12), uint32(stor12), -1
                    if not approve(address rg1, uint256 rg2), Mask(224, 0, stor12):
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 864 len 22]
                else:
                    mem[(2 * ceil32(return_data.size)) + 786 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(2 * ceil32(return_data.size)) + 786]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
            mem[(2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size <= 0:
                require ext_code.size(wbnbAddress)
                staticcall wbnbAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(sub_f8bc2efeAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 713 len 10]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 861 len 26]
                if ext_code.size(wbnbAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                call wbnbAddress with:
                   funct uint32(stor13)
                     gas gas_remaining wei
                    args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 819 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor12), uint32(stor12), -1
                    if not approve(address rg1, uint256 rg2), Mask(224, 0, stor12):
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
                else:
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(4 * ceil32(return_data.size)) + 866 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            require return_data.size >= 32
            if not mem[(2 * ceil32(return_data.size)) + 622]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 701 len 22]
            require ext_code.size(wbnbAddress)
            staticcall wbnbAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(sub_f8bc2efeAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 713 len 10]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 861 len 26]
            if ext_code.size(wbnbAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 847 len 4] = 0
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 819 len 0] = 0
            call wbnbAddress with:
               funct uint32(stor13)
                 gas gas_remaining wei
                args Mask(480, -256, approve(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 819 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor12), uint32(stor12), -1
                if not approve(address rg1, uint256 rg2), Mask(224, 0, stor12):
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755] = return_data.size
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 756] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 760] = 32
                mem[(4 * ceil32(return_data.size)) + 792] = 32
                mem[(4 * ceil32(return_data.size)) + 824] = 'SafeERC20: low-level call failed'
                revert with memory
                  from (4 * ceil32(return_data.size)) + 756
                   len (7 * ceil32(return_data.size)) + 100
            if return_data.size <= 0:
            require return_data.size >= 32
            if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787]:
            mem[(4 * ceil32(return_data.size)) + 756] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 760] = 32
            mem[(4 * ceil32(return_data.size)) + 792] = 42
            mem[(4 * ceil32(return_data.size)) + 824 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
            revert with memory
              from (4 * ceil32(return_data.size)) + 756
               len (7 * ceil32(return_data.size)) + 132
        require return_data.size >= 32
        if not mem[ceil32(return_data.size) + 457]:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        require ext_code.size(wbnbAddress)
        staticcall wbnbAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(sub_822a611dAddress), mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[(2 * ceil32(return_data.size)) + 548 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 10]
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[(2 * ceil32(return_data.size)) + 696 len 26]
        if ext_code.size(wbnbAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 590 len 64] = 0, address(sub_822a611dAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call wbnbAddress with:
           funct uint32(stor14)
             gas gas_remaining wei
            args -1, mem[(2 * ceil32(return_data.size)) + 526 len 28], mem[(2 * ceil32(return_data.size)) + 654 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor12), uint32(stor12), -1
            if not approve(address rg1, uint256 rg2), Mask(224, 0, stor12):
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + 700 len 22]
            require ext_code.size(wbnbAddress)
            staticcall wbnbAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(sub_f8bc2efeAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[(2 * ceil32(return_data.size)) + 712 len 10]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[(2 * ceil32(return_data.size)) + 860 len 26]
            if ext_code.size(wbnbAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 754 len 64] = 0, address(sub_f8bc2efeAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            call wbnbAddress with:
               funct uint32(stor13)
                 gas gas_remaining wei
                args -1, mem[(2 * ceil32(return_data.size)) + 690 len 28], mem[(2 * ceil32(return_data.size)) + 818 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor12), uint32(stor12), -1
                if not approve(address rg1, uint256 rg2), Mask(224, 0, stor12):
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 864 len 22]
            else:
                mem[(2 * ceil32(return_data.size)) + 786 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[(2 * ceil32(return_data.size)) + 786]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
        mem[(2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size <= 0:
            require ext_code.size(wbnbAddress)
            staticcall wbnbAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(sub_f8bc2efeAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 713 len 10]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 861 len 26]
            if ext_code.size(wbnbAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755 len 64] = 0, address(sub_f8bc2efeAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            call wbnbAddress with:
               funct uint32(stor13)
                 gas gas_remaining wei
                args -1, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 691 len 28], mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 819 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor12), uint32(stor12), -1
                if not approve(address rg1, uint256 rg2), Mask(224, 0, stor12):
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
            else:
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(4 * ceil32(return_data.size)) + 866 len 22]
        require return_data.size >= 32
        if not mem[(2 * ceil32(return_data.size)) + 622]:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 701 len 22]
        require ext_code.size(wbnbAddress)
        staticcall wbnbAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(sub_f8bc2efeAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 713 len 10]
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 861 len 26]
        if ext_code.size(wbnbAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755 len 64] = 0, address(sub_f8bc2efeAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 847 len 4] = 0
        call wbnbAddress with:
           funct uint32(stor13)
             gas gas_remaining wei
            args -1, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 691 len 28], mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 819 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor12), uint32(stor12), -1
            if not approve(address rg1, uint256 rg2), Mask(224, 0, stor12):
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755] = return_data.size
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 756] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 760] = 32
            mem[(4 * ceil32(return_data.size)) + 792] = 32
            mem[(4 * ceil32(return_data.size)) + 824] = 'SafeERC20: low-level call failed'
            revert with memory
              from (4 * ceil32(return_data.size)) + 756
               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
        if return_data.size <= 0:
        require return_data.size >= 32
        if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787]:
        mem[(4 * ceil32(return_data.size)) + 756] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 760] = 32
        mem[(4 * ceil32(return_data.size)) + 792] = 42
        mem[(4 * ceil32(return_data.size)) + 824 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
        revert with memory
          from (4 * ceil32(return_data.size)) + 756
           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
    require return_data.size >= 32
    if not mem[292]:
        revert with 0, 
                    32,
                    42,
                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                    mem[ceil32(return_data.size) + 371 len 22]
    require ext_code.size(sub_1b533c1bAddress)
    staticcall sub_1b533c1bAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), address(sub_822a611dAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 
                    32,
                    54,
                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                    mem[ceil32(return_data.size) + 383 len 10]
    if eth.balance(this.address) < 0:
        revert with 0, 
                    32,
                    38,
                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                    mem[ceil32(return_data.size) + 531 len 26]
    if ext_code.size(sub_1b533c1bAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 425 len 64] = 0, address(sub_822a611dAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[ceil32(return_data.size) + 517 len 4] = 0
    call sub_1b533c1bAddress with:
       funct uint32(stor14)
         gas gas_remaining wei
        args -1, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor12), uint32(stor12), -1
        if not approve(address rg1, uint256 rg2), Mask(224, 0, stor12):
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 535 len 22]
        require ext_code.size(wbnbAddress)
        staticcall wbnbAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(sub_822a611dAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[ceil32(return_data.size) + 547 len 10]
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[ceil32(return_data.size) + 695 len 26]
        if ext_code.size(wbnbAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 589 len 64] = 0, address(sub_822a611dAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call wbnbAddress with:
           funct uint32(stor14)
             gas gas_remaining wei
            args -1, mem[ceil32(return_data.size) + 525 len 28], mem[ceil32(return_data.size) + 653 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor12), uint32(stor12), -1
            if not approve(address rg1, uint256 rg2), Mask(224, 0, stor12):
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 699 len 22]
            require ext_code.size(wbnbAddress)
            staticcall wbnbAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(sub_f8bc2efeAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[ceil32(return_data.size) + 711 len 10]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 859 len 26]
            if ext_code.size(wbnbAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 753 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            call wbnbAddress with:
               funct uint32(stor13)
                 gas gas_remaining wei
                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[ceil32(return_data.size) + 817 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor12), uint32(stor12), -1
                if not approve(address rg1, uint256 rg2), Mask(224, 0, stor12):
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 863 len 22]
            else:
                mem[ceil32(return_data.size) + 785 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 785]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 864 len 22]
        else:
            mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 621]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 700 len 22]
            require ext_code.size(wbnbAddress)
            staticcall wbnbAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(sub_f8bc2efeAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[(2 * ceil32(return_data.size)) + 712 len 10]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[(2 * ceil32(return_data.size)) + 860 len 26]
            if ext_code.size(wbnbAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 754 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            call wbnbAddress with:
               funct uint32(stor13)
                 gas gas_remaining wei
                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[(2 * ceil32(return_data.size)) + 818 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor12), uint32(stor12), -1
                if not approve(address rg1, uint256 rg2), Mask(224, 0, stor12):
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 864 len 22]
            else:
                mem[(2 * ceil32(return_data.size)) + 786 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[(2 * ceil32(return_data.size)) + 786]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 865 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 
                    'SafeERC20: low-level call failed',
                    mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    if return_data.size <= 0:
        require ext_code.size(wbnbAddress)
        staticcall wbnbAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(sub_822a611dAddress), mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[(2 * ceil32(return_data.size)) + 548 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 10]
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[(2 * ceil32(return_data.size)) + 696 len 26]
        if ext_code.size(wbnbAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 590 len 64] = 0, address(sub_822a611dAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call wbnbAddress with:
           funct uint32(stor14)
             gas gas_remaining wei
            args -1, mem[(2 * ceil32(return_data.size)) + 526 len 28], mem[(2 * ceil32(return_data.size)) + 654 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor12), uint32(stor12), -1
            if not approve(address rg1, uint256 rg2), Mask(224, 0, stor12):
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + 700 len 22]
            require ext_code.size(wbnbAddress)
            staticcall wbnbAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(sub_f8bc2efeAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[(2 * ceil32(return_data.size)) + 712 len 10]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[(2 * ceil32(return_data.size)) + 860 len 26]
            if ext_code.size(wbnbAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 754 len 64] = 0, address(sub_f8bc2efeAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            call wbnbAddress with:
               funct uint32(stor13)
                 gas gas_remaining wei
                args -1, mem[(2 * ceil32(return_data.size)) + 690 len 28], mem[(2 * ceil32(return_data.size)) + 818 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor12), uint32(stor12), -1
                if not approve(address rg1, uint256 rg2), Mask(224, 0, stor12):
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 864 len 22]
            else:
                mem[(2 * ceil32(return_data.size)) + 786 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[(2 * ceil32(return_data.size)) + 786]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
        mem[(2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size <= 0:
            require ext_code.size(wbnbAddress)
            staticcall wbnbAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(sub_f8bc2efeAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 713 len 10]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 861 len 26]
            if ext_code.size(wbnbAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755 len 64] = 0, address(sub_f8bc2efeAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            call wbnbAddress with:
               funct uint32(stor13)
                 gas gas_remaining wei
                args -1, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 691 len 28], mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 819 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor12), uint32(stor12), -1
                if not approve(address rg1, uint256 rg2), Mask(224, 0, stor12):
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
            else:
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(4 * ceil32(return_data.size)) + 866 len 22]
        require return_data.size >= 32
        if not mem[(2 * ceil32(return_data.size)) + 622]:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 701 len 22]
        require ext_code.size(wbnbAddress)
        staticcall wbnbAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(sub_f8bc2efeAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 713 len 10]
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 861 len 26]
        if ext_code.size(wbnbAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755 len 64] = 0, address(sub_f8bc2efeAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 847 len 4] = 0
        call wbnbAddress with:
           funct uint32(stor13)
             gas gas_remaining wei
            args -1, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 691 len 28], mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 819 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor12), uint32(stor12), -1
            if not approve(address rg1, uint256 rg2), Mask(224, 0, stor12):
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755] = return_data.size
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 756] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 760] = 32
            mem[(4 * ceil32(return_data.size)) + 792] = 32
            mem[(4 * ceil32(return_data.size)) + 824] = 'SafeERC20: low-level call failed'
            revert with memory
              from (4 * ceil32(return_data.size)) + 756
               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
        if return_data.size <= 0:
        require return_data.size >= 32
        if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787]:
        mem[(4 * ceil32(return_data.size)) + 756] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 760] = 32
        mem[(4 * ceil32(return_data.size)) + 792] = 42
        mem[(4 * ceil32(return_data.size)) + 824 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
        revert with memory
          from (4 * ceil32(return_data.size)) + 756
           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
    require return_data.size >= 32
    if not mem[ceil32(return_data.size) + 457]:
        revert with 0, 
                    32,
                    42,
                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                    mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    require ext_code.size(wbnbAddress)
    staticcall wbnbAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), address(sub_822a611dAddress), mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 
                    32,
                    54,
                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                    mem[(2 * ceil32(return_data.size)) + 548 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 10]
    if eth.balance(this.address) < 0:
        revert with 0, 
                    32,
                    38,
                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                    mem[(2 * ceil32(return_data.size)) + 696 len 26]
    if ext_code.size(wbnbAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 590 len 64] = 0, address(sub_822a611dAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    call wbnbAddress with:
       funct uint32(stor14)
         gas gas_remaining wei
        args -1, mem[(2 * ceil32(return_data.size)) + 526 len 28], mem[(2 * ceil32(return_data.size)) + 654 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor12), uint32(stor12), -1
        if not approve(address rg1, uint256 rg2), Mask(224, 0, stor12):
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(2 * ceil32(return_data.size)) + 700 len 22]
        require ext_code.size(wbnbAddress)
        staticcall wbnbAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(sub_f8bc2efeAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[(2 * ceil32(return_data.size)) + 712 len 10]
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[(2 * ceil32(return_data.size)) + 860 len 26]
        if ext_code.size(wbnbAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 754 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call wbnbAddress with:
           funct uint32(stor13)
             gas gas_remaining wei
            args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[(2 * ceil32(return_data.size)) + 818 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor12), uint32(stor12), -1
            if not approve(address rg1, uint256 rg2), Mask(224, 0, stor12):
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + 864 len 22]
        else:
            mem[(2 * ceil32(return_data.size)) + 786 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[(2 * ceil32(return_data.size)) + 786]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
    mem[(2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size > 0:
        require return_data.size >= 32
        if not mem[(2 * ceil32(return_data.size)) + 622]:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 701 len 22]
    require ext_code.size(wbnbAddress)
    staticcall wbnbAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), address(sub_f8bc2efeAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 
                    32,
                    54,
                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 713 len 10]
    if eth.balance(this.address) < 0:
        revert with 0, 
                    32,
                    38,
                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 861 len 26]
    if ext_code.size(wbnbAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 847 len 4] = 0
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 819 len 0] = 0
    call wbnbAddress with:
       funct uint32(stor13)
         gas gas_remaining wei
        args Mask(480, -256, approve(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 819 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor12), uint32(stor12), -1
        if not approve(address rg1, uint256 rg2), Mask(224, 0, stor12):
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755] = return_data.size
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 756] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 760] = 32
        mem[(4 * ceil32(return_data.size)) + 792] = 32
        mem[(4 * ceil32(return_data.size)) + 824] = 'SafeERC20: low-level call failed'
        revert with memory
          from (4 * ceil32(return_data.size)) + 756
           len (7 * ceil32(return_data.size)) + 100
    if return_data.size <= 0:
    require return_data.size >= 32
    if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787]:
    mem[(4 * ceil32(return_data.size)) + 756] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 760] = 32
    mem[(4 * ceil32(return_data.size)) + 792] = 42
    mem[(4 * ceil32(return_data.size)) + 824 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
    revert with memory
      from (4 * ceil32(return_data.size)) + 756
       len (7 * ceil32(return_data.size)) + 132
}



}
